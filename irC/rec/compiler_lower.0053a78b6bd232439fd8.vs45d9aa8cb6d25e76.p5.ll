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
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eHasCode(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l7 = alloca ptr
  %l14 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store ptr %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l7, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 11
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 1
  %t21 = load { i64, [2 x i64] }, ptr %t20
  %t25 = extractvalue { i64, [2 x i64] } %t21, 0
  %t26 = icmp eq i64 %t25, 2
  br i1 %t26, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_daa9f23a83841987_24921124063ad36b)
  unreachable
bb13:
  %t28 = load i1, ptr %l14, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshParam(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i32
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l40 = alloca i1
  %rv = alloca i1
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
  %t8 = getelementptr %"compiler/lower:Lowerer", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l12
  br label %bb3
bb3:
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sge i64 %t12, %t13
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb7
bb6:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sge i64 %t17, 64
  store i1 %t19, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l14, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t23 = shl i64 1, 40
  %t25 = sub i64 0, %t23
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = mul i64 %t26, 64
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t35 = sub i64 %t25, %t32
  store i64 %t35, ptr %l3, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:Lowerer", ptr %t37, i32 0, i32 29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t39, i64 %t40)
  %t44 = extractvalue { i32, i1 } %t43, 1
  %t45 = extractvalue { i32, i1 } %t43, 0
  store i32 %t45, ptr %l30
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb12, label %ok.47, !prof !99
ok.47:
  store i1 %t44, ptr %l29
  br label %bb11
bb11:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %l25, !tbaa !21
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lower:Lowerer", ptr %t49, i32 0, i32 29
  %t52 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t51, i64 %t52, i1 false)
  br label %bb14
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l34, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:Lowerer", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l38
  br label %bb15
bb15:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load ptr, ptr %l38, !tbaa !29
  %t68 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNothing(ptr %v0, ptr %v0, ptr %t65, ptr %t66, i64 %t64)
  store i1 %t68, ptr %l40
  br label %bb16
bb16:
  %t69 = load i1, ptr %l40, !tbaa !21
  store i1 %t69, ptr %l4, !tbaa !21
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lower:Lowerer", ptr %t70, i32 0, i32 29
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i1, ptr %l4, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t72, i64 %t73, i1 %t74)
  br label %bb17
bb17:
  %t78 = load i1, ptr %l4, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
bb18:
  %t80 = load i1, ptr %l25, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNothing(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
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
  %l46 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l73 = alloca i64
  %l80 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i1
  %l111 = alloca ptr
  %l114 = alloca i64
  %l117 = alloca i64
  %l118 = alloca i1
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
  %t40 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 5
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
  %t46 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 7
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
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l5, !tbaa !24
  %t54 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 8
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t54)
  store i64 %t56, ptr %l46
  br label %bb18
bb18:
  %t57 = load i64, ptr %l46, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp sgt i64 %t58, %t59
  br i1 %t62, label %bb19, label %bb20
bb19:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb24
bb21:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = add i64 %t72, %t73
  %t78 = sub i64 %t76, 1
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = sdiv i64 %t78, %t79
  store i64 %t82, ptr %l53, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb23
bb23:
  %t84 = load i64, ptr %l53, !tbaa !24
  store i64 %t84, ptr %l50, !tbaa !24
  br label %bb24
bb24:
  %t85 = load i64, ptr %l50, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb26, label %bb27
bb26:
  br label %bb34
bb27:
  br label %bb28
bb28:
  %t94 = load i64, ptr %l5, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = mul i64 %t95, %t96
  %t102 = add i64 %t94, %t99
  %t104 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 8
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t104, i64 %t102)
  store i64 %t108, ptr %l73
  br label %bb29
bb29:
  %t109 = load i64, ptr %l4, !tbaa !24
  %t110 = load i64, ptr %l73, !tbaa !24
  %t112 = icmp eq i64 %t110, %t109
  br i1 %t112, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t115 = load i64, ptr %l9, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l9, !tbaa !24
  br label %bb25
bb34:
  store i64 0, ptr %l11, !tbaa !24
  %t119 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 12
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t119)
  store i64 %t121, ptr %l80
  br label %bb35
bb35:
  %t122 = load i64, ptr %l80, !tbaa !24
  store i64 %t122, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t124 = load i64, ptr %l11, !tbaa !24
  %t127 = icmp sgt i64 %t123, %t124
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load i64, ptr %l13, !tbaa !24
  %t131 = icmp sgt i64 %t129, 0
  br i1 %t131, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb41
bb38:
  %t133 = load i64, ptr %l12, !tbaa !24
  %t134 = load i64, ptr %l11, !tbaa !24
  %t137 = sub i64 %t133, %t134
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = add i64 %t137, %t138
  %t143 = sub i64 %t141, 1
  %t144 = load i64, ptr %l13, !tbaa !24
  %t147 = sdiv i64 %t143, %t144
  store i64 %t147, ptr %l87, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb40
bb40:
  %t149 = load i64, ptr %l87, !tbaa !24
  store i64 %t149, ptr %l84, !tbaa !24
  br label %bb41
bb41:
  %t150 = load i64, ptr %l84, !tbaa !24
  store i64 %t150, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb42
bb42:
  %t151 = load i64, ptr %l15, !tbaa !24
  %t152 = load i64, ptr %l14, !tbaa !24
  %t155 = icmp slt i64 %t151, %t152
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb43, label %bb44
bb43:
  br label %bb57
bb44:
  br label %bb45
bb45:
  %t159 = load i64, ptr %l11, !tbaa !24
  %t160 = load i64, ptr %l15, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t164 = mul i64 %t160, %t161
  %t167 = add i64 %t159, %t164
  store i64 %t167, ptr %l16, !tbaa !24
  %t169 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 12
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t169, i64 %t170)
  store i64 %t173, ptr %l107
  br label %bb46
bb46:
  %t174 = load i64, ptr %l4, !tbaa !24
  %t175 = load i64, ptr %l107, !tbaa !24
  %t177 = icmp eq i64 %t175, %t174
  br i1 %t177, label %bb47, label %bb48
bb47:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l111, !tbaa !29
  %t180 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 13
  %t181 = load i64, ptr %l16, !tbaa !24
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t180, i64 %t181)
  store i64 %t184, ptr %l114
  br label %bb49
bb48:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb52
bb49:
  %t185 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 14
  %t186 = load i64, ptr %l16, !tbaa !24
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t185, i64 %t186)
  store i64 %t189, ptr %l117
  br label %bb50
bb50:
  %t190 = load ptr, ptr %l111, !tbaa !29
  %t191 = load i64, ptr %l114, !tbaa !24
  %t192 = load i64, ptr %l117, !tbaa !24
  %t193 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshParam(ptr %v0, ptr %t190, i64 %t191, i64 %t192)
  store i1 %t193, ptr %l118
  br label %bb51
bb51:
  %t194 = load i1, ptr %l118, !tbaa !21
  %t195 = xor i1 %t194, true
  store i1 %t195, ptr %l110, !tbaa !21
  br label %bb52
bb52:
  %t197 = load i1, ptr %l110, !tbaa !21
  br i1 %t197, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t199 = load i64, ptr %l15, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l15, !tbaa !24
  br label %bb42
bb57:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eplanOf(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l17 = alloca %"compiler/typed:Plan"
  %l19 = alloca %"compiler/typed:Plan"
  %l24 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/typed:Plan"
  %l34 = alloca %"compiler/typed:Plan"
  %l36 = alloca %"compiler/typed:Plan"
  %rv = alloca ptr
  %t28 = alloca %"compiler/typed:Plan", align 8
  %t31 = alloca %"compiler/typed:Plan", align 8
  %t58 = alloca %"compiler/typed:Plan", align 8
  %t61 = alloca %"compiler/typed:Plan", align 8
  %t65 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb10
bb3:
  %t10 = load i32, ptr %l2, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 2
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l11
  br label %bb4
bb4:
  %t18 = load i64, ptr %l8, !tbaa !24
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:Lowerer", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l2, !tbaa !23
  %t27 = sext i32 %t25 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t28, ptr %v0, ptr %v1, ptr %t24, i64 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t28, i64 536, i1 false)
  br label %bb7
bb6:
  br label %bb9
bb7:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t31, ptr %v1, ptr %l17)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t31, i64 536, i1 false)
  br label %bb8
bb8:
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 536, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %l19, i64 536, i1 false)
  store ptr %t33, ptr %rv
  br label %ret
bb9:
  br label %bb25
bb10:
  %t35 = load { i64, [2 x i64] }, ptr %l1
  %t37 = extractvalue { i64, [2 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 6
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t41 = getelementptr { i32, i64 }, ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t44 = load i64, ptr %l3, !tbaa !24
  store i64 %t44, ptr %l24, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:Lowerer", ptr %t45, i32 0, i32 3
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l27
  br label %bb14
bb14:
  %t50 = load i64, ptr %l24, !tbaa !24
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = icmp slt i64 %t50, %t51
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lower:Lowerer", ptr %t54, i32 0, i32 3
  %t57 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t58, ptr %v0, ptr %v1, ptr %t56, i64 %t57)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t58, i64 536, i1 false)
  br label %bb17
bb16:
  br label %bb19
bb17:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t61, ptr %v1, ptr %l32)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t61, i64 536, i1 false)
  br label %bb18
bb18:
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 536, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %l34, i64 536, i1 false)
  store ptr %t63, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_22c39d86763bef1a_78a4012252e46bde)
  unreachable
bb25:
  call void @compiler_2ftyped_3aPlan_2ector(ptr %t65, ptr %v1, i64 0, i64 0, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t65, i64 536, i1 false)
  br label %bb26
bb26:
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 536, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t66, ptr %l36, i64 536, i1 false)
  store ptr %t66, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eargView(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca i1
  %l22 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l35 = alloca { i64, ptr }
  %l37 = alloca i1
  %l45 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t6 = load ptr, ptr %l7, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 7
  store i1 %t12, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb27
bb8:
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Make", ptr %t20, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 5}
  %t25 = trunc i64 4 to i32
  %t26 = icmp eq i32 %t23, %t25
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb11
bb10:
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Make", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp ne i64 %t35, 1
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb14
bb13:
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Make", ptr %t40, i32 0, i32 4
  %t43 = load i32, ptr %t42, !tbaa !23
  %t45 = icmp slt i32 %t43, 0
  store i1 %t45, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l2, !tbaa !24
  %t57 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %t51, i64 %t52, i64 %a3)
  store i1 %t57, ptr %l30
  br label %bb18
bb18:
  %t58 = load i1, ptr %l30, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb22
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Make", ptr %t62, i32 0, i32 2
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l35, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr ptr, ptr %t67, i64 0
  %t69 = load ptr, ptr %t68, !tbaa !39
  %t72 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t61, ptr %t69)
  store i1 %t72, ptr %l37
  br label %bb21
bb21:
  %t73 = load i1, ptr %l37, !tbaa !21
  %t74 = xor i1 %t73, true
  store i1 %t74, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t76 = load i1, ptr %l32, !tbaa !21
  br i1 %t76, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lower:lowering", ptr %t77, i32 0, i32 46
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Make", ptr %t80, i32 0, i32 4
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = sext i32 %t83 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t79, i64 %t85, i1 true)
  br label %bb26
bb26:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lower:lowering", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l45, !tbaa !29
  %t92 = load ptr, ptr %l45, !tbaa !29
  %t93 = getelementptr %"compiler/lower:Lowerer", ptr %t92, i32 0, i32 27
  %t94 = load i64, ptr %t93, !tbaa !24
  %t96 = add i64 %t94, 1
  %t98 = load ptr, ptr %l45, !tbaa !29
  %t99 = getelementptr %"compiler/lower:Lowerer", ptr %t98, i32 0, i32 27
  store i64 %t96, ptr %t99, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_1b1a671a6e79262c_47e81d21e75aae58)
  unreachable
bb32:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca i32
  %l34 = alloca { i64, ptr }
  %l40 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca i32
  %l48 = alloca %"compiler/mir:Range"
  %l51 = alloca { i64, [4 x i64] }
  %l52 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i32
  %l64 = alloca { i64, [1 x i64] }
  %l69 = alloca { i64, [4 x i64] }
  %l72 = alloca i32
  %l76 = alloca i32
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l80 = alloca %"compiler/mir:Lvalue"
  %l82 = alloca { i64, [1 x i64] }
  %l87 = alloca { i64, [1 x i64] }
  %l88 = alloca i32
  %l92 = alloca { i64, [4 x i64] }
  %l98 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca i1
  %l108 = alloca i64
  %l111 = alloca i64
  %l130 = alloca ptr
  %l132 = alloca { i64, [2 x i64] }
  %l134 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l142 = alloca %"compiler/mir:Lvalue"
  %l154 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t22 = alloca { i64, [4 x i64] }, align 8
  %t40 = alloca { i64, [4 x i64] }, align 8
  %t62 = alloca { i64, [15 x i64] }, align 8
  %t104 = alloca { i64, [15 x i64] }, align 8
  %t162 = alloca { i64, [4 x i64] }, align 8
  %t169 = alloca { i64, [15 x i64] }, align 8
  %t181 = alloca { i64, [21 x i64] }, align 8
  %t259 = alloca { i64, [2 x i64] }, align 8
  %t267 = alloca { i64, [1 x i64] }, align 8
  %t271 = alloca { i64, [1 x i64] }, align 8
  %t291 = alloca { i64, [1 x i64] }, align 8
  %t320 = alloca { i64, [15 x i64] }, align 8
  %t326 = alloca { i64, [21 x i64] }, align 8
  %t347 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
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
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l24
  br label %bb1
bb1:
  %t11 = load i32, ptr %l24, !tbaa !23
  store i32 %t11, ptr %l7, !tbaa !23
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t18, %"compiler/source:Span" %t19, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb5
bb4:
  store { i64, [4 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 0
  store i64 0, ptr %t23
  %t24 = load { i64, [4 x i64] }, ptr %t22
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t24, ptr %rv
  br label %ret
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Make", ptr %t27, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t33 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %s0, ptr %t26, { i64, ptr } %t30)
  store { i64, ptr } %t33, ptr %l34
  br label %bb6
bb6:
  %t34 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t34, ptr %l8, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 10
  %t38 = load i1, ptr %t37, !tbaa !21
  br i1 %t38, label %bb7, label %bb8
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t42 = load { i64, [4 x i64] }, ptr %t40
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t42, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l7, !tbaa !23
  %t48 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t44, i32 %t45)
  store i64 %t48, ptr %l40
  br label %bb10
bb10:
  %t49 = load i64, ptr %l40, !tbaa !24
  %t50 = icmp sge i64 %t49, 0
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l42, !tbaa !29
  %t53 = load i32, ptr %l7, !tbaa !23
  store i32 %t53, ptr %l43, !tbaa !23
  %t54 = load i32, ptr %l7, !tbaa !23
  store i32 %t54, ptr %l44, !tbaa !23
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/lower:lowering", ptr %t55, i32 0, i32 3
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t61 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t57, { i64, ptr } %t58)
  store %"compiler/mir:Range" %t61, ptr %l48
  br label %bb13
bb12:
  br label %bb22
bb13:
  store { i64, [15 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [15 x i64] }, ptr %t62, i32 0, i32 0
  store i64 6, ptr %t63
  %t64 = load i32, ptr %l44, !tbaa !23
  %t65 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t64, 0
  %t66 = insertvalue { i32, i64, %"compiler/mir:Range" } %t65, i64 0, 1
  %t67 = load %"compiler/mir:Range", ptr %l48
  %t68 = insertvalue { i32, i64, %"compiler/mir:Range" } %t66, %"compiler/mir:Range" %t67, 2
  %t69 = getelementptr { i64, [15 x i64] }, ptr %t62, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t68, ptr %t69
  %t70 = load { i64, [15 x i64] }, ptr %t62
  %t71 = load %"compiler/source:Span", ptr %l3
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t73 = load i32, ptr %l43, !tbaa !23
  %t76 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t72, i32 %t73, { i64, [15 x i64] } %t70, %"compiler/source:Span" %t71)
  store { i64, [4 x i64] } %t76, ptr %l51
  br label %bb14
bb14:
  %t77 = load { i64, [4 x i64] }, ptr %l51
  store { i64, [4 x i64] } %t77, ptr %l9
  %t78 = load ptr, ptr %l6, !tbaa !29
  store ptr %t78, ptr %l52, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t80 = load i32, ptr %l2, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l55
  br label %bb15
bb15:
  %t84 = load ptr, ptr %l52, !tbaa !29
  %t85 = load i32, ptr %l55, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t86, ptr %l56
  br label %bb16
bb16:
  %t87 = load i1, ptr %l56, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb17, label %bb18
bb17:
  %t90 = load { i64, [4 x i64] }, ptr %l9
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t90, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l59, !tbaa !29
  %t93 = load i32, ptr %l2, !tbaa !23
  store i32 %t93, ptr %l60, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Make", ptr %t95, i32 0, i32 4
  %t98 = load i32, ptr %t97, !tbaa !23
  %t101 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t94, i32 %t98)
  store { i64, [1 x i64] } %t101, ptr %l64
  br label %bb20
bb20:
  %t102 = load { i64, [4 x i64] }, ptr %l9
  %t103 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [15 x i64] }, ptr %t104, i32 0, i32 0
  store i64 7, ptr %t105
  %t106 = load { i64, [1 x i64] }, ptr %l64
  %t107 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t106, 0
  %t109 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t107, { i64, [4 x i64] } %t102, 1
  %t111 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t109, i32 %t103, 2
  %t112 = getelementptr { i64, [15 x i64] }, ptr %t104, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t111, ptr %t112
  %t113 = load { i64, [15 x i64] }, ptr %t104
  %t114 = load %"compiler/source:Span", ptr %l3
  %t115 = load ptr, ptr %l59, !tbaa !29
  %t116 = load i32, ptr %l60, !tbaa !23
  %t119 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t115, i32 %t116, { i64, [15 x i64] } %t113, %"compiler/source:Span" %t114)
  store { i64, [4 x i64] } %t119, ptr %l69
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t120 = load { i64, [4 x i64] }, ptr %l69
  store { i64, [4 x i64] } %t120, ptr %rv
  br label %ret
bb22:
  %t121 = load ptr, ptr %l6, !tbaa !29
  %t122 = load i32, ptr %l7, !tbaa !23
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t121, i32 %t122)
  store i32 %t125, ptr %l72
  br label %bb23
bb23:
  %t126 = load i32, ptr %l72, !tbaa !23
  store i32 %t126, ptr %l10, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i32, ptr %l2, !tbaa !23
  %t129 = load %"compiler/source:Span", ptr %l3
  %t133 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t127, i32 %t128, %"compiler/source:Span" %t129)
  store i32 %t133, ptr %l76
  br label %bb24
bb24:
  %t134 = load i32, ptr %l76, !tbaa !23
  store i32 %t134, ptr %l11, !tbaa !23
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l77, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t136, ptr %l78
  %t137 = load i32, ptr %l11, !tbaa !23
  %t139 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t137)
  store %"compiler/mir:Lvalue" %t139, ptr %l80
  br label %bb25
bb25:
  br i1 %a4, label %bb26, label %bb27
bb26:
  store { i64, [1 x i64] } %a5, ptr %l82
  br label %bb29
bb27:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Make", ptr %t145, i32 0, i32 4
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t144, i32 %t148)
  store { i64, [1 x i64] } %t151, ptr %l87
  br label %bb28
bb28:
  %t152 = load { i64, [1 x i64] }, ptr %l87
  store { i64, [1 x i64] } %t152, ptr %l82
  br label %bb29
bb29:
  %t153 = load i32, ptr %l2, !tbaa !23
  store i32 %t153, ptr %l88, !tbaa !23
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t160 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t154, i64 %t157)
  store { i64, [4 x i64] } %t160, ptr %l92
  br label %bb30
bb30:
  %t161 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 0
  store i64 2, ptr %t163
  %t165 = insertvalue { i32, i64 } undef, i32 %t161, 0
  %t166 = insertvalue { i32, i64 } %t165, i64 0, 1
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 1
  store { i32, i64 } %t166, ptr %t167
  %t168 = load { i64, [4 x i64] }, ptr %t162
  store { i64, [15 x i64] } zeroinitializer, ptr %t169
  %t170 = getelementptr { i64, [15 x i64] }, ptr %t169, i32 0, i32 0
  store i64 8, ptr %t170
  %t171 = load { i64, [1 x i64] }, ptr %l82
  %t172 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t171, 0
  %t173 = load i32, ptr %l88, !tbaa !23
  %t174 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t172, i32 %t173, 1
  %t175 = load { i64, [4 x i64] }, ptr %l92
  %t176 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t174, { i64, [4 x i64] } %t175, 2
  %t178 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t176, { i64, [4 x i64] } %t168, 3
  %t179 = getelementptr { i64, [15 x i64] }, ptr %t169, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t178, ptr %t179
  %t180 = load { i64, [15 x i64] }, ptr %t169
  store { i64, [21 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [21 x i64] }, ptr %t181, i32 0, i32 0
  store i64 0, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l78
  %t184 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t183, 0
  %t185 = load %"compiler/mir:Lvalue", ptr %l80
  %t186 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t184, %"compiler/mir:Lvalue" %t185, 1
  %t188 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t186, { i64, [15 x i64] } %t180, 2
  %t189 = getelementptr { i64, [21 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t188, ptr %t189
  %t190 = load { i64, [21 x i64] }, ptr %t181
  %t192 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t190, ptr %t192
  %t193 = load ptr, ptr %l77, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t193, ptr %t192)
  br label %bb31
bb31:
  %t195 = load ptr, ptr %l6, !tbaa !29
  store ptr %t195, ptr %l98, !tbaa !29
  %t196 = load ptr, ptr %l6, !tbaa !29
  %t197 = load i32, ptr %l2, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t196, i32 %t197)
  store i32 %t200, ptr %l101
  br label %bb32
bb32:
  %t201 = load ptr, ptr %l98, !tbaa !29
  %t202 = load i32, ptr %l101, !tbaa !23
  %t203 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t201, i32 %t202)
  store i1 %t203, ptr %l102
  br label %bb33
bb33:
  %t204 = load i1, ptr %l102, !tbaa !21
  store i1 %t204, ptr %l12, !tbaa !21
  store i64 0, ptr %l13, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  store i64 %t207, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t209 = load i64, ptr %l14, !tbaa !24
  %t210 = load i64, ptr %l13, !tbaa !24
  %t213 = icmp sgt i64 %t209, %t210
  br i1 %t213, label %bb34, label %bb35
bb34:
  %t215 = load i64, ptr %l15, !tbaa !24
  %t217 = icmp sgt i64 %t215, 0
  br i1 %t217, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb39
bb36:
  %t219 = load i64, ptr %l14, !tbaa !24
  %t220 = load i64, ptr %l13, !tbaa !24
  %t223 = sub i64 %t219, %t220
  %t224 = load i64, ptr %l15, !tbaa !24
  %t227 = add i64 %t223, %t224
  %t229 = sub i64 %t227, 1
  %t230 = load i64, ptr %l15, !tbaa !24
  %t233 = sdiv i64 %t229, %t230
  store i64 %t233, ptr %l111, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb38
bb38:
  %t235 = load i64, ptr %l111, !tbaa !24
  store i64 %t235, ptr %l108, !tbaa !24
  br label %bb39
bb39:
  %t236 = load i64, ptr %l108, !tbaa !24
  store i64 %t236, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t237 = load i64, ptr %l17, !tbaa !24
  %t238 = load i64, ptr %l16, !tbaa !24
  %t241 = icmp slt i64 %t237, %t238
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s6)
  br label %bb50
bb42:
  br label %bb43
bb43:
  %t245 = load i64, ptr %l13, !tbaa !24
  %t246 = load i64, ptr %l17, !tbaa !24
  %t247 = load i64, ptr %l15, !tbaa !24
  %t250 = mul i64 %t246, %t247
  %t253 = add i64 %t245, %t250
  store i64 %t253, ptr %l18, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/lower:lowering", ptr %t255, i32 0, i32 3
  store ptr %t257, ptr %l130, !tbaa !29
  %t258 = load i32, ptr %l11, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [2 x i64] }, ptr %t259, i32 0, i32 0
  store i64 1, ptr %t260
  %t262 = insertvalue { i32 } undef, i32 %t258, 0
  %t263 = getelementptr { i64, [2 x i64] }, ptr %t259, i32 0, i32 1
  store { i32 } %t262, ptr %t263
  %t264 = load { i64, [2 x i64] }, ptr %t259
  store { i64, [2 x i64] } %t264, ptr %l132
  %t265 = load i1, ptr %l12, !tbaa !21
  br i1 %t265, label %bb44, label %bb45
bb44:
  store { i64, [1 x i64] } zeroinitializer, ptr %t267
  %t268 = getelementptr { i64, [1 x i64] }, ptr %t267, i32 0, i32 0
  store i64 3, ptr %t268
  %t269 = load { i64, [1 x i64] }, ptr %t267
  %t270 = load i64, ptr %l18, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t271
  %t272 = getelementptr { i64, [1 x i64] }, ptr %t271, i32 0, i32 0
  store i64 2, ptr %t272
  %t274 = insertvalue { i64 } undef, i64 %t270, 0
  %t275 = getelementptr { i64, [1 x i64] }, ptr %t271, i32 0, i32 1
  store { i64 } %t274, ptr %t275
  %t276 = load { i64, [1 x i64] }, ptr %t271
  %t277 = mul i64 2, 16
  %t278 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t277)
  %t279 = insertvalue { i64, ptr } undef, i64 2, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  store { i64, ptr } %t280, ptr %l138, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr { i64, [1 x i64] }, ptr %t283, i64 0
  store { i64, [1 x i64] } %t269, ptr %t284
  %t286 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr { i64, [1 x i64] }, ptr %t287, i64 1
  store { i64, [1 x i64] } %t276, ptr %t288
  %t289 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t289, ptr %l134, !tbaa !27
  br label %bb46
bb45:
  %t290 = load i64, ptr %l18, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [1 x i64] }, ptr %t291, i32 0, i32 0
  store i64 2, ptr %t292
  %t294 = insertvalue { i64 } undef, i64 %t290, 0
  %t295 = getelementptr { i64, [1 x i64] }, ptr %t291, i32 0, i32 1
  store { i64 } %t294, ptr %t295
  %t296 = load { i64, [1 x i64] }, ptr %t291
  %t297 = mul i64 1, 16
  %t298 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t297)
  %t299 = insertvalue { i64, ptr } undef, i64 1, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  store { i64, ptr } %t300, ptr %l141, !tbaa !27
  %t302 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr { i64, [1 x i64] }, ptr %t303, i64 0
  store { i64, [1 x i64] } %t296, ptr %t304
  %t305 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t305, ptr %l134, !tbaa !27
  br label %bb46
bb46:
  %t306 = load ptr, ptr %l130, !tbaa !29
  %t307 = load { i64, [2 x i64] }, ptr %l132
  %t308 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t309 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s6, ptr %t306, { i64, [2 x i64] } %t307, { i64, ptr } %t308)
  store %"compiler/mir:Lvalue" %t309, ptr %l142
  br label %bb47
bb47:
  %t310 = load %"compiler/mir:Lvalue", ptr %l142
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load %"compiler/source:Span", ptr %l3
  %t314 = load i64, ptr %l18, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, [4 x i64] }, ptr %t317, i64 %t314
  %t319 = load { i64, [4 x i64] }, ptr %t318
  store { i64, [15 x i64] } zeroinitializer, ptr %t320
  %t321 = getelementptr { i64, [15 x i64] }, ptr %t320, i32 0, i32 0
  store i64 0, ptr %t321
  %t323 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t319, 0
  %t324 = getelementptr { i64, [15 x i64] }, ptr %t320, i32 0, i32 1
  store { { i64, [4 x i64] } } %t323, ptr %t324
  %t325 = load { i64, [15 x i64] }, ptr %t320
  store { i64, [21 x i64] } zeroinitializer, ptr %t326
  %t327 = getelementptr { i64, [21 x i64] }, ptr %t326, i32 0, i32 0
  store i64 0, ptr %t327
  %t329 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t312, 0
  %t331 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t329, %"compiler/mir:Lvalue" %t310, 1
  %t333 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t331, { i64, [15 x i64] } %t325, 2
  %t334 = getelementptr { i64, [21 x i64] }, ptr %t326, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t333, ptr %t334
  %t335 = load { i64, [21 x i64] }, ptr %t326
  %t337 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t335, ptr %t337
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s6, ptr %t311, ptr %t337)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s6)
  br label %bb49
bb49:
  %t340 = load i64, ptr %l17, !tbaa !24
  %t342 = add i64 %t340, 1
  store i64 %t342, ptr %l17, !tbaa !24
  br label %bb40
bb50:
  %t344 = load i32, ptr %l11, !tbaa !23
  %t346 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t344)
  store %"compiler/mir:Lvalue" %t346, ptr %l154
  br label %bb51
bb51:
  store { i64, [4 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [4 x i64] }, ptr %t347, i32 0, i32 0
  store i64 1, ptr %t348
  %t349 = load %"compiler/mir:Lvalue", ptr %l154
  %t350 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t349, 0
  %t351 = getelementptr { i64, [4 x i64] }, ptr %t347, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t350, ptr %t351
  %t352 = load { i64, [4 x i64] }, ptr %t347
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t352, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %rv = alloca i32
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
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l2, !tbaa !29
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l15
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i32, ptr %l15, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t26, ptr %l16
  br label %bb6
bb6:
  %t27 = load i32, ptr %l16, !tbaa !23
  store i32 %t27, ptr %l3, !tbaa !23
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l19
  br label %bb8
bb8:
  %t33 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t35 = trunc i64 19 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i32, ptr %l3, !tbaa !23
  store i32 %t38, ptr %l22, !tbaa !23
  br label %bb11
bb10:
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t40, ptr %l22, !tbaa !23
  br label %bb11
bb11:
  %t42 = load i32, ptr %l22, !tbaa !23
  store i32 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2earrayStore(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [4 x i64] } %a2, i32 %a3, i1 %a4, %"compiler/source:Span" %a5, { i64, [1 x i64] } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l19 = alloca i32
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, [4 x i64] }
  %l28 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l32 = alloca %"compiler/mir:Lvalue"
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, [4 x i64] }
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, [4 x i64] }
  %l47 = alloca i32
  %l50 = alloca i32
  %l53 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca %"compiler/mir:Lvalue"
  %l65 = alloca %"compiler/mir:Lvalue"
  %l74 = alloca { i64, [4 x i64] }
  %l75 = alloca ptr
  %l77 = alloca %"compiler/mir:Lvalue"
  %l82 = alloca { i64, [4 x i64] }
  %l84 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t14 = alloca { i64, [4 x i64] }, align 8
  %t41 = alloca { i64, [4 x i64] }, align 8
  %t109 = alloca { i64, [8 x i64] }, align 8
  %t132 = alloca { i64, [21 x i64] }, align 8
  %t165 = alloca { i64, [4 x i64] }, align 8
  %t181 = alloca { i64, [4 x i64] }, align 8
  %t193 = alloca { i64, [15 x i64] }, align 8
  %t199 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l3, !tbaa !23
  %t4 = load %"compiler/source:Span", ptr %l5
  %t9 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t1, { i64, [4 x i64] } %a2, i32 %t3, %"compiler/source:Span" %t4)
  store i32 %t9, ptr %l19
  br label %bb1
bb1:
  %t10 = load i32, ptr %l19, !tbaa !23
  store i32 %t10, ptr %l7, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t13 = load %"compiler/mir:Lvalue", ptr %l1
  store { i64, [4 x i64] } zeroinitializer, ptr %t14
  %t15 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 0
  store i64 1, ptr %t15
  %t17 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t13, 0
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t17, ptr %t18
  %t19 = load { i64, [4 x i64] }, ptr %t14
  %t20 = mul i64 1, 40
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 1, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l25, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t26, i64 0
  store { i64, [4 x i64] } %t19, ptr %t27
  %t28 = load %"compiler/source:Span", ptr %l5
  %t32 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t34 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t11, i32 22, i32 %t12, { i64, ptr } %t32, %"compiler/source:Span" %t28)
  store { i64, [4 x i64] } %t34, ptr %l27
  br label %bb2
bb2:
  %t35 = load { i64, [4 x i64] }, ptr %l27
  store { i64, [4 x i64] } %t35, ptr %l8
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  store i32 22, ptr %l29
  %t37 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t37, ptr %l30, !tbaa !23
  %t38 = load i32, ptr %l7, !tbaa !23
  %t40 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t38)
  store %"compiler/mir:Lvalue" %t40, ptr %l32
  br label %bb3
