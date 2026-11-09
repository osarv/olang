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
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/lower:relPath" = type { i64, { i64, ptr } }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/lower:tryCtx" = type { i64, { i64, ptr }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
define dso_local ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLower(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l4 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2elowerAs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 -1)
  store ptr %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l17 = alloca i1
  %l18 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i1
  %l28 = alloca { i64, ptr }
  %l30 = alloca i1
  %l32 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l3, !tbaa !23
  br label %bb5
bb2:
  %t10 = load { i64, [2 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [2 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 2
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load i32, ptr %l3, !tbaa !23
  %t21 = sext i32 %t19 to i64
  store i64 %t21, ptr %l6, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_64c38670143ed62f_66b5484a55823b73)
  unreachable
bb11:
  %t23 = load i64, ptr %l6, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp slt i64 %t24, 0
  br i1 %t26, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb15
bb13:
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l18, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:Lowerer", ptr %t29, i32 0, i32 2
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l21
  br label %bb14
bb14:
  %t34 = load i64, ptr %l18, !tbaa !24
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp sge i64 %t34, %t35
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb18
bb17:
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp slt i64 %t39, 0
  store i1 %t41, ptr %l23, !tbaa !21
  br label %bb18
bb18:
  %t43 = load i1, ptr %l23, !tbaa !21
  br i1 %t43, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  br label %bb21
bb21:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2ederivedFact(ptr %v0, ptr %s0, ptr %t44, i64 %t45)
  store { i64, ptr } %t48, ptr %l28
  br label %bb22
bb22:
  %t49 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t49, ptr %l5, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t52, ptr %l30
  br label %bb23
bb23:
  %t53 = load i1, ptr %l30, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:Lowerer", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 3
  %t62 = load i64, ptr %l1, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t67 = call { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %s0, ptr %s4, ptr %t61, i64 %t62, { i64, ptr } %t63)
  %t68 = extractvalue { i32, { i64, ptr } } %t67, 1
  %t69 = extractvalue { i32, { i64, ptr } } %t67, 0
  store i32 %t69, ptr %l39
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb27, label %ok.71, !prof !99
ok.71:
  store { i64, ptr } %t68, ptr %l38
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t72 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t72, ptr %l32, !tbaa !27
  br label %bb29
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eVerifiedKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %lp4 = alloca ptr
  %l8 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l28 = alloca { { i64, ptr }, { i64, ptr } }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { { i64, ptr }, { i64, ptr } } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v0, ptr %t1, { i64, [2 x i64] } %a1)
  store ptr %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l8, !tbaa !29
  store ptr %t6, ptr %l3, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:Lowerer", ptr %t7, i32 0, i32 7
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:Lowerer", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t23 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v0, ptr %v1, ptr %t14, ptr %t20)
  store { i64, ptr } %t23, ptr %l16
  br label %bb5
bb5:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t24, ptr %lp4
  %t25 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t26 = load ptr, ptr %lp4
  store { i64, ptr } %t25, ptr %t26, !tbaa !27
  br i1 %a2, label %bb6, label %bb7
bb6:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:Lowerer", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t38 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eDump(ptr %v0, ptr %v0, ptr %s0, ptr %t29, ptr %t35)
  store { i64, ptr } %t38, ptr %l23
  br label %bb8
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb9
bb8:
  %t39 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l18, !tbaa !27
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t48 = load ptr, ptr %lp4
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t53 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t49, 0
  %t55 = insertvalue { { i64, ptr }, { i64, ptr } } %t53, { i64, ptr } %t47, 1
  store { { i64, ptr }, { i64, ptr } } %t55, ptr %l28
  %t56 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l28, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l29, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  store i64 %t59, ptr %l30, !tbaa !24
  %t60 = load i64, ptr %l30, !tbaa !24
  %t61 = mul i64 %t60, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  store { i64, ptr } %t64, ptr %l31, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = load i64, ptr %l30, !tbaa !24
  %t70 = mul i64 %t69, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t66, ptr %t68, i64 %t70, i1 false)
  %t71 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t72 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l28, i32 0, i32 1
  store { i64, ptr } %t71, ptr %t72, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t73 = load { { i64, ptr }, { i64, ptr } }, ptr %l28
  %t74 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, { { i64, ptr }, { i64, ptr } } %t73, 1
  store { i32, { { i64, ptr }, { i64, ptr } } } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { { i64, ptr }, { i64, ptr } } }, ptr %rv
  ret { i32, { { i64, ptr }, { i64, ptr } } } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %out, ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t4 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, [2 x i64] } %a1, ptr %l3
  store i32 %a2, ptr %l4, !tbaa !23
  %t3 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t3, ptr %l5
  br label %bb1
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l3
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2fmir_3aFn_2ector(ptr %t4, ptr %v1, { i64, [2 x i64] } %t5, i32 %t6, i64 0, %"compiler/source:Span" %t7)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t4, i64 800, i1 false)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l6, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ecopiedFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca %"compiler/typed:Body"
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l19 = alloca ptr
  %l24 = alloca %"compiler/mir:Fn"
  %l26 = alloca %"compiler/lower:lowering"
  %l32 = alloca %"compiler/mir:Fn"
  %l34 = alloca %"compiler/mir:Fn"
  %t18 = alloca %"compiler/typed:Body", align 8
  %t32 = alloca { i64, [2 x i64] }, align 8
  %t39 = alloca %"compiler/mir:Fn", align 8
  %t44 = alloca %"compiler/lower:lowering", align 8
  %t66 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t11 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t4, i64 %t8)
  store ptr %t11, ptr %l10
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %t14, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t17 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2estandIn(ptr %t18, ptr %v1, i32 %t17)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t18, i64 408, i1 false)
  br label %bb2
bb2:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 408, i64 8)
  store ptr %t20, ptr %lp3
  %t21 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %l14, i64 408, i1 false)
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  %t23 = load ptr, ptr %lp3
  store ptr %t23, ptr %l16, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:Lowerer", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  store ptr %t29, ptr %l19, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 2, ptr %t33
  %t35 = insertvalue { i32 } undef, i32 %t31, 0
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 1
  store { i32 } %t35, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t32
  %t38 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %t39, ptr %v0, ptr %v1, ptr %t30, { i64, [2 x i64] } %t37, i32 %t38)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t39, i64 800, i1 false)
  br label %bb3
bb3:
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %l24, i64 800, i1 false)
  %t45 = load ptr, ptr %l15, !tbaa !29
  %t46 = load ptr, ptr %l16, !tbaa !29
  %t47 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2flower_3alowering_2ector(ptr %t44, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t45, ptr %t46, ptr %t47, ptr %t43)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t44, i64 3272, i1 false)
  br label %bb4
bb4:
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3272, i64 8)
  store ptr %t49, ptr %lp4
  %t50 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %l26, i64 3272, i1 false)
  %t51 = load ptr, ptr %lp4
  %t52 = load i32, ptr %l1, !tbaa !23
  %t53 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiedBody(ptr %v1, ptr %t51, i32 %t52, i32 %t53)
  br label %bb5
bb5:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %lp4
  %t59 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 11
  %t60 = load i1, ptr %t59, !tbaa !21
  %t63 = getelementptr %"compiler/lower:Lowerer", ptr %t57, i32 0, i32 7
  store i1 %t60, ptr %t63, !tbaa !21
  %t64 = load ptr, ptr %lp4
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t64, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t65, i64 800, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aFn(ptr %t66, ptr %v1, ptr %l32)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t66, i64 800, i1 false)
  br label %bb6
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %l34, i64 800, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l32, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2ederivedFact(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t9 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store ptr %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 1
  %t13 = load { i64, [2 x i64] }, ptr %t12
  store { i64, [2 x i64] } %t13, ptr %l2
  %t15 = load { i64, [2 x i64] }, ptr %l2
  %t17 = extractvalue { i64, [2 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t21 = getelementptr { i64 }, ptr %t20, i32 0, i32 0
  %t22 = load i64, ptr %t21
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb6
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:Lowerer", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %s1, ptr %t27, i64 %t28)
  store { i64, ptr } %t31, ptr %l19
  br label %bb5
bb5:
  %t32 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t34 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = add i64 %t33, %t36
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  call void @olang_textcopy(ptr %t38, ptr %t32, i64 %t33)
  %t39 = getelementptr i8, ptr %t38, i64 %t33
  call void @olang_textcopy(ptr %t39, ptr %t35, i64 %t36)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t38, 1
  store { i64, ptr } %t41, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb6:
  %t43 = load { i64, [2 x i64] }, ptr %l2
  %t45 = extractvalue { i64, [2 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 3
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t49 = getelementptr { i32 }, ptr %t48, i32 0, i32 0
  %t50 = load i32, ptr %t49
  store i32 %t50, ptr %l4, !tbaa !23
  br label %bb9
bb8:
  br label %bb11
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:Lowerer", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l4, !tbaa !23
  %t60 = inttoptr i64 0 to ptr
  %t63 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s3, ptr %t60, ptr %t57, i32 %t58)
  store { i64, ptr } %t63, ptr %l29
  br label %bb10
bb10:
  %t64 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t66 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = add i64 %t65, %t68
  %t70 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t69)
  call void @olang_textcopy(ptr %t70, ptr %t64, i64 %t65)
  %t71 = getelementptr i8, ptr %t70, i64 %t65
  call void @olang_textcopy(ptr %t71, ptr %t67, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  store { i64, ptr } %t73, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t75, ptr %l12, !tbaa !27
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_66e2991888adf299_d5a5a9b8966d006d)
  unreachable
bb16:
  %t77 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  store i64 %t78, ptr %l33, !tbaa !24
  %t79 = load i64, ptr %l33, !tbaa !24
  %t80 = mul i64 %t79, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t80)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  store { i64, ptr } %t83, ptr %l34, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = load i64, ptr %l33, !tbaa !24
  %t89 = mul i64 %t88, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t85, ptr %t87, i64 %t89, i1 false)
  %t90 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t90, ptr %l12, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca i64
  %l13 = alloca ptr
  %l22 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t6, i32 %a1)
  store i64 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i64, ptr %l7, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:Lowerer", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 10
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t20, i64 %t21)
  store ptr %t24, ptr %l13
  br label %bb2
bb2:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t27 = getelementptr %"compiler/load:Module", ptr %t25, i32 0, i32 2
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:Lowerer", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/load:Loader", ptr %t36, i32 0, i32 12
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = icmp eq i64 %t29, %t39
  %t45 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %t28, i1 %t42)
  store { i64, ptr } %t45, ptr %l22
  br label %bb3
bb3:
  %t46 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l8 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i32
  %l23 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t3 = trunc i64 4 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t8 = trunc i64 5 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l5, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:Lowerer", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l13
  br label %bb6
bb5:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load i32, ptr %l2, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t26 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t28 = trunc i64 0 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load i32, ptr %l2, !tbaa !23
  store i32 %t31, ptr %l17, !tbaa !23
  br label %bb14
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lower:Lowerer", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l23
  br label %bb13
bb13:
  %t43 = load i32, ptr %l23, !tbaa !23
  store i32 %t43, ptr %l17, !tbaa !23
  br label %bb14
bb14:
  %t44 = load i32, ptr %l17, !tbaa !23
  store i32 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2einitFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %lp3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l12 = alloca i32
  %l17 = alloca i32
  %l19 = alloca %"compiler/typed:Body"
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l24 = alloca ptr
  %l29 = alloca %"compiler/mir:Fn"
  %l31 = alloca %"compiler/lower:lowering"
  %l37 = alloca i64
  %l39 = alloca i64
  %l44 = alloca i64
  %l49 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l69 = alloca i32
  %l73 = alloca { i64, [2 x i64] }
  %l78 = alloca ptr
  %l82 = alloca ptr
  %l90 = alloca %"compiler/mir:Call"
  %l91 = alloca i32
  %l92 = alloca ptr
  %l97 = alloca ptr
  %l110 = alloca %"compiler/mir:Fn"
  %l112 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t13 = alloca %"compiler/typed:Body", align 8
  %t27 = alloca { i64, [2 x i64] }, align 8
  %t34 = alloca %"compiler/mir:Fn", align 8
  %t39 = alloca %"compiler/lower:lowering", align 8
  %t132 = alloca { i64, [2 x i64] }, align 8
  %t151 = alloca { i64, [7 x i64] }, align 8
  %t196 = alloca { i64, [8 x i64] }, align 8
  %t215 = alloca { i64, [4 x i64] }, align 8
  %t229 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t6, i32 0, i32 %t7, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load i32, ptr %l17, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2estandIn(ptr %t13, ptr %v1, i32 %t12)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t13, i64 408, i1 false)
  br label %bb2
bb2:
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 408, i64 8)
  store ptr %t15, ptr %lp3
  %t16 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %l19, i64 408, i1 false)
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l20, !tbaa !29
  %t18 = load ptr, ptr %lp3
  store ptr %t18, ptr %l21, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:Lowerer", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l24, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [2 x i64] }, ptr %t27, i32 0, i32 0
  store i64 4, ptr %t28
  %t30 = insertvalue { i64 } undef, i64 %t26, 0
  %t31 = getelementptr { i64, [2 x i64] }, ptr %t27, i32 0, i32 1
  store { i64 } %t30, ptr %t31
  %t32 = load { i64, [2 x i64] }, ptr %t27
  %t33 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %t34, ptr %v0, ptr %v1, ptr %t25, { i64, [2 x i64] } %t32, i32 %t33)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t34, i64 800, i1 false)
  br label %bb3
bb3:
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %l29, i64 800, i1 false)
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2flower_3alowering_2ector(ptr %t39, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t40, ptr %t41, ptr %t42, ptr %t38)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t39, i64 3272, i1 false)
  br label %bb4
bb4:
  %t44 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3272, i64 8)
  store ptr %t44, ptr %lp4
  %t45 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t45, ptr %l31, i64 3272, i1 false)
  %t46 = load ptr, ptr %lp4
  %t47 = mul i64 0, 16
  %t48 = insertvalue { i64, ptr } undef, i64 0, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v1, ptr %s0, ptr %t46, { i64, ptr } %t49)
  br label %bb5
bb5:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:Lowerer", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 60
  store ptr %t57, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t59 = load i64, ptr %l6, !tbaa !24
  store i64 %t59, ptr %l37, !tbaa !24
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l39
  br label %bb7
bb7:
  %t63 = load i64, ptr %l37, !tbaa !24
  %t64 = load i64, ptr %l39, !tbaa !24
  %t65 = icmp slt i64 %t63, %t64
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb8, label %bb9
bb8:
  br label %bb37
bb9:
  br label %bb10
bb10:
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t69, i64 %t70)
  store i64 %t73, ptr %l44
  br label %bb11
bb11:
  %t74 = load i64, ptr %l44, !tbaa !24
  store i64 %t74, ptr %l7, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:Lowerer", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t78, i64 %t80)
  store ptr %t83, ptr %l49
  br label %bb12
bb12:
  %t84 = load ptr, ptr %l49, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Body", ptr %t84, i32 0, i32 1
  %t87 = load { i64, [2 x i64] }, ptr %t86
  store { i64, [2 x i64] } %t87, ptr %l8
  %t89 = load { i64, [2 x i64] }, ptr %l8
  %t91 = extractvalue { i64, [2 x i64] } %t89, 0
  %t92 = icmp eq i64 %t91, 6
  br i1 %t92, label %bb13, label %bb14
bb13:
  %t94 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t95 = getelementptr { i64, i32 }, ptr %t94, i32 0, i32 0
  %t96 = load i64, ptr %t95
  store i64 %t96, ptr %l9, !tbaa !24
  br label %bb15
bb14:
  br label %bb30
bb15:
  %t98 = load i64, ptr %l9, !tbaa !24
  %t99 = load i64, ptr %l1, !tbaa !24
  %t102 = icmp eq i64 %t98, %t99
  br i1 %t102, label %bb16, label %bb17
bb16:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lower:Lowerer", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t112 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t107, i64 %t109)
  store ptr %t112, ptr %l63
  br label %bb18
bb17:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb19
bb18:
  %t113 = load ptr, ptr %l63, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Body", ptr %t113, i32 0, i32 11
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = icmp eq ptr %t116, null
  %t120 = xor i1 %t118, true
  store i1 %t120, ptr %l58, !tbaa !21
  br label %bb19
bb19:
  %t122 = load i1, ptr %l58, !tbaa !21
  br i1 %t122, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t123 = load ptr, ptr %lp4
  %t124 = getelementptr %"compiler/lower:lowering", ptr %t123, i32 0, i32 3
  %t126 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t124)
  store i32 %t126, ptr %l69
  br label %bb22
bb21:
  br label %bb29
bb22:
  %t127 = load i32, ptr %l69, !tbaa !23
  store i32 %t127, ptr %l10, !tbaa !23
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = trunc i64 %t128 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 0
  store i64 0, ptr %t133
  %t135 = insertvalue { i32 } undef, i32 %t130, 0
  %t136 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 1
  store { i32 } %t135, ptr %t136
  %t137 = load { i64, [2 x i64] }, ptr %t132
  store { i64, [2 x i64] } %t137, ptr %l73
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/lower:Lowerer", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = load i64, ptr %l7, !tbaa !24
  %t146 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t141, i64 %t143)
  store ptr %t146, ptr %l78
  br label %bb23
bb23:
  %t147 = load ptr, ptr %l78, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t147, i32 0, i32 2
  %t150 = load i32, ptr %t149, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [7 x i64] }, ptr %t151, i32 0, i32 0
  store i64 0, ptr %t152
  %t153 = load { i64, [2 x i64] }, ptr %l73
  %t154 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t153, 0
  %t156 = insertvalue { { i64, [2 x i64] }, i32 } %t154, i32 %t150, 1
  %t157 = getelementptr { i64, [7 x i64] }, ptr %t151, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t156, ptr %t157
  %t158 = load { i64, [7 x i64] }, ptr %t151
  %t160 = load ptr, ptr %lp4
  %t161 = getelementptr %"compiler/lower:lowering", ptr %t160, i32 0, i32 3
  store ptr %t161, ptr %l82, !tbaa !29
  %t163 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  %t164 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  %t165 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  %t166 = load i32, ptr %l10, !tbaa !23
  %t167 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t168 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t176 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s4, { i64, [7 x i64] } %t158, %"compiler/mir:Range" %t163, %"compiler/mir:Range" %t164, %"compiler/mir:Lvalue" %t165, i1 false, i32 %t166, i32 %t167, i32 %t168)
  store %"compiler/mir:Call" %t176, ptr %l90
  br label %bb24
bb24:
  %t177 = load ptr, ptr %l82, !tbaa !29
  %t178 = load %"compiler/mir:Call", ptr %l90
  %t179 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t177, %"compiler/mir:Call" %t178)
  store i32 %t179, ptr %l91
  br label %bb25
bb25:
  %t180 = load i32, ptr %l91, !tbaa !23
  store i32 %t180, ptr %l12, !tbaa !23
  %t181 = load ptr, ptr %lp4
  store ptr %t181, ptr %l92, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/lower:Lowerer", ptr %t182, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !29
  %t187 = load i64, ptr %l7, !tbaa !24
  %t190 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t185, i64 %t187)
  store ptr %t190, ptr %l97
  br label %bb26
bb26:
  %t191 = load ptr, ptr %l97, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Body", ptr %t191, i32 0, i32 4
  %t194 = load %"compiler/source:Span", ptr %t193
  %t195 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [8 x i64] }, ptr %t196, i32 0, i32 0
  store i64 4, ptr %t197
  %t199 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t194, 0
  %t201 = insertvalue { %"compiler/source:Span", i32 } %t199, i32 %t195, 1
  %t202 = getelementptr { i64, [8 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t201, ptr %t202
  %t203 = load { i64, [8 x i64] }, ptr %t196
  %t204 = load ptr, ptr %l92, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v1, ptr %t204, { i64, [8 x i64] } %t203)
  br label %bb27
bb27:
  %t206 = load ptr, ptr %lp4
  %t207 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v1, ptr %t206, i32 %t207)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %bb29
bb29:
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
  call void @__olang_check_failed(ptr @olang_loc_6409d1aa34b20bea_1e68de4bb2ab27de)
  unreachable
bb35:
  br label %bb36
bb36:
  %t210 = load i64, ptr %l6, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l6, !tbaa !24
  br label %bb6
bb37:
  %t214 = load ptr, ptr %lp4
  store { i64, [4 x i64] } zeroinitializer, ptr %t215
  %t216 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 0
  store i64 0, ptr %t216
  %t217 = load { i64, [4 x i64] }, ptr %t215
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v1, ptr %t214, { i64, [4 x i64] } %t217)
  br label %bb38
bb38:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load ptr, ptr %lp4
  %t222 = getelementptr %"compiler/lower:lowering", ptr %t221, i32 0, i32 11
  %t223 = load i1, ptr %t222, !tbaa !21
  %t226 = getelementptr %"compiler/lower:Lowerer", ptr %t220, i32 0, i32 7
  store i1 %t223, ptr %t226, !tbaa !21
  %t227 = load ptr, ptr %lp4
  %t228 = getelementptr %"compiler/lower:lowering", ptr %t227, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %t228, i64 800, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aFn(ptr %t229, ptr %v1, ptr %l110)
  call void @llvm.memmove.p0.p0.i64(ptr %l112, ptr %t229, i64 800, i1 false)
  br label %bb39
bb39:
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %l112, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l110, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l54 = alloca i32
  %l58 = alloca ptr
  %l63 = alloca %"compiler/mir:Local"
  %l64 = alloca i32
  %l71 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l86 = alloca { i64, [1 x i64] }
  %l94 = alloca i1
  %l100 = alloca i32
  %l106 = alloca i32
  %l113 = alloca ptr
  %l116 = alloca %"compiler/lower:level"
  %l119 = alloca i64
  %l120 = alloca i64
  %l125 = alloca %"compiler/mir:Lvalue"
  %l129 = alloca i64
  %l133 = alloca i64
  %l136 = alloca i64
  %l155 = alloca i64
  %l159 = alloca i32
  %l160 = alloca %"compiler/mir:Lvalue"
  %l166 = alloca i32
  %l169 = alloca i32
  %l174 = alloca i1
  %l181 = alloca i32
  %l184 = alloca ptr
  %l187 = alloca i32
  %l188 = alloca { i64, ptr }
  %l194 = alloca i32
  %l197 = alloca i32
  %l203 = alloca ptr
  %l204 = alloca { i64, [7 x i64] }
  %l208 = alloca %"compiler/mir:Range"
  %l212 = alloca %"compiler/mir:Range"
  %l216 = alloca %"compiler/mir:Lvalue"
  %l218 = alloca %"compiler/mir:Lvalue"
  %l226 = alloca %"compiler/mir:Call"
  %l227 = alloca i32
  %l238 = alloca ptr
  %l239 = alloca %"compiler/source:Span"
  %l241 = alloca %"compiler/mir:Lvalue"
  %l254 = alloca ptr
  %l258 = alloca { i64, [4 x i64] }
  %l260 = alloca ptr
  %l261 = alloca i32
  %l263 = alloca %"compiler/mir:Lvalue"
  %l267 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t66 = alloca { i64, [1 x i64] }, align 8
  %t130 = alloca { i64, [1 x i64] }, align 8
  %t135 = alloca { i64, [1 x i64] }, align 8
  %t158 = alloca { i64, [1 x i64] }, align 8
  %t184 = alloca { i64, [21 x i64] }, align 8
  %t228 = alloca { i64, [4 x i64] }, align 8
  %t304 = alloca { i64, [4 x i64] }, align 8
  %t387 = alloca { i64, [2 x i64] }, align 8
  %t394 = alloca { i64, [7 x i64] }, align 8
  %t457 = alloca { i64, [8 x i64] }, align 8
  %t484 = alloca { i64, [4 x i64] }, align 8
  %t490 = alloca { i64, [8 x i64] }, align 8
  %t512 = alloca { i64, [4 x i64] }, align 8
  %t515 = alloca { i64, [8 x i64] }, align 8
  %t534 = alloca { i64, [4 x i64] }, align 8
  %t543 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 4
  %t12 = load %"compiler/source:Span", ptr %t11
  store %"compiler/source:Span" %t12, ptr %l5
  %t14 = load ptr, ptr %l4, !tbaa !29
  store ptr %t14, ptr %l35, !tbaa !29
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 3
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t15, i32 %t20)
  store i32 %t23, ptr %l39
  br label %bb1
bb1:
  %t24 = load ptr, ptr %l35, !tbaa !29
  %t25 = load i32, ptr %l39, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l40
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t27, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l8, !tbaa !24
  br label %bb3
bb3:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t40 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t40, ptr %l47, !tbaa !27
  %t41 = load i64, ptr %l7, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i32, ptr %t44, i64 %t41
  %t46 = load i32, ptr %t45, !tbaa !33
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 3
  %t51 = load %"compiler/source:Span", ptr %l5
  %t56 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %t50, i32 0, %"compiler/source:Span" %t51, i32 %t46)
  store i32 %t56, ptr %l54
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l7, !tbaa !24
  br label %bb3
bb9:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/lower:lowering", ptr %t61, i32 0, i32 3
  store ptr %t63, ptr %l58, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l5
  %t65 = load i32, ptr %l3, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [1 x i64] }, ptr %t66, i32 0, i32 0
  store i64 3, ptr %t67
  %t68 = load { i64, [1 x i64] }, ptr %t66
  %t73 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 0, %"compiler/source:Span" %t64, i32 %t65, i32 1, { i64, [1 x i64] } %t68)
  store %"compiler/mir:Local" %t73, ptr %l63
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l58, !tbaa !29
  %t75 = load %"compiler/mir:Local", ptr %l63
  %t76 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %t74, %"compiler/mir:Local" %t75)
  store i32 %t76, ptr %l64
  br label %bb11
bb11:
  %t77 = load i32, ptr %l64, !tbaa !23
  store i32 %t77, ptr %l10, !tbaa !23
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/lower:lowering", ptr %t78, i32 0, i32 3
  %t81 = getelementptr %"compiler/mir:Fn", ptr %t80, i32 0, i32 5
  %t82 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t81, i32 %t82)
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lower:lowering", ptr %t86, i32 0, i32 3
  %t89 = getelementptr %"compiler/mir:Fn", ptr %t88, i32 0, i32 1
  %t90 = load i32, ptr %t89, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s4, ptr %t85, i32 %t90)
  store { i64, ptr } %t93, ptr %l71
  br label %bb13
bb13:
  %t94 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  %t96 = extractvalue { i64, ptr } %t94, 1
  %t97 = mul i64 %t95, 8
  %t98 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %l13, !tbaa !24
  br label %bb14
bb14:
  %t106 = load i64, ptr %l12, !tbaa !24
  %t107 = load i64, ptr %l13, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t114 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t114, ptr %l79, !tbaa !27
  %t115 = load i64, ptr %l12, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr i64, ptr %t118, i64 %t115
  %t120 = load i64, ptr %t119, !tbaa !34
  store i64 %t120, ptr %l14, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/lower:lowering", ptr %t122, i32 0, i32 3
  %t125 = getelementptr %"compiler/mir:Fn", ptr %t124, i32 0, i32 6
  store ptr %t125, ptr %l83, !tbaa !29
  %t126 = load i64, ptr %l14, !tbaa !24
  %t128 = icmp slt i64 %t126, 0
  br i1 %t128, label %bb18, label %bb19