bb3:
  store { i64, [4 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 0
  store i64 1, ptr %t42
  %t43 = load %"compiler/mir:Lvalue", ptr %l32
  %t44 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t43, 0
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t44, ptr %t45
  %t46 = load { i64, [4 x i64] }, ptr %t41
  %t47 = mul i64 1, 40
  %t48 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 1, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l34, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t53, i64 0
  store { i64, [4 x i64] } %t46, ptr %t54
  %t55 = load %"compiler/source:Span", ptr %l5
  %t56 = load ptr, ptr %l28, !tbaa !29
  %t57 = load i32, ptr %l29, !range !{i32 0, i32 52}
  %t58 = load i32, ptr %l30, !tbaa !23
  %t59 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t61 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t56, i32 %t57, i32 %t58, { i64, ptr } %t59, %"compiler/source:Span" %t55)
  store { i64, [4 x i64] } %t61, ptr %l36
  br label %bb4
bb4:
  %t62 = load { i64, [4 x i64] }, ptr %l36
  store { i64, [4 x i64] } %t62, ptr %l9
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t65 = load { i64, [4 x i64] }, ptr %l8
  %t66 = load { i64, [4 x i64] }, ptr %l9
  %t67 = mul i64 2, 40
  %t68 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 2, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l42, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i64 0
  store { i64, [4 x i64] } %t65, ptr %t74
  %t76 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t77, i64 1
  store { i64, [4 x i64] } %t66, ptr %t78
  %t79 = load %"compiler/source:Span", ptr %l5
  %t83 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t85 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t63, i32 13, i32 %t64, { i64, ptr } %t83, %"compiler/source:Span" %t79)
  store { i64, [4 x i64] } %t85, ptr %l44
  br label %bb5
bb5:
  %t86 = load { i64, [4 x i64] }, ptr %l44
  store { i64, [4 x i64] } %t86, ptr %l10
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/lower:lowering", ptr %t87, i32 0, i32 3
  %t91 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t89)
  store i32 %t91, ptr %l47
  br label %bb6
bb6:
  %t92 = load i32, ptr %l47, !tbaa !23
  store i32 %t92, ptr %l11, !tbaa !23
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 3
  %t97 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t95)
  store i32 %t97, ptr %l50
  br label %bb7
bb7:
  %t98 = load i32, ptr %l50, !tbaa !23
  store i32 %t98, ptr %l12, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lower:lowering", ptr %t99, i32 0, i32 3
  %t103 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t101)
  store i32 %t103, ptr %l53
  br label %bb8
bb8:
  %t104 = load i32, ptr %l53, !tbaa !23
  store i32 %t104, ptr %l13, !tbaa !23
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, [4 x i64] }, ptr %l10
  %t107 = load i32, ptr %l11, !tbaa !23
  %t108 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [8 x i64] }, ptr %t109, i32 0, i32 0
  store i64 2, ptr %t110
  %t112 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t106, 0
  %t114 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t112, i32 %t107, 1
  %t116 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t114, i32 %t108, 2
  %t117 = getelementptr { i64, [8 x i64] }, ptr %t109, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t116, ptr %t117
  %t118 = load { i64, [8 x i64] }, ptr %t109
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t105, { i64, [8 x i64] } %t118)
  br label %bb9
bb9:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t121, i32 %t122)
  br label %bb10
bb10:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l61, !tbaa !29
  %t126 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t126, ptr %l62
  %t127 = load %"compiler/mir:Lvalue", ptr %l1
  store %"compiler/mir:Lvalue" %t127, ptr %l63
  %t128 = load i32, ptr %l7, !tbaa !23
  %t130 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t128)
  store %"compiler/mir:Lvalue" %t130, ptr %l65
  br label %bb11
bb11:
  %t131 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [21 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [21 x i64] }, ptr %t132, i32 0, i32 0
  store i64 9, ptr %t133
  %t134 = load %"compiler/source:Span", ptr %l62
  %t135 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t134, 0
  %t136 = load %"compiler/mir:Lvalue", ptr %l63
  %t137 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t135, %"compiler/mir:Lvalue" %t136, 1
  %t138 = load %"compiler/mir:Lvalue", ptr %l65
  %t139 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t137, %"compiler/mir:Lvalue" %t138, 2
  %t141 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t139, { i64, [4 x i64] } %t131, 3
  %t142 = getelementptr { i64, [21 x i64] }, ptr %t132, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t141, ptr %t142
  %t143 = load { i64, [21 x i64] }, ptr %t132
  %t145 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t143, ptr %t145
  %t146 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t146, ptr %t145)
  br label %bb12
bb12:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t148, i32 %t149)
  br label %bb13
bb13:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t152, i32 %t153)
  br label %bb14
bb14:
  br i1 %a4, label %bb15, label %bb16
bb15:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l75, !tbaa !29
  %t159 = load i32, ptr %l7, !tbaa !23
  %t161 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t159)
  store %"compiler/mir:Lvalue" %t161, ptr %l77
  br label %bb17
bb16:
  %t162 = load i32, ptr %l7, !tbaa !23
  %t164 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t162)
  store %"compiler/mir:Lvalue" %t164, ptr %l84
  br label %bb19
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 0
  store i64 1, ptr %t166
  %t167 = load %"compiler/mir:Lvalue", ptr %l77
  %t168 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t167, 0
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t168, ptr %t169
  %t170 = load { i64, [4 x i64] }, ptr %t165
  %t171 = load i32, ptr %l3, !tbaa !23
  %t172 = load %"compiler/source:Span", ptr %l5
  %t174 = load ptr, ptr %l75, !tbaa !29
  %t179 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t174, { i64, [4 x i64] } %t170, i32 %t171, %"compiler/source:Span" %t172, { i64, [1 x i64] } %a6, i1 false)
  store { i64, [4 x i64] } %t179, ptr %l82
  br label %bb18
bb18:
  %t180 = load { i64, [4 x i64] }, ptr %l82
  store { i64, [4 x i64] } %t180, ptr %l74
  br label %bb20
bb19:
  store { i64, [4 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 0
  store i64 1, ptr %t182
  %t183 = load %"compiler/mir:Lvalue", ptr %l84
  %t184 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t183, 0
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t184, ptr %t185
  %t186 = load { i64, [4 x i64] }, ptr %t181
  store { i64, [4 x i64] } %t186, ptr %l74
  br label %bb20
bb20:
  %t188 = load { i64, [4 x i64] }, ptr %l74
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l5
  %t191 = load %"compiler/mir:Lvalue", ptr %l1
  store { i64, [15 x i64] } zeroinitializer, ptr %t193
  %t194 = getelementptr { i64, [15 x i64] }, ptr %t193, i32 0, i32 0
  store i64 0, ptr %t194
  %t196 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t188, 0
  %t197 = getelementptr { i64, [15 x i64] }, ptr %t193, i32 0, i32 1
  store { { i64, [4 x i64] } } %t196, ptr %t197
  %t198 = load { i64, [15 x i64] }, ptr %t193
  store { i64, [21 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [21 x i64] }, ptr %t199, i32 0, i32 0
  store i64 0, ptr %t200
  %t202 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t190, 0
  %t204 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t202, %"compiler/mir:Lvalue" %t191, 1
  %t206 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t204, { i64, [15 x i64] } %t198, 2
  %t207 = getelementptr { i64, [21 x i64] }, ptr %t199, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t206, ptr %t207
  %t208 = load { i64, [21 x i64] }, ptr %t199
  %t210 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t208, ptr %t210
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t189, ptr %t210)
  br label %bb21
bb21:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t213, i32 %t214)
  br label %bb22
bb22:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t217, i32 %t218)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i1
  %l20 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l47 = alloca %"compiler/typed:BlockInfo"
  %l49 = alloca i32
  %l68 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 12
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l16
  br label %bb4
bb4:
  %t11 = load i64, ptr %l16, !tbaa !24
  %t12 = icmp sgt i64 %t11, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t14)
  store ptr %t16, ptr %l20
  br label %bb7
bb6:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t17 = load ptr, ptr %l20, !tbaa !29
  %t19 = getelementptr %"compiler/lower:level", ptr %t17, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Block", ptr %t21, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = icmp eq i32 %t20, %t24
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Block", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb18
bb11:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t47, ptr %l34, !tbaa !27
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t55, ptr %t53)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l3, !tbaa !24
  br label %bb11
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 8
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Block", ptr %t69, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t77 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t68, i64 %t74)
  store %"compiler/typed:BlockInfo" %t77, ptr %l47
  br label %bb19
bb19:
  %t78 = getelementptr %"compiler/typed:BlockInfo", ptr %l47, i32 0, i32 1
  %t79 = load i32, ptr %t78, !range !{i32 0, i32 10}
  store i32 %t79, ptr %l6
  %t81 = load i32, ptr %l6, !range !{i32 0, i32 10}
  %t83 = trunc i64 2 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i32 2, ptr %l49
  br label %bb32
bb23:
  %t87 = load i32, ptr %l6, !range !{i32 0, i32 10}
  %t89 = trunc i64 5 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i32 3, ptr %l49
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i32 1, ptr %l49
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_97232cd54c6d63ec_e5d7df8d53aaa998)
  unreachable
bb32:
  %t94 = load i32, ptr %l49, !range !{i32 0, i32 7}
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %t95, ptr %t96, i32 %t94, i32 0)
  br label %bb33
bb33:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Block", ptr %t101, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  store i64 %t108, ptr %l10, !tbaa !24
  br label %bb34
bb34:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb35, label %bb36
bb35:
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t118 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t118, ptr %l68, !tbaa !27
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t126, ptr %t124)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t130 = load i64, ptr %l9, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l9, !tbaa !24
  br label %bb34
bb40:
  %t134 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %t134)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { { i64, [7 x i64] }, i32 }
  %l6 = alloca { i64, [7 x i64] }
  %l7 = alloca i32
  %l8 = alloca %"compiler/mir:Range"
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca %"compiler/mir:Range"
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l20 = alloca { i64, [1 x i64] }
  %l21 = alloca { i64, [4 x i64] }
  %l26 = alloca i1
  %l36 = alloca { i64, [4 x i64] }
  %l43 = alloca { { i64, [7 x i64] }, i32 }
  %l53 = alloca %"compiler/mir:Range"
  %l65 = alloca { i64, [4 x i64] }
  %l71 = alloca i32
  %l77 = alloca %"compiler/mir:Range"
  %l80 = alloca i32
  %l85 = alloca i1
  %l89 = alloca ptr
  %l93 = alloca i32
  %l97 = alloca i32
  %l100 = alloca i32
  %l105 = alloca { i64, ptr }
  %l111 = alloca i32
  %l114 = alloca i32
  %l116 = alloca ptr
  %l117 = alloca { i64, [7 x i64] }
  %l118 = alloca %"compiler/mir:Range"
  %l119 = alloca %"compiler/mir:Range"
  %l123 = alloca %"compiler/mir:Lvalue"
  %l125 = alloca %"compiler/mir:Lvalue"
  %l133 = alloca %"compiler/mir:Call"
  %l134 = alloca i32
  %l140 = alloca i1
  %l158 = alloca ptr
  %l160 = alloca %"compiler/mir:Lvalue"
  %l182 = alloca i1
  %l188 = alloca ptr
  %l189 = alloca i64
  %l200 = alloca { i64, ptr }
  %l206 = alloca i1
  %l207 = alloca { i64, ptr }
  %l210 = alloca i1
  %l211 = alloca { i64, ptr }
  %l216 = alloca i1
  %l218 = alloca i1
  %l224 = alloca i1
  %l225 = alloca i1
  %l231 = alloca i1
  %l232 = alloca i1
  %l235 = alloca i1
  %l237 = alloca i1
  %l240 = alloca i1
  %l242 = alloca ptr
  %l246 = alloca ptr
  %l249 = alloca ptr
  %l251 = alloca i32
  %l255 = alloca { i64, [1 x i64] }
  %l256 = alloca { i64, [1 x i64] }
  %l257 = alloca ptr
  %l260 = alloca i64
  %l262 = alloca %"compiler/mir:Lvalue"
  %l267 = alloca { i64, [4 x i64] }
  %l272 = alloca ptr
  %l274 = alloca %"compiler/mir:Lvalue"
  %l279 = alloca { i64, [4 x i64] }
  %l281 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t61 = alloca { i64, [4 x i64] }, align 8
  %t80 = alloca { i64, [4 x i64] }, align 8
  %t110 = alloca { i64, [7 x i64] }, align 8
  %t284 = alloca { i64, [8 x i64] }, align 8
  %t308 = alloca { i64, [4 x i64] }, align 8
  %t332 = alloca { i64, [4 x i64] }, align 8
  %t335 = alloca { i64, [8 x i64] }, align 8
  %t347 = alloca { i64, [4 x i64] }, align 8
  %t357 = alloca { i64, [4 x i64] }, align 8
  %t568 = alloca { i64, [4 x i64] }, align 8
  %t598 = alloca { i64, [4 x i64] }, align 8
  %t617 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Call", ptr %t6, i32 0, i32 3
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Call", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l26, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t23 = load %"compiler/source:Span", ptr %l3
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %t26, !tbaa !23
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ezero(ptr %v0, ptr %t21, i32 %t22, %"compiler/source:Span" %t23, i32 %t27)
  store { i64, [4 x i64] } %t32, ptr %l36
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load { i64, [4 x i64] }, ptr %l36
  store { i64, [4 x i64] } %t33, ptr %rv
  br label %ret
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Call", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l3
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Call", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %t42, !tbaa !23
  %t48 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %t34, ptr %t38, %"compiler/source:Span" %t39, i32 %t43)
  store { { i64, [7 x i64] }, i32 } %t48, ptr %l43
  br label %bb8
bb8:
  %t49 = load { { i64, [7 x i64] }, i32 }, ptr %l43
  store { { i64, [7 x i64] }, i32 } %t49, ptr %l5
  %t50 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l5, i32 0, i32 0
  %t51 = load { i64, [7 x i64] }, ptr %t50
  store { i64, [7 x i64] } %t51, ptr %l6
  %t53 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l5, i32 0, i32 1
  %t54 = load i32, ptr %t53, !tbaa !23
  store i32 %t54, ptr %l7, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 10
  %t59 = load i1, ptr %t58, !tbaa !21
  br i1 %t59, label %bb9, label %bb10
bb9:
  store { i64, [4 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load { i64, [4 x i64] }, ptr %t61
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t63, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t67 = load { i64, [7 x i64] }, ptr %l6
  %t68 = load i32, ptr %l7, !tbaa !23
  %t73 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %t65, ptr %t66, { i64, [7 x i64] } %t67, i32 %t68)
  store %"compiler/mir:Range" %t73, ptr %l53
  br label %bb12
bb12:
  %t74 = load %"compiler/mir:Range", ptr %l53
  store %"compiler/mir:Range" %t74, ptr %l8
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:lowering", ptr %t75, i32 0, i32 10
  %t78 = load i1, ptr %t77, !tbaa !21
  br i1 %t78, label %bb13, label %bb14
bb13:
  store { i64, [4 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 0
  store i64 0, ptr %t81
  %t82 = load { i64, [4 x i64] }, ptr %t80
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t82, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t84 = load { i64, [7 x i64] }, ptr %l6
  %t86 = extractvalue { i64, [7 x i64] } %t84, 0
  %t87 = icmp eq i64 %t86, 3
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = getelementptr { i64, [7 x i64] }, ptr %l6, i32 0, i32 1
  %t90 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t89, i32 0, i32 1
  %t91 = load i64, ptr %t90
  store i64 %t91, ptr %l9, !tbaa !24
  %t93 = getelementptr { i64, [7 x i64] }, ptr %l6, i32 0, i32 1
  %t94 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t93, i32 0, i32 2
  %t95 = load i32, ptr %t94
  store i32 %t95, ptr %l10, !tbaa !23
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/lower:lowering", ptr %t97, i32 0, i32 3
  %t100 = getelementptr %"compiler/mir:Fn", ptr %t99, i32 0, i32 11
  %t101 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t104 = sext i32 %t102 to i64
  %t107 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t100, i64 %t104)
  store { i64, [4 x i64] } %t107, ptr %l65
  br label %bb19
bb19:
  %t108 = load i64, ptr %l9, !tbaa !24
  %t109 = load i32, ptr %l10, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [7 x i64] }, ptr %t110, i32 0, i32 0
  store i64 3, ptr %t111
  %t112 = load { i64, [4 x i64] }, ptr %l65
  %t113 = insertvalue { { i64, [4 x i64] }, i64, i32 } undef, { i64, [4 x i64] } %t112, 0
  %t115 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t113, i64 %t108, 1
  %t117 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t115, i32 %t109, 2
  %t118 = getelementptr { i64, [7 x i64] }, ptr %t110, i32 0, i32 1
  store { { i64, [4 x i64] }, i64, i32 } %t117, ptr %t118
  %t119 = load { i64, [7 x i64] }, ptr %t110
  store { i64, [7 x i64] } %t119, ptr %l6
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
  call void @__olang_check_failed(ptr @olang_loc_b0754b7649fd7859_91d9947d7b887e0d)
  unreachable
bb25:
  %t121 = load ptr, ptr %l4, !tbaa !29
  %t122 = load i32, ptr %l7, !tbaa !23
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t121, i32 %t122)
  store i32 %t125, ptr %l71
  br label %bb26
bb26:
  %t126 = load i32, ptr %l71, !tbaa !23
  store i32 %t126, ptr %l11, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load { i64, [7 x i64] }, ptr %l6
  %t129 = load i32, ptr %l7, !tbaa !23
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Call", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %t132, !tbaa !23
  %t138 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassedFor(ptr %v0, ptr %t127, { i64, [7 x i64] } %t128, i32 %t129, i32 %t133)
  store %"compiler/mir:Range" %t138, ptr %l77
  br label %bb27
bb27:
  %t139 = load %"compiler/mir:Range", ptr %l77
  store %"compiler/mir:Range" %t139, ptr %l12
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/lower:lowering", ptr %t140, i32 0, i32 3
  %t144 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t142)
  store i32 %t144, ptr %l80
  br label %bb28
bb28:
  %t145 = load i32, ptr %l80, !tbaa !23
  store i32 %t145, ptr %l13, !tbaa !23
  %t146 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t146, ptr %l14, !tbaa !23
  %t148 = load i32, ptr %l11, !tbaa !23
  %t149 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t152 = icmp ne i32 %t148, %t149
  br i1 %t152, label %bb29, label %bb30
bb29:
  %t154 = load i32, ptr %l11, !tbaa !23
  %t155 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t158 = icmp ne i32 %t154, %t155
  store i1 %t158, ptr %l85, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb31
bb31:
  %t160 = load i1, ptr %l85, !tbaa !21
  br i1 %t160, label %bb32, label %bb33
bb32:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l89, !tbaa !29
  %t162 = load i32, ptr %l2, !tbaa !23
  %t163 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t166 = icmp ne i32 %t162, %t163
  br i1 %t166, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  %t168 = load i32, ptr %l2, !tbaa !23
  store i32 %t168, ptr %l93, !tbaa !23
  br label %bb36
bb35:
  %t170 = load i32, ptr %l11, !tbaa !23
  store i32 %t170, ptr %l93, !tbaa !23
  br label %bb36
bb36:
  %t172 = load %"compiler/source:Span", ptr %l3
  %t173 = load ptr, ptr %l89, !tbaa !29
  %t174 = load i32, ptr %l93, !tbaa !23
  %t176 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t173, i32 %t174, %"compiler/source:Span" %t172)
  store i32 %t176, ptr %l97
  br label %bb37
bb37:
  %t177 = load i32, ptr %l97, !tbaa !23
  store i32 %t177, ptr %l14, !tbaa !23
  br label %bb38
bb38:
  %t178 = load ptr, ptr %l4, !tbaa !29
  %t179 = load i32, ptr %l7, !tbaa !23
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t178, i32 %t179)
  store i32 %t182, ptr %l100
  br label %bb39
bb39:
  %t183 = load i32, ptr %l100, !tbaa !23
  store i32 %t183, ptr %l15, !tbaa !23
  %t184 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t184, ptr %l16, !tbaa !23
  %t186 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t186, ptr %l17, !tbaa !23
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t189 = load i32, ptr %l15, !tbaa !23
  %t192 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t188, i32 %t189)
  store { i64, ptr } %t192, ptr %l105
  br label %bb40
bb40:
  %t193 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  %t196 = icmp sgt i64 %t194, 0
  br i1 %t196, label %bb41, label %bb42
bb41:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t200 = load %"compiler/source:Span", ptr %l3
  %t204 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t198, i32 %t199, %"compiler/source:Span" %t200)
  store i32 %t204, ptr %l111
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t205 = load i32, ptr %l111, !tbaa !23
  store i32 %t205, ptr %l16, !tbaa !23
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/lower:lowering", ptr %t206, i32 0, i32 3
  %t210 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t208)
  store i32 %t210, ptr %l114
  br label %bb44
bb44:
  %t211 = load i32, ptr %l114, !tbaa !23
  store i32 %t211, ptr %l17, !tbaa !23
  br label %bb45
bb45:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/lower:lowering", ptr %t212, i32 0, i32 3
  store ptr %t214, ptr %l116, !tbaa !29
  %t215 = load { i64, [7 x i64] }, ptr %l6
  store { i64, [7 x i64] } %t215, ptr %l117
  %t216 = load %"compiler/mir:Range", ptr %l8
  store %"compiler/mir:Range" %t216, ptr %l118
  %t217 = load %"compiler/mir:Range", ptr %l12
  store %"compiler/mir:Range" %t217, ptr %l119
  %t218 = load i32, ptr %l14, !tbaa !23
  %t219 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t222 = icmp ne i32 %t218, %t219
  br i1 %t222, label %bb46, label %bb47
bb46:
  %t224 = load i32, ptr %l14, !tbaa !23
  %t226 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t224)
  store %"compiler/mir:Lvalue" %t226, ptr %l125
  br label %bb48
bb47:
  %t227 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  store %"compiler/mir:Lvalue" %t227, ptr %l123
  br label %bb49
bb48:
  %t229 = load %"compiler/mir:Lvalue", ptr %l125
  store %"compiler/mir:Lvalue" %t229, ptr %l123
  br label %bb49
bb49:
  %t230 = load i32, ptr %l14, !tbaa !23
  %t231 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t234 = icmp ne i32 %t230, %t231
  %t235 = load i32, ptr %l13, !tbaa !23
  %t236 = load i32, ptr %l16, !tbaa !23
  %t237 = load i32, ptr %l17, !tbaa !23
  %t238 = load { i64, [7 x i64] }, ptr %l117
  %t239 = load %"compiler/mir:Range", ptr %l118
  %t240 = load %"compiler/mir:Range", ptr %l119
  %t241 = load %"compiler/mir:Lvalue", ptr %l123
  %t246 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t238, %"compiler/mir:Range" %t239, %"compiler/mir:Range" %t240, %"compiler/mir:Lvalue" %t241, i1 %t234, i32 %t235, i32 %t236, i32 %t237)
  store %"compiler/mir:Call" %t246, ptr %l133
  br label %bb50
bb50:
  %t247 = load ptr, ptr %l116, !tbaa !29
  %t248 = load %"compiler/mir:Call", ptr %l133
  %t249 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t247, %"compiler/mir:Call" %t248)
  store i32 %t249, ptr %l134
  br label %bb51
bb51:
  %t250 = load i32, ptr %l134, !tbaa !23
  store i32 %t250, ptr %l18, !tbaa !23
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t253 = getelementptr %"compiler/typed:Call", ptr %t251, i32 0, i32 2
  %t254 = load i32, ptr %t253, !tbaa !23
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/lower:lowering", ptr %t255, i32 0, i32 39
  %t258 = load i32, ptr %t257, !tbaa !23
  %t261 = icmp eq i32 %t254, %t258
  br i1 %t261, label %bb52, label %bb53
bb52:
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Call", ptr %t263, i32 0, i32 2
  %t266 = load i32, ptr %t265, !tbaa !23
  %t268 = icmp sge i32 %t266, 0
  store i1 %t268, ptr %l140, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb54
bb54:
  %t270 = load i1, ptr %l140, !tbaa !21
  br i1 %t270, label %bb55, label %bb56
bb55:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load i32, ptr %l18, !tbaa !23
  %t273 = load { i64, [7 x i64] }, ptr %l6
  %t274 = load i32, ptr %l7, !tbaa !23
  %t275 = load %"compiler/mir:Range", ptr %l12
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkWalk(ptr %v0, ptr %t271, i32 %t272, { i64, [7 x i64] } %t273, i32 %t274, %"compiler/mir:Range" %t275)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load %"compiler/source:Span", ptr %l3
  %t283 = load i32, ptr %l18, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t284
  %t285 = getelementptr { i64, [8 x i64] }, ptr %t284, i32 0, i32 0
  store i64 4, ptr %t285
  %t287 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t282, 0
  %t289 = insertvalue { %"compiler/source:Span", i32 } %t287, i32 %t283, 1
  %t290 = getelementptr { i64, [8 x i64] }, ptr %t284, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t289, ptr %t290
  %t291 = load { i64, [8 x i64] }, ptr %t284
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t281, { i64, [8 x i64] } %t291)
  br label %bb59
bb59:
  %t294 = load i32, ptr %l17, !tbaa !23
  %t295 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t298 = icmp ne i32 %t294, %t295
  br i1 %t298, label %bb60, label %bb61
bb60:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load i32, ptr %l17, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t300, i32 %t301)
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t304 = load ptr, ptr %l0, !tbaa !29
  store ptr %t304, ptr %l158, !tbaa !29
  %t305 = load i32, ptr %l16, !tbaa !23
  %t307 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t305)
  store %"compiler/mir:Lvalue" %t307, ptr %l160
  br label %bb63
bb63:
  store { i64, [4 x i64] } zeroinitializer, ptr %t308
  %t309 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 0
  store i64 1, ptr %t309
  %t310 = load %"compiler/mir:Lvalue", ptr %l160
  %t311 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t310, 0
  %t312 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t311, ptr %t312
  %t313 = load { i64, [4 x i64] }, ptr %t308
  %t314 = load i32, ptr %l15, !tbaa !23
  %t315 = load %"compiler/source:Span", ptr %l3
  %t316 = load ptr, ptr %l158, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edispatch(ptr %v0, ptr %t316, { i64, [4 x i64] } %t313, i32 %t314, %"compiler/source:Span" %t315, i1 false)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t320, i32 %t321)
  br label %bb66
bb66:
  %t324 = load i32, ptr %l11, !tbaa !23
  %t325 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t328 = icmp eq i32 %t324, %t325
  br i1 %t328, label %bb67, label %bb68
bb67:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load %"compiler/source:Span", ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t332
  %t333 = getelementptr { i64, [4 x i64] }, ptr %t332, i32 0, i32 0
  store i64 0, ptr %t333
  %t334 = load { i64, [4 x i64] }, ptr %t332
  store { i64, [8 x i64] } zeroinitializer, ptr %t335
  %t336 = getelementptr { i64, [8 x i64] }, ptr %t335, i32 0, i32 0
  store i64 9, ptr %t336
  %t338 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t331, 0
  %t340 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t338, i32 3, 1
  %t342 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t340, { i64, [4 x i64] } %t334, 2
  %t343 = getelementptr { i64, [8 x i64] }, ptr %t335, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t342, ptr %t343
  %t344 = load { i64, [8 x i64] }, ptr %t335
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t330, { i64, [8 x i64] } %t344)
  br label %bb69
bb68:
  br label %bb70
bb69:
  store { i64, [4 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [4 x i64] }, ptr %t347, i32 0, i32 0
  store i64 0, ptr %t348
  %t349 = load { i64, [4 x i64] }, ptr %t347
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t349, ptr %rv
  br label %ret
bb70:
  %t351 = load i32, ptr %l14, !tbaa !23
  %t352 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t355 = icmp eq i32 %t351, %t352
  br i1 %t355, label %bb71, label %bb72
bb71:
  store { i64, [4 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 0
  store i64 0, ptr %t358
  %t359 = load { i64, [4 x i64] }, ptr %t357
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t359, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load ptr, ptr %l1, !tbaa !29
  %t363 = load i32, ptr %l2, !tbaa !23
  %t367 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCall(ptr %v0, ptr %v1, ptr %t361, ptr %t362, i32 %t363)
  store i1 %t367, ptr %l182
  br label %bb74
bb74:
  %t368 = load i1, ptr %l182, !tbaa !21
  br i1 %t368, label %bb75, label %bb76
bb75:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr %"compiler/lower:lowering", ptr %t369, i32 0, i32 0
  %t372 = load ptr, ptr %t371, !tbaa !29
  %t374 = getelementptr %"compiler/lower:Lowerer", ptr %t372, i32 0, i32 32
  %t375 = load i1, ptr %t374, !tbaa !21
  br i1 %t375, label %bb77, label %bb78
bb76:
  br label %bb121
bb77:
  store %olang.scope zeroinitializer, ptr %s13
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/lower:lowering", ptr %t377, i32 0, i32 0
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t382 = getelementptr %"compiler/lower:Lowerer", ptr %t380, i32 0, i32 33
  store ptr %t382, ptr %l188, !tbaa !29
  %t383 = ptrtoint ptr %v0 to i64
  store i64 %t383, ptr %l189, !tbaa !24
  %t384 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t384, label %bb79, label %bb80
bb78:
  br label %bb91
bb79:
  %t386 = call ptr @__olang_region_make(ptr %v0)
  %t387 = ptrtoint ptr %t386 to i64
  store i64 %t387, ptr %l189, !tbaa !24
  br label %bb80
bb80:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/lower:lowering", ptr %t388, i32 0, i32 0
  %t391 = load ptr, ptr %t390, !tbaa !29
  %t393 = getelementptr %"compiler/lower:Lowerer", ptr %t391, i32 0, i32 0
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t396 = getelementptr %"compiler/generic:Program", ptr %t394, i32 0, i32 0
  %t397 = load ptr, ptr %t396, !tbaa !29
  %t399 = getelementptr %"compiler/load:Loader", ptr %t397, i32 0, i32 4
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/lower:lowering", ptr %t401, i32 0, i32 7
  %t404 = load i64, ptr %t403, !tbaa !24
  %t405 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t406 = load i32, ptr %t405, !tbaa !23
  %t408 = sext i32 %t406 to i64
  %t412 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s13, ptr %t400, i64 %t404, i64 %t408)
  store { i64, ptr } %t412, ptr %l200
  br label %bb81
bb81:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/lower:lowering", ptr %t413, i32 0, i32 40
  %t416 = load ptr, ptr %l1, !tbaa !29
  %t418 = getelementptr %"compiler/typed:Call", ptr %t416, i32 0, i32 2
  %t419 = load i32, ptr %t418, !tbaa !23
  %t421 = sext i32 %t419 to i64
  %t424 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t415, i64 %t421)
  store i1 %t424, ptr %l206
  br label %bb82
bb82:
  %t425 = load i1, ptr %l206, !tbaa !21
  br i1 %t425, label %bb83, label %bb84
bb83:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l207, !tbaa !27
  br label %bb85
bb84:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l207, !tbaa !27
  br label %bb85
bb85:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load ptr, ptr %l1, !tbaa !29
  %t430 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableViews(ptr %v0, ptr %v1, ptr %t426, ptr %t427)
  store i1 %t430, ptr %l210
  br label %bb86
bb86:
  %t431 = load i1, ptr %l210, !tbaa !21
  br i1 %t431, label %bb87, label %bb88
bb87:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l211, !tbaa !27
  br label %bb89
bb88:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l211, !tbaa !27
  br label %bb89
bb89:
  %t432 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t432, 1
  %t434 = extractvalue { i64, ptr } %t432, 0
  %t435 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t436 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t437 = add i64 %t434, %t436
  %t438 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t438, 1
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t441 = add i64 %t437, %t440
  %t442 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t442, 1
  %t444 = extractvalue { i64, ptr } %t442, 0
  %t445 = add i64 %t441, %t444
  %t446 = load i64, ptr %l189
  %t447 = inttoptr i64 %t446 to ptr
  %t448 = call ptr @__olang_scope_alloc(ptr %t447, i64 %t445)
  call void @olang_textcopy(ptr %t448, ptr %t433, i64 %t434)
  %t449 = getelementptr i8, ptr %t448, i64 %t434
  call void @olang_textcopy(ptr %t449, ptr %t435, i64 %t436)
  %t450 = getelementptr i8, ptr %t449, i64 %t436
  call void @olang_textcopy(ptr %t450, ptr %t439, i64 %t440)
  %t451 = getelementptr i8, ptr %t450, i64 %t440
  call void @olang_textcopy(ptr %t451, ptr %t443, i64 %t444)
  %t452 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t448, 1
  %t455 = load i64, ptr %l189
  %t456 = inttoptr i64 %t455 to ptr
  %t457 = extractvalue { i64, ptr } %t453, 0
  %t458 = extractvalue { i64, ptr } %t453, 1
  %t459 = mul i64 %t457, 1
  %t460 = call ptr @__olang_scope_alloc(ptr %t456, i64 %t459)
  call void @llvm.memcpy.p0.p0.i64(ptr %t460, ptr %t458, i64 %t459, i1 false)
  %t461 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  %t463 = load ptr, ptr %l188, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t463, { i64, ptr } %t462)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s13)
  br label %bb91
bb91:
  %t465 = load ptr, ptr %l4, !tbaa !29
  %t466 = load i32, ptr %l2, !tbaa !23
  %t469 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %t465, i32 %t466)
  store i1 %t469, ptr %l216
  br label %bb92
bb92:
  %t470 = load i1, ptr %l216, !tbaa !21
  %t471 = xor i1 %t470, true
  br i1 %t471, label %bb93, label %bb94
bb93:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/lower:lowering", ptr %t473, i32 0, i32 52
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr %"compiler/typed:Call", ptr %t476, i32 0, i32 2
  %t479 = load i32, ptr %t478, !tbaa !23
  %t481 = sext i32 %t479 to i64
  %t484 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t475, i64 %t481)
  store i1 %t484, ptr %l224
  br label %bb95
bb94:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb104
bb95:
  %t485 = load i1, ptr %l224, !tbaa !21
  br i1 %t485, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l225, !tbaa !21
  br label %bb103
bb97:
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = getelementptr %"compiler/lower:lowering", ptr %t486, i32 0, i32 40
  %t489 = load ptr, ptr %l1, !tbaa !29
  %t491 = getelementptr %"compiler/typed:Call", ptr %t489, i32 0, i32 2
  %t492 = load i32, ptr %t491, !tbaa !23
  %t494 = sext i32 %t492 to i64
  %t497 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t488, i64 %t494)
  store i1 %t497, ptr %l231
  br label %bb98
bb98:
  %t498 = load i1, ptr %l231, !tbaa !21
  br i1 %t498, label %bb99, label %bb100
bb99:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load ptr, ptr %l1, !tbaa !29
  %t503 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableViews(ptr %v0, ptr %v1, ptr %t499, ptr %t500)
  store i1 %t503, ptr %l235
  br label %bb101
bb100:
  store i1 false, ptr %l232, !tbaa !21
  br label %bb102
bb101:
  %t504 = load i1, ptr %l235, !tbaa !21
  store i1 %t504, ptr %l232, !tbaa !21
  br label %bb102
bb102:
  %t505 = load i1, ptr %l232, !tbaa !21
  store i1 %t505, ptr %l225, !tbaa !21
  br label %bb103
bb103:
  %t506 = load i1, ptr %l225, !tbaa !21
  store i1 %t506, ptr %l218, !tbaa !21
  br label %bb104
bb104:
  %t507 = load i1, ptr %l218, !tbaa !21
  br i1 %t507, label %bb105, label %bb106
bb105:
  store i1 true, ptr %l237, !tbaa !21
  br label %bb108
bb106:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load ptr, ptr %l1, !tbaa !29
  %t514 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCtor(ptr %v0, ptr %v1, ptr %t510, ptr %t511)
  store i1 %t514, ptr %l240
  br label %bb107
bb107:
  %t515 = load i1, ptr %l240, !tbaa !21
  store i1 %t515, ptr %l237, !tbaa !21
  br label %bb108
bb108:
  %t516 = load i1, ptr %l237, !tbaa !21
  br i1 %t516, label %bb109, label %bb110
bb109:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t519 = getelementptr %"compiler/lower:lowering", ptr %t517, i32 0, i32 0
  %t520 = load ptr, ptr %t519, !tbaa !29
  store ptr %t520, ptr %l242, !tbaa !29
  %t521 = load ptr, ptr %l242, !tbaa !29
  %t522 = getelementptr %"compiler/lower:Lowerer", ptr %t521, i32 0, i32 23
  %t523 = load i64, ptr %t522, !tbaa !24
  %t525 = add i64 %t523, 1
  %t527 = load ptr, ptr %l242, !tbaa !29
  %t528 = getelementptr %"compiler/lower:Lowerer", ptr %t527, i32 0, i32 23
  store i64 %t525, ptr %t528, !tbaa !24
  br label %bb120
bb110:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t531 = getelementptr %"compiler/lower:lowering", ptr %t529, i32 0, i32 0
  %t532 = load ptr, ptr %t531, !tbaa !29
  store ptr %t532, ptr %l246, !tbaa !29
  %t533 = load ptr, ptr %l246, !tbaa !29
  %t534 = getelementptr %"compiler/lower:Lowerer", ptr %t533, i32 0, i32 24
  %t535 = load i64, ptr %t534, !tbaa !24
  %t537 = add i64 %t535, 1
  %t539 = load ptr, ptr %l246, !tbaa !29
  %t540 = getelementptr %"compiler/lower:Lowerer", ptr %t539, i32 0, i32 24
  store i64 %t537, ptr %t540, !tbaa !24
  %t541 = load ptr, ptr %l0, !tbaa !29
  store ptr %t541, ptr %l249, !tbaa !29
  %t542 = load ptr, ptr %l1, !tbaa !29
  %t544 = getelementptr %"compiler/typed:Call", ptr %t542, i32 0, i32 2
  %t545 = load i32, ptr %t544, !tbaa !23
  store i32 %t545, ptr %l251, !tbaa !23
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load i32, ptr %l7, !tbaa !23
  %t548 = load %"compiler/mir:Range", ptr %l12
  %t552 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultOf(ptr %v0, ptr %t546, i32 %t547, %"compiler/mir:Range" %t548)
  store { i64, [1 x i64] } %t552, ptr %l255
  br label %bb111
bb111:
  %t553 = load ptr, ptr %l249, !tbaa !29
  %t554 = load i32, ptr %l251, !tbaa !23
  %t555 = load { i64, [1 x i64] }, ptr %l255
  %t556 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopyAt(ptr %v0, ptr %t553, i32 %t554, { i64, [1 x i64] } %t555)
  store { i64, [1 x i64] } %t556, ptr %l256
  br label %bb112
bb112:
  %t557 = load { i64, [1 x i64] }, ptr %l256
  store { i64, [1 x i64] } %t557, ptr %l20
  %t558 = load ptr, ptr %l0, !tbaa !29
  store ptr %t558, ptr %l257, !tbaa !29
  %t559 = load ptr, ptr %l1, !tbaa !29
  %t561 = getelementptr %"compiler/typed:Call", ptr %t559, i32 0, i32 2
  %t562 = load i32, ptr %t561, !tbaa !23
  %t564 = sext i32 %t562 to i64
  store i64 %t564, ptr %l260, !tbaa !24
  %t565 = load i32, ptr %l14, !tbaa !23
  %t567 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t565)
  store %"compiler/mir:Lvalue" %t567, ptr %l262
  br label %bb113
bb113:
  store { i64, [4 x i64] } zeroinitializer, ptr %t568
  %t569 = getelementptr { i64, [4 x i64] }, ptr %t568, i32 0, i32 0
  store i64 1, ptr %t569
  %t570 = load %"compiler/mir:Lvalue", ptr %l262
  %t571 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t570, 0
  %t572 = getelementptr { i64, [4 x i64] }, ptr %t568, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t571, ptr %t572
  %t573 = load { i64, [4 x i64] }, ptr %t568
  %t574 = load i32, ptr %l2, !tbaa !23
  %t575 = load { i64, [1 x i64] }, ptr %l20
  %t576 = load %"compiler/source:Span", ptr %l3
  %t577 = load ptr, ptr %l257, !tbaa !29
  %t578 = load i64, ptr %l260, !tbaa !24
  %t583 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esplitCopy(ptr %v0, ptr %t577, i64 %t578, { i64, [4 x i64] } %t573, i32 %t574, { i64, [1 x i64] } %t575, %"compiler/source:Span" %t576)
  store { i64, [4 x i64] } %t583, ptr %l267
  br label %bb114
bb114:
  %t584 = load { i64, [4 x i64] }, ptr %l267
  store { i64, [4 x i64] } %t584, ptr %l21
  %t585 = load { i64, [4 x i64] }, ptr %l21
  %t587 = extractvalue { i64, [4 x i64] } %t585, 0
  %t588 = icmp eq i64 %t587, 0
  %t590 = xor i1 %t588, true
  br i1 %t590, label %bb115, label %bb116
bb115:
  %t592 = load { i64, [4 x i64] }, ptr %l21
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t592, ptr %rv
  br label %ret
bb116:
  br label %bb117
bb117:
  %t594 = load ptr, ptr %l0, !tbaa !29
  store ptr %t594, ptr %l272, !tbaa !29
  %t595 = load i32, ptr %l14, !tbaa !23
  %t597 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t595)
  store %"compiler/mir:Lvalue" %t597, ptr %l274
  br label %bb118
bb118:
  store { i64, [4 x i64] } zeroinitializer, ptr %t598
  %t599 = getelementptr { i64, [4 x i64] }, ptr %t598, i32 0, i32 0
  store i64 1, ptr %t599
  %t600 = load %"compiler/mir:Lvalue", ptr %l274
  %t601 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t600, 0
  %t602 = getelementptr { i64, [4 x i64] }, ptr %t598, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t601, ptr %t602
  %t603 = load { i64, [4 x i64] }, ptr %t598
  %t604 = load i32, ptr %l2, !tbaa !23
  %t605 = load %"compiler/source:Span", ptr %l3
  %t606 = load { i64, [1 x i64] }, ptr %l20
  %t607 = load ptr, ptr %l272, !tbaa !29
  %t612 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t607, { i64, [4 x i64] } %t603, i32 %t604, %"compiler/source:Span" %t605, { i64, [1 x i64] } %t606, i1 true)
  store { i64, [4 x i64] } %t612, ptr %l279
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s0)
  %t613 = load { i64, [4 x i64] }, ptr %l279
  store { i64, [4 x i64] } %t613, ptr %rv
  br label %ret
bb120:
  br label %bb121
bb121:
  %t614 = load i32, ptr %l14, !tbaa !23
  %t616 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t614)
  store %"compiler/mir:Lvalue" %t616, ptr %l281
  br label %bb122
bb122:
  store { i64, [4 x i64] } zeroinitializer, ptr %t617
  %t618 = getelementptr { i64, [4 x i64] }, ptr %t617, i32 0, i32 0
  store i64 1, ptr %t618
  %t619 = load %"compiler/mir:Lvalue", ptr %l281
  %t620 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t619, 0
  %t621 = getelementptr { i64, [4 x i64] }, ptr %t617, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t620, ptr %t621
  %t622 = load { i64, [4 x i64] }, ptr %t617
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t622, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2ecapScopes(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l7 = alloca i1
  %l10 = alloca i1
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, [2 x i64] }
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l34 = alloca { i64, [2 x i64] }
  %l35 = alloca { i64, [1 x i64] }
  %l39 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l42 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 24
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = icmp slt i32 %t8, 0
  store i1 %t10, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l7, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t13 = load i32, ptr %l1, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 30
  %t19 = getelementptr %"compiler/typed:Plan", ptr %t18, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp sge i64 %t15, %t22
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l10, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/mir:Range" %t28, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l18
  br label %bb10
bb10:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lower:lowering", ptr %t32, i32 0, i32 30
  %t35 = load i32, ptr %l1, !tbaa !23
  %t36 = load i64, ptr %l3, !tbaa !24
  %t40 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t34, i32 %t35, i64 %t36)
  store { i64, [2 x i64] } %t40, ptr %l23
  br label %bb12
bb12:
  %t41 = load { i64, [2 x i64] }, ptr %l23
  %t43 = extractvalue { i64, [2 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 0
  %t46 = xor i1 %t44, true
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  store ptr %l2, ptr %l28, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lower:lowering", ptr %t51, i32 0, i32 30
  %t54 = load i32, ptr %l1, !tbaa !23
  %t55 = load i64, ptr %l3, !tbaa !24
  %t59 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t53, i32 %t54, i64 %t55)
  store { i64, [2 x i64] } %t59, ptr %l34
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l29, !tbaa !29
  %t61 = load { i64, [2 x i64] }, ptr %l34
  %t62 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t60, { i64, [2 x i64] } %t61)
  store { i64, [1 x i64] } %t62, ptr %l35
  br label %bb17
bb17:
  %t63 = load ptr, ptr %l28, !tbaa !29
  %t64 = load { i64, [1 x i64] }, ptr %l35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ePush_3ccompiler_2fmir_3aScopeRef_3e(ptr %s0, ptr %t63, { i64, [1 x i64] } %t64)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l3, !tbaa !24
  br label %bb11
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lower:lowering", ptr %t69, i32 0, i32 3
  store ptr %t71, ptr %l39, !tbaa !29
  %t73 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eToArray_3ccompiler_2fmir_3aScopeRef_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t73, ptr %l41
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l39, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t76 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t74, { i64, ptr } %t75)
  store %"compiler/mir:Range" %t76, ptr %l42
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t77 = load %"compiler/mir:Range", ptr %l42
  store %"compiler/mir:Range" %t77, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t11 = load i32, ptr %l6, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %v1, ptr %t10, i32 %t11)
  store { i64, ptr } %t12, ptr %l7
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l1, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 10
  %t12 = load i1, ptr %t11, !tbaa !21
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eexitLevel(ptr %v0, ptr %t16, i64 %t17)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epopLevel(ptr %v0, ptr %t20)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econd(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca { i64, [4 x i64] }
  %l15 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i32
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca { i64, [4 x i64] }
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l61 = alloca %"compiler/mir:Lvalue"
  %l71 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t16 = alloca { i64, [4 x i64] }, align 8
  %t44 = alloca { i64, [8 x i64] }, align 8
  %t77 = alloca { i64, [15 x i64] }, align 8
  %t83 = alloca { i64, [21 x i64] }, align 8
  %t120 = alloca { i64, [15 x i64] }, align 8
  %t126 = alloca { i64, [21 x i64] }, align 8
  %t150 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Cond", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store { i64, [4 x i64] } %t9, ptr %l15
  br label %bb1
bb1:
  %t10 = load { i64, [4 x i64] }, ptr %l15
  store { i64, [4 x i64] } %t10, ptr %l4
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 10
  %t14 = load i1, ptr %t13, !tbaa !21
  br i1 %t14, label %bb2, label %bb3
bb2:
  store { i64, [4 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 0
  store i64 0, ptr %t17
  %t18 = load { i64, [4 x i64] }, ptr %t16
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l3
  %t26 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t20, i32 %a2, %"compiler/source:Span" %t22)
  store i32 %t26, ptr %l22
  br label %bb5
bb5:
  %t27 = load i32, ptr %l22, !tbaa !23
  store i32 %t27, ptr %l5, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 3
  %t32 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t30)
  store i32 %t32, ptr %l25
  br label %bb6
bb6:
  %t33 = load i32, ptr %l25, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 3
  %t38 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t36)
  store i32 %t38, ptr %l28
  br label %bb7
bb7:
  %t39 = load i32, ptr %l28, !tbaa !23
  store i32 %t39, ptr %l7, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load { i64, [4 x i64] }, ptr %l4
  %t42 = load i32, ptr %l6, !tbaa !23
  %t43 = load i32, ptr %l7, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [8 x i64] }, ptr %t44, i32 0, i32 0
  store i64 2, ptr %t45
  %t47 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t41, 0
  %t49 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t47, i32 %t42, 1
  %t51 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t49, i32 %t43, 2
  %t52 = getelementptr { i64, [8 x i64] }, ptr %t44, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t51, ptr %t52
  %t53 = load { i64, [8 x i64] }, ptr %t44
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t40, { i64, [8 x i64] } %t53)
  br label %bb8
bb8:
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l34
  br label %bb9
bb9:
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l8
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t58, i32 %t59)
  br label %bb10
bb10:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Cond", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t69 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t62, ptr %t66)
  store { i64, [4 x i64] } %t69, ptr %l40
  br label %bb11
bb11:
  %t70 = load { i64, [4 x i64] }, ptr %l40
  store { i64, [4 x i64] } %t70, ptr %l9
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l41, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t72, ptr %l42
  %t73 = load i32, ptr %l5, !tbaa !23
  %t75 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t73)
  store %"compiler/mir:Lvalue" %t75, ptr %l44
  br label %bb12
bb12:
  %t76 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [15 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [15 x i64] }, ptr %t77, i32 0, i32 0
  store i64 0, ptr %t78
  %t80 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t76, 0
  %t81 = getelementptr { i64, [15 x i64] }, ptr %t77, i32 0, i32 1
  store { { i64, [4 x i64] } } %t80, ptr %t81
  %t82 = load { i64, [15 x i64] }, ptr %t77
  store { i64, [21 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [21 x i64] }, ptr %t83, i32 0, i32 0
  store i64 0, ptr %t84
  %t85 = load %"compiler/source:Span", ptr %l42
  %t86 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t85, 0
  %t87 = load %"compiler/mir:Lvalue", ptr %l44
  %t88 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t86, %"compiler/mir:Lvalue" %t87, 1
  %t90 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t88, { i64, [15 x i64] } %t82, 2
  %t91 = getelementptr { i64, [21 x i64] }, ptr %t83, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t90, ptr %t91
  %t92 = load { i64, [21 x i64] }, ptr %t83
  %t94 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t92, ptr %t94
  %t95 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t95, ptr %t94)
  br label %bb13
bb13:
  %t97 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t97, ptr %l8)
  br label %bb14
bb14:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t100, i32 %t101)
  br label %bb15
bb15:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Cond", ptr %t105, i32 0, i32 2
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t112 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t104, ptr %t108)
  store { i64, [4 x i64] } %t112, ptr %l57
  br label %bb16
bb16:
  %t113 = load { i64, [4 x i64] }, ptr %l57
  store { i64, [4 x i64] } %t113, ptr %l10
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l58, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t115, ptr %l59
  %t116 = load i32, ptr %l5, !tbaa !23
  %t118 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t116)
  store %"compiler/mir:Lvalue" %t118, ptr %l61
  br label %bb17
bb17:
  %t119 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [15 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [15 x i64] }, ptr %t120, i32 0, i32 0
  store i64 0, ptr %t121
  %t123 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t119, 0
  %t124 = getelementptr { i64, [15 x i64] }, ptr %t120, i32 0, i32 1
  store { { i64, [4 x i64] } } %t123, ptr %t124
  %t125 = load { i64, [15 x i64] }, ptr %t120
  store { i64, [21 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [21 x i64] }, ptr %t126, i32 0, i32 0
  store i64 0, ptr %t127
  %t128 = load %"compiler/source:Span", ptr %l59
  %t129 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t128, 0
  %t130 = load %"compiler/mir:Lvalue", ptr %l61
  %t131 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t129, %"compiler/mir:Lvalue" %t130, 1
  %t133 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t131, { i64, [15 x i64] } %t125, 2
  %t134 = getelementptr { i64, [21 x i64] }, ptr %t126, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t133, ptr %t134
  %t135 = load { i64, [21 x i64] }, ptr %t126
  %t137 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t135, ptr %t137
  %t138 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t138, ptr %t137)
  br label %bb18
bb18:
  %t140 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t140, ptr %l8)
  br label %bb19
bb19:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t143, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144)
  br label %bb20
bb20:
  %t147 = load i32, ptr %l5, !tbaa !23
  %t149 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t147)
  store %"compiler/mir:Lvalue" %t149, ptr %l71
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 0
  store i64 1, ptr %t151
  %t152 = load %"compiler/mir:Lvalue", ptr %l71
  %t153 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t152, 0
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t153, ptr %t154
  %t155 = load { i64, [4 x i64] }, ptr %t150
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t155, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %a0, i1 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca i64
  %rv = alloca { i64, [4 x i64] }
  %t4 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1, ptr %l3, !tbaa !23
  br i1 %a1, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  store { i64, [4 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [4 x i64] }, ptr %t4, i32 0, i32 0
  store i64 2, ptr %t5
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = insertvalue { i32, i64 } undef, i32 %t6, 0
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = insertvalue { i32, i64 } %t7, i64 %t8, 1
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t4, i32 0, i32 1
  store { i32, i64 } %t9, ptr %t10
  %t11 = load { i64, [4 x i64] }, ptr %t4
  store { i64, [4 x i64] } %t11, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedAssign(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca %"compiler/mir:Lvalue"
  %l9 = alloca i32
  %l10 = alloca %"compiler/mir:Lvalue"
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca i64
  %l26 = alloca i1
  %l33 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i64
  %l44 = alloca i1
  %l49 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca %"compiler/mir:Lvalue"
  %l58 = alloca i32
  %l59 = alloca i1
  %l67 = alloca i32
  %l70 = alloca i1
  %l75 = alloca { i64, [15 x i64] }
  %l77 = alloca i1
  %l80 = alloca i1
  %l82 = alloca i64
  %l85 = alloca i64
  %l92 = alloca i32
  %l94 = alloca ptr
  %l96 = alloca i32
  %l97 = alloca %"compiler/source:Span"
  %l99 = alloca %"compiler/mir:Lvalue"
  %l103 = alloca { i64, [21 x i64] }
  %l112 = alloca { i64, [21 x i64] }
  %l119 = alloca ptr
  %l120 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca i32
  %l125 = alloca i32
  %l126 = alloca i1
  %l127 = alloca ptr
  %l131 = alloca %"compiler/mir:Lvalue"
  %l138 = alloca i1
  %l148 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca ptr
  %l156 = alloca i32
  %l157 = alloca i32
  %l158 = alloca i1
  %l166 = alloca { i64, [21 x i64] }
  %l172 = alloca i1
  %l183 = alloca ptr
  %l185 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i1
  %t172 = alloca { i64, [4 x i64] }, align 8
  %t178 = alloca { i64, [15 x i64] }, align 8
  %t184 = alloca { i64, [21 x i64] }, align 8
  %t207 = alloca { i64, [21 x i64] }, align 8
  %t253 = alloca { i64, [1 x i64] }, align 8
  %t336 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load { i64, [15 x i64] }, ptr %l3
  %t8 = extractvalue { i64, [15 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t12 = getelementptr { { i64, [4 x i64] } }, ptr %t11, i32 0, i32 0
  %t13 = load { i64, [4 x i64] }, ptr %t12
  %t15 = extractvalue { i64, [4 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  store i1 %t16, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l26, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t19 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t20 = getelementptr { { i64, [4 x i64] } }, ptr %t19, i32 0, i32 0
  %t21 = load { i64, [4 x i64] }, ptr %t20
  store { i64, [4 x i64] } %t21, ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t24 = load { i64, [15 x i64] }, ptr %l3
  %t26 = extractvalue { i64, [15 x i64] } %t24, 0
  %t27 = icmp eq i64 %t26, 1
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t30 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t29, i32 0, i32 0
  %t31 = load %"compiler/mir:Lvalue", ptr %t30
  store %"compiler/mir:Lvalue" %t31, ptr %l6
  %t33 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t34 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34
  %t37 = load ptr, ptr %l4, !tbaa !29
  store ptr %t37, ptr %l36, !tbaa !29
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t38, i32 %t35)
  store i32 %t42, ptr %l39
  br label %bb9
bb8:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb11
bb9:
  %t43 = load ptr, ptr %l36, !tbaa !29
  %t44 = load i32, ptr %l39, !tbaa !23
  %t45 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t43, i32 %t44)
  store i64 %t45, ptr %l40
  br label %bb10
bb10:
  %t46 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t47 = load i64, ptr %l40, !tbaa !24
  %t49 = and i64 %t47, %t46
  %t51 = icmp ne i64 %t49, 0
  store i1 %t51, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l33, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t55 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t54, i32 0, i32 0
  %t56 = load %"compiler/mir:Lvalue", ptr %t55
  %t58 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t59 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t58, i32 0, i32 1
  %t60 = load i32, ptr %t59
  store i32 %t60, ptr %l9, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etempPart(ptr %v0, ptr %t62, %"compiler/mir:Lvalue" %t56)
  store i1 %t66, ptr %l49
  br label %bb14
bb13:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb15
bb14:
  %t67 = load i1, ptr %l49, !tbaa !21
  store i1 %t67, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t68 = load i1, ptr %l44, !tbaa !21
  br i1 %t68, label %bb16, label %bb17
bb16:
  %t69 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t70 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t69, i32 0, i32 0
  %t71 = load %"compiler/mir:Lvalue", ptr %t70
  store %"compiler/mir:Lvalue" %t71, ptr %l10
  %t73 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t74 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l11, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l52, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load %"compiler/mir:Lvalue", ptr %l10
  %t80 = load %"compiler/mir:Lvalue", ptr %l10
  store %"compiler/mir:Lvalue" %t80, ptr %l55
  %t81 = getelementptr %"compiler/mir:Lvalue", ptr %l55, i32 0, i32 1
  %t82 = getelementptr %"compiler/mir:Range", ptr %t81, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = sext i32 %t83 to i64
  %t89 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %t78, %"compiler/mir:Lvalue" %t79, i64 %t85)
  store i32 %t89, ptr %l58
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t90 = load ptr, ptr %l52, !tbaa !29
  %t91 = load i32, ptr %l58, !tbaa !23
  %t92 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t92, ptr %l59
  br label %bb19
bb19:
  %t93 = load i1, ptr %l59, !tbaa !21
  br i1 %t93, label %bb20, label %bb21
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load %"compiler/mir:Lvalue", ptr %l10
  %t96 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t94, %"compiler/mir:Lvalue" %t95, i64 1, %"compiler/source:Span" %t96)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load %"compiler/mir:Lvalue", ptr %l2
  %t102 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t103 = getelementptr %"compiler/mir:Range", ptr %t102, i32 0, i32 1
  %t104 = load i32, ptr %t103, !tbaa !23
  %t106 = sext i32 %t104 to i64
  %t110 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %t100, %"compiler/mir:Lvalue" %t101, i64 %t106)
  store i32 %t110, ptr %l67
  br label %bb25
bb25:
  %t111 = load i32, ptr %l67, !tbaa !23
  store i32 %t111, ptr %l12, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load %"compiler/mir:Lvalue", ptr %l2
  %t116 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eweakPlace(ptr %v0, ptr %t112, %"compiler/mir:Lvalue" %t113)
  store i1 %t116, ptr %l70
  br label %bb26
bb26:
  %t117 = load i1, ptr %l70, !tbaa !21
  store i1 %t117, ptr %l13, !tbaa !21
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load { i64, [15 x i64] }, ptr %l3
  %t120 = load i1, ptr %l13, !tbaa !21
  %t121 = load %"compiler/source:Span", ptr %l1
  %t126 = call { i64, [15 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eweakWords(ptr %v0, ptr %t118, { i64, [15 x i64] } %t119, i1 %t120, %"compiler/source:Span" %t121)
  store { i64, [15 x i64] } %t126, ptr %l75
  br label %bb27
bb27:
  %t127 = load { i64, [15 x i64] }, ptr %l75
  store { i64, [15 x i64] } %t127, ptr %l3
  %t128 = load i1, ptr %l13, !tbaa !21
  br i1 %t128, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb31
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l12, !tbaa !23
  %t134 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t130, i32 %t131)
  store i1 %t134, ptr %l80
  br label %bb30
bb30:
  %t135 = load i1, ptr %l80, !tbaa !21
  %t136 = xor i1 %t135, true
  store i1 %t136, ptr %l77, !tbaa !21
  br label %bb31
bb31:
  %t138 = load i1, ptr %l77, !tbaa !21
  br i1 %t138, label %bb32, label %bb33
bb32:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb35
bb33:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load %"compiler/mir:Lvalue", ptr %l2
  %t143 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceCount(ptr %v0, ptr %t139, %"compiler/mir:Lvalue" %t140)
  store i64 %t143, ptr %l85
  br label %bb34
bb34:
  %t144 = load i64, ptr %l85, !tbaa !24
  store i64 %t144, ptr %l82, !tbaa !24
  br label %bb35
bb35:
  %t145 = load i64, ptr %l82, !tbaa !24
  store i64 %t145, ptr %l14, !tbaa !24
  %t146 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t146, ptr %l15, !tbaa !23
  %t148 = load i64, ptr %l14, !tbaa !24
  %t150 = icmp eq i64 %t148, 2
  br i1 %t150, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s4
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l12, !tbaa !23
  %t154 = load %"compiler/source:Span", ptr %l1
  %t158 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t152, i32 %t153, %"compiler/source:Span" %t154)
  store i32 %t158, ptr %l92
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t159 = load i32, ptr %l92, !tbaa !23
  store i32 %t159, ptr %l15, !tbaa !23
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lower:lowering", ptr %t160, i32 0, i32 3
  store ptr %t162, ptr %l94, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/lower:lowering", ptr %t163, i32 0, i32 9
  %t166 = load i32, ptr %t165, !tbaa !23
  store i32 %t166, ptr %l96, !tbaa !23
  %t167 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t167, ptr %l97
  %t168 = load i32, ptr %l15, !tbaa !23
  %t170 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t168)
  store %"compiler/mir:Lvalue" %t170, ptr %l99
  br label %bb39
bb39:
  %t171 = load %"compiler/mir:Lvalue", ptr %l2
  store { i64, [4 x i64] } zeroinitializer, ptr %t172
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 0
  store i64 1, ptr %t173
  %t175 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t171, 0
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t175, ptr %t176
  %t177 = load { i64, [4 x i64] }, ptr %t172
  store { i64, [15 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [15 x i64] }, ptr %t178, i32 0, i32 0
  store i64 0, ptr %t179
  %t181 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t177, 0
  %t182 = getelementptr { i64, [15 x i64] }, ptr %t178, i32 0, i32 1
  store { { i64, [4 x i64] } } %t181, ptr %t182
  %t183 = load { i64, [15 x i64] }, ptr %t178
  store { i64, [21 x i64] } zeroinitializer, ptr %t184
  %t185 = getelementptr { i64, [21 x i64] }, ptr %t184, i32 0, i32 0
  store i64 0, ptr %t185
  %t186 = load %"compiler/source:Span", ptr %l97
  %t187 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t186, 0
  %t188 = load %"compiler/mir:Lvalue", ptr %l99
  %t189 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t187, %"compiler/mir:Lvalue" %t188, 1
  %t191 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t189, { i64, [15 x i64] } %t183, 2
  %t192 = getelementptr { i64, [21 x i64] }, ptr %t184, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t191, ptr %t192
  %t193 = load { i64, [21 x i64] }, ptr %t184
  store { i64, [21 x i64] } %t193, ptr %l103
  %t194 = load ptr, ptr %l94, !tbaa !29
  %t195 = load i32, ptr %l96, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s4, ptr %t194, i32 %t195, ptr %l103)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb41:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/lower:lowering", ptr %t197, i32 0, i32 3
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/lower:lowering", ptr %t200, i32 0, i32 9
  %t203 = load i32, ptr %t202, !tbaa !23
  %t204 = load %"compiler/source:Span", ptr %l1
  %t205 = load %"compiler/mir:Lvalue", ptr %l2
  %t206 = load { i64, [15 x i64] }, ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [21 x i64] }, ptr %t207, i32 0, i32 0
  store i64 0, ptr %t208
  %t210 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t204, 0
  %t212 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t210, %"compiler/mir:Lvalue" %t205, 1
  %t214 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t212, { i64, [15 x i64] } %t206, 2
  %t215 = getelementptr { i64, [21 x i64] }, ptr %t207, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t214, ptr %t215
  %t216 = load { i64, [21 x i64] }, ptr %t207
  store { i64, [21 x i64] } %t216, ptr %l112
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s0, ptr %t199, i32 %t203, ptr %l112)
  br label %bb42
bb42:
  %t220 = load { i64, [15 x i64] }, ptr %l3
  %t222 = extractvalue { i64, [15 x i64] } %t220, 0
  %t223 = icmp eq i64 %t222, 7
  br i1 %t223, label %bb43, label %bb44
bb43:
  %t225 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t226 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t225, i32 0, i32 2
  %t227 = load i32, ptr %t226
  store i32 %t227, ptr %l16, !tbaa !23
  br label %bb45
bb44:
  br label %bb55
bb45:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/lower:lowering", ptr %t229, i32 0, i32 0
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t234 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t232)
  store ptr %t234, ptr %l119
  br label %bb46