bb18:
  store { i64, [1 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [1 x i64] }, ptr %t130, i32 0, i32 0
  store i64 1, ptr %t131
  %t132 = load { i64, [1 x i64] }, ptr %t130
  store { i64, [1 x i64] } %t132, ptr %l86
  br label %bb20
bb19:
  %t134 = load i64, ptr %l14, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [1 x i64] }, ptr %t135, i32 0, i32 0
  store i64 0, ptr %t136
  %t138 = insertvalue { i64 } undef, i64 %t134, 0
  %t139 = getelementptr { i64, [1 x i64] }, ptr %t135, i32 0, i32 1
  store { i64 } %t138, ptr %t139
  %t140 = load { i64, [1 x i64] }, ptr %t135
  store { i64, [1 x i64] } %t140, ptr %l86
  br label %bb20
bb20:
  %t142 = load ptr, ptr %l83, !tbaa !29
  %t143 = load { i64, [1 x i64] }, ptr %l86
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t142, { i64, [1 x i64] } %t143)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t144 = load i64, ptr %l12, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l12, !tbaa !24
  br label %bb14
bb23:
  call void @__olang_scope_close(ptr %s4)
  %t148 = load ptr, ptr %l4, !tbaa !29
  %t149 = load i32, ptr %l3, !tbaa !23
  %t152 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t148, i32 %t149)
  store i1 %t152, ptr %l94
  br label %bb24
bb24:
  %t153 = load i1, ptr %l94, !tbaa !21
  br i1 %t153, label %bb25, label %bb26
bb25:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/lower:lowering", ptr %t154, i32 0, i32 3
  %t157 = getelementptr %"compiler/mir:Fn", ptr %t156, i32 0, i32 6
  store { i64, [1 x i64] } zeroinitializer, ptr %t158
  %t159 = getelementptr { i64, [1 x i64] }, ptr %t158, i32 0, i32 0
  store i64 4, ptr %t159
  %t160 = insertvalue { i64 } undef, i64 0, 0
  %t161 = getelementptr { i64, [1 x i64] }, ptr %t158, i32 0, i32 1
  store { i64 } %t160, ptr %t161
  %t162 = load { i64, [1 x i64] }, ptr %t158
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t157, { i64, [1 x i64] } %t162)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/lower:lowering", ptr %t165, i32 0, i32 3
  %t169 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t167)
  store i32 %t169, ptr %l100
  br label %bb29
bb29:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/lower:lowering", ptr %t170, i32 0, i32 3
  %t173 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t174 = load %"compiler/source:Span", ptr %l5
  %t179 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t172, i32 0, i32 %t173, i32 -1, %"compiler/source:Span" %t174, i32 0)
  store i32 %t179, ptr %l106
  br label %bb30
bb30:
  %t180 = load i32, ptr %l106, !tbaa !23
  store i32 %t180, ptr %l15, !tbaa !23
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load %"compiler/source:Span", ptr %l5
  %t183 = load i32, ptr %l15, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t184
  %t185 = getelementptr { i64, [21 x i64] }, ptr %t184, i32 0, i32 0
  store i64 3, ptr %t185
  %t187 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t182, 0
  %t189 = insertvalue { %"compiler/source:Span", i32 } %t187, i32 %t183, 1
  %t190 = getelementptr { i64, [21 x i64] }, ptr %t184, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t189, ptr %t190
  %t191 = load { i64, [21 x i64] }, ptr %t184
  %t193 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t191, ptr %t193
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t181, ptr %t193)
  br label %bb31
bb31:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/lower:lowering", ptr %t196, i32 0, i32 12
  store ptr %t198, ptr %l113, !tbaa !29
  %t199 = load i32, ptr %l15, !tbaa !23
  %t202 = call %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %s0, i32 %t199, i32 -1, i32 0)
  store %"compiler/lower:level" %t202, ptr %l116
  br label %bb32
bb32:
  %t203 = load ptr, ptr %l113, !tbaa !29
  %t204 = load %"compiler/lower:level", ptr %l116
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t203, %"compiler/lower:level" %t204)
  br label %bb33
bb33:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/lower:lowering", ptr %t205, i32 0, i32 3
  %t208 = getelementptr %"compiler/mir:Fn", ptr %t207, i32 0, i32 4
  %t210 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t208)
  store i64 %t210, ptr %l119
  br label %bb34
bb34:
  %t211 = load i64, ptr %l119, !tbaa !24
  %t212 = add i64 %t211, 1
  store i64 %t212, ptr %l120, !tbaa !24
  %t213 = load i64, ptr %l120, !tbaa !24
  %t214 = icmp sge i64 %t213, 0
  br i1 %t214, label %bb35, label %bb36
bb35:
  %t216 = load i64, ptr %l120, !tbaa !24
  %t217 = icmp sle i64 %t216, 230584300921369395
  br i1 %t217, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_f03a362eaee136d1_c4ccf5bb34eed07d)
  unreachable
bb37:
  %t219 = load i64, ptr %l120, !tbaa !24
  %t220 = mul i64 %t219, 40
  %t221 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t220)
  %t222 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  store { i64, ptr } %t223, ptr %l16, !tbaa !27
  %t225 = load i32, ptr %l10, !tbaa !23
  %t227 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t225)
  store %"compiler/mir:Lvalue" %t227, ptr %l125
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_f03a362eaee136d1_c4ccf5bb34eed07d)
  unreachable
bb39:
  store { i64, [4 x i64] } zeroinitializer, ptr %t228
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t228, i32 0, i32 0
  store i64 1, ptr %t229
  %t230 = load %"compiler/mir:Lvalue", ptr %l125
  %t231 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t230, 0
  %t232 = getelementptr { i64, [4 x i64] }, ptr %t228, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t231, ptr %t232
  %t233 = load { i64, [4 x i64] }, ptr %t228
  %t235 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr { i64, [4 x i64] }, ptr %t236, i64 0
  store { i64, [4 x i64] } %t233, ptr %t237
  store i64 0, ptr %l17, !tbaa !24
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/lower:lowering", ptr %t238, i32 0, i32 3
  %t241 = getelementptr %"compiler/mir:Fn", ptr %t240, i32 0, i32 4
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t241)
  store i64 %t243, ptr %l129
  br label %bb40
bb40:
  %t244 = load i64, ptr %l129, !tbaa !24
  store i64 %t244, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t245 = load i64, ptr %l18, !tbaa !24
  %t246 = load i64, ptr %l17, !tbaa !24
  %t249 = icmp sgt i64 %t245, %t246
  br i1 %t249, label %bb41, label %bb42
bb41:
  %t251 = load i64, ptr %l19, !tbaa !24
  %t253 = icmp sgt i64 %t251, 0
  br i1 %t253, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb46
bb43:
  %t255 = load i64, ptr %l18, !tbaa !24
  %t256 = load i64, ptr %l17, !tbaa !24
  %t259 = sub i64 %t255, %t256
  %t260 = load i64, ptr %l19, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t265 = sub i64 %t263, 1
  %t266 = load i64, ptr %l19, !tbaa !24
  %t269 = sdiv i64 %t265, %t266
  store i64 %t269, ptr %l136, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb45
bb45:
  %t271 = load i64, ptr %l136, !tbaa !24
  store i64 %t271, ptr %l133, !tbaa !24
  br label %bb46
bb46:
  %t272 = load i64, ptr %l133, !tbaa !24
  store i64 %t272, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb47
bb47:
  %t273 = load i64, ptr %l21, !tbaa !24
  %t274 = load i64, ptr %l20, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb48, label %bb49
bb48:
  br label %bb54
bb49:
  br label %bb50
bb50:
  %t281 = load i64, ptr %l17, !tbaa !24
  %t282 = load i64, ptr %l21, !tbaa !24
  %t283 = load i64, ptr %l19, !tbaa !24
  %t286 = mul i64 %t282, %t283
  %t289 = add i64 %t281, %t286
  store i64 %t289, ptr %l22, !tbaa !24
  %t291 = load i64, ptr %l22, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l155, !tbaa !24
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/lower:lowering", ptr %t294, i32 0, i32 3
  %t297 = getelementptr %"compiler/mir:Fn", ptr %t296, i32 0, i32 4
  %t298 = load i64, ptr %l22, !tbaa !24
  %t301 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t297, i64 %t298)
  store i32 %t301, ptr %l159
  br label %bb51
bb51:
  %t302 = load i32, ptr %l159, !tbaa !23
  %t303 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t302)
  store %"compiler/mir:Lvalue" %t303, ptr %l160
  br label %bb52
bb52:
  store { i64, [4 x i64] } zeroinitializer, ptr %t304
  %t305 = getelementptr { i64, [4 x i64] }, ptr %t304, i32 0, i32 0
  store i64 1, ptr %t305
  %t306 = load %"compiler/mir:Lvalue", ptr %l160
  %t307 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t306, 0
  %t308 = getelementptr { i64, [4 x i64] }, ptr %t304, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t307, ptr %t308
  %t309 = load { i64, [4 x i64] }, ptr %t304
  %t311 = load i64, ptr %l155, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t313, i64 %t311
  store { i64, [4 x i64] } %t309, ptr %t314
  br label %bb53
bb53:
  %t315 = load i64, ptr %l21, !tbaa !24
  %t317 = add i64 %t315, 1
  store i64 %t317, ptr %l21, !tbaa !24
  br label %bb47
bb54:
  %t319 = load ptr, ptr %l4, !tbaa !29
  %t320 = load i32, ptr %l2, !tbaa !23
  %t323 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t319, i32 %t320)
  store i32 %t323, ptr %l166
  br label %bb55
bb55:
  %t324 = load i32, ptr %l166, !tbaa !23
  store i32 %t324, ptr %l23, !tbaa !23
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/lower:lowering", ptr %t325, i32 0, i32 3
  %t329 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t327)
  store i32 %t329, ptr %l169
  br label %bb56
bb56:
  %t330 = load i32, ptr %l169, !tbaa !23
  store i32 %t330, ptr %l24, !tbaa !23
  %t331 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t331, ptr %l25, !tbaa !23
  %t333 = load i32, ptr %l23, !tbaa !23
  %t334 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t337 = icmp ne i32 %t333, %t334
  br i1 %t337, label %bb57, label %bb58
bb57:
  %t339 = load i32, ptr %l23, !tbaa !23
  %t340 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t343 = icmp ne i32 %t339, %t340
  store i1 %t343, ptr %l174, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb59
bb59:
  %t345 = load i1, ptr %l174, !tbaa !21
  br i1 %t345, label %bb60, label %bb61
bb60:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load i32, ptr %l23, !tbaa !23
  %t348 = load %"compiler/source:Span", ptr %l5
  %t352 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t346, i32 %t347, %"compiler/source:Span" %t348)
  store i32 %t352, ptr %l181
  br label %bb62
bb61:
  br label %bb63
bb62:
  %t353 = load i32, ptr %l181, !tbaa !23
  store i32 %t353, ptr %l25, !tbaa !23
  br label %bb63
bb63:
  %t354 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t354, ptr %l26, !tbaa !23
  %t356 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t356, ptr %l27, !tbaa !23
  %t358 = load ptr, ptr %l4, !tbaa !29
  store ptr %t358, ptr %l184, !tbaa !29
  %t359 = load ptr, ptr %l4, !tbaa !29
  %t360 = load i32, ptr %l2, !tbaa !23
  %t363 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t359, i32 %t360)
  store i32 %t363, ptr %l187
  br label %bb64
bb64:
  %t364 = load ptr, ptr %l184, !tbaa !29
  %t365 = load i32, ptr %l187, !tbaa !23
  %t366 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t364, i32 %t365)
  store { i64, ptr } %t366, ptr %l188
  br label %bb65
bb65:
  %t367 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t367, 0
  %t370 = icmp sgt i64 %t368, 0
  br i1 %t370, label %bb66, label %bb67
bb66:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t374 = load %"compiler/source:Span", ptr %l5
  %t378 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t372, i32 %t373, %"compiler/source:Span" %t374)
  store i32 %t378, ptr %l194
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t379 = load i32, ptr %l194, !tbaa !23
  store i32 %t379, ptr %l26, !tbaa !23
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/lower:lowering", ptr %t380, i32 0, i32 3
  %t384 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t382)
  store i32 %t384, ptr %l197
  br label %bb69
bb69:
  %t385 = load i32, ptr %l197, !tbaa !23
  store i32 %t385, ptr %l27, !tbaa !23
  br label %bb70
bb70:
  %t386 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t387
  %t388 = getelementptr { i64, [2 x i64] }, ptr %t387, i32 0, i32 0
  store i64 0, ptr %t388
  %t390 = insertvalue { i32 } undef, i32 %t386, 0
  %t391 = getelementptr { i64, [2 x i64] }, ptr %t387, i32 0, i32 1
  store { i32 } %t390, ptr %t391
  %t392 = load { i64, [2 x i64] }, ptr %t387
  %t393 = load i32, ptr %l2, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t394
  %t395 = getelementptr { i64, [7 x i64] }, ptr %t394, i32 0, i32 0
  store i64 0, ptr %t395
  %t397 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t392, 0
  %t399 = insertvalue { { i64, [2 x i64] }, i32 } %t397, i32 %t393, 1
  %t400 = getelementptr { i64, [7 x i64] }, ptr %t394, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t399, ptr %t400
  %t401 = load { i64, [7 x i64] }, ptr %t394
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/lower:lowering", ptr %t403, i32 0, i32 3
  store ptr %t405, ptr %l203, !tbaa !29
  store { i64, [7 x i64] } %t401, ptr %l204
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/lower:lowering", ptr %t407, i32 0, i32 3
  %t410 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t413 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t409, { i64, ptr } %t410)
  store %"compiler/mir:Range" %t413, ptr %l208
  br label %bb71
bb71:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load i32, ptr %l2, !tbaa !23
  %t416 = load i32, ptr %l3, !tbaa !23
  %t420 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterPassed(ptr %v0, ptr %t414, i32 %t415, i32 %t416)
  store %"compiler/mir:Range" %t420, ptr %l212
  br label %bb72
bb72:
  %t421 = load i32, ptr %l25, !tbaa !23
  %t422 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t425 = icmp ne i32 %t421, %t422
  br i1 %t425, label %bb73, label %bb74
bb73:
  %t427 = load i32, ptr %l25, !tbaa !23
  %t429 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t427)
  store %"compiler/mir:Lvalue" %t429, ptr %l218
  br label %bb75
bb74:
  %t430 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  store %"compiler/mir:Lvalue" %t430, ptr %l216
  br label %bb76
bb75:
  %t432 = load %"compiler/mir:Lvalue", ptr %l218
  store %"compiler/mir:Lvalue" %t432, ptr %l216
  br label %bb76
bb76:
  %t433 = load i32, ptr %l25, !tbaa !23
  %t434 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t437 = icmp ne i32 %t433, %t434
  %t438 = load i32, ptr %l24, !tbaa !23
  %t439 = load i32, ptr %l26, !tbaa !23
  %t440 = load i32, ptr %l27, !tbaa !23
  %t441 = load { i64, [7 x i64] }, ptr %l204
  %t442 = load %"compiler/mir:Range", ptr %l208
  %t443 = load %"compiler/mir:Range", ptr %l212
  %t444 = load %"compiler/mir:Lvalue", ptr %l216
  %t449 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t441, %"compiler/mir:Range" %t442, %"compiler/mir:Range" %t443, %"compiler/mir:Lvalue" %t444, i1 %t437, i32 %t438, i32 %t439, i32 %t440)
  store %"compiler/mir:Call" %t449, ptr %l226
  br label %bb77
bb77:
  %t450 = load ptr, ptr %l203, !tbaa !29
  %t451 = load %"compiler/mir:Call", ptr %l226
  %t452 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t450, %"compiler/mir:Call" %t451)
  store i32 %t452, ptr %l227
  br label %bb78
bb78:
  %t453 = load i32, ptr %l227, !tbaa !23
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load %"compiler/source:Span", ptr %l5
  store { i64, [8 x i64] } zeroinitializer, ptr %t457
  %t458 = getelementptr { i64, [8 x i64] }, ptr %t457, i32 0, i32 0
  store i64 4, ptr %t458
  %t460 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t455, 0
  %t462 = insertvalue { %"compiler/source:Span", i32 } %t460, i32 %t453, 1
  %t463 = getelementptr { i64, [8 x i64] }, ptr %t457, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t462, ptr %t463
  %t464 = load { i64, [8 x i64] }, ptr %t457
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t454, { i64, [8 x i64] } %t464)
  br label %bb79
bb79:
  %t467 = load i32, ptr %l27, !tbaa !23
  %t468 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t471 = icmp ne i32 %t467, %t468
  br i1 %t471, label %bb80, label %bb81
bb80:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l27, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t473, i32 %t474)
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t477 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t477, i64 0)
  br label %bb83
bb83:
  %t479 = load ptr, ptr %l0, !tbaa !29
  store ptr %t479, ptr %l238, !tbaa !29
  %t480 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t480, ptr %l239
  %t481 = load i32, ptr %l26, !tbaa !23
  %t483 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t481)
  store %"compiler/mir:Lvalue" %t483, ptr %l241
  br label %bb84
bb84:
  store { i64, [4 x i64] } zeroinitializer, ptr %t484
  %t485 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 0
  store i64 1, ptr %t485
  %t486 = load %"compiler/mir:Lvalue", ptr %l241
  %t487 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t486, 0
  %t488 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t487, ptr %t488
  %t489 = load { i64, [4 x i64] }, ptr %t484
  store { i64, [8 x i64] } zeroinitializer, ptr %t490
  %t491 = getelementptr { i64, [8 x i64] }, ptr %t490, i32 0, i32 0
  store i64 7, ptr %t491
  %t492 = load %"compiler/source:Span", ptr %l239
  %t493 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t492, 0
  %t495 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t493, { i64, [4 x i64] } %t489, 1
  %t496 = getelementptr { i64, [8 x i64] }, ptr %t490, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t495, ptr %t496
  %t497 = load { i64, [8 x i64] }, ptr %t490
  %t498 = load ptr, ptr %l238, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t498, { i64, [8 x i64] } %t497)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t500, i32 %t501)
  br label %bb87
bb87:
  %t504 = load i32, ptr %l23, !tbaa !23
  %t505 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t508 = icmp eq i32 %t504, %t505
  br i1 %t508, label %bb88, label %bb89
bb88:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load %"compiler/source:Span", ptr %l5
  store { i64, [4 x i64] } zeroinitializer, ptr %t512
  %t513 = getelementptr { i64, [4 x i64] }, ptr %t512, i32 0, i32 0
  store i64 0, ptr %t513
  %t514 = load { i64, [4 x i64] }, ptr %t512
  store { i64, [8 x i64] } zeroinitializer, ptr %t515
  %t516 = getelementptr { i64, [8 x i64] }, ptr %t515, i32 0, i32 0
  store i64 9, ptr %t516
  %t518 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t511, 0
  %t520 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t518, i32 3, 1
  %t522 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t520, { i64, [4 x i64] } %t514, 2
  %t523 = getelementptr { i64, [8 x i64] }, ptr %t515, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t522, ptr %t523
  %t524 = load { i64, [8 x i64] }, ptr %t515
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t510, { i64, [8 x i64] } %t524)
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb91:
  %t527 = load ptr, ptr %l0, !tbaa !29
  store ptr %t527, ptr %l254, !tbaa !29
  %t528 = load i32, ptr %l25, !tbaa !23
  %t529 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t532 = icmp eq i32 %t528, %t529
  br i1 %t532, label %bb92, label %bb93
bb92:
  store { i64, [4 x i64] } zeroinitializer, ptr %t534
  %t535 = getelementptr { i64, [4 x i64] }, ptr %t534, i32 0, i32 0
  store i64 0, ptr %t535
  %t536 = load { i64, [4 x i64] }, ptr %t534
  store { i64, [4 x i64] } %t536, ptr %l258
  br label %bb96
bb93:
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l260, !tbaa !29
  %t539 = load i32, ptr %l1, !tbaa !23
  store i32 %t539, ptr %l261, !tbaa !23
  %t540 = load i32, ptr %l25, !tbaa !23
  %t542 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t540)
  store %"compiler/mir:Lvalue" %t542, ptr %l263
  br label %bb94
bb94:
  store { i64, [4 x i64] } zeroinitializer, ptr %t543
  %t544 = getelementptr { i64, [4 x i64] }, ptr %t543, i32 0, i32 0
  store i64 1, ptr %t544
  %t545 = load %"compiler/mir:Lvalue", ptr %l263
  %t546 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t545, 0
  %t547 = getelementptr { i64, [4 x i64] }, ptr %t543, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t546, ptr %t547
  %t548 = load { i64, [4 x i64] }, ptr %t543
  %t549 = load i32, ptr %l23, !tbaa !23
  %t550 = load %"compiler/source:Span", ptr %l5
  %t551 = load ptr, ptr %l260, !tbaa !29
  %t552 = load i32, ptr %l261, !tbaa !23
  %t556 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopied(ptr %v0, ptr %t551, i32 %t552, { i64, [4 x i64] } %t548, i32 %t549, %"compiler/source:Span" %t550)
  store { i64, [4 x i64] } %t556, ptr %l267
  br label %bb95
bb95:
  %t557 = load { i64, [4 x i64] }, ptr %l267
  store { i64, [4 x i64] } %t557, ptr %l258
  br label %bb96
bb96:
  %t558 = load ptr, ptr %l254, !tbaa !29
  %t559 = load { i64, [4 x i64] }, ptr %l258
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t558, { i64, [4 x i64] } %t559)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca %"compiler/lower:pl"
  %l7 = alloca %"compiler/lower:pl"
  %rv = alloca %"compiler/lower:pl"
  %t3 = alloca { i64, [2 x i64] }, align 8
  %t11 = alloca { i64, [1 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 0
  store i64 1, ptr %t4
  %t6 = insertvalue { i32 } undef, i32 %a1, 0
  %t7 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 1
  store { i32 } %t6, ptr %t7
  %t8 = load { i64, [2 x i64] }, ptr %t3
  %t10 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v1, { i64, [2 x i64] } %t8)
  store %"compiler/lower:pl" %t10, ptr %l5
  br label %bb1
bb1:
  store { i64, [1 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [1 x i64] }, ptr %t11, i32 0, i32 0
  store i64 3, ptr %t12
  %t13 = load { i64, [1 x i64] }, ptr %t11
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t15 = load %"compiler/lower:pl", ptr %l5
  %t17 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v1, ptr %t14, %"compiler/lower:pl" %t15, { i64, [1 x i64] } %t13)
  store %"compiler/lower:pl" %t17, ptr %l7
  br label %bb2
bb2:
  %t18 = load %"compiler/lower:pl", ptr %l7
  store %"compiler/lower:pl" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t1, i32 %a2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t10, ptr %a1)
  store i1 %t14, ptr %l10
  br label %bb5
bb5:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i1
  %l23 = alloca i1
  %l30 = alloca i32
  %l37 = alloca i32
  %l40 = alloca ptr
  %l43 = alloca i32
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %s9 = alloca %olang.scope
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
  %t6 = load i64, ptr %l2, !tbaa !24
  %t8 = icmp sgt i64 %t6, 16
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 47
  %t13 = load i32, ptr %l1, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t18 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t12, i64 %t15)
  store i1 %t18, ptr %l23
  br label %bb3
bb3:
  %t19 = load i1, ptr %l23, !tbaa !21
  store i1 %t19, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t20 = load i1, ptr %l18, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 47
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t23, i64 %t26, i1 true)
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l30
  br label %bb9
bb9:
  %t34 = load i32, ptr %l30, !tbaa !23
  store i32 %t34, ptr %l4, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 47
  %t38 = load i32, ptr %l4, !tbaa !23
  %t40 = sext i32 %t38 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t37, i64 %t40, i1 true)
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l37
  br label %bb11
bb11:
  %t48 = load i32, ptr %l37, !range !{i32 0, i32 33}
  store i32 %t48, ptr %l5
  %t49 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t51 = trunc i64 19 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l40, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t56 = load i32, ptr %l4, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l43
  br label %bb15
bb15:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = add i64 %t60, 1
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t64 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %t63, i32 %t64, i64 %t62)
  br label %bb16
bb16:
  br label %bb52
bb17:
  %t66 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t68 = trunc i64 22 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  %t71 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t73 = trunc i64 23 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb35
bb22:
  %t76 = load ptr, ptr %l3, !tbaa !29
  store ptr %t76, ptr %l50, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t78 = load i32, ptr %l4, !tbaa !23
  %t81 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t81, ptr %l53
  br label %bb23
bb23:
  %t82 = load ptr, ptr %l50, !tbaa !29
  %t83 = load i32, ptr %l53, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t82, i32 %t83)
  store { i64, ptr } %t84, ptr %l54
  br label %bb24
bb24:
  %t85 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t85, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  store i64 %t88, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  %t90 = load i64, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb26, label %bb27
bb26:
  br label %bb34
bb27:
  br label %bb28
bb28:
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t98, ptr %l61, !tbaa !27
  %t99 = load i64, ptr %l7, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 %t99
  %t104 = load i32, ptr %t103, !tbaa !33
  store i32 %t104, ptr %l9, !tbaa !23
  %t106 = load i32, ptr %l9, !tbaa !23
  %t108 = icmp ne i32 %t106, 0
  br i1 %t108, label %bb29, label %bb30
bb29:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l9, !tbaa !23
  %t112 = load i64, ptr %l2, !tbaa !24
  %t114 = add i64 %t112, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %t110, i32 %t111, i64 %t114)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l7, !tbaa !24
  br label %bb25
bb34:
  br label %bb52
bb35:
  %t122 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t124 = trunc i64 18 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb47
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t128 = load i32, ptr %l4, !tbaa !23
  %t131 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s9, ptr %t127, i32 %t128)
  store { i64, ptr } %t131, ptr %l76
  br label %bb39
bb39:
  %t132 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = mul i64 %t133, 4
  %t136 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t135)
  call void @llvm.memcpy.p0.p0.i64(ptr %t136, ptr %t134, i64 %t135, i1 false)
  %t137 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l12, !tbaa !24
  br label %bb40
bb40:
  %t144 = load i64, ptr %l11, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb41, label %bb42
bb41:
  br label %bb46
bb42:
  br label %bb43
bb43:
  %t152 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t152, ptr %l84, !tbaa !27
  %t153 = load i64, ptr %l11, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i64, ptr %l2, !tbaa !24
  %t164 = add i64 %t162, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %t160, i32 %t158, i64 %t164)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t168 = load i64, ptr %l11, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l11, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_b57cc0c231802eb3_c3a9863fe509851f)
  unreachable
bb52:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, [4 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 8
  %t4 = load { i64, [4 x i64] }, ptr %t3
  %t6 = extractvalue { i64, [4 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t9, i64 0)
  store { i64, [4 x i64] } %t11, ptr %l6
  br label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 8
  %t15 = load { i64, [4 x i64] }, ptr %t14
  store { i64, [4 x i64] } %t15, ptr %l4
  br label %bb4
bb3:
  %t17 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [4 x i64] } %t17, ptr %l4
  br label %bb4
bb4:
  %t18 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [4 x i64] } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ederef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l12 = alloca %"compiler/lower:pl"
  %l13 = alloca ptr
  %l14 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l18 = alloca i32
  %l19 = alloca ptr
  %l22 = alloca %"compiler/lower:pl"
  %l24 = alloca %"compiler/lower:pl"
  %rv = alloca %"compiler/lower:pl"
  %t13 = alloca { i64, [2 x i64] }, align 8
  %t33 = alloca { i64, [2 x i64] }, align 8
  %t41 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store { i64, [4 x i64] } %t6, ptr %l8
  br label %bb1
bb1:
  %t7 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } %t7, ptr %l3
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 10
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 0
  store i64 0, ptr %t14
  %t15 = load { i64, [2 x i64] }, ptr %t13
  %t17 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t15)
  store %"compiler/lower:pl" %t17, ptr %l12
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t18 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load { i64, [4 x i64] }, ptr %l3
  store { i64, [4 x i64] } %t20, ptr %l14
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t21)
  store i32 %t23, ptr %l16
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load { i64, [4 x i64] }, ptr %l14
  %t27 = load i32, ptr %l16, !tbaa !23
  %t29 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t25, { i64, [4 x i64] } %t26, i32 %t27, %"compiler/source:Span" %a2)
  store i32 %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = load i32, ptr %l18, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 0
  store i64 1, ptr %t34
  %t36 = insertvalue { i32 } undef, i32 %t30, 0
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 1
  store { i32 } %t36, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t33
  %t40 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t38)
  store %"compiler/lower:pl" %t40, ptr %l22
  br label %bb8
bb8:
  store { i64, [1 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [1 x i64] }, ptr %t41, i32 0, i32 0
  store i64 3, ptr %t42
  %t43 = load { i64, [1 x i64] }, ptr %t41
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = load %"compiler/lower:pl", ptr %l22
  %t47 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v2, ptr %v2, ptr %t44, %"compiler/lower:pl" %t45, { i64, [1 x i64] } %t43)
  store %"compiler/lower:pl" %t47, ptr %l24
  br label %bb9
bb9:
  %t48 = load %"compiler/lower:pl", ptr %l24
  store %"compiler/lower:pl" %t48, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eexitLevel(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/lower:level"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l14 = alloca %"compiler/lower:level"
  %l22 = alloca %"compiler/source:Span"
  %l28 = alloca %"compiler/typed:BlockInfo"
  %l39 = alloca %"compiler/mir:ScopeInfo"
  %l43 = alloca i32
  %l47 = alloca { i64, ptr }
  %l62 = alloca i32
  %l73 = alloca i32
  %l76 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i64
  %l96 = alloca i32
  %l98 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t100 = alloca { i64, [8 x i64] }, align 8
  %t143 = alloca { i64, [8 x i64] }, align 8
  %t173 = alloca { i64, [8 x i64] }, align 8
  %t202 = alloca { i64, [21 x i64] }, align 8
  %t221 = alloca { i64, [4 x i64] }, align 8
  %t253 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t8, i64 %t9)
  store %"compiler/lower:level" %t12, ptr %l14
  br label %bb4
bb4:
  %t13 = load %"compiler/lower:level", ptr %l14
  store %"compiler/lower:level" %t13, ptr %l2
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erunDefers(ptr %v0, ptr %t14, i64 %t15, i32 0)
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:lowering", ptr %t19, i32 0, i32 10
  %t22 = load i1, ptr %t21, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = icmp sge i32 %t25, 0
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t32, i32 0, i32 8
  %t35 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  %t41 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t34, i64 %t38)
  store %"compiler/typed:BlockInfo" %t41, ptr %l28
  br label %bb11
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Body", ptr %t45, i32 0, i32 4
  %t48 = load %"compiler/source:Span", ptr %t47
  store %"compiler/source:Span" %t48, ptr %l22
  br label %bb12
bb11:
  %t50 = getelementptr %"compiler/typed:BlockInfo", ptr %l28, i32 0, i32 2
  %t51 = load %"compiler/source:Span", ptr %t50
  store %"compiler/source:Span" %t51, ptr %l22
  br label %bb12
bb12:
  %t53 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t53, ptr %l3
  %t54 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 2
  %t55 = load i32, ptr %t54, !range !{i32 0, i32 7}
  %t57 = trunc i64 3 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:lowering", ptr %t60, i32 0, i32 3
  %t63 = getelementptr %"compiler/mir:Fn", ptr %t62, i32 0, i32 8
  %t64 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t65 = load i32, ptr %t64, !tbaa !23
  %t67 = sext i32 %t65 to i64
  %t70 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t63, i64 %t67)
  store %"compiler/mir:ScopeInfo" %t70, ptr %l39
  br label %bb15
bb14:
  br label %bb40
bb15:
  %t71 = getelementptr %"compiler/mir:ScopeInfo", ptr %l39, i32 0, i32 4
  %t72 = load i32, ptr %t71, !tbaa !23
  store i32 %t72, ptr %l4, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/lower:lowering", ptr %t74, i32 0, i32 3
  %t78 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t76)
  store i32 %t78, ptr %l43
  br label %bb16
bb16:
  %t79 = load i32, ptr %l43, !tbaa !23
  store i32 %t79, ptr %l5, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/lower:lowering", ptr %t80, i32 0, i32 2
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = load i32, ptr %l4, !tbaa !23
  %t87 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t83, i32 %t84)
  store { i64, ptr } %t87, ptr %l47
  br label %bb17
bb17:
  %t88 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  %t91 = icmp eq i64 %t89, 0
  br i1 %t91, label %bb18, label %bb19
bb18:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l3
  %t95 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t97 = load i32, ptr %l5, !tbaa !23
  %t98 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t99 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t100
  %t101 = getelementptr { i64, [8 x i64] }, ptr %t100, i32 0, i32 0
  store i64 8, ptr %t101
  %t103 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } undef, %"compiler/source:Span" %t94, 0
  %t105 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t103, i32 %t96, 1
  %t107 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t105, i32 %t97, 2
  %t109 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t107, i32 %t98, 3
  %t111 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t109, i32 %t99, 4
  %t112 = getelementptr { i64, [8 x i64] }, ptr %t100, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, i32 } %t111, ptr %t112
  %t113 = load { i64, [8 x i64] }, ptr %t100
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t93, { i64, [8 x i64] } %t113)
  br label %bb20
bb19:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/lower:lowering", ptr %t116, i32 0, i32 23
  %t119 = load i1, ptr %t118, !tbaa !21
  br i1 %t119, label %bb21, label %bb22
bb20:
  br label %bb34
bb21:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t123 = load %"compiler/source:Span", ptr %l3
  %t127 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t121, i32 %t122, %"compiler/source:Span" %t123)
  store i32 %t127, ptr %l62
  br label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t130 = load %"compiler/source:Span", ptr %l3
  %t134 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t128, i32 %t129, %"compiler/source:Span" %t130)
  store i32 %t134, ptr %l73
  br label %bb25
bb23:
  %t135 = load i32, ptr %l62, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l3
  %t138 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t139 = load i32, ptr %t138, !tbaa !23
  %t140 = load i32, ptr %l5, !tbaa !23
  %t142 = load i32, ptr %l5, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [8 x i64] }, ptr %t143, i32 0, i32 0
  store i64 8, ptr %t144
  %t146 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } undef, %"compiler/source:Span" %t137, 0
  %t148 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t146, i32 %t139, 1
  %t150 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t148, i32 %t140, 2
  %t152 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t150, i32 %t135, 3
  %t154 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t152, i32 %t142, 4
  %t155 = getelementptr { i64, [8 x i64] }, ptr %t143, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, i32 } %t154, ptr %t155
  %t156 = load { i64, [8 x i64] }, ptr %t143
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t136, { i64, [8 x i64] } %t156)
  br label %bb24
bb24:
  br label %bb33
bb25:
  %t159 = load i32, ptr %l73, !tbaa !23
  store i32 %t159, ptr %l7, !tbaa !23
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lower:lowering", ptr %t160, i32 0, i32 3
  %t164 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t162)
  store i32 %t164, ptr %l76
  br label %bb26
bb26:
  %t165 = load i32, ptr %l76, !tbaa !23
  store i32 %t165, ptr %l8, !tbaa !23
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l3
  %t168 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t169 = load i32, ptr %t168, !tbaa !23
  %t170 = load i32, ptr %l5, !tbaa !23
  %t171 = load i32, ptr %l7, !tbaa !23
  %t172 = load i32, ptr %l8, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [8 x i64] }, ptr %t173, i32 0, i32 0
  store i64 8, ptr %t174
  %t176 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } undef, %"compiler/source:Span" %t167, 0
  %t178 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t176, i32 %t169, 1
  %t180 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t178, i32 %t170, 2
  %t182 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t180, i32 %t171, 3
  %t184 = insertvalue { %"compiler/source:Span", i32, i32, i32, i32 } %t182, i32 %t172, 4
  %t185 = getelementptr { i64, [8 x i64] }, ptr %t173, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, i32 } %t184, ptr %t185
  %t186 = load { i64, [8 x i64] }, ptr %t173
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t166, { i64, [8 x i64] } %t186)
  br label %bb27
bb27:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t189, i32 %t190)
  br label %bb28
bb28:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erunDefers(ptr %v0, ptr %t193, i64 %t194, i32 1)
  br label %bb29
bb29:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l3
  %t200 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t201 = load i32, ptr %t200, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [21 x i64] }, ptr %t202, i32 0, i32 0
  store i64 4, ptr %t203
  %t205 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t199, 0
  %t207 = insertvalue { %"compiler/source:Span", i32 } %t205, i32 %t201, 1
  %t208 = getelementptr { i64, [21 x i64] }, ptr %t202, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t207, ptr %t208
  %t209 = load { i64, [21 x i64] }, ptr %t202
  %t211 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t209, ptr %t211
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t198, ptr %t211)
  br label %bb30
bb30:
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l94, !tbaa !29
  %t215 = load i64, ptr %l1, !tbaa !24
  store i64 %t215, ptr %l95, !tbaa !24
  %t216 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t217 = load i32, ptr %t216, !tbaa !23
  store i32 %t217, ptr %l96, !tbaa !23
  %t218 = load i32, ptr %l7, !tbaa !23
  %t220 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t218)
  store %"compiler/mir:Lvalue" %t220, ptr %l98
  br label %bb31
bb31:
  store { i64, [4 x i64] } zeroinitializer, ptr %t221
  %t222 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 0
  store i64 1, ptr %t222
  %t223 = load %"compiler/mir:Lvalue", ptr %l98
  %t224 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t223, 0
  %t225 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t224, ptr %t225
  %t226 = load { i64, [4 x i64] }, ptr %t221
  %t227 = load i32, ptr %l4, !tbaa !23
  %t228 = load %"compiler/source:Span", ptr %l3
  %t229 = load ptr, ptr %l94, !tbaa !29
  %t230 = load i64, ptr %l95, !tbaa !24
  %t231 = load i32, ptr %l96, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinFailed(ptr %v0, ptr %t229, i64 %t230, i32 %t231, { i64, [4 x i64] } %t226, i32 %t227, %"compiler/source:Span" %t228)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s7)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t235, i32 %t236)
  br label %bb35
bb35:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erunDefers(ptr %v0, ptr %t239, i64 %t240, i32 2)
  br label %bb36
bb36:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/lower:lowering", ptr %t244, i32 0, i32 10
  %t247 = load i1, ptr %t246, !tbaa !21
  br i1 %t247, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb40:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load %"compiler/source:Span", ptr %l3
  %t251 = getelementptr %"compiler/lower:level", ptr %l2, i32 0, i32 0
  %t252 = load i32, ptr %t251, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [21 x i64] }, ptr %t253, i32 0, i32 0
  store i64 4, ptr %t254
  %t256 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t250, 0
  %t258 = insertvalue { %"compiler/source:Span", i32 } %t256, i32 %t252, 1
  %t259 = getelementptr { i64, [21 x i64] }, ptr %t253, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t258, ptr %t259
  %t260 = load { i64, [21 x i64] }, ptr %t253
  %t262 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t260, ptr %t262
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t249, ptr %t262)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l11 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i1
  %l26 = alloca i32
  %l29 = alloca i1
  %l32 = alloca i32
  %l34 = alloca i1
  %l37 = alloca i32
  %l39 = alloca i1
  %l40 = alloca ptr
  %l43 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l3, !tbaa !29
  store ptr %t11, ptr %l11, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t12)
  store i32 %t14, ptr %l13
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l11, !tbaa !29
  %t16 = load i32, ptr %l13, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l14
  br label %bb5
bb5:
  %t18 = load i32, ptr %l14, !tbaa !23
  store i32 %t18, ptr %l4, !tbaa !23
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t19, i32 %a2)
  store i32 %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load i32, ptr %l17, !tbaa !23
  store i32 %t24, ptr %l5, !tbaa !23
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l20
  br label %bb7
bb7:
  %t30 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t32 = trunc i64 19 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t36 = load i32, ptr %l5, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t40 = load i32, ptr %l26, !range !{i32 0, i32 33}
  %t42 = trunc i64 19 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t47 = load i32, ptr %l4, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l32
  br label %bb14
bb13:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb15
bb14:
  %t51 = load i32, ptr %l32, !tbaa !23
  %t52 = icmp ne i32 %t51, 0
  store i1 %t52, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t54 = load i1, ptr %l29, !tbaa !21
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t56 = load i32, ptr %l5, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l37
  br label %bb18
bb17:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb19
bb18:
  %t60 = load i32, ptr %l37, !tbaa !23
  %t61 = icmp eq i32 %t60, 0
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb20, label %bb21
bb20:
  %t64 = load ptr, ptr %l3, !tbaa !29
  store ptr %t64, ptr %l40, !tbaa !29
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t66 = load i32, ptr %l4, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l43
  br label %bb22
bb21:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb25
bb22:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t71 = load i32, ptr %l5, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l46
  br label %bb23
bb23:
  %t75 = load ptr, ptr %l40, !tbaa !29
  %t76 = load i32, ptr %l43, !tbaa !23
  %t77 = load i32, ptr %l46, !tbaa !23
  %t78 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t75, i32 %t76, i32 %t77)
  store i1 %t78, ptr %l47
  br label %bb24
bb24:
  %t79 = load i1, ptr %l47, !tbaa !21
  store i1 %t79, ptr %l39, !tbaa !21
  br label %bb25
bb25:
  %t80 = load i1, ptr %l39, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eisCaseRef(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [4 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca %"compiler/mir:Lvalue"
  %l21 = alloca { i64, [4 x i64] }
  %l29 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l34 = alloca %"compiler/mir:Lvalue"
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, [4 x i64] }
  %l43 = alloca i32
  %l46 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca i32
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"compiler/mir:Lvalue"
  %l65 = alloca { i64, [4 x i64] }
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l69 = alloca %"compiler/mir:Lvalue"
  %l70 = alloca i32
  %l71 = alloca i32
  %l73 = alloca ptr
  %l74 = alloca { i64, [4 x i64] }
  %l79 = alloca { i64, [4 x i64] }
  %l80 = alloca { i64, ptr }
  %l81 = alloca %"compiler/mir:Range"
  %l90 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t19 = alloca { i64, [15 x i64] }, align 8
  %t25 = alloca { i64, [21 x i64] }, align 8
  %t54 = alloca { i64, [4 x i64] }, align 8
  %t61 = alloca { i64, [4 x i64] }, align 8
  %t104 = alloca { i64, [8 x i64] }, align 8
  %t126 = alloca { i64, [2 x i64] }, align 8
  %t132 = alloca { i64, [1 x i64] }, align 8
  %t147 = alloca { i64, [15 x i64] }, align 8
  %t194 = alloca { i64, [15 x i64] }, align 8
  %t204 = alloca { i64, [21 x i64] }, align 8
  %t229 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l4
  %t7 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store i32 %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load i32, ptr %l14, !tbaa !23
  store i32 %t8, ptr %l5, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l15, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t10, ptr %l16
  %t11 = load i32, ptr %l5, !tbaa !23
  %t13 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t11)
  store %"compiler/mir:Lvalue" %t13, ptr %l18
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l4
  %t18 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %t14, i1 false, %"compiler/source:Span" %t15)
  store { i64, [4 x i64] } %t18, ptr %l21
  br label %bb3
bb3:
  store { i64, [15 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [15 x i64] }, ptr %t19, i32 0, i32 0
  store i64 0, ptr %t20
  %t21 = load { i64, [4 x i64] }, ptr %l21
  %t22 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t21, 0
  %t23 = getelementptr { i64, [15 x i64] }, ptr %t19, i32 0, i32 1
  store { { i64, [4 x i64] } } %t22, ptr %t23
  %t24 = load { i64, [15 x i64] }, ptr %t19
  store { i64, [21 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [21 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t27 = load %"compiler/source:Span", ptr %l16
  %t28 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t27, 0
  %t29 = load %"compiler/mir:Lvalue", ptr %l18
  %t30 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t28, %"compiler/mir:Lvalue" %t29, 1
  %t32 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t30, { i64, [15 x i64] } %t24, 2
  %t33 = getelementptr { i64, [21 x i64] }, ptr %t25, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t32, ptr %t33
  %t34 = load { i64, [21 x i64] }, ptr %t25
  %t36 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t34, ptr %t36
  %t37 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t37, ptr %t36)
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load %"compiler/source:Span", ptr %l4
  %t47 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t39, { i64, [4 x i64] } %a1, i32 %t41, %"compiler/source:Span" %t42)
  store i32 %t47, ptr %l29
  br label %bb5
bb5:
  %t48 = load i32, ptr %l29, !tbaa !23
  store i32 %t48, ptr %l6, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  store i32 14, ptr %l31
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t50, ptr %l32, !tbaa !23
  %t51 = load i32, ptr %l6, !tbaa !23
  %t53 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t51)
  store %"compiler/mir:Lvalue" %t53, ptr %l34
  br label %bb6
bb6:
  store { i64, [4 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 0
  store i64 1, ptr %t55
  %t56 = load %"compiler/mir:Lvalue", ptr %l34
  %t57 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t56, 0
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t57, ptr %t58
  %t59 = load { i64, [4 x i64] }, ptr %t54
  %t60 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 0
  store i64 2, ptr %t62
  %t64 = insertvalue { i32, i64 } undef, i32 %t60, 0
  %t65 = insertvalue { i32, i64 } %t64, i64 0, 1
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  store { i32, i64 } %t65, ptr %t66
  %t67 = load { i64, [4 x i64] }, ptr %t61
  %t68 = mul i64 2, 40
  %t69 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 2, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l38, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t74, i64 0
  store { i64, [4 x i64] } %t59, ptr %t75
  %t77 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t78, i64 1
  store { i64, [4 x i64] } %t67, ptr %t79
  %t80 = load %"compiler/source:Span", ptr %l4
  %t81 = load ptr, ptr %l30, !tbaa !29
  %t82 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t83 = load i32, ptr %l32, !tbaa !23
  %t84 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t86 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t81, i32 %t82, i32 %t83, { i64, ptr } %t84, %"compiler/source:Span" %t80)
  store { i64, [4 x i64] } %t86, ptr %l40
  br label %bb7
bb7:
  %t87 = load { i64, [4 x i64] }, ptr %l40
  store { i64, [4 x i64] } %t87, ptr %l7
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lower:lowering", ptr %t88, i32 0, i32 3
  %t92 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t90)
  store i32 %t92, ptr %l43
  br label %bb8
bb8:
  %t93 = load i32, ptr %l43, !tbaa !23
  store i32 %t93, ptr %l8, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 3
  %t98 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t96)
  store i32 %t98, ptr %l46
  br label %bb9
bb9:
  %t99 = load i32, ptr %l46, !tbaa !23
  store i32 %t99, ptr %l9, !tbaa !23
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load { i64, [4 x i64] }, ptr %l7
  %t102 = load i32, ptr %l8, !tbaa !23
  %t103 = load i32, ptr %l9, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [8 x i64] }, ptr %t104, i32 0, i32 0
  store i64 2, ptr %t105
  %t107 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t101, 0
  %t109 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t107, i32 %t102, 1
  %t111 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t109, i32 %t103, 2
  %t112 = getelementptr { i64, [8 x i64] }, ptr %t104, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t111, ptr %t112
  %t113 = load { i64, [8 x i64] }, ptr %t104
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t100, { i64, [8 x i64] } %t113)
  br label %bb10
bb10:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t116, i32 %t117)
  br label %bb11
bb11:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l54, !tbaa !29
  %t121 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t121, ptr %l55, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/lower:lowering", ptr %t122, i32 0, i32 3
  %t125 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [2 x i64] }, ptr %t126, i32 0, i32 0
  store i64 1, ptr %t127
  %t129 = insertvalue { i32 } undef, i32 %t125, 0
  %t130 = getelementptr { i64, [2 x i64] }, ptr %t126, i32 0, i32 1
  store { i32 } %t129, ptr %t130
  %t131 = load { i64, [2 x i64] }, ptr %t126
  store { i64, [1 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [1 x i64] }, ptr %t132, i32 0, i32 0
  store i64 3, ptr %t133
  %t134 = load { i64, [1 x i64] }, ptr %t132
  %t135 = mul i64 1, 16
  %t136 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 1, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l61, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, [1 x i64] }, ptr %t141, i64 0
  store { i64, [1 x i64] } %t134, ptr %t142
  %t145 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t146 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t124, { i64, [2 x i64] } %t131, { i64, ptr } %t145)
  store %"compiler/mir:Lvalue" %t146, ptr %l62
  br label %bb12
bb12:
  store { i64, [15 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [15 x i64] }, ptr %t147, i32 0, i32 0
  store i64 5, ptr %t148
  %t149 = load %"compiler/mir:Lvalue", ptr %l62
  %t150 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t149, 0
  %t151 = getelementptr { i64, [15 x i64] }, ptr %t147, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t150, ptr %t151
  %t152 = load { i64, [15 x i64] }, ptr %t147
  %t153 = load %"compiler/source:Span", ptr %l4
  %t154 = load ptr, ptr %l54, !tbaa !29
  %t155 = load i32, ptr %l55, !tbaa !23
  %t158 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t154, i32 %t155, { i64, [15 x i64] } %t152, %"compiler/source:Span" %t153)
  store { i64, [4 x i64] } %t158, ptr %l65
  br label %bb13
bb13:
  %t159 = load { i64, [4 x i64] }, ptr %l65
  store { i64, [4 x i64] } %t159, ptr %l10
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l66, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t161, ptr %l67
  %t162 = load i32, ptr %l5, !tbaa !23
  %t164 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t162)
  store %"compiler/mir:Lvalue" %t164, ptr %l69
  br label %bb14
bb14:
  store i32 13, ptr %l70
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t165, ptr %l71, !tbaa !23
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/lower:lowering", ptr %t166, i32 0, i32 3
  store ptr %t168, ptr %l73, !tbaa !29
  %t169 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t169, ptr %l74
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t173 = load %"compiler/source:Span", ptr %l4
  %t178 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t170, { i64, [4 x i64] } %a3, i32 %t172, %"compiler/source:Span" %t173)
  store { i64, [4 x i64] } %t178, ptr %l79
  br label %bb15
bb15:
  %t179 = mul i64 2, 40
  %t180 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t179)
  %t181 = insertvalue { i64, ptr } undef, i64 2, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  store { i64, ptr } %t182, ptr %l80, !tbaa !27
  %t183 = load { i64, [4 x i64] }, ptr %l74
  %t184 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t185, i64 0
  store { i64, [4 x i64] } %t183, ptr %t186
  %t187 = load { i64, [4 x i64] }, ptr %l79
  %t188 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i64 1
  store { i64, [4 x i64] } %t187, ptr %t190
  %t191 = load ptr, ptr %l73, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t193 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t191, { i64, ptr } %t192)
  store %"compiler/mir:Range" %t193, ptr %l81
  br label %bb16
bb16:
  store { i64, [15 x i64] } zeroinitializer, ptr %t194
  %t195 = getelementptr { i64, [15 x i64] }, ptr %t194, i32 0, i32 0
  store i64 3, ptr %t195
  %t196 = load i32, ptr %l70, !range !{i32 0, i32 52}
  %t197 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t196, 0
  %t198 = load i32, ptr %l71, !tbaa !23
  %t199 = insertvalue { i32, i32, %"compiler/mir:Range" } %t197, i32 %t198, 1
  %t200 = load %"compiler/mir:Range", ptr %l81
  %t201 = insertvalue { i32, i32, %"compiler/mir:Range" } %t199, %"compiler/mir:Range" %t200, 2
  %t202 = getelementptr { i64, [15 x i64] }, ptr %t194, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t201, ptr %t202
  %t203 = load { i64, [15 x i64] }, ptr %t194
  store { i64, [21 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [21 x i64] }, ptr %t204, i32 0, i32 0
  store i64 0, ptr %t205
  %t206 = load %"compiler/source:Span", ptr %l67
  %t207 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t206, 0
  %t208 = load %"compiler/mir:Lvalue", ptr %l69
  %t209 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t207, %"compiler/mir:Lvalue" %t208, 1
  %t211 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t209, { i64, [15 x i64] } %t203, 2
  %t212 = getelementptr { i64, [21 x i64] }, ptr %t204, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t211, ptr %t212
  %t213 = load { i64, [21 x i64] }, ptr %t204
  %t215 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t213, ptr %t215
  %t216 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t216, ptr %t215)
  br label %bb17
bb17:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t218, i32 %t219)
  br label %bb18
bb18:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t222, i32 %t223)
  br label %bb19
bb19:
  %t226 = load i32, ptr %l5, !tbaa !23
  %t228 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t226)
  store %"compiler/mir:Lvalue" %t228, ptr %l90
  br label %bb20
bb20:
  store { i64, [4 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [4 x i64] }, ptr %t229, i32 0, i32 0
  store i64 1, ptr %t230
  %t231 = load %"compiler/mir:Lvalue", ptr %l90
  %t232 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t231, 0
  %t233 = getelementptr { i64, [4 x i64] }, ptr %t229, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t232, ptr %t233
  %t234 = load { i64, [4 x i64] }, ptr %t229
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t234, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca %"compiler/typed:BlockInfo"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 8
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:lowering", ptr %t7, i32 0, i32 15
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %s0, ptr %t9, i64 %a1)
  store ptr %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Block", ptr %t14, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t20, i64 %t19)
  store %"compiler/typed:BlockInfo" %t22, ptr %l12
  br label %bb2
bb2:
  %t23 = getelementptr %"compiler/typed:BlockInfo", ptr %l12, i32 0, i32 1
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 10}
  %t26 = trunc i64 8 to i32
  %t27 = icmp eq i32 %t24, %t26
  call void @__olang_scope_close(ptr %s0)
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elaidApart(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i1
  %l22 = alloca i32
  %l25 = alloca i1
  %l28 = alloca i32
  %l30 = alloca i1
  %l33 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t12, i32 %a2)
  store i32 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i32, ptr %l13, !tbaa !23
  store i32 %t17, ptr %l5, !tbaa !23
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t19 = load i32, ptr %l4, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l16
  br label %bb3
bb3:
  %t23 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t25 = trunc i64 19 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t29 = load i32, ptr %l5, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l22
  br label %bb6
bb5:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb7
bb6:
  %t33 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t35 = trunc i64 19 to i32
  %t36 = icmp eq i32 %t33, %t35
  store i1 %t36, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t40 = load i32, ptr %l4, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l28
  br label %bb10