bb46:
  %t235 = load ptr, ptr %l4, !tbaa !29
  store ptr %t235, ptr %l120, !tbaa !29
  %t236 = load ptr, ptr %l4, !tbaa !29
  store ptr %t236, ptr %l121, !tbaa !29
  %t237 = load ptr, ptr %l4, !tbaa !29
  %t238 = load i32, ptr %l16, !tbaa !23
  %t241 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t237, i32 %t238)
  store i32 %t241, ptr %l124
  br label %bb47
bb47:
  %t242 = load ptr, ptr %l121, !tbaa !29
  %t243 = load i32, ptr %l124, !tbaa !23
  %t244 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t242, i32 %t243)
  store i32 %t244, ptr %l125
  br label %bb48
bb48:
  %t245 = load ptr, ptr %l119, !tbaa !29
  %t246 = load ptr, ptr %l120, !tbaa !29
  %t247 = load i32, ptr %l125, !tbaa !23
  %t248 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t245, ptr %t246, i32 %t247)
  store i1 %t248, ptr %l126
  br label %bb49
bb49:
  %t249 = load i1, ptr %l126, !tbaa !21
  br i1 %t249, label %bb50, label %bb51
bb50:
  %t250 = load ptr, ptr %l0, !tbaa !29
  store ptr %t250, ptr %l127, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load %"compiler/mir:Lvalue", ptr %l2
  store { i64, [1 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [1 x i64] }, ptr %t253, i32 0, i32 0
  store i64 3, ptr %t254
  %t255 = load { i64, [1 x i64] }, ptr %t253
  %t259 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %v0, ptr %t251, %"compiler/mir:Lvalue" %t252, { i64, [1 x i64] } %t255)
  store %"compiler/mir:Lvalue" %t259, ptr %l131
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t260 = load %"compiler/source:Span", ptr %l1
  %t261 = load ptr, ptr %l127, !tbaa !29
  %t262 = load %"compiler/mir:Lvalue", ptr %l131
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t261, %"compiler/mir:Lvalue" %t262, i64 1, %"compiler/source:Span" %t260)
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb97
bb55:
  %t264 = load { i64, [15 x i64] }, ptr %l3
  %t266 = extractvalue { i64, [15 x i64] } %t264, 0
  %t267 = icmp eq i64 %t266, 8
  br i1 %t267, label %bb56, label %bb57
bb56:
  %t269 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t270 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t269, i32 0, i32 1
  %t271 = load i32, ptr %t270
  store i32 %t271, ptr %l17, !tbaa !23
  %t273 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t274 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t273, i32 0, i32 2
  %t275 = load { i64, [4 x i64] }, ptr %t274
  store { i64, [4 x i64] } %t275, ptr %l18
  %t277 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t278 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t277, i32 0, i32 3
  %t279 = load { i64, [4 x i64] }, ptr %t278
  store { i64, [4 x i64] } %t279, ptr %l19
  br label %bb58
bb57:
  br label %bb83
bb58:
  %t281 = load { i64, [4 x i64] }, ptr %l19
  %t283 = extractvalue { i64, [4 x i64] } %t281, 0
  %t284 = icmp eq i64 %t283, 0
  br i1 %t284, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb71
bb62:
  %t286 = load { i64, [4 x i64] }, ptr %l19
  %t288 = extractvalue { i64, [4 x i64] } %t286, 0
  %t289 = icmp eq i64 %t288, 2
  br i1 %t289, label %bb63, label %bb64
bb63:
  %t291 = getelementptr { i64, [4 x i64] }, ptr %l19, i32 0, i32 1
  %t292 = getelementptr { i32, i64 }, ptr %t291, i32 0, i32 1
  %t293 = load i64, ptr %t292
  store i64 %t293, ptr %l20, !tbaa !24
  br label %bb65
bb64:
  br label %bb66
bb65:
  %t295 = load i64, ptr %l20, !tbaa !24
  %t297 = icmp eq i64 %t295, 0
  store i1 %t297, ptr %l138, !tbaa !21
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_7d7e09e3133bfc76_19fb63494a2c5cc2)
  unreachable
bb71:
  %t299 = load i1, ptr %l138, !tbaa !21
  %t302 = xor i1 %t299, true
  br i1 %t302, label %bb72, label %bb73
bb72:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/lower:lowering", ptr %t304, i32 0, i32 0
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t309 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t307)
  store ptr %t309, ptr %l151
  br label %bb74
bb73:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb78
bb74:
  %t310 = load ptr, ptr %l4, !tbaa !29
  store ptr %t310, ptr %l152, !tbaa !29
  %t311 = load ptr, ptr %l4, !tbaa !29
  store ptr %t311, ptr %l153, !tbaa !29
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i32, ptr %l17, !tbaa !23
  %t316 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t312, i32 %t313)
  store i32 %t316, ptr %l156
  br label %bb75
bb75:
  %t317 = load ptr, ptr %l153, !tbaa !29
  %t318 = load i32, ptr %l156, !tbaa !23
  %t319 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t317, i32 %t318)
  store i32 %t319, ptr %l157
  br label %bb76
bb76:
  %t320 = load ptr, ptr %l151, !tbaa !29
  %t321 = load ptr, ptr %l152, !tbaa !29
  %t322 = load i32, ptr %l157, !tbaa !23
  %t323 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t320, ptr %t321, i32 %t322)
  store i1 %t323, ptr %l158
  br label %bb77
bb77:
  %t324 = load i1, ptr %l158, !tbaa !21
  store i1 %t324, ptr %l148, !tbaa !21
  br label %bb78
bb78:
  %t325 = load i1, ptr %l148, !tbaa !21
  br i1 %t325, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s11
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/lower:lowering", ptr %t326, i32 0, i32 3
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/lower:lowering", ptr %t329, i32 0, i32 9
  %t332 = load i32, ptr %t331, !tbaa !23
  %t333 = load %"compiler/source:Span", ptr %l1
  %t334 = load { i64, [4 x i64] }, ptr %l19
  %t335 = load { i64, [4 x i64] }, ptr %l18
  store { i64, [21 x i64] } zeroinitializer, ptr %t336
  %t337 = getelementptr { i64, [21 x i64] }, ptr %t336, i32 0, i32 0
  store i64 14, ptr %t337
  %t339 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t333, 0
  %t341 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } %t339, { i64, [4 x i64] } %t334, 1
  %t343 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } %t341, { i64, [4 x i64] } %t335, 2
  %t344 = getelementptr { i64, [21 x i64] }, ptr %t336, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } %t343, ptr %t344
  %t345 = load { i64, [21 x i64] }, ptr %t336
  store { i64, [21 x i64] } %t345, ptr %l166
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s11, ptr %t328, i32 %t332, ptr %l166)
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_scope_close(ptr %s11)
  br label %bb82
bb82:
  br label %bb97
bb83:
  %t349 = load { i64, [15 x i64] }, ptr %l3
  %t351 = extractvalue { i64, [15 x i64] } %t349, 0
  %t352 = icmp eq i64 %t351, 2
  br i1 %t352, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb92
bb86:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load i32, ptr %l12, !tbaa !23
  %t358 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t354, i32 %t355)
  store i1 %t358, ptr %l172
  br label %bb87
bb87:
  %t359 = load i1, ptr %l172, !tbaa !21
  br i1 %t359, label %bb88, label %bb89
bb88:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load %"compiler/mir:Lvalue", ptr %l2
  %t362 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t360, %"compiler/mir:Lvalue" %t361, i64 -1, %"compiler/source:Span" %t362)
  br label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb91
bb91:
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
  call void @__olang_check_failed(ptr @olang_loc_65f5685c41a0f517_55f8096515dca443)
  unreachable
bb97:
  %t366 = load i64, ptr %l14, !tbaa !24
  %t368 = icmp sge i64 %t366, 1
  br i1 %t368, label %bb98, label %bb99
bb98:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/mir:Lvalue", ptr %l2
  %t372 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t370, %"compiler/mir:Lvalue" %t371, i64 1, %"compiler/source:Span" %t372)
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  %t376 = load i64, ptr %l14, !tbaa !24
  %t378 = icmp eq i64 %t376, 2
  br i1 %t378, label %bb102, label %bb103
bb102:
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l183, !tbaa !29
  %t381 = load i32, ptr %l15, !tbaa !23
  %t383 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t381)
  store %"compiler/mir:Lvalue" %t383, ptr %l185
  br label %bb104
bb103:
  br label %bb106
bb104:
  %t384 = load %"compiler/source:Span", ptr %l1
  %t385 = load ptr, ptr %l183, !tbaa !29
  %t386 = load %"compiler/mir:Lvalue", ptr %l185
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t385, %"compiler/mir:Lvalue" %t386, i64 -1, %"compiler/source:Span" %t384)
  br label %bb105
bb105:
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l16 = alloca %"compiler/mir:Lvalue"
  %l18 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i32
  %l39 = alloca %"compiler/mir:Lvalue"
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, [4 x i64] }
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/mir:Lvalue"
  %l58 = alloca i32
  %l59 = alloca i32
  %l61 = alloca ptr
  %l63 = alloca %"compiler/mir:Lvalue"
  %l64 = alloca { i64, [4 x i64] }
  %l66 = alloca { i64, [4 x i64] }
  %l67 = alloca { i64, ptr }
  %l68 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %t17 = alloca { i64, [15 x i64] }, align 8
  %t23 = alloca { i64, [21 x i64] }, align 8
  %t68 = alloca { i64, [4 x i64] }, align 8
  %t99 = alloca { i64, [8 x i64] }, align 8
  %t133 = alloca { i64, [4 x i64] }, align 8
  %t157 = alloca { i64, [15 x i64] }, align 8
  %t167 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l2
  %t7 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store i32 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i32, ptr %l12, !tbaa !23
  store i32 %t8, ptr %l4, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l13, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t10, ptr %l14
  %t11 = load i32, ptr %l4, !tbaa !23
  %t13 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t11)
  store %"compiler/mir:Lvalue" %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t14, i64 0)
  store { i64, [4 x i64] } %t16, ptr %l18
  br label %bb3
bb3:
  store { i64, [15 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [15 x i64] }, ptr %t17, i32 0, i32 0
  store i64 0, ptr %t18
  %t19 = load { i64, [4 x i64] }, ptr %l18
  %t20 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t19, 0
  %t21 = getelementptr { i64, [15 x i64] }, ptr %t17, i32 0, i32 1
  store { { i64, [4 x i64] } } %t20, ptr %t21
  %t22 = load { i64, [15 x i64] }, ptr %t17
  store { i64, [21 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [21 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t25 = load %"compiler/source:Span", ptr %l14
  %t26 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t25, 0
  %t27 = load %"compiler/mir:Lvalue", ptr %l16
  %t28 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t26, %"compiler/mir:Lvalue" %t27, 1
  %t30 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t28, { i64, [15 x i64] } %t22, 2
  %t31 = getelementptr { i64, [21 x i64] }, ptr %t23, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t30, ptr %t31
  %t32 = load { i64, [21 x i64] }, ptr %t23
  %t34 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t32, ptr %t34
  %t35 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t35, ptr %t34)
  br label %bb4
bb4:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:lowering", ptr %t37, i32 0, i32 3
  %t41 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t39)
  store i32 %t41, ptr %l24
  br label %bb5
bb5:
  %t42 = load i32, ptr %l24, !tbaa !23
  store i32 %t42, ptr %l5, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 3
  %t47 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t45)
  store i32 %t47, ptr %l27
  br label %bb6
bb6:
  %t48 = load i32, ptr %l27, !tbaa !23
  store i32 %t48, ptr %l6, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lower:lowering", ptr %t49, i32 0, i32 3
  %t53 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t51)
  store i32 %t53, ptr %l30
  br label %bb7
bb7:
  %t54 = load i32, ptr %l30, !tbaa !23
  store i32 %t54, ptr %l7, !tbaa !23
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t55, i32 %t56)
  br label %bb8
bb8:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t59, i32 %t60)
  br label %bb9
bb9:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l35, !tbaa !29
  store i32 15, ptr %l36
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t64, ptr %l37, !tbaa !23
  %t65 = load i32, ptr %l4, !tbaa !23
  %t67 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t65)
  store %"compiler/mir:Lvalue" %t67, ptr %l39
  br label %bb10
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 0
  store i64 1, ptr %t69
  %t70 = load %"compiler/mir:Lvalue", ptr %l39
  %t71 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t70, 0
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t71, ptr %t72
  %t73 = load { i64, [4 x i64] }, ptr %t68
  %t75 = mul i64 2, 40
  %t76 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 2, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l42, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t81, i64 0
  store { i64, [4 x i64] } %t73, ptr %t82
  %t84 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t85, i64 1
  store { i64, [4 x i64] } %a1, ptr %t86
  %t87 = load %"compiler/source:Span", ptr %l2
  %t88 = load ptr, ptr %l35, !tbaa !29
  %t89 = load i32, ptr %l36, !range !{i32 0, i32 52}
  %t90 = load i32, ptr %l37, !tbaa !23
  %t91 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t93 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t88, i32 %t89, i32 %t90, { i64, ptr } %t91, %"compiler/source:Span" %t87)
  store { i64, [4 x i64] } %t93, ptr %l44
  br label %bb11
bb11:
  %t94 = load { i64, [4 x i64] }, ptr %l44
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l6, !tbaa !23
  %t98 = load i32, ptr %l7, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t99
  %t100 = getelementptr { i64, [8 x i64] }, ptr %t99, i32 0, i32 0
  store i64 2, ptr %t100
  %t102 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t94, 0
  %t104 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t102, i32 %t97, 1
  %t106 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t104, i32 %t98, 2
  %t107 = getelementptr { i64, [8 x i64] }, ptr %t99, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t106, ptr %t107
  %t108 = load { i64, [8 x i64] }, ptr %t99
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t95, { i64, [8 x i64] } %t108)
  br label %bb12
bb12:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t111, i32 %t112)
  br label %bb13
bb13:
  %t116 = load i32, ptr %l4, !tbaa !23
  %t118 = extractvalue { ptr, ptr } %pg3, 0
  %t119 = extractvalue { ptr, ptr } %pg3, 1
  call void %t118(ptr %t119, i32 %t116)
  br label %bb14
bb14:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l54, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t122, ptr %l55
  %t123 = load i32, ptr %l4, !tbaa !23
  %t125 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t123)
  store %"compiler/mir:Lvalue" %t125, ptr %l57
  br label %bb15
bb15:
  store i32 3, ptr %l58
  %t126 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t126, ptr %l59, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 3
  store ptr %t129, ptr %l61, !tbaa !29
  %t130 = load i32, ptr %l4, !tbaa !23
  %t132 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t130)
  store %"compiler/mir:Lvalue" %t132, ptr %l63
  br label %bb16
bb16:
  store { i64, [4 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 0
  store i64 1, ptr %t134
  %t135 = load %"compiler/mir:Lvalue", ptr %l63
  %t136 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t135, 0
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t136, ptr %t137
  %t138 = load { i64, [4 x i64] }, ptr %t133
  store { i64, [4 x i64] } %t138, ptr %l64
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t139, i64 1)
  store { i64, [4 x i64] } %t141, ptr %l66
  br label %bb17
bb17:
  %t142 = mul i64 2, 40
  %t143 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t142)
  %t144 = insertvalue { i64, ptr } undef, i64 2, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %l67, !tbaa !27
  %t146 = load { i64, [4 x i64] }, ptr %l64
  %t147 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr { i64, [4 x i64] }, ptr %t148, i64 0
  store { i64, [4 x i64] } %t146, ptr %t149
  %t150 = load { i64, [4 x i64] }, ptr %l66
  %t151 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t152, i64 1
  store { i64, [4 x i64] } %t150, ptr %t153
  %t154 = load ptr, ptr %l61, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t156 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t154, { i64, ptr } %t155)
  store %"compiler/mir:Range" %t156, ptr %l68
  br label %bb18
bb18:
  store { i64, [15 x i64] } zeroinitializer, ptr %t157
  %t158 = getelementptr { i64, [15 x i64] }, ptr %t157, i32 0, i32 0
  store i64 3, ptr %t158
  %t159 = load i32, ptr %l58, !range !{i32 0, i32 52}
  %t160 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t159, 0
  %t161 = load i32, ptr %l59, !tbaa !23
  %t162 = insertvalue { i32, i32, %"compiler/mir:Range" } %t160, i32 %t161, 1
  %t163 = load %"compiler/mir:Range", ptr %l68
  %t164 = insertvalue { i32, i32, %"compiler/mir:Range" } %t162, %"compiler/mir:Range" %t163, 2
  %t165 = getelementptr { i64, [15 x i64] }, ptr %t157, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t164, ptr %t165
  %t166 = load { i64, [15 x i64] }, ptr %t157
  store { i64, [21 x i64] } zeroinitializer, ptr %t167
  %t168 = getelementptr { i64, [21 x i64] }, ptr %t167, i32 0, i32 0
  store i64 0, ptr %t168
  %t169 = load %"compiler/source:Span", ptr %l55
  %t170 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t169, 0
  %t171 = load %"compiler/mir:Lvalue", ptr %l57
  %t172 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t170, %"compiler/mir:Lvalue" %t171, 1
  %t174 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t172, { i64, [15 x i64] } %t166, 2
  %t175 = getelementptr { i64, [21 x i64] }, ptr %t167, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t174, ptr %t175
  %t176 = load { i64, [21 x i64] }, ptr %t167
  %t178 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t176, ptr %t178
  %t179 = load ptr, ptr %l54, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t179, ptr %t178)
  br label %bb19
bb19:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t181, i32 %t182)
  br label %bb20
bb20:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t185, i32 %t186)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  %l9 = alloca %"compiler/mir:Lvalue"
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca %"compiler/lower:pl"
  %l17 = alloca %"compiler/lower:pl"
  %l18 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t15 = alloca { i64, [4 x i64] }, align 8
  %t25 = alloca { i64, [2 x i64] }, align 8
  %t33 = alloca { i64, [1 x i64] }, align 8
  %t45 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t4, i32 %a2)
  store i1 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i1, ptr %l6, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l1, !tbaa !23
  %t14 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t12)
  store %"compiler/mir:Lvalue" %t14, ptr %l9
  br label %bb4
bb3:
  br label %bb5
bb4:
  store { i64, [4 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 0
  store i64 1, ptr %t16
  %t17 = load %"compiler/mir:Lvalue", ptr %l9
  %t18 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t17, 0
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t18, ptr %t19
  %t20 = load { i64, [4 x i64] }, ptr %t15
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t20, ptr %rv
  br label %ret
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l11, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l12, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 0
  store i64 1, ptr %t26
  %t28 = insertvalue { i32 } undef, i32 %t24, 0
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  store { i32 } %t28, ptr %t29
  %t30 = load { i64, [2 x i64] }, ptr %t25
  %t32 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t30)
  store %"compiler/lower:pl" %t32, ptr %l15
  br label %bb6
bb6:
  store { i64, [1 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t35 = insertvalue { i64 } undef, i64 0, 0
  %t36 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 1
  store { i64 } %t35, ptr %t36
  %t37 = load { i64, [1 x i64] }, ptr %t33
  %t38 = load ptr, ptr %l12, !tbaa !29
  %t39 = load %"compiler/lower:pl", ptr %l15
  %t41 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t38, %"compiler/lower:pl" %t39, { i64, [1 x i64] } %t37)
  store %"compiler/lower:pl" %t41, ptr %l17
  br label %bb7
bb7:
  %t42 = load ptr, ptr %l11, !tbaa !29
  %t43 = load %"compiler/lower:pl", ptr %l17
  %t44 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t42, %"compiler/lower:pl" %t43)
  store %"compiler/mir:Lvalue" %t44, ptr %l18
  br label %bb8
bb8:
  store { i64, [4 x i64] } zeroinitializer, ptr %t45
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 0
  store i64 1, ptr %t46
  %t47 = load %"compiler/mir:Lvalue", ptr %l18
  %t48 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t47, 0
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t48, ptr %t49
  %t50 = load { i64, [4 x i64] }, ptr %t45
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eescapedHome(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l27 = alloca %"compiler/typed:Local"
  %l34 = alloca %"compiler/mir:Local"
  %l41 = alloca %"compiler/mir:Local"
  %l52 = alloca { i64, [2 x i64] }
  %l54 = alloca { i64, ptr }
  %l61 = alloca i1
  %l63 = alloca i32
  %l68 = alloca %"compiler/typed:Local"
  %l75 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t12 = alloca { i64, [1 x i64] }, align 8
  %t54 = alloca { i64, [1 x i64] }, align 8
  %t92 = alloca { i64, [1 x i64] }, align 8
  %t120 = alloca { i64, [2 x i64] }, align 8
  %t154 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  store { i64, [1 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [1 x i64] }, ptr %t12, i32 0, i32 0
  store i64 3, ptr %t13
  %t14 = load { i64, [1 x i64] }, ptr %t12
  store { i64, [1 x i64] } %t14, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l2
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l3, !tbaa !23
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t30, i32 0, i32 2
  %t32 = load i32, ptr %t31
  %t36 = sext i32 %t32 to i64
  store i64 %t36, ptr %l5, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 7
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/typed:Local" %t47, ptr %l27
  br label %bb6
bb6:
  %t48 = getelementptr %"compiler/typed:Local", ptr %l27, i32 0, i32 4
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 7}
  %t51 = trunc i64 6 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb7, label %bb8
bb7:
  store { i64, [1 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [1 x i64] }, ptr %t54, i32 0, i32 0
  store i64 3, ptr %t55
  %t56 = load { i64, [1 x i64] }, ptr %t54
  store { i64, [1 x i64] } %t56, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 3
  %t61 = getelementptr %"compiler/mir:Fn", ptr %t60, i32 0, i32 7
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t61, i64 %t62)
  store %"compiler/mir:Local" %t65, ptr %l34
  br label %bb10
bb10:
  %t66 = getelementptr %"compiler/mir:Local", ptr %l34, i32 0, i32 4
  %t67 = load { i64, [1 x i64] }, ptr %t66
  %t69 = extractvalue { i64, [1 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 3
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb11, label %bb12
bb11:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/lower:lowering", ptr %t74, i32 0, i32 3
  %t77 = getelementptr %"compiler/mir:Fn", ptr %t76, i32 0, i32 7
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t77, i64 %t78)
  store %"compiler/mir:Local" %t81, ptr %l41
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t82 = getelementptr %"compiler/mir:Local", ptr %l41, i32 0, i32 4
  %t83 = load { i64, [1 x i64] }, ptr %t82
  store { i64, [1 x i64] } %t83, ptr %rv
  br label %ret
bb14:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lower:lowering", ptr %t85, i32 0, i32 24
  %t88 = load i1, ptr %t87, !tbaa !21
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb15, label %bb16
bb15:
  store { i64, [1 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [1 x i64] }, ptr %t92, i32 0, i32 0
  store i64 3, ptr %t93
  %t94 = load { i64, [1 x i64] }, ptr %t92
  store { i64, [1 x i64] } %t94, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/lower:lowering", ptr %t97, i32 0, i32 30
  %t100 = getelementptr %"compiler/typed:Plan", ptr %t99, i32 0, i32 1
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t106 = icmp slt i64 %t96, %t103
  br i1 %t106, label %bb18, label %bb19
bb18:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lower:lowering", ptr %t108, i32 0, i32 30
  %t111 = getelementptr %"compiler/typed:Plan", ptr %t110, i32 0, i32 1
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l54, !tbaa !27
  %t113 = load i64, ptr %l5, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t116, i64 %t113
  %t118 = load { i64, [2 x i64] }, ptr %t117
  store { i64, [2 x i64] } %t118, ptr %l52
  br label %bb20
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [2 x i64] }, ptr %t120, i32 0, i32 0
  store i64 0, ptr %t121
  %t122 = load { i64, [2 x i64] }, ptr %t120
  store { i64, [2 x i64] } %t122, ptr %l52
  br label %bb20
bb20:
  %t124 = load { i64, [2 x i64] }, ptr %l52
  store { i64, [2 x i64] } %t124, ptr %l6
  %t125 = load { i64, [2 x i64] }, ptr %l6
  %t127 = extractvalue { i64, [2 x i64] } %t125, 0
  %t128 = icmp eq i64 %t127, 1
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb24
bb22:
  %t132 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t133 = getelementptr { i32 }, ptr %t132, i32 0, i32 0
  %t134 = load i32, ptr %t133
  store i32 %t134, ptr %l63, !tbaa !23
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/lower:lowering", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Body", ptr %t140, i32 0, i32 7
  %t143 = load i64, ptr %l5, !tbaa !24
  %t146 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t142, i64 %t143)
  store %"compiler/typed:Local" %t146, ptr %l68
  br label %bb23
bb23:
  %t147 = getelementptr %"compiler/typed:Local", ptr %l68, i32 0, i32 3
  %t148 = load i32, ptr %t147, !tbaa !23
  %t149 = load i32, ptr %l63, !tbaa !23
  %t151 = icmp eq i32 %t149, %t148
  store i1 %t151, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t153 = load i1, ptr %l61, !tbaa !21
  br i1 %t153, label %bb25, label %bb26
bb25:
  store { i64, [1 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [1 x i64] }, ptr %t154, i32 0, i32 0
  store i64 3, ptr %t155
  %t156 = load { i64, [1 x i64] }, ptr %t154
  store { i64, [1 x i64] } %t156, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t158 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t159 = getelementptr { i32 }, ptr %t158, i32 0, i32 0
  %t160 = load i32, ptr %t159
  store i32 %t160, ptr %l8, !tbaa !23
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load { i64, [2 x i64] }, ptr %l6
  %t166 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t162, { i64, [2 x i64] } %t163)
  store { i64, [1 x i64] } %t166, ptr %l75
  br label %bb28
bb28:
  %t167 = load { i64, [1 x i64] }, ptr %l75
  store { i64, [1 x i64] } %t167, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2efieldAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l16 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a1, ptr %l3, !tbaa !23
  store { i64, ptr } %a2, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t17, ptr %l16, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i64, ptr %t21, i64 %t18
  %t23 = load i64, ptr %t22, !tbaa !34
  store i64 %t23, ptr %l7, !tbaa !24
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s2, ptr %a0, i32 %t26)
  store { i64, ptr } %t29, ptr %l21
  br label %bb5
bb5:
  %t30 = load i64, ptr %l7, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i32, ptr %t33, i64 %t30
  %t35 = load i32, ptr %t34, !tbaa !33
  store i32 %t35, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb6
bb6:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l5, !tbaa !24
  br label %bb1
bb7:
  %t41 = load i32, ptr %l3, !tbaa !23
  store i32 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l23 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2flower_2eviewCallIn(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Call", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l3, !tbaa !29
  %t15 = load ptr, ptr %l3, !tbaa !29
  store ptr %t15, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 5}
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { i32 }, ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l4, !tbaa !23
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t32 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t34 = load i32, ptr %l4, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t39 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshResult(ptr %v0, ptr %t33, i64 %t36)
  store i1 %t39, ptr %l23
  br label %bb10
bb10:
  %t40 = load i1, ptr %l23, !tbaa !21
  store i1 %t40, ptr %l12, !tbaa !21
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_c9ff4911a436500b_5835334d424a3697)
  unreachable
bb16:
  %t41 = load i1, ptr %l12, !tbaa !21
  store i1 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdParams(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca i32
  %l32 = alloca %"compiler/mir:Local"
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca %"compiler/mir:Lvalue"
  %l56 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i64
  %l83 = alloca i1
  %l84 = alloca i1
  %l88 = alloca %"compiler/mir:Local"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t4)
  store ptr %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l13, !tbaa !29
  %t9 = getelementptr %"compiler/mir:GenInfo", ptr %t7, i32 0, i32 0
  %t11 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 3
  %t18 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 4
  store ptr %t18, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  %t20 = load i64, ptr %l2, !tbaa !24
  store i64 %t20, ptr %l20, !tbaa !24
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l22
  br label %bb7
bb7:
  %t24 = load i64, ptr %l20, !tbaa !24
  %t25 = load i64, ptr %l22, !tbaa !24
  %t26 = icmp slt i64 %t24, %t25
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t30, i64 %t31)
  store i32 %t34, ptr %l27
  br label %bb11
bb11:
  %t35 = load i32, ptr %l27, !tbaa !23
  store i32 %t35, ptr %l3, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 3
  %t39 = getelementptr %"compiler/mir:Fn", ptr %t38, i32 0, i32 7
  %t40 = load i32, ptr %l3, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t45 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t39, i64 %t42)
  store %"compiler/mir:Local" %t45, ptr %l32
  br label %bb12
bb12:
  %t46 = getelementptr %"compiler/mir:Local", ptr %l32, i32 0, i32 2
  %t47 = load i32, ptr %t46, !tbaa !23
  store i32 %t47, ptr %l4, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lower:lowering", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l35, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i32, ptr %l4, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l39
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l35, !tbaa !29
  %t62 = load i32, ptr %l39, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t61, i32 %t62)
  store i1 %t63, ptr %l40
  br label %bb14
bb14:
  %t64 = load i1, ptr %l40, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t71, ptr %l45
  br label %bb17
bb16:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb18
bb17:
  %t72 = load i1, ptr %l45, !tbaa !21
  store i1 %t72, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l42, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l46, !tbaa !29
  %t75 = load i32, ptr %l3, !tbaa !23
  %t77 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t75)
  store %"compiler/mir:Lvalue" %t77, ptr %l48
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/lower:lowering", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Body", ptr %t81, i32 0, i32 4
  %t84 = load %"compiler/source:Span", ptr %t83
  %t85 = load ptr, ptr %l46, !tbaa !29
  %t86 = load %"compiler/mir:Lvalue", ptr %l48
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t85, %"compiler/mir:Lvalue" %t86, i64 1, %"compiler/source:Span" %t84)
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t88 = load i64, ptr %l2, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l2, !tbaa !24
  br label %bb6
bb25:
  store i64 0, ptr %l5, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:lowering", ptr %t92, i32 0, i32 3
  %t95 = getelementptr %"compiler/mir:Fn", ptr %t94, i32 0, i32 7
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l56
  br label %bb26
bb26:
  %t98 = load i64, ptr %l56, !tbaa !24
  store i64 %t98, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t100 = load i64, ptr %l5, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb27, label %bb28
bb27:
  %t105 = load i64, ptr %l7, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb32
bb29:
  %t109 = load i64, ptr %l6, !tbaa !24
  %t110 = load i64, ptr %l5, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l7, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l7, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l63, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb31
bb31:
  %t125 = load i64, ptr %l63, !tbaa !24
  store i64 %t125, ptr %l60, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l60, !tbaa !24
  store i64 %t126, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb33
bb33:
  %t127 = load i64, ptr %l9, !tbaa !24
  %t128 = load i64, ptr %l8, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb34, label %bb35
bb34:
  br label %bb47
bb35:
  br label %bb36
bb36:
  %t135 = load i64, ptr %l5, !tbaa !24
  %t136 = load i64, ptr %l9, !tbaa !24
  %t137 = load i64, ptr %l7, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  store i64 %t143, ptr %l10, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedLocal(ptr %v0, ptr %t145, i64 %t146)
  store i1 %t149, ptr %l83
  br label %bb37
bb37:
  %t150 = load i1, ptr %l83, !tbaa !21
  br i1 %t150, label %bb38, label %bb39
bb38:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lower:lowering", ptr %t151, i32 0, i32 3
  %t154 = getelementptr %"compiler/mir:Fn", ptr %t153, i32 0, i32 7
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t154, i64 %t155)
  store %"compiler/mir:Local" %t158, ptr %l88
  br label %bb40
bb39:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb41
bb40:
  %t159 = getelementptr %"compiler/mir:Local", ptr %l88, i32 0, i32 4
  %t160 = load { i64, [1 x i64] }, ptr %t159
  %t162 = extractvalue { i64, [1 x i64] } %t160, 0
  %t163 = icmp eq i64 %t162, 3
  store i1 %t163, ptr %l84, !tbaa !21
  br label %bb41
bb41:
  %t165 = load i1, ptr %l84, !tbaa !21
  br i1 %t165, label %bb42, label %bb43
bb42:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i64, ptr %l10, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/lower:lowering", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Body", ptr %t171, i32 0, i32 4
  %t174 = load %"compiler/source:Span", ptr %t173
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroLocal(ptr %v0, ptr %t166, i64 %t167, %"compiler/source:Span" %t174)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t178 = load i64, ptr %l9, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l9, !tbaa !24
  br label %bb33