bb9:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  %t44 = load i32, ptr %l28, !tbaa !23
  %t45 = icmp ne i32 %t44, 0
  store i1 %t45, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l33
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  %t53 = load i32, ptr %l33, !tbaa !23
  %t54 = icmp eq i32 %t53, 0
  store i1 %t54, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l30, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2elambda(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, i32 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i1
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l22 = alloca ptr
  %l28 = alloca { i64, [1 x i64] }
  %l32 = alloca { i64, [1 x i64] }
  %l35 = alloca { i64, [1 x i64] }
  %l37 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l67 = alloca i64
  %l69 = alloca { i64, ptr }
  %l74 = alloca { i64, [4 x i64] }
  %l75 = alloca { i64, ptr }
  %l79 = alloca i32
  %l83 = alloca i1
  %l86 = alloca i1
  %l87 = alloca i64
  %l94 = alloca { i64, [4 x i64] }
  %l95 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca i1
  %l102 = alloca i1
  %l106 = alloca i1
  %l108 = alloca i1
  %l112 = alloca i1
  %l113 = alloca i64
  %l114 = alloca ptr
  %l116 = alloca { i64, [4 x i64] }
  %l117 = alloca i32
  %l120 = alloca { i64, [1 x i64] }
  %l122 = alloca { i64, [4 x i64] }
  %l128 = alloca ptr
  %l129 = alloca i32
  %l131 = alloca { i64, [2 x i64] }
  %l132 = alloca i32
  %l133 = alloca { i64, [1 x i64] }
  %l137 = alloca %"compiler/mir:Range"
  %l140 = alloca %"compiler/mir:Range"
  %l143 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t26 = alloca { i64, [1 x i64] }, align 8
  %t253 = alloca { i64, [4 x i64] }, align 8
  %t260 = alloca { i64, [2 x i64] }, align 8
  %t280 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %t11)
  store ptr %t14, ptr %l22
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l22, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 14
  %t18 = load i1, ptr %t17, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t24 = icmp eq i64 %t22, 0
  br i1 %t24, label %bb2, label %bb3
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [1 x i64] }, ptr %t26, i32 0, i32 0
  store i64 3, ptr %t27
  %t28 = load { i64, [1 x i64] }, ptr %t26
  store { i64, [1 x i64] } %t28, ptr %l28
  br label %bb5
bb3:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t30, i32 %t31)
  store { i64, [1 x i64] } %t34, ptr %l32
  br label %bb4
bb4:
  %t35 = load { i64, [1 x i64] }, ptr %l32
  store { i64, [1 x i64] } %t35, ptr %l28
  br label %bb5
bb5:
  %t36 = load { i64, [1 x i64] }, ptr %l28
  store { i64, [1 x i64] } %t36, ptr %l7
  %t37 = load i1, ptr %l6, !tbaa !21
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t39)
  store { i64, [1 x i64] } %t41, ptr %l35
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t42 = load { i64, [1 x i64] }, ptr %l35
  store { i64, [1 x i64] } %t42, ptr %l7
  br label %bb9
bb9:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l37, !tbaa !24
  %t46 = load i64, ptr %l37, !tbaa !24
  %t47 = icmp sge i64 %t46, 0
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load i64, ptr %l37, !tbaa !24
  %t50 = icmp sle i64 %t49, 230584300921369395
  br i1 %t50, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_8dbdd81ef51b3d23_89b419ac5748f287)
  unreachable
bb12:
  %t52 = load i64, ptr %l37, !tbaa !24
  %t53 = mul i64 %t52, 40
  %t54 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8dbdd81ef51b3d23_89b419ac5748f287)
  unreachable
bb14:
  %t68 = load i64, ptr %l11, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb19
bb16:
  %t72 = load i64, ptr %l10, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l11, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l49, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb18
bb18:
  %t88 = load i64, ptr %l49, !tbaa !24
  store i64 %t88, ptr %l46, !tbaa !24
  br label %bb19
bb19:
  %t89 = load i64, ptr %l46, !tbaa !24
  store i64 %t89, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  %t90 = load i64, ptr %l13, !tbaa !24
  %t91 = load i64, ptr %l12, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb21, label %bb22
bb21:
  br label %bb53
bb22:
  br label %bb23
bb23:
  %t98 = load i64, ptr %l9, !tbaa !24
  %t99 = load i64, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l11, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l14, !tbaa !24
  %t108 = load i64, ptr %l14, !tbaa !24
  store i64 %t108, ptr %l67, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t110, ptr %l69, !tbaa !27
  %t111 = load i64, ptr %l14, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr ptr, ptr %t114, i64 %t111
  %t116 = load ptr, ptr %t115, !tbaa !39
  %t118 = getelementptr %"compiler/typed:Capture", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t123 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t109, ptr %t119)
  store { i64, [4 x i64] } %t123, ptr %l74
  br label %bb24
bb24:
  %t124 = load { i64, [4 x i64] }, ptr %l74
  %t125 = load i64, ptr %l67, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t127, i64 %t125
  store { i64, [4 x i64] } %t124, ptr %t128
  %t129 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t129, ptr %l75, !tbaa !27
  %t130 = load i64, ptr %l14, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr ptr, ptr %t133, i64 %t130
  %t135 = load ptr, ptr %t134, !tbaa !39
  %t137 = getelementptr %"compiler/typed:Capture", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t138)
  store i32 %t140, ptr %l79
  br label %bb25
bb25:
  %t141 = load i32, ptr %l79, !tbaa !23
  store i32 %t141, ptr %l15, !tbaa !23
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/lower:lowering", ptr %t142, i32 0, i32 10
  %t145 = load i1, ptr %t144, !tbaa !21
  br i1 %t145, label %bb26, label %bb27
bb26:
  br label %bb52
bb27:
  br label %bb28
bb28:
  %t147 = load i1, ptr %l6, !tbaa !21
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l15, !tbaa !23
  %t153 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t149, i32 %t150)
  store i1 %t153, ptr %l86
  br label %bb31
bb30:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb32
bb31:
  %t154 = load i1, ptr %l86, !tbaa !21
  store i1 %t154, ptr %l83, !tbaa !21
  br label %bb32
bb32:
  %t155 = load i1, ptr %l83, !tbaa !21
  br i1 %t155, label %bb33, label %bb34
bb33:
  %t156 = load i64, ptr %l14, !tbaa !24
  store i64 %t156, ptr %l87, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i64, ptr %l14, !tbaa !24
  %t160 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, [4 x i64] }, ptr %t161, i64 %t158
  %t163 = load { i64, [4 x i64] }, ptr %t162
  %t164 = load i32, ptr %l15, !tbaa !23
  %t165 = load %"compiler/source:Span", ptr %l5
  %t166 = load { i64, [1 x i64] }, ptr %l7
  %t172 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t157, { i64, [4 x i64] } %t163, i32 %t164, %"compiler/source:Span" %t165, { i64, [1 x i64] } %t166, i1 false)
  store { i64, [4 x i64] } %t172, ptr %l94
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t173 = load { i64, [4 x i64] }, ptr %l94
  %t174 = load i64, ptr %l87, !tbaa !24
  %t175 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr { i64, [4 x i64] }, ptr %t176, i64 %t174
  store { i64, [4 x i64] } %t173, ptr %t177
  br label %bb36
bb36:
  %t178 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t178, ptr %l95, !tbaa !27
  %t179 = load i64, ptr %l14, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr ptr, ptr %t182, i64 %t179
  %t184 = load ptr, ptr %t183, !tbaa !39
  %t186 = getelementptr %"compiler/typed:Capture", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  store ptr %t187, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t188 = load ptr, ptr %l98, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb37, label %bb38
bb37:
  %t191 = load ptr, ptr %l98, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 18}
  %t194 = icmp eq i64 %t192, 2
  store i1 %t194, ptr %l99, !tbaa !21
  br label %bb38
bb38:
  %t195 = load i1, ptr %l99, !tbaa !21
  br i1 %t195, label %bb39, label %bb40
bb39:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/lower:lowering", ptr %t196, i32 0, i32 2
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t200 = load i32, ptr %l15, !tbaa !23
  %t203 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t199, i32 %t200)
  store i1 %t203, ptr %l106
  br label %bb41
bb40:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb42
bb41:
  %t204 = load i1, ptr %l106, !tbaa !21
  %t205 = xor i1 %t204, true
  store i1 %t205, ptr %l102, !tbaa !21
  br label %bb42
bb42:
  %t207 = load i1, ptr %l102, !tbaa !21
  br i1 %t207, label %bb43, label %bb44
bb43:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/lower:lowering", ptr %t208, i32 0, i32 2
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t212 = load i32, ptr %l15, !tbaa !23
  %t215 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t211, i32 %t212)
  store i1 %t215, ptr %l112
  br label %bb45
bb44:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb46
bb45:
  %t216 = load i1, ptr %l112, !tbaa !21
  store i1 %t216, ptr %l108, !tbaa !21
  br label %bb46
bb46:
  %t217 = load i1, ptr %l108, !tbaa !21
  br i1 %t217, label %bb47, label %bb48
bb47:
  %t218 = load i64, ptr %l14, !tbaa !24
  store i64 %t218, ptr %l113, !tbaa !24
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l114, !tbaa !29
  %t220 = load i64, ptr %l14, !tbaa !24
  %t222 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr { i64, [4 x i64] }, ptr %t223, i64 %t220
  %t225 = load { i64, [4 x i64] }, ptr %t224
  store { i64, [4 x i64] } %t225, ptr %l116
  %t226 = load i32, ptr %l15, !tbaa !23
  store i32 %t226, ptr %l117, !tbaa !23
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, [1 x i64] }, ptr %l7
  %t231 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyHome(ptr %v0, ptr %t227, { i64, [1 x i64] } %t228)
  store { i64, [1 x i64] } %t231, ptr %l120
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t232 = load %"compiler/source:Span", ptr %l5
  %t233 = load ptr, ptr %l114, !tbaa !29
  %t234 = load { i64, [4 x i64] }, ptr %l116
  %t235 = load i32, ptr %l117, !tbaa !23
  %t236 = load { i64, [1 x i64] }, ptr %l120
  %t238 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t233, { i64, [4 x i64] } %t234, i32 %t235, { i64, [1 x i64] } %t236, %"compiler/source:Span" %t232, i1 false)
  store { i64, [4 x i64] } %t238, ptr %l122
  br label %bb50
bb50:
  %t239 = load { i64, [4 x i64] }, ptr %l122
  %t240 = load i64, ptr %l113, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t242, i64 %t240
  store { i64, [4 x i64] } %t239, ptr %t243
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t244 = load i64, ptr %l13, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l13, !tbaa !24
  br label %bb20
bb53:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/lower:lowering", ptr %t248, i32 0, i32 10
  %t251 = load i1, ptr %t250, !tbaa !21
  br i1 %t251, label %bb54, label %bb55
bb54:
  store { i64, [4 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t253, i32 0, i32 0
  store i64 0, ptr %t254
  %t255 = load { i64, [4 x i64] }, ptr %t253
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t255, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l128, !tbaa !29
  %t258 = load i32, ptr %l4, !tbaa !23
  store i32 %t258, ptr %l129, !tbaa !23
  %t259 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [2 x i64] }, ptr %t260, i32 0, i32 0
  store i64 0, ptr %t261
  %t263 = insertvalue { i32 } undef, i32 %t259, 0
  %t264 = getelementptr { i64, [2 x i64] }, ptr %t260, i32 0, i32 1
  store { i32 } %t263, ptr %t264
  %t265 = load { i64, [2 x i64] }, ptr %t260
  store { i64, [2 x i64] } %t265, ptr %l131
  %t266 = load i32, ptr %l4, !tbaa !23
  store i32 %t266, ptr %l132, !tbaa !23
  %t267 = load { i64, [1 x i64] }, ptr %l7
  store { i64, [1 x i64] } %t267, ptr %l133
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/lower:lowering", ptr %t268, i32 0, i32 3
  %t271 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t274 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t270, { i64, ptr } %t271)
  store %"compiler/mir:Range" %t274, ptr %l137
  br label %bb57
bb57:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load i32, ptr %l3, !tbaa !23
  %t279 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2ecapScopes(ptr %v0, ptr %t275, i32 %t276)
  store %"compiler/mir:Range" %t279, ptr %l140
  br label %bb58
bb58:
  store { i64, [15 x i64] } zeroinitializer, ptr %t280
  %t281 = getelementptr { i64, [15 x i64] }, ptr %t280, i32 0, i32 0
  store i64 10, ptr %t281
  %t282 = load { i64, [2 x i64] }, ptr %l131
  %t283 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } undef, { i64, [2 x i64] } %t282, 0
  %t284 = load i32, ptr %l132, !tbaa !23
  %t285 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t283, i32 %t284, 1
  %t286 = load { i64, [1 x i64] }, ptr %l133
  %t287 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t285, { i64, [1 x i64] } %t286, 2
  %t288 = load %"compiler/mir:Range", ptr %l137
  %t289 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t287, %"compiler/mir:Range" %t288, 3
  %t290 = load %"compiler/mir:Range", ptr %l140
  %t291 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t289, %"compiler/mir:Range" %t290, 4
  %t292 = getelementptr { i64, [15 x i64] }, ptr %t280, i32 0, i32 1
  store { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t291, ptr %t292
  %t293 = load { i64, [15 x i64] }, ptr %t280
  %t294 = load %"compiler/source:Span", ptr %l5
  %t295 = load ptr, ptr %l128, !tbaa !29
  %t296 = load i32, ptr %l129, !tbaa !23
  %t299 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t295, i32 %t296, { i64, [15 x i64] } %t293, %"compiler/source:Span" %t294)
  store { i64, [4 x i64] } %t299, ptr %l143
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t300 = load { i64, [4 x i64] }, ptr %l143
  store { i64, [4 x i64] } %t300, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca ptr
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, ptr }
  %l30 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i32
  %l41 = alloca i64
  %l45 = alloca %"compiler/mir:Range"
  %l48 = alloca { i64, [4 x i64] }
  %l49 = alloca ptr
  %l50 = alloca i32
  %l54 = alloca { i64, [1 x i64] }
  %l59 = alloca { i64, [4 x i64] }
  %l60 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i32
  %l64 = alloca i64
  %l68 = alloca %"compiler/mir:Range"
  %l71 = alloca { i64, [4 x i64] }
  %l79 = alloca { i64, [4 x i64] }
  %l87 = alloca { i64, [4 x i64] }
  %l91 = alloca { i64, ptr }
  %l96 = alloca { i64, [4 x i64] }
  %l100 = alloca ptr
  %l102 = alloca i32
  %l104 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca { i64, [4 x i64] }
  %l109 = alloca i32
  %l110 = alloca i32
  %l114 = alloca { i64, [1 x i64] }
  %l116 = alloca { i64, [4 x i64] }
  %l122 = alloca i1
  %l123 = alloca i1
  %l126 = alloca i1
  %l129 = alloca ptr
  %l132 = alloca i64
  %l133 = alloca { i64, [4 x i64] }
  %l134 = alloca i32
  %l138 = alloca { i64, [1 x i64] }
  %l140 = alloca { i64, [4 x i64] }
  %l145 = alloca ptr
  %l146 = alloca { i64, [4 x i64] }
  %l147 = alloca i32
  %l151 = alloca { i64, [1 x i64] }
  %l153 = alloca { i64, [4 x i64] }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t35 = alloca { i64, [4 x i64] }, align 8
  %t73 = alloca { i64, [15 x i64] }, align 8
  %t102 = alloca { i64, [15 x i64] }, align 8
  %t133 = alloca { i64, [15 x i64] }, align 8
  %t159 = alloca { i64, [1 x i64] }, align 8
  %t178 = alloca { i64, [1 x i64] }, align 8
  %t214 = alloca { i64, [4 x i64] }, align 8
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
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Make", ptr %t6, i32 0, i32 0
  %t9 = load i32, ptr %t8, !range !{i32 0, i32 5}
  store i32 %t9, ptr %l5
  %t11 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t13 = trunc i64 0 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb1, label %bb2
bb1:
  br label %bb5
bb2:
  %t16 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t18 = trunc i64 1 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb24
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Make", ptr %t22, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t28 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %s1, ptr %t21, { i64, ptr } %t25)
  store { i64, ptr } %t28, ptr %l23
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:lowering", ptr %t30, i32 0, i32 10
  %t33 = load i1, ptr %t32, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 0
  store i64 0, ptr %t36
  %t37 = load { i64, [4 x i64] }, ptr %t35
  call void @__olang_scope_close(ptr %s1)
  store { i64, [4 x i64] } %t37, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Make", ptr %t39, i32 0, i32 4
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = icmp sge i32 %t42, 0
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l33
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb13
bb12:
  %t51 = load i1, ptr %l33, !tbaa !21
  store i1 %t51, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l30, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t54 = load i32, ptr %l2, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l36
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t58 = load i32, ptr %l36, !tbaa !23
  store i32 %t58, ptr %l7, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l37, !tbaa !29
  %t60 = load i32, ptr %l7, !tbaa !23
  store i32 %t60, ptr %l38, !tbaa !23
  %t61 = load i32, ptr %l7, !tbaa !23
  store i32 %t61, ptr %l39, !tbaa !23
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Make", ptr %t62, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l41, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lower:lowering", ptr %t66, i32 0, i32 3
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t72 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s1, ptr %t68, { i64, ptr } %t69)
  store %"compiler/mir:Range" %t72, ptr %l45
  br label %bb17
bb17:
  store { i64, [15 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [15 x i64] }, ptr %t73, i32 0, i32 0
  store i64 6, ptr %t74
  %t75 = load i32, ptr %l39, !tbaa !23
  %t76 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t75, 0
  %t77 = load i64, ptr %l41, !tbaa !24
  %t78 = insertvalue { i32, i64, %"compiler/mir:Range" } %t76, i64 %t77, 1
  %t79 = load %"compiler/mir:Range", ptr %l45
  %t80 = insertvalue { i32, i64, %"compiler/mir:Range" } %t78, %"compiler/mir:Range" %t79, 2
  %t81 = getelementptr { i64, [15 x i64] }, ptr %t73, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t80, ptr %t81
  %t82 = load { i64, [15 x i64] }, ptr %t73
  %t83 = load %"compiler/source:Span", ptr %l3
  %t84 = load ptr, ptr %l37, !tbaa !29
  %t85 = load i32, ptr %l38, !tbaa !23
  %t88 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t84, i32 %t85, { i64, [15 x i64] } %t82, %"compiler/source:Span" %t83)
  store { i64, [4 x i64] } %t88, ptr %l48
  br label %bb18
bb18:
  %t89 = load { i64, [4 x i64] }, ptr %l48
  store { i64, [4 x i64] } %t89, ptr %l8
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l49, !tbaa !29
  %t91 = load i32, ptr %l2, !tbaa !23
  store i32 %t91, ptr %l50, !tbaa !23
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Make", ptr %t93, i32 0, i32 4
  %t96 = load i32, ptr %t95, !tbaa !23
  %t99 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t92, i32 %t96)
  store { i64, [1 x i64] } %t99, ptr %l54
  br label %bb19
bb19:
  %t100 = load { i64, [4 x i64] }, ptr %l8
  %t101 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [15 x i64] }, ptr %t102, i32 0, i32 0
  store i64 7, ptr %t103
  %t104 = load { i64, [1 x i64] }, ptr %l54
  %t105 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t104, 0
  %t107 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t105, { i64, [4 x i64] } %t100, 1
  %t109 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t107, i32 %t101, 2
  %t110 = getelementptr { i64, [15 x i64] }, ptr %t102, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t109, ptr %t110
  %t111 = load { i64, [15 x i64] }, ptr %t102
  %t112 = load %"compiler/source:Span", ptr %l3
  %t113 = load ptr, ptr %l49, !tbaa !29
  %t114 = load i32, ptr %l50, !tbaa !23
  %t117 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t113, i32 %t114, { i64, [15 x i64] } %t111, %"compiler/source:Span" %t112)
  store { i64, [4 x i64] } %t117, ptr %l59
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  %t118 = load { i64, [4 x i64] }, ptr %l59
  store { i64, [4 x i64] } %t118, ptr %rv
  br label %ret
bb21:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l60, !tbaa !29
  %t120 = load i32, ptr %l2, !tbaa !23
  store i32 %t120, ptr %l61, !tbaa !23
  %t121 = load i32, ptr %l2, !tbaa !23
  store i32 %t121, ptr %l62, !tbaa !23
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Make", ptr %t122, i32 0, i32 1
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l64, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/lower:lowering", ptr %t126, i32 0, i32 3
  %t129 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t132 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s1, ptr %t128, { i64, ptr } %t129)
  store %"compiler/mir:Range" %t132, ptr %l68
  br label %bb22
bb22:
  store { i64, [15 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [15 x i64] }, ptr %t133, i32 0, i32 0
  store i64 6, ptr %t134
  %t135 = load i32, ptr %l62, !tbaa !23
  %t136 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t135, 0
  %t137 = load i64, ptr %l64, !tbaa !24
  %t138 = insertvalue { i32, i64, %"compiler/mir:Range" } %t136, i64 %t137, 1
  %t139 = load %"compiler/mir:Range", ptr %l68
  %t140 = insertvalue { i32, i64, %"compiler/mir:Range" } %t138, %"compiler/mir:Range" %t139, 2
  %t141 = getelementptr { i64, [15 x i64] }, ptr %t133, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t140, ptr %t141
  %t142 = load { i64, [15 x i64] }, ptr %t133
  %t143 = load %"compiler/source:Span", ptr %l3
  %t144 = load ptr, ptr %l60, !tbaa !29
  %t145 = load i32, ptr %l61, !tbaa !23
  %t148 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t144, i32 %t145, { i64, [15 x i64] } %t142, %"compiler/source:Span" %t143)
  store { i64, [4 x i64] } %t148, ptr %l71
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s1)
  %t149 = load { i64, [4 x i64] }, ptr %l71
  store { i64, [4 x i64] } %t149, ptr %rv
  br label %ret
bb24:
  %t150 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t152 = trunc i64 2 to i32
  %t153 = icmp eq i32 %t150, %t152
  br i1 %t153, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t157 = load i32, ptr %l2, !tbaa !23
  %t158 = load %"compiler/source:Span", ptr %l3
  store { i64, [1 x i64] } zeroinitializer, ptr %t159
  %t160 = getelementptr { i64, [1 x i64] }, ptr %t159, i32 0, i32 0
  store i64 2, ptr %t160
  %t161 = load { i64, [1 x i64] }, ptr %t159
  %t167 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %t155, ptr %t156, i32 %t157, %"compiler/source:Span" %t158, i1 false, { i64, [1 x i64] } %t161)
  store { i64, [4 x i64] } %t167, ptr %l79
  br label %bb28
bb28:
  %t168 = load { i64, [4 x i64] }, ptr %l79
  store { i64, [4 x i64] } %t168, ptr %rv
  br label %ret
bb29:
  %t169 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t171 = trunc i64 3 to i32
  %t172 = icmp eq i32 %t169, %t171
  br i1 %t172, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t176 = load i32, ptr %l2, !tbaa !23
  %t177 = load %"compiler/source:Span", ptr %l3
  store { i64, [1 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [1 x i64] }, ptr %t178, i32 0, i32 0
  store i64 2, ptr %t179
  %t180 = load { i64, [1 x i64] }, ptr %t178
  %t186 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %t174, ptr %t175, i32 %t176, %"compiler/source:Span" %t177, i1 false, { i64, [1 x i64] } %t180)
  store { i64, [4 x i64] } %t186, ptr %l87
  br label %bb33
bb33:
  %t187 = load { i64, [4 x i64] }, ptr %l87
  store { i64, [4 x i64] } %t187, ptr %rv
  br label %ret
bb34:
  %t188 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t190 = trunc i64 4 to i32
  %t191 = icmp eq i32 %t188, %t190
  br i1 %t191, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb65
bb37:
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Make", ptr %t193, i32 0, i32 2
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  store { i64, ptr } %t196, ptr %l91, !tbaa !27
  %t197 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr ptr, ptr %t198, i64 0
  %t200 = load ptr, ptr %t199, !tbaa !39
  store ptr %t200, ptr %l9, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l9, !tbaa !29
  %t207 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t202, ptr %t203)
  store { i64, [4 x i64] } %t207, ptr %l96
  br label %bb38
bb38:
  %t208 = load { i64, [4 x i64] }, ptr %l96
  store { i64, [4 x i64] } %t208, ptr %l10
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/lower:lowering", ptr %t209, i32 0, i32 10
  %t212 = load i1, ptr %t211, !tbaa !21
  br i1 %t212, label %bb39, label %bb40
bb39:
  store { i64, [4 x i64] } zeroinitializer, ptr %t214
  %t215 = getelementptr { i64, [4 x i64] }, ptr %t214, i32 0, i32 0
  store i64 0, ptr %t215
  %t216 = load { i64, [4 x i64] }, ptr %t214
  store { i64, [4 x i64] } %t216, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t218 = load ptr, ptr %l4, !tbaa !29
  store ptr %t218, ptr %l100, !tbaa !29
  %t219 = load ptr, ptr %l9, !tbaa !29
  %t221 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t219)
  store i32 %t221, ptr %l102
  br label %bb42
bb42:
  %t222 = load i32, ptr %l2, !tbaa !23
  %t223 = load ptr, ptr %l100, !tbaa !29
  %t224 = load i32, ptr %l102, !tbaa !23
  %t226 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t223, i32 %t224, i32 %t222)
  store i1 %t226, ptr %l104
  br label %bb43
bb43:
  %t227 = load i1, ptr %l104, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb44, label %bb45
bb44:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l106, !tbaa !29
  %t231 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t231, ptr %l107
  %t232 = load ptr, ptr %l9, !tbaa !29
  %t234 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t232)
  store i32 %t234, ptr %l109
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t235 = load i32, ptr %l2, !tbaa !23
  store i32 %t235, ptr %l110, !tbaa !23
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr %"compiler/typed:Make", ptr %t237, i32 0, i32 4
  %t240 = load i32, ptr %t239, !tbaa !23
  %t243 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t236, i32 %t240)
  store { i64, [1 x i64] } %t243, ptr %l114
  br label %bb47
bb47:
  %t244 = load %"compiler/source:Span", ptr %l3
  %t245 = load ptr, ptr %l106, !tbaa !29
  %t246 = load { i64, [4 x i64] }, ptr %l107
  %t247 = load i32, ptr %l109, !tbaa !23
  %t248 = load i32, ptr %l110, !tbaa !23
  %t249 = load { i64, [1 x i64] }, ptr %l114
  %t251 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederefCopy(ptr %v0, ptr %t245, { i64, [4 x i64] } %t246, i32 %t247, i32 %t248, { i64, [1 x i64] } %t249, %"compiler/source:Span" %t244)
  store { i64, [4 x i64] } %t251, ptr %l116
  br label %bb48
bb48:
  %t252 = load { i64, [4 x i64] }, ptr %l116
  store { i64, [4 x i64] } %t252, ptr %rv
  br label %ret
bb49:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/lower:lowering", ptr %t253, i32 0, i32 46
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Make", ptr %t256, i32 0, i32 4
  %t259 = load i32, ptr %t258, !tbaa !23
  %t261 = sext i32 %t259 to i64
  %t264 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t255, i64 %t261)
  store i1 %t264, ptr %l122
  br label %bb50
bb50:
  %t265 = load i1, ptr %l122, !tbaa !21
  br i1 %t265, label %bb51, label %bb52
bb51:
  %t266 = load ptr, ptr %l4, !tbaa !29
  %t267 = load i32, ptr %l2, !tbaa !23
  %t270 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %t266, i32 %t267)
  store i1 %t270, ptr %l126
  br label %bb53
bb52:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb54
bb53:
  %t271 = load i1, ptr %l126, !tbaa !21
  %t272 = xor i1 %t271, true
  store i1 %t272, ptr %l123, !tbaa !21
  br label %bb54