bb47:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i32
  %l7 = alloca i32
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t44 = alloca { i64, [15 x i64] }, align 8
  %t50 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [4 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l4
  br label %bb3
bb2:
  br label %bb16
bb3:
  %t10 = getelementptr %"compiler/mir:Lvalue", ptr %l4, i32 0, i32 1
  %t11 = getelementptr %"compiler/mir:Range", ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11, !tbaa !23
  %t14 = icmp eq i32 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = getelementptr %"compiler/mir:Lvalue", ptr %l4, i32 0, i32 0
  %t17 = load { i64, [2 x i64] }, ptr %t16
  store { i64, [2 x i64] } %t17, ptr %l5
  %t19 = load { i64, [2 x i64] }, ptr %l5
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 1
  br i1 %t22, label %bb6, label %bb7
bb5:
  br label %bb15
bb6:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t25 = getelementptr { i32 }, ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l6, !tbaa !23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t28 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t28, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_40374e6b733808a6_53e83bc62823fc4a)
  unreachable
bb14:
  br label %bb15
bb15:
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_71c3518922ec6807_c916f3e3052668b)
  unreachable
bb21:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l3
  %t36 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t30, i32 %a2, %"compiler/source:Span" %t32)
  store i32 %t36, ptr %l21
  br label %bb22
bb22:
  %t37 = load i32, ptr %l21, !tbaa !23
  store i32 %t37, ptr %l7, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t39, ptr %l23
  %t40 = load i32, ptr %l7, !tbaa !23
  %t42 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t40)
  store %"compiler/mir:Lvalue" %t42, ptr %l25
  br label %bb23
bb23:
  %t43 = load { i64, [4 x i64] }, ptr %l1
  store { i64, [15 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [15 x i64] }, ptr %t44, i32 0, i32 0
  store i64 0, ptr %t45
  %t47 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t43, 0
  %t48 = getelementptr { i64, [15 x i64] }, ptr %t44, i32 0, i32 1
  store { { i64, [4 x i64] } } %t47, ptr %t48
  %t49 = load { i64, [15 x i64] }, ptr %t44
  store { i64, [21 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [21 x i64] }, ptr %t50, i32 0, i32 0
  store i64 0, ptr %t51
  %t52 = load %"compiler/source:Span", ptr %l23
  %t53 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t52, 0
  %t54 = load %"compiler/mir:Lvalue", ptr %l25
  %t55 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t53, %"compiler/mir:Lvalue" %t54, 1
  %t57 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t55, { i64, [15 x i64] } %t49, 2
  %t58 = getelementptr { i64, [21 x i64] }, ptr %t50, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t57, ptr %t58
  %t59 = load { i64, [21 x i64] }, ptr %t50
  %t61 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t59, ptr %t61
  %t62 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t62, ptr %t61)
  br label %bb24
bb24:
  %t64 = load i32, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l9 = alloca ptr
  %l10 = alloca { i64, [2 x i64] }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"compiler/mir:Lvalue"
  %l22 = alloca ptr
  %l23 = alloca { i64, [2 x i64] }
  %l25 = alloca { i64, ptr }
  %l26 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Lvalue"
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp sge i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:lowering", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 4
  %t13 = load %"compiler/source:Span", ptr %t12
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t6, %"compiler/source:Span" %t13, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d6, i32 0, i32 1) })
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 3
  store ptr %t18, ptr %l9, !tbaa !29
  %t19 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 0
  %t20 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t20, ptr %l10
  %t21 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %s0, ptr %s0, ptr %t21)
  store { i64, ptr } %t23, ptr %l12
  br label %bb4
bb4:
  %t24 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t24, ptr %l13, !tbaa !27
  %t25 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %l14, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  store i64 %t28, ptr %l15, !tbaa !24
  %t29 = icmp sge i64 0, 0
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = icmp sle i64 0, %t31
  br i1 %t32, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_42d43bd34810722a_688b4686d67d3836)
  unreachable
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  %t35 = load i64, ptr %l15, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_42d43bd34810722a_688b4686d67d3836)
  unreachable
bb9:
  %t38 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l14, !tbaa !24
  %t41 = getelementptr { i64, [1 x i64] }, ptr %t39, i64 0
  %t42 = sub i64 %t40, 0
  %t43 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  %t45 = load ptr, ptr %l9, !tbaa !29
  %t46 = load { i64, [2 x i64] }, ptr %l10
  %t48 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t45, { i64, [2 x i64] } %t46, { i64, ptr } %t44)
  store %"compiler/mir:Lvalue" %t48, ptr %l20
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_42d43bd34810722a_688b4686d67d3836)
  unreachable
bb11:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t49 = load %"compiler/mir:Lvalue", ptr %l20
  store %"compiler/mir:Lvalue" %t49, ptr %rv
  br label %ret
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t50, i32 0, i32 3
  store ptr %t52, ptr %l22, !tbaa !29
  %t53 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 0
  %t54 = load { i64, [2 x i64] }, ptr %t53
  store { i64, [2 x i64] } %t54, ptr %l23
  %t55 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t57 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %s0, ptr %t55)
  store { i64, ptr } %t57, ptr %l25
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l22, !tbaa !29
  %t59 = load { i64, [2 x i64] }, ptr %l23
  %t60 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t61 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t58, { i64, [2 x i64] } %t59, { i64, ptr } %t60)
  store %"compiler/mir:Lvalue" %t61, ptr %l26
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t62 = load %"compiler/mir:Lvalue", ptr %l26
  store %"compiler/mir:Lvalue" %t62, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3alowering_2emutGlobals(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load { i64, ptr }, ptr @G_2ecompiler_2ftyped_2eMutGlobalsFact, !tbaa !27
  %t18 = load ptr, ptr @__olang_prog_scope
  %t22 = call { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %t18, ptr %s0, ptr %t9, i64 %t16, { i64, ptr } %t17)
  %t23 = extractvalue { i32, { i64, ptr } } %t22, 1
  %t24 = extractvalue { i32, { i64, ptr } } %t22, 0
  store i32 %t24, ptr %l11
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb2, label %ok.26, !prof !99
ok.26:
  store { i64, ptr } %t23, ptr %l10
  br label %bb1
bb1:
  %t27 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t27, ptr %l1, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/lower:Lowerer", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 9
  call void @__olang_scope_close(ptr %s0)
  store ptr %t39, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enamedVal(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i32
  %l16 = alloca { i64, [2 x i64] }
  %l23 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t13 = alloca { i64, [2 x i64] }, align 8
  %t33 = alloca { i64, [1 x i64] }, align 8
  %t38 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 0
  store i64 0, ptr %t14
  %t16 = insertvalue { i32 } undef, i32 %t12, 0
  %t17 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 1
  store { i32 } %t16, ptr %t17
  %t18 = load { i64, [2 x i64] }, ptr %t13
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %t4, i64 %t11, { i64, [2 x i64] } %t18)
  br label %bb1
bb1:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l11, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  store i32 %t23, ptr %l12, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %t27, i32 %t28)
  store { i64, [2 x i64] } %t31, ptr %l16
  br label %bb2
bb2:
  %t32 = load i32, ptr %l2, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 0
  store i64 3, ptr %t34
  %t35 = load { i64, [1 x i64] }, ptr %t33
  %t36 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  %t37 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store { i64, [15 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [15 x i64] }, ptr %t38, i32 0, i32 0
  store i64 10, ptr %t39
  %t40 = load { i64, [2 x i64] }, ptr %l16
  %t41 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } undef, { i64, [2 x i64] } %t40, 0
  %t43 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t41, i32 %t32, 1
  %t45 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t43, { i64, [1 x i64] } %t35, 2
  %t47 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t45, %"compiler/mir:Range" %t36, 3
  %t49 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t47, %"compiler/mir:Range" %t37, 4
  %t50 = getelementptr { i64, [15 x i64] }, ptr %t38, i32 0, i32 1
  store { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t49, ptr %t50
  %t51 = load { i64, [15 x i64] }, ptr %t38
  %t53 = load ptr, ptr %l11, !tbaa !29
  %t54 = load i32, ptr %l12, !tbaa !23
  %t57 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t53, i32 %t54, { i64, [15 x i64] } %t51, %"compiler/source:Span" %a3)
  store { i64, [4 x i64] } %t57, ptr %l23
  br label %bb3
bb3:
  %t58 = load { i64, [4 x i64] }, ptr %l23
  store { i64, [4 x i64] } %t58, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epackedField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %lp4 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"compiler/lower:pl"
  %l10 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %l16 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i1
  %l25 = alloca i64
  %rv = alloca %"compiler/lower:pl"
  %t6 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  %t2 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t2, ptr %l8
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l8)
  store %"compiler/lower:pl" %t4, ptr %l10
  br label %bb1
bb1:
  store { i64, [1 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [1 x i64] }, ptr %t6, i32 0, i32 0
  store i64 0, ptr %t7
  %t9 = insertvalue { i64 } undef, i64 %a3, 0
  %t10 = getelementptr { i64, [1 x i64] }, ptr %t6, i32 0, i32 1
  store { i64 } %t9, ptr %t10
  %t11 = load { i64, [1 x i64] }, ptr %t6
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t13 = load %"compiler/lower:pl", ptr %l10
  %t15 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v2, ptr %v2, ptr %t12, %"compiler/lower:pl" %t13, { i64, [1 x i64] } %t11)
  store %"compiler/lower:pl" %t15, ptr %l13
  br label %bb2
bb2:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t16, ptr %lp4
  %t17 = load %"compiler/lower:pl", ptr %l13
  %t18 = load ptr, ptr %lp4
  store %"compiler/lower:pl" %t17, ptr %t18
  %t19 = load ptr, ptr %lp4
  %t20 = getelementptr %"compiler/lower:pl", ptr %t19, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 2
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l22
  br label %bb5
bb4:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb7
bb5:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i32, ptr %l22, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t39, ptr %l23
  br label %bb6
bb6:
  %t40 = load i1, ptr %l23, !tbaa !21
  store i1 %t40, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l16, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t42 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t42)
  store i64 %t44, ptr %l25
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = load i32, ptr %l2, !tbaa !23
  %t50 = load ptr, ptr %lp4
  %t51 = getelementptr %"compiler/lower:pl", ptr %t50, i32 0, i32 2
  store i64 %t45, ptr %t51, !tbaa !24
  %t54 = load ptr, ptr %lp4
  %t55 = getelementptr %"compiler/lower:pl", ptr %t54, i32 0, i32 3
  store i32 %t46, ptr %t55, !tbaa !23
  br label %bb11
bb11:
  %t56 = load ptr, ptr %lp4
  %t57 = load %"compiler/lower:pl", ptr %t56
  store %"compiler/lower:pl" %t57, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca %"compiler/lower:pl"
  %l8 = alloca %"compiler/lower:pl"
  %l10 = alloca { i64, ptr }
  %l19 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t23 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l6
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l6)
  store %"compiler/lower:pl" %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load %"compiler/source:Span", ptr %l3
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = load %"compiler/lower:pl", ptr %l8
  %t9 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedChain(ptr %v0, ptr %s0, ptr %s0, ptr %t6, %"compiler/lower:pl" %t7, %"compiler/source:Span" %t5)
  store { i64, ptr } %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = sub i64 %t15, 1
  %t19 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t20, i64 %t17
  %t22 = load { i64, [4 x i64] }, ptr %t21
  store { i64, [15 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [15 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t26 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t22, 0
  %t27 = getelementptr { i64, [15 x i64] }, ptr %t23, i32 0, i32 1
  store { { i64, [4 x i64] } } %t26, ptr %t27
  %t28 = load { i64, [15 x i64] }, ptr %t23
  %t29 = load %"compiler/source:Span", ptr %l3
  %t34 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t11, i32 %a2, { i64, [15 x i64] } %t28, %"compiler/source:Span" %t29)
  store { i64, [4 x i64] } %t34, ptr %l19
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load { i64, [4 x i64] }, ptr %l19
  store { i64, [4 x i64] } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epassedOr(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i64
  %l18 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i64
  %l30 = alloca i1
  %l37 = alloca ptr
  %l43 = alloca { i64, [4 x i64] }
  %l48 = alloca i1
  %l50 = alloca i1
  %l54 = alloca { i64, [4 x i64] }
  %l58 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/mir:Lvalue"
  %l66 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, [1 x i64] }
  %t9 = alloca { i64, [4 x i64] }, align 8
  %t124 = alloca { i64, [1 x i64] }, align 8
  %t131 = alloca { i64, [15 x i64] }, align 8
  %t139 = alloca { i64, [21 x i64] }, align 8
  %t154 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 4
  %t7 = load %"compiler/source:Span", ptr %t6
  store %"compiler/source:Span" %t7, ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [4 x i64] }, ptr %t9
  store { i64, [4 x i64] } %t11, ptr %l4
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %l15, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 30
  %t21 = getelementptr %"compiler/typed:Plan", ptr %t20, i32 0, i32 10
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l18
  br label %bb3
bb2:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = load i64, ptr %l18, !tbaa !24
  %t26 = icmp slt i64 %t24, %t25
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 30
  %t32 = getelementptr %"compiler/typed:Plan", ptr %t31, i32 0, i32 10
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t32, i64 %t33)
  store ptr %t36, ptr %l23
  br label %bb7
bb6:
  br label %bb31
bb7:
  %t37 = load ptr, ptr %l23, !tbaa !29
  store ptr %t37, ptr %l5, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 35
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l26
  br label %bb8
bb8:
  %t43 = load i64, ptr %l26, !tbaa !24
  %t44 = sub i64 %t43, 1
  store i64 %t44, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load { i64, [4 x i64] }, ptr %l4
  %t52 = extractvalue { i64, [4 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 0
  store i1 %t53, ptr %l30, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l30, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb14:
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 35
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s3, ptr %t60, i64 %t61)
  store ptr %t64, ptr %l37
  br label %bb16
bb16:
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t66 = load ptr, ptr %l37, !tbaa !29
  %t68 = icmp eq ptr %t66, %t65
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lower:lowering", ptr %t70, i32 0, i32 36
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t72, i64 %t73)
  store { i64, [4 x i64] } %t76, ptr %l43
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t77 = load { i64, [4 x i64] }, ptr %l43
  store { i64, [4 x i64] } %t77, ptr %l4
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = sub i64 %t78, 1
  store i64 %t80, ptr %l6, !tbaa !24
  br label %bb9
bb22:
  %t82 = load { i64, [4 x i64] }, ptr %l4
  %t84 = extractvalue { i64, [4 x i64] } %t82, 0
  %t85 = icmp eq i64 %t84, 0
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l5, !tbaa !29
  %t89 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t87)
  store i1 %t89, ptr %l50
  br label %bb25
bb24:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb26
bb25:
  %t90 = load i1, ptr %l50, !tbaa !21
  store i1 %t90, ptr %l48, !tbaa !21
  br label %bb26
bb26:
  %t91 = load i1, ptr %l48, !tbaa !21
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t97 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v0, ptr %t92, ptr %t93)
  store { i64, [4 x i64] } %t97, ptr %l54
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t98 = load { i64, [4 x i64] }, ptr %l54
  store { i64, [4 x i64] } %t98, ptr %l4
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t101 = load %"compiler/source:Span", ptr %l3
  %t105 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t99, i32 %t100, %"compiler/source:Span" %t101)
  store i32 %t105, ptr %l58
  br label %bb32
bb32:
  %t106 = load i32, ptr %l58, !tbaa !23
  store i32 %t106, ptr %l7, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l59, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t108, ptr %l60
  %t109 = load i32, ptr %l7, !tbaa !23
  %t111 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t109)
  store %"compiler/mir:Lvalue" %t111, ptr %l62
  br label %bb33
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/lower:lowering", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Body", ptr %t115, i32 0, i32 6
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t117)
  store i64 %t119, ptr %l66
  br label %bb34
bb34:
  %t121 = load i64, ptr %l66, !tbaa !24
  %t123 = add i64 %t121, %a1
  store { i64, [1 x i64] } zeroinitializer, ptr %t124
  %t125 = getelementptr { i64, [1 x i64] }, ptr %t124, i32 0, i32 0
  store i64 1, ptr %t125
  %t127 = insertvalue { i64 } undef, i64 %t123, 0
  %t128 = getelementptr { i64, [1 x i64] }, ptr %t124, i32 0, i32 1
  store { i64 } %t127, ptr %t128
  %t129 = load { i64, [1 x i64] }, ptr %t124
  %t130 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [15 x i64] } zeroinitializer, ptr %t131
  %t132 = getelementptr { i64, [15 x i64] }, ptr %t131, i32 0, i32 0
  store i64 16, ptr %t132
  %t134 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t129, 0
  %t136 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] } } %t134, { i64, [4 x i64] } %t130, 1
  %t137 = getelementptr { i64, [15 x i64] }, ptr %t131, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] } } %t136, ptr %t137
  %t138 = load { i64, [15 x i64] }, ptr %t131
  store { i64, [21 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [21 x i64] }, ptr %t139, i32 0, i32 0
  store i64 0, ptr %t140
  %t141 = load %"compiler/source:Span", ptr %l60
  %t142 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t141, 0
  %t143 = load %"compiler/mir:Lvalue", ptr %l62
  %t144 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t142, %"compiler/mir:Lvalue" %t143, 1
  %t146 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t144, { i64, [15 x i64] } %t138, 2
  %t147 = getelementptr { i64, [21 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t146, ptr %t147
  %t148 = load { i64, [21 x i64] }, ptr %t139
  %t150 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t148, ptr %t150
  %t151 = load ptr, ptr %l59, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t151, ptr %t150)
  br label %bb35
bb35:
  %t153 = load i32, ptr %l7, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [1 x i64] }, ptr %t154, i32 0, i32 0
  store i64 4, ptr %t155
  %t157 = insertvalue { i32 } undef, i32 %t153, 0
  %t158 = getelementptr { i64, [1 x i64] }, ptr %t154, i32 0, i32 1
  store { i32 } %t157, ptr %t158
  %t159 = load { i64, [1 x i64] }, ptr %t154
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t159, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local { { i64, [4 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2epiece(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"compiler/lower:pl"
  %l8 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca %"compiler/lower:pl"
  %l42 = alloca %"compiler/lower:pl"
  %l50 = alloca ptr
  %l51 = alloca %"compiler/lower:pl"
  %l53 = alloca %"compiler/lower:pl"
  %l56 = alloca { i64, [4 x i64] }
  %l62 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca i32
  %l67 = alloca %"compiler/mir:Lvalue"
  %l71 = alloca { i64, [4 x i64] }
  %l77 = alloca { i64, [4 x i64] }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { { i64, [4 x i64] }, i32 }
  %t73 = alloca { i64, [4 x i64] }, align 8
  %t120 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t6)
  store i32 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i32, ptr %l12, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l4, !tbaa !23
  %t14 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l15
  br label %bb2
bb2:
  %t15 = load i32, ptr %l15, !tbaa !23
  store i32 %t15, ptr %l5, !tbaa !23
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l19
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l16, !tbaa !29
  %t23 = load i32, ptr %l19, !tbaa !23
  %t24 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t24, ptr %l20
  br label %bb4
bb4:
  %t25 = load i1, ptr %l20, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l5, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = icmp ne i32 %t28, %t29
  store i1 %t32, ptr %l22, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb7
bb7:
  %t34 = load i1, ptr %l22, !tbaa !21
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l5, !tbaa !23
  %t39 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l29
  br label %bb10
bb9:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb11
bb10:
  %t40 = load i64, ptr %l29, !tbaa !24
  %t41 = icmp sge i64 %t40, 0
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l26, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t45 = load ptr, ptr %l31, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb14, label %bb15
bb13:
  br label %bb38
bb14:
  %t48 = load ptr, ptr %l31, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 2
  store i1 %t51, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l32, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb32
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t64 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %s2, ptr %t59, ptr %t60)
  store %"compiler/lower:pl" %t64, ptr %l40
  br label %bb19
bb19:
  %t66 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l40)
  store %"compiler/lower:pl" %t66, ptr %l42
  br label %bb20
bb20:
  %t67 = load %"compiler/lower:pl", ptr %l42
  store %"compiler/lower:pl" %t67, ptr %l7
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t68, i32 0, i32 10
  %t71 = load i1, ptr %t70, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 0
  store i64 0, ptr %t74
  %t75 = load { i64, [4 x i64] }, ptr %t73
  %t76 = load i32, ptr %l4, !tbaa !23
  %t78 = insertvalue { { i64, [4 x i64] }, i32 } undef, { i64, [4 x i64] } %t75, 0
  %t80 = insertvalue { { i64, [4 x i64] }, i32 } %t78, i32 %t76, 1
  call void @__olang_scope_close(ptr %s2)
  store { { i64, [4 x i64] }, i32 } %t80, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t82 = getelementptr %"compiler/lower:pl", ptr %l7, i32 0, i32 2
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = icmp sge i64 %t83, 0
  br i1 %t85, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l50, !tbaa !29
  %t88 = load %"compiler/lower:pl", ptr %l7
  store %"compiler/lower:pl" %t88, ptr %l51
  %t90 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s4, ptr %l51)
  store %"compiler/lower:pl" %t90, ptr %l53
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t91 = load i32, ptr %l4, !tbaa !23
  %t92 = load %"compiler/source:Span", ptr %l2
  %t93 = load ptr, ptr %l50, !tbaa !29
  %t94 = load %"compiler/lower:pl", ptr %l53
  %t97 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %s4, ptr %t93, %"compiler/lower:pl" %t94, i32 %t91, %"compiler/source:Span" %t92)
  store { i64, [4 x i64] } %t97, ptr %l56
  br label %bb27
bb27:
  %t98 = load i32, ptr %l4, !tbaa !23
  %t99 = load { i64, [4 x i64] }, ptr %l56
  %t100 = insertvalue { { i64, [4 x i64] }, i32 } undef, { i64, [4 x i64] } %t99, 0
  %t102 = insertvalue { { i64, [4 x i64] }, i32 } %t100, i32 %t98, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  store { { i64, [4 x i64] }, i32 } %t102, ptr %rv
  br label %ret
bb28:
  %t104 = load ptr, ptr %l3, !tbaa !29
  %t105 = load i32, ptr %l4, !tbaa !23
  %t106 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t104, i32 %t105, i64 %t106)
  store i32 %t110, ptr %l62
  br label %bb29
bb29:
  %t111 = load i32, ptr %l62, !tbaa !23
  store i32 %t111, ptr %l8, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l63, !tbaa !29
  %t113 = load i32, ptr %l8, !tbaa !23
  store i32 %t113, ptr %l64, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load %"compiler/lower:pl", ptr %l7
  %t118 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t114, %"compiler/lower:pl" %t115)
  store %"compiler/mir:Lvalue" %t118, ptr %l67
  br label %bb30
bb30:
  %t119 = load i32, ptr %l8, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [15 x i64] }, ptr %t120, i32 0, i32 0
  store i64 1, ptr %t121
  %t122 = load %"compiler/mir:Lvalue", ptr %l67
  %t123 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t122, 0
  %t125 = insertvalue { %"compiler/mir:Lvalue", i32 } %t123, i32 %t119, 1
  %t126 = getelementptr { i64, [15 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t125, ptr %t126
  %t127 = load { i64, [15 x i64] }, ptr %t120
  %t128 = load %"compiler/source:Span", ptr %l2
  %t129 = load ptr, ptr %l63, !tbaa !29
  %t130 = load i32, ptr %l64, !tbaa !23
  %t133 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t129, i32 %t130, { i64, [15 x i64] } %t127, %"compiler/source:Span" %t128)
  store { i64, [4 x i64] } %t133, ptr %l71
  br label %bb31
bb31:
  %t134 = load i32, ptr %l8, !tbaa !23
  %t135 = load { i64, [4 x i64] }, ptr %l71
  %t136 = insertvalue { { i64, [4 x i64] }, i32 } undef, { i64, [4 x i64] } %t135, 0
  %t138 = insertvalue { { i64, [4 x i64] }, i32 } %t136, i32 %t134, 1
  call void @__olang_scope_close(ptr %s2)
  store { { i64, [4 x i64] }, i32 } %t138, ptr %rv
  br label %ret
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_eff9370fb6cf39b1_ff4f9c232720af7d)
  unreachable
bb37:
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t145 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t140, ptr %t141)
  store { i64, [4 x i64] } %t145, ptr %l77
  br label %bb39
bb39:
  %t146 = load i32, ptr %l4, !tbaa !23
  %t147 = load { i64, [4 x i64] }, ptr %l77
  %t148 = insertvalue { { i64, [4 x i64] }, i32 } undef, { i64, [4 x i64] } %t147, 0
  %t150 = insertvalue { { i64, [4 x i64] }, i32 } %t148, i32 %t146, 1
  store { { i64, [4 x i64] }, i32 } %t150, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, [4 x i64] }, i32 }, ptr %rv
  ret { { i64, [4 x i64] }, i32 } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t22 = alloca { i64, [1 x i64] }, align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %a0, i32 %t17)
  store { i64, [1 x i64] } %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load { i64, [1 x i64] }, ptr %l12
  store { i64, [1 x i64] } %t21, ptr %l3
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store { i64, [1 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 0
  store i64 2, ptr %t23
  %t24 = load { i64, [1 x i64] }, ptr %t22
  store { i64, [1 x i64] } %t24, ptr %l3
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_4fc653f117519a1d_d526ff90513f5371)
  unreachable
bb12:
  %t26 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t26, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epopLevel(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i32
  %l21 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca %"compiler/lower:level"
  %l34 = alloca %"compiler/lower:level"
  %l35 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:level", ptr %t4, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l1, !tbaa !23
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 16
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l8
  br label %bb3
bb3:
  %t14 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp sgt i64 %t14, 0
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 16
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 16
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l15
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb6:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = sub i64 %t25, 1
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t29 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t27, i64 %t26)
  store i32 %t29, ptr %l17
  br label %bb7
bb7:
  %t30 = load i32, ptr %l1, !tbaa !23
  %t31 = load i32, ptr %l17, !tbaa !23
  %t33 = icmp eq i32 %t31, %t30
  store i1 %t33, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l10, !tbaa !21
  %t36 = xor i1 %t35, true
  br i1 %t36, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 16
  %t42 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t40)
  %t43 = extractvalue { i32, i32 } %t42, 1
  %t44 = extractvalue { i32, i32 } %t42, 0
  store i32 %t44, ptr %l25
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb13, label %ok.46, !prof !99
ok.46:
  store i32 %t43, ptr %l24
  br label %bb12
bb12:
  %t47 = load i32, ptr %l24, !tbaa !23
  store i32 %t47, ptr %l21, !tbaa !23
  br label %bb15
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 15
  %t52 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ePop_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %s1, ptr %t50)
  %t53 = extractvalue { i32, ptr } %t52, 1
  %t54 = extractvalue { i32, ptr } %t52, 0
  store i32 %t54, ptr %l30
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb17, label %ok.56, !prof !99
ok.56:
  store ptr %t53, ptr %l29
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l29, !tbaa !29
  store ptr %t57, ptr %l26, !tbaa !29
  br label %bb19
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  br label %bb2
bb21:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 12
  %t62 = call { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t60)
  %t63 = extractvalue { i32, %"compiler/lower:level" } %t62, 1
  %t64 = extractvalue { i32, %"compiler/lower:level" } %t62, 0
  store i32 %t64, ptr %l35
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb23, label %ok.66, !prof !99
ok.66:
  store %"compiler/lower:level" %t63, ptr %l34
  br label %bb22
bb22:
  %t67 = load %"compiler/lower:level", ptr %l34
  store %"compiler/lower:level" %t67, ptr %l31
  br label %bb25
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l12 = alloca %"compiler/mir:Range"
  %l15 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t12 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  store i32 %t2, ptr %l6, !tbaa !23
  store i32 %a1, ptr %l7
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %l8, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 3
  %t11 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %t7, { i64, ptr } %a3)
  store %"compiler/mir:Range" %t11, ptr %l12
  br label %bb1
bb1:
  store { i64, [15 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [15 x i64] }, ptr %t12, i32 0, i32 0
  store i64 3, ptr %t13
  %t14 = load i32, ptr %l7, !range !{i32 0, i32 52}
  %t15 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t14, 0
  %t16 = load i32, ptr %l8, !tbaa !23
  %t17 = insertvalue { i32, i32, %"compiler/mir:Range" } %t15, i32 %t16, 1
  %t18 = load %"compiler/mir:Range", ptr %l12
  %t19 = insertvalue { i32, i32, %"compiler/mir:Range" } %t17, %"compiler/mir:Range" %t18, 2
  %t20 = getelementptr { i64, [15 x i64] }, ptr %t12, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t19, ptr %t20
  %t21 = load { i64, [15 x i64] }, ptr %t12
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t24 = load i32, ptr %l6, !tbaa !23
  %t27 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t23, i32 %t24, { i64, [15 x i64] } %t21, %"compiler/source:Span" %a4)
  store { i64, [4 x i64] } %t27, ptr %l15
  br label %bb2
bb2:
  %t28 = load { i64, [4 x i64] }, ptr %l15
  store { i64, [4 x i64] } %t28, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eprimChecks(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l18 = alloca { i64, [4 x i64] }
  %l20 = alloca { i64, [4 x i64] }
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l28 = alloca i32
  %l29 = alloca i32
  %l32 = alloca i32
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l42 = alloca i32
  %l43 = alloca i32
  %l47 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i64
  %l56 = alloca i1
  %l59 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, [4 x i64] }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i32
  %l72 = alloca { i64, [4 x i64] }
  %l73 = alloca i32
  %l76 = alloca i64
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, [4 x i64] }
  %l89 = alloca i1
  %l90 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i1
  %l97 = alloca i1
  %l100 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca { i64, ptr }
  %l105 = alloca i32
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l112 = alloca { i64, [4 x i64] }
  %l113 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca i32
  %l116 = alloca { i64, [4 x i64] }
  %l117 = alloca { i64, ptr }
  %l119 = alloca i32
  %l121 = alloca { i64, ptr }
  %l123 = alloca { i64, [4 x i64] }
  %l130 = alloca ptr
  %l131 = alloca i32
  %l132 = alloca i32
  %l133 = alloca i32
  %l137 = alloca %"compiler/mir:Range"
  %l140 = alloca { i64, [4 x i64] }
  %l149 = alloca i1
  %l155 = alloca { i64, [4 x i64] }
  %l161 = alloca { i64, ptr }
  %l163 = alloca { i64, [4 x i64] }
  %l170 = alloca { i64, ptr }
  %l172 = alloca { i64, [4 x i64] }
  %l173 = alloca ptr
  %l174 = alloca i32
  %l175 = alloca i32
  %l176 = alloca { i64, [4 x i64] }
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, [4 x i64] }
  %l185 = alloca { i64, ptr }
  %l187 = alloca { i64, [4 x i64] }
  %l190 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i32
  %l193 = alloca { i64, ptr }
  %l195 = alloca i32
  %l196 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l202 = alloca { i64, [4 x i64] }
  %l203 = alloca ptr
  %l204 = alloca i32
  %l205 = alloca i32
  %l206 = alloca { i64, [4 x i64] }
  %l207 = alloca { i64, ptr }
  %l209 = alloca i32
  %l211 = alloca { i64, ptr }
  %l213 = alloca { i64, [4 x i64] }
  %l214 = alloca ptr
  %l215 = alloca i32
  %l216 = alloca i32
  %l217 = alloca { i64, [4 x i64] }
  %l222 = alloca { i64, ptr }
  %l224 = alloca { i64, [4 x i64] }
  %l225 = alloca { i64, ptr }
  %l227 = alloca { i64, [4 x i64] }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t111 = alloca { i64, [4 x i64] }, align 8
  %t229 = alloca { i64, [4 x i64] }, align 8
  %t279 = alloca { i64, [15 x i64] }, align 8
  %t349 = alloca { i64, [4 x i64] }, align 8
  %t476 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i32 %a5, ptr %l5
  store %"compiler/source:Span" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l7, !tbaa !29
  store ptr %t6, ptr %l25, !tbaa !29
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t7, ptr %l26, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr ptr, ptr %t9, i64 0
  %t11 = load ptr, ptr %t10, !tbaa !39
  %t13 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t11)
  store i32 %t13, ptr %l28
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l25, !tbaa !29
  %t15 = load i32, ptr %l28, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t16, ptr %l29
  br label %bb2
bb2:
  %t17 = load i32, ptr %l29, !tbaa !23
  store i32 %t17, ptr %l8, !tbaa !23
  %t18 = load ptr, ptr %l7, !tbaa !29
  %t19 = load i32, ptr %l5, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l32
  br label %bb3
bb3:
  %t23 = load i32, ptr %l32, !tbaa !23
  store i32 %t23, ptr %l9, !tbaa !23
  store i32 2, ptr %l10
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t27 = trunc i64 20 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb72
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l5, !tbaa !23
  %t34 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l38
  br label %bb7
bb7:
  %t35 = load i32, ptr %l38, !tbaa !23
  store i32 %t35, ptr %l11, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l39, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t37, ptr %l40, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 0
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t43 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t41)
  store i32 %t43, ptr %l42
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l39, !tbaa !29
  %t45 = load i32, ptr %l42, !tbaa !23
  %t46 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t46, ptr %l43
  br label %bb9
bb9:
  %t47 = load i32, ptr %l43, !tbaa !23
  store i32 %t47, ptr %l12, !tbaa !23
  %t48 = load i32, ptr %l11, !tbaa !23
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t52 = icmp ne i32 %t48, %t49
  br i1 %t52, label %bb10, label %bb11
bb10:
  %t54 = load i32, ptr %l12, !tbaa !23
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t58 = icmp ne i32 %t54, %t55
  store i1 %t58, ptr %l47, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb12
bb12:
  %t60 = load i1, ptr %l47, !tbaa !21
  br i1 %t60, label %bb13, label %bb14
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l11, !tbaa !23
  %t65 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t61, i32 %t62)
  store i64 %t65, ptr %l54
  br label %bb15
bb14:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb16
bb15:
  %t66 = load i64, ptr %l54, !tbaa !24
  %t67 = icmp sge i64 %t66, 0
  store i1 %t67, ptr %l51, !tbaa !21
  br label %bb16
bb16:
  %t69 = load i1, ptr %l51, !tbaa !21
  br i1 %t69, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l12, !tbaa !23
  %t74 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t70, i32 %t71)
  store i64 %t74, ptr %l59
  br label %bb19
bb18:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb20
bb19:
  %t75 = load i64, ptr %l59, !tbaa !24
  %t76 = icmp slt i64 %t75, 0
  store i1 %t76, ptr %l56, !tbaa !21
  br label %bb20
bb20:
  %t78 = load i1, ptr %l56, !tbaa !21
  br i1 %t78, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s2
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t81, ptr %l64, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t83, i64 0
  %t85 = load { i64, [4 x i64] }, ptr %t84
  %t86 = mul i64 1, 40
  %t87 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 1, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l66, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t92, i64 0
  store { i64, [4 x i64] } %t85, ptr %t93
  %t94 = load %"compiler/source:Span", ptr %l6
  %t98 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t100 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t79, i32 22, i32 %t80, { i64, ptr } %t98, %"compiler/source:Span" %t94)
  store { i64, [4 x i64] } %t100, ptr %l68
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t101 = load { i64, [4 x i64] }, ptr %l68
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l69, !tbaa !29
  store i32 13, ptr %l70
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t103, ptr %l71, !tbaa !23
  store { i64, [4 x i64] } %t101, ptr %l72
  %t105 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t105, ptr %l73, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l11, !tbaa !23
  %t110 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t106, i32 %t107)
  store i64 %t110, ptr %l76
  br label %bb24
bb24:
  store { i64, [4 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 0
  store i64 2, ptr %t112
  %t113 = load i32, ptr %l73, !tbaa !23
  %t114 = insertvalue { i32, i64 } undef, i32 %t113, 0
  %t115 = load i64, ptr %l76, !tbaa !24
  %t116 = insertvalue { i32, i64 } %t114, i64 %t115, 1
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  store { i32, i64 } %t116, ptr %t117
  %t118 = load { i64, [4 x i64] }, ptr %t111
  %t119 = mul i64 2, 40
  %t120 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 2, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l78, !tbaa !27
  %t123 = load { i64, [4 x i64] }, ptr %l72
  %t124 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t125, i64 0
  store { i64, [4 x i64] } %t123, ptr %t126
  %t128 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t129, i64 1
  store { i64, [4 x i64] } %t118, ptr %t130
  %t131 = load %"compiler/source:Span", ptr %l6
  %t132 = load ptr, ptr %l69, !tbaa !29
  %t133 = load i32, ptr %l70, !range !{i32 0, i32 52}
  %t134 = load i32, ptr %l71, !tbaa !23
  %t135 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t137 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t132, i32 %t133, i32 %t134, { i64, ptr } %t135, %"compiler/source:Span" %t131)
  store { i64, [4 x i64] } %t137, ptr %l80
  br label %bb25
bb25:
  %t138 = load { i64, [4 x i64] }, ptr %l80
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t142 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t143 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t139, { i64, [4 x i64] } %t138, i32 %t141, i32 11, i64 %t142, %"compiler/source:Span" %t143)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb27:
  %t150 = load ptr, ptr %l7, !tbaa !29
  %t151 = load i32, ptr %l9, !tbaa !23
  %t154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t150, i32 %t151)
  store i1 %t154, ptr %l89
  br label %bb28
bb28:
  %t155 = load i1, ptr %l89, !tbaa !21
  br i1 %t155, label %bb29, label %bb30
bb29:
  %t156 = load ptr, ptr %l7, !tbaa !29
  %t157 = load i32, ptr %l8, !tbaa !23
  %t160 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t156, i32 %t157)
  store i1 %t160, ptr %l93
  br label %bb31
bb30:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb36
bb31:
  %t161 = load i1, ptr %l93, !tbaa !21
  br i1 %t161, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb35
bb33:
  %t162 = load ptr, ptr %l7, !tbaa !29
  %t163 = load i32, ptr %l8, !tbaa !23
  %t166 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t162, i32 %t163)
  store i1 %t166, ptr %l97
  br label %bb34
bb34:
  %t167 = load i1, ptr %l97, !tbaa !21
  store i1 %t167, ptr %l94, !tbaa !21
  br label %bb35
bb35:
  %t168 = load i1, ptr %l94, !tbaa !21
  store i1 %t168, ptr %l90, !tbaa !21
  br label %bb36
bb36:
  %t169 = load i1, ptr %l90, !tbaa !21
  br i1 %t169, label %bb37, label %bb38
bb37:
  %t170 = load ptr, ptr %l7, !tbaa !29
  %t171 = load i32, ptr %l8, !tbaa !23
  %t174 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t170, i32 %t171)
  store i1 %t174, ptr %l100
  br label %bb39
bb38:
  %t175 = load ptr, ptr %l7, !tbaa !29
  %t176 = load i32, ptr %l9, !tbaa !23
  %t179 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t175, i32 %t176)
  store i1 %t179, ptr %l149
  br label %bb51
bb39:
  %t180 = load i1, ptr %l100, !tbaa !21
  br i1 %t180, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s4
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l101, !tbaa !29
  store i32 4, ptr %l102
  %t182 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t182, ptr %l103, !tbaa !27
  %t183 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr ptr, ptr %t184, i64 0
  %t186 = load ptr, ptr %t185, !tbaa !39
  %t188 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t186)
  store i32 %t188, ptr %l105
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t189 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t189, ptr %l106, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t191, i64 0
  %t193 = load { i64, [4 x i64] }, ptr %t192
  %t194 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t194, ptr %l108, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t196, i64 0
  %t198 = load { i64, [4 x i64] }, ptr %t197
  %t199 = mul i64 2, 40
  %t200 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t199)
  %t201 = insertvalue { i64, ptr } undef, i64 2, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l110, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t205, i64 0
  store { i64, [4 x i64] } %t193, ptr %t206
  %t208 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t209, i64 1
  store { i64, [4 x i64] } %t198, ptr %t210
  %t211 = load %"compiler/source:Span", ptr %l6
  %t212 = load ptr, ptr %l101, !tbaa !29
  %t213 = load i32, ptr %l102, !range !{i32 0, i32 52}
  %t214 = load i32, ptr %l105, !tbaa !23
  %t215 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t217 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s4, ptr %t212, i32 %t213, i32 %t214, { i64, ptr } %t215, %"compiler/source:Span" %t211)
  store { i64, [4 x i64] } %t217, ptr %l112
  br label %bb43
bb43:
  %t218 = load { i64, [4 x i64] }, ptr %l112
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l113, !tbaa !29
  store i32 13, ptr %l114
  %t220 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t220, ptr %l115, !tbaa !23
  store { i64, [4 x i64] } %t218, ptr %l116
  %t222 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t222, ptr %l117, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr ptr, ptr %t224, i64 0
  %t226 = load ptr, ptr %t225, !tbaa !39
  %t228 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t226)
  store i32 %t228, ptr %l119
  br label %bb44
bb44:
  store { i64, [4 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [4 x i64] }, ptr %t229, i32 0, i32 0
  store i64 2, ptr %t230
  %t231 = load i32, ptr %l119, !tbaa !23
  %t232 = insertvalue { i32, i64 } undef, i32 %t231, 0
  %t233 = insertvalue { i32, i64 } %t232, i64 0, 1
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t229, i32 0, i32 1
  store { i32, i64 } %t233, ptr %t234
  %t235 = load { i64, [4 x i64] }, ptr %t229
  %t236 = mul i64 2, 40
  %t237 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 2, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l121, !tbaa !27
  %t240 = load { i64, [4 x i64] }, ptr %l116
  %t241 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t242, i64 0
  store { i64, [4 x i64] } %t240, ptr %t243
  %t245 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t246, i64 1
  store { i64, [4 x i64] } %t235, ptr %t247
  %t248 = load %"compiler/source:Span", ptr %l6
  %t249 = load ptr, ptr %l113, !tbaa !29
  %t250 = load i32, ptr %l114, !range !{i32 0, i32 52}
  %t251 = load i32, ptr %l115, !tbaa !23
  %t252 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t254 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s4, ptr %t249, i32 %t250, i32 %t251, { i64, ptr } %t252, %"compiler/source:Span" %t248)
  store { i64, [4 x i64] } %t254, ptr %l123
  br label %bb45
bb45:
  %t255 = load { i64, [4 x i64] }, ptr %l123
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t259 = load i32, ptr %l10, !range !{i32 0, i32 16}
  %t260 = load i64, ptr @G_2ecompiler_2flower_2eInvalid, !tbaa !24
  %t261 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t256, { i64, [4 x i64] } %t255, i32 %t258, i32 %t259, i64 %t260, %"compiler/source:Span" %t261)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s4)
  br label %bb47
bb47:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l130, !tbaa !29
  %t269 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t269, ptr %l131, !tbaa !23
  %t270 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t270, ptr %l132
  %t271 = load i32, ptr %l5, !tbaa !23
  store i32 %t271, ptr %l133, !tbaa !23
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/lower:lowering", ptr %t272, i32 0, i32 3
  %t275 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t278 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %t274, { i64, ptr } %t275)
  store %"compiler/mir:Range" %t278, ptr %l137
  br label %bb48
bb48:
  store { i64, [15 x i64] } zeroinitializer, ptr %t279
  %t280 = getelementptr { i64, [15 x i64] }, ptr %t279, i32 0, i32 0
  store i64 4, ptr %t280
  %t281 = load i32, ptr %l132, !range !{i32 0, i32 52}
  %t282 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t281, 0
  %t283 = load i32, ptr %l133, !tbaa !23
  %t284 = insertvalue { i32, i32, %"compiler/mir:Range" } %t282, i32 %t283, 1
  %t285 = load %"compiler/mir:Range", ptr %l137
  %t286 = insertvalue { i32, i32, %"compiler/mir:Range" } %t284, %"compiler/mir:Range" %t285, 2
  %t287 = getelementptr { i64, [15 x i64] }, ptr %t279, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t286, ptr %t287
  %t288 = load { i64, [15 x i64] }, ptr %t279
  %t289 = load %"compiler/source:Span", ptr %l6
  %t290 = load ptr, ptr %l130, !tbaa !29
  %t291 = load i32, ptr %l131, !tbaa !23
  %t294 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t290, i32 %t291, { i64, [15 x i64] } %t288, %"compiler/source:Span" %t289)
  store { i64, [4 x i64] } %t294, ptr %l140
  br label %bb49
bb49:
  %t295 = load { i64, [4 x i64] }, ptr %l140
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t299 = load i32, ptr %l10, !range !{i32 0, i32 16}
  %t300 = load i64, ptr @G_2ecompiler_2flower_2eOverflow, !tbaa !24
  %t301 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2efails(ptr %v0, ptr %t296, { i64, [4 x i64] } %t295, i32 %t298, i32 %t299, i64 %t300, %"compiler/source:Span" %t301)
  br label %bb50
bb50:
  br label %bb71
bb51:
  %t308 = load i1, ptr %l149, !tbaa !21
  br i1 %t308, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s6
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t311 = load i32, ptr %l5, !tbaa !23
  %t312 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t313 = load %"compiler/source:Span", ptr %l6
  %t319 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %t309, i32 %t310, i32 %t311, { i64, ptr } %t312, %"compiler/source:Span" %t313)
  store { i64, [4 x i64] } %t319, ptr %l155
  br label %bb54
bb53:
  br label %bb70
bb54:
  %t320 = load { i64, [4 x i64] }, ptr %l155
  store { i64, [4 x i64] } %t320, ptr %l18
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load i32, ptr %l5, !tbaa !23
  %t323 = load { i64, [4 x i64] }, ptr %l18
  %t324 = load { i64, [4 x i64] }, ptr %l18
  %t325 = mul i64 2, 40
  %t326 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t325)
  %t327 = insertvalue { i64, ptr } undef, i64 2, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t326, 1
  store { i64, ptr } %t328, ptr %l161, !tbaa !27
  %t330 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr { i64, [4 x i64] }, ptr %t331, i64 0
  store { i64, [4 x i64] } %t323, ptr %t332
  %t334 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr { i64, [4 x i64] }, ptr %t335, i64 1
  store { i64, [4 x i64] } %t324, ptr %t336
  %t337 = load %"compiler/source:Span", ptr %l6
  %t341 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t343 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s6, ptr %t321, i32 4, i32 %t322, { i64, ptr } %t341, %"compiler/source:Span" %t337)
  store { i64, [4 x i64] } %t343, ptr %l163
  br label %bb55
bb55:
  %t344 = load { i64, [4 x i64] }, ptr %l163
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t348 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t349
  %t350 = getelementptr { i64, [4 x i64] }, ptr %t349, i32 0, i32 0
  store i64 2, ptr %t350
  %t352 = insertvalue { i32, i64 } undef, i32 %t348, 0
  %t353 = insertvalue { i32, i64 } %t352, i64 0, 1
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t349, i32 0, i32 1
  store { i32, i64 } %t353, ptr %t354
  %t355 = load { i64, [4 x i64] }, ptr %t349
  %t356 = mul i64 2, 40
  %t357 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t356)
  %t358 = insertvalue { i64, ptr } undef, i64 2, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t357, 1
  store { i64, ptr } %t359, ptr %l170, !tbaa !27
  %t361 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = getelementptr { i64, [4 x i64] }, ptr %t362, i64 0
  store { i64, [4 x i64] } %t344, ptr %t363
  %t365 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t366, i64 1
  store { i64, [4 x i64] } %t355, ptr %t367
  %t368 = load %"compiler/source:Span", ptr %l6
  %t372 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t374 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s6, ptr %t345, i32 13, i32 %t346, { i64, ptr } %t372, %"compiler/source:Span" %t368)
  store { i64, [4 x i64] } %t374, ptr %l172
  br label %bb56
bb56:
  %t375 = load { i64, [4 x i64] }, ptr %l172
  store { i64, [4 x i64] } %t375, ptr %l20
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l173, !tbaa !29
  store i32 11, ptr %l174
  %t377 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t377, ptr %l175, !tbaa !23
  %t378 = load { i64, [4 x i64] }, ptr %l20
  store { i64, [4 x i64] } %t378, ptr %l176
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t381 = load { i64, [4 x i64] }, ptr %l18
  %t382 = load { i64, [4 x i64] }, ptr %l18
  %t383 = mul i64 2, 40
  %t384 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t383)
  %t385 = insertvalue { i64, ptr } undef, i64 2, 0
  %t386 = insertvalue { i64, ptr } %t385, ptr %t384, 1
  store { i64, ptr } %t386, ptr %l182, !tbaa !27
  %t388 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = getelementptr { i64, [4 x i64] }, ptr %t389, i64 0
  store { i64, [4 x i64] } %t381, ptr %t390
  %t392 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !27
  %t394 = getelementptr { i64, [4 x i64] }, ptr %t393, i64 1
  store { i64, [4 x i64] } %t382, ptr %t394
  %t395 = load %"compiler/source:Span", ptr %l6
  %t399 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t401 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s6, ptr %t379, i32 14, i32 %t380, { i64, ptr } %t399, %"compiler/source:Span" %t395)
  store { i64, [4 x i64] } %t401, ptr %l184
  br label %bb57
bb57:
  %t402 = mul i64 2, 40
  %t403 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t402)
  %t404 = insertvalue { i64, ptr } undef, i64 2, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  store { i64, ptr } %t405, ptr %l185, !tbaa !27
  %t406 = load { i64, [4 x i64] }, ptr %l176
  %t407 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !27
  %t409 = getelementptr { i64, [4 x i64] }, ptr %t408, i64 0
  store { i64, [4 x i64] } %t406, ptr %t409
  %t410 = load { i64, [4 x i64] }, ptr %l184
  %t411 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !27
  %t413 = getelementptr { i64, [4 x i64] }, ptr %t412, i64 1
  store { i64, [4 x i64] } %t410, ptr %t413
  %t414 = load %"compiler/source:Span", ptr %l6
  %t415 = load ptr, ptr %l173, !tbaa !29
  %t416 = load i32, ptr %l174, !range !{i32 0, i32 52}
  %t417 = load i32, ptr %l175, !tbaa !23
  %t418 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t420 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s6, ptr %t415, i32 %t416, i32 %t417, { i64, ptr } %t418, %"compiler/source:Span" %t414)
  store { i64, [4 x i64] } %t420, ptr %l187
  br label %bb58
bb58:
  %t421 = load { i64, [4 x i64] }, ptr %l187
  store { i64, [4 x i64] } %t421, ptr %l20
  %t422 = load ptr, ptr %l7, !tbaa !29
  %t423 = load i32, ptr %l8, !tbaa !23
  %t426 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t422, i32 %t423)
  store i1 %t426, ptr %l190
  br label %bb59
bb59:
  %t427 = load i1, ptr %l190, !tbaa !21
  br i1 %t427, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s7
  %t428 = load ptr, ptr %l0, !tbaa !29
  store ptr %t428, ptr %l191, !tbaa !29
  store i32 4, ptr %l192
  %t429 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t429, ptr %l193, !tbaa !27
  %t430 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = getelementptr ptr, ptr %t431, i64 0
  %t433 = load ptr, ptr %t432, !tbaa !39
  %t435 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t433)
  store i32 %t435, ptr %l195
  br label %bb62
bb61:
  br label %bb68
bb62:
  %t436 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t436, ptr %l196, !tbaa !27
  %t437 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t438 = load ptr, ptr %t437, !tbaa !27
  %t439 = getelementptr { i64, [4 x i64] }, ptr %t438, i64 0
  %t440 = load { i64, [4 x i64] }, ptr %t439
  %t441 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t441, ptr %l198, !tbaa !27
  %t442 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !27
  %t444 = getelementptr { i64, [4 x i64] }, ptr %t443, i64 0
  %t445 = load { i64, [4 x i64] }, ptr %t444
  %t446 = mul i64 2, 40
  %t447 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t446)
  %t448 = insertvalue { i64, ptr } undef, i64 2, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %t447, 1
  store { i64, ptr } %t449, ptr %l200, !tbaa !27
  %t451 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !27
  %t453 = getelementptr { i64, [4 x i64] }, ptr %t452, i64 0
  store { i64, [4 x i64] } %t440, ptr %t453
  %t455 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !27
  %t457 = getelementptr { i64, [4 x i64] }, ptr %t456, i64 1
  store { i64, [4 x i64] } %t445, ptr %t457
  %t458 = load %"compiler/source:Span", ptr %l6
  %t459 = load ptr, ptr %l191, !tbaa !29
  %t460 = load i32, ptr %l192, !range !{i32 0, i32 52}
  %t461 = load i32, ptr %l195, !tbaa !23
  %t462 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t464 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t459, i32 %t460, i32 %t461, { i64, ptr } %t462, %"compiler/source:Span" %t458)
  store { i64, [4 x i64] } %t464, ptr %l202
  br label %bb63
bb63:
  %t465 = load { i64, [4 x i64] }, ptr %l202
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l203, !tbaa !29
  store i32 13, ptr %l204
  %t467 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t467, ptr %l205, !tbaa !23
  store { i64, [4 x i64] } %t465, ptr %l206
  %t469 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t469, ptr %l207, !tbaa !27
  %t470 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t471 = load ptr, ptr %t470, !tbaa !27
  %t472 = getelementptr ptr, ptr %t471, i64 0
  %t473 = load ptr, ptr %t472, !tbaa !39
  %t475 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t473)
  store i32 %t475, ptr %l209
  br label %bb64
bb64:
  store { i64, [4 x i64] } zeroinitializer, ptr %t476
  %t477 = getelementptr { i64, [4 x i64] }, ptr %t476, i32 0, i32 0
  store i64 2, ptr %t477
  %t478 = load i32, ptr %l209, !tbaa !23
  %t479 = insertvalue { i32, i64 } undef, i32 %t478, 0
  %t480 = insertvalue { i32, i64 } %t479, i64 0, 1
  %t481 = getelementptr { i64, [4 x i64] }, ptr %t476, i32 0, i32 1
  store { i32, i64 } %t480, ptr %t481
  %t482 = load { i64, [4 x i64] }, ptr %t476
  %t483 = mul i64 2, 40
  %t484 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t483)
  %t485 = insertvalue { i64, ptr } undef, i64 2, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t484, 1
  store { i64, ptr } %t486, ptr %l211, !tbaa !27
  %t487 = load { i64, [4 x i64] }, ptr %l206
  %t488 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr { i64, [4 x i64] }, ptr %t489, i64 0
  store { i64, [4 x i64] } %t487, ptr %t490
  %t492 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !27
  %t494 = getelementptr { i64, [4 x i64] }, ptr %t493, i64 1
  store { i64, [4 x i64] } %t482, ptr %t494
  %t495 = load %"compiler/source:Span", ptr %l6
  %t496 = load ptr, ptr %l203, !tbaa !29
  %t497 = load i32, ptr %l204, !range !{i32 0, i32 52}
  %t498 = load i32, ptr %l205, !tbaa !23
  %t499 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t501 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t496, i32 %t497, i32 %t498, { i64, ptr } %t499, %"compiler/source:Span" %t495)
  store { i64, [4 x i64] } %t501, ptr %l213
  br label %bb65
bb65:
  %t502 = load { i64, [4 x i64] }, ptr %l213
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l214, !tbaa !29
  store i32 11, ptr %l215
  %t504 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t504, ptr %l216, !tbaa !23
  %t505 = load { i64, [4 x i64] }, ptr %l20
  store { i64, [4 x i64] } %t505, ptr %l217
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t507 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t509 = mul i64 1, 40
  %t510 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t509)
  %t511 = insertvalue { i64, ptr } undef, i64 1, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  store { i64, ptr } %t512, ptr %l222, !tbaa !27
  %t514 = getelementptr { i64, ptr }, ptr %l222, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !27
  %t516 = getelementptr { i64, [4 x i64] }, ptr %t515, i64 0
  store { i64, [4 x i64] } %t502, ptr %t516
  %t517 = load %"compiler/source:Span", ptr %l6
  %t521 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t523 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t506, i32 2, i32 %t507, { i64, ptr } %t521, %"compiler/source:Span" %t517)
  store { i64, [4 x i64] } %t523, ptr %l224
  br label %bb66
bb66:
  %t524 = mul i64 2, 40
  %t525 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t524)
  %t526 = insertvalue { i64, ptr } undef, i64 2, 0
  %t527 = insertvalue { i64, ptr } %t526, ptr %t525, 1
  store { i64, ptr } %t527, ptr %l225, !tbaa !27
  %t528 = load { i64, [4 x i64] }, ptr %l217
  %t529 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !27
  %t531 = getelementptr { i64, [4 x i64] }, ptr %t530, i64 0
  store { i64, [4 x i64] } %t528, ptr %t531
  %t532 = load { i64, [4 x i64] }, ptr %l224
  %t533 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t534 = load ptr, ptr %t533, !tbaa !27
  %t535 = getelementptr { i64, [4 x i64] }, ptr %t534, i64 1
  store { i64, [4 x i64] } %t532, ptr %t535
  %t536 = load %"compiler/source:Span", ptr %l6
  %t537 = load ptr, ptr %l214, !tbaa !29
  %t538 = load i32, ptr %l215, !range !{i32 0, i32 52}
  %t539 = load i32, ptr %l216, !tbaa !23
  %t540 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t542 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t537, i32 %t538, i32 %t539, { i64, ptr } %t540, %"compiler/source:Span" %t536)
  store { i64, [4 x i64] } %t542, ptr %l227
  br label %bb67
bb67:
  %t543 = load { i64, [4 x i64] }, ptr %l227
  store { i64, [4 x i64] } %t543, ptr %l20
  call void @__olang_scope_close(ptr %s7)
  br label %bb68
bb68:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = load { i64, [4 x i64] }, ptr %l20
  %t546 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t547 = load i32, ptr %l10, !range !{i32 0, i32 16}
  %t548 = load i64, ptr @G_2ecompiler_2flower_2eOverflow, !tbaa !24
  %t549 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t544, { i64, [4 x i64] } %t545, i32 %t546, i32 %t547, i64 %t548, %"compiler/source:Span" %t549)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s6)
  br label %bb70
bb70:
  br label %bb71
bb71:
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
  call void @__olang_check_failed(ptr @olang_loc_13d147f9f542fef2_ebbeb5a175072836)
  unreachable
bb77:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietNested(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l59 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l65 = alloca i1
  %l69 = alloca i1
  %l70 = alloca ptr
  %l76 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca i1
  %l96 = alloca i1
  %l97 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca i1
  %l120 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l132 = alloca i1
  %l133 = alloca i1
  %l136 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t17 = load ptr, ptr %l19, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 17}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l20, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t36, ptr %l28
  br label %bb10
bb10:
  %t37 = load i1, ptr %l28, !tbaa !21
  store i1 %t37, ptr %l12, !tbaa !21
  br label %bb101
bb11:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t39 = load ptr, ptr %l29, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l29, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 17}
  %t45 = icmp eq i64 %t43, 1
  store i1 %t45, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l30, !tbaa !21
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l3, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [3 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb26
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t63 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietStore(ptr %v0, ptr %v1, ptr %t59, ptr %t60)
  store i1 %t63, ptr %l39
  br label %bb17
bb17:
  %t64 = load i1, ptr %l39, !tbaa !21
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t69 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  store i1 %t69, ptr %l43
  br label %bb20
bb19:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb21
bb20:
  %t70 = load i1, ptr %l43, !tbaa !21
  store i1 %t70, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t71 = load i1, ptr %l40, !tbaa !21
  br i1 %t71, label %bb22, label %bb23
bb22:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t77 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t72, ptr %t73)
  store i1 %t77, ptr %l48
  br label %bb24
bb23:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb25
bb24:
  %t78 = load i1, ptr %l48, !tbaa !21
  store i1 %t78, ptr %l44, !tbaa !21
  br label %bb25
bb25:
  %t79 = load i1, ptr %l44, !tbaa !21
  store i1 %t79, ptr %l12, !tbaa !21
  br label %bb101
bb26:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t81 = load ptr, ptr %l49, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb27, label %bb28
bb27:
  %t84 = load ptr, ptr %l49, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 17}
  %t87 = icmp eq i64 %t85, 3
  store i1 %t87, ptr %l50, !tbaa !21
  br label %bb28
bb28:
  %t88 = load i1, ptr %l50, !tbaa !21
  br i1 %t88, label %bb29, label %bb30
bb29:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb47
bb31:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t98 = getelementptr %"compiler/typed:If", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t103 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t95, ptr %t99)
  store i1 %t103, ptr %l59
  br label %bb32
bb32:
  %t104 = load i1, ptr %l59, !tbaa !21
  br i1 %t104, label %bb33, label %bb34
bb33:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l5, !tbaa !29
  %t108 = getelementptr %"compiler/typed:If", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t112 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %t105, ptr %t109)
  store i1 %t112, ptr %l64
  br label %bb35
bb34:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb36
bb35:
  %t113 = load i1, ptr %l64, !tbaa !21
  store i1 %t113, ptr %l60, !tbaa !21
  br label %bb36
bb36:
  %t114 = load i1, ptr %l60, !tbaa !21
  br i1 %t114, label %bb37, label %bb38
bb37:
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/typed:If", ptr %t115, i32 0, i32 2
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  br i1 %t120, label %bb39, label %bb40
bb38:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb46
bb39:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb45
bb40:
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l70, !tbaa !29
  %t123 = load ptr, ptr %l5, !tbaa !29
  %t125 = getelementptr %"compiler/typed:If", ptr %t123, i32 0, i32 2
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = icmp eq ptr %t126, null
  br i1 %t128, label %bb41, label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_ea72cddf05e42cbb_238677819f048e67)
  unreachable
bb42:
  br label %bb43
bb43:
  %t130 = load ptr, ptr %l5, !tbaa !29
  %t132 = getelementptr %"compiler/typed:If", ptr %t130, i32 0, i32 2
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t134 = load ptr, ptr %l70, !tbaa !29
  %t136 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %t134, ptr %t133)
  store i1 %t136, ptr %l76
  br label %bb44
bb44:
  %t137 = load i1, ptr %l76, !tbaa !21
  store i1 %t137, ptr %l69, !tbaa !21
  br label %bb45
bb45:
  %t138 = load i1, ptr %l69, !tbaa !21
  store i1 %t138, ptr %l65, !tbaa !21
  br label %bb46
bb46:
  %t139 = load i1, ptr %l65, !tbaa !21
  store i1 %t139, ptr %l12, !tbaa !21
  br label %bb101
bb47:
  %t140 = load ptr, ptr %l1, !tbaa !29
  store ptr %t140, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t141 = load ptr, ptr %l77, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb48, label %bb49
bb48:
  %t144 = load ptr, ptr %l77, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 17}
  %t147 = icmp eq i64 %t145, 11
  store i1 %t147, ptr %l78, !tbaa !21
  br label %bb49
bb49:
  %t148 = load i1, ptr %l78, !tbaa !21
  br i1 %t148, label %bb50, label %bb51
bb50:
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", ptr }, ptr %t151, i32 0, i32 1
  %t153 = load ptr, ptr %t152
  store ptr %t153, ptr %l6, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l6, !tbaa !29
  %t159 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %t155, ptr %t156)
  store i1 %t159, ptr %l85
  br label %bb53
bb53:
  %t160 = load i1, ptr %l85, !tbaa !21
  store i1 %t160, ptr %l12, !tbaa !21
  br label %bb101
bb54:
  %t161 = load ptr, ptr %l1, !tbaa !29
  store ptr %t161, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t162 = load ptr, ptr %l86, !tbaa !29
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %bb55, label %bb56
bb55:
  %t165 = load ptr, ptr %l86, !tbaa !29
  %t166 = load i64, ptr %t165, !range !{i64 0, i64 17}
  %t168 = icmp eq i64 %t166, 4
  store i1 %t168, ptr %l87, !tbaa !21
  br label %bb56
bb56:
  %t169 = load i1, ptr %l87, !tbaa !21
  br i1 %t169, label %bb57, label %bb58
bb57:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr { i64, [3 x i64] }, ptr %t170, i32 0, i32 1
  %t173 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t172, i32 0, i32 1
  %t174 = load ptr, ptr %t173
  store ptr %t174, ptr %l7, !tbaa !29
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t178, i32 0, i32 2
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l8, !tbaa !29
  br label %bb59
bb58:
  br label %bb68
bb59:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l7, !tbaa !29
  %t186 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %t182, ptr %t183)
  store i1 %t186, ptr %l96
  br label %bb60
bb60:
  %t187 = load i1, ptr %l96, !tbaa !21
  br i1 %t187, label %bb61, label %bb62
bb61:
  %t188 = load ptr, ptr %l8, !tbaa !29
  %t190 = icmp eq ptr %t188, null
  br i1 %t190, label %bb63, label %bb64
bb62:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb67
bb63:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb66
bb64:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load ptr, ptr %l8, !tbaa !29
  %t196 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %t192, ptr %t193)
  store i1 %t196, ptr %l103
  br label %bb65
bb65:
  %t197 = load i1, ptr %l103, !tbaa !21
  store i1 %t197, ptr %l100, !tbaa !21
  br label %bb66