bb54:
  %t274 = load i1, ptr %l123, !tbaa !21
  br i1 %t274, label %bb55, label %bb56
bb55:
  %t275 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t275, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t277 = load ptr, ptr %l0, !tbaa !29
  store ptr %t277, ptr %l129, !tbaa !29
  %t278 = load ptr, ptr %l1, !tbaa !29
  %t280 = getelementptr %"compiler/typed:Make", ptr %t278, i32 0, i32 4
  %t281 = load i32, ptr %t280, !tbaa !23
  %t283 = sext i32 %t281 to i64
  store i64 %t283, ptr %l132, !tbaa !24
  %t284 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t284, ptr %l133
  %t285 = load i32, ptr %l2, !tbaa !23
  store i32 %t285, ptr %l134, !tbaa !23
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr %"compiler/typed:Make", ptr %t287, i32 0, i32 4
  %t290 = load i32, ptr %t289, !tbaa !23
  %t293 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t286, i32 %t290)
  store { i64, [1 x i64] } %t293, ptr %l138
  br label %bb58
bb58:
  %t294 = load %"compiler/source:Span", ptr %l3
  %t295 = load ptr, ptr %l129, !tbaa !29
  %t296 = load i64, ptr %l132, !tbaa !24
  %t297 = load { i64, [4 x i64] }, ptr %l133
  %t298 = load i32, ptr %l134, !tbaa !23
  %t299 = load { i64, [1 x i64] }, ptr %l138
  %t301 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esplitCopy(ptr %v0, ptr %t295, i64 %t296, { i64, [4 x i64] } %t297, i32 %t298, { i64, [1 x i64] } %t299, %"compiler/source:Span" %t294)
  store { i64, [4 x i64] } %t301, ptr %l140
  br label %bb59
bb59:
  %t302 = load { i64, [4 x i64] }, ptr %l140
  store { i64, [4 x i64] } %t302, ptr %l11
  %t303 = load { i64, [4 x i64] }, ptr %l11
  %t305 = extractvalue { i64, [4 x i64] } %t303, 0
  %t306 = icmp eq i64 %t305, 0
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb60, label %bb61
bb60:
  %t310 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t310, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t312 = load ptr, ptr %l0, !tbaa !29
  store ptr %t312, ptr %l145, !tbaa !29
  %t313 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t313, ptr %l146
  %t314 = load i32, ptr %l2, !tbaa !23
  store i32 %t314, ptr %l147, !tbaa !23
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load ptr, ptr %l1, !tbaa !29
  %t318 = getelementptr %"compiler/typed:Make", ptr %t316, i32 0, i32 4
  %t319 = load i32, ptr %t318, !tbaa !23
  %t322 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t315, i32 %t319)
  store { i64, [1 x i64] } %t322, ptr %l151
  br label %bb63
bb63:
  %t323 = load %"compiler/source:Span", ptr %l3
  %t324 = load ptr, ptr %l145, !tbaa !29
  %t325 = load { i64, [4 x i64] }, ptr %l146
  %t326 = load i32, ptr %l147, !tbaa !23
  %t327 = load { i64, [1 x i64] }, ptr %l151
  %t329 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t324, { i64, [4 x i64] } %t325, i32 %t326, { i64, [1 x i64] } %t327, %"compiler/source:Span" %t323, i1 false)
  store { i64, [4 x i64] } %t329, ptr %l153
  br label %bb64
bb64:
  %t330 = load { i64, [4 x i64] }, ptr %l153
  store { i64, [4 x i64] } %t330, ptr %rv
  br label %ret
bb65:
  call void @__olang_check_failed(ptr @olang_loc_c00faf6434efe24b_96f261c8870620df)
  unreachable
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emethodBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l19 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca i32
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i64
  %l58 = alloca i1
  %l64 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l19
  br label %bb1
bb1:
  %t16 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t18 = trunc i64 18 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i32, ptr %l1, !tbaa !23
  store i32 %t21, ptr %l22, !tbaa !23
  br label %bb5
bb3:
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l26
  br label %bb4
bb4:
  %t28 = load i32, ptr %l26, !tbaa !23
  store i32 %t28, ptr %l22, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l22, !tbaa !23
  store i32 %t29, ptr %l6, !tbaa !23
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t31 = load i32, ptr %l6, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l29
  br label %bb6
bb6:
  %t35 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t37 = trunc i64 18 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l7, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %a2, 0
  %t48 = insertvalue [2 x { i64, ptr }] %t46, { i64, ptr } %a3, 1
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store [2 x { i64, ptr }] %t48, ptr %t50
  store ptr %t50, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t52 = load ptr, ptr %l8
  store i64 2, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  %t55 = load i64, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb11, label %bb12
bb11:
  br label %bb24
bb12:
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l8
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = getelementptr [2 x { i64, ptr }], ptr %t63, i64 0, i64 %t64
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !37
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/lower:Lowerer", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l48, !tbaa !29
  %t74 = load i32, ptr %l6, !tbaa !23
  store i32 %t74, ptr %l49, !tbaa !23
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/types:Table", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l51, !tbaa !29
  %t80 = load ptr, ptr %l51, !tbaa !29
  %t81 = call ptr @__olang_scope_of(ptr %t80, ptr null)
  %t82 = ptrtoint ptr %t81 to i64
  %t84 = inttoptr i64 %t82 to ptr
  %t85 = load ptr, ptr %l51, !tbaa !29
  %t87 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t84, ptr %s2, ptr %t85, { i64, ptr } %t68)
  store i32 %t87, ptr %l54
  br label %bb14
bb14:
  %t88 = load ptr, ptr %l48, !tbaa !29
  %t89 = load i32, ptr %l49, !tbaa !23
  %t90 = load i32, ptr %l54, !tbaa !23
  %t91 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t88, i32 %t89, i32 %t90)
  store i64 %t91, ptr %l55
  br label %bb15
bb15:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l12, !tbaa !24
  %t95 = icmp sge i64 %t93, 0
  br i1 %t95, label %bb16, label %bb17
bb16:
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = icmp slt i64 %t97, 0
  store i1 %t99, ptr %l58, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb18
bb18:
  %t101 = load i1, ptr %l58, !tbaa !21
  br i1 %t101, label %bb19, label %bb20
bb19:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l6, !tbaa !23
  %t104 = load i64, ptr %l12, !tbaa !24
  %t108 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2ereceiverBody(ptr %v0, ptr %t102, i32 %t103, i64 %t104)
  store i64 %t108, ptr %l64
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t109 = load i64, ptr %l64, !tbaa !24
  store i64 %t109, ptr %l7, !tbaa !24
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l9, !tbaa !24
  br label %bb10
bb24:
  call void @__olang_scope_close(ptr %s2)
  %t114 = load i64, ptr %l7, !tbaa !24
  store i64 %t114, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedChain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [1 x i64] }
  %l14 = alloca ptr
  %l15 = alloca %"compiler/lower:pl"
  %l17 = alloca %"compiler/lower:pl"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca { i64, [2 x i64] }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"compiler/mir:Lvalue"
  %l46 = alloca i64
  %l49 = alloca i64
  %l71 = alloca { i64, [1 x i64] }
  %l76 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca i32
  %l81 = alloca i32
  %l83 = alloca { i64, [4 x i64] }
  %l86 = alloca { i64, [4 x i64] }
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, [4 x i64] }
  %l96 = alloca i32
  %l98 = alloca i64
  %l99 = alloca ptr
  %l102 = alloca i32
  %l108 = alloca { i64, ptr }
  %l109 = alloca %"compiler/mir:Lvalue"
  %l113 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t72 = alloca { i64, [4 x i64] }, align 8
  %t241 = alloca { i64, [2 x i64] }, align 8
  %t260 = alloca { i64, [4 x i64] }, align 8
  %t266 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  %t2 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t2, ptr %l15
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l15)
  store %"compiler/lower:pl" %t4, ptr %l17
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load %"compiler/lower:pl", ptr %l17
  %t7 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedTypes(ptr %v0, ptr %s0, ptr %s0, ptr %t5, %"compiler/lower:pl" %t6)
  store { i64, ptr } %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l19, !tbaa !24
  %t10 = load i64, ptr %l19, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l20, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l19, !tbaa !24
  %t20 = mul i64 %t19, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t21, ptr %l3, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l22, !tbaa !24
  %t25 = load i64, ptr %l22, !tbaa !24
  %t26 = icmp sge i64 %t25, 0
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load i64, ptr %l22, !tbaa !24
  %t29 = icmp sle i64 %t28, 230584300921369395
  br i1 %t29, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_78f22070622bc2eb_7d003488e0f12b37)
  unreachable
bb5:
  %t31 = load i64, ptr %l22, !tbaa !24
  %t32 = mul i64 %t31, 40
  %t33 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t36 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t36, ptr %lp4
  %t38 = load ptr, ptr %lp4
  store { i64, ptr } %t35, ptr %t38, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 3
  store ptr %t41, ptr %l27, !tbaa !29
  %t42 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 0
  %t43 = load { i64, [2 x i64] }, ptr %t42
  store { i64, [2 x i64] } %t43, ptr %l28
  %t44 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t46 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %s0, ptr %s0, ptr %t44)
  store { i64, ptr } %t46, ptr %l30
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_78f22070622bc2eb_7d003488e0f12b37)
  unreachable
bb7:
  %t47 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t47, ptr %l31, !tbaa !27
  %t48 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l32, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l33, !tbaa !24
  %t52 = icmp sge i64 0, 0
  br i1 %t52, label %bb8, label %bb9
bb8:
  %t54 = load i64, ptr %l32, !tbaa !24
  %t55 = icmp sle i64 0, %t54
  br i1 %t55, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9b41083df5bebd36_84b9708a7a0a381a)
  unreachable
bb10:
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = load i64, ptr %l33, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  br i1 %t59, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9b41083df5bebd36_84b9708a7a0a381a)
  unreachable
bb12:
  %t61 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = load i64, ptr %l32, !tbaa !24
  %t64 = getelementptr { i64, [1 x i64] }, ptr %t62, i64 0
  %t65 = sub i64 %t63, 0
  %t66 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t68 = load ptr, ptr %l27, !tbaa !29
  %t69 = load { i64, [2 x i64] }, ptr %l28
  %t71 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t68, { i64, [2 x i64] } %t69, { i64, ptr } %t67)
  store %"compiler/mir:Lvalue" %t71, ptr %l38
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_9b41083df5bebd36_84b9708a7a0a381a)
  unreachable
bb14:
  store { i64, [4 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 0
  store i64 1, ptr %t73
  %t74 = load %"compiler/mir:Lvalue", ptr %l38
  %t75 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t74, 0
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t75, ptr %t76
  %t77 = load { i64, [4 x i64] }, ptr %t72
  %t79 = load ptr, ptr %lp4
  %t80 = getelementptr { i64, ptr }, ptr %t79, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t81, i64 0
  store { i64, [4 x i64] } %t77, ptr %t82
  store i64 0, ptr %l5, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t87 = sub i64 %t85, 1
  store i64 %t87, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l5, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb15, label %bb16
bb15:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb20
bb17:
  %t99 = load i64, ptr %l6, !tbaa !24
  %t100 = load i64, ptr %l5, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l49, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb19
bb19:
  %t115 = load i64, ptr %l49, !tbaa !24
  store i64 %t115, ptr %l46, !tbaa !24
  br label %bb20
bb20:
  %t116 = load i64, ptr %l46, !tbaa !24
  store i64 %t116, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s2
  %t117 = load i64, ptr %l9, !tbaa !24
  %t118 = load i64, ptr %l8, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb23:
  br label %bb24
bb24:
  %t125 = load i64, ptr %l5, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l10, !tbaa !24
  %t135 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t136 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = load i64, ptr %l10, !tbaa !24
  %t141 = add i64 %t137, %t138
  %t144 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t135, i64 %t141)
  store { i64, [1 x i64] } %t144, ptr %l71
  br label %bb25
bb25:
  %t145 = load { i64, [1 x i64] }, ptr %l71
  store { i64, [1 x i64] } %t145, ptr %l11
  %t146 = load { i64, [1 x i64] }, ptr %l11
  %t148 = extractvalue { i64, [1 x i64] } %t146, 0
  %t149 = icmp eq i64 %t148, 0
  br i1 %t149, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s3
  %t151 = getelementptr { i64, [1 x i64] }, ptr %l11, i32 0, i32 1
  %t152 = getelementptr { i64 }, ptr %t151, i32 0, i32 0
  %t153 = load i64, ptr %t152
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l76, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l77, !tbaa !29
  store i32 40, ptr %l78
  %t159 = load i64, ptr %l10, !tbaa !24
  %t161 = add i64 %t159, 1
  %t163 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i32, ptr %t164, i64 %t161
  %t166 = load i32, ptr %t165, !tbaa !33
  store i32 %t166, ptr %l81, !tbaa !23
  %t167 = load i64, ptr %l10, !tbaa !24
  %t168 = load ptr, ptr %lp4
  %t170 = getelementptr { i64, ptr }, ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t171, i64 %t167
  %t173 = load { i64, [4 x i64] }, ptr %t172
  store { i64, [4 x i64] } %t173, ptr %l83
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t178 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t174, i64 %t153)
  store { i64, [4 x i64] } %t178, ptr %l86
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t179 = mul i64 2, 40
  %t180 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t179)
  %t181 = insertvalue { i64, ptr } undef, i64 2, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  store { i64, ptr } %t182, ptr %l87, !tbaa !27
  %t183 = load { i64, [4 x i64] }, ptr %l83
  %t184 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t185, i64 0
  store { i64, [4 x i64] } %t183, ptr %t186
  %t187 = load { i64, [4 x i64] }, ptr %l86
  %t188 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i64 1
  store { i64, [4 x i64] } %t187, ptr %t190
  %t191 = load %"compiler/source:Span", ptr %l2
  %t192 = load ptr, ptr %l77, !tbaa !29
  %t193 = load i32, ptr %l78, !range !{i32 0, i32 52}
  %t194 = load i32, ptr %l81, !tbaa !23
  %t195 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t197 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s3, ptr %t192, i32 %t193, i32 %t194, { i64, ptr } %t195, %"compiler/source:Span" %t191)
  store { i64, [4 x i64] } %t197, ptr %l89
  br label %bb29
bb29:
  %t198 = load { i64, [4 x i64] }, ptr %l89
  %t199 = load ptr, ptr %lp4
  %t200 = load i64, ptr %l76, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t202, i64 %t200
  store { i64, [4 x i64] } %t198, ptr %t203
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb30:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i64, ptr %l10, !tbaa !24
  %t206 = load ptr, ptr %lp4
  %t208 = getelementptr { i64, ptr }, ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t209, i64 %t205
  %t211 = load { i64, [4 x i64] }, ptr %t210
  %t212 = load i64, ptr %l10, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i32, ptr %t215, i64 %t212
  %t217 = load i32, ptr %t216, !tbaa !33
  %t218 = load %"compiler/source:Span", ptr %l2
  %t223 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t204, { i64, [4 x i64] } %t211, i32 %t217, %"compiler/source:Span" %t218)
  store i32 %t223, ptr %l96
  br label %bb31
bb31:
  %t224 = load i32, ptr %l96, !tbaa !23
  %t225 = load i64, ptr %l10, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l98, !tbaa !24
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l99, !tbaa !29
  %t229 = load i64, ptr %l10, !tbaa !24
  %t231 = add i64 %t229, 1
  %t233 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i32, ptr %t234, i64 %t231
  %t236 = load i32, ptr %t235, !tbaa !33
  store i32 %t236, ptr %l102, !tbaa !23
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/lower:lowering", ptr %t237, i32 0, i32 3
  store { i64, [2 x i64] } zeroinitializer, ptr %t241
  %t242 = getelementptr { i64, [2 x i64] }, ptr %t241, i32 0, i32 0
  store i64 1, ptr %t242
  %t244 = insertvalue { i32 } undef, i32 %t224, 0
  %t245 = getelementptr { i64, [2 x i64] }, ptr %t241, i32 0, i32 1
  store { i32 } %t244, ptr %t245
  %t246 = load { i64, [2 x i64] }, ptr %t241
  %t247 = load { i64, [1 x i64] }, ptr %l11
  %t248 = mul i64 1, 16
  %t249 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t248)
  %t250 = insertvalue { i64, ptr } undef, i64 1, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l108, !tbaa !27
  %t253 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr { i64, [1 x i64] }, ptr %t254, i64 0
  store { i64, [1 x i64] } %t247, ptr %t255
  %t258 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t259 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s2, ptr %t239, { i64, [2 x i64] } %t246, { i64, ptr } %t258)
  store %"compiler/mir:Lvalue" %t259, ptr %l109
  br label %bb32
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [4 x i64] }, ptr %t260, i32 0, i32 0
  store i64 1, ptr %t261
  %t262 = load %"compiler/mir:Lvalue", ptr %l109
  %t263 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t262, 0
  %t264 = getelementptr { i64, [4 x i64] }, ptr %t260, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t263, ptr %t264
  %t265 = load { i64, [4 x i64] }, ptr %t260
  store { i64, [15 x i64] } zeroinitializer, ptr %t266
  %t267 = getelementptr { i64, [15 x i64] }, ptr %t266, i32 0, i32 0
  store i64 0, ptr %t267
  %t269 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t265, 0
  %t270 = getelementptr { i64, [15 x i64] }, ptr %t266, i32 0, i32 1
  store { { i64, [4 x i64] } } %t269, ptr %t270
  %t271 = load { i64, [15 x i64] }, ptr %t266
  %t272 = load %"compiler/source:Span", ptr %l2
  %t273 = load ptr, ptr %l99, !tbaa !29
  %t274 = load i32, ptr %l102, !tbaa !23
  %t277 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t273, i32 %t274, { i64, [15 x i64] } %t271, %"compiler/source:Span" %t272)
  store { i64, [4 x i64] } %t277, ptr %l113
  br label %bb33
bb33:
  %t278 = load { i64, [4 x i64] }, ptr %l113
  %t279 = load ptr, ptr %lp4
  %t280 = load i64, ptr %l98, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr { i64, [4 x i64] }, ptr %t282, i64 %t280
  store { i64, [4 x i64] } %t278, ptr %t283
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t284 = load i64, ptr %l9, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l9, !tbaa !24
  br label %bb21
bb35:
  %t288 = load ptr, ptr %lp4
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t289, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamElig(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l10 = alloca %"compiler/typed:Local"
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l20 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 3
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t17 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t13, i64 %a1)
  store %"compiler/typed:Local" %t17, ptr %l10
  br label %bb1
bb1:
  %t18 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 1
  %t19 = getelementptr %"compiler/source:Span", ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19, !tbaa !23
  %t22 = sext i32 %t20 to i64
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t23, i64 %t22)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25, ptr %l13
  br label %bb2
bb2:
  %t26 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lower:lowering", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/lower:Lowerer", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/load:Loader", ptr %t36, i32 0, i32 5
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t38, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26)
  store i1 %t42, ptr %l20
  br label %bb3
bb3:
  %t43 = load i1, ptr %l20, !tbaa !21
  %t44 = xor i1 %t43, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassedFor(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
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
  %l26 = alloca i64
  %l27 = alloca { i64, [2 x i64] }
  %l42 = alloca i64
  %l45 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i1
  %l62 = alloca %"compiler/mir:Range"
  %l66 = alloca ptr
  %l69 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l98 = alloca i64
  %l99 = alloca ptr
  %l104 = alloca { i64, [2 x i64] }
  %l105 = alloca { i64, [1 x i64] }
  %l112 = alloca i64
  %l115 = alloca i64
  %l135 = alloca i64
  %l136 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca i32
  %l143 = alloca i64
  %l147 = alloca i64
  %l148 = alloca { i64, [2 x i64] }
  %l149 = alloca { i64, [1 x i64] }
  %l155 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  %t23 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load { i64, [7 x i64] }, ptr %l1
  %t10 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t4, { i64, [7 x i64] } %t5, i32 %a2)
  store i64 %t10, ptr %l26
  br label %bb1
bb1:
  %t11 = load i64, ptr %l26, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  %t12 = load { i64, [7 x i64] }, ptr %l1
  %t14 = extractvalue { i64, [7 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t18 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t17, i32 0, i32 0
  %t19 = load { i64, [2 x i64] }, ptr %t18
  store { i64, [2 x i64] } %t19, ptr %l5
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t21 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t21, ptr %l27
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 0
  store i64 4, ptr %t24
  %t25 = insertvalue { i64 } undef, i64 0, 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 1
  store { i64 } %t25, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t23
  store { i64, [2 x i64] } %t27, ptr %l27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1485ab32c32cac8e_13b5b7bca0ba868a)
  unreachable
bb10:
  %t29 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t29, ptr %l6
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:lowering", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/typed:Body", ptr %t37, i32 0, i32 3
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load { i64, [2 x i64] }, ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %t33, i64 %t40, { i64, [2 x i64] } %t41)
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load { i64, [2 x i64] }, ptr %l6
  %t52 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %t48, { i64, [2 x i64] } %t49)
  store i64 %t52, ptr %l42
  br label %bb12
bb12:
  %t53 = load i64, ptr %l42, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp eq i64 %t54, 0
  br i1 %t56, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb15
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 24
  %t61 = load i1, ptr %t60, !tbaa !21
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t65 = load i1, ptr %l45, !tbaa !21
  br i1 %t65, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb18
bb17:
  %t66 = load i32, ptr %l3, !tbaa !23
  %t68 = icmp slt i32 %t66, 0
  store i1 %t68, ptr %l49, !tbaa !21
  br label %bb18
bb18:
  %t70 = load i1, ptr %l49, !tbaa !21
  br i1 %t70, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb21
bb20:
  %t71 = load i32, ptr %l3, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/lower:lowering", ptr %t74, i32 0, i32 30
  %t77 = getelementptr %"compiler/typed:Plan", ptr %t76, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = icmp sge i64 %t73, %t80
  store i1 %t83, ptr %l52, !tbaa !21
  br label %bb21
bb21:
  %t85 = load i1, ptr %l52, !tbaa !21
  br i1 %t85, label %bb22, label %bb23
bb22:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l4, !tbaa !24
  %t88 = load i32, ptr %l3, !tbaa !23
  %t92 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %t86, i64 %t87, i32 %t88)
  store %"compiler/mir:Range" %t92, ptr %l62
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t93 = load %"compiler/mir:Range", ptr %l62
  store %"compiler/mir:Range" %t93, ptr %rv
  br label %ret
bb25:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load { i64, [2 x i64] }, ptr %l6
  %t101 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eplanOf(ptr %v0, ptr %v0, ptr %t97, { i64, [2 x i64] } %t98)
  store ptr %t101, ptr %l66
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l66, !tbaa !29
  store ptr %t102, ptr %l8, !tbaa !29
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = add i64 %t103, %t104
  store i64 %t107, ptr %l69, !tbaa !24
  %t108 = load i64, ptr %l69, !tbaa !24
  %t109 = icmp sge i64 %t108, 0
  br i1 %t109, label %bb27, label %bb28
bb27:
  %t111 = load i64, ptr %l69, !tbaa !24
  %t112 = icmp sle i64 %t111, 576460752303423487
  br i1 %t112, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_92286f847bc5fd90_acf452c1cbbc8964)
  unreachable
bb29:
  %t114 = load i64, ptr %l69, !tbaa !24
  %t115 = mul i64 %t114, 16
  %t116 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t115)
  %t117 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t120 = load i64, ptr %l4, !tbaa !24
  store i64 %t120, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t122 = load i64, ptr %l11, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = icmp sgt i64 %t122, %t123
  br i1 %t126, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_92286f847bc5fd90_acf452c1cbbc8964)
  unreachable
bb31:
  %t128 = load i64, ptr %l12, !tbaa !24
  %t130 = icmp sgt i64 %t128, 0
  br i1 %t130, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb36
bb33:
  %t132 = load i64, ptr %l11, !tbaa !24
  %t133 = load i64, ptr %l10, !tbaa !24
  %t136 = sub i64 %t132, %t133
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = add i64 %t136, %t137
  %t142 = sub i64 %t140, 1
  %t143 = load i64, ptr %l12, !tbaa !24
  %t146 = sdiv i64 %t142, %t143
  store i64 %t146, ptr %l80, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb35
bb35:
  %t148 = load i64, ptr %l80, !tbaa !24
  store i64 %t148, ptr %l77, !tbaa !24
  br label %bb36
bb36:
  %t149 = load i64, ptr %l77, !tbaa !24
  store i64 %t149, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb37
bb37:
  %t150 = load i64, ptr %l14, !tbaa !24
  %t151 = load i64, ptr %l13, !tbaa !24
  %t154 = icmp slt i64 %t150, %t151
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb38, label %bb39
bb38:
  br label %bb44
bb39:
  br label %bb40
bb40:
  %t158 = load i64, ptr %l10, !tbaa !24
  %t159 = load i64, ptr %l14, !tbaa !24
  %t160 = load i64, ptr %l12, !tbaa !24
  %t163 = mul i64 %t159, %t160
  %t166 = add i64 %t158, %t163
  store i64 %t166, ptr %l15, !tbaa !24
  %t168 = load i64, ptr %l15, !tbaa !24
  store i64 %t168, ptr %l98, !tbaa !24
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l99, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/lower:lowering", ptr %t170, i32 0, i32 30
  %t173 = load i32, ptr %l3, !tbaa !23
  %t174 = load i64, ptr %l15, !tbaa !24
  %t178 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t172, i32 %t173, i64 %t174)
  store { i64, [2 x i64] } %t178, ptr %l104
  br label %bb41
bb41:
  %t179 = load ptr, ptr %l99, !tbaa !29
  %t180 = load { i64, [2 x i64] }, ptr %l104
  %t181 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t179, { i64, [2 x i64] } %t180)
  store { i64, [1 x i64] } %t181, ptr %l105
  br label %bb42
bb42:
  %t182 = load { i64, [1 x i64] }, ptr %l105
  %t183 = load i64, ptr %l98, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, [1 x i64] }, ptr %t185, i64 %t183
  store { i64, [1 x i64] } %t182, ptr %t186
  br label %bb43
bb43:
  %t187 = load i64, ptr %l14, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l14, !tbaa !24
  br label %bb37
bb44:
  store i64 0, ptr %l16, !tbaa !24
  %t191 = load i64, ptr %l7, !tbaa !24
  store i64 %t191, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t193 = load i64, ptr %l17, !tbaa !24
  %t194 = load i64, ptr %l16, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb45, label %bb46
bb45:
  %t199 = load i64, ptr %l18, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb50
bb47:
  %t203 = load i64, ptr %l17, !tbaa !24
  %t204 = load i64, ptr %l16, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l18, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l18, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l115, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb49
bb49:
  %t219 = load i64, ptr %l115, !tbaa !24
  store i64 %t219, ptr %l112, !tbaa !24
  br label %bb50
bb50:
  %t220 = load i64, ptr %l112, !tbaa !24
  store i64 %t220, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb51
bb51:
  %t221 = load i64, ptr %l20, !tbaa !24
  %t222 = load i64, ptr %l19, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb52, label %bb53
bb52:
  br label %bb60
bb53:
  br label %bb54
bb54:
  %t229 = load i64, ptr %l16, !tbaa !24
  %t230 = load i64, ptr %l20, !tbaa !24
  %t231 = load i64, ptr %l18, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l21, !tbaa !24
  %t239 = load i64, ptr %l4, !tbaa !24
  %t240 = load i64, ptr %l21, !tbaa !24
  %t243 = add i64 %t239, %t240
  store i64 %t243, ptr %l135, !tbaa !24
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l136, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/lower:lowering", ptr %t245, i32 0, i32 30
  store ptr %t247, ptr %l138, !tbaa !29
  %t248 = load i32, ptr %l3, !tbaa !23
  store i32 %t248, ptr %l139, !tbaa !23
  %t249 = load ptr, ptr %l8, !tbaa !29
  %t251 = getelementptr %"compiler/typed:Plan", ptr %t249, i32 0, i32 15
  %t252 = load i64, ptr %l21, !tbaa !24
  %t255 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t251, i64 %t252)
  store i64 %t255, ptr %l143
  br label %bb55
bb55:
  %t256 = load ptr, ptr %l8, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Plan", ptr %t256, i32 0, i32 16
  %t259 = load i64, ptr %l21, !tbaa !24
  %t262 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t258, i64 %t259)
  store i64 %t262, ptr %l147
  br label %bb56
bb56:
  %t263 = load ptr, ptr %l138, !tbaa !29
  %t264 = load i32, ptr %l139, !tbaa !23
  %t265 = load i64, ptr %l143, !tbaa !24
  %t266 = load i64, ptr %l147, !tbaa !24
  %t267 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDerivedArgAt(ptr %v0, ptr %t263, i32 %t264, i64 %t265, i64 %t266)
  store { i64, [2 x i64] } %t267, ptr %l148
  br label %bb57
bb57:
  %t268 = load ptr, ptr %l136, !tbaa !29
  %t269 = load { i64, [2 x i64] }, ptr %l148
  %t270 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederivedRef(ptr %v0, ptr %t268, { i64, [2 x i64] } %t269)
  store { i64, [1 x i64] } %t270, ptr %l149
  br label %bb58
bb58:
  %t271 = load { i64, [1 x i64] }, ptr %l149
  %t272 = load i64, ptr %l135, !tbaa !24
  %t273 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = getelementptr { i64, [1 x i64] }, ptr %t274, i64 %t272
  store { i64, [1 x i64] } %t271, ptr %t275
  br label %bb59
bb59:
  %t276 = load i64, ptr %l20, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l20, !tbaa !24
  br label %bb51
bb60:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/lower:lowering", ptr %t280, i32 0, i32 3
  %t283 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t286 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t282, { i64, ptr } %t283)
  store %"compiler/mir:Range" %t286, ptr %l155
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  %t287 = load %"compiler/mir:Range", ptr %l155
  store %"compiler/mir:Range" %t287, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietClauses(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l21 = alloca i1
  %l25 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Try", ptr %a1, i32 0, i32 1
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
  br label %bb13
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
  %t28 = getelementptr %"compiler/typed:Clause", ptr %t26, i32 0, i32 3
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb8
bb6:
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Clause", ptr %t36, i32 0, i32 4
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t42 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietAll(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t39)
  store i1 %t42, ptr %l25
  br label %bb7
bb7:
  %t43 = load i1, ptr %l25, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t46 = load i1, ptr %l21, !tbaa !21
  br i1 %t46, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i1
  %l33 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i1
  %l46 = alloca i64
  %l51 = alloca i32
  %l55 = alloca i1
  %l58 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t7 = load ptr, ptr %l12, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l12, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l13, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l3
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 1
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l4, !tbaa !23
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t29, i32 0, i32 2
  %t31 = load i32, ptr %t30
  store i32 %t31, ptr %l5, !tbaa !23
  %t33 = load ptr, ptr %l2, !tbaa !29
  store ptr %t33, ptr %l23, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t34)
  store i32 %t36, ptr %l25
  br label %bb5
bb4:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb16
bb5:
  %t37 = load ptr, ptr %l23, !tbaa !29
  %t38 = load i32, ptr %l25, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t39, ptr %l26
  br label %bb6
bb6:
  %t40 = load i1, ptr %l26, !tbaa !21
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb8:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t41)
  store i32 %t43, ptr %l29
  br label %bb9
bb9:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t45 = load i32, ptr %l29, !tbaa !23
  %t47 = icmp eq i32 %t45, %t44
  store i1 %t47, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb15
bb12:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l33, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t51)
  store i32 %t53, ptr %l35
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = load i32, ptr %l35, !tbaa !23
  %t56 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t56, ptr %l36
  br label %bb14
bb14:
  %t57 = load i1, ptr %l36, !tbaa !21
  store i1 %t57, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l32, !tbaa !21
  store i1 %t58, ptr %l16, !tbaa !21
  br label %bb16
bb16:
  %t59 = load i1, ptr %l16, !tbaa !21
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t62, i32 0, i32 0
  %t64 = load %"compiler/source:Span", ptr %t63
  store %"compiler/source:Span" %t64, ptr %l6
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t68, i32 0, i32 1
  %t70 = load i32, ptr %t69
  store i32 %t70, ptr %l7, !tbaa !23
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t74, i32 0, i32 2
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l8, !tbaa !23
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/lower:lowering", ptr %t79, i32 0, i32 47
  %t83 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l46
  br label %bb20
bb20:
  %t84 = load i64, ptr %l46, !tbaa !24
  %t85 = icmp eq i64 %t84, 0
  br i1 %t85, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t92 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjectOf(ptr %v0, ptr %v1, ptr %t88, ptr %t89)
  store i32 %t92, ptr %l51
  br label %bb24
bb24:
  %t93 = load i32, ptr %l51, !tbaa !23
  store i32 %t93, ptr %l9, !tbaa !23
  %t94 = load i32, ptr %l9, !tbaa !23
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t98 = icmp ne i32 %t94, %t95
  br i1 %t98, label %bb25, label %bb26
bb25:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l9, !tbaa !23
  %t104 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %t100, i32 %t101)
  store i1 %t104, ptr %l58
  br label %bb27
bb26:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb28
bb27:
  %t105 = load i1, ptr %l58, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l55, !tbaa !21
  br label %bb28
bb28:
  %t108 = load i1, ptr %l55, !tbaa !21
  store i1 %t108, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca ptr
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l37 = alloca { i64, [1 x i64] }
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, [1 x i64] }
  %l47 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l58 = alloca { i64, [4 x i64] }
  %l62 = alloca i32
  %l66 = alloca { i64, ptr }
  %l87 = alloca i32
  %l91 = alloca { i64, ptr }
  %rv = alloca { i64, [1 x i64] }
  %t23 = alloca { i64, [1 x i64] }, align 8
  %t82 = alloca { i64, [1 x i64] }, align 8
  %t141 = alloca { i64, [15 x i64] }, align 8
  %t170 = alloca { i64, [1 x i64] }, align 8
  %t178 = alloca { i64, [1 x i64] }, align 8
  %t207 = alloca { i64, [15 x i64] }, align 8
  %t238 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 32
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H1e3bc46345ebb5614acbe688055fe55f(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i32 } %t7, 1
  %t9 = extractvalue { i32, i32 } %t7, 0
  store i32 %t9, ptr %l15
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i32 %t8, ptr %l14
  br label %bb1
bb1:
  %t12 = load i32, ptr %l14, !tbaa !23
  store i32 %t12, ptr %l10, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t13 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t13, ptr %l10, !tbaa !23
  br label %bb4
bb4:
  %t15 = load i32, ptr %l10, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t20 = icmp ne i32 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load i32, ptr %l2, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 0
  store i64 4, ptr %t24
  %t26 = insertvalue { i32 } undef, i32 %t22, 0
  %t27 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 1
  store { i32 } %t26, ptr %t27
  %t28 = load { i64, [1 x i64] }, ptr %t23
  store { i64, [1 x i64] } %t28, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:lowering", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 4
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l3
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 30
  %t42 = getelementptr %"compiler/typed:Plan", ptr %t41, i32 0, i32 5
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t48 = icmp slt i64 %t38, %t45
  br i1 %t48, label %bb8, label %bb9
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t50, i32 0, i32 30
  %t53 = getelementptr %"compiler/typed:Plan", ptr %t52, i32 0, i32 5
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l32, !tbaa !27
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i64, ptr %t58, i64 %t55
  %t60 = load i64, ptr %t59, !tbaa !34
  store i64 %t60, ptr %l30, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb10
bb10:
  %t62 = load i64, ptr %l30, !tbaa !24
  store i64 %t62, ptr %l4, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp ne i64 %t63, 0
  br i1 %t65, label %bb11, label %bb12
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t68, i32 0, i32 30
  %t71 = getelementptr %"compiler/typed:Plan", ptr %t70, i32 0, i32 6
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l40, !tbaa !27
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t76, i64 %t73
  %t78 = load { i64, [2 x i64] }, ptr %t77
  %t81 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t67, { i64, [2 x i64] } %t78)
  store { i64, [1 x i64] } %t81, ptr %l43
  br label %bb13
bb12:
  store { i64, [1 x i64] } zeroinitializer, ptr %t82
  %t83 = getelementptr { i64, [1 x i64] }, ptr %t82, i32 0, i32 0
  store i64 2, ptr %t83
  %t84 = load { i64, [1 x i64] }, ptr %t82
  store { i64, [1 x i64] } %t84, ptr %l37
  br label %bb14
bb13:
  %t86 = load { i64, [1 x i64] }, ptr %l43
  store { i64, [1 x i64] } %t86, ptr %l37
  br label %bb14
bb14:
  %t87 = load { i64, [1 x i64] }, ptr %l37
  store { i64, [1 x i64] } %t87, ptr %l5
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = icmp ne i64 %t88, 0
  br i1 %t90, label %bb15, label %bb16
bb15:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:lowering", ptr %t92, i32 0, i32 30
  %t95 = getelementptr %"compiler/typed:Plan", ptr %t94, i32 0, i32 7
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l49, !tbaa !27
  %t97 = load i64, ptr %l1, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 %t97
  %t102 = load ptr, ptr %t101, !tbaa !39
  store ptr %t102, ptr %l47, !tbaa !29
  br label %bb17
bb16:
  store ptr null, ptr %l47, !tbaa !29
  br label %bb17
bb17:
  %t104 = load ptr, ptr %l47, !tbaa !29
  store ptr %t104, ptr %l6, !tbaa !29
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t107 = icmp eq ptr %t105, null
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb18, label %bb19
bb18:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t116 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v0, ptr %t111, ptr %t112)
  store { i64, [4 x i64] } %t116, ptr %l58
  br label %bb20
bb19:
  br label %bb27
bb20:
  %t117 = load { i64, [4 x i64] }, ptr %l58
  store { i64, [4 x i64] } %t117, ptr %l7
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t120 = load %"compiler/source:Span", ptr %l3
  %t124 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t118, i32 %t119, %"compiler/source:Span" %t120)
  store i32 %t124, ptr %l62
  br label %bb21
bb21:
  %t125 = load i32, ptr %l62, !tbaa !23
  store i32 %t125, ptr %l8, !tbaa !23
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l8, !tbaa !23
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/lower:lowering", ptr %t128, i32 0, i32 30
  %t131 = getelementptr %"compiler/typed:Plan", ptr %t130, i32 0, i32 9
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l66, !tbaa !27
  %t133 = load i64, ptr %l1, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i64, ptr %t136, i64 %t133
  %t138 = load i64, ptr %t137, !tbaa !34
  %t139 = load { i64, [4 x i64] }, ptr %l7
  %t140 = load { i64, [1 x i64] }, ptr %l5
  store { i64, [15 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [15 x i64] }, ptr %t141, i32 0, i32 0
  store i64 14, ptr %t142
  %t144 = insertvalue { { i64, [4 x i64] }, { i64, [1 x i64] } } undef, { i64, [4 x i64] } %t139, 0
  %t146 = insertvalue { { i64, [4 x i64] }, { i64, [1 x i64] } } %t144, { i64, [1 x i64] } %t140, 1
  %t147 = getelementptr { i64, [15 x i64] }, ptr %t141, i32 0, i32 1
  store { { i64, [4 x i64] }, { i64, [1 x i64] } } %t146, ptr %t147
  %t148 = load { i64, [15 x i64] }, ptr %t141
  %t149 = load { i64, [1 x i64] }, ptr %l5
  %t150 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguarded(ptr %v0, ptr %t126, i32 %t127, i64 %t138, { i64, [15 x i64] } %t148, { i64, [1 x i64] } %t149, %"compiler/source:Span" %t150)
  br label %bb22
bb22:
  %t157 = load i64, ptr %l4, !tbaa !24
  %t159 = icmp eq i64 %t157, 2
  br i1 %t159, label %bb23, label %bb24
bb23:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/lower:lowering", ptr %t161, i32 0, i32 32
  %t164 = load i64, ptr %l1, !tbaa !24
  %t165 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %t163, i64 %t164, i32 %t165)
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t169 = load i32, ptr %l8, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [1 x i64] }, ptr %t170, i32 0, i32 0
  store i64 4, ptr %t171
  %t173 = insertvalue { i32 } undef, i32 %t169, 0
  %t174 = getelementptr { i64, [1 x i64] }, ptr %t170, i32 0, i32 1
  store { i32 } %t173, ptr %t174
  %t175 = load { i64, [1 x i64] }, ptr %t170
  store { i64, [1 x i64] } %t175, ptr %rv
  br label %ret
bb26:
  %t177 = load i32, ptr %l8, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [1 x i64] }, ptr %t178, i32 0, i32 0
  store i64 4, ptr %t179
  %t181 = insertvalue { i32 } undef, i32 %t177, 0
  %t182 = getelementptr { i64, [1 x i64] }, ptr %t178, i32 0, i32 1
  store { i32 } %t181, ptr %t182
  %t183 = load { i64, [1 x i64] }, ptr %t178
  store { i64, [1 x i64] } %t183, ptr %l5
  br label %bb27
bb27:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t187 = load %"compiler/source:Span", ptr %l3
  %t191 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t185, i32 %t186, %"compiler/source:Span" %t187)
  store i32 %t191, ptr %l87
  br label %bb28
bb28:
  %t192 = load i32, ptr %l87, !tbaa !23
  store i32 %t192, ptr %l9, !tbaa !23
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i32, ptr %l9, !tbaa !23
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/lower:lowering", ptr %t195, i32 0, i32 30
  %t198 = getelementptr %"compiler/typed:Plan", ptr %t197, i32 0, i32 8
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l91, !tbaa !27
  %t200 = load i64, ptr %l1, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i64, ptr %t203, i64 %t200
  %t205 = load i64, ptr %t204, !tbaa !34
  %t206 = load { i64, [1 x i64] }, ptr %l5
  store { i64, [15 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [15 x i64] }, ptr %t207, i32 0, i32 0
  store i64 13, ptr %t208
  %t210 = insertvalue { { i64, [1 x i64] } } undef, { i64, [1 x i64] } %t206, 0
  %t211 = getelementptr { i64, [15 x i64] }, ptr %t207, i32 0, i32 1
  store { { i64, [1 x i64] } } %t210, ptr %t211
  %t212 = load { i64, [15 x i64] }, ptr %t207
  %t213 = load { i64, [1 x i64] }, ptr %l5
  %t214 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguarded(ptr %v0, ptr %t193, i32 %t194, i64 %t205, { i64, [15 x i64] } %t212, { i64, [1 x i64] } %t213, %"compiler/source:Span" %t214)
  br label %bb29
bb29:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/lower:lowering", ptr %t221, i32 0, i32 32
  %t224 = load i64, ptr %l1, !tbaa !24
  %t225 = load i32, ptr %l9, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %t223, i64 %t224, i32 %t225)
  br label %bb30
bb30:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/lower:lowering", ptr %t229, i32 0, i32 33
  %t232 = load i64, ptr %l1, !tbaa !24
  %t233 = load { i64, [1 x i64] }, ptr %l5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Hfd0fb4fa500a8eead78ad1b6f9922652(ptr %v0, ptr %t231, i64 %t232, { i64, [1 x i64] } %t233)
  br label %bb31
bb31:
  %t237 = load i32, ptr %l9, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [1 x i64] }, ptr %t238, i32 0, i32 0
  store i64 4, ptr %t239
  %t241 = insertvalue { i32 } undef, i32 %t237, 0
  %t242 = getelementptr { i64, [1 x i64] }, ptr %t238, i32 0, i32 1
  store { i32 } %t241, ptr %t242
  %t243 = load { i64, [1 x i64] }, ptr %t238
  store { i64, [1 x i64] } %t243, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ereleases(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca i1
  %l59 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i64
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l83 = alloca %"compiler/lower:relPath"
  %l85 = alloca %"compiler/lower:relPath"
  %l87 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s6 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 31
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
  %t15 = load i1, ptr %l2, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t18 = load ptr, ptr %l19, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb7, label %bb8
bb6:
  br label %bb18
bb7:
  %t21 = load ptr, ptr %l19, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 8}
  %t24 = icmp eq i64 %t22, 4
  store i1 %t24, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t25 = load i1, ptr %l20, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t26 = load ptr, ptr %lp3
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_b05049138e3c9583_5b10da44a83c4f97)
  unreachable
bb17:
  br label %bb18
bb18:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/lower:Lowerer", ptr %t32, i32 0, i32 5
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_7978ceed25dd57db_b68e0a2baf6deaf)
  unreachable
bb20:
  br label %bb21
bb21:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/lower:Lowerer", ptr %t42, i32 0, i32 5
  %t45 = load ptr, ptr %t44, !tbaa !29
  store ptr %t45, ptr %l4, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t51 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePlaceOf(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i64 %t51, ptr %l33
  br label %bb22
bb22:
  %t52 = load i64, ptr %l33, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb23, label %bb24
bb23:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 0
  store i1 %t60, ptr %l35, !tbaa !21
  br label %bb24
bb24:
  %t61 = load i1, ptr %l35, !tbaa !21
  br i1 %t61, label %bb25, label %bb26
bb25:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t64, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  store %"compiler/source:Span" %t66, ptr %l6
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l7, !tbaa !23
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t76, i32 0, i32 2
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l8, !tbaa !23
  %t80 = load i1, ptr %l2, !tbaa !21
  store i1 %t80, ptr %l38, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb27
bb27:
  %t82 = load i1, ptr %l38, !tbaa !21
  br i1 %t82, label %bb28, label %bb29
bb28:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t85, i32 0, i32 0
  %t87 = load %"compiler/source:Span", ptr %t86
  store %"compiler/source:Span" %t87, ptr %l9
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t91, i32 0, i32 1
  %t93 = load i32, ptr %t92
  store i32 %t93, ptr %l10, !tbaa !23
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t97, i32 0, i32 2
  %t99 = load i32, ptr %t98
  %t101 = load ptr, ptr %l4, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Body", ptr %t105, i32 0, i32 0
  %t108 = load i32, ptr %t107, !tbaa !23
  %t110 = sext i32 %t108 to i64
  %t113 = sext i32 %t99 to i64
  %t117 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLocalPlaceOf(ptr %v0, ptr %t101, i64 %t110, i64 %t113)
  store i64 %t117, ptr %l59
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t118 = load i64, ptr %l59, !tbaa !24
  store i64 %t118, ptr %l5, !tbaa !24
  br label %bb31
bb31:
  %t119 = load ptr, ptr %l4, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/lower:lowering", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Body", ptr %t123, i32 0, i32 0
  %t126 = load i32, ptr %t125, !tbaa !23
  %t128 = sext i32 %t126 to i64
  %t129 = load i64, ptr %l5, !tbaa !24
  %t133 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %t119, i64 %t128, i64 %t129)
  store i64 %t133, ptr %l66
  br label %bb32
bb32:
  %t134 = load i64, ptr %l66, !tbaa !24
  store i64 %t134, ptr %l12, !tbaa !24
  %t135 = load i64, ptr %l5, !tbaa !24
  %t137 = icmp sge i64 %t135, 0
  br i1 %t137, label %bb33, label %bb34
bb33:
  %t139 = load i64, ptr %l12, !tbaa !24
  %t140 = load i64, ptr @G_2ecompiler_2ffree_2eNotSole, !tbaa !24
  %t143 = icmp ne i64 %t139, %t140
  store i1 %t143, ptr %l69, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t145 = load i1, ptr %l69, !tbaa !21
  br i1 %t145, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t146 = load ptr, ptr %lp3
  store ptr %t146, ptr %l73, !tbaa !29
  %t147 = load i64, ptr %l12, !tbaa !24
  store i64 %t147, ptr %l74, !tbaa !24
  %t148 = load ptr, ptr %l4, !tbaa !29
  %t149 = load i64, ptr %l5, !tbaa !24
  %t152 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsHandle(ptr %v0, ptr %t148, i64 %t149)
  store i1 %t152, ptr %l77
  br label %bb38
bb37:
  br label %bb49
bb38:
  %t153 = load i1, ptr %l77, !tbaa !21
  br i1 %t153, label %bb39, label %bb40
bb39:
  %t154 = mul i64 1, 8
  %t155 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t154)
  %t156 = insertvalue { i64, ptr } undef, i64 1, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  store { i64, ptr } %t157, ptr %l79, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr i64, ptr %t159, i64 0
  store i64 0, ptr %t160, !tbaa !34
  %t161 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t161, ptr %l78, !tbaa !27
  br label %bb45
bb40:
  %t162 = icmp sge i64 0, 0
  br i1 %t162, label %bb41, label %bb42
bb41:
  %t164 = icmp sle i64 0, 1152921504606846975
  br i1 %t164, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_6cf042e1e67efefa_11456615317dde16)
  unreachable
bb43:
  %t166 = mul i64 0, 8
  %t167 = insertvalue { i64, ptr } undef, i64 0, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t168, ptr %l78, !tbaa !27
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_6cf042e1e67efefa_11456615317dde16)
  unreachable
bb45:
  %t170 = load i64, ptr %l74, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t172 = call %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %s6, i64 %t170, { i64, ptr } %t171)
  store %"compiler/lower:relPath" %t172, ptr %l83
  br label %bb46
bb46:
  %t174 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s6, ptr %l83)
  store %"compiler/lower:relPath" %t174, ptr %l85
  br label %bb47
bb47:
  %t175 = load ptr, ptr %l73, !tbaa !29
  %t176 = load %"compiler/lower:relPath", ptr %l85
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v2, ptr %s6, ptr %t175, %"compiler/lower:relPath" %t176)
  br label %bb48
bb48:
  %t177 = load ptr, ptr %lp3
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t177
  call void @__olang_scope_close(ptr %s6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %rv
  br label %ret
bb49:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l87, !tbaa !29
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t181)
  store i32 %t183, ptr %l89
  br label %bb50
bb50:
  %t184 = load ptr, ptr %l87, !tbaa !29
  %t185 = load i32, ptr %l89, !tbaa !23
  %t186 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2eleafPaths(ptr %v0, ptr %v2, ptr %t184, i32 %t185)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l90
  br label %bb51
bb51:
  %t187 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erender(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [7 x i64] }
  %l12 = alloca i32
  %l19 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i1
  %l34 = alloca i32
  %l44 = alloca i32
  %l47 = alloca i1
  %l48 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l74 = alloca i1
  %l75 = alloca i1
  %l78 = alloca i1
  %l81 = alloca i1
  %l89 = alloca i1
  %l93 = alloca i1
  %l97 = alloca i1
  %l101 = alloca i1
  %l115 = alloca i32
  %l119 = alloca i32
  %l120 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca i32
  %l125 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l127 = alloca i32
  %l132 = alloca i32
  %l133 = alloca %"compiler/mir:Lvalue"
  %l134 = alloca ptr
  %l137 = alloca i32
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l143 = alloca { i64, [4 x i64] }
  %l156 = alloca i32
  %l158 = alloca ptr
  %l159 = alloca { i64, [7 x i64] }
  %l161 = alloca ptr
  %l162 = alloca { i64, [4 x i64] }
  %l164 = alloca { i64, [4 x i64] }
  %l165 = alloca { i64, ptr }
  %l166 = alloca %"compiler/mir:Range"
  %l170 = alloca { i64, ptr }
  %l171 = alloca %"compiler/mir:Range"
  %l176 = alloca %"compiler/mir:Call"
  %l177 = alloca i32
  %s0 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %t174 = alloca { i64, [21 x i64] }, align 8
  %t247 = alloca { i64, [15 x i64] }, align 8
  %t263 = alloca { i64, [2 x i64] }, align 8
  %t272 = alloca { i64, [7 x i64] }, align 8
  %t286 = alloca { i64, [2 x i64] }, align 8
  %t362 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
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
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 11
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l19, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l5, !tbaa !29
  store ptr %t18, ptr %l22, !tbaa !29
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l25
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l22, !tbaa !29
  %t25 = load i32, ptr %l25, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t26, ptr %l26
  br label %bb8
bb8:
  %t27 = load i1, ptr %l26, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load { i64, [1 x i64] }, ptr %l1
  %t30 = load { i64, [4 x i64] }, ptr %l2
  %t31 = load i32, ptr %l3, !tbaa !23
  %t32 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAny(ptr %v0, ptr %t28, { i64, [1 x i64] } %t29, { i64, [4 x i64] } %t30, i32 %t31, i1 true, %"compiler/source:Span" %t32)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l34
  br label %bb13
bb13:
  %t43 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t45 = trunc i64 32 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, [1 x i64] }, ptr %l1
  %t50 = load { i64, [4 x i64] }, ptr %l2
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %t48, { i64, [1 x i64] } %t49, { i64, [4 x i64] } %t50, i32 %t51, %"compiler/source:Span" %t52)
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l44
  br label %bb18
bb18:
  %t63 = load i32, ptr %l44, !tbaa !23
  store i32 %t63, ptr %l6, !tbaa !23
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t65 = load i32, ptr %l6, !tbaa !23
  %t68 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l47
  br label %bb19
bb19:
  %t69 = load i1, ptr %l47, !tbaa !21
  br i1 %t69, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t71 = load i32, ptr %l6, !tbaa !23
  %t74 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l51
  br label %bb22
bb21:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb23
bb22:
  %t75 = load i1, ptr %l51, !tbaa !21
  store i1 %t75, ptr %l48, !tbaa !21
  br label %bb23
bb23:
  %t76 = load i1, ptr %l48, !tbaa !21
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l3, !tbaa !23
  %t81 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisText(ptr %v0, ptr %t77, i32 %t78)
  store i1 %t81, ptr %l55
  br label %bb26
bb25:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb27
bb26:
  %t82 = load i1, ptr %l55, !tbaa !21
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb27
bb27:
  %t83 = load i1, ptr %l52, !tbaa !21
  br i1 %t83, label %bb28, label %bb29