bb66:
  %t198 = load i1, ptr %l100, !tbaa !21
  store i1 %t198, ptr %l97, !tbaa !21
  br label %bb67
bb67:
  %t199 = load i1, ptr %l97, !tbaa !21
  store i1 %t199, ptr %l12, !tbaa !21
  br label %bb101
bb68:
  %t200 = load ptr, ptr %l1, !tbaa !29
  store ptr %t200, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t201 = load ptr, ptr %l104, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb69, label %bb70
bb69:
  %t204 = load ptr, ptr %l104, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 17}
  %t207 = icmp eq i64 %t205, 5
  store i1 %t207, ptr %l105, !tbaa !21
  br label %bb70
bb70:
  %t208 = load i1, ptr %l105, !tbaa !21
  br i1 %t208, label %bb71, label %bb72
bb71:
  br label %bb77
bb72:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t210 = load ptr, ptr %l108, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb73, label %bb74
bb73:
  %t213 = load ptr, ptr %l108, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 17}
  %t216 = icmp eq i64 %t214, 7
  store i1 %t216, ptr %l109, !tbaa !21
  br label %bb74
bb74:
  %t217 = load i1, ptr %l109, !tbaa !21
  br i1 %t217, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb101
bb78:
  %t218 = load ptr, ptr %l1, !tbaa !29
  store ptr %t218, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t219 = load ptr, ptr %l112, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb79, label %bb80
bb79:
  %t222 = load ptr, ptr %l112, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 17}
  %t225 = icmp eq i64 %t223, 6
  store i1 %t225, ptr %l113, !tbaa !21
  br label %bb80
bb80:
  %t226 = load i1, ptr %l113, !tbaa !21
  br i1 %t226, label %bb81, label %bb82
bb81:
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t229 = getelementptr { i64, [3 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", ptr }, ptr %t229, i32 0, i32 1
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l9, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load ptr, ptr %l9, !tbaa !29
  %t237 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t233, ptr %t234)
  store i1 %t237, ptr %l120
  br label %bb84
bb84:
  %t238 = load i1, ptr %l120, !tbaa !21
  store i1 %t238, ptr %l12, !tbaa !21
  br label %bb101
bb85:
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t240 = load ptr, ptr %l121, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb86, label %bb87
bb86:
  %t243 = load ptr, ptr %l121, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 17}
  %t246 = icmp eq i64 %t244, 10
  store i1 %t246, ptr %l122, !tbaa !21
  br label %bb87
bb87:
  %t247 = load i1, ptr %l122, !tbaa !21
  br i1 %t247, label %bb88, label %bb89
bb88:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = getelementptr { i64, [3 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t250, i32 0, i32 1
  %t252 = load ptr, ptr %t251
  store ptr %t252, ptr %l10, !tbaa !29
  %t254 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr { i64, [3 x i64] }, ptr %t254, i32 0, i32 1
  %t257 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t256, i32 0, i32 2
  %t258 = load ptr, ptr %t257
  store ptr %t258, ptr %l11, !tbaa !29
  br label %bb90
bb89:
  br label %bb96
bb90:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load ptr, ptr %l10, !tbaa !29
  %t265 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t260, ptr %t261)
  store i1 %t265, ptr %l132
  br label %bb91
bb91:
  %t266 = load i1, ptr %l132, !tbaa !21
  br i1 %t266, label %bb92, label %bb93
bb92:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load ptr, ptr %l11, !tbaa !29
  %t271 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t267, ptr %t268)
  store i1 %t271, ptr %l136
  br label %bb94
bb93:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb95
bb94:
  %t272 = load i1, ptr %l136, !tbaa !21
  store i1 %t272, ptr %l133, !tbaa !21
  br label %bb95
bb95:
  %t273 = load i1, ptr %l133, !tbaa !21
  store i1 %t273, ptr %l12, !tbaa !21
  br label %bb101
bb96:
  br i1 true, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_fe1d0d15a7f0c4e3_7c1e48fedf91487f)
  unreachable
bb101:
  %t274 = load i1, ptr %l12, !tbaa !21
  store i1 %t274, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l23 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 2
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l6, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb8
bb7:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l12, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t34, i32 %t41)
  store i64 %t44, ptr %l23
  br label %bb12
bb11:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb12:
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = icmp sle i64 %t45, 0
  store i1 %t46, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l17, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2erunOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i1
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t7)
  store i64 %t9, ptr %l12
  br label %bb3
bb3:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = sub i64 %t10, 1
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l19
  br label %bb8
bb8:
  %t24 = load i64, ptr %l19, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t28 = load ptr, ptr %lp2
  %t33 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewaits(ptr %v0, ptr %v1, ptr %v2, ptr %t25, i64 %t26, ptr %t27, ptr %t28)
  store i1 %t33, ptr %l24
  br label %bb9
bb9:
  %t34 = load i1, ptr %l24, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t35)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t38 = load ptr, ptr %lp2
  %t39 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t38, i64 %t39)
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load ptr, ptr %lp2
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erelease(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %t42, ptr %l3, ptr %t43, ptr %t44)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = sub i64 %t49, 1
  store i64 %t51, ptr %l4, !tbaa !24
  br label %bb4
bb17:
  store ptr %l3, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb18
bb18:
  %t54 = load i64, ptr %l7, !tbaa !24
  store i64 %t54, ptr %l36, !tbaa !24
  %t55 = load ptr, ptr %l6, !tbaa !29
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t55)
  store i64 %t57, ptr %l38
  br label %bb19
bb19:
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = load i64, ptr %l38, !tbaa !24
  %t60 = icmp slt i64 %t58, %t59
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t64, i64 %t65)
  store i64 %t68, ptr %l43
  br label %bb23
bb23:
  %t69 = load i64, ptr %l43, !tbaa !24
  %t70 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t70, i64 %t69)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l7, !tbaa !24
  br label %bb18
bb26:
  %t78 = load ptr, ptr %lp2
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t78
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eselfTry(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca i1
  %l16 = alloca ptr
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 49
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Try", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Try", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3de6741a678ec223_687ea1dcbf00b0ef)
  unreachable
bb8:
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Try", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = call ptr @compiler_2flower_2eviewCallIn(ptr %v1, ptr %v1, ptr %t27)
  store ptr %t29, ptr %l16
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l16, !tbaa !29
  store ptr %t30, ptr %l2, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Call", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %t39, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 49
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = icmp eq i64 %t42, %t46
  store i1 %t49, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t51 = load i1, ptr %l20, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load i1, ptr %l15, !tbaa !21
  store i1 %t21, ptr %l6, !tbaa !21
  br label %bb33
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
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
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store i1 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l6, !tbaa !21
  br label %bb33
bb14:
  %t43 = load ptr, ptr %l1, !tbaa !29
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
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Elem", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t65 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %t58, ptr %t62)
  store i1 %t65, ptr %l34
  br label %bb20
bb20:
  %t66 = load i1, ptr %l34, !tbaa !21
  store i1 %t66, ptr %l6, !tbaa !21
  br label %bb33
bb21:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l35, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 8}
  %t74 = icmp eq i64 %t72, 5
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t75 = load i1, ptr %l36, !tbaa !21
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Payload", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t89 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %t82, ptr %t86)
  store i1 %t89, ptr %l44
  br label %bb27
bb27:
  %t90 = load i1, ptr %l44, !tbaa !21
  store i1 %t90, ptr %l6, !tbaa !21
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_31e744114bee3e3d_92a3ba9b31ef9be1)
  unreachable
bb33:
  %t91 = load i1, ptr %l6, !tbaa !21
  store i1 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l11 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l47 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i1
  %l78 = alloca { i64, ptr }
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l89 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 57
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equiet(ptr %v0, ptr %t6)
  store i1 %t8, ptr %l13
  br label %bb3
bb3:
  %t9 = load i1, ptr %l13, !tbaa !21
  store i1 %t9, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t10 = load i1, ptr %l11, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i1 %t15, ptr %l17
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t16 = load i1, ptr %l17, !tbaa !21
  store i1 %t16, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t17 = load i1, ptr %l14, !tbaa !21
  br i1 %t17, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t20 = load ptr, ptr %l20, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb12, label %bb13
bb12:
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 2
  store i1 %t26, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t27 = load i1, ptr %l21, !tbaa !21
  br i1 %t27, label %bb14, label %bb15
bb14:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t38 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableHolder(ptr %v0, ptr %v1, ptr %t34, ptr %t35)
  store i1 %t38, ptr %l28
  br label %bb17
bb17:
  %t39 = load i1, ptr %l28, !tbaa !21
  store i1 %t39, ptr %l19, !tbaa !21
  br label %bb71
bb18:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t41 = load ptr, ptr %l29, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb19, label %bb20
bb19:
  %t44 = load ptr, ptr %l29, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t48 = load i1, ptr %l30, !tbaa !21
  br i1 %t48, label %bb21, label %bb22
bb21:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t59 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  store i1 %t59, ptr %l37
  br label %bb24
bb24:
  %t60 = load i1, ptr %l37, !tbaa !21
  store i1 %t60, ptr %l19, !tbaa !21
  br label %bb71
bb25:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t62 = load ptr, ptr %l38, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb26, label %bb27
bb26:
  %t65 = load ptr, ptr %l38, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 10
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb27
bb27:
  %t69 = load i1, ptr %l39, !tbaa !21
  br i1 %t69, label %bb28, label %bb29
bb28:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Slice", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t83 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %t76, ptr %t80)
  store i1 %t83, ptr %l47
  br label %bb31
bb31:
  %t84 = load i1, ptr %l47, !tbaa !21
  store i1 %t84, ptr %l19, !tbaa !21
  br label %bb71
bb32:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t86 = load ptr, ptr %l48, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb33, label %bb34
bb33:
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 18}
  %t92 = icmp eq i64 %t90, 1
  store i1 %t92, ptr %l49, !tbaa !21
  br label %bb34
bb34:
  %t93 = load i1, ptr %l49, !tbaa !21
  br i1 %t93, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb71
bb38:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t95 = load ptr, ptr %l52, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb39, label %bb40
bb39:
  %t98 = load ptr, ptr %l52, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 18}
  %t101 = icmp eq i64 %t99, 5
  store i1 %t101, ptr %l53, !tbaa !21
  br label %bb40
bb40:
  %t102 = load i1, ptr %l53, !tbaa !21
  br i1 %t102, label %bb41, label %bb42
bb41:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l5, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Promote", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t116 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableMade(ptr %v0, ptr %v1, ptr %t109, ptr %t113)
  store i1 %t116, ptr %l61
  br label %bb44
bb44:
  %t117 = load i1, ptr %l61, !tbaa !21
  store i1 %t117, ptr %l19, !tbaa !21
  br label %bb71
bb45:
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t119 = load ptr, ptr %l62, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb46, label %bb47
bb46:
  %t122 = load ptr, ptr %l62, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 18}
  %t125 = icmp eq i64 %t123, 9
  store i1 %t125, ptr %l63, !tbaa !21
  br label %bb47
bb47:
  %t126 = load i1, ptr %l63, !tbaa !21
  br i1 %t126, label %bb48, label %bb49
bb48:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t129, i32 0, i32 2
  %t131 = load i32, ptr %t130, !range !{i32 0, i32 52}
  store i32 %t131, ptr %l6
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [5 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t135, i32 0, i32 4
  %t137 = load { i64, ptr }, ptr %t136
  store { i64, ptr } %t137, ptr %l7, !tbaa !27
  br label %bb50
bb49:
  br label %bb59
bb50:
  %t139 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t141 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t139)
  store i1 %t141, ptr %l71
  br label %bb51
bb51:
  %t142 = load i1, ptr %l71, !tbaa !21
  br i1 %t142, label %bb52, label %bb53
bb52:
  %t143 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t147 = icmp sgt i64 %t145, 0
  store i1 %t147, ptr %l72, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb54
bb54:
  %t149 = load i1, ptr %l72, !tbaa !21
  br i1 %t149, label %bb55, label %bb56
bb55:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t151, ptr %l78, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr ptr, ptr %t153, i64 0
  %t155 = load ptr, ptr %t154, !tbaa !39
  %t158 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t150, ptr %t155)
  store i1 %t158, ptr %l80
  br label %bb57
bb56:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb58
bb57:
  %t159 = load i1, ptr %l80, !tbaa !21
  store i1 %t159, ptr %l76, !tbaa !21
  br label %bb58
bb58:
  %t160 = load i1, ptr %l76, !tbaa !21
  store i1 %t160, ptr %l19, !tbaa !21
  br label %bb71
bb59:
  %t161 = load ptr, ptr %l1, !tbaa !29
  store ptr %t161, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t162 = load ptr, ptr %l81, !tbaa !29
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %bb60, label %bb61
bb60:
  %t165 = load ptr, ptr %l81, !tbaa !29
  %t166 = load i64, ptr %t165, !range !{i64 0, i64 18}
  %t168 = icmp eq i64 %t166, 17
  store i1 %t168, ptr %l82, !tbaa !21
  br label %bb61
bb61:
  %t169 = load i1, ptr %l82, !tbaa !21
  br i1 %t169, label %bb62, label %bb63
bb62:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr { i64, [5 x i64] }, ptr %t170, i32 0, i32 1
  %t173 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t172, i32 0, i32 2
  %t174 = load ptr, ptr %t173
  store ptr %t174, ptr %l8, !tbaa !29
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %l8, !tbaa !29
  %t180 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t176, ptr %t177)
  store i1 %t180, ptr %l89
  br label %bb65
bb65:
  %t181 = load i1, ptr %l89, !tbaa !21
  store i1 %t181, ptr %l19, !tbaa !21
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_7e6d7b9279609ab3_447c445eeb868dc7)
  unreachable
bb71:
  %t182 = load i1, ptr %l19, !tbaa !21
  store i1 %t182, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etempLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca { i64, [1 x i64] }
  %l17 = alloca i1
  %l20 = alloca i1
  %l26 = alloca i1
  %l28 = alloca { i64, ptr }
  %l34 = alloca i1
  %l40 = alloca i1
  %l43 = alloca ptr
  %l47 = alloca { i64, [4 x i64] }
  %l50 = alloca i32
  %l54 = alloca { i64, [4 x i64] }
  %l58 = alloca i32
  %l62 = alloca { i64, [1 x i64] }
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, [1 x i64] }
  %l73 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l84 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t117 = alloca { i64, [1 x i64] }, align 8
  %t140 = alloca { i64, [21 x i64] }, align 8
  %t158 = alloca { i64, [15 x i64] }, align 8
  %t164 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = sext i32 %a4 to i64
  store i64 %t3, ptr %l5, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 24
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  store i1 %t12, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 30
  %t19 = getelementptr %"compiler/typed:Plan", ptr %t18, i32 0, i32 4
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp slt i64 %t15, %t22
  store i1 %t25, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l20, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 30
  %t31 = getelementptr %"compiler/typed:Plan", ptr %t30, i32 0, i32 4
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l28, !tbaa !27
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i1, ptr %t36, i64 %t33
  %t38 = load i1, ptr %t37, !tbaa !31
  store i1 %t38, ptr %l26, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l26, !tbaa !21
  store i1 %t40, ptr %l6, !tbaa !21
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 24
  %t44 = load i1, ptr %t43, !tbaa !21
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 25
  %t51 = load i1, ptr %t50, !tbaa !21
  store i1 %t51, ptr %l34, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l34, !tbaa !21
  store i1 %t53, ptr %l7, !tbaa !21
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lower:lowering", ptr %t54, i32 0, i32 25
  store i1 false, ptr %t56, !tbaa !21
  %t57 = load i1, ptr %l6, !tbaa !21
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t61 = load i1, ptr %l7, !tbaa !21
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l40, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t65 = load i1, ptr %l40, !tbaa !21
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l43, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t72 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  store { i64, [4 x i64] } %t72, ptr %l47
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t73 = load i32, ptr %l2, !tbaa !23
  %t74 = load %"compiler/source:Span", ptr %l3
  %t75 = load ptr, ptr %l43, !tbaa !29
  %t76 = load { i64, [4 x i64] }, ptr %l47
  %t79 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t75, { i64, [4 x i64] } %t76, i32 %t73, %"compiler/source:Span" %t74)
  store i32 %t79, ptr %l50
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t80 = load i32, ptr %l50, !tbaa !23
  store i32 %t80, ptr %rv
  br label %ret
bb20:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t86 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  store { i64, [4 x i64] } %t86, ptr %l54
  br label %bb21
bb21:
  %t87 = load { i64, [4 x i64] }, ptr %l54
  store { i64, [4 x i64] } %t87, ptr %l8
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l2, !tbaa !23
  %t90 = load %"compiler/source:Span", ptr %l3
  %t94 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t88, i32 %t89, %"compiler/source:Span" %t90)
  store i32 %t94, ptr %l58
  br label %bb22
bb22:
  %t95 = load i32, ptr %l58, !tbaa !23
  store i32 %t95, ptr %l9, !tbaa !23
  %t96 = load i32, ptr %l9, !tbaa !23
  %t98 = sext i32 %t96 to i64
  store i64 %t98, ptr %l10, !tbaa !24
  %t100 = load i1, ptr %l6, !tbaa !21
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/lower:lowering", ptr %t103, i32 0, i32 30
  %t106 = getelementptr %"compiler/typed:Plan", ptr %t105, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %l65, !tbaa !27
  %t108 = load i64, ptr %l5, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i64 %t108
  %t113 = load { i64, [2 x i64] }, ptr %t112
  %t116 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t102, { i64, [2 x i64] } %t113)
  store { i64, [1 x i64] } %t116, ptr %l68
  br label %bb25
bb24:
  store { i64, [1 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [1 x i64] }, ptr %t117, i32 0, i32 0
  store i64 2, ptr %t118
  %t119 = load { i64, [1 x i64] }, ptr %t117
  store { i64, [1 x i64] } %t119, ptr %l62
  br label %bb26
bb25:
  %t121 = load { i64, [1 x i64] }, ptr %l68
  store { i64, [1 x i64] } %t121, ptr %l62
  br label %bb26
bb26:
  %t122 = load { i64, [1 x i64] }, ptr %l62
  store { i64, [1 x i64] } %t122, ptr %l11
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/lower:lowering", ptr %t123, i32 0, i32 3
  %t126 = getelementptr %"compiler/mir:Fn", ptr %t125, i32 0, i32 7
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l73
  br label %bb27
bb27:
  %t131 = load ptr, ptr %l73, !tbaa !29
  %t133 = load { i64, [1 x i64] }, ptr %l11
  %t136 = getelementptr %"compiler/mir:Local", ptr %t131, i32 0, i32 4
  store { i64, [1 x i64] } %t133, ptr %t136
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l3
  %t139 = load i32, ptr %l9, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t140
  %t141 = getelementptr { i64, [21 x i64] }, ptr %t140, i32 0, i32 0
  store i64 1, ptr %t141
  %t143 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t138, 0
  %t145 = insertvalue { %"compiler/source:Span", i32 } %t143, i32 %t139, 1
  %t146 = getelementptr { i64, [21 x i64] }, ptr %t140, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t145, ptr %t146
  %t147 = load { i64, [21 x i64] }, ptr %t140
  %t149 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t147, ptr %t149
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t137, ptr %t149)
  br label %bb28
bb28:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l81, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t153, ptr %l82
  %t154 = load i32, ptr %l9, !tbaa !23
  %t156 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t154)
  store %"compiler/mir:Lvalue" %t156, ptr %l84
  br label %bb29
bb29:
  %t157 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [15 x i64] } zeroinitializer, ptr %t158
  %t159 = getelementptr { i64, [15 x i64] }, ptr %t158, i32 0, i32 0
  store i64 0, ptr %t159
  %t161 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t157, 0
  %t162 = getelementptr { i64, [15 x i64] }, ptr %t158, i32 0, i32 1
  store { { i64, [4 x i64] } } %t161, ptr %t162
  %t163 = load { i64, [15 x i64] }, ptr %t158
  store { i64, [21 x i64] } zeroinitializer, ptr %t164
  %t165 = getelementptr { i64, [21 x i64] }, ptr %t164, i32 0, i32 0
  store i64 0, ptr %t165
  %t166 = load %"compiler/source:Span", ptr %l82
  %t167 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t166, 0
  %t168 = load %"compiler/mir:Lvalue", ptr %l84
  %t169 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t167, %"compiler/mir:Lvalue" %t168, 1
  %t171 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t169, { i64, [15 x i64] } %t163, 2
  %t172 = getelementptr { i64, [21 x i64] }, ptr %t164, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t171, ptr %t172
  %t173 = load { i64, [21 x i64] }, ptr %t164
  %t175 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t173, ptr %t175
  %t176 = load ptr, ptr %l81, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t176, ptr %t175)
  br label %bb30
bb30:
  %t178 = load i32, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t178, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i64
  %l24 = alloca i1
  %l27 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l4, !tbaa !23
  store i32 %t21, ptr %l8, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 -1, ptr %l8, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8878eb20a40721c6_39b06fa96ecc3992)
  unreachable
bb11:
  %t23 = load i32, ptr %l8, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  %t24 = load i32, ptr %l5, !tbaa !23
  %t26 = icmp sge i32 %t24, 0
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t31, i32 %t32)
  store i64 %t35, ptr %l22
  br label %bb14
bb13:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb15
bb14:
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = icmp sgt i64 %t36, 0
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewValue(ptr %v0, ptr %t40, i32 %a2)
  store i1 %t44, ptr %l27
  br label %bb18
bb17:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb19
bb18:
  %t45 = load i1, ptr %l27, !tbaa !21
  store i1 %t45, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l24, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %a0, i64 %a1, i1 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca %"compiler/mir:Lvalue"
  %l22 = alloca i32
  %l25 = alloca i32
  %l27 = alloca %"compiler/mir:Lvalue"
  %l29 = alloca ptr
  %l31 = alloca { i64, [8 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t15 = alloca { i64, [15 x i64] }, align 8
  %t21 = alloca { i64, [21 x i64] }, align 8
  %t50 = alloca { i64, [4 x i64] }, align 8
  %t63 = alloca { i64, [8 x i64] }, align 8
  %t77 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l3
  %t7 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store i32 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i32, ptr %l11, !tbaa !23
  store i32 %t8, ptr %l4, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l12, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t10, ptr %l13
  %t11 = load i32, ptr %l4, !tbaa !23
  %t13 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t11)
  store %"compiler/mir:Lvalue" %t13, ptr %l15
  br label %bb2
bb2:
  store { i64, [15 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [15 x i64] }, ptr %t15, i32 0, i32 0
  store i64 17, ptr %t16
  %t18 = insertvalue { i64 } undef, i64 %a1, 0
  %t19 = getelementptr { i64, [15 x i64] }, ptr %t15, i32 0, i32 1
  store { i64 } %t18, ptr %t19
  %t20 = load { i64, [15 x i64] }, ptr %t15
  store { i64, [21 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [21 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t23 = load %"compiler/source:Span", ptr %l13
  %t24 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t23, 0
  %t25 = load %"compiler/mir:Lvalue", ptr %l15
  %t26 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t24, %"compiler/mir:Lvalue" %t25, 1
  %t28 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t26, { i64, [15 x i64] } %t20, 2
  %t29 = getelementptr { i64, [21 x i64] }, ptr %t21, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t28, ptr %t29
  %t30 = load { i64, [21 x i64] }, ptr %t21
  %t32 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t30, ptr %t32
  %t33 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t33, ptr %t32)
  br label %bb3
bb3:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 3
  %t39 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t37)
  store i32 %t39, ptr %l22
  br label %bb4
bb4:
  %t40 = load i32, ptr %l22, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 3
  %t45 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t43)
  store i32 %t45, ptr %l25
  br label %bb5
bb5:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l6, !tbaa !23
  %t47 = load i32, ptr %l4, !tbaa !23
  %t49 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t47)
  store %"compiler/mir:Lvalue" %t49, ptr %l27
  br label %bb6
bb6:
  store { i64, [4 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 0
  store i64 1, ptr %t51
  %t52 = load %"compiler/mir:Lvalue", ptr %l27
  %t53 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t52, 0
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t53, ptr %t54
  %t55 = load { i64, [4 x i64] }, ptr %t50
  store { i64, [4 x i64] } %t55, ptr %l7
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l29, !tbaa !29
  br i1 %a2, label %bb7, label %bb8
bb7:
  %t60 = load { i64, [4 x i64] }, ptr %l7
  %t61 = load i32, ptr %l5, !tbaa !23
  %t62 = load i32, ptr %l6, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [8 x i64] }, ptr %t63, i32 0, i32 0
  store i64 2, ptr %t64
  %t66 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t60, 0
  %t68 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t66, i32 %t61, 1
  %t70 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t68, i32 %t62, 2
  %t71 = getelementptr { i64, [8 x i64] }, ptr %t63, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t70, ptr %t71
  %t72 = load { i64, [8 x i64] }, ptr %t63
  store { i64, [8 x i64] } %t72, ptr %l31
  br label %bb9
bb8:
  %t74 = load { i64, [4 x i64] }, ptr %l7
  %t75 = load i32, ptr %l6, !tbaa !23
  %t76 = load i32, ptr %l5, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 0
  store i64 2, ptr %t78
  %t80 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t74, 0
  %t82 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t80, i32 %t75, 1
  %t84 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t82, i32 %t76, 2
  %t85 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t84, ptr %t85
  %t86 = load { i64, [8 x i64] }, ptr %t77
  store { i64, [8 x i64] } %t86, ptr %l31
  br label %bb9
bb9:
  %t88 = load ptr, ptr %l29, !tbaa !29
  %t89 = load { i64, [8 x i64] }, ptr %l31
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t88, { i64, [8 x i64] } %t89)
  br label %bb10
bb10:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t90, i32 %t91)
  br label %bb11
bb11:
  %t94 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i32
  %l15 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca { i64, ptr }
  %l53 = alloca i32
  %l55 = alloca ptr
  %l59 = alloca i32
  %l61 = alloca i32
  %l67 = alloca i32
  %s0 = alloca %olang.scope
  %t110 = alloca { i64, [2 x i64] }, align 8
  %t132 = alloca { i64, [4 x i64] }, align 8
  %t144 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l15, !tbaa !24
  %t4 = load i64, ptr %l15, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l15, !tbaa !24
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_683e5e170631bc0e_4d1425fdf2d9aa22)
  unreachable
bb3:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb5:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l26, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l26, !tbaa !24
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l23, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l9, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t64, ptr %l45, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t65
  %t70 = load i8, ptr %t69, !tbaa !32
  %t74 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i8, ptr %t75, i64 %t63
  store i8 %t70, ptr %t76, !tbaa !32
  br label %bb13
bb13:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l9, !tbaa !24
  br label %bb9
bb14:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lower:lowering", ptr %t81, i32 0, i32 2
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t84, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t86, ptr %l53
  br label %bb15
bb15:
  %t87 = load i32, ptr %l53, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lower:lowering", ptr %t88, i32 0, i32 2
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l55, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:lowering", ptr %t92, i32 0, i32 2
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t95, i32 %t87, i32 0)
  store i32 %t99, ptr %l59
  br label %bb16
bb16:
  %t100 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t101 = load ptr, ptr %l55, !tbaa !29
  %t102 = load i32, ptr %l59, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t101, i32 %t102, i64 %t100)
  store i32 %t104, ptr %l61
  br label %bb17
bb17:
  %t105 = load i32, ptr %l61, !tbaa !23
  store i32 %t105, ptr %l12, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/lower:lowering", ptr %t106, i32 0, i32 3
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [2 x i64] }, ptr %t110, i32 0, i32 0
  store i64 1, ptr %t111
  %t113 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t109, 0
  %t114 = getelementptr { i64, [2 x i64] }, ptr %t110, i32 0, i32 1
  store { { i64, ptr } } %t113, ptr %t114
  %t115 = load { i64, [2 x i64] }, ptr %t110
  %t117 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t115, ptr %t117
  %t120 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %s0, ptr %t108, ptr %t117)
  store i32 %t120, ptr %l67
  br label %bb18
bb18:
  %t121 = load i32, ptr %l67, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l3
  %t125 = load i32, ptr %l12, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 7
  %t130 = load i64, ptr %t129, !tbaa !24
  %t131 = load %"compiler/source:Span", ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 0
  store i64 3, ptr %t133
  %t135 = insertvalue { i32, i32, i64, %"compiler/source:Span" } undef, i32 %t125, 0
  %t137 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t135, i32 %t121, 1
  %t139 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t137, i64 %t130, 2
  %t141 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t139, %"compiler/source:Span" %t131, 3
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  store { i32, i32, i64, %"compiler/source:Span" } %t141, ptr %t142
  %t143 = load { i64, [4 x i64] }, ptr %t132
  store { i64, [21 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [21 x i64] }, ptr %t144, i32 0, i32 0
  store i64 8, ptr %t145
  %t147 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t123, 0
  %t149 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t147, { i64, [1 x i64] } %a1, 1
  %t151 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t149, i32 0, 2
  %t153 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t151, { i64, [4 x i64] } %t143, 3
  %t154 = getelementptr { i64, [21 x i64] }, ptr %t144, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t153, ptr %t154
  %t155 = load { i64, [21 x i64] }, ptr %t144
  %t157 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t155, ptr %t157
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t122, ptr %t157)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2flower_2epromoted(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l20 = alloca ptr
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
  %t8 = icmp eq i64 %t6, 5
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
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Promote", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb18
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 17
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = call ptr @compiler_2flower_2epromoted(ptr %v0, ptr %v1, ptr %t37)
  store ptr %t39, ptr %l20
  br label %bb12
bb12:
  %t40 = load ptr, ptr %l20, !tbaa !29
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store ptr null, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_73fe6e02ce2153fa_3dee06b9132f2046)
  unreachable
bb18:
  %t41 = load ptr, ptr %l3, !tbaa !29
  store ptr %t41, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_2estandIn(ptr %out, ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/typed:Body"
  %s0 = alloca %olang.scope
  %t1 = alloca { i64, [2 x i64] }, align 8
  %t8 = alloca %"compiler/typed:Body", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, [2 x i64] } zeroinitializer, ptr %t1
  %t2 = getelementptr { i64, [2 x i64] }, ptr %t1, i32 0, i32 0
  store i64 5, ptr %t2
  %t3 = insertvalue { i64 } undef, i64 -1, 0
  %t4 = getelementptr { i64, [2 x i64] }, ptr %t1, i32 0, i32 1
  store { i64 } %t3, ptr %t4
  %t5 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t5, ptr %l1
  store i32 %a0, ptr %l2, !tbaa !23
  %t7 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t7, ptr %l3
  br label %bb1
bb1:
  %t9 = load { i64, [2 x i64] }, ptr %l1
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2ftyped_3aBody_2ector(ptr %t8, ptr %v0, i32 -1, { i64, [2 x i64] } %t9, i32 %t10, i64 0, %"compiler/source:Span" %t11)
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %t8, i64 408, i1 false)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l4, i64 408, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca i1
  %l56 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca i1
  %l73 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l80 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
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
  store ptr %t16, ptr %l7, !tbaa !29
  br label %bb60
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 14
  store i1 %t26, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Try", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Try", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb14, label %bb15
bb13:
  store ptr null, ptr %l26, !tbaa !29
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_507be9c6ca1ca599_d80eabfba6b49be5)
  unreachable
bb15:
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Try", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %t53)
  store ptr %t55, ptr %l32
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l32, !tbaa !29
  store ptr %t56, ptr %l26, !tbaa !29
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l26, !tbaa !29
  store ptr %t57, ptr %l7, !tbaa !29
  br label %bb60
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l33, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 18}
  %t65 = icmp eq i64 %t63, 17
  store i1 %t65, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l34, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l3, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = call ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %t73)
  store ptr %t75, ptr %l40
  br label %bb25
bb25:
  %t76 = load ptr, ptr %l40, !tbaa !29
  store ptr %t76, ptr %l7, !tbaa !29
  br label %bb60
bb26:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t78 = load ptr, ptr %l41, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t81 = load ptr, ptr %l41, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 12
  store i1 %t84, ptr %l42, !tbaa !21
  br label %bb28
bb28:
  %t85 = load i1, ptr %l42, !tbaa !21
  br i1 %t85, label %bb29, label %bb30
bb29:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb31
bb30:
  br label %bb42
bb31:
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Seq", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = icmp eq ptr %t95, null
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l4, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Seq", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = icmp eq i64 %t106, 0
  store i1 %t108, ptr %l51, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb34
bb34:
  %t110 = load i1, ptr %l51, !tbaa !21
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t111 = load ptr, ptr %l4, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Seq", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  br i1 %t116, label %bb37, label %bb38
bb36:
  store ptr null, ptr %l56, !tbaa !29
  br label %bb41