bb28:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l3, !tbaa !23
  %t88 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ehasStr(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l59
  br label %bb30
bb29:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb31
bb30:
  %t89 = load i1, ptr %l59, !tbaa !21
  %t90 = xor i1 %t89, true
  store i1 %t90, ptr %l56, !tbaa !21
  br label %bb31
bb31:
  %t92 = load i1, ptr %l56, !tbaa !21
  br i1 %t92, label %bb32, label %bb33
bb32:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load { i64, [1 x i64] }, ptr %l1
  %t95 = load { i64, [4 x i64] }, ptr %l2
  %t96 = load i32, ptr %l3, !tbaa !23
  %t97 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderMaybeText(ptr %v0, ptr %t93, { i64, [1 x i64] } %t94, { i64, [4 x i64] } %t95, i32 %t96, %"compiler/source:Span" %t97, i32 0)
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb35:
  store i32 7, ptr %l7
  store i1 true, ptr %l8, !tbaa !21
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l3, !tbaa !23
  %t109 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ehasStr(ptr %v0, ptr %t105, i32 %t106)
  store i1 %t109, ptr %l70
  br label %bb36
bb36:
  %t110 = load i1, ptr %l70, !tbaa !21
  br i1 %t110, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb44
bb38:
  %t111 = load ptr, ptr %l5, !tbaa !29
  %t112 = load i32, ptr %l6, !tbaa !23
  %t115 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t115, ptr %l74
  br label %bb39
bb39:
  %t116 = load i1, ptr %l74, !tbaa !21
  br i1 %t116, label %bb40, label %bb41
bb40:
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t118 = load i32, ptr %l6, !tbaa !23
  %t121 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t121, ptr %l78
  br label %bb42
bb41:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb43
bb42:
  %t122 = load i1, ptr %l78, !tbaa !21
  store i1 %t122, ptr %l75, !tbaa !21
  br label %bb43
bb43:
  %t123 = load i1, ptr %l75, !tbaa !21
  store i1 %t123, ptr %l71, !tbaa !21
  br label %bb44
bb44:
  %t124 = load i1, ptr %l71, !tbaa !21
  br i1 %t124, label %bb45, label %bb46
bb45:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb70
bb46:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l3, !tbaa !23
  %t129 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisChar(ptr %v0, ptr %t125, i32 %t126)
  store i1 %t129, ptr %l81
  br label %bb47
bb47:
  %t130 = load i1, ptr %l81, !tbaa !21
  br i1 %t130, label %bb48, label %bb49
bb48:
  store i32 2, ptr %l7
  br label %bb69
bb49:
  %t132 = load i32, ptr %l6, !tbaa !23
  %t133 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t136 = icmp eq i32 %t132, %t133
  br i1 %t136, label %bb50, label %bb51
bb50:
  store i32 7, ptr %l7
  br label %bb68
bb51:
  %t139 = load ptr, ptr %l5, !tbaa !29
  %t140 = load i32, ptr %l6, !tbaa !23
  %t143 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t139, i32 %t140)
  store i1 %t143, ptr %l89
  br label %bb52
bb52:
  %t144 = load i1, ptr %l89, !tbaa !21
  br i1 %t144, label %bb53, label %bb54
bb53:
  store i32 5, ptr %l7
  br label %bb67
bb54:
  %t146 = load ptr, ptr %l5, !tbaa !29
  %t147 = load i32, ptr %l6, !tbaa !23
  %t150 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l93
  br label %bb55
bb55:
  %t151 = load i1, ptr %l93, !tbaa !21
  br i1 %t151, label %bb56, label %bb57
bb56:
  store i32 4, ptr %l7
  br label %bb66
bb57:
  %t153 = load ptr, ptr %l5, !tbaa !29
  %t154 = load i32, ptr %l6, !tbaa !23
  %t157 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t153, i32 %t154)
  store i1 %t157, ptr %l97
  br label %bb58
bb58:
  %t158 = load i1, ptr %l97, !tbaa !21
  br i1 %t158, label %bb59, label %bb60
bb59:
  store i32 6, ptr %l7
  br label %bb65
bb60:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l3, !tbaa !23
  %t164 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisText(ptr %v0, ptr %t160, i32 %t161)
  store i1 %t164, ptr %l101
  br label %bb61
bb61:
  %t165 = load i1, ptr %l101, !tbaa !21
  br i1 %t165, label %bb62, label %bb63
bb62:
  store i32 0, ptr %l7
  br label %bb64
bb63:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t167 = load i1, ptr %l8, !tbaa !21
  br i1 %t167, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s19
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l4
  %t171 = load { i64, [1 x i64] }, ptr %l1
  %t172 = load i32, ptr %l7, !range !{i32 0, i32 8}
  %t173 = load { i64, [4 x i64] }, ptr %l2
  store { i64, [21 x i64] } zeroinitializer, ptr %t174
  %t175 = getelementptr { i64, [21 x i64] }, ptr %t174, i32 0, i32 0
  store i64 8, ptr %t175
  %t177 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t170, 0
  %t179 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t177, { i64, [1 x i64] } %t171, 1
  %t181 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t179, i32 %t172, 2
  %t183 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t181, { i64, [4 x i64] } %t173, 3
  %t184 = getelementptr { i64, [21 x i64] }, ptr %t174, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t183, ptr %t184
  %t185 = load { i64, [21 x i64] }, ptr %t174
  %t187 = call ptr @__olang_scope_alloc_a(ptr %s19, i64 176, i64 8)
  store { i64, [21 x i64] } %t185, ptr %t187
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s19, ptr %t169, ptr %t187)
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb74:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/lower:lowering", ptr %t190, i32 0, i32 0
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t194 = load i32, ptr %l3, !tbaa !23
  %t198 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %t193, i32 0, i32 %t194)
  store i32 %t198, ptr %l115
  br label %bb75
bb75:
  %t199 = load i32, ptr %l115, !tbaa !23
  store i32 %t199, ptr %l3, !tbaa !23
  %t200 = load ptr, ptr %l5, !tbaa !29
  %t201 = load i32, ptr %l3, !tbaa !23
  %t205 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t200, i32 0, i32 %t201)
  store i32 %t205, ptr %l119
  br label %bb76
bb76:
  %t206 = load i32, ptr %l119, !tbaa !23
  store i32 %t206, ptr %l9, !tbaa !23
  %t207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t207, ptr %l120, !tbaa !29
  %t208 = load ptr, ptr %l5, !tbaa !29
  store ptr %t208, ptr %l121, !tbaa !29
  %t209 = load ptr, ptr %l5, !tbaa !29
  %t210 = load i32, ptr %l9, !tbaa !23
  %t213 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t209, i32 %t210)
  store i32 %t213, ptr %l124
  br label %bb77
bb77:
  %t214 = load ptr, ptr %l121, !tbaa !29
  %t215 = load i32, ptr %l124, !tbaa !23
  %t216 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t214, i32 %t215)
  store { i64, ptr } %t216, ptr %l125
  br label %bb78
bb78:
  %t217 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t217, ptr %l126, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr i32, ptr %t219, i64 0
  %t221 = load i32, ptr %t220, !tbaa !33
  store i32 %t221, ptr %l127, !tbaa !23
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load { i64, [4 x i64] }, ptr %l2
  %t224 = load i32, ptr %l3, !tbaa !23
  %t225 = load %"compiler/source:Span", ptr %l4
  %t230 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t222, { i64, [4 x i64] } %t223, i32 %t224, %"compiler/source:Span" %t225)
  store i32 %t230, ptr %l132
  br label %bb79
bb79:
  %t231 = load i32, ptr %l132, !tbaa !23
  %t232 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t231)
  store %"compiler/mir:Lvalue" %t232, ptr %l133
  br label %bb80
bb80:
  %t233 = load ptr, ptr %l5, !tbaa !29
  store ptr %t233, ptr %l134, !tbaa !29
  %t234 = load ptr, ptr %l5, !tbaa !29
  %t235 = load i32, ptr %l9, !tbaa !23
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t234, i32 %t235)
  store i32 %t238, ptr %l137
  br label %bb81
bb81:
  %t239 = load ptr, ptr %l134, !tbaa !29
  %t240 = load i32, ptr %l137, !tbaa !23
  %t241 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t239, i32 %t240)
  store { i64, ptr } %t241, ptr %l138
  br label %bb82
bb82:
  %t242 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t242, ptr %l139, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 0
  %t246 = load i32, ptr %t245, !tbaa !33
  store { i64, [15 x i64] } zeroinitializer, ptr %t247
  %t248 = getelementptr { i64, [15 x i64] }, ptr %t247, i32 0, i32 0
  store i64 1, ptr %t248
  %t249 = load %"compiler/mir:Lvalue", ptr %l133
  %t250 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t249, 0
  %t252 = insertvalue { %"compiler/mir:Lvalue", i32 } %t250, i32 %t246, 1
  %t253 = getelementptr { i64, [15 x i64] }, ptr %t247, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t252, ptr %t253
  %t254 = load { i64, [15 x i64] }, ptr %t247
  %t255 = load %"compiler/source:Span", ptr %l4
  %t256 = load ptr, ptr %l120, !tbaa !29
  %t257 = load i32, ptr %l127, !tbaa !23
  %t260 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t256, i32 %t257, { i64, [15 x i64] } %t254, %"compiler/source:Span" %t255)
  store { i64, [4 x i64] } %t260, ptr %l143
  br label %bb83
bb83:
  %t261 = load { i64, [4 x i64] }, ptr %l143
  store { i64, [4 x i64] } %t261, ptr %l10
  %t262 = load i32, ptr %l3, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t263
  %t264 = getelementptr { i64, [2 x i64] }, ptr %t263, i32 0, i32 0
  store i64 3, ptr %t264
  %t266 = insertvalue { i32, i32 } undef, i32 0, 0
  %t268 = insertvalue { i32, i32 } %t266, i32 %t262, 1
  %t269 = getelementptr { i64, [2 x i64] }, ptr %t263, i32 0, i32 1
  store { i32, i32 } %t268, ptr %t269
  %t270 = load { i64, [2 x i64] }, ptr %t263
  %t271 = load i32, ptr %l9, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t272
  %t273 = getelementptr { i64, [7 x i64] }, ptr %t272, i32 0, i32 0
  store i64 0, ptr %t273
  %t275 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t270, 0
  %t277 = insertvalue { { i64, [2 x i64] }, i32 } %t275, i32 %t271, 1
  %t278 = getelementptr { i64, [7 x i64] }, ptr %t272, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t277, ptr %t278
  %t279 = load { i64, [7 x i64] }, ptr %t272
  store { i64, [7 x i64] } %t279, ptr %l11
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/lower:lowering", ptr %t281, i32 0, i32 0
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t285 = load i32, ptr %l3, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t286
  %t287 = getelementptr { i64, [2 x i64] }, ptr %t286, i32 0, i32 0
  store i64 3, ptr %t287
  %t289 = insertvalue { i32, i32 } undef, i32 0, 0
  %t291 = insertvalue { i32, i32 } %t289, i32 %t285, 1
  %t292 = getelementptr { i64, [2 x i64] }, ptr %t286, i32 0, i32 1
  store { i32, i32 } %t291, ptr %t292
  %t293 = load { i64, [2 x i64] }, ptr %t286
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %t284, { i64, [2 x i64] } %t293)
  br label %bb84
bb84:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/lower:lowering", ptr %t296, i32 0, i32 3
  %t300 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t298)
  store i32 %t300, ptr %l156
  br label %bb85
bb85:
  %t301 = load i32, ptr %l156, !tbaa !23
  store i32 %t301, ptr %l12, !tbaa !23
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/lower:lowering", ptr %t302, i32 0, i32 3
  store ptr %t304, ptr %l158, !tbaa !29
  %t305 = load { i64, [7 x i64] }, ptr %l11
  store { i64, [7 x i64] } %t305, ptr %l159
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/lower:lowering", ptr %t306, i32 0, i32 3
  store ptr %t308, ptr %l161, !tbaa !29
  %t309 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t309, ptr %l162
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %t310)
  store { i64, [4 x i64] } %t312, ptr %l164
  br label %bb86
bb86:
  %t313 = mul i64 2, 40
  %t314 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t313)
  %t315 = insertvalue { i64, ptr } undef, i64 2, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  store { i64, ptr } %t316, ptr %l165, !tbaa !27
  %t317 = load { i64, [4 x i64] }, ptr %l162
  %t318 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr { i64, [4 x i64] }, ptr %t319, i64 0
  store { i64, [4 x i64] } %t317, ptr %t320
  %t321 = load { i64, [4 x i64] }, ptr %l164
  %t322 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr { i64, [4 x i64] }, ptr %t323, i64 1
  store { i64, [4 x i64] } %t321, ptr %t324
  %t325 = load ptr, ptr %l161, !tbaa !29
  %t326 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t327 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t325, { i64, ptr } %t326)
  store %"compiler/mir:Range" %t327, ptr %l166
  br label %bb87
bb87:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/lower:lowering", ptr %t328, i32 0, i32 3
  %t331 = load { i64, [1 x i64] }, ptr %l1
  %t332 = mul i64 1, 16
  %t333 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t332)
  %t334 = insertvalue { i64, ptr } undef, i64 1, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  store { i64, ptr } %t335, ptr %l170, !tbaa !27
  %t337 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr { i64, [1 x i64] }, ptr %t338, i64 0
  store { i64, [1 x i64] } %t331, ptr %t339
  %t341 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t342 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t330, { i64, ptr } %t341)
  store %"compiler/mir:Range" %t342, ptr %l171
  br label %bb88
bb88:
  %t343 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  %t344 = load i32, ptr %l12, !tbaa !23
  %t345 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t346 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t347 = load { i64, [7 x i64] }, ptr %l159
  %t348 = load %"compiler/mir:Range", ptr %l166
  %t349 = load %"compiler/mir:Range", ptr %l171
  %t354 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t347, %"compiler/mir:Range" %t348, %"compiler/mir:Range" %t349, %"compiler/mir:Lvalue" %t343, i1 false, i32 %t344, i32 %t345, i32 %t346)
  store %"compiler/mir:Call" %t354, ptr %l176
  br label %bb89
bb89:
  %t355 = load ptr, ptr %l158, !tbaa !29
  %t356 = load %"compiler/mir:Call", ptr %l176
  %t357 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t355, %"compiler/mir:Call" %t356)
  store i32 %t357, ptr %l177
  br label %bb90
bb90:
  %t358 = load i32, ptr %l177, !tbaa !23
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load %"compiler/source:Span", ptr %l4
  store { i64, [8 x i64] } zeroinitializer, ptr %t362
  %t363 = getelementptr { i64, [8 x i64] }, ptr %t362, i32 0, i32 0
  store i64 4, ptr %t363
  %t365 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t360, 0
  %t367 = insertvalue { %"compiler/source:Span", i32 } %t365, i32 %t358, 1
  %t368 = getelementptr { i64, [8 x i64] }, ptr %t362, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t367, ptr %t368
  %t369 = load { i64, [8 x i64] }, ptr %t362
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t359, { i64, [8 x i64] } %t369)
  br label %bb91
bb91:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t372, i32 %t373)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eslotCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l32 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/mir:Lvalue"
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/mir:Lvalue"
  %l46 = alloca %"compiler/mir:Lvalue"
  %l55 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca i32
  %l59 = alloca %"compiler/mir:Lvalue"
  %l63 = alloca { i64, [4 x i64] }
  %l68 = alloca { i64, ptr }
  %l70 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t51 = alloca { i64, [4 x i64] }, align 8
  %t54 = alloca { i64, [15 x i64] }, align 8
  %t60 = alloca { i64, [21 x i64] }, align 8
  %t84 = alloca { i64, [4 x i64] }, align 8
  %t92 = alloca { i64, [21 x i64] }, align 8
  %t122 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
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
  store i32 %t14, ptr %l17
  br label %bb1
bb1:
  %t15 = load i32, ptr %l17, !tbaa !23
  store i32 %t15, ptr %l6, !tbaa !23
  %t16 = load ptr, ptr %l5, !tbaa !29
  store ptr %t16, ptr %l18, !tbaa !29
  %t17 = load ptr, ptr %l5, !tbaa !29
  store ptr %t17, ptr %l19, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l22
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t24 = load i32, ptr %l22, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l23
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t27 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t28 = load i64, ptr %l3, !tbaa !24
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t26, i32 %t27, i64 %t28)
  store i32 %t32, ptr %l27
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i32, ptr %l23, !tbaa !23
  %t35 = load i32, ptr %l27, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t33, i32 %t34, i32 %t35)
  store i32 %t36, ptr %l28
  br label %bb5
bb5:
  %t37 = load i32, ptr %l28, !tbaa !23
  store i32 %t37, ptr %l7, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l7, !tbaa !23
  %t40 = load %"compiler/source:Span", ptr %l4
  %t44 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t38, i32 %t39, %"compiler/source:Span" %t40)
  store i32 %t44, ptr %l32
  br label %bb6
bb6:
  %t45 = load i32, ptr %l32, !tbaa !23
  store i32 %t45, ptr %l8, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l33, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t47, ptr %l34
  %t48 = load i32, ptr %l8, !tbaa !23
  %t50 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t48)
  store %"compiler/mir:Lvalue" %t50, ptr %l36
  br label %bb7
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 0
  store i64 0, ptr %t52
  %t53 = load { i64, [4 x i64] }, ptr %t51
  store { i64, [15 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [15 x i64] }, ptr %t54, i32 0, i32 0
  store i64 0, ptr %t55
  %t57 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t53, 0
  %t58 = getelementptr { i64, [15 x i64] }, ptr %t54, i32 0, i32 1
  store { { i64, [4 x i64] } } %t57, ptr %t58
  %t59 = load { i64, [15 x i64] }, ptr %t54
  store { i64, [21 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [21 x i64] }, ptr %t60, i32 0, i32 0
  store i64 0, ptr %t61
  %t62 = load %"compiler/source:Span", ptr %l34
  %t63 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t62, 0
  %t64 = load %"compiler/mir:Lvalue", ptr %l36
  %t65 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t63, %"compiler/mir:Lvalue" %t64, 1
  %t67 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t65, { i64, [15 x i64] } %t59, 2
  %t68 = getelementptr { i64, [21 x i64] }, ptr %t60, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t67, ptr %t68
  %t69 = load { i64, [21 x i64] }, ptr %t60
  %t71 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t69, ptr %t71
  %t72 = load ptr, ptr %l33, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t72, ptr %t71)
  br label %bb8
bb8:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l41, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t75, ptr %l42
  %t76 = load i32, ptr %l8, !tbaa !23
  %t78 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t76)
  store %"compiler/mir:Lvalue" %t78, ptr %l44
  br label %bb9
bb9:
  %t79 = load i32, ptr %l6, !tbaa !23
  %t81 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t79)
  store %"compiler/mir:Lvalue" %t81, ptr %l46
  br label %bb10
bb10:
  %t82 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t83 = load i64, ptr %l3, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 0
  store i64 2, ptr %t85
  %t87 = insertvalue { i32, i64 } undef, i32 %t82, 0
  %t89 = insertvalue { i32, i64 } %t87, i64 %t83, 1
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  store { i32, i64 } %t89, ptr %t90
  %t91 = load { i64, [4 x i64] }, ptr %t84
  store { i64, [21 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [21 x i64] }, ptr %t92, i32 0, i32 0
  store i64 9, ptr %t93
  %t94 = load %"compiler/source:Span", ptr %l42
  %t95 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t94, 0
  %t96 = load %"compiler/mir:Lvalue", ptr %l44
  %t97 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t95, %"compiler/mir:Lvalue" %t96, 1
  %t98 = load %"compiler/mir:Lvalue", ptr %l46
  %t99 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t97, %"compiler/mir:Lvalue" %t98, 2
  %t101 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t99, { i64, [4 x i64] } %t91, 3
  %t102 = getelementptr { i64, [21 x i64] }, ptr %t92, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t101, ptr %t102
  %t103 = load { i64, [21 x i64] }, ptr %t92
  %t105 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t103, ptr %t105
  %t106 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t106, ptr %t105)
  br label %bb11
bb11:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t109 = load i32, ptr %l7, !tbaa !23
  %t110 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t108, i32 %t109, i64 %t110)
  store i32 %t114, ptr %l55
  br label %bb12
bb12:
  %t115 = load i32, ptr %l55, !tbaa !23
  store i32 %t115, ptr %l9, !tbaa !23
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l56, !tbaa !29
  %t117 = load i32, ptr %l9, !tbaa !23
  store i32 %t117, ptr %l57, !tbaa !23
  %t118 = load i32, ptr %l8, !tbaa !23
  %t120 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t118)
  store %"compiler/mir:Lvalue" %t120, ptr %l59
  br label %bb13
bb13:
  %t121 = load i32, ptr %l9, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [15 x i64] }, ptr %t122, i32 0, i32 0
  store i64 1, ptr %t123
  %t124 = load %"compiler/mir:Lvalue", ptr %l59
  %t125 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t124, 0
  %t127 = insertvalue { %"compiler/mir:Lvalue", i32 } %t125, i32 %t121, 1
  %t128 = getelementptr { i64, [15 x i64] }, ptr %t122, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t127, ptr %t128
  %t129 = load { i64, [15 x i64] }, ptr %t122
  %t130 = load %"compiler/source:Span", ptr %l4
  %t131 = load ptr, ptr %l56, !tbaa !29
  %t132 = load i32, ptr %l57, !tbaa !23
  %t135 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t131, i32 %t132, { i64, [15 x i64] } %t129, %"compiler/source:Span" %t130)
  store { i64, [4 x i64] } %t135, ptr %l63
  br label %bb14
bb14:
  %t136 = load { i64, [4 x i64] }, ptr %l63
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l2, !tbaa !23
  %t140 = mul i64 1, 40
  %t141 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t140)
  %t142 = insertvalue { i64, ptr } undef, i64 1, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l68, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, [4 x i64] }, ptr %t146, i64 0
  store { i64, [4 x i64] } %t136, ptr %t147
  %t148 = load %"compiler/source:Span", ptr %l4
  %t152 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t154 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t137, i32 20, i32 %t138, { i64, ptr } %t152, %"compiler/source:Span" %t148)
  store { i64, [4 x i64] } %t154, ptr %l70
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t155 = load { i64, [4 x i64] }, ptr %l70
  store { i64, [4 x i64] } %t155, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"compiler/lower:pl"
  %l14 = alloca %"compiler/lower:pl"
  %l17 = alloca { i64, [4 x i64] }
  %l20 = alloca i32
  %l22 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t33 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp slt i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 10
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load %"compiler/lower:pl", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/lower:pl" %t12, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t16, ptr %l12
  %t18 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l12)
  store %"compiler/lower:pl" %t18, ptr %l14
  br label %bb7
bb7:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load %"compiler/source:Span", ptr %l3
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t22 = load %"compiler/lower:pl", ptr %l14
  %t25 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %s0, ptr %t21, %"compiler/lower:pl" %t22, i32 %t19, %"compiler/source:Span" %t20)
  store { i64, [4 x i64] } %t25, ptr %l17
  br label %bb8
bb8:
  %t26 = load i32, ptr %l2, !tbaa !23
  %t27 = load %"compiler/source:Span", ptr %l3
  %t28 = load ptr, ptr %l10, !tbaa !29
  %t29 = load { i64, [4 x i64] }, ptr %l17
  %t32 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t28, { i64, [4 x i64] } %t29, i32 %t26, %"compiler/source:Span" %t27)
  store i32 %t32, ptr %l20
  br label %bb9
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 0
  store i64 1, ptr %t34
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = insertvalue { i32 } undef, i32 %t35, 0
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 1
  store { i32 } %t36, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t33
  %t40 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t38)
  store %"compiler/lower:pl" %t40, ptr %l22
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load %"compiler/lower:pl", ptr %l22
  store %"compiler/lower:pl" %t41, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2estandInAway(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"compiler/typed:LocalUses"
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/typed:Local"
  %l12 = alloca i1
  %l17 = alloca i64
  %l22 = alloca i1
  %l30 = alloca %"compiler/typed:LocalUses"
  %l32 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i1
  %l41 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l69 = alloca %"compiler/typed:Local"
  %l72 = alloca i1
  %l75 = alloca i1
  %l79 = alloca i1
  %l81 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca i32
  %l93 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i64
  %l110 = alloca i1
  %l111 = alloca i1
  %l115 = alloca i1
  %l117 = alloca i1
  %l120 = alloca i1
  %l121 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t43 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 7
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load i64, ptr %l17, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l17, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t19 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t19, ptr %lp2
  %t21 = load ptr, ptr %lp2
  store { i64, ptr } %t18, ptr %t21, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 24
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f70dab6d076329ab_c4045b4a570b11a7)
  unreachable
bb4:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb6
bb5:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Body", ptr %t27, i32 0, i32 11
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  store i1 %t32, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l22, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %lp2
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 2
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t43, ptr %v0, ptr %v0, ptr %s0, ptr %t41, ptr %t42)
  call void @llvm.memmove.p0.p0.i64(ptr %l30, ptr %t43, i64 704, i1 false)
  br label %bb10
bb10:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l30, i64 704, i1 false)
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lower:lowering", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %t48, !tbaa !29
  store ptr %t49, ptr %l32, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t50, i32 0, i32 2
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %t56, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t53, i32 %t57)
  store i32 %t60, ptr %l37
  br label %bb11
bb11:
  %t61 = load ptr, ptr %l32, !tbaa !29
  %t62 = load i32, ptr %l37, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t61, i32 %t62)
  store i1 %t63, ptr %l38
  br label %bb12
bb12:
  %t64 = load i1, ptr %l38, !tbaa !21
  store i1 %t64, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 7
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l41
  br label %bb13
bb13:
  %t70 = load i64, ptr %l41, !tbaa !24
  store i64 %t70, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = icmp sgt i64 %t71, %t72
  br i1 %t75, label %bb14, label %bb15
bb14:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb19
bb16:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = sub i64 %t81, %t82
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t85, %t86
  %t91 = sub i64 %t89, 1
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = sdiv i64 %t91, %t92
  store i64 %t95, ptr %l48, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb18
bb18:
  %t97 = load i64, ptr %l48, !tbaa !24
  store i64 %t97, ptr %l45, !tbaa !24
  br label %bb19
bb19:
  %t98 = load i64, ptr %l45, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l8, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb21, label %bb22
bb21:
  br label %bb63
bb22:
  br label %bb23
bb23:
  %t107 = load i64, ptr %l5, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t112 = mul i64 %t108, %t109
  %t115 = add i64 %t107, %t112
  store i64 %t115, ptr %l10, !tbaa !24
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Body", ptr %t117, i32 0, i32 7
  %t120 = load i64, ptr %l10, !tbaa !24
  %t123 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t119, i64 %t120)
  store %"compiler/typed:Local" %t123, ptr %l69
  br label %bb24
bb24:
  %t124 = load %"compiler/typed:Local", ptr %l69
  store %"compiler/typed:Local" %t124, ptr %l11
  %t125 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t126 = load i32, ptr %t125, !range !{i32 0, i32 7}
  %t128 = trunc i64 0 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb27
bb26:
  %t131 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t132 = load i32, ptr %t131, !range !{i32 0, i32 7}
  %t134 = trunc i64 4 to i32
  %t135 = icmp eq i32 %t132, %t134
  store i1 %t135, ptr %l72, !tbaa !21
  br label %bb27
bb27:
  %t137 = load i1, ptr %l72, !tbaa !21
  br i1 %t137, label %bb28, label %bb29
bb28:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Body", ptr %t138, i32 0, i32 14
  %t141 = load i1, ptr %t140, !tbaa !21
  %t143 = xor i1 %t141, true
  store i1 %t143, ptr %l75, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb30
bb30:
  %t145 = load i1, ptr %l75, !tbaa !21
  br i1 %t145, label %bb31, label %bb32
bb31:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/lower:lowering", ptr %t146, i32 0, i32 2
  %t149 = load ptr, ptr %t148, !tbaa !29
  store ptr %t149, ptr %l81, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/lower:lowering", ptr %t150, i32 0, i32 2
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 2
  %t155 = load i32, ptr %t154, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t153, i32 %t155)
  store i32 %t158, ptr %l85
  br label %bb33
bb32:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb35
bb33:
  %t159 = load ptr, ptr %l81, !tbaa !29
  %t160 = load i32, ptr %l85, !tbaa !23
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t159, i32 %t160)
  store i32 %t161, ptr %l86
  br label %bb34