bb37:
  call void @__olang_check_failed(ptr @olang_loc_ef2d75aaca2b0e72_154891bbf0c2fa3e)
  unreachable
bb38:
  br label %bb39
bb39:
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Seq", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = call ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %t121)
  store ptr %t123, ptr %l62
  br label %bb40
bb40:
  %t124 = load ptr, ptr %l62, !tbaa !29
  store ptr %t124, ptr %l56, !tbaa !29
  br label %bb41
bb41:
  %t125 = load ptr, ptr %l56, !tbaa !29
  store ptr %t125, ptr %l7, !tbaa !29
  br label %bb60
bb42:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t127 = load ptr, ptr %l63, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb43, label %bb44
bb43:
  %t130 = load ptr, ptr %l63, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 18}
  %t133 = icmp eq i64 %t131, 9
  store i1 %t133, ptr %l64, !tbaa !21
  br label %bb44
bb44:
  %t134 = load i1, ptr %l64, !tbaa !21
  br i1 %t134, label %bb45, label %bb46
bb45:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr { i64, [5 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t137, i32 0, i32 2
  %t139 = load i32, ptr %t138, !range !{i32 0, i32 52}
  store i32 %t139, ptr %l5
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t143, i32 0, i32 4
  %t145 = load { i64, ptr }, ptr %t144
  store { i64, ptr } %t145, ptr %l6, !tbaa !27
  br label %bb47
bb46:
  br label %bb55
bb47:
  %t147 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t149 = trunc i64 20 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb48, label %bb49
bb48:
  %t152 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t156 = icmp eq i64 %t154, 1
  store i1 %t156, ptr %l73, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb50
bb50:
  %t158 = load i1, ptr %l73, !tbaa !21
  br i1 %t158, label %bb51, label %bb52
bb51:
  %t159 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t159, ptr %l78, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr ptr, ptr %t161, i64 0
  %t163 = load ptr, ptr %t162, !tbaa !39
  %t165 = call ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %t163)
  store ptr %t165, ptr %l80
  br label %bb53
bb52:
  store ptr null, ptr %l77, !tbaa !29
  br label %bb54
bb53:
  %t166 = load ptr, ptr %l80, !tbaa !29
  store ptr %t166, ptr %l77, !tbaa !29
  br label %bb54
bb54:
  %t167 = load ptr, ptr %l77, !tbaa !29
  store ptr %t167, ptr %l7, !tbaa !29
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store ptr null, ptr %l7, !tbaa !29
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_131c31ba2e03204a_ed00d1201b990436)
  unreachable
bb60:
  %t168 = load ptr, ptr %l7, !tbaa !29
  store ptr %t168, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_3aLowerer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca i1
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i1
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"compiler/mir:GenInfo"
  %l37 = alloca i1
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i64
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca i64
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i64
  %l83 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l85 = alloca i64
  %l87 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l89 = alloca i64
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca i64
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca i64
  %l99 = alloca %"compiler/mir:GenInfo"
  %l101 = alloca i64
  %l103 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l105 = alloca %"compiler/lower:Lowerer"
  %t362 = alloca %"compiler/mir:GenInfo", align 8
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l41
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l4
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l42
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  %t9 = ptrtoint ptr %v2 to i64
  store i64 %t9, ptr %l43, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e4
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = call ptr @__olang_region_make(ptr %v2)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l43, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l43
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l45
  br label %bb5
bb5:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e4
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load i64, ptr %l43
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb7
bb7:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l6
  store ptr null, ptr %l7, !tbaa !29
  %t29 = ptrtoint ptr %v2 to i64
  store i64 %t29, ptr %l47, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e6
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = call ptr @__olang_region_make(ptr %v2)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l47, !tbaa !24
  br label %bb9
bb9:
  %t34 = load i64, ptr %l47
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ector(ptr %t35, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l49
  br label %bb10
bb10:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e6
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load i64, ptr %l47
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr null
  %t47 = icmp eq ptr %t46, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t47)
  br label %bb12
bb12:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l8
  store i1 false, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  %t49 = ptrtoint ptr %v2 to i64
  store i64 %t49, ptr %l51, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e10
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t52 = call ptr @__olang_region_make(ptr %v2)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l51, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l51
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t55)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t56, ptr %l53
  br label %bb15
bb15:
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e10
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t59 = load i64, ptr %l51
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 2
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr null
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 1
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t66
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr %t72
  %t79 = icmp eq ptr %t78, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t79)
  br label %bb17
bb17:
  %t80 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t80, ptr %l12
  %t81 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l55
  br label %bb18
bb18:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l13
  %t83 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t83, ptr %l56
  br label %bb19
bb19:
  %t84 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t84, ptr %l14
  %t85 = ptrtoint ptr %v2 to i64
  store i64 %t85, ptr %l57, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e13
  br i1 %t86, label %bb20, label %bb21
bb20:
  %t88 = call ptr @__olang_region_make(ptr %v2)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l57, !tbaa !24
  br label %bb21
bb21:
  %t90 = load i64, ptr %l57
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t91)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t92, ptr %l59
  br label %bb22
bb22:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e13
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t95 = load i64, ptr %l57
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 2
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr null
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = call ptr @__olang_region_or(ptr %t105, ptr null)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr %t102
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t108
  %t115 = icmp eq ptr %t114, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t115)
  br label %bb24
bb24:
  %t116 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t116, ptr %l15
  %t117 = ptrtoint ptr %v2 to i64
  store i64 %t117, ptr %l61, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e14
  br i1 %t118, label %bb25, label %bb26
bb25:
  %t120 = call ptr @__olang_region_make(ptr %v2)
  %t121 = ptrtoint ptr %t120 to i64
  store i64 %t121, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t122 = load i64, ptr %l61
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t123)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t124, ptr %l63
  br label %bb27
bb27:
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e14
  br i1 %t125, label %bb28, label %bb29
bb28:
  %t127 = load i64, ptr %l61
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr null
  %t135 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 1
  %t136 = load { i64, ptr }, ptr %t135
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = call ptr @__olang_region_or(ptr %t137, ptr null)
  %t139 = icmp ne ptr %t138, null
  %t140 = select i1 %t139, ptr %t138, ptr %t134
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t140
  %t147 = icmp eq ptr %t146, %t128
  call void @__olang_region_settle(ptr %t128, i1 %t147)
  br label %bb29
bb29:
  %t148 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t148, ptr %l16
  %t149 = ptrtoint ptr %v2 to i64
  store i64 %t149, ptr %l65, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e15
  br i1 %t150, label %bb30, label %bb31
bb30:
  %t152 = call ptr @__olang_region_make(ptr %v2)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l65, !tbaa !24
  br label %bb31
bb31:
  %t154 = load i64, ptr %l65
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t155)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t156, ptr %l67
  br label %bb32
bb32:
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e15
  br i1 %t157, label %bb33, label %bb34
bb33:
  %t159 = load i64, ptr %l65
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 2
  %t162 = load { i64, ptr }, ptr %t161
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr null)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr null
  %t167 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 1
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr %t166
  %t173 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr %t172
  %t179 = icmp eq ptr %t178, %t160
  call void @__olang_region_settle(ptr %t160, i1 %t179)
  br label %bb34
bb34:
  %t180 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t180, ptr %l17
  %t181 = ptrtoint ptr %v2 to i64
  store i64 %t181, ptr %l69, !tbaa !24
  %t182 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e16
  br i1 %t182, label %bb35, label %bb36
bb35:
  %t184 = call ptr @__olang_region_make(ptr %v2)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l69, !tbaa !24
  br label %bb36
bb36:
  %t186 = load i64, ptr %l69
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t187)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t188, ptr %l71
  br label %bb37
bb37:
  %t189 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e16
  br i1 %t189, label %bb38, label %bb39
bb38:
  %t191 = load i64, ptr %l69
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 2
  %t194 = load { i64, ptr }, ptr %t193
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = call ptr @__olang_region_or(ptr %t195, ptr null)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr null
  %t199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 1
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr %t198
  %t205 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = call ptr @__olang_region_or(ptr %t207, ptr null)
  %t209 = icmp ne ptr %t208, null
  %t210 = select i1 %t209, ptr %t208, ptr %t204
  %t211 = icmp eq ptr %t210, %t192
  call void @__olang_region_settle(ptr %t192, i1 %t211)
  br label %bb39
bb39:
  %t212 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t212, ptr %l18
  store i1 false, ptr %l19, !tbaa !21
  %t213 = ptrtoint ptr %v2 to i64
  store i64 %t213, ptr %l73, !tbaa !24
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e18
  br i1 %t214, label %bb40, label %bb41
bb40:
  %t216 = call ptr @__olang_region_make(ptr %v2)
  %t217 = ptrtoint ptr %t216 to i64
  store i64 %t217, ptr %l73, !tbaa !24
  br label %bb41
bb41:
  %t218 = load i64, ptr %l73
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t219, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %l75
  br label %bb42
bb42:
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e18
  br i1 %t221, label %bb43, label %bb44
bb43:
  %t223 = load i64, ptr %l73
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75, i32 0, i32 0
  %t226 = load { i64, ptr }, ptr %t225
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = call ptr @__olang_region_or(ptr %t227, ptr null)
  %t229 = icmp ne ptr %t228, null
  %t230 = select i1 %t229, ptr %t228, ptr null
  %t231 = icmp eq ptr %t230, %t224
  call void @__olang_region_settle(ptr %t224, i1 %t231)
  br label %bb44
bb44:
  %t232 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l20
  %t233 = ptrtoint ptr %v2 to i64
  store i64 %t233, ptr %l77, !tbaa !24
  %t234 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e19
  br i1 %t234, label %bb45, label %bb46
bb45:
  %t236 = call ptr @__olang_region_make(ptr %v2)
  %t237 = ptrtoint ptr %t236 to i64
  store i64 %t237, ptr %l77, !tbaa !24
  br label %bb46
bb46:
  %t238 = load i64, ptr %l77
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t239, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %l79
  br label %bb47
bb47:
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e19
  br i1 %t241, label %bb48, label %bb49
bb48:
  %t243 = load i64, ptr %l77
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79, i32 0, i32 0
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = icmp ne ptr %t248, null
  %t250 = select i1 %t249, ptr %t248, ptr null
  %t251 = icmp eq ptr %t250, %t244
  call void @__olang_region_settle(ptr %t244, i1 %t251)
  br label %bb49
bb49:
  %t252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %l21
  store i32 -1, ptr %l22, !tbaa !23
  store i32 -1, ptr %l23, !tbaa !23
  store i64 0, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  %t253 = ptrtoint ptr %v2 to i64
  store i64 %t253, ptr %l81, !tbaa !24
  %t254 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e29
  br i1 %t254, label %bb50, label %bb51
bb50:
  %t256 = call ptr @__olang_region_make(ptr %v2)
  %t257 = ptrtoint ptr %t256 to i64
  store i64 %t257, ptr %l81, !tbaa !24
  br label %bb51
bb51:
  %t258 = load i64, ptr %l81
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t259)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t260, ptr %l83
  br label %bb52
bb52:
  %t261 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e29
  br i1 %t261, label %bb53, label %bb54
bb53:
  %t263 = load i64, ptr %l81
  %t264 = inttoptr i64 %t263 to ptr
  %t265 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83, i32 0, i32 2
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = call ptr @__olang_region_or(ptr %t267, ptr null)
  %t269 = icmp ne ptr %t268, null
  %t270 = select i1 %t269, ptr %t268, ptr null
  %t271 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83, i32 0, i32 1
  %t272 = load { i64, ptr }, ptr %t271
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = call ptr @__olang_region_or(ptr %t273, ptr null)
  %t275 = icmp ne ptr %t274, null
  %t276 = select i1 %t275, ptr %t274, ptr %t270
  %t277 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83, i32 0, i32 0
  %t278 = load { i64, ptr }, ptr %t277
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = call ptr @__olang_region_or(ptr %t279, ptr null)
  %t281 = icmp ne ptr %t280, null
  %t282 = select i1 %t281, ptr %t280, ptr %t276
  %t283 = icmp eq ptr %t282, %t264
  call void @__olang_region_settle(ptr %t264, i1 %t283)
  br label %bb54
bb54:
  %t284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %l31
  %t285 = ptrtoint ptr %v2 to i64
  store i64 %t285, ptr %l85, !tbaa !24
  %t286 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e30
  br i1 %t286, label %bb55, label %bb56
bb55:
  %t288 = call ptr @__olang_region_make(ptr %v2)
  %t289 = ptrtoint ptr %t288 to i64
  store i64 %t289, ptr %l85, !tbaa !24
  br label %bb56
bb56:
  %t290 = load i64, ptr %l85
  %t291 = inttoptr i64 %t290 to ptr
  %t292 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t291)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t292, ptr %l87
  br label %bb57
bb57:
  %t293 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e30
  br i1 %t293, label %bb58, label %bb59
bb58:
  %t295 = load i64, ptr %l85
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87, i32 0, i32 2
  %t298 = load { i64, ptr }, ptr %t297
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = call ptr @__olang_region_or(ptr %t299, ptr null)
  %t301 = icmp ne ptr %t300, null
  %t302 = select i1 %t301, ptr %t300, ptr null
  %t303 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = call ptr @__olang_region_or(ptr %t305, ptr null)
  %t307 = icmp ne ptr %t306, null
  %t308 = select i1 %t307, ptr %t306, ptr %t302
  %t309 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87, i32 0, i32 0
  %t310 = load { i64, ptr }, ptr %t309
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = call ptr @__olang_region_or(ptr %t311, ptr null)
  %t313 = icmp ne ptr %t312, null
  %t314 = select i1 %t313, ptr %t312, ptr %t308
  %t315 = icmp eq ptr %t314, %t296
  call void @__olang_region_settle(ptr %t296, i1 %t315)
  br label %bb59
bb59:
  %t316 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t316, ptr %l32
  %t317 = ptrtoint ptr %v2 to i64
  store i64 %t317, ptr %l89, !tbaa !24
  %t318 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e31
  br i1 %t318, label %bb60, label %bb61
bb60:
  %t320 = call ptr @__olang_region_make(ptr %v2)
  %t321 = ptrtoint ptr %t320 to i64
  store i64 %t321, ptr %l89, !tbaa !24
  br label %bb61
bb61:
  %t322 = load i64, ptr %l89
  %t323 = inttoptr i64 %t322 to ptr
  %t324 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t323, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %l91
  br label %bb62
bb62:
  %t325 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e31
  br i1 %t325, label %bb63, label %bb64
bb63:
  %t327 = load i64, ptr %l89
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91, i32 0, i32 0
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr null
  %t335 = icmp eq ptr %t334, %t328
  call void @__olang_region_settle(ptr %t328, i1 %t335)
  br label %bb64
bb64:
  %t336 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l33
  store i1 false, ptr %l34, !tbaa !21
  %t337 = ptrtoint ptr %v2 to i64
  store i64 %t337, ptr %l93, !tbaa !24
  %t338 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e33
  br i1 %t338, label %bb65, label %bb66
bb65:
  %t340 = call ptr @__olang_region_make(ptr %v2)
  %t341 = ptrtoint ptr %t340 to i64
  store i64 %t341, ptr %l93, !tbaa !24
  br label %bb66
bb66:
  %t342 = load i64, ptr %l93
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t343, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %l95
  br label %bb67
bb67:
  %t345 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e33
  br i1 %t345, label %bb68, label %bb69
bb68:
  %t347 = load i64, ptr %l93
  %t348 = inttoptr i64 %t347 to ptr
  %t349 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95, i32 0, i32 0
  %t350 = load { i64, ptr }, ptr %t349
  %t351 = extractvalue { i64, ptr } %t350, 1
  %t352 = call ptr @__olang_region_or(ptr %t351, ptr null)
  %t353 = icmp ne ptr %t352, null
  %t354 = select i1 %t353, ptr %t352, ptr null
  %t355 = icmp eq ptr %t354, %t348
  call void @__olang_region_settle(ptr %t348, i1 %t355)
  br label %bb69
bb69:
  %t356 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t356, ptr %l35
  %t357 = ptrtoint ptr %v2 to i64
  store i64 %t357, ptr %l97, !tbaa !24
  %t358 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e34
  br i1 %t358, label %bb70, label %bb71
bb70:
  %t360 = call ptr @__olang_region_make(ptr %v2)
  %t361 = ptrtoint ptr %t360 to i64
  store i64 %t361, ptr %l97, !tbaa !24
  br label %bb71
bb71:
  %t363 = load i64, ptr %l97
  %t364 = inttoptr i64 %t363 to ptr
  call void @compiler_2fmir_3aGenInfo_2ector(ptr %t362, ptr %t364)
  call void @llvm.memmove.p0.p0.i64(ptr %l99, ptr %t362, i64 400, i1 false)
  br label %bb72
bb72:
  %t365 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e34
  br i1 %t365, label %bb73, label %bb74
bb73:
  %t367 = load i64, ptr %l97
  %t368 = inttoptr i64 %t367 to ptr
  %t369 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 5
  %t370 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t369, i32 0, i32 0
  %t371 = load { i64, ptr }, ptr %t370
  %t372 = extractvalue { i64, ptr } %t371, 1
  %t373 = call ptr @__olang_region_or(ptr %t372, ptr null)
  %t374 = icmp ne ptr %t373, null
  %t375 = select i1 %t374, ptr %t373, ptr null
  %t376 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 4
  %t377 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t376, i32 0, i32 2
  %t378 = load { i64, ptr }, ptr %t377
  %t379 = extractvalue { i64, ptr } %t378, 1
  %t380 = call ptr @__olang_region_or(ptr %t379, ptr null)
  %t381 = icmp ne ptr %t380, null
  %t382 = select i1 %t381, ptr %t380, ptr %t375
  %t383 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 4
  %t384 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t383, i32 0, i32 1
  %t385 = load { i64, ptr }, ptr %t384
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = call ptr @__olang_region_or(ptr %t386, ptr null)
  %t388 = icmp ne ptr %t387, null
  %t389 = select i1 %t388, ptr %t387, ptr %t382
  %t390 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 4
  %t391 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t390, i32 0, i32 0
  %t392 = load { i64, ptr }, ptr %t391
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_region_or(ptr %t393, ptr null)
  %t395 = icmp ne ptr %t394, null
  %t396 = select i1 %t395, ptr %t394, ptr %t389
  %t397 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 3
  %t398 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t397, i32 0, i32 2
  %t399 = load { i64, ptr }, ptr %t398
  %t400 = extractvalue { i64, ptr } %t399, 1
  %t401 = call ptr @__olang_region_or(ptr %t400, ptr null)
  %t402 = icmp ne ptr %t401, null
  %t403 = select i1 %t402, ptr %t401, ptr %t396
  %t404 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 3
  %t405 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t404, i32 0, i32 1
  %t406 = load { i64, ptr }, ptr %t405
  %t407 = extractvalue { i64, ptr } %t406, 1
  %t408 = call ptr @__olang_region_or(ptr %t407, ptr null)
  %t409 = icmp ne ptr %t408, null
  %t410 = select i1 %t409, ptr %t408, ptr %t403
  %t411 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 3
  %t412 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t411, i32 0, i32 0
  %t413 = load { i64, ptr }, ptr %t412
  %t414 = extractvalue { i64, ptr } %t413, 1
  %t415 = call ptr @__olang_region_or(ptr %t414, ptr null)
  %t416 = icmp ne ptr %t415, null
  %t417 = select i1 %t416, ptr %t415, ptr %t410
  %t418 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 2
  %t419 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t418, i32 0, i32 2
  %t420 = load { i64, ptr }, ptr %t419
  %t421 = extractvalue { i64, ptr } %t420, 1
  %t422 = call ptr @__olang_region_or(ptr %t421, ptr null)
  %t423 = icmp ne ptr %t422, null
  %t424 = select i1 %t423, ptr %t422, ptr %t417
  %t425 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 2
  %t426 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t425, i32 0, i32 1
  %t427 = load { i64, ptr }, ptr %t426
  %t428 = extractvalue { i64, ptr } %t427, 1
  %t429 = call ptr @__olang_region_or(ptr %t428, ptr null)
  %t430 = icmp ne ptr %t429, null
  %t431 = select i1 %t430, ptr %t429, ptr %t424
  %t432 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 2
  %t433 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t432, i32 0, i32 0
  %t434 = load { i64, ptr }, ptr %t433
  %t435 = extractvalue { i64, ptr } %t434, 1
  %t436 = call ptr @__olang_region_or(ptr %t435, ptr null)
  %t437 = icmp ne ptr %t436, null
  %t438 = select i1 %t437, ptr %t436, ptr %t431
  %t439 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 1
  %t440 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t439, i32 0, i32 2
  %t441 = load { i64, ptr }, ptr %t440
  %t442 = extractvalue { i64, ptr } %t441, 1
  %t443 = call ptr @__olang_region_or(ptr %t442, ptr null)
  %t444 = icmp ne ptr %t443, null
  %t445 = select i1 %t444, ptr %t443, ptr %t438
  %t446 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 1
  %t447 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t446, i32 0, i32 1
  %t448 = load { i64, ptr }, ptr %t447
  %t449 = extractvalue { i64, ptr } %t448, 1
  %t450 = call ptr @__olang_region_or(ptr %t449, ptr null)
  %t451 = icmp ne ptr %t450, null
  %t452 = select i1 %t451, ptr %t450, ptr %t445
  %t453 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 1
  %t454 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t453, i32 0, i32 0
  %t455 = load { i64, ptr }, ptr %t454
  %t456 = extractvalue { i64, ptr } %t455, 1
  %t457 = call ptr @__olang_region_or(ptr %t456, ptr null)
  %t458 = icmp ne ptr %t457, null
  %t459 = select i1 %t458, ptr %t457, ptr %t452
  %t460 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 0
  %t461 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t460, i32 0, i32 2
  %t462 = load { i64, ptr }, ptr %t461
  %t463 = extractvalue { i64, ptr } %t462, 1
  %t464 = call ptr @__olang_region_or(ptr %t463, ptr null)
  %t465 = icmp ne ptr %t464, null
  %t466 = select i1 %t465, ptr %t464, ptr %t459
  %t467 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 0
  %t468 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t467, i32 0, i32 1
  %t469 = load { i64, ptr }, ptr %t468
  %t470 = extractvalue { i64, ptr } %t469, 1
  %t471 = call ptr @__olang_region_or(ptr %t470, ptr null)
  %t472 = icmp ne ptr %t471, null
  %t473 = select i1 %t472, ptr %t471, ptr %t466
  %t474 = getelementptr %"compiler/mir:GenInfo", ptr %l99, i32 0, i32 0
  %t475 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t474, i32 0, i32 0
  %t476 = load { i64, ptr }, ptr %t475
  %t477 = extractvalue { i64, ptr } %t476, 1
  %t478 = call ptr @__olang_region_or(ptr %t477, ptr null)
  %t479 = icmp ne ptr %t478, null
  %t480 = select i1 %t479, ptr %t478, ptr %t473
  %t481 = icmp eq ptr %t480, %t368
  call void @__olang_region_settle(ptr %t368, i1 %t481)
  br label %bb74
bb74:
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %l99, i64 400, i1 false)
  store i1 false, ptr %l37, !tbaa !21
  %t482 = ptrtoint ptr %v2 to i64
  store i64 %t482, ptr %l101, !tbaa !24
  %t483 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e36
  br i1 %t483, label %bb75, label %bb76
bb75:
  %t485 = call ptr @__olang_region_make(ptr %v2)
  %t486 = ptrtoint ptr %t485 to i64
  store i64 %t486, ptr %l101, !tbaa !24
  br label %bb76
bb76:
  %t487 = load i64, ptr %l101
  %t488 = inttoptr i64 %t487 to ptr
  %t489 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t488)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t489, ptr %l103
  br label %bb77
bb77:
  %t490 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aLowerer_2e36
  br i1 %t490, label %bb78, label %bb79
bb78:
  %t492 = load i64, ptr %l101
  %t493 = inttoptr i64 %t492 to ptr
  %t494 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 2
  %t495 = load { i64, ptr }, ptr %t494
  %t496 = extractvalue { i64, ptr } %t495, 1
  %t497 = call ptr @__olang_region_or(ptr %t496, ptr null)
  %t498 = icmp ne ptr %t497, null
  %t499 = select i1 %t498, ptr %t497, ptr null
  %t500 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 1
  %t501 = load { i64, ptr }, ptr %t500
  %t502 = extractvalue { i64, ptr } %t501, 1
  %t503 = call ptr @__olang_region_or(ptr %t502, ptr null)
  %t504 = icmp ne ptr %t503, null
  %t505 = select i1 %t504, ptr %t503, ptr %t499
  %t506 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 0
  %t507 = load { i64, ptr }, ptr %t506
  %t508 = extractvalue { i64, ptr } %t507, 1
  %t509 = call ptr @__olang_region_or(ptr %t508, ptr null)
  %t510 = icmp ne ptr %t509, null
  %t511 = select i1 %t510, ptr %t509, ptr %t505
  %t512 = icmp eq ptr %t511, %t493
  call void @__olang_region_settle(ptr %t493, i1 %t512)
  br label %bb79
bb79:
  %t513 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103
  %t514 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 0
  %t515 = load ptr, ptr %l2, !tbaa !29
  store ptr %t515, ptr %t514, !tbaa !29
  %t516 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 1
  %t517 = load ptr, ptr %l3, !tbaa !29
  store ptr %t517, ptr %t516, !tbaa !29
  %t518 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 2
  %t519 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t519, ptr %t518
  %t520 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 3
  %t521 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t521, ptr %t520
  %t522 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 4
  %t523 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %t522
  %t524 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 5
  %t525 = load ptr, ptr %l7, !tbaa !29
  store ptr %t525, ptr %t524, !tbaa !29
  %t526 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 6
  %t527 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t527, ptr %t526
  %t528 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 7
  %t529 = load i1, ptr %l9, !tbaa !21
  store i1 %t529, ptr %t528, !tbaa !21
  %t530 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 8
  %t531 = load i1, ptr %l10, !tbaa !21
  store i1 %t531, ptr %t530, !tbaa !21
  %t532 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 9
  %t533 = load i1, ptr %l11, !tbaa !21
  store i1 %t533, ptr %t532, !tbaa !21
  %t534 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 10
  %t535 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t535, ptr %t534
  %t536 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 11
  %t537 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t537, ptr %t536
  %t538 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 12
  %t539 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t539, ptr %t538
  %t540 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 13
  %t541 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t541, ptr %t540
  %t542 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 14
  %t543 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t543, ptr %t542
  %t544 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 15
  %t545 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t545, ptr %t544
  %t546 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 16
  %t547 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t547, ptr %t546
  %t548 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 17
  %t549 = load i1, ptr %l19, !tbaa !21
  store i1 %t549, ptr %t548, !tbaa !21
  %t550 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 18
  %t551 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t551, ptr %t550
  %t552 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 19
  %t553 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %t552
  %t554 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 20
  %t555 = load i32, ptr %l22, !tbaa !23
  store i32 %t555, ptr %t554, !tbaa !23
  %t556 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 21
  %t557 = load i32, ptr %l23, !tbaa !23
  store i32 %t557, ptr %t556, !tbaa !23
  %t558 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 22
  %t559 = load i64, ptr %l24, !tbaa !24
  store i64 %t559, ptr %t558, !tbaa !24
  %t560 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 23
  %t561 = load i64, ptr %l25, !tbaa !24
  store i64 %t561, ptr %t560, !tbaa !24
  %t562 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 24
  %t563 = load i64, ptr %l26, !tbaa !24
  store i64 %t563, ptr %t562, !tbaa !24
  %t564 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 25
  %t565 = load i64, ptr %l27, !tbaa !24
  store i64 %t565, ptr %t564, !tbaa !24
  %t566 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 26
  %t567 = load i64, ptr %l28, !tbaa !24
  store i64 %t567, ptr %t566, !tbaa !24
  %t568 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 27
  %t569 = load i64, ptr %l29, !tbaa !24
  store i64 %t569, ptr %t568, !tbaa !24
  %t570 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 28
  %t571 = load i64, ptr %l30, !tbaa !24
  store i64 %t571, ptr %t570, !tbaa !24
  %t572 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 29
  %t573 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t573, ptr %t572
  %t574 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 30
  %t575 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t575, ptr %t574
  %t576 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 31
  %t577 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t577, ptr %t576
  %t578 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 32
  %t579 = load i1, ptr %l34, !tbaa !21
  store i1 %t579, ptr %t578, !tbaa !21
  %t580 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 33
  %t581 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t581, ptr %t580
  %t582 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 34
  call void @llvm.memmove.p0.p0.i64(ptr %t582, ptr %l36, i64 400, i1 false)
  %t583 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 35
  %t584 = load i1, ptr %l37, !tbaa !21
  store i1 %t584, ptr %t583, !tbaa !21
  %t585 = getelementptr %"compiler/lower:Lowerer", ptr %l105, i32 0, i32 36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t513, ptr %t585
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l105, i64 1456, i1 false)
  br label %ret
ret:
  ret void
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d0 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"an array literal of a type that is no array" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"read" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"kept" }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" stable" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
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
@.d6 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"a field of a packed struct taken as a place" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
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

@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@olang_2esole_2ecompiler_2flower_3aLowerer_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2flower_3aLowerer_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e10 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2flower_3aLowerer_2e13 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2flower_3aLowerer_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e29 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2flower_3aLowerer_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e31 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e34 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aLowerer_2e36 = weak hidden constant i1 false
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

declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_daa9f23a83841987_24921124063ad36b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_22c39d86763bef1a_78a4012252e46bde = external constant [0 x i8]
declare void @compiler_2ftyped_3aPlan_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_1b1a671a6e79262c_47e81d21e75aae58 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_97232cd54c6d63ec_e5d7df8d53aaa998 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ezero(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [7 x i64] } %a2, i32 %a3)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_b0754b7649fd7859_91d9947d7b887e0d = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassedFor(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2, i32 %a3)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoPlace = available_externally constant <{ [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 32
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkWalk(ptr %v0, ptr %a0, i32 %a1, { i64, [7 x i64] } %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2edispatch(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultOf(ptr %v0, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopyAt(ptr %v0, ptr %a0, i32 %a1, { i64, [1 x i64] } %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esplitCopy(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ePush_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eToArray_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eexitLevel(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etempPart(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eweakPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, [15 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eweakWords(ptr %v0, ptr %a0, { i64, [15 x i64] } %a1, i1 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceCount(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [1 x i64] } %a2)
@olang_loc_7d7e09e3133bfc76_19fb63494a2c5cc2 = external constant [0 x i8]
@olang_loc_65f5685c41a0f517_55f8096515dca443 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshResult(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c9ff4911a436500b_5835334d424a3697 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedLocal(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroLocal(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
@olang_loc_40374e6b733808a6_53e83bc62823fc4a = external constant [0 x i8]
@olang_loc_71c3518922ec6807_c916f3e3052668b = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_42d43bd34810722a_688b4686d67d3836 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftyped_2eMutGlobalsFact = external constant <{ [8 x i8], ptr }>
declare { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedChain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/source:Span" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_eff9370fb6cf39b1_ff4f9c232720af7d = external constant [0 x i8]
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4fc653f117519a1d_d526ff90513f5371 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ePop_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2flower_2eOutOfBounds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2flower_2eInvalid = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eOverflow = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2efails(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
@olang_loc_13d147f9f542fef2_ebbeb5a175072836 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ea72cddf05e42cbb_238677819f048e67 = external constant [0 x i8]
@olang_loc_fe1d0d15a7f0c4e3_7c1e48fedf91487f = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewaits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erelease(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_3de6741a678ec223_687ea1dcbf00b0ef = external constant [0 x i8]
@olang_loc_31e744114bee3e3d_92a3ba9b31ef9be1 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equiet(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_7e6d7b9279609ab3_447c445eeb868dc7 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8878eb20a40721c6_39b06fa96ecc3992 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewValue(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_683e5e170631bc0e_4d1425fdf2d9aa22 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_73fe6e02ce2153fa_3dee06b9132f2046 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2ftyped_3aBody_2ector(ptr %out, ptr %v0, i32 %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
@olang_loc_507be9c6ca1ca599_d80eabfba6b49be5 = external constant [0 x i8]
@olang_loc_ef2d75aaca2b0e72_154891bbf0c2fa3e = external constant [0 x i8]
@olang_loc_131c31ba2e03204a_ed00d1201b990436 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fmir_3aGenInfo_2ector(ptr %out, ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)

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