bb34:
  %t162 = load i32, ptr %l86, !range !{i32 0, i32 33}
  %t164 = trunc i64 21 to i32
  %t165 = icmp eq i32 %t162, %t164
  %t167 = xor i1 %t165, true
  store i1 %t167, ptr %l79, !tbaa !21
  br label %bb35
bb35:
  %t169 = load i1, ptr %l79, !tbaa !21
  store i1 %t169, ptr %l12, !tbaa !21
  %t170 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 4
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 7}
  %t173 = trunc i64 1 to i32
  %t174 = icmp eq i32 %t171, %t173
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb36, label %bb37
bb36:
  %t178 = load i1, ptr %l12, !tbaa !21
  %t180 = xor i1 %t178, true
  store i1 %t180, ptr %l93, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb38
bb38:
  %t182 = load i1, ptr %l93, !tbaa !21
  br i1 %t182, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb42
bb40:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/lower:lowering", ptr %t183, i32 0, i32 2
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t187 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 2
  %t188 = load i32, ptr %t187, !tbaa !23
  %t191 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t186, i32 %t188)
  store i1 %t191, ptr %l100
  br label %bb41
bb41:
  %t192 = load i1, ptr %l100, !tbaa !21
  store i1 %t192, ptr %l96, !tbaa !21
  br label %bb42
bb42:
  %t193 = load i1, ptr %l96, !tbaa !21
  br i1 %t193, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb46
bb44:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/lower:lowering", ptr %t194, i32 0, i32 2
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 2
  %t199 = load i32, ptr %t198, !tbaa !23
  %t202 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t197, i32 %t199)
  store i1 %t202, ptr %l105
  br label %bb45
bb45:
  %t203 = load i1, ptr %l105, !tbaa !21
  store i1 %t203, ptr %l101, !tbaa !21
  br label %bb46
bb46:
  %t204 = load i1, ptr %l101, !tbaa !21
  br i1 %t204, label %bb47, label %bb48
bb47:
  br label %bb62
bb48:
  br label %bb49
bb49:
  %t205 = load i64, ptr %l10, !tbaa !24
  store i64 %t205, ptr %l106, !tbaa !24
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l10, !tbaa !24
  %t211 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %s0, ptr %t206, ptr %l3, i64 %t207)
  store i1 %t211, ptr %l110
  br label %bb50
bb50:
  %t212 = load i1, ptr %l110, !tbaa !21
  br i1 %t212, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb54
bb52:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i64, ptr %l10, !tbaa !24
  %t218 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %s0, ptr %t213, ptr %l3, i64 %t214)
  store i1 %t218, ptr %l115
  br label %bb53
bb53:
  %t219 = load i1, ptr %l115, !tbaa !21
  %t220 = xor i1 %t219, true
  store i1 %t220, ptr %l111, !tbaa !21
  br label %bb54
bb54:
  %t222 = load i1, ptr %l111, !tbaa !21
  br i1 %t222, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb61
bb56:
  %t223 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 7
  %t224 = load i64, ptr %l10, !tbaa !24
  %t227 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t223, i64 %t224)
  store i1 %t227, ptr %l120
  br label %bb57
bb57:
  %t228 = load i1, ptr %l120, !tbaa !21
  br i1 %t228, label %bb58, label %bb59
bb58:
  %t229 = load i1, ptr %l4, !tbaa !21
  store i1 %t229, ptr %l121, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb60
bb60:
  %t231 = load i1, ptr %l121, !tbaa !21
  store i1 %t231, ptr %l117, !tbaa !21
  br label %bb61
bb61:
  %t232 = load i1, ptr %l117, !tbaa !21
  %t233 = load ptr, ptr %lp2
  %t234 = load i64, ptr %l106, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i1, ptr %t236, i64 %t234
  store i1 %t232, ptr %t237, !tbaa !31
  br label %bb62
bb62:
  %t238 = load i64, ptr %l9, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l9, !tbaa !24
  br label %bb20
bb63:
  %t242 = load ptr, ptr %lp2
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t243, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2estrBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i32
  %l16 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l28 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l39 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l13
  br label %bb1
bb1:
  %t16 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t18 = trunc i64 18 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i32, ptr %l1, !tbaa !23
  store i32 %t21, ptr %l16, !tbaa !23
  br label %bb5
bb3:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l20
  br label %bb4
bb4:
  %t28 = load i32, ptr %l20, !tbaa !23
  store i32 %t28, ptr %l16, !tbaa !23
  br label %bb5
bb5:
  %t29 = load i32, ptr %l16, !tbaa !23
  store i32 %t29, ptr %l4, !tbaa !23
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t31 = load i32, ptr %l4, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l23
  br label %bb6
bb6:
  %t35 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t37 = trunc i64 18 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/lower:Lowerer", ptr %t43, i32 0, i32 14
  %t46 = load i32, ptr %l4, !tbaa !23
  %t49 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t45, i32 %t46)
  %t50 = extractvalue { i32, i64 } %t49, 1
  %t51 = extractvalue { i32, i64 } %t49, 0
  store i32 %t51, ptr %l33
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb11, label %ok.53, !prof !99
ok.53:
  store i64 %t50, ptr %l32
  br label %bb10
bb10:
  %t54 = load i64, ptr %l32, !tbaa !24
  store i64 %t54, ptr %l28, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -2, ptr %l28, !tbaa !24
  br label %bb13
bb13:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp ne i64 %t56, -2
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t60 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t60, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l1, !tbaa !23
  %t66 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emethodBody(ptr %v0, ptr %s0, ptr %s0, ptr %t62, i32 %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i64 %t66, ptr %l39
  br label %bb17
bb17:
  %t67 = load i64, ptr %l39, !tbaa !24
  store i64 %t67, ptr %l6, !tbaa !24
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr %"compiler/lower:Lowerer", ptr %t68, i32 0, i32 14
  %t71 = load i32, ptr %l4, !tbaa !23
  %t72 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t70, i32 %t71, i64 %t72)
  br label %bb18
bb18:
  %t76 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 12
  store ptr %t3, ptr %l2, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lower:lowering", ptr %t4, i32 0, i32 12
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = sub i64 %t9, 1
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eRef_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %v1, ptr %t11, i64 %t10)
  store ptr %t13, ptr %l7
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l7, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, [4 x i64] }
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t5 = alloca { i64, [4 x i64] }, align 8
  %t39 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t4 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [4 x i64] }, ptr %t5, i32 0, i32 0
  store i64 2, ptr %t6
  %t8 = insertvalue { i32, i64 } undef, i32 %t4, 0
  %t9 = insertvalue { i32, i64 } %t8, i64 16, 1
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t5, i32 0, i32 1
  store { i32, i64 } %t9, ptr %t10
  %t11 = load { i64, [4 x i64] }, ptr %t5
  %t12 = mul i64 2, 40
  %t13 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 2, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l11, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t18, i64 0
  store { i64, [4 x i64] } %a1, ptr %t19
  %t21 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t22, i64 1
  store { i64, [4 x i64] } %t11, ptr %t23
  %t24 = load %"compiler/source:Span", ptr %l3
  %t28 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t30 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t1, i32 9, i32 %t2, { i64, ptr } %t28, %"compiler/source:Span" %t24)
  store { i64, [4 x i64] } %t30, ptr %l13
  br label %bb1
bb1:
  %t31 = load { i64, [4 x i64] }, ptr %l13
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t38 = add i64 %a2, 1
  store { i64, [4 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 0
  store i64 2, ptr %t40
  %t42 = insertvalue { i32, i64 } undef, i32 %t35, 0
  %t44 = insertvalue { i32, i64 } %t42, i64 %t38, 1
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  store { i32, i64 } %t44, ptr %t45
  %t46 = load { i64, [4 x i64] }, ptr %t39
  %t47 = mul i64 2, 40
  %t48 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 2, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l22, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t53, i64 0
  store { i64, [4 x i64] } %t31, ptr %t54
  %t56 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t57, i64 1
  store { i64, [4 x i64] } %t46, ptr %t58
  %t59 = load %"compiler/source:Span", ptr %l3
  %t63 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t65 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t32, i32 13, i32 %t33, { i64, ptr } %t63, %"compiler/source:Span" %t59)
  store { i64, [4 x i64] } %t65, ptr %l24
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t66 = load { i64, [4 x i64] }, ptr %l24
  store { i64, [4 x i64] } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l22 = alloca i32
  %l23 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 52}
  store i32 %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 4
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t22 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t24 = trunc i64 20 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l19, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l20, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 0
  %t39 = load ptr, ptr %t38, !tbaa !39
  %t41 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t39)
  store i32 %t41, ptr %l22
  br label %bb11
bb10:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb13
bb11:
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = load i32, ptr %l22, !tbaa !23
  %t44 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t44, ptr %l23
  br label %bb12
bb12:
  %t45 = load i1, ptr %l23, !tbaa !21
  store i1 %t45, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l18, !tbaa !21
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t48, ptr %l25, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr ptr, ptr %t50, i64 0
  %t52 = load ptr, ptr %t51, !tbaa !39
  %t55 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v2, ptr %t47, ptr %t52)
  store ptr %t55, ptr %l27
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t56 = load ptr, ptr %l27, !tbaa !29
  store ptr %t56, ptr %rv
  br label %ret
bb17:
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d8cada644e10ccc9_6a931382540e069d)
  unreachable
bb23:
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eviewTemps(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca ptr
  %l43 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca ptr
  %l60 = alloca i32
  %l62 = alloca i1
  %l66 = alloca i1
  %l69 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca i64
  %l84 = alloca ptr
  %l86 = alloca i64
  %l90 = alloca ptr
  %l91 = alloca %"compiler/source:Span"
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 19
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l20, !tbaa !24
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb44
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  store ptr %t56, ptr %l39, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/typed:LocalUses", ptr %t57, i32 0, i32 20
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t59, i64 %t60)
  store i64 %t63, ptr %l43
  br label %bb12
bb12:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/typed:LocalUses", ptr %t64, i32 0, i32 21
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l47
  br label %bb13
bb13:
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = load i64, ptr %l43, !tbaa !24
  %t73 = load i64, ptr %l47, !tbaa !24
  %t74 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %t71, i64 %t72, i64 %t73)
  store i1 %t74, ptr %l48
  br label %bb14
bb14:
  %t75 = load i1, ptr %l48, !tbaa !21
  store i1 %t75, ptr %l8, !tbaa !21
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/typed:LocalUses", ptr %t76, i32 0, i32 19
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t78, i64 %t79)
  store ptr %t82, ptr %l52
  br label %bb15
bb15:
  %t83 = load ptr, ptr %l52, !tbaa !29
  %t84 = call ptr @compiler_2flower_2eviewCallIn(ptr %v1, ptr %v1, ptr %t83)
  store ptr %t84, ptr %l53
  br label %bb16
bb16:
  %t85 = load ptr, ptr %l53, !tbaa !29
  store ptr %t85, ptr %l9, !tbaa !29
  %t86 = load ptr, ptr %l9, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb17, label %bb18
bb17:
  br label %bb43
bb18:
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l56, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/typed:LocalUses", ptr %t91, i32 0, i32 22
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v1, ptr %t93, i64 %t94)
  store i32 %t97, ptr %l60
  br label %bb20
bb20:
  %t98 = load i32, ptr %l60, !tbaa !23
  %t99 = load ptr, ptr %l56, !tbaa !29
  %t100 = getelementptr %"compiler/lower:lowering", ptr %t99, i32 0, i32 53
  store i32 %t98, ptr %t100, !tbaa !23
  %t101 = load i1, ptr %l8, !tbaa !21
  br i1 %t101, label %bb21, label %bb22
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t105 = load ptr, ptr %l9, !tbaa !29
  %t109 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v1, ptr %t103, ptr %t104, ptr %t105)
  store i1 %t109, ptr %l66
  br label %bb23
bb22:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb24
bb23:
  %t110 = load i1, ptr %l66, !tbaa !21
  store i1 %t110, ptr %l62, !tbaa !21
  br label %bb24
bb24:
  %t111 = load i1, ptr %l62, !tbaa !21
  store i1 %t111, ptr %l10, !tbaa !21
  %t112 = load i1, ptr %l10, !tbaa !21
  br i1 %t112, label %bb25, label %bb26
bb25:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/lower:lowering", ptr %t114, i32 0, i32 0
  %t117 = load ptr, ptr %t116, !tbaa !29
  store ptr %t117, ptr %l69, !tbaa !29
  %t118 = load ptr, ptr %l69, !tbaa !29
  %t119 = getelementptr %"compiler/lower:Lowerer", ptr %t118, i32 0, i32 26
  %t120 = load i64, ptr %t119, !tbaa !24
  %t122 = add i64 %t120, 1
  %t124 = load ptr, ptr %l69, !tbaa !29
  %t125 = getelementptr %"compiler/lower:Lowerer", ptr %t124, i32 0, i32 26
  store i64 %t122, ptr %t125, !tbaa !24
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/lower:lowering", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/lower:Lowerer", ptr %t129, i32 0, i32 32
  %t132 = load i1, ptr %t131, !tbaa !21
  br i1 %t132, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/lower:lowering", ptr %t134, i32 0, i32 0
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/lower:Lowerer", ptr %t137, i32 0, i32 33
  store ptr %t139, ptr %l77, !tbaa !29
  %t140 = ptrtoint ptr %v0 to i64
  store i64 %t140, ptr %l78, !tbaa !24
  %t141 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t141, label %bb30, label %bb31
bb29:
  br label %bb42
bb30:
  %t143 = call ptr @__olang_region_make(ptr %v0)
  %t144 = ptrtoint ptr %t143 to i64
  store i64 %t144, ptr %l78, !tbaa !24
  br label %bb31
bb31:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/lower:lowering", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/lower:Lowerer", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 0
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/load:Loader", ptr %t154, i32 0, i32 4
  %t157 = load ptr, ptr %t156, !tbaa !29
  store ptr %t157, ptr %l84, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/lower:lowering", ptr %t158, i32 0, i32 7
  %t161 = load i64, ptr %t160, !tbaa !24
  store i64 %t161, ptr %l86, !tbaa !24
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr %"compiler/typed:LocalUses", ptr %t162, i32 0, i32 19
  %t165 = load i64, ptr %l7, !tbaa !24
  %t168 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %v1, ptr %t164, i64 %t165)
  store ptr %t168, ptr %l90
  br label %bb32
bb32:
  %t169 = load ptr, ptr %l90, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t169)
  store %"compiler/source:Span" %t170, ptr %l91
  br label %bb33
bb33:
  %t171 = getelementptr %"compiler/source:Span", ptr %l91, i32 0, i32 0
  %t172 = load i32, ptr %t171, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t175 = load ptr, ptr %l84, !tbaa !29
  %t176 = load i64, ptr %l86, !tbaa !24
  %t178 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s5, ptr %t175, i64 %t176, i64 %t174)
  store { i64, ptr } %t178, ptr %l94
  br label %bb34
bb34:
  %t179 = load i1, ptr %l10, !tbaa !21
  br i1 %t179, label %bb35, label %bb36
bb35:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l96, !tbaa !27
  br label %bb40
bb36:
  %t181 = load i1, ptr %l8, !tbaa !21
  br i1 %t181, label %bb37, label %bb38
bb37:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l98, !tbaa !27
  br label %bb39
bb38:
  store { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l98, !tbaa !27
  br label %bb39
bb39:
  %t183 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t183, ptr %l96, !tbaa !27
  br label %bb40
bb40:
  %t184 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t187 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t190 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = add i64 %t189, %t192
  %t194 = load i64, ptr %l78
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call ptr @__olang_scope_alloc(ptr %t195, i64 %t193)
  call void @olang_textcopy(ptr %t196, ptr %t185, i64 %t186)
  %t197 = getelementptr i8, ptr %t196, i64 %t186
  call void @olang_textcopy(ptr %t197, ptr %t187, i64 %t188)
  %t198 = getelementptr i8, ptr %t197, i64 %t188
  call void @olang_textcopy(ptr %t198, ptr %t191, i64 %t192)
  %t199 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t196, 1
  %t202 = load i64, ptr %l78
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = extractvalue { i64, ptr } %t200, 0
  %t205 = extractvalue { i64, ptr } %t200, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %t203, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l77, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t210, { i64, ptr } %t209)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t212 = load i64, ptr %l6, !tbaa !24
  %t214 = add i64 %t212, 1
  store i64 %t214, ptr %l6, !tbaa !24
  br label %bb8
bb44:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l10 = alloca %"compiler/lower:pl"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca { i64, [1 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  %t4 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t2)
  store %"compiler/lower:pl" %t4, ptr %l10
  br label %bb1
bb1:
  %t5 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t5, ptr %lp3
  %t6 = load %"compiler/lower:pl", ptr %l10
  %t7 = load ptr, ptr %lp3
  store %"compiler/lower:pl" %t6, ptr %t7
  %t8 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  store ptr %t8, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l12, !tbaa !24
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %s0, ptr %t11)
  store i64 %t13, ptr %l14
  br label %bb3
bb3:
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = load i64, ptr %l14, !tbaa !24
  %t16 = icmp slt i64 %t14, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %s0, ptr %t20, i64 %t21)
  store { i64, [1 x i64] } %t24, ptr %l19
  br label %bb7
bb7:
  %t25 = load { i64, [1 x i64] }, ptr %l19
  %t26 = load ptr, ptr %lp3
  %t27 = getelementptr %"compiler/lower:pl", ptr %t26, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ePush_3ccompiler_2fmir_3aProj_3e(ptr %v2, ptr %t27, { i64, [1 x i64] } %t25)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l5, !tbaa !24
  br label %bb2
bb10:
  %t35 = load ptr, ptr %lp3
  %t36 = getelementptr %"compiler/lower:pl", ptr %t35, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ePush_3ccompiler_2fmir_3aProj_3e(ptr %v2, ptr %t36, { i64, [1 x i64] } %a2)
  br label %bb11
bb11:
  %t40 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 3
  %t44 = load i32, ptr %t43, !tbaa !23
  %t48 = load ptr, ptr %lp3
  %t49 = getelementptr %"compiler/lower:pl", ptr %t48, i32 0, i32 2
  store i64 %t41, ptr %t49, !tbaa !24
  %t52 = load ptr, ptr %lp3
  %t53 = getelementptr %"compiler/lower:pl", ptr %t52, i32 0, i32 3
  store i32 %t44, ptr %t53, !tbaa !23
  %t54 = load ptr, ptr %lp3
  %t55 = load %"compiler/lower:pl", ptr %t54
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/lower:pl" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local ptr @compiler_2flower_2efindIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca ptr
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v2, ptr %a0, i32 %t2)
  store ptr %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l6, !tbaa !29
  store ptr %t6, ptr %l3, !tbaa !29
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l3, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call ptr @compiler_2flower_2efindBlock(ptr %v1, ptr %v2, ptr %t20, i32 %t21)
  store ptr %t24, ptr %l16
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l16, !tbaa !29
  store ptr %t25, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2flower_2etempRoot(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call ptr @compiler_2flower_2etempRoot(ptr %v0, ptr %v1, ptr %t16)
  store ptr %t18, ptr %l13
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l13, !tbaa !29
  store ptr %t19, ptr %l5, !tbaa !29
  br label %bb33
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 5
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Payload", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = call ptr @compiler_2flower_2etempRoot(ptr %v0, ptr %v1, ptr %t38)
  store ptr %t40, ptr %l22
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l22, !tbaa !29
  store ptr %t41, ptr %l5, !tbaa !29
  br label %bb33
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l23, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 8}
  %t49 = icmp eq i64 %t47, 4
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb16
bb16:
  %t50 = load i1, ptr %l24, !tbaa !21
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l3, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Elem", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = call ptr @compiler_2flower_2etempRoot(ptr %v0, ptr %v1, ptr %t60)
  store ptr %t62, ptr %l31
  br label %bb20
bb20:
  %t63 = load ptr, ptr %l31, !tbaa !29
  store ptr %t63, ptr %l5, !tbaa !29
  br label %bb33
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l32, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 8}
  %t71 = icmp eq i64 %t69, 6
  store i1 %t71, ptr %l33, !tbaa !21
  br label %bb23
bb23:
  %t72 = load i1, ptr %l33, !tbaa !21
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = call ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %t79)
  store ptr %t81, ptr %l39
  br label %bb27
bb27:
  %t82 = load ptr, ptr %l39, !tbaa !29
  store ptr %t82, ptr %l5, !tbaa !29
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_6c42791da40029d8_9bd42179a3da0e74)
  unreachable
bb33:
  %t83 = load ptr, ptr %l5, !tbaa !29
  store ptr %t83, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %v0, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:relPath"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/lower:relPath" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/lower:relPath" %t6, { i64, ptr } %a1, 1
  store %"compiler/lower:relPath" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:relPath", ptr %rv
  ret %"compiler/lower:relPath" %rr
}

define dso_local %"compiler/lower:tryCtx" @compiler_2flower_3atryCtx_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i1 %a2, i1 %a3) #0 {
entry:
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i1
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:tryCtx"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l4, !tbaa !24
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
  store i1 %a2, ptr %l6, !tbaa !21
  store i1 %a3, ptr %l7, !tbaa !21
  %t9 = ptrtoint ptr %v1 to i64
  store i64 %t9, ptr %l13, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2flower_3atryCtx_2e4
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = call ptr @__olang_region_make(ptr %v1)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l13, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l13
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l15
  br label %bb3
bb3:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2flower_3atryCtx_2e4
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l13
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb5
bb5:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = insertvalue %"compiler/lower:tryCtx" undef, i64 %t29, 0
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t32 = insertvalue %"compiler/lower:tryCtx" %t30, { i64, ptr } %t31, 1
  %t33 = load i1, ptr %l6, !tbaa !21
  %t34 = insertvalue %"compiler/lower:tryCtx" %t32, i1 %t33, 2
  %t35 = load i1, ptr %l7, !tbaa !21
  %t36 = insertvalue %"compiler/lower:tryCtx" %t34, i1 %t35, 3
  %t38 = insertvalue %"compiler/lower:tryCtx" %t36, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, 4
  store %"compiler/lower:tryCtx" %t38, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:tryCtx", ptr %rv
  ret %"compiler/lower:tryCtx" %rr
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aFn(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:Fn"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 800, i1 false)
  %t2 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 4
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 5
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 6
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 7
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 8
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 9
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 10
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 11
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 12
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  %t47 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 13
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 14
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 15
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 16
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t66 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  %t67 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 17
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t71 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 18
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 19
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 20
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI32_3e(ptr %v0, ptr %t82)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t86 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  %t87 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 21
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t91 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t91
  %t92 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 22
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb19
bb19:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t96 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 23
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI32_3e(ptr %v0, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l41
  br label %bb20
bb20:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t101 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %t101
  %t102 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 24
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l43
  br label %bb21
bb21:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t106 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %t106
  %t107 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 27
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI32_3e(ptr %v0, ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l45
  br label %bb22
bb22:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t111 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  %t112 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 28
  %t114 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t112)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l47
  br label %bb23
bb23:
  %t115 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  %t116 = getelementptr %"compiler/mir:Fn", ptr %l1, i32 0, i32 28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %t116
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"O23a " }>, align 8
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
@.d3 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"O23a dtor " }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_empty_array = external constant [16 x i64]
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare ptr @__olang_scope_of(ptr, ptr) noinline
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

define linkonce_odr %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:relPath"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/lower:relPath"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:relPath", ptr %a0
  store %"compiler/lower:relPath" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:relPath", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"compiler/lower:relPath", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/lower:relPath", ptr %l1
  store %"compiler/lower:relPath" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:relPath", ptr %rv
  ret %"compiler/lower:relPath" %rr
}

@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d7 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"holds views" }>, align 8
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"copies" }>, align 8
@.d9 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"copies (lent to a body that may change its parts)" }>, align 8
@.d10 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c": a temporary " }>, align 8
@olang_2esole_2ecompiler_2flower_3atryCtx_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 128
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 128
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 120
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 120
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 56
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 56
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI32_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/mir:BasicBlock"
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
  %t4 = mul i64 %t3, 96
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
  %t15 = getelementptr %"compiler/mir:BasicBlock", ptr %t14, i64 %t12
  %t17 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %t15)
  store %"compiler/mir:BasicBlock" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/mir:BasicBlock", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/mir:BasicBlock", ptr %t22, i64 %t20
  store %"compiler/mir:BasicBlock" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:BasicBlock"
  %l3 = alloca %"compiler/mir:StmtList"
  %rv = alloca %"compiler/mir:BasicBlock"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:BasicBlock", ptr %a0
  store %"compiler/mir:BasicBlock" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  %t5 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %t3)
  store %"compiler/mir:StmtList" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/mir:StmtList", ptr %l3
  %t7 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  store %"compiler/mir:StmtList" %t6, ptr %t7
  %t8 = load %"compiler/mir:BasicBlock", ptr %l1
  store %"compiler/mir:BasicBlock" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:BasicBlock", ptr %rv
  ret %"compiler/mir:BasicBlock" %rr
}

define linkonce_odr %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:StmtList"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/mir:StmtList"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:StmtList", ptr %a0
  store %"compiler/mir:StmtList" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 176
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 176
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/mir:StmtList", ptr %l1
  store %"compiler/mir:StmtList" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:StmtList", ptr %rv
  ret %"compiler/mir:StmtList" %rr
}

declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2elowerAs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_64c38670143ed62f_66b5484a55823b73 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eDump(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2estandIn(ptr %out, ptr %v0, i32 %a0)
declare void @compiler_2flower_3alowering_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiedBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_66e2991888adf299_d5a5a9b8966d006d = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoPlace = available_externally constant <{ [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 32
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6409d1aa34b20bea_1e68de4bb2ab27de = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, %"compiler/lower:level" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_f03a362eaee136d1_c4ccf5bb34eed07d = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterPassed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopied(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b57cc0c231802eb3_c3a9863fe509851f = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erunDefers(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinFailed(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/source:Span" %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %a0, i1 %a1, %"compiler/source:Span" %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %a0)
@olang_loc_8dbdd81ef51b3d23_89b419ac5748f287 = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyHome(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2ecapScopes(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederefCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esplitCopy(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
@olang_loc_c00faf6434efe24b_96f261c8870620df = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2ereceiverBody(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1)
@olang_loc_78f22070622bc2eb_7d003488e0f12b37 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_9b41083df5bebd36_84b9708a7a0a381a = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
@olang_loc_1485ab32c32cac8e_13b5b7bca0ba868a = external constant [0 x i8]
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eplanOf(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_92286f847bc5fd90_acf452c1cbbc8964 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDerivedArgAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederivedRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietAll(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjectOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H1e3bc46345ebb5614acbe688055fe55f(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eguarded(ptr %v0, ptr %a0, i32 %a1, i64 %a2, { i64, [15 x i64] } %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Hfd0fb4fa500a8eead78ad1b6f9922652(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_b05049138e3c9583_5b10da44a83c4f97 = external constant [0 x i8]
@olang_loc_7978ceed25dd57db_b68e0a2baf6deaf = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePlaceOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLocalPlaceOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2ffree_2eNotSole = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsHandle(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6cf042e1e67efefa_11456615317dde16 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:relPath" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2eleafPaths(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAny(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, i1 %a4, %"compiler/source:Span" %a5)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisText(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ehasStr(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderMaybeText(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisChar(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@olang_loc_f70dab6d076329ab_c4045b4a570b11a7 = external constant [0 x i8]
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eRef_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_d8cada644e10ccc9_6a931382540e069d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ePush_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_6c42791da40029d8_9bd42179a3da0e74 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)

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
