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
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i1 @compiler_2flower_2eclausedTry(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 14
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
  %t18 = getelementptr %"compiler/typed:Try", ptr %t16, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp sgt i64 %t21, 0
  store i1 %t23, ptr %l2, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_fb323a156c70c4fe_3d15b87c8f91a072)
  unreachable
bb11:
  %t25 = load i1, ptr %l2, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eVerified(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
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
  %t5 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLower(ptr %v0, ptr %v0, ptr %t1, i64 %a1)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l18, !tbaa !27
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

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eallFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/typed:LocalUses"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l9 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i1
  %l24 = alloca %"compiler/typed:LocalUses"
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca ptr
  %l38 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t36 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v0, ptr %t8)
  store ptr %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v0, ptr %t11)
  store ptr %t13, ptr %l13
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t18, i32 %t17)
  store i32 %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t22 = load i32, ptr %l16, !tbaa !23
  %t23 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t27 = load i1, ptr %l9, !tbaa !21
  br i1 %t27, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:Lowerer", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t36, ptr %v0, ptr %v1, ptr %s0, ptr %t34, ptr %t35)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t36, i64 704, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l24, i64 704, i1 false)
  %t39 = getelementptr %"compiler/typed:LocalUses", ptr %l2, i32 0, i32 18
  store ptr %t39, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  %t41 = load i64, ptr %l4, !tbaa !24
  store i64 %t41, ptr %l26, !tbaa !24
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %t42)
  store i64 %t44, ptr %l28
  br label %bb13
bb13:
  %t45 = load i64, ptr %l26, !tbaa !24
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb14, label %bb15
bb14:
  br label %bb23
bb15:
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l33
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l33, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t64 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t57, ptr %t58, ptr %l2, ptr %t56)
  store i1 %t64, ptr %l38
  br label %bb18
bb18:
  %t65 = load i1, ptr %l38, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t69 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l4, !tbaa !24
  br label %bb12
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2echar(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 20
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp slt i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d1, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/lower:Lowerer", ptr %t16, i32 0, i32 20
  store i32 %t15, ptr %t17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 20
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2egenValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i64
  %l40 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l10
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store ptr %l2, ptr %l11, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/lower:Lowerer", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 5
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %t8, i64 %t9)
  store i1 %t12, ptr %l16
  br label %bb2
bb2:
  %t13 = load i1, ptr %l16, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l17, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l17, !tbaa !27
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t14, { i64, ptr } %t15)
  br label %bb6
bb6:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %t16)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %t16)
  %t24 = getelementptr i8, ptr %t22, i64 %t18
  call void @olang_textcopy(ptr %t24, ptr %t19, i64 %t20)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t22, 1
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l20
  br label %bb7
bb7:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l4
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:Lowerer", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 7
  %t37 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v0, ptr %t35)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t37, ptr %l24
  br label %bb8
bb8:
  %t38 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l24
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t38, ptr %l5
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %s3, ptr %l5)
  %t41 = extractvalue { i32, { i64, ptr } } %t40, 1
  %t42 = extractvalue { i32, { i64, ptr } } %t40, 0
  store i32 %t42, ptr %l28
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb11, label %ok.44, !prof !99
ok.44:
  store { i64, ptr } %t41, ptr %l27
  br label %bb10
bb10:
  %t45 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  store i64 %t46, ptr %l31, !tbaa !24
  %t47 = load i64, ptr %l31, !tbaa !24
  %t48 = mul i64 %t47, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l32, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l31, !tbaa !24
  %t57 = mul i64 %t56, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t53, ptr %t55, i64 %t57, i1 false)
  %t58 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t58, ptr %l25, !tbaa !27
  br label %bb13
bb11:
  %t59 = load i32, ptr %l28, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  store i1 %t62, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb13:
  %t63 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t63, ptr %l6, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s0, { i64, ptr } %t64, { i64, ptr } %t65)
  store i1 %t68, ptr %l35
  br label %bb14
bb14:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  store ptr %l4, ptr %l36, !tbaa !29
  %t70 = ptrtoint ptr %s0 to i64
  store i64 %t70, ptr %l37, !tbaa !24
  %t71 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t71, label %bb17, label %bb18
bb16:
  br label %bb26
bb17:
  %t73 = call ptr @__olang_region_make(ptr %s0)
  %t74 = ptrtoint ptr %t73 to i64
  store i64 %t74, ptr %l37, !tbaa !24
  br label %bb18
bb18:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l40, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  store i64 %t80, ptr %l42, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l43, !tbaa !24
  %t83 = load i64, ptr %l40, !tbaa !24
  %t84 = icmp sge i64 %t83, 0
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t86 = load i64, ptr %l40, !tbaa !24
  %t87 = load i64, ptr %l42, !tbaa !24
  %t88 = icmp sle i64 %t86, %t87
  br i1 %t88, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_c32f9218f06293f2_15f5ca50bc3801e)
  unreachable
bb21:
  %t90 = load i64, ptr %l42, !tbaa !24
  %t91 = load i64, ptr %l43, !tbaa !24
  %t92 = icmp sle i64 %t90, %t91
  br i1 %t92, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_c32f9218f06293f2_15f5ca50bc3801e)
  unreachable
bb23:
  %t94 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = load i64, ptr %l40, !tbaa !24
  %t97 = load i64, ptr %l42, !tbaa !24
  %t98 = getelementptr i8, ptr %t95, i64 %t96
  %t99 = sub i64 %t97, %t96
  %t100 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t98, 1
  %t103 = extractvalue { i64, ptr } %t101, 1
  %t104 = extractvalue { i64, ptr } %t101, 0
  %t105 = load i64, ptr %l37
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = call ptr @__olang_scope_alloc(ptr %t106, i64 %t104)
  call void @olang_textcopy(ptr %t107, ptr %t103, i64 %t104)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t111 = load i64, ptr %l37
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = extractvalue { i64, ptr } %t109, 0
  %t114 = extractvalue { i64, ptr } %t109, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %t112, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t119 = load ptr, ptr %l36, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t119, { i64, ptr } %t118)
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_c32f9218f06293f2_15f5ca50bc3801e)
  unreachable
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  br label %bb9
bb28:
  %t121 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_6, 0
  %t122 = insertvalue { ptr, ptr } %t121, ptr null, 1
  %t125 = extractvalue { ptr, ptr } %t122, 0
  %t126 = extractvalue { ptr, ptr } %t122, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l4, ptr %t125, ptr %t126)
  br label %bb29
bb29:
  store ptr %l4, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t128 = load i64, ptr %l8, !tbaa !24
  store i64 %t128, ptr %l53, !tbaa !24
  %t129 = load ptr, ptr %l7, !tbaa !29
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t129)
  store i64 %t131, ptr %l55
  br label %bb31
bb31:
  %t132 = load i64, ptr %l53, !tbaa !24
  %t133 = load i64, ptr %l55, !tbaa !24
  %t134 = icmp slt i64 %t132, %t133
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s7)
  br label %bb38
bb33:
  br label %bb34
bb34:
  %t138 = load ptr, ptr %l7, !tbaa !29
  %t139 = load i64, ptr %l8, !tbaa !24
  %t142 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t138, i64 %t139)
  store { i64, ptr } %t142, ptr %l60
  br label %bb35
bb35:
  %t143 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t145 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t148 = extractvalue { i64, ptr } %t143, 1
  %t149 = extractvalue { i64, ptr } %t143, 0
  %t150 = add i64 %t146, %t149
  %t151 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t150)
  call void @olang_textcopy(ptr %t151, ptr %t145, i64 %t146)
  %t152 = getelementptr i8, ptr %t151, i64 %t146
  call void @olang_textcopy(ptr %t152, ptr %t148, i64 %t149)
  %t153 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t151, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = extractvalue { i64, ptr } %t154, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l2, { i64, ptr } %t161)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb37:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb30
bb38:
  %t169 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t169, ptr %l68
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t170 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t170, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, [4 x i64] }
  %l21 = alloca i1
  %l28 = alloca { i64, [4 x i64] }
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l33 = alloca %"compiler/mir:Lvalue"
  %l40 = alloca i64
  %l42 = alloca i1
  %l44 = alloca ptr
  %l46 = alloca i32
  %l68 = alloca { i64, ptr }
  %l79 = alloca i1
  %l86 = alloca { i64, [4 x i64] }
  %l87 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l91 = alloca %"compiler/mir:Lvalue"
  %l96 = alloca ptr
  %l116 = alloca { i64, ptr }
  %l127 = alloca i1
  %l134 = alloca { i64, [4 x i64] }
  %l135 = alloca ptr
  %l137 = alloca %"compiler/source:Span"
  %l139 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t42 = alloca { i64, [15 x i64] }, align 8
  %t48 = alloca { i64, [21 x i64] }, align 8
  %t175 = alloca { i64, [15 x i64] }, align 8
  %t181 = alloca { i64, [21 x i64] }, align 8
  %t288 = alloca { i64, [15 x i64] }, align 8
  %t294 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Arm", ptr %t8, i32 0, i32 4
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb2:
  br label %bb12
bb3:
  %t17 = load i32, ptr %l2, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t21 = icmp ne i32 %t17, %t18
  store i1 %t21, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l21, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Arm", ptr %t25, i32 0, i32 4
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t31 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t24, ptr %t28)
  store { i64, [4 x i64] } %t31, ptr %l28
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t32 = load { i64, [4 x i64] }, ptr %l28
  store { i64, [4 x i64] } %t32, ptr %l3
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l29, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Arm", ptr %t34, i32 0, i32 0
  %t37 = load %"compiler/source:Span", ptr %t36
  store %"compiler/source:Span" %t37, ptr %l31
  %t38 = load i32, ptr %l2, !tbaa !23
  %t40 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t38)
  store %"compiler/mir:Lvalue" %t40, ptr %l33
  br label %bb9
bb9:
  %t41 = load { i64, [4 x i64] }, ptr %l3
  store { i64, [15 x i64] } zeroinitializer, ptr %t42
  %t43 = getelementptr { i64, [15 x i64] }, ptr %t42, i32 0, i32 0
  store i64 0, ptr %t43
  %t45 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t41, 0
  %t46 = getelementptr { i64, [15 x i64] }, ptr %t42, i32 0, i32 1
  store { { i64, [4 x i64] } } %t45, ptr %t46
  %t47 = load { i64, [15 x i64] }, ptr %t42
  store { i64, [21 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [21 x i64] }, ptr %t48, i32 0, i32 0
  store i64 0, ptr %t49
  %t50 = load %"compiler/source:Span", ptr %l31
  %t51 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t50, 0
  %t52 = load %"compiler/mir:Lvalue", ptr %l33
  %t53 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t51, %"compiler/mir:Lvalue" %t52, 1
  %t55 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t53, { i64, [15 x i64] } %t47, 2
  %t56 = getelementptr { i64, [21 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t55, ptr %t56
  %t57 = load { i64, [21 x i64] }, ptr %t48
  %t59 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t57, ptr %t59
  %t60 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t60, ptr %t59)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 12
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l40
  br label %bb13
bb13:
  %t67 = load i64, ptr %l40, !tbaa !24
  %t68 = icmp sgt i64 %t67, 0
  br i1 %t68, label %bb14, label %bb15
bb14:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t70)
  store ptr %t72, ptr %l44
  br label %bb16
bb15:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb20
bb16:
  %t73 = load ptr, ptr %l44, !tbaa !29
  %t75 = getelementptr %"compiler/lower:level", ptr %t73, i32 0, i32 1
  %t76 = load i32, ptr %t75, !tbaa !23
  store i32 %t76, ptr %l46, !tbaa !23
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Arm", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  br i1 %t82, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_2262f7260befbeda_ad33d1a86099f68e)
  unreachable
bb18:
  br label %bb19
bb19:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Arm", ptr %t84, i32 0, i32 3
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Block", ptr %t87, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  %t92 = load i32, ptr %l46, !tbaa !23
  %t94 = icmp eq i32 %t92, %t91
  store i1 %t94, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l42, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Arm", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb23, label %bb24
bb22:
  br label %bb42
bb23:
  call void @__olang_check_failed(ptr @olang_loc_78466967dd42e061_bdc585e3e8213235)
  unreachable
bb24:
  br label %bb25
bb25:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Arm", ptr %t104, i32 0, i32 3
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Block", ptr %t107, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  store i64 %t115, ptr %l6, !tbaa !24
  br label %bb26
bb26:
  %t117 = load i64, ptr %l5, !tbaa !24
  %t118 = load i64, ptr %l6, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t125 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t125, ptr %l68, !tbaa !27
  %t126 = load i64, ptr %l5, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr ptr, ptr %t129, i64 %t126
  %t131 = load ptr, ptr %t130, !tbaa !39
  %t133 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t133, ptr %t131)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t137 = load i64, ptr %l5, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l5, !tbaa !24
  br label %bb26
bb32:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Arm", ptr %t141, i32 0, i32 4
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb33, label %bb34
bb33:
  %t150 = load i32, ptr %l2, !tbaa !23
  %t151 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t154 = icmp ne i32 %t150, %t151
  store i1 %t154, ptr %l79, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb35
bb35:
  %t156 = load i1, ptr %l79, !tbaa !21
  br i1 %t156, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Arm", ptr %t158, i32 0, i32 4
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t164 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t157, ptr %t161)
  store { i64, [4 x i64] } %t164, ptr %l86
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t165 = load { i64, [4 x i64] }, ptr %l86
  store { i64, [4 x i64] } %t165, ptr %l8
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l87, !tbaa !29
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr %"compiler/typed:Arm", ptr %t167, i32 0, i32 0
  %t170 = load %"compiler/source:Span", ptr %t169
  store %"compiler/source:Span" %t170, ptr %l89
  %t171 = load i32, ptr %l2, !tbaa !23
  %t173 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t171)
  store %"compiler/mir:Lvalue" %t173, ptr %l91
  br label %bb39
bb39:
  %t174 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [15 x i64] } zeroinitializer, ptr %t175
  %t176 = getelementptr { i64, [15 x i64] }, ptr %t175, i32 0, i32 0
  store i64 0, ptr %t176
  %t178 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t174, 0
  %t179 = getelementptr { i64, [15 x i64] }, ptr %t175, i32 0, i32 1
  store { { i64, [4 x i64] } } %t178, ptr %t179
  %t180 = load { i64, [15 x i64] }, ptr %t175
  store { i64, [21 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [21 x i64] }, ptr %t181, i32 0, i32 0
  store i64 0, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l89
  %t184 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t183, 0
  %t185 = load %"compiler/mir:Lvalue", ptr %l91
  %t186 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t184, %"compiler/mir:Lvalue" %t185, 1
  %t188 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t186, { i64, [15 x i64] } %t180, 2
  %t189 = getelementptr { i64, [21 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t188, ptr %t189
  %t190 = load { i64, [21 x i64] }, ptr %t181
  %t192 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t190, ptr %t192
  %t193 = load ptr, ptr %l87, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t193, ptr %t192)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s7)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb42:
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l96, !tbaa !29
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Arm", ptr %t196, i32 0, i32 3
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t201 = icmp eq ptr %t199, null
  br i1 %t201, label %bb43, label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_6143a96035d3ceac_ef612191f7538720)
  unreachable
bb44:
  br label %bb45
bb45:
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Arm", ptr %t203, i32 0, i32 3
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t207 = load ptr, ptr %l96, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %t207, ptr %t206, i32 1, i32 0)
  br label %bb46
bb46:
  %t210 = load ptr, ptr %l1, !tbaa !29
  %t212 = getelementptr %"compiler/typed:Arm", ptr %t210, i32 0, i32 3
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = icmp eq ptr %t213, null
  br i1 %t215, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_9919e1798def049b_eb223155b689b93f)
  unreachable
bb48:
  br label %bb49
bb49:
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr %"compiler/typed:Arm", ptr %t217, i32 0, i32 3
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Block", ptr %t220, i32 0, i32 1
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  store { i64, ptr } %t224, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  store i64 %t228, ptr %l11, !tbaa !24
  br label %bb50
bb50:
  %t230 = load i64, ptr %l10, !tbaa !24
  %t231 = load i64, ptr %l11, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb51, label %bb52
bb51:
  br label %bb56
bb52:
  br label %bb53
bb53:
  %t238 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t238, ptr %l116, !tbaa !27
  %t239 = load i64, ptr %l10, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr ptr, ptr %t242, i64 %t239
  %t244 = load ptr, ptr %t243, !tbaa !39
  %t246 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t246, ptr %t244)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t250 = load i64, ptr %l10, !tbaa !24
  %t252 = add i64 %t250, 1
  store i64 %t252, ptr %l10, !tbaa !24
  br label %bb50
bb56:
  %t254 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Arm", ptr %t254, i32 0, i32 4
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = icmp eq ptr %t257, null
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb57, label %bb58
bb57:
  %t263 = load i32, ptr %l2, !tbaa !23
  %t264 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t267 = icmp ne i32 %t263, %t264
  store i1 %t267, ptr %l127, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb59
bb59:
  %t269 = load i1, ptr %l127, !tbaa !21
  br i1 %t269, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l1, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Arm", ptr %t271, i32 0, i32 4
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t277 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t270, ptr %t274)
  store { i64, [4 x i64] } %t277, ptr %l134
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t278 = load { i64, [4 x i64] }, ptr %l134
  store { i64, [4 x i64] } %t278, ptr %l13
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l135, !tbaa !29
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t282 = getelementptr %"compiler/typed:Arm", ptr %t280, i32 0, i32 0
  %t283 = load %"compiler/source:Span", ptr %t282
  store %"compiler/source:Span" %t283, ptr %l137
  %t284 = load i32, ptr %l2, !tbaa !23
  %t286 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t284)
  store %"compiler/mir:Lvalue" %t286, ptr %l139
  br label %bb63
bb63:
  %t287 = load { i64, [4 x i64] }, ptr %l13
  store { i64, [15 x i64] } zeroinitializer, ptr %t288
  %t289 = getelementptr { i64, [15 x i64] }, ptr %t288, i32 0, i32 0
  store i64 0, ptr %t289
  %t291 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t287, 0
  %t292 = getelementptr { i64, [15 x i64] }, ptr %t288, i32 0, i32 1
  store { { i64, [4 x i64] } } %t291, ptr %t292
  %t293 = load { i64, [15 x i64] }, ptr %t288
  store { i64, [21 x i64] } zeroinitializer, ptr %t294
  %t295 = getelementptr { i64, [21 x i64] }, ptr %t294, i32 0, i32 0
  store i64 0, ptr %t295
  %t296 = load %"compiler/source:Span", ptr %l137
  %t297 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t296, 0
  %t298 = load %"compiler/mir:Lvalue", ptr %l139
  %t299 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t297, %"compiler/mir:Lvalue" %t298, 1
  %t301 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t299, { i64, [15 x i64] } %t293, 2
  %t302 = getelementptr { i64, [21 x i64] }, ptr %t294, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t301, ptr %t302
  %t303 = load { i64, [21 x i64] }, ptr %t294
  %t305 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 176, i64 8)
  store { i64, [21 x i64] } %t303, ptr %t305
  %t306 = load ptr, ptr %l135, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s11, ptr %t306, ptr %t305)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s11)
  br label %bb65
bb65:
  %t308 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %t308)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ebind(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i1
  %l12 = alloca i1
  %l19 = alloca i1
  %l21 = alloca { i64, ptr }
  %l34 = alloca %"compiler/mir:Local"
  %l45 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca { i64, [4 x i64] }
  %l54 = alloca %"compiler/typed:Local"
  %l55 = alloca i32
  %l58 = alloca { i64, [1 x i64] }
  %l60 = alloca { i64, [4 x i64] }
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t74 = alloca { i64, [21 x i64] }, align 8
  %t126 = alloca { i64, [15 x i64] }, align 8
  %t132 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  store i32 %t1, ptr %l4, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 24
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l1, !tbaa !23
  %t12 = sext i32 %t10 to i64
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 30
  %t16 = getelementptr %"compiler/typed:Plan", ptr %t15, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = icmp slt i64 %t12, %t19
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 30
  %t28 = getelementptr %"compiler/typed:Plan", ptr %t27, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l21, !tbaa !27
  %t30 = load i32, ptr %l1, !tbaa !23
  %t32 = sext i32 %t30 to i64
  %t34 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i64 %t32
  %t37 = load { i64, [2 x i64] }, ptr %t36
  %t39 = extractvalue { i64, [2 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 5
  %t42 = xor i1 %t40, true
  store i1 %t42, ptr %l19, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t44 = load i1, ptr %l19, !tbaa !21
  store i1 %t44, ptr %l5, !tbaa !21
  %t45 = load i1, ptr %l5, !tbaa !21
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ehomeKept(ptr %v0, ptr %t47, i32 %t48)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lower:lowering", ptr %t51, i32 0, i32 3
  %t54 = getelementptr %"compiler/mir:Fn", ptr %t53, i32 0, i32 7
  %t55 = load i32, ptr %l1, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t60 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t54, i64 %t57)
  store %"compiler/mir:Local" %t60, ptr %l34
  br label %bb11
bb11:
  %t61 = getelementptr %"compiler/mir:Local", ptr %l34, i32 0, i32 4
  %t62 = load { i64, [1 x i64] }, ptr %t61
  %t64 = extractvalue { i64, [1 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 3
  %t67 = xor i1 %t65, true
  store i1 %t67, ptr %l6, !tbaa !21
  %t69 = load i1, ptr %l6, !tbaa !21
  br i1 %t69, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l3
  %t73 = load i32, ptr %l4, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [21 x i64] }, ptr %t74, i32 0, i32 0
  store i64 1, ptr %t75
  %t77 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t72, 0
  %t79 = insertvalue { %"compiler/source:Span", i32 } %t77, i32 %t73, 1
  %t80 = getelementptr { i64, [21 x i64] }, ptr %t74, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t79, ptr %t80
  %t81 = load { i64, [21 x i64] }, ptr %t74
  %t83 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t81, ptr %t83
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t71, ptr %t83)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t86 = load i1, ptr %l5, !tbaa !21
  br i1 %t86, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb18
bb17:
  %t88 = load i1, ptr %l6, !tbaa !21
  store i1 %t88, ptr %l45, !tbaa !21
  br label %bb18
bb18:
  %t90 = load i1, ptr %l45, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l47, !tbaa !29
  %t92 = load { i64, [4 x i64] }, ptr %l2
  store { i64, [4 x i64] } %t92, ptr %l48
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Body", ptr %t96, i32 0, i32 7
  %t99 = load i32, ptr %l1, !tbaa !23
  %t101 = sext i32 %t99 to i64
  %t104 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t98, i64 %t101)
  store %"compiler/typed:Local" %t104, ptr %l54
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t105 = getelementptr %"compiler/typed:Local", ptr %l54, i32 0, i32 2
  %t106 = load i32, ptr %t105, !tbaa !23
  store i32 %t106, ptr %l55, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %t107, i32 %t108)
  store { i64, [1 x i64] } %t111, ptr %l58
  br label %bb22
bb22:
  %t112 = load %"compiler/source:Span", ptr %l3
  %t113 = load ptr, ptr %l47, !tbaa !29
  %t114 = load { i64, [4 x i64] }, ptr %l48
  %t115 = load i32, ptr %l55, !tbaa !23
  %t116 = load { i64, [1 x i64] }, ptr %l58
  %t118 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t113, { i64, [4 x i64] } %t114, i32 %t115, { i64, [1 x i64] } %t116, %"compiler/source:Span" %t112, i1 false)
  store { i64, [4 x i64] } %t118, ptr %l60
  br label %bb23
bb23:
  %t119 = load { i64, [4 x i64] }, ptr %l60
  store { i64, [4 x i64] } %t119, ptr %l2
  br label %bb24
bb24:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l61, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t121, ptr %l62
  %t122 = load i32, ptr %l4, !tbaa !23
  %t124 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t122)
  store %"compiler/mir:Lvalue" %t124, ptr %l64
  br label %bb25
bb25:
  %t125 = load { i64, [4 x i64] }, ptr %l2
  store { i64, [15 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [15 x i64] }, ptr %t126, i32 0, i32 0
  store i64 0, ptr %t127
  %t129 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t125, 0
  %t130 = getelementptr { i64, [15 x i64] }, ptr %t126, i32 0, i32 1
  store { { i64, [4 x i64] } } %t129, ptr %t130
  %t131 = load { i64, [15 x i64] }, ptr %t126
  store { i64, [21 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [21 x i64] }, ptr %t132, i32 0, i32 0
  store i64 0, ptr %t133
  %t134 = load %"compiler/source:Span", ptr %l62
  %t135 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t134, 0
  %t136 = load %"compiler/mir:Lvalue", ptr %l64
  %t137 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t135, %"compiler/mir:Lvalue" %t136, 1
  %t139 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t137, { i64, [15 x i64] } %t131, 2
  %t140 = getelementptr { i64, [21 x i64] }, ptr %t132, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t139, ptr %t140
  %t141 = load { i64, [21 x i64] }, ptr %t132
  %t143 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t141, ptr %t143
  %t144 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t144, ptr %t143)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ebounds(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, { i64, [4 x i64] } %a2, i1 %a3, i32 %a4, i32 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, [4 x i64] }
  %l14 = alloca { i64, [4 x i64] }
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, [4 x i64] }
  %l24 = alloca ptr
  %l26 = alloca i32
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store i32 %a4, ptr %l4
  store i32 %a5, ptr %l5
  store %"compiler/source:Span" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i32 18, ptr %l10
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t2, ptr %l11, !tbaa !23
  %t3 = load { i64, [4 x i64] }, ptr %l1
  store { i64, [4 x i64] } %t3, ptr %l12
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t4, i64 0)
  store { i64, [4 x i64] } %t6, ptr %l14
  br label %bb1
bb1:
  %t7 = mul i64 2, 40
  %t8 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 2, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l15, !tbaa !27
  %t11 = load { i64, [4 x i64] }, ptr %l12
  %t12 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t13, i64 0
  store { i64, [4 x i64] } %t11, ptr %t14
  %t15 = load { i64, [4 x i64] }, ptr %l14
  %t16 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t17, i64 1
  store { i64, [4 x i64] } %t15, ptr %t18
  %t19 = load %"compiler/source:Span", ptr %l6
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i32, ptr %l10, !range !{i32 0, i32 52}
  %t22 = load i32, ptr %l11, !tbaa !23
  %t23 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t25 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t20, i32 %t21, i32 %t22, { i64, ptr } %t23, %"compiler/source:Span" %t19)
  store { i64, [4 x i64] } %t25, ptr %l17
  br label %bb2
bb2:
  %t26 = load { i64, [4 x i64] }, ptr %l17
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t30 = load i32, ptr %l5, !range !{i32 0, i32 16}
  %t31 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t32 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t27, { i64, [4 x i64] } %t26, i32 %t29, i32 %t30, i64 %t31, %"compiler/source:Span" %t32)
  br label %bb3
bb3:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l24, !tbaa !29
  br i1 %a3, label %bb4, label %bb5
bb4:
  store i32 16, ptr %l26
  br label %bb6
bb5:
  store i32 15, ptr %l26
  br label %bb6
bb6:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t45 = load { i64, [4 x i64] }, ptr %l1
  %t47 = mul i64 2, 40
  %t48 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 2, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t53, i64 0
  store { i64, [4 x i64] } %t45, ptr %t54
  %t56 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t57, i64 1
  store { i64, [4 x i64] } %a2, ptr %t58
  %t59 = load %"compiler/source:Span", ptr %l6
  %t60 = load ptr, ptr %l24, !tbaa !29
  %t61 = load i32, ptr %l26, !range !{i32 0, i32 52}
  %t63 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t65 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t60, i32 %t61, i32 %t44, { i64, ptr } %t63, %"compiler/source:Span" %t59)
  store { i64, [4 x i64] } %t65, ptr %l34
  br label %bb7
bb7:
  %t66 = load { i64, [4 x i64] }, ptr %l34
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t70 = load i32, ptr %l5, !range !{i32 0, i32 16}
  %t71 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t72 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t67, { i64, [4 x i64] } %t66, i32 %t69, i32 %t70, i64 %t71, %"compiler/source:Span" %t72)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eclausesTake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/typed:Item"
  %l22 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Spawn", ptr %a1, i32 0, i32 2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  br label %bb24
bb3:
  br label %bb4
bb4:
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t23, ptr %l22, !tbaa !27
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l7, !tbaa !29
  %t31 = load ptr, ptr %l7, !tbaa !29
  %t33 = getelementptr %"compiler/typed:TaskClause", ptr %t31, i32 0, i32 2
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l7, !tbaa !29
  %t39 = getelementptr %"compiler/typed:TaskClause", ptr %t37, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l10, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t54 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t54, ptr %l36, !tbaa !27
  %t55 = load i64, ptr %l9, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"compiler/typed:Item", ptr %t58, i64 %t55
  %t60 = load %"compiler/typed:Item", ptr %t59
  store %"compiler/typed:Item" %t60, ptr %l11
  %t62 = getelementptr %"compiler/typed:Item", ptr %l11, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  %t65 = icmp slt i64 %t63, 0
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load ptr, ptr %l3, !tbaa !29
  store ptr %t67, ptr %l42, !tbaa !29
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Item", ptr %l11, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t68, i32 %t70)
  store i32 %t73, ptr %l45
  br label %bb14
bb13:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb17
bb14:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t74, i32 %a2)
  store i32 %t78, ptr %l48
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l42, !tbaa !29
  %t80 = load i32, ptr %l45, !tbaa !23
  %t81 = load i32, ptr %l48, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t79, i32 %t80, i32 %t81)
  store i1 %t82, ptr %l49
  br label %bb16
bb16:
  %t83 = load i1, ptr %l49, !tbaa !21
  store i1 %t83, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l9, !tbaa !24
  br label %bb8
bb22:
  br label %bb23
bb23:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l5, !tbaa !24
  br label %bb1
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edeclaredCopy(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { { i64, [7 x i64] }, i32 }
  %l8 = alloca { i64, [7 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca %"compiler/lower:pl"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, [4 x i64] }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l39 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca %"compiler/lower:pl"
  %l49 = alloca %"compiler/lower:pl"
  %l50 = alloca %"compiler/mir:Lvalue"
  %l54 = alloca { i64, [4 x i64] }
  %l59 = alloca { { i64, [7 x i64] }, i32 }
  %l65 = alloca i32
  %l68 = alloca { i64, ptr }
  %l73 = alloca %"compiler/lower:pl"
  %l75 = alloca %"compiler/lower:pl"
  %l83 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l87 = alloca %"compiler/lower:pl"
  %l89 = alloca %"compiler/lower:pl"
  %l92 = alloca %"compiler/lower:pl"
  %l98 = alloca i32
  %l99 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca ptr
  %l102 = alloca %"compiler/lower:pl"
  %l104 = alloca %"compiler/lower:pl"
  %l105 = alloca %"compiler/mir:Lvalue"
  %l109 = alloca { i64, [4 x i64] }
  %l116 = alloca { i64, ptr }
  %l118 = alloca { i64, [4 x i64] }
  %l121 = alloca i32
  %l124 = alloca i32
  %l127 = alloca i32
  %l135 = alloca ptr
  %l136 = alloca %"compiler/source:Span"
  %l138 = alloca %"compiler/mir:Lvalue"
  %l139 = alloca ptr
  %l140 = alloca %"compiler/lower:pl"
  %l142 = alloca %"compiler/lower:pl"
  %l143 = alloca %"compiler/mir:Lvalue"
  %l152 = alloca ptr
  %l155 = alloca i32
  %l156 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l159 = alloca ptr
  %l160 = alloca i32
  %l161 = alloca ptr
  %l162 = alloca %"compiler/lower:pl"
  %l164 = alloca %"compiler/lower:pl"
  %l165 = alloca %"compiler/mir:Lvalue"
  %l169 = alloca { i64, [4 x i64] }
  %l172 = alloca { i64, ptr }
  %l174 = alloca i64
  %l183 = alloca i64
  %l186 = alloca i64
  %l204 = alloca i64
  %l209 = alloca { i64, [1 x i64] }
  %l216 = alloca i32
  %l218 = alloca ptr
  %l219 = alloca { i64, [7 x i64] }
  %l223 = alloca { i64, ptr }
  %l224 = alloca %"compiler/mir:Range"
  %l228 = alloca %"compiler/mir:Range"
  %l230 = alloca %"compiler/mir:Lvalue"
  %l234 = alloca %"compiler/mir:Call"
  %l235 = alloca i32
  %l250 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t29 = alloca { i64, [4 x i64] }, align 8
  %t35 = alloca { i64, [15 x i64] }, align 8
  %t116 = alloca { i64, [1 x i64] }, align 8
  %t148 = alloca { i64, [4 x i64] }, align 8
  %t154 = alloca { i64, [15 x i64] }, align 8
  %t171 = alloca { i64, [4 x i64] }, align 8
  %t220 = alloca { i64, [8 x i64] }, align 8
  %t248 = alloca { i64, [4 x i64] }, align 8
  %t254 = alloca { i64, [15 x i64] }, align 8
  %t260 = alloca { i64, [21 x i64] }, align 8
  %t307 = alloca { i64, [15 x i64] }, align 8
  %t407 = alloca { i64, [1 x i64] }, align 8
  %t473 = alloca { i64, [8 x i64] }, align 8
  %t504 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyBody(ptr %v0, ptr %t6, i32 %t7)
  store i64 %t10, ptr %l39
  br label %bb1
bb1:
  %t11 = load i64, ptr %l39, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp slt i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t16, %"compiler/source:Span" %t17, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l44, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  store i32 %t21, ptr %l45, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l46, !tbaa !29
  %t23 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t23, ptr %l47
  %t25 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l47)
  store %"compiler/lower:pl" %t25, ptr %l49
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l46, !tbaa !29
  %t27 = load %"compiler/lower:pl", ptr %l49
  %t28 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t26, %"compiler/lower:pl" %t27)
  store %"compiler/mir:Lvalue" %t28, ptr %l50
  br label %bb6
bb6:
  store { i64, [4 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 0
  store i64 1, ptr %t30
  %t31 = load %"compiler/mir:Lvalue", ptr %l50
  %t32 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t31, 0
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t32, ptr %t33
  %t34 = load { i64, [4 x i64] }, ptr %t29
  store { i64, [15 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [15 x i64] }, ptr %t35, i32 0, i32 0
  store i64 0, ptr %t36
  %t38 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t34, 0
  %t39 = getelementptr { i64, [15 x i64] }, ptr %t35, i32 0, i32 1
  store { { i64, [4 x i64] } } %t38, ptr %t39
  %t40 = load { i64, [15 x i64] }, ptr %t35
  %t41 = load %"compiler/source:Span", ptr %l4
  %t42 = load ptr, ptr %l44, !tbaa !29
  %t43 = load i32, ptr %l45, !tbaa !23
  %t46 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t42, i32 %t43, { i64, [15 x i64] } %t40, %"compiler/source:Span" %t41)
  store { i64, [4 x i64] } %t46, ptr %l54
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t47 = load { i64, [4 x i64] }, ptr %l54
  store { i64, [4 x i64] } %t47, ptr %rv
  br label %ret
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = trunc i64 %t49 to i32
  %t55 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %t48, i32 %t51)
  store { { i64, [7 x i64] }, i32 } %t55, ptr %l59
  br label %bb9
bb9:
  %t56 = load { { i64, [7 x i64] }, i32 }, ptr %l59
  store { { i64, [7 x i64] }, i32 } %t56, ptr %l7
  %t57 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l7, i32 0, i32 0
  %t58 = load { i64, [7 x i64] }, ptr %t57
  store { i64, [7 x i64] } %t58, ptr %l8
  %t60 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l7, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  store i32 %t61, ptr %l9, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t65 = load %"compiler/source:Span", ptr %l4
  %t69 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t63, i32 %t64, %"compiler/source:Span" %t65)
  store i32 %t69, ptr %l65
  br label %bb10
bb10:
  %t70 = load i32, ptr %l65, !tbaa !23
  store i32 %t70, ptr %l10, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eneverNullPath(ptr %v0, ptr %s0, ptr %t71, i32 %t72, i64 0)
  store { i64, ptr } %t75, ptr %l68
  br label %bb11
bb11:
  %t76 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t76, ptr %l11, !tbaa !27
  %t77 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t77, ptr %l12, !tbaa !23
  %t79 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t85 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t85, ptr %l73
  %t87 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l73)
  store %"compiler/lower:pl" %t87, ptr %l75
  br label %bb14
bb13:
  br label %bb39
bb14:
  %t88 = load %"compiler/lower:pl", ptr %l75
  store %"compiler/lower:pl" %t88, ptr %l13
  %t89 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t89, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l16, !tbaa !24
  br label %bb15
bb15:
  %t95 = load i64, ptr %l15, !tbaa !24
  %t96 = load i64, ptr %l16, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb16, label %bb17
bb16:
  br label %bb22
bb17:
  br label %bb18
bb18:
  %t103 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t103, ptr %l83, !tbaa !27
  %t104 = load i64, ptr %l15, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i64, ptr %t107, i64 %t104
  %t109 = load i64, ptr %t108, !tbaa !34
  store i64 %t109, ptr %l17, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l86, !tbaa !29
  %t112 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t112, ptr %l87
  %t114 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l87)
  store %"compiler/lower:pl" %t114, ptr %l89
  br label %bb19
bb19:
  %t115 = load i64, ptr %l17, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t116
  %t117 = getelementptr { i64, [1 x i64] }, ptr %t116, i32 0, i32 0
  store i64 0, ptr %t117
  %t119 = insertvalue { i64 } undef, i64 %t115, 0
  %t120 = getelementptr { i64, [1 x i64] }, ptr %t116, i32 0, i32 1
  store { i64 } %t119, ptr %t120
  %t121 = load { i64, [1 x i64] }, ptr %t116
  %t122 = load ptr, ptr %l86, !tbaa !29
  %t123 = load %"compiler/lower:pl", ptr %l89
  %t125 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s2, ptr %s2, ptr %t122, %"compiler/lower:pl" %t123, { i64, [1 x i64] } %t121)
  store %"compiler/lower:pl" %t125, ptr %l92
  br label %bb20
bb20:
  %t126 = load %"compiler/lower:pl", ptr %l92
  store %"compiler/lower:pl" %t126, ptr %l13
  br label %bb21
bb21:
  %t127 = load i64, ptr %l15, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l15, !tbaa !24
  br label %bb15
bb22:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l2, !tbaa !23
  %t133 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t137 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2efieldAt(ptr %v0, ptr %s0, ptr %t131, i32 %t132, { i64, ptr } %t133)
  store i32 %t137, ptr %l98
  br label %bb23
bb23:
  %t138 = load i32, ptr %l98, !tbaa !23
  store i32 %t138, ptr %l18, !tbaa !23
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l99, !tbaa !29
  %t140 = load i32, ptr %l18, !tbaa !23
  store i32 %t140, ptr %l100, !tbaa !23
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l101, !tbaa !29
  %t142 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t142, ptr %l102
  %t144 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l102)
  store %"compiler/lower:pl" %t144, ptr %l104
  br label %bb24
bb24:
  %t145 = load ptr, ptr %l101, !tbaa !29
  %t146 = load %"compiler/lower:pl", ptr %l104
  %t147 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t145, %"compiler/lower:pl" %t146)
  store %"compiler/mir:Lvalue" %t147, ptr %l105
  br label %bb25
bb25:
  store { i64, [4 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 0
  store i64 1, ptr %t149
  %t150 = load %"compiler/mir:Lvalue", ptr %l105
  %t151 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t150, 0
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t151, ptr %t152
  %t153 = load { i64, [4 x i64] }, ptr %t148
  store { i64, [15 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [15 x i64] }, ptr %t154, i32 0, i32 0
  store i64 0, ptr %t155
  %t157 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t153, 0
  %t158 = getelementptr { i64, [15 x i64] }, ptr %t154, i32 0, i32 1
  store { { i64, [4 x i64] } } %t157, ptr %t158
  %t159 = load { i64, [15 x i64] }, ptr %t154
  %t160 = load %"compiler/source:Span", ptr %l4
  %t161 = load ptr, ptr %l99, !tbaa !29
  %t162 = load i32, ptr %l100, !tbaa !23
  %t165 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t161, i32 %t162, { i64, [15 x i64] } %t159, %"compiler/source:Span" %t160)
  store { i64, [4 x i64] } %t165, ptr %l109
  br label %bb26
bb26:
  %t166 = load { i64, [4 x i64] }, ptr %l109
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t170 = load i32, ptr %l18, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 0
  store i64 2, ptr %t172
  %t174 = insertvalue { i32, i64 } undef, i32 %t170, 0
  %t175 = insertvalue { i32, i64 } %t174, i64 0, 1
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  store { i32, i64 } %t175, ptr %t176
  %t177 = load { i64, [4 x i64] }, ptr %t171
  %t178 = mul i64 2, 40
  %t179 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t178)
  %t180 = insertvalue { i64, ptr } undef, i64 2, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  store { i64, ptr } %t181, ptr %l116, !tbaa !27
  %t183 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t184, i64 0
  store { i64, [4 x i64] } %t166, ptr %t185
  %t187 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr { i64, [4 x i64] }, ptr %t188, i64 1
  store { i64, [4 x i64] } %t177, ptr %t189
  %t190 = load %"compiler/source:Span", ptr %l4
  %t194 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t196 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t167, i32 14, i32 %t168, { i64, ptr } %t194, %"compiler/source:Span" %t190)
  store { i64, [4 x i64] } %t196, ptr %l118
  br label %bb27
bb27:
  %t197 = load { i64, [4 x i64] }, ptr %l118
  store { i64, [4 x i64] } %t197, ptr %l20
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/lower:lowering", ptr %t198, i32 0, i32 3
  %t202 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t200)
  store i32 %t202, ptr %l121
  br label %bb28
bb28:
  %t203 = load i32, ptr %l121, !tbaa !23
  store i32 %t203, ptr %l21, !tbaa !23
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/lower:lowering", ptr %t204, i32 0, i32 3
  %t208 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t206)
  store i32 %t208, ptr %l124
  br label %bb29
bb29:
  %t209 = load i32, ptr %l124, !tbaa !23
  store i32 %t209, ptr %l22, !tbaa !23
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/lower:lowering", ptr %t210, i32 0, i32 3
  %t214 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t212)
  store i32 %t214, ptr %l127
  br label %bb30
bb30:
  %t215 = load i32, ptr %l127, !tbaa !23
  store i32 %t215, ptr %l12, !tbaa !23
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load { i64, [4 x i64] }, ptr %l20
  %t218 = load i32, ptr %l21, !tbaa !23
  %t219 = load i32, ptr %l22, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t220
  %t221 = getelementptr { i64, [8 x i64] }, ptr %t220, i32 0, i32 0
  store i64 2, ptr %t221
  %t223 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t217, 0
  %t225 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t223, i32 %t218, 1
  %t227 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t225, i32 %t219, 2
  %t228 = getelementptr { i64, [8 x i64] }, ptr %t220, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t227, ptr %t228
  %t229 = load { i64, [8 x i64] }, ptr %t220
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t216, { i64, [8 x i64] } %t229)
  br label %bb31
bb31:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t232, i32 %t233)
  br label %bb32
bb32:
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l135, !tbaa !29
  %t237 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t237, ptr %l136
  %t238 = load i32, ptr %l10, !tbaa !23
  %t240 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t238)
  store %"compiler/mir:Lvalue" %t240, ptr %l138
  br label %bb33
bb33:
  %t241 = load ptr, ptr %l0, !tbaa !29
  store ptr %t241, ptr %l139, !tbaa !29
  %t242 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t242, ptr %l140
  %t244 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l140)
  store %"compiler/lower:pl" %t244, ptr %l142
  br label %bb34
bb34:
  %t245 = load ptr, ptr %l139, !tbaa !29
  %t246 = load %"compiler/lower:pl", ptr %l142
  %t247 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t245, %"compiler/lower:pl" %t246)
  store %"compiler/mir:Lvalue" %t247, ptr %l143
  br label %bb35
bb35:
  store { i64, [4 x i64] } zeroinitializer, ptr %t248
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t248, i32 0, i32 0
  store i64 1, ptr %t249
  %t250 = load %"compiler/mir:Lvalue", ptr %l143
  %t251 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t250, 0
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t248, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t251, ptr %t252
  %t253 = load { i64, [4 x i64] }, ptr %t248
  store { i64, [15 x i64] } zeroinitializer, ptr %t254
  %t255 = getelementptr { i64, [15 x i64] }, ptr %t254, i32 0, i32 0
  store i64 0, ptr %t255
  %t257 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t253, 0
  %t258 = getelementptr { i64, [15 x i64] }, ptr %t254, i32 0, i32 1
  store { { i64, [4 x i64] } } %t257, ptr %t258
  %t259 = load { i64, [15 x i64] }, ptr %t254
  store { i64, [21 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [21 x i64] }, ptr %t260, i32 0, i32 0
  store i64 0, ptr %t261
  %t262 = load %"compiler/source:Span", ptr %l136
  %t263 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t262, 0
  %t264 = load %"compiler/mir:Lvalue", ptr %l138
  %t265 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t263, %"compiler/mir:Lvalue" %t264, 1
  %t267 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t265, { i64, [15 x i64] } %t259, 2
  %t268 = getelementptr { i64, [21 x i64] }, ptr %t260, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t267, ptr %t268
  %t269 = load { i64, [21 x i64] }, ptr %t260
  %t271 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t269, ptr %t271
  %t272 = load ptr, ptr %l135, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t272, ptr %t271)
  br label %bb36
bb36:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t274, i32 %t275)
  br label %bb37
bb37:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i32, ptr %l21, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t278, i32 %t279)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s2)
  br label %bb39
bb39:
  %t282 = load ptr, ptr %l5, !tbaa !29
  store ptr %t282, ptr %l152, !tbaa !29
  %t283 = load ptr, ptr %l5, !tbaa !29
  %t284 = load i32, ptr %l9, !tbaa !23
  %t287 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t283, i32 %t284)
  store i32 %t287, ptr %l155
  br label %bb40
bb40:
  %t288 = load ptr, ptr %l152, !tbaa !29
  %t289 = load i32, ptr %l155, !tbaa !23
  %t290 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t288, i32 %t289)
  store { i64, ptr } %t290, ptr %l156
  br label %bb41
bb41:
  %t291 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t291, ptr %l157, !tbaa !27
  %t292 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr i32, ptr %t293, i64 0
  %t295 = load i32, ptr %t294, !tbaa !33
  store i32 %t295, ptr %l23, !tbaa !23
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l159, !tbaa !29
  %t298 = load i32, ptr %l23, !tbaa !23
  store i32 %t298, ptr %l160, !tbaa !23
  %t299 = load ptr, ptr %l0, !tbaa !29
  store ptr %t299, ptr %l161, !tbaa !29
  %t300 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t300, ptr %l162
  %t302 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l162)
  store %"compiler/lower:pl" %t302, ptr %l164
  br label %bb42
bb42:
  %t303 = load ptr, ptr %l161, !tbaa !29
  %t304 = load %"compiler/lower:pl", ptr %l164
  %t305 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t303, %"compiler/lower:pl" %t304)
  store %"compiler/mir:Lvalue" %t305, ptr %l165
  br label %bb43
bb43:
  %t306 = load i32, ptr %l23, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t307
  %t308 = getelementptr { i64, [15 x i64] }, ptr %t307, i32 0, i32 0
  store i64 1, ptr %t308
  %t309 = load %"compiler/mir:Lvalue", ptr %l165
  %t310 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t309, 0
  %t312 = insertvalue { %"compiler/mir:Lvalue", i32 } %t310, i32 %t306, 1
  %t313 = getelementptr { i64, [15 x i64] }, ptr %t307, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t312, ptr %t313
  %t314 = load { i64, [15 x i64] }, ptr %t307
  %t315 = load %"compiler/source:Span", ptr %l4
  %t316 = load ptr, ptr %l159, !tbaa !29
  %t317 = load i32, ptr %l160, !tbaa !23
  %t320 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t316, i32 %t317, { i64, [15 x i64] } %t314, %"compiler/source:Span" %t315)
  store { i64, [4 x i64] } %t320, ptr %l169
  br label %bb44
bb44:
  %t321 = load { i64, [4 x i64] }, ptr %l169
  store { i64, [4 x i64] } %t321, ptr %l24
  %t322 = load ptr, ptr %l5, !tbaa !29
  %t323 = load i32, ptr %l9, !tbaa !23
  %t326 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t322, i32 %t323)
  store { i64, ptr } %t326, ptr %l172
  br label %bb45
bb45:
  %t327 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t327, ptr %l25, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t328, 0
  store i64 %t330, ptr %l174, !tbaa !24
  %t331 = load i64, ptr %l174, !tbaa !24
  %t332 = icmp sge i64 %t331, 0
  br i1 %t332, label %bb46, label %bb47
bb46:
  %t334 = load i64, ptr %l174, !tbaa !24
  %t335 = icmp sle i64 %t334, 576460752303423487
  br i1 %t335, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_c6e8669f85ad48a7_dc5f185375890b93)
  unreachable
bb48:
  %t337 = load i64, ptr %l174, !tbaa !24
  %t338 = mul i64 %t337, 16
  %t339 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t338)
  %t340 = insertvalue { i64, ptr } undef, i64 %t337, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t339, 1
  store { i64, ptr } %t341, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t343 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t343, 0
  store i64 %t345, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t347 = load i64, ptr %l28, !tbaa !24
  %t348 = load i64, ptr %l27, !tbaa !24
  %t351 = icmp sgt i64 %t347, %t348
  br i1 %t351, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_c6e8669f85ad48a7_dc5f185375890b93)
  unreachable
bb50:
  %t353 = load i64, ptr %l29, !tbaa !24
  %t355 = icmp sgt i64 %t353, 0
  br i1 %t355, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb55
bb52:
  %t357 = load i64, ptr %l28, !tbaa !24
  %t358 = load i64, ptr %l27, !tbaa !24
  %t361 = sub i64 %t357, %t358
  %t362 = load i64, ptr %l29, !tbaa !24
  %t365 = add i64 %t361, %t362
  %t367 = sub i64 %t365, 1
  %t368 = load i64, ptr %l29, !tbaa !24
  %t371 = sdiv i64 %t367, %t368
  store i64 %t371, ptr %l186, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l186, !tbaa !24
  br label %bb54
bb54:
  %t373 = load i64, ptr %l186, !tbaa !24
  store i64 %t373, ptr %l183, !tbaa !24
  br label %bb55
bb55:
  %t374 = load i64, ptr %l183, !tbaa !24
  store i64 %t374, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb56
bb56:
  %t375 = load i64, ptr %l31, !tbaa !24
  %t376 = load i64, ptr %l30, !tbaa !24
  %t379 = icmp slt i64 %t375, %t376
  %t381 = xor i1 %t379, true
  br i1 %t381, label %bb57, label %bb58
bb57:
  br label %bb64
bb58:
  br label %bb59
bb59:
  %t383 = load i64, ptr %l27, !tbaa !24
  %t384 = load i64, ptr %l31, !tbaa !24
  %t385 = load i64, ptr %l29, !tbaa !24
  %t388 = mul i64 %t384, %t385
  %t391 = add i64 %t383, %t388
  store i64 %t391, ptr %l32, !tbaa !24
  %t393 = load i64, ptr %l32, !tbaa !24
  store i64 %t393, ptr %l204, !tbaa !24
  %t394 = load i64, ptr %l32, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr i64, ptr %t397, i64 %t394
  %t399 = load i64, ptr %t398, !tbaa !34
  %t400 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t403 = icmp eq i64 %t399, %t400
  br i1 %t403, label %bb60, label %bb61
bb60:
  store { i64, [1 x i64] } %a3, ptr %l209
  br label %bb62
bb61:
  store { i64, [1 x i64] } zeroinitializer, ptr %t407
  %t408 = getelementptr { i64, [1 x i64] }, ptr %t407, i32 0, i32 0
  store i64 2, ptr %t408
  %t409 = load { i64, [1 x i64] }, ptr %t407
  store { i64, [1 x i64] } %t409, ptr %l209
  br label %bb62
bb62:
  %t411 = load { i64, [1 x i64] }, ptr %l209
  %t412 = load i64, ptr %l204, !tbaa !24
  %t413 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = getelementptr { i64, [1 x i64] }, ptr %t414, i64 %t412
  store { i64, [1 x i64] } %t411, ptr %t415
  br label %bb63
bb63:
  %t416 = load i64, ptr %l31, !tbaa !24
  %t418 = add i64 %t416, 1
  store i64 %t418, ptr %l31, !tbaa !24
  br label %bb56
bb64:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr %"compiler/lower:lowering", ptr %t420, i32 0, i32 3
  %t424 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t422)
  store i32 %t424, ptr %l216
  br label %bb65
bb65:
  %t425 = load i32, ptr %l216, !tbaa !23
  store i32 %t425, ptr %l33, !tbaa !23
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/lower:lowering", ptr %t426, i32 0, i32 3
  store ptr %t428, ptr %l218, !tbaa !29
  %t429 = load { i64, [7 x i64] }, ptr %l8
  store { i64, [7 x i64] } %t429, ptr %l219
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/lower:lowering", ptr %t430, i32 0, i32 3
  %t433 = load { i64, [4 x i64] }, ptr %l24
  %t434 = mul i64 1, 40
  %t435 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t434)
  %t436 = insertvalue { i64, ptr } undef, i64 1, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  store { i64, ptr } %t437, ptr %l223, !tbaa !27
  %t439 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t440 = load ptr, ptr %t439, !tbaa !27
  %t441 = getelementptr { i64, [4 x i64] }, ptr %t440, i64 0
  store { i64, [4 x i64] } %t433, ptr %t441
  %t443 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t444 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t432, { i64, ptr } %t443)
  store %"compiler/mir:Range" %t444, ptr %l224
  br label %bb66
bb66:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/lower:lowering", ptr %t445, i32 0, i32 3
  %t448 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t451 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t447, { i64, ptr } %t448)
  store %"compiler/mir:Range" %t451, ptr %l228
  br label %bb67
bb67:
  %t452 = load i32, ptr %l10, !tbaa !23
  %t454 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t452)
  store %"compiler/mir:Lvalue" %t454, ptr %l230
  br label %bb68
bb68:
  %t455 = load i32, ptr %l33, !tbaa !23
  %t456 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t457 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t458 = load { i64, [7 x i64] }, ptr %l219
  %t459 = load %"compiler/mir:Range", ptr %l224
  %t460 = load %"compiler/mir:Range", ptr %l228
  %t461 = load %"compiler/mir:Lvalue", ptr %l230
  %t465 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t458, %"compiler/mir:Range" %t459, %"compiler/mir:Range" %t460, %"compiler/mir:Lvalue" %t461, i1 true, i32 %t455, i32 %t456, i32 %t457)
  store %"compiler/mir:Call" %t465, ptr %l234
  br label %bb69
bb69:
  %t466 = load ptr, ptr %l218, !tbaa !29
  %t467 = load %"compiler/mir:Call", ptr %l234
  %t468 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t466, %"compiler/mir:Call" %t467)
  store i32 %t468, ptr %l235
  br label %bb70
bb70:
  %t469 = load i32, ptr %l235, !tbaa !23
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load %"compiler/source:Span", ptr %l4
  store { i64, [8 x i64] } zeroinitializer, ptr %t473
  %t474 = getelementptr { i64, [8 x i64] }, ptr %t473, i32 0, i32 0
  store i64 4, ptr %t474
  %t476 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t471, 0
  %t478 = insertvalue { %"compiler/source:Span", i32 } %t476, i32 %t469, 1
  %t479 = getelementptr { i64, [8 x i64] }, ptr %t473, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t478, ptr %t479
  %t480 = load { i64, [8 x i64] }, ptr %t473
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t470, { i64, [8 x i64] } %t480)
  br label %bb71
bb71:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load i32, ptr %l33, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t483, i32 %t484)
  br label %bb72
bb72:
  %t487 = load i32, ptr %l12, !tbaa !23
  %t488 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t491 = icmp ne i32 %t487, %t488
  br i1 %t491, label %bb73, label %bb74
bb73:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t493, i32 %t494)
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t498 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t497, i32 %t498)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t501 = load i32, ptr %l10, !tbaa !23
  %t503 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t501)
  store %"compiler/mir:Lvalue" %t503, ptr %l250
  br label %bb78
bb78:
  store { i64, [4 x i64] } zeroinitializer, ptr %t504
  %t505 = getelementptr { i64, [4 x i64] }, ptr %t504, i32 0, i32 0
  store i64 1, ptr %t505
  %t506 = load %"compiler/mir:Lvalue", ptr %l250
  %t507 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t506, 0
  %t508 = getelementptr { i64, [4 x i64] }, ptr %t504, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t507, ptr %t508
  %t509 = load { i64, [4 x i64] }, ptr %t504
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t509, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/lower:pl" %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca %"compiler/lower:pl"
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/lower:pl"
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca i32
  %l31 = alloca { i64, [4 x i64] }
  %l33 = alloca { i64, [4 x i64] }
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca { i64, [4 x i64] }
  %l38 = alloca { i64, [4 x i64] }
  %l39 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca %"compiler/lower:pl"
  %l43 = alloca %"compiler/lower:pl"
  %l46 = alloca %"compiler/lower:pl"
  %l48 = alloca %"compiler/lower:pl"
  %l49 = alloca ptr
  %l50 = alloca %"compiler/lower:pl"
  %l52 = alloca %"compiler/lower:pl"
  %l55 = alloca %"compiler/lower:pl"
  %l57 = alloca %"compiler/lower:pl"
  %l64 = alloca i32
  %l67 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca ptr
  %l71 = alloca %"compiler/lower:pl"
  %l73 = alloca %"compiler/lower:pl"
  %l74 = alloca %"compiler/mir:Lvalue"
  %l78 = alloca { i64, [4 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca ptr
  %l82 = alloca %"compiler/lower:pl"
  %l84 = alloca %"compiler/lower:pl"
  %l85 = alloca %"compiler/mir:Lvalue"
  %l89 = alloca { i64, [4 x i64] }
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, [4 x i64] }
  %l100 = alloca i32
  %l103 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i1
  %l108 = alloca ptr
  %l111 = alloca i32
  %l112 = alloca i32
  %l115 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca ptr
  %l118 = alloca %"compiler/lower:pl"
  %l120 = alloca %"compiler/lower:pl"
  %l121 = alloca %"compiler/mir:Lvalue"
  %l125 = alloca { i64, [4 x i64] }
  %l126 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca ptr
  %l129 = alloca %"compiler/lower:pl"
  %l131 = alloca %"compiler/lower:pl"
  %l132 = alloca %"compiler/mir:Lvalue"
  %l136 = alloca { i64, [4 x i64] }
  %l142 = alloca { i64, ptr }
  %l144 = alloca { i64, [4 x i64] }
  %l147 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca ptr
  %l150 = alloca %"compiler/lower:pl"
  %l152 = alloca %"compiler/lower:pl"
  %l153 = alloca %"compiler/mir:Lvalue"
  %l157 = alloca i32
  %l158 = alloca ptr
  %l159 = alloca ptr
  %l160 = alloca %"compiler/lower:pl"
  %l162 = alloca %"compiler/lower:pl"
  %l163 = alloca %"compiler/mir:Lvalue"
  %l167 = alloca i32
  %l168 = alloca ptr
  %l171 = alloca %"compiler/lower:pl"
  %l174 = alloca %"compiler/lower:pl"
  %l177 = alloca i32
  %l179 = alloca { i64, [4 x i64] }
  %l182 = alloca ptr
  %l183 = alloca i32
  %l184 = alloca i32
  %l185 = alloca ptr
  %l186 = alloca %"compiler/lower:pl"
  %l188 = alloca %"compiler/lower:pl"
  %l191 = alloca { i64, [4 x i64] }
  %l192 = alloca ptr
  %l193 = alloca %"compiler/lower:pl"
  %l195 = alloca %"compiler/lower:pl"
  %l198 = alloca { i64, [4 x i64] }
  %l199 = alloca { i64, ptr }
  %l203 = alloca { i64, [4 x i64] }
  %l206 = alloca i32
  %l209 = alloca i32
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca { i64, ptr }
  %l217 = alloca i1
  %l220 = alloca { i64, ptr }
  %l224 = alloca i1
  %l231 = alloca i64
  %l234 = alloca i64
  %l252 = alloca ptr
  %l253 = alloca ptr
  %l254 = alloca %"compiler/lower:pl"
  %l256 = alloca %"compiler/lower:pl"
  %l260 = alloca %"compiler/lower:pl"
  %l261 = alloca ptr
  %l262 = alloca %"compiler/lower:pl"
  %l264 = alloca %"compiler/lower:pl"
  %l268 = alloca %"compiler/lower:pl"
  %l272 = alloca { i64, [4 x i64] }
  %l275 = alloca i32
  %l286 = alloca ptr
  %l287 = alloca i32
  %l288 = alloca ptr
  %l289 = alloca %"compiler/lower:pl"
  %l291 = alloca %"compiler/lower:pl"
  %l292 = alloca %"compiler/mir:Lvalue"
  %l295 = alloca { i64, [4 x i64] }
  %l296 = alloca ptr
  %l297 = alloca i32
  %l298 = alloca ptr
  %l299 = alloca %"compiler/lower:pl"
  %l301 = alloca %"compiler/lower:pl"
  %l302 = alloca %"compiler/mir:Lvalue"
  %l305 = alloca { i64, [4 x i64] }
  %l311 = alloca { i64, ptr }
  %l313 = alloca { i64, [4 x i64] }
  %l316 = alloca i32
  %l324 = alloca ptr
  %l325 = alloca { i64, ptr }
  %l326 = alloca { i64, [4 x i64] }
  %l327 = alloca %"compiler/source:Span"
  %l328 = alloca ptr
  %l329 = alloca %"compiler/lower:pl"
  %l331 = alloca %"compiler/lower:pl"
  %l332 = alloca %"compiler/lower:pl"
  %l334 = alloca %"compiler/lower:pl"
  %l340 = alloca i32
  %l343 = alloca ptr
  %l346 = alloca i32
  %l347 = alloca i32
  %l348 = alloca ptr
  %l349 = alloca i32
  %l350 = alloca i32
  %l351 = alloca ptr
  %l352 = alloca %"compiler/lower:pl"
  %l354 = alloca %"compiler/lower:pl"
  %l355 = alloca %"compiler/mir:Lvalue"
  %l357 = alloca { i64, ptr }
  %l359 = alloca { i64, [4 x i64] }
  %l360 = alloca ptr
  %l361 = alloca i32
  %l362 = alloca i32
  %l363 = alloca ptr
  %l364 = alloca %"compiler/lower:pl"
  %l366 = alloca %"compiler/lower:pl"
  %l367 = alloca %"compiler/mir:Lvalue"
  %l369 = alloca { i64, ptr }
  %l371 = alloca { i64, [4 x i64] }
  %l377 = alloca { i64, ptr }
  %l379 = alloca { i64, [4 x i64] }
  %l382 = alloca i32
  %l390 = alloca ptr
  %l391 = alloca { i64, [4 x i64] }
  %l392 = alloca %"compiler/source:Span"
  %l393 = alloca ptr
  %l394 = alloca %"compiler/lower:pl"
  %l396 = alloca %"compiler/lower:pl"
  %l397 = alloca %"compiler/lower:pl"
  %l399 = alloca %"compiler/lower:pl"
  %l410 = alloca ptr
  %l411 = alloca %"compiler/source:Span"
  %l413 = alloca %"compiler/mir:Lvalue"
  %l416 = alloca { i64, [4 x i64] }
  %l425 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t59 = alloca { i64, [4 x i64] }, align 8
  %t65 = alloca { i64, [15 x i64] }, align 8
  %t87 = alloca { i64, [4 x i64] }, align 8
  %t93 = alloca { i64, [15 x i64] }, align 8
  %t171 = alloca { i64, [4 x i64] }, align 8
  %t177 = alloca { i64, [15 x i64] }, align 8
  %t199 = alloca { i64, [4 x i64] }, align 8
  %t205 = alloca { i64, [15 x i64] }, align 8
  %t256 = alloca { i64, [4 x i64] }, align 8
  %t278 = alloca { i64, [4 x i64] }, align 8
  %t519 = alloca { i64, [8 x i64] }, align 8
  %t553 = alloca { i64, [15 x i64] }, align 8
  %t575 = alloca { i64, [15 x i64] }, align 8
  %t622 = alloca { i64, [8 x i64] }, align 8
  %t653 = alloca { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, align 8
  %t704 = alloca { i64, [4 x i64] }, align 8
  %t735 = alloca { i64, [4 x i64] }, align 8
  %t791 = alloca { i64, [8 x i64] }, align 8
  %t864 = alloca { i64, [15 x i64] }, align 8
  %t870 = alloca { i64, [21 x i64] }, align 8
  %t894 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store %"compiler/lower:pl" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l40, !tbaa !29
  %t2 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t2, ptr %l41
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l41)
  store %"compiler/lower:pl" %t4, ptr %l43
  br label %bb1
bb1:
  %t5 = load i32, ptr %l3, !tbaa !23
  %t6 = load %"compiler/source:Span", ptr %l4
  %t7 = load ptr, ptr %l40, !tbaa !29
  %t8 = load %"compiler/lower:pl", ptr %l43
  %t11 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v1, ptr %v1, ptr %t7, %"compiler/lower:pl" %t8, i32 %t5, %"compiler/source:Span" %t6)
  store %"compiler/lower:pl" %t11, ptr %l46
  br label %bb2
bb2:
  %t13 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l46)
  store %"compiler/lower:pl" %t13, ptr %l48
  br label %bb3
bb3:
  %t14 = load %"compiler/lower:pl", ptr %l48
  store %"compiler/lower:pl" %t14, ptr %l6
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l49, !tbaa !29
  %t16 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t16, ptr %l50
  %t18 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l50)
  store %"compiler/lower:pl" %t18, ptr %l52
  br label %bb4
bb4:
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load %"compiler/source:Span", ptr %l4
  %t21 = load ptr, ptr %l49, !tbaa !29
  %t22 = load %"compiler/lower:pl", ptr %l52
  %t25 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v2, ptr %v2, ptr %t21, %"compiler/lower:pl" %t22, i32 %t19, %"compiler/source:Span" %t20)
  store %"compiler/lower:pl" %t25, ptr %l55
  br label %bb5
bb5:
  %t27 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l55)
  store %"compiler/lower:pl" %t27, ptr %l57
  br label %bb6
bb6:
  %t28 = load %"compiler/lower:pl", ptr %l57
  %t29 = load %"compiler/lower:pl", ptr %l6
  store %"compiler/lower:pl" %t29, ptr %l1
  store %"compiler/lower:pl" %t28, ptr %l2
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lower:lowering", ptr %t33, i32 0, i32 2
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l8, !tbaa !29
  %t38 = load ptr, ptr %l8, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l64
  br label %bb7
bb7:
  %t43 = load i32, ptr %l64, !tbaa !23
  store i32 %t43, ptr %l9, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l3, !tbaa !23
  %t48 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2escalar(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l67
  br label %bb8
bb8:
  %t49 = load i1, ptr %l67, !tbaa !21
  br i1 %t49, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l68, !tbaa !29
  %t51 = load i32, ptr %l3, !tbaa !23
  store i32 %t51, ptr %l69, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l70, !tbaa !29
  %t53 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t53, ptr %l71
  %t55 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l71)
  store %"compiler/lower:pl" %t55, ptr %l73
  br label %bb11
bb10:
  br label %bb18
bb11:
  %t56 = load ptr, ptr %l70, !tbaa !29
  %t57 = load %"compiler/lower:pl", ptr %l73
  %t58 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t56, %"compiler/lower:pl" %t57)
  store %"compiler/mir:Lvalue" %t58, ptr %l74
  br label %bb12
bb12:
  store { i64, [4 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 0
  store i64 1, ptr %t60
  %t61 = load %"compiler/mir:Lvalue", ptr %l74
  %t62 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t61, 0
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t62, ptr %t63
  %t64 = load { i64, [4 x i64] }, ptr %t59
  store { i64, [15 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [15 x i64] }, ptr %t65, i32 0, i32 0
  store i64 0, ptr %t66
  %t68 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t64, 0
  %t69 = getelementptr { i64, [15 x i64] }, ptr %t65, i32 0, i32 1
  store { { i64, [4 x i64] } } %t68, ptr %t69
  %t70 = load { i64, [15 x i64] }, ptr %t65
  %t71 = load %"compiler/source:Span", ptr %l4
  %t72 = load ptr, ptr %l68, !tbaa !29
  %t73 = load i32, ptr %l69, !tbaa !23
  %t76 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t72, i32 %t73, { i64, [15 x i64] } %t70, %"compiler/source:Span" %t71)
  store { i64, [4 x i64] } %t76, ptr %l78
  br label %bb13
bb13:
  %t77 = load { i64, [4 x i64] }, ptr %l78
  store { i64, [4 x i64] } %t77, ptr %l10
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l79, !tbaa !29
  %t79 = load i32, ptr %l3, !tbaa !23
  store i32 %t79, ptr %l80, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l81, !tbaa !29
  %t81 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t81, ptr %l82
  %t83 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l82)
  store %"compiler/lower:pl" %t83, ptr %l84
  br label %bb14
bb14:
  %t84 = load ptr, ptr %l81, !tbaa !29
  %t85 = load %"compiler/lower:pl", ptr %l84
  %t86 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t84, %"compiler/lower:pl" %t85)
  store %"compiler/mir:Lvalue" %t86, ptr %l85
  br label %bb15
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 0
  store i64 1, ptr %t88
  %t89 = load %"compiler/mir:Lvalue", ptr %l85
  %t90 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t89, 0
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t90, ptr %t91
  %t92 = load { i64, [4 x i64] }, ptr %t87
  store { i64, [15 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [15 x i64] }, ptr %t93, i32 0, i32 0
  store i64 0, ptr %t94
  %t96 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t92, 0
  %t97 = getelementptr { i64, [15 x i64] }, ptr %t93, i32 0, i32 1
  store { { i64, [4 x i64] } } %t96, ptr %t97
  %t98 = load { i64, [15 x i64] }, ptr %t93
  %t99 = load %"compiler/source:Span", ptr %l4
  %t100 = load ptr, ptr %l79, !tbaa !29
  %t101 = load i32, ptr %l80, !tbaa !23
  %t104 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t100, i32 %t101, { i64, [15 x i64] } %t98, %"compiler/source:Span" %t99)
  store { i64, [4 x i64] } %t104, ptr %l89
  br label %bb16
bb16:
  %t105 = load { i64, [4 x i64] }, ptr %l89
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t108 = load { i64, [4 x i64] }, ptr %l10
  %t110 = mul i64 2, 40
  %t111 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t110)
  %t112 = insertvalue { i64, ptr } undef, i64 2, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l95, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t116, i64 0
  store { i64, [4 x i64] } %t108, ptr %t117
  %t119 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t120, i64 1
  store { i64, [4 x i64] } %t105, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l4
  %t126 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t128 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s1, ptr %t106, i32 13, i32 %t107, { i64, ptr } %t126, %"compiler/source:Span" %t122)
  store { i64, [4 x i64] } %t128, ptr %l97
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t129 = load { i64, [4 x i64] }, ptr %l97
  store { i64, [4 x i64] } %t129, ptr %rv
  br label %ret
bb18:
  %t130 = load ptr, ptr %l8, !tbaa !29
  %t131 = load i32, ptr %l9, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l100
  br label %bb19
bb19:
  %t135 = load i32, ptr %l100, !range !{i32 0, i32 33}
  %t137 = trunc i64 21 to i32
  %t138 = icmp eq i32 %t135, %t137
  br i1 %t138, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb28
bb21:
  %t140 = load ptr, ptr %l8, !tbaa !29
  %t141 = load i32, ptr %l9, !tbaa !23
  %t144 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t140, i32 %t141)
  store i1 %t144, ptr %l106
  br label %bb22
bb22:
  %t145 = load i1, ptr %l106, !tbaa !21
  br i1 %t145, label %bb23, label %bb24
bb23:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l108, !tbaa !29
  %t147 = load ptr, ptr %l8, !tbaa !29
  %t148 = load i32, ptr %l9, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l111
  br label %bb25
bb24:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb27
bb25:
  %t152 = load ptr, ptr %l108, !tbaa !29
  %t153 = load i32, ptr %l111, !tbaa !23
  %t154 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t154, ptr %l112
  br label %bb26
bb26:
  %t155 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t156 = load i32, ptr %l112, !tbaa !23
  %t158 = icmp eq i32 %t156, %t155
  store i1 %t158, ptr %l107, !tbaa !21
  br label %bb27
bb27:
  %t160 = load i1, ptr %l107, !tbaa !21
  store i1 %t160, ptr %l103, !tbaa !21
  br label %bb28
bb28:
  %t161 = load i1, ptr %l103, !tbaa !21
  br i1 %t161, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s2
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l115, !tbaa !29
  %t163 = load i32, ptr %l3, !tbaa !23
  store i32 %t163, ptr %l116, !tbaa !23
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l117, !tbaa !29
  %t165 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t165, ptr %l118
  %t167 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l118)
  store %"compiler/lower:pl" %t167, ptr %l120
  br label %bb31
bb30:
  br label %bb38
bb31:
  %t168 = load ptr, ptr %l117, !tbaa !29
  %t169 = load %"compiler/lower:pl", ptr %l120
  %t170 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t168, %"compiler/lower:pl" %t169)
  store %"compiler/mir:Lvalue" %t170, ptr %l121
  br label %bb32
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 0
  store i64 1, ptr %t172
  %t173 = load %"compiler/mir:Lvalue", ptr %l121
  %t174 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t173, 0
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t174, ptr %t175
  %t176 = load { i64, [4 x i64] }, ptr %t171
  store { i64, [15 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [15 x i64] }, ptr %t177, i32 0, i32 0
  store i64 0, ptr %t178
  %t180 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t176, 0
  %t181 = getelementptr { i64, [15 x i64] }, ptr %t177, i32 0, i32 1
  store { { i64, [4 x i64] } } %t180, ptr %t181
  %t182 = load { i64, [15 x i64] }, ptr %t177
  %t183 = load %"compiler/source:Span", ptr %l4
  %t184 = load ptr, ptr %l115, !tbaa !29
  %t185 = load i32, ptr %l116, !tbaa !23
  %t188 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t184, i32 %t185, { i64, [15 x i64] } %t182, %"compiler/source:Span" %t183)
  store { i64, [4 x i64] } %t188, ptr %l125
  br label %bb33
bb33:
  %t189 = load { i64, [4 x i64] }, ptr %l125
  store { i64, [4 x i64] } %t189, ptr %l12
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l126, !tbaa !29
  %t191 = load i32, ptr %l3, !tbaa !23
  store i32 %t191, ptr %l127, !tbaa !23
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l128, !tbaa !29
  %t193 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t193, ptr %l129
  %t195 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l129)
  store %"compiler/lower:pl" %t195, ptr %l131
  br label %bb34
bb34:
  %t196 = load ptr, ptr %l128, !tbaa !29
  %t197 = load %"compiler/lower:pl", ptr %l131
  %t198 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t196, %"compiler/lower:pl" %t197)
  store %"compiler/mir:Lvalue" %t198, ptr %l132
  br label %bb35
bb35:
  store { i64, [4 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t199, i32 0, i32 0
  store i64 1, ptr %t200
  %t201 = load %"compiler/mir:Lvalue", ptr %l132
  %t202 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t201, 0
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t199, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t202, ptr %t203
  %t204 = load { i64, [4 x i64] }, ptr %t199
  store { i64, [15 x i64] } zeroinitializer, ptr %t205
  %t206 = getelementptr { i64, [15 x i64] }, ptr %t205, i32 0, i32 0
  store i64 0, ptr %t206
  %t208 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t204, 0
  %t209 = getelementptr { i64, [15 x i64] }, ptr %t205, i32 0, i32 1
  store { { i64, [4 x i64] } } %t208, ptr %t209
  %t210 = load { i64, [15 x i64] }, ptr %t205
  %t211 = load %"compiler/source:Span", ptr %l4
  %t212 = load ptr, ptr %l126, !tbaa !29
  %t213 = load i32, ptr %l127, !tbaa !23
  %t216 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t212, i32 %t213, { i64, [15 x i64] } %t210, %"compiler/source:Span" %t211)
  store { i64, [4 x i64] } %t216, ptr %l136
  br label %bb36
bb36:
  %t217 = load { i64, [4 x i64] }, ptr %l136
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t220 = load { i64, [4 x i64] }, ptr %l12
  %t222 = mul i64 2, 40
  %t223 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t222)
  %t224 = insertvalue { i64, ptr } undef, i64 2, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  store { i64, ptr } %t225, ptr %l142, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t228, i64 0
  store { i64, [4 x i64] } %t220, ptr %t229
  %t231 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr { i64, [4 x i64] }, ptr %t232, i64 1
  store { i64, [4 x i64] } %t217, ptr %t233
  %t234 = load %"compiler/source:Span", ptr %l4
  %t238 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t240 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t218, i32 19, i32 %t219, { i64, ptr } %t238, %"compiler/source:Span" %t234)
  store { i64, [4 x i64] } %t240, ptr %l144
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t241 = load { i64, [4 x i64] }, ptr %l144
  store { i64, [4 x i64] } %t241, ptr %rv
  br label %ret
bb38:
  %t242 = load ptr, ptr %l8, !tbaa !29
  %t243 = load i32, ptr %l9, !tbaa !23
  %t246 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t242, i32 %t243)
  store i1 %t246, ptr %l147
  br label %bb39
bb39:
  %t247 = load i1, ptr %l147, !tbaa !21
  br i1 %t247, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s3
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l148, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l149, !tbaa !29
  %t250 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t250, ptr %l150
  %t252 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l150)
  store %"compiler/lower:pl" %t252, ptr %l152
  br label %bb42
bb41:
  br label %bb52
bb42:
  %t253 = load ptr, ptr %l149, !tbaa !29
  %t254 = load %"compiler/lower:pl", ptr %l152
  %t255 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t253, %"compiler/lower:pl" %t254)
  store %"compiler/mir:Lvalue" %t255, ptr %l153
  br label %bb43
bb43:
  store { i64, [4 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 0
  store i64 1, ptr %t257
  %t258 = load %"compiler/mir:Lvalue", ptr %l153
  %t259 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t258, 0
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t259, ptr %t260
  %t261 = load { i64, [4 x i64] }, ptr %t256
  %t262 = load i32, ptr %l3, !tbaa !23
  %t263 = load %"compiler/source:Span", ptr %l4
  %t264 = load ptr, ptr %l148, !tbaa !29
  %t268 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t264, { i64, [4 x i64] } %t261, i32 %t262, %"compiler/source:Span" %t263)
  store i32 %t268, ptr %l157
  br label %bb44
bb44:
  %t269 = load i32, ptr %l157, !tbaa !23
  store i32 %t269, ptr %l14, !tbaa !23
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l158, !tbaa !29
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l159, !tbaa !29
  %t272 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t272, ptr %l160
  %t274 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l160)
  store %"compiler/lower:pl" %t274, ptr %l162
  br label %bb45
bb45:
  %t275 = load ptr, ptr %l159, !tbaa !29
  %t276 = load %"compiler/lower:pl", ptr %l162
  %t277 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t275, %"compiler/lower:pl" %t276)
  store %"compiler/mir:Lvalue" %t277, ptr %l163
  br label %bb46
bb46:
  store { i64, [4 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [4 x i64] }, ptr %t278, i32 0, i32 0
  store i64 1, ptr %t279
  %t280 = load %"compiler/mir:Lvalue", ptr %l163
  %t281 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t280, 0
  %t282 = getelementptr { i64, [4 x i64] }, ptr %t278, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t281, ptr %t282
  %t283 = load { i64, [4 x i64] }, ptr %t278
  %t284 = load i32, ptr %l3, !tbaa !23
  %t285 = load %"compiler/source:Span", ptr %l4
  %t286 = load ptr, ptr %l158, !tbaa !29
  %t290 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t286, { i64, [4 x i64] } %t283, i32 %t284, %"compiler/source:Span" %t285)
  store i32 %t290, ptr %l167
  br label %bb47
bb47:
  %t291 = load i32, ptr %l167, !tbaa !23
  store i32 %t291, ptr %l15, !tbaa !23
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l168, !tbaa !29
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr %l14, !tbaa !23
  %t297 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s3, ptr %t293, i32 %t294)
  store %"compiler/lower:pl" %t297, ptr %l171
  br label %bb48
bb48:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load i32, ptr %l15, !tbaa !23
  %t302 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s3, ptr %t298, i32 %t299)
  store %"compiler/lower:pl" %t302, ptr %l174
  br label %bb49
bb49:
  %t303 = load ptr, ptr %l8, !tbaa !29
  %t304 = load i32, ptr %l9, !tbaa !23
  %t307 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t303, i32 %t304)
  store i32 %t307, ptr %l177
  br label %bb50
bb50:
  %t308 = load %"compiler/source:Span", ptr %l4
  %t309 = load ptr, ptr %l168, !tbaa !29
  %t310 = load %"compiler/lower:pl", ptr %l171
  %t311 = load %"compiler/lower:pl", ptr %l174
  %t312 = load i32, ptr %l177, !tbaa !23
  %t314 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %s3, ptr %s3, ptr %t309, %"compiler/lower:pl" %t310, %"compiler/lower:pl" %t311, i32 %t312, %"compiler/source:Span" %t308, i1 false)
  store { i64, [4 x i64] } %t314, ptr %l179
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t315 = load { i64, [4 x i64] }, ptr %l179
  store { i64, [4 x i64] } %t315, ptr %rv
  br label %ret
bb52:
  %t318 = xor i1 %a5, true
  br i1 %t318, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s4
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l182, !tbaa !29
  store i32 1, ptr %l183
  %t321 = load i32, ptr %l3, !tbaa !23
  store i32 %t321, ptr %l184, !tbaa !23
  %t322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t322, ptr %l185, !tbaa !29
  %t323 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t323, ptr %l186
  %t325 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s4, ptr %l186)
  store %"compiler/lower:pl" %t325, ptr %l188
  br label %bb55
bb54:
  br label %bb60
bb55:
  %t326 = load i32, ptr %l3, !tbaa !23
  %t327 = load %"compiler/source:Span", ptr %l4
  %t328 = load ptr, ptr %l185, !tbaa !29
  %t329 = load %"compiler/lower:pl", ptr %l188
  %t332 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s4, ptr %t328, %"compiler/lower:pl" %t329, i32 %t326, %"compiler/source:Span" %t327)
  store { i64, [4 x i64] } %t332, ptr %l191
  br label %bb56
bb56:
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l192, !tbaa !29
  %t334 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t334, ptr %l193
  %t336 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s4, ptr %l193)
  store %"compiler/lower:pl" %t336, ptr %l195
  br label %bb57
bb57:
  %t337 = load i32, ptr %l3, !tbaa !23
  %t338 = load %"compiler/source:Span", ptr %l4
  %t339 = load ptr, ptr %l192, !tbaa !29
  %t340 = load %"compiler/lower:pl", ptr %l195
  %t343 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s4, ptr %t339, %"compiler/lower:pl" %t340, i32 %t337, %"compiler/source:Span" %t338)
  store { i64, [4 x i64] } %t343, ptr %l198
  br label %bb58
bb58:
  %t344 = mul i64 2, 40
  %t345 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t344)
  %t346 = insertvalue { i64, ptr } undef, i64 2, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  store { i64, ptr } %t347, ptr %l199, !tbaa !27
  %t348 = load { i64, [4 x i64] }, ptr %l191
  %t349 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr { i64, [4 x i64] }, ptr %t350, i64 0
  store { i64, [4 x i64] } %t348, ptr %t351
  %t352 = load { i64, [4 x i64] }, ptr %l198
  %t353 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr { i64, [4 x i64] }, ptr %t354, i64 1
  store { i64, [4 x i64] } %t352, ptr %t355
  %t356 = mul i64 0, 16
  %t357 = insertvalue { i64, ptr } undef, i64 0, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t359 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t360 = load %"compiler/source:Span", ptr %l4
  %t361 = load ptr, ptr %l182, !tbaa !29
  %t362 = load i32, ptr %l183, !range !{i32 0, i32 8}
  %t363 = load i32, ptr %l184, !tbaa !23
  %t364 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t368 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s4, ptr %s4, ptr %t361, i32 %t362, i32 %t363, { i64, ptr } %t364, { i64, ptr } %t358, i32 %t359, %"compiler/source:Span" %t360)
  store { i64, [4 x i64] } %t368, ptr %l203
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t369 = load { i64, [4 x i64] }, ptr %l203
  store { i64, [4 x i64] } %t369, ptr %rv
  br label %ret
bb60:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l4
  %t374 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eflag(ptr %v0, ptr %t370, i1 true, %"compiler/source:Span" %t371)
  store i32 %t374, ptr %l206
  br label %bb61
bb61:
  %t375 = load i32, ptr %l206, !tbaa !23
  store i32 %t375, ptr %l16, !tbaa !23
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/lower:lowering", ptr %t376, i32 0, i32 3
  %t380 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t378)
  store i32 %t380, ptr %l209
  br label %bb62
bb62:
  %t381 = load i32, ptr %l209, !tbaa !23
  store i32 %t381, ptr %l17, !tbaa !23
  %t382 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %l210
  br label %bb63
bb63:
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l18
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load i32, ptr %l3, !tbaa !23
  %t388 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t384, i32 %t385)
  store { i64, ptr } %t388, ptr %l213
  br label %bb64
bb64:
  %t389 = load { i64, ptr }, ptr %l213, !tbaa !27
  store { i64, ptr } %t389, ptr %l19, !tbaa !27
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/lower:lowering", ptr %t390, i32 0, i32 2
  %t393 = load ptr, ptr %t392, !tbaa !29
  %t394 = load i32, ptr %l3, !tbaa !23
  %t397 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t393, i32 %t394)
  store i1 %t397, ptr %l217
  br label %bb65
bb65:
  %t398 = load i1, ptr %l217, !tbaa !21
  store i1 %t398, ptr %l20, !tbaa !21
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load i32, ptr %l3, !tbaa !23
  %t403 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %s0, ptr %t399, i32 %t400)
  store { i64, ptr } %t403, ptr %l220
  br label %bb66
bb66:
  %t404 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t404, ptr %l21, !tbaa !27
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/lower:lowering", ptr %t405, i32 0, i32 2
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t409 = load i32, ptr %l3, !tbaa !23
  %t412 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t408, i32 %t409)
  store i1 %t412, ptr %l224
  br label %bb67
bb67:
  %t413 = load i1, ptr %l224, !tbaa !21
  store i1 %t413, ptr %l22, !tbaa !21
  %t414 = load i1, ptr %l20, !tbaa !21
  br i1 %t414, label %bb68, label %bb69
bb68:
  store i64 0, ptr %l23, !tbaa !24
  %t416 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t416, 0
  store i64 %t418, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t420 = load i64, ptr %l24, !tbaa !24
  %t421 = load i64, ptr %l23, !tbaa !24
  %t424 = icmp sgt i64 %t420, %t421
  br i1 %t424, label %bb70, label %bb71
bb69:
  %t426 = load i1, ptr %l22, !tbaa !21
  br i1 %t426, label %bb90, label %bb91
bb70:
  %t428 = load i64, ptr %l25, !tbaa !24
  %t430 = icmp sgt i64 %t428, 0
  br i1 %t430, label %bb72, label %bb73
bb71:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb75
bb72:
  %t432 = load i64, ptr %l24, !tbaa !24
  %t433 = load i64, ptr %l23, !tbaa !24
  %t436 = sub i64 %t432, %t433
  %t437 = load i64, ptr %l25, !tbaa !24
  %t440 = add i64 %t436, %t437
  %t442 = sub i64 %t440, 1
  %t443 = load i64, ptr %l25, !tbaa !24
  %t446 = sdiv i64 %t442, %t443
  store i64 %t446, ptr %l234, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb74
bb74:
  %t448 = load i64, ptr %l234, !tbaa !24
  store i64 %t448, ptr %l231, !tbaa !24
  br label %bb75
bb75:
  %t449 = load i64, ptr %l231, !tbaa !24
  store i64 %t449, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb76
bb76:
  store %olang.scope zeroinitializer, ptr %s7
  %t450 = load i64, ptr %l27, !tbaa !24
  %t451 = load i64, ptr %l26, !tbaa !24
  %t454 = icmp slt i64 %t450, %t451
  %t456 = xor i1 %t454, true
  br i1 %t456, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s7)
  br label %bb89
bb78:
  br label %bb79
bb79:
  %t458 = load i64, ptr %l23, !tbaa !24
  %t459 = load i64, ptr %l27, !tbaa !24
  %t460 = load i64, ptr %l25, !tbaa !24
  %t463 = mul i64 %t459, %t460
  %t466 = add i64 %t458, %t463
  store i64 %t466, ptr %l28, !tbaa !24
  %t468 = load ptr, ptr %l0, !tbaa !29
  store ptr %t468, ptr %l252, !tbaa !29
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l253, !tbaa !29
  %t470 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t470, ptr %l254
  %t472 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s7, ptr %l254)
  store %"compiler/lower:pl" %t472, ptr %l256
  br label %bb80
bb80:
  %t473 = load i32, ptr %l3, !tbaa !23
  %t474 = load i64, ptr %l28, !tbaa !24
  %t475 = load %"compiler/source:Span", ptr %l4
  %t476 = load ptr, ptr %l253, !tbaa !29
  %t477 = load %"compiler/lower:pl", ptr %l256
  %t481 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %s7, ptr %s7, ptr %t476, %"compiler/lower:pl" %t477, i32 %t473, i64 %t474, %"compiler/source:Span" %t475)
  store %"compiler/lower:pl" %t481, ptr %l260
  br label %bb81
bb81:
  %t482 = load ptr, ptr %l0, !tbaa !29
  store ptr %t482, ptr %l261, !tbaa !29
  %t483 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t483, ptr %l262
  %t485 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s7, ptr %l262)
  store %"compiler/lower:pl" %t485, ptr %l264
  br label %bb82
bb82:
  %t486 = load i32, ptr %l3, !tbaa !23
  %t487 = load i64, ptr %l28, !tbaa !24
  %t488 = load %"compiler/source:Span", ptr %l4
  %t489 = load ptr, ptr %l261, !tbaa !29
  %t490 = load %"compiler/lower:pl", ptr %l264
  %t494 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %s7, ptr %s7, ptr %t489, %"compiler/lower:pl" %t490, i32 %t486, i64 %t487, %"compiler/source:Span" %t488)
  store %"compiler/lower:pl" %t494, ptr %l268
  br label %bb83
bb83:
  %t495 = load i64, ptr %l28, !tbaa !24
  %t497 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t498 = load ptr, ptr %t497, !tbaa !27
  %t499 = getelementptr i32, ptr %t498, i64 %t495
  %t500 = load i32, ptr %t499, !tbaa !33
  %t501 = load %"compiler/source:Span", ptr %l4
  %t502 = load ptr, ptr %l252, !tbaa !29
  %t503 = load %"compiler/lower:pl", ptr %l260
  %t504 = load %"compiler/lower:pl", ptr %l268
  %t507 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %s7, ptr %s7, ptr %t502, %"compiler/lower:pl" %t503, %"compiler/lower:pl" %t504, i32 %t500, %"compiler/source:Span" %t501, i1 false)
  store { i64, [4 x i64] } %t507, ptr %l272
  br label %bb84
bb84:
  %t508 = load { i64, [4 x i64] }, ptr %l272
  store { i64, [4 x i64] } %t508, ptr %l29
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t511 = getelementptr %"compiler/lower:lowering", ptr %t509, i32 0, i32 3
  %t513 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t511)
  store i32 %t513, ptr %l275
  br label %bb85
bb85:
  %t514 = load i32, ptr %l275, !tbaa !23
  store i32 %t514, ptr %l30, !tbaa !23
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load { i64, [4 x i64] }, ptr %l29
  %t517 = load i32, ptr %l30, !tbaa !23
  %t518 = load i32, ptr %l17, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t519
  %t520 = getelementptr { i64, [8 x i64] }, ptr %t519, i32 0, i32 0
  store i64 2, ptr %t520
  %t522 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t516, 0
  %t524 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t522, i32 %t517, 1
  %t526 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t524, i32 %t518, 2
  %t527 = getelementptr { i64, [8 x i64] }, ptr %t519, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t526, ptr %t527
  %t528 = load { i64, [8 x i64] }, ptr %t519
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t515, { i64, [8 x i64] } %t528)
  br label %bb86
bb86:
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t532 = load i32, ptr %l30, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t531, i32 %t532)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s7)
  br label %bb88
bb88:
  %t535 = load i64, ptr %l27, !tbaa !24
  %t537 = add i64 %t535, 1
  store i64 %t537, ptr %l27, !tbaa !24
  br label %bb76
bb89:
  br label %bb126
bb90:
  store %olang.scope zeroinitializer, ptr %s10
  %t539 = load ptr, ptr %l0, !tbaa !29
  store ptr %t539, ptr %l286, !tbaa !29
  %t540 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t540, ptr %l287, !tbaa !23
  %t541 = load ptr, ptr %l0, !tbaa !29
  store ptr %t541, ptr %l288, !tbaa !29
  %t542 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t542, ptr %l289
  %t544 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s10, ptr %l289)
  store %"compiler/lower:pl" %t544, ptr %l291
  br label %bb92
bb91:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load i32, ptr %l3, !tbaa !23
  %t549 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t545, i32 %t546)
  store i32 %t549, ptr %l340
  br label %bb105
bb92:
  %t550 = load ptr, ptr %l288, !tbaa !29
  %t551 = load %"compiler/lower:pl", ptr %l291
  %t552 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s10, ptr %t550, %"compiler/lower:pl" %t551)
  store %"compiler/mir:Lvalue" %t552, ptr %l292
  br label %bb93
bb93:
  store { i64, [15 x i64] } zeroinitializer, ptr %t553
  %t554 = getelementptr { i64, [15 x i64] }, ptr %t553, i32 0, i32 0
  store i64 5, ptr %t554
  %t555 = load %"compiler/mir:Lvalue", ptr %l292
  %t556 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t555, 0
  %t557 = getelementptr { i64, [15 x i64] }, ptr %t553, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t556, ptr %t557
  %t558 = load { i64, [15 x i64] }, ptr %t553
  %t559 = load %"compiler/source:Span", ptr %l4
  %t560 = load ptr, ptr %l286, !tbaa !29
  %t561 = load i32, ptr %l287, !tbaa !23
  %t564 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t560, i32 %t561, { i64, [15 x i64] } %t558, %"compiler/source:Span" %t559)
  store { i64, [4 x i64] } %t564, ptr %l295
  br label %bb94
bb94:
  %t565 = load { i64, [4 x i64] }, ptr %l295
  store { i64, [4 x i64] } %t565, ptr %l31
  %t566 = load ptr, ptr %l0, !tbaa !29
  store ptr %t566, ptr %l296, !tbaa !29
  %t567 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t567, ptr %l297, !tbaa !23
  %t568 = load ptr, ptr %l0, !tbaa !29
  store ptr %t568, ptr %l298, !tbaa !29
  %t569 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t569, ptr %l299
  %t571 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s10, ptr %l299)
  store %"compiler/lower:pl" %t571, ptr %l301
  br label %bb95
bb95:
  %t572 = load ptr, ptr %l298, !tbaa !29
  %t573 = load %"compiler/lower:pl", ptr %l301
  %t574 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s10, ptr %t572, %"compiler/lower:pl" %t573)
  store %"compiler/mir:Lvalue" %t574, ptr %l302
  br label %bb96
bb96:
  store { i64, [15 x i64] } zeroinitializer, ptr %t575
  %t576 = getelementptr { i64, [15 x i64] }, ptr %t575, i32 0, i32 0
  store i64 5, ptr %t576
  %t577 = load %"compiler/mir:Lvalue", ptr %l302
  %t578 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t577, 0
  %t579 = getelementptr { i64, [15 x i64] }, ptr %t575, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t578, ptr %t579
  %t580 = load { i64, [15 x i64] }, ptr %t575
  %t581 = load %"compiler/source:Span", ptr %l4
  %t582 = load ptr, ptr %l296, !tbaa !29
  %t583 = load i32, ptr %l297, !tbaa !23
  %t586 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t582, i32 %t583, { i64, [15 x i64] } %t580, %"compiler/source:Span" %t581)
  store { i64, [4 x i64] } %t586, ptr %l305
  br label %bb97
bb97:
  %t587 = load { i64, [4 x i64] }, ptr %l305
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t590 = load { i64, [4 x i64] }, ptr %l31
  %t592 = mul i64 2, 40
  %t593 = call ptr @__olang_scope_alloc_zeroed(ptr %s10, i64 %t592)
  %t594 = insertvalue { i64, ptr } undef, i64 2, 0
  %t595 = insertvalue { i64, ptr } %t594, ptr %t593, 1
  store { i64, ptr } %t595, ptr %l311, !tbaa !27
  %t597 = getelementptr { i64, ptr }, ptr %l311, i32 0, i32 1
  %t598 = load ptr, ptr %t597, !tbaa !27
  %t599 = getelementptr { i64, [4 x i64] }, ptr %t598, i64 0
  store { i64, [4 x i64] } %t590, ptr %t599
  %t601 = getelementptr { i64, ptr }, ptr %l311, i32 0, i32 1
  %t602 = load ptr, ptr %t601, !tbaa !27
  %t603 = getelementptr { i64, [4 x i64] }, ptr %t602, i64 1
  store { i64, [4 x i64] } %t587, ptr %t603
  %t604 = load %"compiler/source:Span", ptr %l4
  %t608 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t610 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s10, ptr %t588, i32 13, i32 %t589, { i64, ptr } %t608, %"compiler/source:Span" %t604)
  store { i64, [4 x i64] } %t610, ptr %l313
  br label %bb98
bb98:
  %t611 = load { i64, [4 x i64] }, ptr %l313
  store { i64, [4 x i64] } %t611, ptr %l33
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/lower:lowering", ptr %t612, i32 0, i32 3
  %t616 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t614)
  store i32 %t616, ptr %l316
  br label %bb99
bb99:
  %t617 = load i32, ptr %l316, !tbaa !23
  store i32 %t617, ptr %l34, !tbaa !23
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t619 = load { i64, [4 x i64] }, ptr %l33
  %t620 = load i32, ptr %l34, !tbaa !23
  %t621 = load i32, ptr %l17, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t622
  %t623 = getelementptr { i64, [8 x i64] }, ptr %t622, i32 0, i32 0
  store i64 2, ptr %t623
  %t625 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t619, 0
  %t627 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t625, i32 %t620, 1
  %t629 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t627, i32 %t621, 2
  %t630 = getelementptr { i64, [8 x i64] }, ptr %t622, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t629, ptr %t630
  %t631 = load { i64, [8 x i64] }, ptr %t622
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t618, { i64, [8 x i64] } %t631)
  br label %bb100
bb100:
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t635 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t634, i32 %t635)
  br label %bb101
bb101:
  %t638 = load ptr, ptr %l0, !tbaa !29
  store ptr %t638, ptr %l324, !tbaa !29
  %t639 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t639, ptr %l325, !tbaa !27
  %t640 = load { i64, [4 x i64] }, ptr %l31
  store { i64, [4 x i64] } %t640, ptr %l326
  %t641 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t641, ptr %l327
  %t642 = load ptr, ptr %l0, !tbaa !29
  store ptr %t642, ptr %l328, !tbaa !29
  %t643 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t643, ptr %l329
  %t645 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l329)
  store %"compiler/lower:pl" %t645, ptr %l331
  br label %bb102
bb102:
  %t646 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t646, ptr %l332
  %t648 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l332)
  store %"compiler/lower:pl" %t648, ptr %l334
  br label %bb103
bb103:
  %t649 = load %"compiler/source:Span", ptr %l4
  %t650 = load i32, ptr %l17, !tbaa !23
  %t651 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr null, i32 1
  %t652 = ptrtoint ptr %t651 to i64
  %t654 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 0
  %t655 = load ptr, ptr %l328, !tbaa !29
  store ptr %t655, ptr %t654, !tbaa !28
  %t656 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 1
  %t657 = load %"compiler/lower:pl", ptr %l331
  store %"compiler/lower:pl" %t657, ptr %t656, !tbaa !28
  %t658 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 2
  %t659 = load %"compiler/lower:pl", ptr %l334
  store %"compiler/lower:pl" %t659, ptr %t658, !tbaa !28
  %t660 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 3
  store %"compiler/source:Span" %t649, ptr %t660, !tbaa !28
  %t662 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 4
  store i32 %t650, ptr %t662, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t664 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 5
  store ptr %v0, ptr %t664, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t665 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 6
  store ptr %v1, ptr %t665, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t666 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t653, i32 0, i32 7
  store ptr %v2, ptr %t666, !tbaa !28
  %t667 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_9, 0
  %t668 = insertvalue { ptr, ptr } %t667, ptr %t653, 1
  %t669 = load ptr, ptr %l324, !tbaa !29
  %t670 = load { i64, ptr }, ptr %l325, !tbaa !27
  %t671 = load { i64, [4 x i64] }, ptr %l326
  %t672 = load %"compiler/source:Span", ptr %l327
  %t674 = extractvalue { ptr, ptr } %t668, 0
  %t675 = extractvalue { ptr, ptr } %t668, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %s0, ptr %s10, ptr %t669, { i64, ptr } %t670, { i64, [4 x i64] } %t671, %"compiler/source:Span" %t672, ptr %t674, ptr %t675)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s10)
  br label %bb125
bb105:
  %t676 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t677 = load i32, ptr %l340, !tbaa !23
  %t679 = icmp ne i32 %t677, %t676
  br i1 %t679, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s12
  %t681 = load ptr, ptr %l8, !tbaa !29
  store ptr %t681, ptr %l343, !tbaa !29
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t683 = load i32, ptr %l3, !tbaa !23
  %t686 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t682, i32 %t683)
  store i32 %t686, ptr %l346
  br label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s13
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t688 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s13, ptr %t687, %"compiler/source:Span" %t688, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb123
bb108:
  %t691 = load ptr, ptr %l343, !tbaa !29
  %t692 = load i32, ptr %l346, !tbaa !23
  %t693 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t691, i32 %t692)
  store i32 %t693, ptr %l347
  br label %bb109
bb109:
  %t694 = load i32, ptr %l347, !tbaa !23
  store i32 %t694, ptr %l35, !tbaa !23
  %t695 = load ptr, ptr %l0, !tbaa !29
  store ptr %t695, ptr %l348, !tbaa !29
  store i32 22, ptr %l349
  %t696 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t696, ptr %l350, !tbaa !23
  %t697 = load ptr, ptr %l0, !tbaa !29
  store ptr %t697, ptr %l351, !tbaa !29
  %t698 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t698, ptr %l352
  %t700 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s12, ptr %l352)
  store %"compiler/lower:pl" %t700, ptr %l354
  br label %bb110
bb110:
  %t701 = load ptr, ptr %l351, !tbaa !29
  %t702 = load %"compiler/lower:pl", ptr %l354
  %t703 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s12, ptr %t701, %"compiler/lower:pl" %t702)
  store %"compiler/mir:Lvalue" %t703, ptr %l355
  br label %bb111
bb111:
  store { i64, [4 x i64] } zeroinitializer, ptr %t704
  %t705 = getelementptr { i64, [4 x i64] }, ptr %t704, i32 0, i32 0
  store i64 1, ptr %t705
  %t706 = load %"compiler/mir:Lvalue", ptr %l355
  %t707 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t706, 0
  %t708 = getelementptr { i64, [4 x i64] }, ptr %t704, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t707, ptr %t708
  %t709 = load { i64, [4 x i64] }, ptr %t704
  %t710 = mul i64 1, 40
  %t711 = call ptr @__olang_scope_alloc_zeroed(ptr %s12, i64 %t710)
  %t712 = insertvalue { i64, ptr } undef, i64 1, 0
  %t713 = insertvalue { i64, ptr } %t712, ptr %t711, 1
  store { i64, ptr } %t713, ptr %l357, !tbaa !27
  %t715 = getelementptr { i64, ptr }, ptr %l357, i32 0, i32 1
  %t716 = load ptr, ptr %t715, !tbaa !27
  %t717 = getelementptr { i64, [4 x i64] }, ptr %t716, i64 0
  store { i64, [4 x i64] } %t709, ptr %t717
  %t718 = load %"compiler/source:Span", ptr %l4
  %t719 = load ptr, ptr %l348, !tbaa !29
  %t720 = load i32, ptr %l349, !range !{i32 0, i32 52}
  %t721 = load i32, ptr %l350, !tbaa !23
  %t722 = load { i64, ptr }, ptr %l357, !tbaa !27
  %t724 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s12, ptr %t719, i32 %t720, i32 %t721, { i64, ptr } %t722, %"compiler/source:Span" %t718)
  store { i64, [4 x i64] } %t724, ptr %l359
  br label %bb112
bb112:
  %t725 = load { i64, [4 x i64] }, ptr %l359
  store { i64, [4 x i64] } %t725, ptr %l36
  %t726 = load ptr, ptr %l0, !tbaa !29
  store ptr %t726, ptr %l360, !tbaa !29
  store i32 22, ptr %l361
  %t727 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t727, ptr %l362, !tbaa !23
  %t728 = load ptr, ptr %l0, !tbaa !29
  store ptr %t728, ptr %l363, !tbaa !29
  %t729 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t729, ptr %l364
  %t731 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s12, ptr %l364)
  store %"compiler/lower:pl" %t731, ptr %l366
  br label %bb113
bb113:
  %t732 = load ptr, ptr %l363, !tbaa !29
  %t733 = load %"compiler/lower:pl", ptr %l366
  %t734 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s12, ptr %t732, %"compiler/lower:pl" %t733)
  store %"compiler/mir:Lvalue" %t734, ptr %l367
  br label %bb114
bb114:
  store { i64, [4 x i64] } zeroinitializer, ptr %t735
  %t736 = getelementptr { i64, [4 x i64] }, ptr %t735, i32 0, i32 0
  store i64 1, ptr %t736
  %t737 = load %"compiler/mir:Lvalue", ptr %l367
  %t738 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t737, 0
  %t739 = getelementptr { i64, [4 x i64] }, ptr %t735, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t738, ptr %t739
  %t740 = load { i64, [4 x i64] }, ptr %t735
  %t741 = mul i64 1, 40
  %t742 = call ptr @__olang_scope_alloc_zeroed(ptr %s12, i64 %t741)
  %t743 = insertvalue { i64, ptr } undef, i64 1, 0
  %t744 = insertvalue { i64, ptr } %t743, ptr %t742, 1
  store { i64, ptr } %t744, ptr %l369, !tbaa !27
  %t746 = getelementptr { i64, ptr }, ptr %l369, i32 0, i32 1
  %t747 = load ptr, ptr %t746, !tbaa !27
  %t748 = getelementptr { i64, [4 x i64] }, ptr %t747, i64 0
  store { i64, [4 x i64] } %t740, ptr %t748
  %t749 = load %"compiler/source:Span", ptr %l4
  %t750 = load ptr, ptr %l360, !tbaa !29
  %t751 = load i32, ptr %l361, !range !{i32 0, i32 52}
  %t752 = load i32, ptr %l362, !tbaa !23
  %t753 = load { i64, ptr }, ptr %l369, !tbaa !27
  %t755 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s12, ptr %t750, i32 %t751, i32 %t752, { i64, ptr } %t753, %"compiler/source:Span" %t749)
  store { i64, [4 x i64] } %t755, ptr %l371
  br label %bb115
bb115:
  %t756 = load { i64, [4 x i64] }, ptr %l371
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t758 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t759 = load { i64, [4 x i64] }, ptr %l36
  %t761 = mul i64 2, 40
  %t762 = call ptr @__olang_scope_alloc_zeroed(ptr %s12, i64 %t761)
  %t763 = insertvalue { i64, ptr } undef, i64 2, 0
  %t764 = insertvalue { i64, ptr } %t763, ptr %t762, 1
  store { i64, ptr } %t764, ptr %l377, !tbaa !27
  %t766 = getelementptr { i64, ptr }, ptr %l377, i32 0, i32 1
  %t767 = load ptr, ptr %t766, !tbaa !27
  %t768 = getelementptr { i64, [4 x i64] }, ptr %t767, i64 0
  store { i64, [4 x i64] } %t759, ptr %t768
  %t770 = getelementptr { i64, ptr }, ptr %l377, i32 0, i32 1
  %t771 = load ptr, ptr %t770, !tbaa !27
  %t772 = getelementptr { i64, [4 x i64] }, ptr %t771, i64 1
  store { i64, [4 x i64] } %t756, ptr %t772
  %t773 = load %"compiler/source:Span", ptr %l4
  %t777 = load { i64, ptr }, ptr %l377, !tbaa !27
  %t779 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s12, ptr %t757, i32 13, i32 %t758, { i64, ptr } %t777, %"compiler/source:Span" %t773)
  store { i64, [4 x i64] } %t779, ptr %l379
  br label %bb116
bb116:
  %t780 = load { i64, [4 x i64] }, ptr %l379
  store { i64, [4 x i64] } %t780, ptr %l38
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t783 = getelementptr %"compiler/lower:lowering", ptr %t781, i32 0, i32 3
  %t785 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t783)
  store i32 %t785, ptr %l382
  br label %bb117
bb117:
  %t786 = load i32, ptr %l382, !tbaa !23
  store i32 %t786, ptr %l39, !tbaa !23
  %t787 = load ptr, ptr %l0, !tbaa !29
  %t788 = load { i64, [4 x i64] }, ptr %l38
  %t789 = load i32, ptr %l39, !tbaa !23
  %t790 = load i32, ptr %l17, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t791
  %t792 = getelementptr { i64, [8 x i64] }, ptr %t791, i32 0, i32 0
  store i64 2, ptr %t792
  %t794 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t788, 0
  %t796 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t794, i32 %t789, 1
  %t798 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t796, i32 %t790, 2
  %t799 = getelementptr { i64, [8 x i64] }, ptr %t791, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t798, ptr %t799
  %t800 = load { i64, [8 x i64] }, ptr %t791
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t787, { i64, [8 x i64] } %t800)
  br label %bb118
bb118:
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t804 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t803, i32 %t804)
  br label %bb119
bb119:
  %t807 = load ptr, ptr %l0, !tbaa !29
  store ptr %t807, ptr %l390, !tbaa !29
  %t808 = load { i64, [4 x i64] }, ptr %l36
  store { i64, [4 x i64] } %t808, ptr %l391
  %t809 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t809, ptr %l392
  %t810 = load ptr, ptr %l0, !tbaa !29
  store ptr %t810, ptr %l393, !tbaa !29
  %t811 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t811, ptr %l394
  %t813 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l394)
  store %"compiler/lower:pl" %t813, ptr %l396
  br label %bb120
bb120:
  %t814 = load %"compiler/lower:pl", ptr %l2
  store %"compiler/lower:pl" %t814, ptr %l397
  %t816 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l397)
  store %"compiler/lower:pl" %t816, ptr %l399
  br label %bb121
bb121:
  %t817 = load i32, ptr %l35, !tbaa !23
  %t818 = load %"compiler/source:Span", ptr %l4
  %t819 = load i32, ptr %l17, !tbaa !23
  %t820 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr null, i32 1
  %t821 = ptrtoint ptr %t820 to i64
  %t822 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t821, i64 8)
  %t823 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 0
  %t824 = load ptr, ptr %l393, !tbaa !29
  store ptr %t824, ptr %t823, !tbaa !28
  %t825 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 1
  %t826 = load %"compiler/lower:pl", ptr %l396
  store %"compiler/lower:pl" %t826, ptr %t825, !tbaa !28
  %t827 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 2
  %t828 = load %"compiler/lower:pl", ptr %l399
  store %"compiler/lower:pl" %t828, ptr %t827, !tbaa !28
  %t829 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 3
  store i32 %t817, ptr %t829, !tbaa !28
  %t831 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 4
  store %"compiler/source:Span" %t818, ptr %t831, !tbaa !28
  %t833 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 5
  store i32 %t819, ptr %t833, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t835 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 6
  store ptr %v0, ptr %t835, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t836 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 7
  store ptr %v1, ptr %t836, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t837 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %t822, i32 0, i32 8
  store ptr %v2, ptr %t837, !tbaa !28
  %t838 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_11, 0
  %t839 = insertvalue { ptr, ptr } %t838, ptr %t822, 1
  %t840 = load ptr, ptr @__olang_prog_scope
  %t841 = load ptr, ptr %l390, !tbaa !29
  %t842 = load { i64, [4 x i64] }, ptr %l391
  %t843 = load %"compiler/source:Span", ptr %l392
  %t845 = extractvalue { ptr, ptr } %t839, 0
  %t846 = extractvalue { ptr, ptr } %t839, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %t840, ptr %t841, { i64, [4 x i64] } %t842, %"compiler/source:Span" %t843, ptr %t845, ptr %t846)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s12)
  br label %bb124
bb123:
  call void @__olang_scope_close(ptr %s13)
  br label %bb124
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  %t847 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t847, ptr %l18)
  br label %bb127
bb127:
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t851 = load i32, ptr %l17, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t850, i32 %t851)
  br label %bb128
bb128:
  %t854 = load ptr, ptr %l0, !tbaa !29
  store ptr %t854, ptr %l410, !tbaa !29
  %t855 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t855, ptr %l411
  %t856 = load i32, ptr %l16, !tbaa !23
  %t858 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t856)
  store %"compiler/mir:Lvalue" %t858, ptr %l413
  br label %bb129
bb129:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t860 = load %"compiler/source:Span", ptr %l4
  %t863 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %t859, i1 false, %"compiler/source:Span" %t860)
  store { i64, [4 x i64] } %t863, ptr %l416
  br label %bb130
bb130:
  store { i64, [15 x i64] } zeroinitializer, ptr %t864
  %t865 = getelementptr { i64, [15 x i64] }, ptr %t864, i32 0, i32 0
  store i64 0, ptr %t865
  %t866 = load { i64, [4 x i64] }, ptr %l416
  %t867 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t866, 0
  %t868 = getelementptr { i64, [15 x i64] }, ptr %t864, i32 0, i32 1
  store { { i64, [4 x i64] } } %t867, ptr %t868
  %t869 = load { i64, [15 x i64] }, ptr %t864
  store { i64, [21 x i64] } zeroinitializer, ptr %t870
  %t871 = getelementptr { i64, [21 x i64] }, ptr %t870, i32 0, i32 0
  store i64 0, ptr %t871
  %t872 = load %"compiler/source:Span", ptr %l411
  %t873 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t872, 0
  %t874 = load %"compiler/mir:Lvalue", ptr %l413
  %t875 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t873, %"compiler/mir:Lvalue" %t874, 1
  %t877 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t875, { i64, [15 x i64] } %t869, 2
  %t878 = getelementptr { i64, [21 x i64] }, ptr %t870, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t877, ptr %t878
  %t879 = load { i64, [21 x i64] }, ptr %t870
  %t881 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t879, ptr %t881
  %t882 = load ptr, ptr %l410, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t882, ptr %t881)
  br label %bb131
bb131:
  %t884 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t884, ptr %l18)
  br label %bb132
bb132:
  %t887 = load ptr, ptr %l0, !tbaa !29
  %t888 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t887, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t888)
  br label %bb133
bb133:
  %t891 = load i32, ptr %l16, !tbaa !23
  %t893 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t891)
  store %"compiler/mir:Lvalue" %t893, ptr %l425
  br label %bb134
bb134:
  store { i64, [4 x i64] } zeroinitializer, ptr %t894
  %t895 = getelementptr { i64, [4 x i64] }, ptr %t894, i32 0, i32 0
  store i64 1, ptr %t895
  %t896 = load %"compiler/mir:Lvalue", ptr %l425
  %t897 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t896, 0
  %t898 = getelementptr { i64, [4 x i64] }, ptr %t894, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t897, ptr %t898
  %t899 = load { i64, [4 x i64] }, ptr %t894
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t899, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca { { i64, [7 x i64] }, i32 }
  %l9 = alloca { i64, [7 x i64] }
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i32
  %l14 = alloca i32
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca { i64, [4 x i64] }
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca %"compiler/lower:pl"
  %l43 = alloca %"compiler/lower:pl"
  %l46 = alloca %"compiler/lower:pl"
  %l48 = alloca %"compiler/lower:pl"
  %l53 = alloca i32
  %l55 = alloca i64
  %l58 = alloca i64
  %l65 = alloca { { i64, [7 x i64] }, i32 }
  %l68 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca { i64, [4 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca ptr
  %l82 = alloca %"compiler/lower:pl"
  %l84 = alloca %"compiler/lower:pl"
  %l85 = alloca %"compiler/mir:Lvalue"
  %l89 = alloca { i64, [4 x i64] }
  %l90 = alloca ptr
  %l91 = alloca i32
  %l92 = alloca ptr
  %l93 = alloca %"compiler/lower:pl"
  %l95 = alloca %"compiler/lower:pl"
  %l96 = alloca %"compiler/mir:Lvalue"
  %l100 = alloca { i64, [4 x i64] }
  %l103 = alloca i32
  %l107 = alloca i32
  %l109 = alloca ptr
  %l110 = alloca { i64, [7 x i64] }
  %l114 = alloca { i64, ptr }
  %l115 = alloca %"compiler/mir:Range"
  %l116 = alloca ptr
  %l120 = alloca i64
  %l121 = alloca %"compiler/mir:Range"
  %l123 = alloca %"compiler/mir:Lvalue"
  %l127 = alloca %"compiler/mir:Call"
  %l128 = alloca i32
  %l136 = alloca %"compiler/mir:Lvalue"
  %l140 = alloca i32
  %l143 = alloca ptr
  %l144 = alloca ptr
  %l145 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca %"compiler/lower:pl"
  %l149 = alloca %"compiler/lower:pl"
  %l150 = alloca %"compiler/mir:Lvalue"
  %l154 = alloca { i64, [4 x i64] }
  %l157 = alloca { i64, [4 x i64] }
  %l160 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i32
  %l163 = alloca ptr
  %l164 = alloca %"compiler/lower:pl"
  %l166 = alloca %"compiler/lower:pl"
  %l167 = alloca %"compiler/mir:Lvalue"
  %l171 = alloca { i64, [4 x i64] }
  %l174 = alloca i1
  %l175 = alloca i1
  %l178 = alloca i64
  %l180 = alloca ptr
  %l181 = alloca i32
  %l182 = alloca i32
  %l183 = alloca { i64, [4 x i64] }
  %l185 = alloca { i64, [4 x i64] }
  %l186 = alloca { i64, ptr }
  %l188 = alloca { i64, [4 x i64] }
  %l193 = alloca { i64, [4 x i64] }
  %l194 = alloca ptr
  %l195 = alloca ptr
  %l196 = alloca i32
  %l197 = alloca i32
  %l198 = alloca { i64, [4 x i64] }
  %l199 = alloca ptr
  %l204 = alloca { i64, [4 x i64] }
  %l206 = alloca { i64, [4 x i64] }
  %l207 = alloca { i64, ptr }
  %l209 = alloca { i64, [4 x i64] }
  %l211 = alloca { i64, [4 x i64] }
  %l212 = alloca ptr
  %l217 = alloca { i64, [4 x i64] }
  %l219 = alloca { i64, [4 x i64] }
  %l222 = alloca i1
  %l223 = alloca i1
  %l224 = alloca ptr
  %l227 = alloca i32
  %l228 = alloca i32
  %l231 = alloca ptr
  %l232 = alloca ptr
  %l233 = alloca %"compiler/lower:pl"
  %l235 = alloca %"compiler/lower:pl"
  %l236 = alloca %"compiler/mir:Lvalue"
  %l240 = alloca i32
  %l241 = alloca ptr
  %l244 = alloca %"compiler/lower:pl"
  %l247 = alloca i32
  %l249 = alloca { i64, [4 x i64] }
  %l252 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca %"compiler/lower:pl"
  %l257 = alloca %"compiler/lower:pl"
  %l258 = alloca %"compiler/mir:Lvalue"
  %l262 = alloca i32
  %l266 = alloca i32
  %l267 = alloca ptr
  %l268 = alloca %"compiler/source:Span"
  %l270 = alloca %"compiler/mir:Lvalue"
  %l272 = alloca { i64, [4 x i64] }
  %l276 = alloca ptr
  %l277 = alloca i32
  %l278 = alloca i32
  %l280 = alloca %"compiler/mir:Lvalue"
  %l284 = alloca { i64, ptr }
  %l286 = alloca { i64, [4 x i64] }
  %l289 = alloca i32
  %l292 = alloca i32
  %l300 = alloca ptr
  %l303 = alloca %"compiler/lower:pl"
  %l306 = alloca i32
  %l308 = alloca { i64, [4 x i64] }
  %l309 = alloca ptr
  %l310 = alloca %"compiler/source:Span"
  %l312 = alloca %"compiler/mir:Lvalue"
  %l322 = alloca %"compiler/mir:Lvalue"
  %l326 = alloca ptr
  %l327 = alloca i32
  %l328 = alloca i32
  %l329 = alloca ptr
  %l330 = alloca %"compiler/lower:pl"
  %l332 = alloca %"compiler/lower:pl"
  %l335 = alloca { i64, [4 x i64] }
  %l336 = alloca { i64, ptr }
  %l340 = alloca { i64, [4 x i64] }
  %l344 = alloca i32
  %l345 = alloca ptr
  %l346 = alloca %"compiler/source:Span"
  %l348 = alloca %"compiler/mir:Lvalue"
  %l350 = alloca { i64, [4 x i64] }
  %l356 = alloca { i64, ptr }
  %l360 = alloca i1
  %l363 = alloca { i64, ptr }
  %l367 = alloca i1
  %l374 = alloca i64
  %l377 = alloca i64
  %l395 = alloca ptr
  %l396 = alloca i32
  %l397 = alloca ptr
  %l398 = alloca ptr
  %l399 = alloca %"compiler/lower:pl"
  %l401 = alloca %"compiler/lower:pl"
  %l405 = alloca %"compiler/lower:pl"
  %l409 = alloca { i64, [4 x i64] }
  %l414 = alloca ptr
  %l415 = alloca i32
  %l416 = alloca ptr
  %l417 = alloca %"compiler/lower:pl"
  %l419 = alloca %"compiler/lower:pl"
  %l420 = alloca %"compiler/mir:Lvalue"
  %l423 = alloca { i64, [4 x i64] }
  %l424 = alloca ptr
  %l425 = alloca i32
  %l429 = alloca { i64, [4 x i64] }
  %l431 = alloca ptr
  %l432 = alloca { i64, ptr }
  %l433 = alloca { i64, [4 x i64] }
  %l434 = alloca %"compiler/source:Span"
  %l435 = alloca ptr
  %l436 = alloca i32
  %l437 = alloca %"compiler/lower:pl"
  %l439 = alloca %"compiler/lower:pl"
  %l444 = alloca i32
  %l447 = alloca ptr
  %l450 = alloca i32
  %l451 = alloca i32
  %l452 = alloca ptr
  %l453 = alloca i32
  %l454 = alloca i32
  %l455 = alloca ptr
  %l456 = alloca %"compiler/lower:pl"
  %l458 = alloca %"compiler/lower:pl"
  %l459 = alloca %"compiler/mir:Lvalue"
  %l461 = alloca { i64, ptr }
  %l463 = alloca { i64, [4 x i64] }
  %l464 = alloca ptr
  %l465 = alloca { i64, [4 x i64] }
  %l466 = alloca %"compiler/source:Span"
  %l467 = alloca ptr
  %l468 = alloca i32
  %l469 = alloca %"compiler/lower:pl"
  %l471 = alloca %"compiler/lower:pl"
  %l478 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t91 = alloca { i64, [15 x i64] }, align 8
  %t109 = alloca { i64, [4 x i64] }, align 8
  %t115 = alloca { i64, [15 x i64] }, align 8
  %t194 = alloca { i64, [8 x i64] }, align 8
  %t211 = alloca { i64, [4 x i64] }, align 8
  %t238 = alloca { i64, [4 x i64] }, align 8
  %t244 = alloca { i64, [15 x i64] }, align 8
  %t279 = alloca { i64, [4 x i64] }, align 8
  %t285 = alloca { i64, [15 x i64] }, align 8
  %t438 = alloca { i64, [4 x i64] }, align 8
  %t484 = alloca { i64, [4 x i64] }, align 8
  %t514 = alloca { i64, [15 x i64] }, align 8
  %t520 = alloca { i64, [21 x i64] }, align 8
  %t539 = alloca { i64, [4 x i64] }, align 8
  %t546 = alloca { i64, [4 x i64] }, align 8
  %t589 = alloca { i64, [8 x i64] }, align 8
  %t629 = alloca { i64, [15 x i64] }, align 8
  %t635 = alloca { i64, [21 x i64] }, align 8
  %t660 = alloca { i64, [4 x i64] }, align 8
  %t722 = alloca { i64, [15 x i64] }, align 8
  %t728 = alloca { i64, [21 x i64] }, align 8
  %t877 = alloca { i64, [15 x i64] }, align 8
  %t916 = alloca { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, align 8
  %t964 = alloca { i64, [4 x i64] }, align 8
  %t998 = alloca { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, align 8
  %t1022 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l40, !tbaa !29
  %t2 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t2, ptr %l41
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l41)
  store %"compiler/lower:pl" %t4, ptr %l43
  br label %bb1
bb1:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load %"compiler/source:Span", ptr %l3
  %t7 = load ptr, ptr %l40, !tbaa !29
  %t8 = load %"compiler/lower:pl", ptr %l43
  %t11 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v1, ptr %v1, ptr %t7, %"compiler/lower:pl" %t8, i32 %t5, %"compiler/source:Span" %t6)
  store %"compiler/lower:pl" %t11, ptr %l46
  br label %bb2
bb2:
  %t13 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l46)
  store %"compiler/lower:pl" %t13, ptr %l48
  br label %bb3
bb3:
  %t14 = load %"compiler/lower:pl", ptr %l48
  store %"compiler/lower:pl" %t14, ptr %l1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 2
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l5, !tbaa !29
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l53
  br label %bb4
bb4:
  %t25 = load i32, ptr %l53, !tbaa !23
  store i32 %t25, ptr %l6, !tbaa !23
  %t26 = load i1, ptr %l4, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %l55, !tbaa !24
  br label %bb8
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emethodBody(ptr %v0, ptr %s0, ptr %s0, ptr %t28, i32 %t29, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i64 %t32, ptr %l58
  br label %bb7
bb7:
  %t33 = load i64, ptr %l58, !tbaa !24
  store i64 %t33, ptr %l55, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l55, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = trunc i64 %t40 to i32
  %t46 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %t39, i32 %t42)
  store { { i64, [7 x i64] }, i32 } %t46, ptr %l65
  br label %bb11
bb10:
  br label %bb35
bb11:
  %t47 = load { { i64, [7 x i64] }, i32 }, ptr %l65
  store { { i64, [7 x i64] }, i32 } %t47, ptr %l8
  %t48 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l8, i32 0, i32 0
  %t49 = load { i64, [7 x i64] }, ptr %t48
  store { i64, [7 x i64] } %t49, ptr %l9
  %t51 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l8, i32 0, i32 1
  %t52 = load i32, ptr %t51, !tbaa !23
  store i32 %t52, ptr %l10, !tbaa !23
  %t54 = load ptr, ptr %l5, !tbaa !29
  store ptr %t54, ptr %l68, !tbaa !29
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t56 = load i32, ptr %l10, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l71
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l68, !tbaa !29
  %t61 = load i32, ptr %l71, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t60, i32 %t61)
  store { i64, ptr } %t62, ptr %l72
  br label %bb13
bb13:
  %t63 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t63, ptr %l73, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i32, ptr %t65, i64 0
  %t67 = load i32, ptr %t66, !tbaa !33
  store i32 %t67, ptr %l11, !tbaa !23
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t70 = load i32, ptr %l11, !tbaa !23
  %t73 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l77
  br label %bb14
bb14:
  %t74 = load i1, ptr %l77, !tbaa !21
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l79, !tbaa !29
  %t76 = load i32, ptr %l11, !tbaa !23
  store i32 %t76, ptr %l80, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l81, !tbaa !29
  %t78 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t78, ptr %l82
  %t80 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l82)
  store %"compiler/lower:pl" %t80, ptr %l84
  br label %bb17
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l90, !tbaa !29
  %t82 = load i32, ptr %l11, !tbaa !23
  store i32 %t82, ptr %l91, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l92, !tbaa !29
  %t84 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t84, ptr %l93
  %t86 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l93)
  store %"compiler/lower:pl" %t86, ptr %l95
  br label %bb20
bb17:
  %t87 = load ptr, ptr %l81, !tbaa !29
  %t88 = load %"compiler/lower:pl", ptr %l84
  %t89 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t87, %"compiler/lower:pl" %t88)
  store %"compiler/mir:Lvalue" %t89, ptr %l85
  br label %bb18
bb18:
  %t90 = load i32, ptr %l11, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [15 x i64] }, ptr %t91, i32 0, i32 0
  store i64 1, ptr %t92
  %t93 = load %"compiler/mir:Lvalue", ptr %l85
  %t94 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t93, 0
  %t96 = insertvalue { %"compiler/mir:Lvalue", i32 } %t94, i32 %t90, 1
  %t97 = getelementptr { i64, [15 x i64] }, ptr %t91, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t96, ptr %t97
  %t98 = load { i64, [15 x i64] }, ptr %t91
  %t99 = load %"compiler/source:Span", ptr %l3
  %t100 = load ptr, ptr %l79, !tbaa !29
  %t101 = load i32, ptr %l80, !tbaa !23
  %t104 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t100, i32 %t101, { i64, [15 x i64] } %t98, %"compiler/source:Span" %t99)
  store { i64, [4 x i64] } %t104, ptr %l89
  br label %bb19
bb19:
  %t105 = load { i64, [4 x i64] }, ptr %l89
  store { i64, [4 x i64] } %t105, ptr %l78
  br label %bb23
bb20:
  %t106 = load ptr, ptr %l92, !tbaa !29
  %t107 = load %"compiler/lower:pl", ptr %l95
  %t108 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t106, %"compiler/lower:pl" %t107)
  store %"compiler/mir:Lvalue" %t108, ptr %l96
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 0
  store i64 1, ptr %t110
  %t111 = load %"compiler/mir:Lvalue", ptr %l96
  %t112 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t111, 0
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t112, ptr %t113
  %t114 = load { i64, [4 x i64] }, ptr %t109
  store { i64, [15 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [15 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t118 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t114, 0
  %t119 = getelementptr { i64, [15 x i64] }, ptr %t115, i32 0, i32 1
  store { { i64, [4 x i64] } } %t118, ptr %t119
  %t120 = load { i64, [15 x i64] }, ptr %t115
  %t121 = load %"compiler/source:Span", ptr %l3
  %t122 = load ptr, ptr %l90, !tbaa !29
  %t123 = load i32, ptr %l91, !tbaa !23
  %t126 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t122, i32 %t123, { i64, [15 x i64] } %t120, %"compiler/source:Span" %t121)
  store { i64, [4 x i64] } %t126, ptr %l100
  br label %bb22
bb22:
  %t127 = load { i64, [4 x i64] }, ptr %l100
  store { i64, [4 x i64] } %t127, ptr %l78
  br label %bb23
bb23:
  %t128 = load { i64, [4 x i64] }, ptr %l78
  store { i64, [4 x i64] } %t128, ptr %l12
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/lower:lowering", ptr %t129, i32 0, i32 3
  %t133 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t131)
  store i32 %t133, ptr %l103
  br label %bb24
bb24:
  %t134 = load i32, ptr %l103, !tbaa !23
  store i32 %t134, ptr %l13, !tbaa !23
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t137 = load %"compiler/source:Span", ptr %l3
  %t141 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t135, i32 %t136, %"compiler/source:Span" %t137)
  store i32 %t141, ptr %l107
  br label %bb25
bb25:
  %t142 = load i32, ptr %l107, !tbaa !23
  store i32 %t142, ptr %l14, !tbaa !23
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/lower:lowering", ptr %t143, i32 0, i32 3
  store ptr %t145, ptr %l109, !tbaa !29
  %t146 = load { i64, [7 x i64] }, ptr %l9
  store { i64, [7 x i64] } %t146, ptr %l110
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/lower:lowering", ptr %t147, i32 0, i32 3
  %t150 = load { i64, [4 x i64] }, ptr %l12
  %t151 = mul i64 1, 40
  %t152 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 1, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l114, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, [4 x i64] }, ptr %t157, i64 0
  store { i64, [4 x i64] } %t150, ptr %t158
  %t160 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t161 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s1, ptr %t149, { i64, ptr } %t160)
  store %"compiler/mir:Range" %t161, ptr %l115
  br label %bb26
bb26:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l116, !tbaa !29
  %t163 = load ptr, ptr %l5, !tbaa !29
  %t164 = load { i64, [7 x i64] }, ptr %l9
  %t165 = load i32, ptr %l10, !tbaa !23
  %t169 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t163, { i64, [7 x i64] } %t164, i32 %t165)
  store i64 %t169, ptr %l120
  br label %bb27
bb27:
  %t170 = load ptr, ptr %l116, !tbaa !29
  %t171 = load i64, ptr %l120, !tbaa !24
  %t172 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %t170, i64 %t171, i32 -1)
  store %"compiler/mir:Range" %t172, ptr %l121
  br label %bb28
bb28:
  %t173 = load i32, ptr %l14, !tbaa !23
  %t175 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t173)
  store %"compiler/mir:Lvalue" %t175, ptr %l123
  br label %bb29
bb29:
  %t176 = load i32, ptr %l13, !tbaa !23
  %t177 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t178 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t179 = load { i64, [7 x i64] }, ptr %l110
  %t180 = load %"compiler/mir:Range", ptr %l115
  %t181 = load %"compiler/mir:Range", ptr %l121
  %t182 = load %"compiler/mir:Lvalue", ptr %l123
  %t186 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s1, { i64, [7 x i64] } %t179, %"compiler/mir:Range" %t180, %"compiler/mir:Range" %t181, %"compiler/mir:Lvalue" %t182, i1 true, i32 %t176, i32 %t177, i32 %t178)
  store %"compiler/mir:Call" %t186, ptr %l127
  br label %bb30
bb30:
  %t187 = load ptr, ptr %l109, !tbaa !29
  %t188 = load %"compiler/mir:Call", ptr %l127
  %t189 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t187, %"compiler/mir:Call" %t188)
  store i32 %t189, ptr %l128
  br label %bb31
bb31:
  %t190 = load i32, ptr %l128, !tbaa !23
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l3
  store { i64, [8 x i64] } zeroinitializer, ptr %t194
  %t195 = getelementptr { i64, [8 x i64] }, ptr %t194, i32 0, i32 0
  store i64 4, ptr %t195
  %t197 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t192, 0
  %t199 = insertvalue { %"compiler/source:Span", i32 } %t197, i32 %t190, 1
  %t200 = getelementptr { i64, [8 x i64] }, ptr %t194, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t199, ptr %t200
  %t201 = load { i64, [8 x i64] }, ptr %t194
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t191, { i64, [8 x i64] } %t201)
  br label %bb32
bb32:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t204, i32 %t205)
  br label %bb33
bb33:
  %t208 = load i32, ptr %l14, !tbaa !23
  %t210 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t208)
  store %"compiler/mir:Lvalue" %t210, ptr %l136
  br label %bb34
bb34:
  store { i64, [4 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 0
  store i64 1, ptr %t212
  %t213 = load %"compiler/mir:Lvalue", ptr %l136
  %t214 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t213, 0
  %t215 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t214, ptr %t215
  %t216 = load { i64, [4 x i64] }, ptr %t211
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t216, ptr %rv
  br label %ret
bb35:
  %t218 = load ptr, ptr %l5, !tbaa !29
  %t219 = load i32, ptr %l2, !tbaa !23
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t218, i32 %t219)
  store i32 %t222, ptr %l140
  br label %bb36
bb36:
  %t223 = load i32, ptr %l140, !range !{i32 0, i32 33}
  %t225 = trunc i64 32 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s2
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l143, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l144, !tbaa !29
  %t230 = load i32, ptr %l2, !tbaa !23
  store i32 %t230, ptr %l145, !tbaa !23
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l146, !tbaa !29
  %t232 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t232, ptr %l147
  %t234 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l147)
  store %"compiler/lower:pl" %t234, ptr %l149
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t235 = load ptr, ptr %l146, !tbaa !29
  %t236 = load %"compiler/lower:pl", ptr %l149
  %t237 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t235, %"compiler/lower:pl" %t236)
  store %"compiler/mir:Lvalue" %t237, ptr %l150
  br label %bb40
bb40:
  store { i64, [4 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 0
  store i64 1, ptr %t239
  %t240 = load %"compiler/mir:Lvalue", ptr %l150
  %t241 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t240, 0
  %t242 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t241, ptr %t242
  %t243 = load { i64, [4 x i64] }, ptr %t238
  store { i64, [15 x i64] } zeroinitializer, ptr %t244
  %t245 = getelementptr { i64, [15 x i64] }, ptr %t244, i32 0, i32 0
  store i64 0, ptr %t245
  %t247 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t243, 0
  %t248 = getelementptr { i64, [15 x i64] }, ptr %t244, i32 0, i32 1
  store { { i64, [4 x i64] } } %t247, ptr %t248
  %t249 = load { i64, [15 x i64] }, ptr %t244
  %t250 = load %"compiler/source:Span", ptr %l3
  %t251 = load ptr, ptr %l144, !tbaa !29
  %t252 = load i32, ptr %l145, !tbaa !23
  %t255 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t251, i32 %t252, { i64, [15 x i64] } %t249, %"compiler/source:Span" %t250)
  store { i64, [4 x i64] } %t255, ptr %l154
  br label %bb41
bb41:
  %t256 = load i32, ptr %l2, !tbaa !23
  %t257 = load %"compiler/source:Span", ptr %l3
  %t258 = load ptr, ptr %l143, !tbaa !29
  %t259 = load { i64, [4 x i64] }, ptr %l154
  %t262 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashErr(ptr %v0, ptr %t258, { i64, [4 x i64] } %t259, i32 %t256, %"compiler/source:Span" %t257)
  store { i64, [4 x i64] } %t262, ptr %l157
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t263 = load { i64, [4 x i64] }, ptr %l157
  store { i64, [4 x i64] } %t263, ptr %rv
  br label %ret
bb43:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l2, !tbaa !23
  %t268 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2escalar(ptr %v0, ptr %t264, i32 %t265)
  store i1 %t268, ptr %l160
  br label %bb44
bb44:
  %t269 = load i1, ptr %l160, !tbaa !21
  br i1 %t269, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s3
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l161, !tbaa !29
  %t271 = load i32, ptr %l2, !tbaa !23
  store i32 %t271, ptr %l162, !tbaa !23
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l163, !tbaa !29
  %t273 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t273, ptr %l164
  %t275 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l164)
  store %"compiler/lower:pl" %t275, ptr %l166
  br label %bb47
bb46:
  br label %bb67
bb47:
  %t276 = load ptr, ptr %l163, !tbaa !29
  %t277 = load %"compiler/lower:pl", ptr %l166
  %t278 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t276, %"compiler/lower:pl" %t277)
  store %"compiler/mir:Lvalue" %t278, ptr %l167
  br label %bb48
bb48:
  store { i64, [4 x i64] } zeroinitializer, ptr %t279
  %t280 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 0
  store i64 1, ptr %t280
  %t281 = load %"compiler/mir:Lvalue", ptr %l167
  %t282 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t281, 0
  %t283 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t282, ptr %t283
  %t284 = load { i64, [4 x i64] }, ptr %t279
  store { i64, [15 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [15 x i64] }, ptr %t285, i32 0, i32 0
  store i64 0, ptr %t286
  %t288 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t284, 0
  %t289 = getelementptr { i64, [15 x i64] }, ptr %t285, i32 0, i32 1
  store { { i64, [4 x i64] } } %t288, ptr %t289
  %t290 = load { i64, [15 x i64] }, ptr %t285
  %t291 = load %"compiler/source:Span", ptr %l3
  %t292 = load ptr, ptr %l161, !tbaa !29
  %t293 = load i32, ptr %l162, !tbaa !23
  %t296 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t292, i32 %t293, { i64, [15 x i64] } %t290, %"compiler/source:Span" %t291)
  store { i64, [4 x i64] } %t296, ptr %l171
  br label %bb49
bb49:
  %t297 = load { i64, [4 x i64] }, ptr %l171
  store { i64, [4 x i64] } %t297, ptr %l16
  %t298 = load ptr, ptr %l5, !tbaa !29
  %t299 = load i32, ptr %l6, !tbaa !23
  %t302 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t298, i32 %t299)
  store i1 %t302, ptr %l174
  br label %bb50
bb50:
  %t303 = load i1, ptr %l174, !tbaa !21
  br i1 %t303, label %bb51, label %bb52
bb51:
  %t304 = load ptr, ptr %l5, !tbaa !29
  %t305 = load i32, ptr %l6, !tbaa !23
  %t308 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t304, i32 %t305)
  store i64 %t308, ptr %l178
  br label %bb53
bb52:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb54
bb53:
  %t309 = load i64, ptr %l178, !tbaa !24
  %t310 = icmp sgt i64 %t309, 64
  store i1 %t310, ptr %l175, !tbaa !21
  br label %bb54
bb54:
  %t312 = load i1, ptr %l175, !tbaa !21
  br i1 %t312, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s4
  %t313 = load ptr, ptr %l0, !tbaa !29
  store ptr %t313, ptr %l180, !tbaa !29
  store i32 9, ptr %l181
  %t314 = load i32, ptr %l2, !tbaa !23
  store i32 %t314, ptr %l182, !tbaa !23
  %t315 = load { i64, [4 x i64] }, ptr %l16
  store { i64, [4 x i64] } %t315, ptr %l183
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t316, i64 64)
  store { i64, [4 x i64] } %t318, ptr %l185
  br label %bb57
bb56:
  br label %bb64
bb57:
  %t319 = mul i64 2, 40
  %t320 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t319)
  %t321 = insertvalue { i64, ptr } undef, i64 2, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  store { i64, ptr } %t322, ptr %l186, !tbaa !27
  %t323 = load { i64, [4 x i64] }, ptr %l183
  %t324 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr { i64, [4 x i64] }, ptr %t325, i64 0
  store { i64, [4 x i64] } %t323, ptr %t326
  %t327 = load { i64, [4 x i64] }, ptr %l185
  %t328 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr { i64, [4 x i64] }, ptr %t329, i64 1
  store { i64, [4 x i64] } %t327, ptr %t330
  %t331 = load %"compiler/source:Span", ptr %l3
  %t332 = load ptr, ptr %l180, !tbaa !29
  %t333 = load i32, ptr %l181, !range !{i32 0, i32 52}
  %t334 = load i32, ptr %l182, !tbaa !23
  %t335 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t337 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s4, ptr %t332, i32 %t333, i32 %t334, { i64, ptr } %t335, %"compiler/source:Span" %t331)
  store { i64, [4 x i64] } %t337, ptr %l188
  br label %bb58
bb58:
  %t338 = load { i64, [4 x i64] }, ptr %l188
  store { i64, [4 x i64] } %t338, ptr %l17
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load { i64, [4 x i64] }, ptr %l16
  %t341 = load i32, ptr %l2, !tbaa !23
  %t342 = load %"compiler/source:Span", ptr %l3
  %t347 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t339, { i64, [4 x i64] } %t340, i32 %t341, %"compiler/source:Span" %t342)
  store { i64, [4 x i64] } %t347, ptr %l193
  br label %bb59
bb59:
  %t348 = load { i64, [4 x i64] }, ptr %l193
  %t349 = load ptr, ptr %l0, !tbaa !29
  store ptr %t349, ptr %l194, !tbaa !29
  %t350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t350, ptr %l195, !tbaa !29
  store i32 12, ptr %l196
  %t351 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t351, ptr %l197, !tbaa !23
  store { i64, [4 x i64] } %t348, ptr %l198
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l199, !tbaa !29
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load { i64, [4 x i64] }, ptr %l17
  %t356 = load i32, ptr %l2, !tbaa !23
  %t357 = load %"compiler/source:Span", ptr %l3
  %t362 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t354, { i64, [4 x i64] } %t355, i32 %t356, %"compiler/source:Span" %t357)
  store { i64, [4 x i64] } %t362, ptr %l204
  br label %bb60
bb60:
  %t363 = load %"compiler/source:Span", ptr %l3
  %t364 = load ptr, ptr %l199, !tbaa !29
  %t365 = load { i64, [4 x i64] }, ptr %l204
  %t367 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %t364, { i64, [4 x i64] } %t365, %"compiler/source:Span" %t363)
  store { i64, [4 x i64] } %t367, ptr %l206
  br label %bb61
bb61:
  %t368 = mul i64 2, 40
  %t369 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t368)
  %t370 = insertvalue { i64, ptr } undef, i64 2, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t369, 1
  store { i64, ptr } %t371, ptr %l207, !tbaa !27
  %t372 = load { i64, [4 x i64] }, ptr %l198
  %t373 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr { i64, [4 x i64] }, ptr %t374, i64 0
  store { i64, [4 x i64] } %t372, ptr %t375
  %t376 = load { i64, [4 x i64] }, ptr %l206
  %t377 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr { i64, [4 x i64] }, ptr %t378, i64 1
  store { i64, [4 x i64] } %t376, ptr %t379
  %t380 = load %"compiler/source:Span", ptr %l3
  %t381 = load ptr, ptr %l195, !tbaa !29
  %t382 = load i32, ptr %l196, !range !{i32 0, i32 52}
  %t383 = load i32, ptr %l197, !tbaa !23
  %t384 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t386 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s4, ptr %t381, i32 %t382, i32 %t383, { i64, ptr } %t384, %"compiler/source:Span" %t380)
  store { i64, [4 x i64] } %t386, ptr %l209
  br label %bb62
bb62:
  %t387 = load %"compiler/source:Span", ptr %l3
  %t388 = load ptr, ptr %l194, !tbaa !29
  %t389 = load { i64, [4 x i64] }, ptr %l209
  %t391 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %t388, { i64, [4 x i64] } %t389, %"compiler/source:Span" %t387)
  store { i64, [4 x i64] } %t391, ptr %l211
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t392 = load { i64, [4 x i64] }, ptr %l211
  store { i64, [4 x i64] } %t392, ptr %rv
  br label %ret
bb64:
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l212, !tbaa !29
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load { i64, [4 x i64] }, ptr %l16
  %t396 = load i32, ptr %l2, !tbaa !23
  %t397 = load %"compiler/source:Span", ptr %l3
  %t402 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t394, { i64, [4 x i64] } %t395, i32 %t396, %"compiler/source:Span" %t397)
  store { i64, [4 x i64] } %t402, ptr %l217
  br label %bb65
bb65:
  %t403 = load %"compiler/source:Span", ptr %l3
  %t404 = load ptr, ptr %l212, !tbaa !29
  %t405 = load { i64, [4 x i64] }, ptr %l217
  %t407 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %t404, { i64, [4 x i64] } %t405, %"compiler/source:Span" %t403)
  store { i64, [4 x i64] } %t407, ptr %l219
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t408 = load { i64, [4 x i64] }, ptr %l219
  store { i64, [4 x i64] } %t408, ptr %rv
  br label %ret
bb67:
  %t409 = load ptr, ptr %l5, !tbaa !29
  %t410 = load i32, ptr %l6, !tbaa !23
  %t413 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t409, i32 %t410)
  store i1 %t413, ptr %l222
  br label %bb68
bb68:
  %t414 = load i1, ptr %l222, !tbaa !21
  br i1 %t414, label %bb69, label %bb70
bb69:
  %t415 = load ptr, ptr %l0, !tbaa !29
  store ptr %t415, ptr %l224, !tbaa !29
  %t416 = load ptr, ptr %l5, !tbaa !29
  %t417 = load i32, ptr %l6, !tbaa !23
  %t420 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t416, i32 %t417)
  store i32 %t420, ptr %l227
  br label %bb71
bb70:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb73
bb71:
  %t421 = load ptr, ptr %l224, !tbaa !29
  %t422 = load i32, ptr %l227, !tbaa !23
  %t423 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t421, i32 %t422)
  store i32 %t423, ptr %l228
  br label %bb72
bb72:
  %t424 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t425 = load i32, ptr %l228, !tbaa !23
  %t427 = icmp ne i32 %t425, %t424
  store i1 %t427, ptr %l223, !tbaa !21
  br label %bb73
bb73:
  %t429 = load i1, ptr %l223, !tbaa !21
  br i1 %t429, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s5
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l231, !tbaa !29
  %t431 = load ptr, ptr %l0, !tbaa !29
  store ptr %t431, ptr %l232, !tbaa !29
  %t432 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t432, ptr %l233
  %t434 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s5, ptr %l233)
  store %"compiler/lower:pl" %t434, ptr %l235
  br label %bb76
bb75:
  br label %bb82
bb76:
  %t435 = load ptr, ptr %l232, !tbaa !29
  %t436 = load %"compiler/lower:pl", ptr %l235
  %t437 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s5, ptr %t435, %"compiler/lower:pl" %t436)
  store %"compiler/mir:Lvalue" %t437, ptr %l236
  br label %bb77
bb77:
  store { i64, [4 x i64] } zeroinitializer, ptr %t438
  %t439 = getelementptr { i64, [4 x i64] }, ptr %t438, i32 0, i32 0
  store i64 1, ptr %t439
  %t440 = load %"compiler/mir:Lvalue", ptr %l236
  %t441 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t440, 0
  %t442 = getelementptr { i64, [4 x i64] }, ptr %t438, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t441, ptr %t442
  %t443 = load { i64, [4 x i64] }, ptr %t438
  %t444 = load i32, ptr %l2, !tbaa !23
  %t445 = load %"compiler/source:Span", ptr %l3
  %t446 = load ptr, ptr %l231, !tbaa !29
  %t450 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t446, { i64, [4 x i64] } %t443, i32 %t444, %"compiler/source:Span" %t445)
  store i32 %t450, ptr %l240
  br label %bb78
bb78:
  %t451 = load i32, ptr %l240, !tbaa !23
  %t452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t452, ptr %l241, !tbaa !29
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t457 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s5, ptr %t453, i32 %t451)
  store %"compiler/lower:pl" %t457, ptr %l244
  br label %bb79
bb79:
  %t458 = load ptr, ptr %l5, !tbaa !29
  %t459 = load i32, ptr %l6, !tbaa !23
  %t462 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t458, i32 %t459)
  store i32 %t462, ptr %l247
  br label %bb80
bb80:
  %t463 = load %"compiler/source:Span", ptr %l3
  %t464 = load ptr, ptr %l241, !tbaa !29
  %t465 = load %"compiler/lower:pl", ptr %l244
  %t466 = load i32, ptr %l247, !tbaa !23
  %t468 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %s5, ptr %t464, %"compiler/lower:pl" %t465, i32 %t466, %"compiler/source:Span" %t463, i1 false)
  store { i64, [4 x i64] } %t468, ptr %l249
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t469 = load { i64, [4 x i64] }, ptr %l249
  store { i64, [4 x i64] } %t469, ptr %rv
  br label %ret
bb82:
  %t470 = load ptr, ptr %l5, !tbaa !29
  %t471 = load i32, ptr %l6, !tbaa !23
  %t474 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t470, i32 %t471)
  store i1 %t474, ptr %l252
  br label %bb83
bb83:
  %t475 = load i1, ptr %l252, !tbaa !21
  br i1 %t475, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s6
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l253, !tbaa !29
  %t477 = load ptr, ptr %l0, !tbaa !29
  store ptr %t477, ptr %l254, !tbaa !29
  %t478 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t478, ptr %l255
  %t480 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s6, ptr %l255)
  store %"compiler/lower:pl" %t480, ptr %l257
  br label %bb86
bb85:
  br label %bb107
bb86:
  %t481 = load ptr, ptr %l254, !tbaa !29
  %t482 = load %"compiler/lower:pl", ptr %l257
  %t483 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s6, ptr %t481, %"compiler/lower:pl" %t482)
  store %"compiler/mir:Lvalue" %t483, ptr %l258
  br label %bb87
bb87:
  store { i64, [4 x i64] } zeroinitializer, ptr %t484
  %t485 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 0
  store i64 1, ptr %t485
  %t486 = load %"compiler/mir:Lvalue", ptr %l258
  %t487 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t486, 0
  %t488 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t487, ptr %t488
  %t489 = load { i64, [4 x i64] }, ptr %t484
  %t490 = load i32, ptr %l2, !tbaa !23
  %t491 = load %"compiler/source:Span", ptr %l3
  %t492 = load ptr, ptr %l253, !tbaa !29
  %t496 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t492, { i64, [4 x i64] } %t489, i32 %t490, %"compiler/source:Span" %t491)
  store i32 %t496, ptr %l262
  br label %bb88
bb88:
  %t497 = load i32, ptr %l262, !tbaa !23
  store i32 %t497, ptr %l20, !tbaa !23
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t500 = load %"compiler/source:Span", ptr %l3
  %t504 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t498, i32 %t499, %"compiler/source:Span" %t500)
  store i32 %t504, ptr %l266
  br label %bb89
bb89:
  %t505 = load i32, ptr %l266, !tbaa !23
  store i32 %t505, ptr %l21, !tbaa !23
  %t506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t506, ptr %l267, !tbaa !29
  %t507 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t507, ptr %l268
  %t508 = load i32, ptr %l21, !tbaa !23
  %t510 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t508)
  store %"compiler/mir:Lvalue" %t510, ptr %l270
  br label %bb90
bb90:
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t513 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t511, i64 0)
  store { i64, [4 x i64] } %t513, ptr %l272
  br label %bb91
bb91:
  store { i64, [15 x i64] } zeroinitializer, ptr %t514
  %t515 = getelementptr { i64, [15 x i64] }, ptr %t514, i32 0, i32 0
  store i64 0, ptr %t515
  %t516 = load { i64, [4 x i64] }, ptr %l272
  %t517 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t516, 0
  %t518 = getelementptr { i64, [15 x i64] }, ptr %t514, i32 0, i32 1
  store { { i64, [4 x i64] } } %t517, ptr %t518
  %t519 = load { i64, [15 x i64] }, ptr %t514
  store { i64, [21 x i64] } zeroinitializer, ptr %t520
  %t521 = getelementptr { i64, [21 x i64] }, ptr %t520, i32 0, i32 0
  store i64 0, ptr %t521
  %t522 = load %"compiler/source:Span", ptr %l268
  %t523 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t522, 0
  %t524 = load %"compiler/mir:Lvalue", ptr %l270
  %t525 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t523, %"compiler/mir:Lvalue" %t524, 1
  %t527 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t525, { i64, [15 x i64] } %t519, 2
  %t528 = getelementptr { i64, [21 x i64] }, ptr %t520, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t527, ptr %t528
  %t529 = load { i64, [21 x i64] }, ptr %t520
  %t531 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t529, ptr %t531
  %t532 = load ptr, ptr %l267, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s6, ptr %t532, ptr %t531)
  br label %bb92
bb92:
  %t534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t534, ptr %l276, !tbaa !29
  store i32 14, ptr %l277
  %t535 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t535, ptr %l278, !tbaa !23
  %t536 = load i32, ptr %l20, !tbaa !23
  %t538 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t536)
  store %"compiler/mir:Lvalue" %t538, ptr %l280
  br label %bb93
bb93:
  store { i64, [4 x i64] } zeroinitializer, ptr %t539
  %t540 = getelementptr { i64, [4 x i64] }, ptr %t539, i32 0, i32 0
  store i64 1, ptr %t540
  %t541 = load %"compiler/mir:Lvalue", ptr %l280
  %t542 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t541, 0
  %t543 = getelementptr { i64, [4 x i64] }, ptr %t539, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t542, ptr %t543
  %t544 = load { i64, [4 x i64] }, ptr %t539
  %t545 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t546
  %t547 = getelementptr { i64, [4 x i64] }, ptr %t546, i32 0, i32 0
  store i64 2, ptr %t547
  %t549 = insertvalue { i32, i64 } undef, i32 %t545, 0
  %t550 = insertvalue { i32, i64 } %t549, i64 0, 1
  %t551 = getelementptr { i64, [4 x i64] }, ptr %t546, i32 0, i32 1
  store { i32, i64 } %t550, ptr %t551
  %t552 = load { i64, [4 x i64] }, ptr %t546
  %t553 = mul i64 2, 40
  %t554 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t553)
  %t555 = insertvalue { i64, ptr } undef, i64 2, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  store { i64, ptr } %t556, ptr %l284, !tbaa !27
  %t558 = getelementptr { i64, ptr }, ptr %l284, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !27
  %t560 = getelementptr { i64, [4 x i64] }, ptr %t559, i64 0
  store { i64, [4 x i64] } %t544, ptr %t560
  %t562 = getelementptr { i64, ptr }, ptr %l284, i32 0, i32 1
  %t563 = load ptr, ptr %t562, !tbaa !27
  %t564 = getelementptr { i64, [4 x i64] }, ptr %t563, i64 1
  store { i64, [4 x i64] } %t552, ptr %t564
  %t565 = load %"compiler/source:Span", ptr %l3
  %t566 = load ptr, ptr %l276, !tbaa !29
  %t567 = load i32, ptr %l277, !range !{i32 0, i32 52}
  %t568 = load i32, ptr %l278, !tbaa !23
  %t569 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t571 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s6, ptr %t566, i32 %t567, i32 %t568, { i64, ptr } %t569, %"compiler/source:Span" %t565)
  store { i64, [4 x i64] } %t571, ptr %l286
  br label %bb94
bb94:
  %t572 = load { i64, [4 x i64] }, ptr %l286
  store { i64, [4 x i64] } %t572, ptr %l22
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/lower:lowering", ptr %t573, i32 0, i32 3
  %t577 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t575)
  store i32 %t577, ptr %l289
  br label %bb95
bb95:
  %t578 = load i32, ptr %l289, !tbaa !23
  store i32 %t578, ptr %l23, !tbaa !23
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t581 = getelementptr %"compiler/lower:lowering", ptr %t579, i32 0, i32 3
  %t583 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t581)
  store i32 %t583, ptr %l292
  br label %bb96
bb96:
  %t584 = load i32, ptr %l292, !tbaa !23
  store i32 %t584, ptr %l24, !tbaa !23
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load { i64, [4 x i64] }, ptr %l22
  %t587 = load i32, ptr %l23, !tbaa !23
  %t588 = load i32, ptr %l24, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t589
  %t590 = getelementptr { i64, [8 x i64] }, ptr %t589, i32 0, i32 0
  store i64 2, ptr %t590
  %t592 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t586, 0
  %t594 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t592, i32 %t587, 1
  %t596 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t594, i32 %t588, 2
  %t597 = getelementptr { i64, [8 x i64] }, ptr %t589, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t596, ptr %t597
  %t598 = load { i64, [8 x i64] }, ptr %t589
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t585, { i64, [8 x i64] } %t598)
  br label %bb97
bb97:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t601, i32 %t602)
  br label %bb98
bb98:
  %t605 = load ptr, ptr %l0, !tbaa !29
  store ptr %t605, ptr %l300, !tbaa !29
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load i32, ptr %l20, !tbaa !23
  %t610 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s6, ptr %t606, i32 %t607)
  store %"compiler/lower:pl" %t610, ptr %l303
  br label %bb99
bb99:
  %t611 = load ptr, ptr %l5, !tbaa !29
  %t612 = load i32, ptr %l6, !tbaa !23
  %t615 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t611, i32 %t612)
  store i32 %t615, ptr %l306
  br label %bb100
bb100:
  %t616 = load %"compiler/source:Span", ptr %l3
  %t617 = load ptr, ptr %l300, !tbaa !29
  %t618 = load %"compiler/lower:pl", ptr %l303
  %t619 = load i32, ptr %l306, !tbaa !23
  %t621 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %s6, ptr %t617, %"compiler/lower:pl" %t618, i32 %t619, %"compiler/source:Span" %t616, i1 false)
  store { i64, [4 x i64] } %t621, ptr %l308
  br label %bb101
bb101:
  %t622 = load { i64, [4 x i64] }, ptr %l308
  store { i64, [4 x i64] } %t622, ptr %l25
  %t623 = load ptr, ptr %l0, !tbaa !29
  store ptr %t623, ptr %l309, !tbaa !29
  %t624 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t624, ptr %l310
  %t625 = load i32, ptr %l21, !tbaa !23
  %t627 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t625)
  store %"compiler/mir:Lvalue" %t627, ptr %l312
  br label %bb102
bb102:
  %t628 = load { i64, [4 x i64] }, ptr %l25
  store { i64, [15 x i64] } zeroinitializer, ptr %t629
  %t630 = getelementptr { i64, [15 x i64] }, ptr %t629, i32 0, i32 0
  store i64 0, ptr %t630
  %t632 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t628, 0
  %t633 = getelementptr { i64, [15 x i64] }, ptr %t629, i32 0, i32 1
  store { { i64, [4 x i64] } } %t632, ptr %t633
  %t634 = load { i64, [15 x i64] }, ptr %t629
  store { i64, [21 x i64] } zeroinitializer, ptr %t635
  %t636 = getelementptr { i64, [21 x i64] }, ptr %t635, i32 0, i32 0
  store i64 0, ptr %t636
  %t637 = load %"compiler/source:Span", ptr %l310
  %t638 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t637, 0
  %t639 = load %"compiler/mir:Lvalue", ptr %l312
  %t640 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t638, %"compiler/mir:Lvalue" %t639, 1
  %t642 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t640, { i64, [15 x i64] } %t634, 2
  %t643 = getelementptr { i64, [21 x i64] }, ptr %t635, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t642, ptr %t643
  %t644 = load { i64, [21 x i64] }, ptr %t635
  %t646 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t644, ptr %t646
  %t647 = load ptr, ptr %l309, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s6, ptr %t647, ptr %t646)
  br label %bb103
bb103:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t649, i32 %t650)
  br label %bb104
bb104:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t653, i32 %t654)
  br label %bb105
bb105:
  %t657 = load i32, ptr %l21, !tbaa !23
  %t659 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t657)
  store %"compiler/mir:Lvalue" %t659, ptr %l322
  br label %bb106
bb106:
  store { i64, [4 x i64] } zeroinitializer, ptr %t660
  %t661 = getelementptr { i64, [4 x i64] }, ptr %t660, i32 0, i32 0
  store i64 1, ptr %t661
  %t662 = load %"compiler/mir:Lvalue", ptr %l322
  %t663 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t662, 0
  %t664 = getelementptr { i64, [4 x i64] }, ptr %t660, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t663, ptr %t664
  %t665 = load { i64, [4 x i64] }, ptr %t660
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t665, ptr %rv
  br label %ret
bb107:
  %t667 = load i1, ptr %l4, !tbaa !21
  %t669 = xor i1 %t667, true
  br i1 %t669, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s7
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l326, !tbaa !29
  store i32 2, ptr %l327
  %t672 = load i32, ptr %l2, !tbaa !23
  store i32 %t672, ptr %l328, !tbaa !23
  %t673 = load ptr, ptr %l0, !tbaa !29
  store ptr %t673, ptr %l329, !tbaa !29
  %t674 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t674, ptr %l330
  %t676 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s7, ptr %l330)
  store %"compiler/lower:pl" %t676, ptr %l332
  br label %bb110
bb109:
  br label %bb113
bb110:
  %t677 = load i32, ptr %l2, !tbaa !23
  %t678 = load %"compiler/source:Span", ptr %l3
  %t679 = load ptr, ptr %l329, !tbaa !29
  %t680 = load %"compiler/lower:pl", ptr %l332
  %t683 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s7, ptr %t679, %"compiler/lower:pl" %t680, i32 %t677, %"compiler/source:Span" %t678)
  store { i64, [4 x i64] } %t683, ptr %l335
  br label %bb111
bb111:
  %t684 = mul i64 1, 40
  %t685 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t684)
  %t686 = insertvalue { i64, ptr } undef, i64 1, 0
  %t687 = insertvalue { i64, ptr } %t686, ptr %t685, 1
  store { i64, ptr } %t687, ptr %l336, !tbaa !27
  %t688 = load { i64, [4 x i64] }, ptr %l335
  %t689 = getelementptr { i64, ptr }, ptr %l336, i32 0, i32 1
  %t690 = load ptr, ptr %t689, !tbaa !27
  %t691 = getelementptr { i64, [4 x i64] }, ptr %t690, i64 0
  store { i64, [4 x i64] } %t688, ptr %t691
  %t692 = mul i64 0, 16
  %t693 = insertvalue { i64, ptr } undef, i64 0, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t695 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t696 = load %"compiler/source:Span", ptr %l3
  %t697 = load ptr, ptr %l326, !tbaa !29
  %t698 = load i32, ptr %l327, !range !{i32 0, i32 8}
  %t699 = load i32, ptr %l328, !tbaa !23
  %t700 = load { i64, ptr }, ptr %l336, !tbaa !27
  %t704 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s7, ptr %s7, ptr %t697, i32 %t698, i32 %t699, { i64, ptr } %t700, { i64, ptr } %t694, i32 %t695, %"compiler/source:Span" %t696)
  store { i64, [4 x i64] } %t704, ptr %l340
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t705 = load { i64, [4 x i64] }, ptr %l340
  store { i64, [4 x i64] } %t705, ptr %rv
  br label %ret
bb113:
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t707 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t708 = load %"compiler/source:Span", ptr %l3
  %t712 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t706, i32 %t707, %"compiler/source:Span" %t708)
  store i32 %t712, ptr %l344
  br label %bb114
bb114:
  %t713 = load i32, ptr %l344, !tbaa !23
  store i32 %t713, ptr %l26, !tbaa !23
  %t714 = load ptr, ptr %l0, !tbaa !29
  store ptr %t714, ptr %l345, !tbaa !29
  %t715 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t715, ptr %l346
  %t716 = load i32, ptr %l26, !tbaa !23
  %t718 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t716)
  store %"compiler/mir:Lvalue" %t718, ptr %l348
  br label %bb115
bb115:
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t719, i64 0)
  store { i64, [4 x i64] } %t721, ptr %l350
  br label %bb116
bb116:
  store { i64, [15 x i64] } zeroinitializer, ptr %t722
  %t723 = getelementptr { i64, [15 x i64] }, ptr %t722, i32 0, i32 0
  store i64 0, ptr %t723
  %t724 = load { i64, [4 x i64] }, ptr %l350
  %t725 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t724, 0
  %t726 = getelementptr { i64, [15 x i64] }, ptr %t722, i32 0, i32 1
  store { { i64, [4 x i64] } } %t725, ptr %t726
  %t727 = load { i64, [15 x i64] }, ptr %t722
  store { i64, [21 x i64] } zeroinitializer, ptr %t728
  %t729 = getelementptr { i64, [21 x i64] }, ptr %t728, i32 0, i32 0
  store i64 0, ptr %t729
  %t730 = load %"compiler/source:Span", ptr %l346
  %t731 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t730, 0
  %t732 = load %"compiler/mir:Lvalue", ptr %l348
  %t733 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t731, %"compiler/mir:Lvalue" %t732, 1
  %t735 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t733, { i64, [15 x i64] } %t727, 2
  %t736 = getelementptr { i64, [21 x i64] }, ptr %t728, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t735, ptr %t736
  %t737 = load { i64, [21 x i64] }, ptr %t728
  %t739 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t737, ptr %t739
  %t740 = load ptr, ptr %l345, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t740, ptr %t739)
  br label %bb117
bb117:
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t743 = load i32, ptr %l2, !tbaa !23
  %t746 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t742, i32 %t743)
  store { i64, ptr } %t746, ptr %l356
  br label %bb118
bb118:
  %t747 = load { i64, ptr }, ptr %l356, !tbaa !27
  store { i64, ptr } %t747, ptr %l27, !tbaa !27
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t750 = getelementptr %"compiler/lower:lowering", ptr %t748, i32 0, i32 2
  %t751 = load ptr, ptr %t750, !tbaa !29
  %t752 = load i32, ptr %l2, !tbaa !23
  %t755 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t751, i32 %t752)
  store i1 %t755, ptr %l360
  br label %bb119
bb119:
  %t756 = load i1, ptr %l360, !tbaa !21
  store i1 %t756, ptr %l28, !tbaa !21
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t758 = load i32, ptr %l2, !tbaa !23
  %t761 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %s0, ptr %t757, i32 %t758)
  store { i64, ptr } %t761, ptr %l363
  br label %bb120
bb120:
  %t762 = load { i64, ptr }, ptr %l363, !tbaa !27
  store { i64, ptr } %t762, ptr %l29, !tbaa !27
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = getelementptr %"compiler/lower:lowering", ptr %t763, i32 0, i32 2
  %t766 = load ptr, ptr %t765, !tbaa !29
  %t767 = load i32, ptr %l2, !tbaa !23
  %t770 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t766, i32 %t767)
  store i1 %t770, ptr %l367
  br label %bb121
bb121:
  %t771 = load i1, ptr %l367, !tbaa !21
  store i1 %t771, ptr %l30, !tbaa !21
  %t772 = load i1, ptr %l28, !tbaa !21
  br i1 %t772, label %bb122, label %bb123
bb122:
  store i64 0, ptr %l31, !tbaa !24
  %t774 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t776 = extractvalue { i64, ptr } %t774, 0
  store i64 %t776, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t778 = load i64, ptr %l32, !tbaa !24
  %t779 = load i64, ptr %l31, !tbaa !24
  %t782 = icmp sgt i64 %t778, %t779
  br i1 %t782, label %bb124, label %bb125
bb123:
  %t784 = load i1, ptr %l30, !tbaa !21
  br i1 %t784, label %bb140, label %bb141
bb124:
  %t786 = load i64, ptr %l33, !tbaa !24
  %t788 = icmp sgt i64 %t786, 0
  br i1 %t788, label %bb126, label %bb127
bb125:
  store i64 0, ptr %l374, !tbaa !24
  br label %bb129
bb126:
  %t790 = load i64, ptr %l32, !tbaa !24
  %t791 = load i64, ptr %l31, !tbaa !24
  %t794 = sub i64 %t790, %t791
  %t795 = load i64, ptr %l33, !tbaa !24
  %t798 = add i64 %t794, %t795
  %t800 = sub i64 %t798, 1
  %t801 = load i64, ptr %l33, !tbaa !24
  %t804 = sdiv i64 %t800, %t801
  store i64 %t804, ptr %l377, !tbaa !24
  br label %bb128
bb127:
  store i64 0, ptr %l377, !tbaa !24
  br label %bb128
bb128:
  %t806 = load i64, ptr %l377, !tbaa !24
  store i64 %t806, ptr %l374, !tbaa !24
  br label %bb129
bb129:
  %t807 = load i64, ptr %l374, !tbaa !24
  store i64 %t807, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb130
bb130:
  store %olang.scope zeroinitializer, ptr %s10
  %t808 = load i64, ptr %l35, !tbaa !24
  %t809 = load i64, ptr %l34, !tbaa !24
  %t812 = icmp slt i64 %t808, %t809
  %t814 = xor i1 %t812, true
  br i1 %t814, label %bb131, label %bb132
bb131:
  call void @__olang_scope_close(ptr %s10)
  br label %bb139
bb132:
  br label %bb133
bb133:
  %t816 = load i64, ptr %l31, !tbaa !24
  %t817 = load i64, ptr %l35, !tbaa !24
  %t818 = load i64, ptr %l33, !tbaa !24
  %t821 = mul i64 %t817, %t818
  %t824 = add i64 %t816, %t821
  store i64 %t824, ptr %l36, !tbaa !24
  %t826 = load ptr, ptr %l0, !tbaa !29
  store ptr %t826, ptr %l395, !tbaa !29
  %t827 = load i32, ptr %l26, !tbaa !23
  store i32 %t827, ptr %l396, !tbaa !23
  %t828 = load ptr, ptr %l0, !tbaa !29
  store ptr %t828, ptr %l397, !tbaa !29
  %t829 = load ptr, ptr %l0, !tbaa !29
  store ptr %t829, ptr %l398, !tbaa !29
  %t830 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t830, ptr %l399
  %t832 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s10, ptr %l399)
  store %"compiler/lower:pl" %t832, ptr %l401
  br label %bb134
bb134:
  %t833 = load i32, ptr %l2, !tbaa !23
  %t834 = load i64, ptr %l36, !tbaa !24
  %t835 = load %"compiler/source:Span", ptr %l3
  %t836 = load ptr, ptr %l398, !tbaa !29
  %t837 = load %"compiler/lower:pl", ptr %l401
  %t841 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %s10, ptr %s10, ptr %t836, %"compiler/lower:pl" %t837, i32 %t833, i64 %t834, %"compiler/source:Span" %t835)
  store %"compiler/lower:pl" %t841, ptr %l405
  br label %bb135
bb135:
  %t842 = load i64, ptr %l36, !tbaa !24
  %t844 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t845 = load ptr, ptr %t844, !tbaa !27
  %t846 = getelementptr i32, ptr %t845, i64 %t842
  %t847 = load i32, ptr %t846, !tbaa !33
  %t848 = load %"compiler/source:Span", ptr %l3
  %t849 = load ptr, ptr %l397, !tbaa !29
  %t850 = load %"compiler/lower:pl", ptr %l405
  %t853 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %s10, ptr %t849, %"compiler/lower:pl" %t850, i32 %t847, %"compiler/source:Span" %t848, i1 false)
  store { i64, [4 x i64] } %t853, ptr %l409
  br label %bb136
bb136:
  %t854 = load %"compiler/source:Span", ptr %l3
  %t855 = load ptr, ptr %l395, !tbaa !29
  %t856 = load i32, ptr %l396, !tbaa !23
  %t857 = load { i64, [4 x i64] }, ptr %l409
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %v0, ptr %t855, i32 %t856, { i64, [4 x i64] } %t857, %"compiler/source:Span" %t854)
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s10)
  br label %bb138
bb138:
  %t859 = load i64, ptr %l35, !tbaa !24
  %t861 = add i64 %t859, 1
  store i64 %t861, ptr %l35, !tbaa !24
  br label %bb130
bb139:
  br label %bb162
bb140:
  store %olang.scope zeroinitializer, ptr %s13
  %t863 = load ptr, ptr %l0, !tbaa !29
  store ptr %t863, ptr %l414, !tbaa !29
  %t864 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t864, ptr %l415, !tbaa !23
  %t865 = load ptr, ptr %l0, !tbaa !29
  store ptr %t865, ptr %l416, !tbaa !29
  %t866 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t866, ptr %l417
  %t868 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s13, ptr %l417)
  store %"compiler/lower:pl" %t868, ptr %l419
  br label %bb142
bb141:
  %t869 = load ptr, ptr %l0, !tbaa !29
  %t870 = load i32, ptr %l2, !tbaa !23
  %t873 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t869, i32 %t870)
  store i32 %t873, ptr %l444
  br label %bb149
bb142:
  %t874 = load ptr, ptr %l416, !tbaa !29
  %t875 = load %"compiler/lower:pl", ptr %l419
  %t876 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s13, ptr %t874, %"compiler/lower:pl" %t875)
  store %"compiler/mir:Lvalue" %t876, ptr %l420
  br label %bb143
bb143:
  store { i64, [15 x i64] } zeroinitializer, ptr %t877
  %t878 = getelementptr { i64, [15 x i64] }, ptr %t877, i32 0, i32 0
  store i64 5, ptr %t878
  %t879 = load %"compiler/mir:Lvalue", ptr %l420
  %t880 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t879, 0
  %t881 = getelementptr { i64, [15 x i64] }, ptr %t877, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t880, ptr %t881
  %t882 = load { i64, [15 x i64] }, ptr %t877
  %t883 = load %"compiler/source:Span", ptr %l3
  %t884 = load ptr, ptr %l414, !tbaa !29
  %t885 = load i32, ptr %l415, !tbaa !23
  %t888 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t884, i32 %t885, { i64, [15 x i64] } %t882, %"compiler/source:Span" %t883)
  store { i64, [4 x i64] } %t888, ptr %l423
  br label %bb144
bb144:
  %t889 = load { i64, [4 x i64] }, ptr %l423
  store { i64, [4 x i64] } %t889, ptr %l37
  %t890 = load ptr, ptr %l0, !tbaa !29
  store ptr %t890, ptr %l424, !tbaa !29
  %t891 = load i32, ptr %l26, !tbaa !23
  store i32 %t891, ptr %l425, !tbaa !23
  %t892 = load ptr, ptr %l0, !tbaa !29
  %t893 = load { i64, [4 x i64] }, ptr %l37
  %t894 = load %"compiler/source:Span", ptr %l3
  %t898 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %t892, { i64, [4 x i64] } %t893, %"compiler/source:Span" %t894)
  store { i64, [4 x i64] } %t898, ptr %l429
  br label %bb145
bb145:
  %t899 = load %"compiler/source:Span", ptr %l3
  %t900 = load ptr, ptr %l424, !tbaa !29
  %t901 = load i32, ptr %l425, !tbaa !23
  %t902 = load { i64, [4 x i64] }, ptr %l429
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %v0, ptr %t900, i32 %t901, { i64, [4 x i64] } %t902, %"compiler/source:Span" %t899)
  br label %bb146
bb146:
  %t904 = load ptr, ptr %l0, !tbaa !29
  store ptr %t904, ptr %l431, !tbaa !29
  %t905 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t905, ptr %l432, !tbaa !27
  %t906 = load { i64, [4 x i64] }, ptr %l37
  store { i64, [4 x i64] } %t906, ptr %l433
  %t907 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t907, ptr %l434
  %t908 = load ptr, ptr %l0, !tbaa !29
  store ptr %t908, ptr %l435, !tbaa !29
  %t909 = load i32, ptr %l26, !tbaa !23
  store i32 %t909, ptr %l436, !tbaa !23
  %t910 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t910, ptr %l437
  %t912 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l437)
  store %"compiler/lower:pl" %t912, ptr %l439
  br label %bb147
bb147:
  %t913 = load %"compiler/source:Span", ptr %l3
  %t914 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t915 = ptrtoint ptr %t914 to i64
  %t917 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %t916, i32 0, i32 0
  %t918 = load ptr, ptr %l435, !tbaa !29
  store ptr %t918, ptr %t917, !tbaa !28
  %t919 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %t916, i32 0, i32 1
  %t920 = load i32, ptr %l436, !tbaa !23
  store i32 %t920, ptr %t919, !tbaa !28
  %t921 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %t916, i32 0, i32 2
  %t922 = load %"compiler/lower:pl", ptr %l439
  store %"compiler/lower:pl" %t922, ptr %t921, !tbaa !28
  %t923 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %t916, i32 0, i32 3
  store %"compiler/source:Span" %t913, ptr %t923, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t925 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %t916, i32 0, i32 4
  store ptr %v0, ptr %t925, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t926 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %t916, i32 0, i32 5
  store ptr %v1, ptr %t926, !tbaa !28
  %t927 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_14, 0
  %t928 = insertvalue { ptr, ptr } %t927, ptr %t916, 1
  %t929 = load ptr, ptr %l431, !tbaa !29
  %t930 = load { i64, ptr }, ptr %l432, !tbaa !27
  %t931 = load { i64, [4 x i64] }, ptr %l433
  %t932 = load %"compiler/source:Span", ptr %l434
  %t934 = extractvalue { ptr, ptr } %t928, 0
  %t935 = extractvalue { ptr, ptr } %t928, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %s0, ptr %s13, ptr %t929, { i64, ptr } %t930, { i64, [4 x i64] } %t931, %"compiler/source:Span" %t932, ptr %t934, ptr %t935)
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s13)
  br label %bb161
bb149:
  %t936 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t937 = load i32, ptr %l444, !tbaa !23
  %t939 = icmp ne i32 %t937, %t936
  br i1 %t939, label %bb150, label %bb151
bb150:
  store %olang.scope zeroinitializer, ptr %s15
  %t941 = load ptr, ptr %l5, !tbaa !29
  store ptr %t941, ptr %l447, !tbaa !29
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load i32, ptr %l2, !tbaa !23
  %t946 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t942, i32 %t943)
  store i32 %t946, ptr %l450
  br label %bb152
bb151:
  store %olang.scope zeroinitializer, ptr %s16
  %t947 = load ptr, ptr %l0, !tbaa !29
  %t948 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s16, ptr %t947, %"compiler/source:Span" %t948, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb159
bb152:
  %t951 = load ptr, ptr %l447, !tbaa !29
  %t952 = load i32, ptr %l450, !tbaa !23
  %t953 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t951, i32 %t952)
  store i32 %t953, ptr %l451
  br label %bb153
bb153:
  %t954 = load i32, ptr %l451, !tbaa !23
  store i32 %t954, ptr %l38, !tbaa !23
  %t955 = load ptr, ptr %l0, !tbaa !29
  store ptr %t955, ptr %l452, !tbaa !29
  store i32 22, ptr %l453
  %t956 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t956, ptr %l454, !tbaa !23
  %t957 = load ptr, ptr %l0, !tbaa !29
  store ptr %t957, ptr %l455, !tbaa !29
  %t958 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t958, ptr %l456
  %t960 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s15, ptr %l456)
  store %"compiler/lower:pl" %t960, ptr %l458
  br label %bb154
bb154:
  %t961 = load ptr, ptr %l455, !tbaa !29
  %t962 = load %"compiler/lower:pl", ptr %l458
  %t963 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s15, ptr %t961, %"compiler/lower:pl" %t962)
  store %"compiler/mir:Lvalue" %t963, ptr %l459
  br label %bb155
bb155:
  store { i64, [4 x i64] } zeroinitializer, ptr %t964
  %t965 = getelementptr { i64, [4 x i64] }, ptr %t964, i32 0, i32 0
  store i64 1, ptr %t965
  %t966 = load %"compiler/mir:Lvalue", ptr %l459
  %t967 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t966, 0
  %t968 = getelementptr { i64, [4 x i64] }, ptr %t964, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t967, ptr %t968
  %t969 = load { i64, [4 x i64] }, ptr %t964
  %t970 = mul i64 1, 40
  %t971 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t970)
  %t972 = insertvalue { i64, ptr } undef, i64 1, 0
  %t973 = insertvalue { i64, ptr } %t972, ptr %t971, 1
  store { i64, ptr } %t973, ptr %l461, !tbaa !27
  %t975 = getelementptr { i64, ptr }, ptr %l461, i32 0, i32 1
  %t976 = load ptr, ptr %t975, !tbaa !27
  %t977 = getelementptr { i64, [4 x i64] }, ptr %t976, i64 0
  store { i64, [4 x i64] } %t969, ptr %t977
  %t978 = load %"compiler/source:Span", ptr %l3
  %t979 = load ptr, ptr %l452, !tbaa !29
  %t980 = load i32, ptr %l453, !range !{i32 0, i32 52}
  %t981 = load i32, ptr %l454, !tbaa !23
  %t982 = load { i64, ptr }, ptr %l461, !tbaa !27
  %t984 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s15, ptr %t979, i32 %t980, i32 %t981, { i64, ptr } %t982, %"compiler/source:Span" %t978)
  store { i64, [4 x i64] } %t984, ptr %l463
  br label %bb156
bb156:
  %t985 = load { i64, [4 x i64] }, ptr %l463
  %t986 = load ptr, ptr %l0, !tbaa !29
  store ptr %t986, ptr %l464, !tbaa !29
  store { i64, [4 x i64] } %t985, ptr %l465
  %t988 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t988, ptr %l466
  %t989 = load ptr, ptr %l0, !tbaa !29
  store ptr %t989, ptr %l467, !tbaa !29
  %t990 = load i32, ptr %l26, !tbaa !23
  store i32 %t990, ptr %l468, !tbaa !23
  %t991 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t991, ptr %l469
  %t993 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l469)
  store %"compiler/lower:pl" %t993, ptr %l471
  br label %bb157
bb157:
  %t994 = load i32, ptr %l38, !tbaa !23
  %t995 = load %"compiler/source:Span", ptr %l3
  %t996 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t997 = ptrtoint ptr %t996 to i64
  %t999 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 0
  %t1000 = load ptr, ptr %l467, !tbaa !29
  store ptr %t1000, ptr %t999, !tbaa !28
  %t1001 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 1
  %t1002 = load i32, ptr %l468, !tbaa !23
  store i32 %t1002, ptr %t1001, !tbaa !28
  %t1003 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 2
  %t1004 = load %"compiler/lower:pl", ptr %l471
  store %"compiler/lower:pl" %t1004, ptr %t1003, !tbaa !28
  %t1005 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 3
  store i32 %t994, ptr %t1005, !tbaa !28
  %t1007 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 4
  store %"compiler/source:Span" %t995, ptr %t1007, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t1009 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 5
  store ptr %v0, ptr %t1009, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t1010 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %t998, i32 0, i32 6
  store ptr %v1, ptr %t1010, !tbaa !28
  %t1011 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_16, 0
  %t1012 = insertvalue { ptr, ptr } %t1011, ptr %t998, 1
  %t1013 = load ptr, ptr %l464, !tbaa !29
  %t1014 = load { i64, [4 x i64] }, ptr %l465
  %t1015 = load %"compiler/source:Span", ptr %l466
  %t1017 = extractvalue { ptr, ptr } %t1012, 0
  %t1018 = extractvalue { ptr, ptr } %t1012, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s15, ptr %t1013, { i64, [4 x i64] } %t1014, %"compiler/source:Span" %t1015, ptr %t1017, ptr %t1018)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s15)
  br label %bb160
bb159:
  call void @__olang_scope_close(ptr %s16)
  br label %bb160
bb160:
  br label %bb161
bb161:
  br label %bb162
bb162:
  %t1019 = load i32, ptr %l26, !tbaa !23
  %t1021 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t1019)
  store %"compiler/mir:Lvalue" %t1021, ptr %l478
  br label %bb163
bb163:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1022
  %t1023 = getelementptr { i64, [4 x i64] }, ptr %t1022, i32 0, i32 0
  store i64 1, ptr %t1023
  %t1024 = load %"compiler/mir:Lvalue", ptr %l478
  %t1025 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t1024, 0
  %t1026 = getelementptr { i64, [4 x i64] }, ptr %t1022, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t1025, ptr %t1026
  %t1027 = load { i64, [4 x i64] }, ptr %t1022
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t1027, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/typed:Local"
  %l4 = alloca i64
  %l9 = alloca %"compiler/typed:Local"
  %l13 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l35 = alloca i1
  %l41 = alloca i64
  %l44 = alloca i1
  %l48 = alloca i1
  %l53 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t6, i64 %t7)
  store %"compiler/typed:Local" %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load %"compiler/typed:Local", ptr %l9
  store %"compiler/typed:Local" %t11, ptr %l3
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t20 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %t15, i32 %t17)
  store i1 %t20, ptr %l13
  br label %bb2
bb2:
  %t21 = load i1, ptr %l13, !tbaa !21
  br i1 %t21, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t23 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 7}
  %t26 = trunc i64 0 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t34 = load i32, ptr %t33, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t32, i32 %t34)
  store i1 %t37, ptr %l20
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t38 = load i1, ptr %l20, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamElig(ptr %v0, ptr %t41, i64 %t42)
  store i1 %t45, ptr %l25
  br label %bb11
bb10:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb12
bb11:
  %t46 = load i1, ptr %l25, !tbaa !21
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t53 = load i32, ptr %t52, !tbaa !23
  %t56 = call i1 @compiler_2flower_2erunArray(ptr %v0, ptr %t51, i32 %t53)
  store i1 %t56, ptr %l30
  br label %bb15
bb14:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb16
bb15:
  %t57 = load i1, ptr %l30, !tbaa !21
  %t58 = xor i1 %t57, true
  store i1 %t58, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t60 = load i1, ptr %l26, !tbaa !21
  store i1 %t60, ptr %rv
  br label %ret
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  %t67 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldUnchanged(ptr %v0, ptr %v1, ptr %t61, ptr %t62, i64 %t63)
  store i1 %t67, ptr %l35
  br label %bb18
bb18:
  %t68 = load i1, ptr %l35, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/typed:LocalUses", ptr %t72, i32 0, i32 8
  %t75 = load i64, ptr %l2, !tbaa !24
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t74, i64 %t75)
  store i64 %t78, ptr %l41
  br label %bb22
bb22:
  %t79 = load i64, ptr %l41, !tbaa !24
  store i64 %t79, ptr %l4, !tbaa !24
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/lower:lowering", ptr %t84, i32 0, i32 45
  %t87 = load i64, ptr %l2, !tbaa !24
  %t90 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t86, i64 %t87)
  store i1 %t90, ptr %l48
  br label %bb25
bb24:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb26
bb25:
  %t91 = load i1, ptr %l48, !tbaa !21
  %t92 = xor i1 %t91, true
  store i1 %t92, ptr %l44, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l44, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t97 = load i64, ptr %l4, !tbaa !24
  %t101 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldLocal(ptr %v0, ptr %v1, ptr %t95, ptr %t96, i64 %t97)
  store i1 %t101, ptr %l53
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t102 = load i1, ptr %l53, !tbaa !21
  store i1 %t102, ptr %rv
  br label %ret
bb30:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca i64
  %l29 = alloca i1
  %l39 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l65 = alloca i64
  %l69 = alloca i1
  %l73 = alloca { i64, ptr }
  %l76 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t7 = load ptr, ptr %l16, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l17, !tbaa !21
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
  store i32 %t21, ptr %l15, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 -1, ptr %l15, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3e618b7a6832a44e_dc583ba968d0a99a)
  unreachable
bb11:
  %t23 = load i32, ptr %l15, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t31 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t27, i32 %t23)
  store i64 %t31, ptr %l26
  br label %bb12
bb12:
  %t32 = load i64, ptr %l26, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp sle i64 %t33, 0
  br i1 %t35, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb15
bb14:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t41 = and i64 %t37, %t38
  %t43 = icmp ne i64 %t41, 0
  store i1 %t43, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t45 = load i1, ptr %l29, !tbaa !21
  br i1 %t45, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  store i64 0, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Call", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t53 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t56 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t52, i64 %t53)
  store i64 %t56, ptr %l39
  br label %bb19
bb19:
  %t57 = load i64, ptr %l39, !tbaa !24
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp sgt i64 %t58, %t59
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb25
bb22:
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t73 = load i64, ptr %l9, !tbaa !24
  %t76 = add i64 %t72, %t73
  %t78 = sub i64 %t76, 1
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = sdiv i64 %t78, %t79
  store i64 %t82, ptr %l46, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb24
bb24:
  %t84 = load i64, ptr %l46, !tbaa !24
  store i64 %t84, ptr %l43, !tbaa !24
  br label %bb25
bb25:
  %t85 = load i64, ptr %l43, !tbaa !24
  store i64 %t85, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb26
bb26:
  %t86 = load i64, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb27, label %bb28
bb27:
  br label %bb38
bb28:
  br label %bb29
bb29:
  %t94 = load i64, ptr %l7, !tbaa !24
  %t95 = load i64, ptr %l11, !tbaa !24
  %t96 = load i64, ptr %l9, !tbaa !24
  %t99 = mul i64 %t95, %t96
  %t102 = add i64 %t94, %t99
  store i64 %t102, ptr %l12, !tbaa !24
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l12, !tbaa !24
  store i64 %t105, ptr %l65, !tbaa !24
  %t106 = load i64, ptr %l65, !tbaa !24
  %t107 = load i64, ptr %l65, !tbaa !24
  %t108 = shl i64 1, %t107
  %t111 = and i64 %t104, %t108
  %t113 = icmp ne i64 %t111, 0
  br i1 %t113, label %bb30, label %bb31
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Call", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l73, !tbaa !27
  %t121 = load i64, ptr %l12, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t130 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t115, ptr %a1, ptr %t126)
  store i1 %t130, ptr %l76
  br label %bb32
bb31:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb33
bb32:
  %t131 = load i1, ptr %l76, !tbaa !21
  %t132 = xor i1 %t131, true
  store i1 %t132, ptr %l69, !tbaa !21
  br label %bb33
bb33:
  %t134 = load i1, ptr %l69, !tbaa !21
  br i1 %t134, label %bb34, label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t136 = load i64, ptr %l11, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l11, !tbaa !24
  br label %bb26
bb38:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/lower:lowering", ptr %t140, i32 0, i32 52
  %t143 = load ptr, ptr %l2, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Call", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %t145, !tbaa !23
  %t148 = sext i32 %t146 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t142, i64 %t148, i1 true)
  br label %bb39
bb39:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisText(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l24 = alloca ptr
  %l27 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
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
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l2, !tbaa !29
  store ptr %t41, ptr %l24, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l27
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2echar(ptr %v0, ptr %t50)
  store i32 %t52, ptr %l30
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l24, !tbaa !29
  %t54 = load i32, ptr %l27, !tbaa !23
  %t55 = load i32, ptr %l30, !tbaa !23
  %t56 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t53, i32 %t54, i32 %t55)
  store i1 %t56, ptr %l31
  br label %bb14
bb14:
  %t57 = load i1, ptr %l31, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb39
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %t25, ptr %t26)
  store i1 %t29, ptr %l19
  br label %bb12
bb12:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l6, !tbaa !21
  br label %bb39
bb13:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 4
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Elem", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t53 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %t46, ptr %t50)
  store i1 %t53, ptr %l29
  br label %bb19
bb19:
  %t54 = load i1, ptr %l29, !tbaa !21
  store i1 %t54, ptr %l6, !tbaa !21
  br label %bb39
bb20:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 5
  store i1 %t62, ptr %l31, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l31, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Payload", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %t70, ptr %t74)
  store i1 %t77, ptr %l39
  br label %bb26
bb26:
  %t78 = load i1, ptr %l39, !tbaa !21
  store i1 %t78, ptr %l6, !tbaa !21
  br label %bb39
bb27:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t80 = load ptr, ptr %l40, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb28, label %bb29
bb28:
  %t83 = load ptr, ptr %l40, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 8}
  %t86 = icmp eq i64 %t84, 2
  store i1 %t86, ptr %l41, !tbaa !21
  br label %bb29
bb29:
  %t87 = load i1, ptr %l41, !tbaa !21
  br i1 %t87, label %bb30, label %bb31
bb30:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t90, i32 0, i32 2
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t98 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %t94, ptr %t95)
  store i1 %t98, ptr %l48
  br label %bb33
bb33:
  %t99 = load i1, ptr %l48, !tbaa !21
  store i1 %t99, ptr %l6, !tbaa !21
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_b20a71c9b4f6a91d_fe0bcb009af05229)
  unreachable
bb39:
  %t100 = load i1, ptr %l6, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca i1
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca i1
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 47
  %t9 = load i32, ptr %l1, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t8, i64 %t11)
  store i1 %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load i1, ptr %l10, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb6
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 47
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l16
  br label %bb4
bb4:
  %t24 = load i32, ptr %l16, !tbaa !23
  %t25 = sext i32 %t24 to i64
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t28 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t26, i64 %t25)
  store i1 %t28, ptr %l18
  br label %bb5
bb5:
  %t29 = load i1, ptr %l18, !tbaa !21
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l11, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l20
  br label %bb10
bb10:
  %t33 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t33, ptr %l3
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldParts(ptr %v0, ptr %s0, ptr %t34, i32 %t35, ptr %l3, i64 0)
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 48
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = sext i32 %t42 to i64
  %t47 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l3, i64 %t44)
  store i1 %t47, ptr %l28
  br label %bb12
bb12:
  %t48 = load i1, ptr %l28, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb17
bb14:
  store ptr %l3, ptr %l30, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t50, i32 0, i32 48
  %t53 = load i32, ptr %t52, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t49, i32 %t53)
  store i32 %t56, ptr %l34
  br label %bb15
bb15:
  %t57 = load i32, ptr %l34, !tbaa !23
  %t58 = sext i32 %t57 to i64
  %t59 = load ptr, ptr %l30, !tbaa !29
  %t61 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %t59, i64 %t58)
  store i1 %t61, ptr %l36
  br label %bb16
bb16:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l29, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i1, ptr %l29, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjectOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i32
  %l44 = alloca ptr
  %l45 = alloca i1
  %rv = alloca i32
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
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  store i32 %t16, ptr %l7, !tbaa !23
  br label %bb38
bb6:
  %t18 = load ptr, ptr %l1, !tbaa !29
  store ptr %t18, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t19 = load ptr, ptr %l15, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 8}
  %t25 = icmp eq i64 %t23, 3
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t29, i32 0, i32 2
  %t31 = load ptr, ptr %t30
  store ptr %t31, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t37 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjectOf(ptr %v0, ptr %v1, ptr %t33, ptr %t34)
  store i32 %t37, ptr %l23
  br label %bb12
bb12:
  %t38 = load i32, ptr %l23, !tbaa !23
  store i32 %t38, ptr %l7, !tbaa !23
  br label %bb38
bb13:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 4
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Elem", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t61 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjectOf(ptr %v0, ptr %v1, ptr %t54, ptr %t58)
  store i32 %t61, ptr %l33
  br label %bb19
bb19:
  %t62 = load i32, ptr %l33, !tbaa !23
  store i32 %t62, ptr %l7, !tbaa !23
  br label %bb38
bb20:
  %t63 = load ptr, ptr %l1, !tbaa !29
  store ptr %t63, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t64 = load ptr, ptr %l34, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = load ptr, ptr %l34, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 8}
  %t70 = icmp eq i64 %t68, 5
  store i1 %t70, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t71 = load i1, ptr %l35, !tbaa !21
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 2
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l5, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Payload", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t85 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjectOf(ptr %v0, ptr %v1, ptr %t78, ptr %t82)
  store i32 %t85, ptr %l43
  br label %bb26
bb26:
  %t86 = load i32, ptr %l43, !tbaa !23
  store i32 %t86, ptr %l7, !tbaa !23
  br label %bb38
bb27:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t88 = load ptr, ptr %l44, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb28, label %bb29
bb28:
  %t91 = load ptr, ptr %l44, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 8}
  %t94 = icmp eq i64 %t92, 2
  store i1 %t94, ptr %l45, !tbaa !21
  br label %bb29
bb29:
  %t95 = load i1, ptr %l45, !tbaa !21
  br i1 %t95, label %bb30, label %bb31
bb30:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t98, i32 0, i32 1
  %t100 = load i32, ptr %t99
  store i32 %t100, ptr %l6, !tbaa !23
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t102 = load i32, ptr %l6, !tbaa !23
  store i32 %t102, ptr %l7, !tbaa !23
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t104, ptr %l7, !tbaa !23
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_166f6c7f8536ecb_3daea1ccb6433847)
  unreachable
bb38:
  %t106 = load i32, ptr %l7, !tbaa !23
  store i32 %t106, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eonError(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t26 = trunc i64 7 to i32
  %t27 = icmp eq i32 %t24, %t26
  call void @__olang_scope_close(ptr %s0)
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamIn(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/mir:Local"
  %l3 = alloca i32
  %l8 = alloca %"compiler/mir:Local"
  %l15 = alloca ptr
  %l21 = alloca %"compiler/mir:Local"
  %l22 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t31 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/mir:Fn", ptr %t3, i32 0, i32 7
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t10 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t4, i64 %t7)
  store %"compiler/mir:Local" %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load %"compiler/mir:Local", ptr %l8
  store %"compiler/mir:Local" %t11, ptr %l2
  %t12 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 3
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 4}
  %t15 = trunc i64 0 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 3
  store ptr %t24, ptr %l15, !tbaa !29
  %t25 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 1
  %t28 = load %"compiler/source:Span", ptr %t27
  %t29 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 2
  %t30 = load i32, ptr %t29, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [1 x i64] }, ptr %t31, i32 0, i32 0
  store i64 3, ptr %t32
  %t33 = load { i64, [1 x i64] }, ptr %t31
  %t39 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %t26, %"compiler/source:Span" %t28, i32 %t30, i32 0, { i64, [1 x i64] } %t33)
  store %"compiler/mir:Local" %t39, ptr %l21
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l15, !tbaa !29
  %t41 = load %"compiler/mir:Local", ptr %l21
  %t42 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %t40, %"compiler/mir:Local" %t41)
  store i32 %t42, ptr %l22
  br label %bb6
bb6:
  %t43 = load i32, ptr %l22, !tbaa !23
  store i32 %t43, ptr %l3, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 14
  %t47 = load i32, ptr %l1, !tbaa !23
  %t49 = sext i32 %t47 to i64
  %t50 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %t46, i64 %t49, i32 %t50)
  br label %bb7
bb7:
  %t54 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %lp3 = alloca ptr
  %l10 = alloca %"compiler/lower:pl"
  %l12 = alloca %"compiler/lower:pl"
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/lower:pl"
  %l25 = alloca %"compiler/lower:pl"
  %l26 = alloca %"compiler/mir:Lvalue"
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca { i64, [4 x i64] }
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, [4 x i64] }
  %l53 = alloca %"compiler/lower:pl"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t43 = alloca { i64, [15 x i64] }, align 8
  %t108 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Payload", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t5)
  store %"compiler/lower:pl" %t9, ptr %l10
  br label %bb1
bb1:
  %t11 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l10)
  store %"compiler/lower:pl" %t11, ptr %l12
  br label %bb2
bb2:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t12, ptr %lp3
  %t13 = load %"compiler/lower:pl", ptr %l12
  %t14 = load ptr, ptr %lp3
  store %"compiler/lower:pl" %t13, ptr %t14
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 10
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load ptr, ptr %lp3
  %t21 = load %"compiler/lower:pl", ptr %t20
  store %"compiler/lower:pl" %t21, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Payload", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 3}
  %t28 = trunc i64 0 to i32
  %t29 = icmp eq i32 %t26, %t28
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l20, !tbaa !29
  %t34 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t34, ptr %l21, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load ptr, ptr %lp3
  %t37 = load %"compiler/lower:pl", ptr %t36
  store %"compiler/lower:pl" %t37, ptr %l23
  %t39 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l23)
  store %"compiler/lower:pl" %t39, ptr %l25
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = load %"compiler/lower:pl", ptr %l25
  %t42 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t40, %"compiler/lower:pl" %t41)
  store %"compiler/mir:Lvalue" %t42, ptr %l26
  br label %bb9
bb9:
  store { i64, [15 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [15 x i64] }, ptr %t43, i32 0, i32 0
  store i64 5, ptr %t44
  %t45 = load %"compiler/mir:Lvalue", ptr %l26
  %t46 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t45, 0
  %t47 = getelementptr { i64, [15 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t46, ptr %t47
  %t48 = load { i64, [15 x i64] }, ptr %t43
  %t49 = load %"compiler/source:Span", ptr %l2
  %t50 = load ptr, ptr %l20, !tbaa !29
  %t51 = load i32, ptr %l21, !tbaa !23
  %t54 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t50, i32 %t51, { i64, [15 x i64] } %t48, %"compiler/source:Span" %t49)
  store { i64, [4 x i64] } %t54, ptr %l29
  br label %bb10
bb10:
  %t55 = load { i64, [4 x i64] }, ptr %l29
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  store i32 13, ptr %l31
  %t57 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t57, ptr %l32, !tbaa !23
  store { i64, [4 x i64] } %t55, ptr %l33
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Payload", ptr %t60, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  %t66 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t59, i64 %t63)
  store { i64, [4 x i64] } %t66, ptr %l37
  br label %bb11
bb11:
  %t67 = mul i64 2, 40
  %t68 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 2, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l38, !tbaa !27
  %t71 = load { i64, [4 x i64] }, ptr %l33
  %t72 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i64 0
  store { i64, [4 x i64] } %t71, ptr %t74
  %t75 = load { i64, [4 x i64] }, ptr %l37
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t77, i64 1
  store { i64, [4 x i64] } %t75, ptr %t78
  %t79 = load %"compiler/source:Span", ptr %l2
  %t80 = load ptr, ptr %l30, !tbaa !29
  %t81 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t82 = load i32, ptr %l32, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t85 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t80, i32 %t81, i32 %t82, { i64, ptr } %t83, %"compiler/source:Span" %t79)
  store { i64, [4 x i64] } %t85, ptr %l40
  br label %bb12
bb12:
  %t86 = load { i64, [4 x i64] }, ptr %l40
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Payload", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %t91, !range !{i32 0, i32 3}
  %t93 = load i64, ptr @G_2ecompiler_2flower_2eWrongCase, !tbaa !24
  %t94 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t87, { i64, [4 x i64] } %t86, i32 %t92, i32 10, i64 %t93, %"compiler/source:Span" %t94)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %lp3
  %t103 = load %"compiler/lower:pl", ptr %t102
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Payload", ptr %t104, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t108
  %t109 = getelementptr { i64, [1 x i64] }, ptr %t108, i32 0, i32 0
  store i64 4, ptr %t109
  %t111 = insertvalue { i64 } undef, i64 %t107, 0
  %t112 = getelementptr { i64, [1 x i64] }, ptr %t108, i32 0, i32 1
  store { i64 } %t111, ptr %t112
  %t113 = load { i64, [1 x i64] }, ptr %t108
  %t117 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v2, ptr %v2, ptr %t101, %"compiler/lower:pl" %t103, { i64, [1 x i64] } %t113)
  store %"compiler/lower:pl" %t117, ptr %l53
  br label %bb15
bb15:
  %t118 = load %"compiler/lower:pl", ptr %l53
  store %"compiler/lower:pl" %t118, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietLife(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i32
  %l22 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i64
  %l49 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 11
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 11
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_80847d650e26c632_64a1946959062bee)
  unreachable
bb5:
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Body", ptr %t25, i32 0, i32 11
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 53
  %t32 = load i32, ptr %t31, !tbaa !23
  %t35 = call ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v0, ptr %t28, i32 %t32)
  store ptr %t35, ptr %l22
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l22, !tbaa !29
  store ptr %t36, ptr %l2, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 47
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t44)
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lower:lowering", ptr %t46, i32 0, i32 50
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t48)
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %t50, i32 %t51, i64 0)
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t54, i32 0, i32 48
  store i32 %t55, ptr %t58, !tbaa !23
  store i1 true, ptr %l3, !tbaa !21
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2emutGlobals(ptr %v0, ptr %v0, ptr %t59)
  store ptr %t61, ptr %l35
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l35, !tbaa !29
  store ptr %t62, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb15
bb15:
  %t63 = load i64, ptr %l5, !tbaa !24
  store i64 %t63, ptr %l36, !tbaa !24
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l38
  br label %bb16
bb16:
  %t67 = load i64, ptr %l36, !tbaa !24
  %t68 = load i64, ptr %l38, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb17, label %bb18
bb17:
  br label %bb30
bb18:
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t74 = load i64, ptr %l5, !tbaa !24
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t73, i64 %t74)
  store i64 %t77, ptr %l43
  br label %bb20
bb20:
  %t78 = load i64, ptr %l43, !tbaa !24
  %t81 = trunc i64 %t78 to i32
  store i32 %t81, ptr %l7, !tbaa !23
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l7, !tbaa !23
  %t88 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l49
  br label %bb21
bb21:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb25
bb23:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l7, !tbaa !23
  %t94 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %t90, i32 %t91, i64 0)
  store i1 %t94, ptr %l53
  br label %bb24
bb24:
  %t95 = load i1, ptr %l53, !tbaa !21
  store i1 %t95, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  %t96 = load i1, ptr %l50, !tbaa !21
  br i1 %t96, label %bb26, label %bb27
bb26:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t97 = load i64, ptr %l5, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l5, !tbaa !24
  br label %bb15
bb30:
  %t101 = load i1, ptr %l3, !tbaa !21
  br i1 %t101, label %bb31, label %bb32
bb31:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t107 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v0, ptr %t103, ptr %t104)
  store i1 %t107, ptr %l60
  br label %bb33
bb32:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb34
bb33:
  %t108 = load i1, ptr %l60, !tbaa !21
  store i1 %t108, ptr %l57, !tbaa !21
  br label %bb34
bb34:
  %t109 = load i1, ptr %l57, !tbaa !21
  store i1 %t109, ptr %l3, !tbaa !21
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/lower:lowering", ptr %t110, i32 0, i32 47
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t112)
  br label %bb35
bb35:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/lower:lowering", ptr %t114, i32 0, i32 50
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t116)
  br label %bb36
bb36:
  %t118 = load i1, ptr %l3, !tbaa !21
  store i1 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ereadOnly(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i64
  %l18 = alloca i32
  %rv = alloca i32
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i1, ptr %l7, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l8, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l11
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l14
  br label %bb5
bb5:
  %t23 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t25 = sub i64 -1, %t23
  %t26 = load i64, ptr %l14, !tbaa !24
  %t28 = and i64 %t26, %t25
  %t29 = load ptr, ptr %l8, !tbaa !29
  %t30 = load i32, ptr %l11, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t29, i32 %t30, i64 %t28)
  store i32 %t32, ptr %l18
  br label %bb6
bb6:
  %t33 = load i32, ptr %l18, !tbaa !23
  store i32 %t33, ptr %rv
  br label %ret
bb7:
  %t34 = load i32, ptr %l1, !tbaa !23
  store i32 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erenderStr(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { { i64, [7 x i64] }, i32 }
  %l8 = alloca { i64, [7 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l28 = alloca i64
  %l38 = alloca { { i64, [7 x i64] }, i32 }
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l50 = alloca i1
  %l51 = alloca { i64, [4 x i64] }
  %l52 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca %"compiler/lower:pl"
  %l57 = alloca %"compiler/lower:pl"
  %l58 = alloca %"compiler/mir:Lvalue"
  %l62 = alloca { i64, [4 x i64] }
  %l63 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca ptr
  %l66 = alloca %"compiler/lower:pl"
  %l68 = alloca %"compiler/lower:pl"
  %l69 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca { i64, [4 x i64] }
  %l76 = alloca i32
  %l79 = alloca i32
  %l83 = alloca i32
  %l85 = alloca ptr
  %l86 = alloca i32
  %l88 = alloca ptr
  %l92 = alloca i32
  %l100 = alloca { i64, ptr }
  %l102 = alloca i64
  %l111 = alloca i64
  %l114 = alloca i64
  %l132 = alloca i64
  %l137 = alloca { i64, [1 x i64] }
  %l146 = alloca i1
  %l149 = alloca i1
  %l152 = alloca i1
  %l156 = alloca i32
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l160 = alloca %"compiler/mir:Lvalue"
  %l168 = alloca ptr
  %l169 = alloca { i64, [7 x i64] }
  %l173 = alloca { i64, ptr }
  %l174 = alloca %"compiler/mir:Range"
  %l178 = alloca %"compiler/mir:Range"
  %l180 = alloca %"compiler/mir:Lvalue"
  %l184 = alloca %"compiler/mir:Call"
  %l185 = alloca i32
  %l192 = alloca ptr
  %l193 = alloca %"compiler/source:Span"
  %l194 = alloca { i64, [1 x i64] }
  %l195 = alloca i32
  %l197 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  %t69 = alloca { i64, [15 x i64] }, align 8
  %t87 = alloca { i64, [4 x i64] }, align 8
  %t93 = alloca { i64, [15 x i64] }, align 8
  %t147 = alloca { i64, [21 x i64] }, align 8
  %t243 = alloca { i64, [1 x i64] }, align 8
  %t250 = alloca { i64, [1 x i64] }, align 8
  %t298 = alloca { i64, [15 x i64] }, align 8
  %t304 = alloca { i64, [21 x i64] }, align 8
  %t319 = alloca { i64, [1 x i64] }, align 8
  %t376 = alloca { i64, [8 x i64] }, align 8
  %t396 = alloca { i64, [4 x i64] }, align 8
  %t402 = alloca { i64, [21 x i64] }, align 8
  %t421 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2estrBody(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l28
  br label %bb1
bb1:
  %t6 = load i64, ptr %l28, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l6, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = trunc i64 %t18 to i32
  %t24 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %t17, i32 %t20)
  store { { i64, [7 x i64] }, i32 } %t24, ptr %l38
  br label %bb5
bb5:
  %t25 = load { { i64, [7 x i64] }, i32 }, ptr %l38
  store { { i64, [7 x i64] }, i32 } %t25, ptr %l7
  %t26 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l7, i32 0, i32 0
  %t27 = load { i64, [7 x i64] }, ptr %t26
  store { i64, [7 x i64] } %t27, ptr %l8
  %t29 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l7, i32 0, i32 1
  %t30 = load i32, ptr %t29, !tbaa !23
  store i32 %t30, ptr %l9, !tbaa !23
  %t32 = load ptr, ptr %l6, !tbaa !29
  store ptr %t32, ptr %l41, !tbaa !29
  %t33 = load ptr, ptr %l6, !tbaa !29
  %t34 = load i32, ptr %l9, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l44
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l41, !tbaa !29
  %t39 = load i32, ptr %l44, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t38, i32 %t39)
  store { i64, ptr } %t40, ptr %l45
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t41, ptr %l46, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i32, ptr %t43, i64 0
  %t45 = load i32, ptr %t44, !tbaa !33
  store i32 %t45, ptr %l10, !tbaa !23
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t48 = load i32, ptr %l10, !tbaa !23
  %t51 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l50
  br label %bb8
bb8:
  %t52 = load i1, ptr %l50, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l52, !tbaa !29
  %t54 = load i32, ptr %l10, !tbaa !23
  store i32 %t54, ptr %l53, !tbaa !23
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l54, !tbaa !29
  %t56 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t56, ptr %l55
  %t58 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l55)
  store %"compiler/lower:pl" %t58, ptr %l57
  br label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l63, !tbaa !29
  %t60 = load i32, ptr %l10, !tbaa !23
  store i32 %t60, ptr %l64, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l65, !tbaa !29
  %t62 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t62, ptr %l66
  %t64 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l66)
  store %"compiler/lower:pl" %t64, ptr %l68
  br label %bb14
bb11:
  %t65 = load ptr, ptr %l54, !tbaa !29
  %t66 = load %"compiler/lower:pl", ptr %l57
  %t67 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t65, %"compiler/lower:pl" %t66)
  store %"compiler/mir:Lvalue" %t67, ptr %l58
  br label %bb12
bb12:
  %t68 = load i32, ptr %l10, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t69
  %t70 = getelementptr { i64, [15 x i64] }, ptr %t69, i32 0, i32 0
  store i64 1, ptr %t70
  %t71 = load %"compiler/mir:Lvalue", ptr %l58
  %t72 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t71, 0
  %t74 = insertvalue { %"compiler/mir:Lvalue", i32 } %t72, i32 %t68, 1
  %t75 = getelementptr { i64, [15 x i64] }, ptr %t69, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t74, ptr %t75
  %t76 = load { i64, [15 x i64] }, ptr %t69
  %t77 = load %"compiler/source:Span", ptr %l4
  %t78 = load ptr, ptr %l52, !tbaa !29
  %t79 = load i32, ptr %l53, !tbaa !23
  %t82 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t78, i32 %t79, { i64, [15 x i64] } %t76, %"compiler/source:Span" %t77)
  store { i64, [4 x i64] } %t82, ptr %l62
  br label %bb13
bb13:
  %t83 = load { i64, [4 x i64] }, ptr %l62
  store { i64, [4 x i64] } %t83, ptr %l51
  br label %bb17
bb14:
  %t84 = load ptr, ptr %l65, !tbaa !29
  %t85 = load %"compiler/lower:pl", ptr %l68
  %t86 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t84, %"compiler/lower:pl" %t85)
  store %"compiler/mir:Lvalue" %t86, ptr %l69
  br label %bb15
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 0
  store i64 1, ptr %t88
  %t89 = load %"compiler/mir:Lvalue", ptr %l69
  %t90 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t89, 0
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t90, ptr %t91
  %t92 = load { i64, [4 x i64] }, ptr %t87
  store { i64, [15 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [15 x i64] }, ptr %t93, i32 0, i32 0
  store i64 0, ptr %t94
  %t96 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t92, 0
  %t97 = getelementptr { i64, [15 x i64] }, ptr %t93, i32 0, i32 1
  store { { i64, [4 x i64] } } %t96, ptr %t97
  %t98 = load { i64, [15 x i64] }, ptr %t93
  %t99 = load %"compiler/source:Span", ptr %l4
  %t100 = load ptr, ptr %l63, !tbaa !29
  %t101 = load i32, ptr %l64, !tbaa !23
  %t104 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t100, i32 %t101, { i64, [15 x i64] } %t98, %"compiler/source:Span" %t99)
  store { i64, [4 x i64] } %t104, ptr %l73
  br label %bb16
bb16:
  %t105 = load { i64, [4 x i64] }, ptr %l73
  store { i64, [4 x i64] } %t105, ptr %l51
  br label %bb17
bb17:
  %t106 = load { i64, [4 x i64] }, ptr %l51
  store { i64, [4 x i64] } %t106, ptr %l11
  %t107 = load ptr, ptr %l6, !tbaa !29
  %t108 = load i32, ptr %l9, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l76
  br label %bb18
bb18:
  %t112 = load i32, ptr %l76, !tbaa !23
  store i32 %t112, ptr %l12, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/lower:lowering", ptr %t113, i32 0, i32 3
  %t117 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t115)
  store i32 %t117, ptr %l79
  br label %bb19
bb19:
  %t118 = load i32, ptr %l79, !tbaa !23
  store i32 %t118, ptr %l13, !tbaa !23
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l12, !tbaa !23
  %t121 = load %"compiler/source:Span", ptr %l4
  %t125 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t119, i32 %t120, %"compiler/source:Span" %t121)
  store i32 %t125, ptr %l83
  br label %bb20
bb20:
  %t126 = load i32, ptr %l83, !tbaa !23
  store i32 %t126, ptr %l14, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 3
  store ptr %t129, ptr %l85, !tbaa !29
  store i32 1, ptr %l86
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t130)
  store ptr %t132, ptr %l88
  br label %bb21
bb21:
  %t133 = load ptr, ptr %l88, !tbaa !29
  %t135 = getelementptr %"compiler/lower:level", ptr %t133, i32 0, i32 0
  %t136 = load i32, ptr %t135, !tbaa !23
  %t137 = load %"compiler/source:Span", ptr %l4
  %t138 = load ptr, ptr %l85, !tbaa !29
  %t139 = load i32, ptr %l86, !range !{i32 0, i32 7}
  %t142 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t138, i32 %t139, i32 %t136, i32 -1, %"compiler/source:Span" %t137, i32 0)
  store i32 %t142, ptr %l92
  br label %bb22
bb22:
  %t143 = load i32, ptr %l92, !tbaa !23
  store i32 %t143, ptr %l15, !tbaa !23
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l4
  %t146 = load i32, ptr %l15, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [21 x i64] }, ptr %t147, i32 0, i32 0
  store i64 3, ptr %t148
  %t150 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t145, 0
  %t152 = insertvalue { %"compiler/source:Span", i32 } %t150, i32 %t146, 1
  %t153 = getelementptr { i64, [21 x i64] }, ptr %t147, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t152, ptr %t153
  %t154 = load { i64, [21 x i64] }, ptr %t147
  %t156 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t154, ptr %t156
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t144, ptr %t156)
  br label %bb23
bb23:
  %t159 = load ptr, ptr %l6, !tbaa !29
  %t160 = load i32, ptr %l9, !tbaa !23
  %t163 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t159, i32 %t160)
  store { i64, ptr } %t163, ptr %l100
  br label %bb24
bb24:
  %t164 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t164, ptr %l16, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 0
  store i64 %t167, ptr %l102, !tbaa !24
  %t168 = load i64, ptr %l102, !tbaa !24
  %t169 = icmp sge i64 %t168, 0
  br i1 %t169, label %bb25, label %bb26
bb25:
  %t171 = load i64, ptr %l102, !tbaa !24
  %t172 = icmp sle i64 %t171, 576460752303423487
  br i1 %t172, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_838d4f7d17068d91_8ef0a18bf216f57d)
  unreachable
bb27:
  %t174 = load i64, ptr %l102, !tbaa !24
  %t175 = mul i64 %t174, 16
  %t176 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t175)
  %t177 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  store { i64, ptr } %t178, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t180 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t180, 0
  store i64 %t182, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t184 = load i64, ptr %l19, !tbaa !24
  %t185 = load i64, ptr %l18, !tbaa !24
  %t188 = icmp sgt i64 %t184, %t185
  br i1 %t188, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_838d4f7d17068d91_8ef0a18bf216f57d)
  unreachable
bb29:
  %t190 = load i64, ptr %l20, !tbaa !24
  %t192 = icmp sgt i64 %t190, 0
  br i1 %t192, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb34
bb31:
  %t194 = load i64, ptr %l19, !tbaa !24
  %t195 = load i64, ptr %l18, !tbaa !24
  %t198 = sub i64 %t194, %t195
  %t199 = load i64, ptr %l20, !tbaa !24
  %t202 = add i64 %t198, %t199
  %t204 = sub i64 %t202, 1
  %t205 = load i64, ptr %l20, !tbaa !24
  %t208 = sdiv i64 %t204, %t205
  store i64 %t208, ptr %l114, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb33
bb33:
  %t210 = load i64, ptr %l114, !tbaa !24
  store i64 %t210, ptr %l111, !tbaa !24
  br label %bb34
bb34:
  %t211 = load i64, ptr %l111, !tbaa !24
  store i64 %t211, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb35
bb35:
  %t212 = load i64, ptr %l22, !tbaa !24
  %t213 = load i64, ptr %l21, !tbaa !24
  %t216 = icmp slt i64 %t212, %t213
  %t218 = xor i1 %t216, true
  br i1 %t218, label %bb36, label %bb37
bb36:
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t220 = load i64, ptr %l18, !tbaa !24
  %t221 = load i64, ptr %l22, !tbaa !24
  %t222 = load i64, ptr %l20, !tbaa !24
  %t225 = mul i64 %t221, %t222
  %t228 = add i64 %t220, %t225
  store i64 %t228, ptr %l23, !tbaa !24
  %t230 = load i64, ptr %l23, !tbaa !24
  store i64 %t230, ptr %l132, !tbaa !24
  %t231 = load i64, ptr %l23, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i64, ptr %t234, i64 %t231
  %t236 = load i64, ptr %t235, !tbaa !34
  %t237 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t240 = icmp eq i64 %t236, %t237
  br i1 %t240, label %bb39, label %bb40
bb39:
  %t242 = load i32, ptr %l15, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [1 x i64] }, ptr %t243, i32 0, i32 0
  store i64 0, ptr %t244
  %t246 = insertvalue { i32 } undef, i32 %t242, 0
  %t247 = getelementptr { i64, [1 x i64] }, ptr %t243, i32 0, i32 1
  store { i32 } %t246, ptr %t247
  %t248 = load { i64, [1 x i64] }, ptr %t243
  store { i64, [1 x i64] } %t248, ptr %l137
  br label %bb41
bb40:
  store { i64, [1 x i64] } zeroinitializer, ptr %t250
  %t251 = getelementptr { i64, [1 x i64] }, ptr %t250, i32 0, i32 0
  store i64 2, ptr %t251
  %t252 = load { i64, [1 x i64] }, ptr %t250
  store { i64, [1 x i64] } %t252, ptr %l137
  br label %bb41
bb41:
  %t254 = load { i64, [1 x i64] }, ptr %l137
  %t255 = load i64, ptr %l132, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr { i64, [1 x i64] }, ptr %t257, i64 %t255
  store { i64, [1 x i64] } %t254, ptr %t258
  br label %bb42
bb42:
  %t259 = load i64, ptr %l22, !tbaa !24
  %t261 = add i64 %t259, 1
  store i64 %t261, ptr %l22, !tbaa !24
  br label %bb35
bb43:
  %t263 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t267 = icmp sgt i64 %t265, 0
  br i1 %t267, label %bb44, label %bb45
bb44:
  %t269 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr i64, ptr %t270, i64 0
  %t272 = load i64, ptr %t271, !tbaa !34
  %t274 = icmp eq i64 %t272, 0
  store i1 %t274, ptr %l146, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb46
bb46:
  %t276 = load i1, ptr %l146, !tbaa !21
  br i1 %t276, label %bb47, label %bb48
bb47:
  %t277 = load ptr, ptr %l6, !tbaa !29
  %t278 = load i32, ptr %l10, !tbaa !23
  %t281 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t277, i32 %t278)
  store i1 %t281, ptr %l152
  br label %bb49
bb48:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb50
bb49:
  %t282 = load i1, ptr %l152, !tbaa !21
  store i1 %t282, ptr %l149, !tbaa !21
  br label %bb50
bb50:
  %t283 = load i1, ptr %l149, !tbaa !21
  br i1 %t283, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s5
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t286 = load %"compiler/source:Span", ptr %l4
  %t290 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t284, i32 %t285, %"compiler/source:Span" %t286)
  store i32 %t290, ptr %l156
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t291 = load i32, ptr %l156, !tbaa !23
  store i32 %t291, ptr %l24, !tbaa !23
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l157, !tbaa !29
  %t293 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t293, ptr %l158
  %t294 = load i32, ptr %l24, !tbaa !23
  %t296 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t294)
  store %"compiler/mir:Lvalue" %t296, ptr %l160
  br label %bb54
bb54:
  %t297 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [15 x i64] } zeroinitializer, ptr %t298
  %t299 = getelementptr { i64, [15 x i64] }, ptr %t298, i32 0, i32 0
  store i64 15, ptr %t299
  %t301 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t297, 0
  %t302 = getelementptr { i64, [15 x i64] }, ptr %t298, i32 0, i32 1
  store { { i64, [4 x i64] } } %t301, ptr %t302
  %t303 = load { i64, [15 x i64] }, ptr %t298
  store { i64, [21 x i64] } zeroinitializer, ptr %t304
  %t305 = getelementptr { i64, [21 x i64] }, ptr %t304, i32 0, i32 0
  store i64 0, ptr %t305
  %t306 = load %"compiler/source:Span", ptr %l158
  %t307 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t306, 0
  %t308 = load %"compiler/mir:Lvalue", ptr %l160
  %t309 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t307, %"compiler/mir:Lvalue" %t308, 1
  %t311 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t309, { i64, [15 x i64] } %t303, 2
  %t312 = getelementptr { i64, [21 x i64] }, ptr %t304, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t311, ptr %t312
  %t313 = load { i64, [21 x i64] }, ptr %t304
  %t315 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 176, i64 8)
  store { i64, [21 x i64] } %t313, ptr %t315
  %t316 = load ptr, ptr %l157, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s5, ptr %t316, ptr %t315)
  br label %bb55
bb55:
  %t318 = load i32, ptr %l24, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t319
  %t320 = getelementptr { i64, [1 x i64] }, ptr %t319, i32 0, i32 0
  store i64 4, ptr %t320
  %t322 = insertvalue { i32 } undef, i32 %t318, 0
  %t323 = getelementptr { i64, [1 x i64] }, ptr %t319, i32 0, i32 1
  store { i32 } %t322, ptr %t323
  %t324 = load { i64, [1 x i64] }, ptr %t319
  %t326 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr { i64, [1 x i64] }, ptr %t327, i64 0
  store { i64, [1 x i64] } %t324, ptr %t328
  call void @__olang_scope_close(ptr %s5)
  br label %bb56
bb56:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/lower:lowering", ptr %t329, i32 0, i32 3
  store ptr %t331, ptr %l168, !tbaa !29
  %t332 = load { i64, [7 x i64] }, ptr %l8
  store { i64, [7 x i64] } %t332, ptr %l169
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/lower:lowering", ptr %t333, i32 0, i32 3
  %t336 = load { i64, [4 x i64] }, ptr %l11
  %t337 = mul i64 1, 40
  %t338 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t337)
  %t339 = insertvalue { i64, ptr } undef, i64 1, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  store { i64, ptr } %t340, ptr %l173, !tbaa !27
  %t342 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr { i64, [4 x i64] }, ptr %t343, i64 0
  store { i64, [4 x i64] } %t336, ptr %t344
  %t346 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t347 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t335, { i64, ptr } %t346)
  store %"compiler/mir:Range" %t347, ptr %l174
  br label %bb57
bb57:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/lower:lowering", ptr %t348, i32 0, i32 3
  %t351 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t354 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t350, { i64, ptr } %t351)
  store %"compiler/mir:Range" %t354, ptr %l178
  br label %bb58
bb58:
  %t355 = load i32, ptr %l14, !tbaa !23
  %t357 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t355)
  store %"compiler/mir:Lvalue" %t357, ptr %l180
  br label %bb59
bb59:
  %t358 = load i32, ptr %l13, !tbaa !23
  %t359 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t360 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t361 = load { i64, [7 x i64] }, ptr %l169
  %t362 = load %"compiler/mir:Range", ptr %l174
  %t363 = load %"compiler/mir:Range", ptr %l178
  %t364 = load %"compiler/mir:Lvalue", ptr %l180
  %t368 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t361, %"compiler/mir:Range" %t362, %"compiler/mir:Range" %t363, %"compiler/mir:Lvalue" %t364, i1 true, i32 %t358, i32 %t359, i32 %t360)
  store %"compiler/mir:Call" %t368, ptr %l184
  br label %bb60
bb60:
  %t369 = load ptr, ptr %l168, !tbaa !29
  %t370 = load %"compiler/mir:Call", ptr %l184
  %t371 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t369, %"compiler/mir:Call" %t370)
  store i32 %t371, ptr %l185
  br label %bb61
bb61:
  %t372 = load i32, ptr %l185, !tbaa !23
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load %"compiler/source:Span", ptr %l4
  store { i64, [8 x i64] } zeroinitializer, ptr %t376
  %t377 = getelementptr { i64, [8 x i64] }, ptr %t376, i32 0, i32 0
  store i64 4, ptr %t377
  %t379 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t374, 0
  %t381 = insertvalue { %"compiler/source:Span", i32 } %t379, i32 %t372, 1
  %t382 = getelementptr { i64, [8 x i64] }, ptr %t376, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t381, ptr %t382
  %t383 = load { i64, [8 x i64] }, ptr %t376
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t373, { i64, [8 x i64] } %t383)
  br label %bb62
bb62:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t386, i32 %t387)
  br label %bb63
bb63:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l192, !tbaa !29
  %t391 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t391, ptr %l193
  store { i64, [1 x i64] } %a3, ptr %l194
  store i32 0, ptr %l195
  %t393 = load i32, ptr %l14, !tbaa !23
  %t395 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t393)
  store %"compiler/mir:Lvalue" %t395, ptr %l197
  br label %bb64
bb64:
  store { i64, [4 x i64] } zeroinitializer, ptr %t396
  %t397 = getelementptr { i64, [4 x i64] }, ptr %t396, i32 0, i32 0
  store i64 1, ptr %t397
  %t398 = load %"compiler/mir:Lvalue", ptr %l197
  %t399 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t398, 0
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t396, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t399, ptr %t400
  %t401 = load { i64, [4 x i64] }, ptr %t396
  store { i64, [21 x i64] } zeroinitializer, ptr %t402
  %t403 = getelementptr { i64, [21 x i64] }, ptr %t402, i32 0, i32 0
  store i64 8, ptr %t403
  %t404 = load %"compiler/source:Span", ptr %l193
  %t405 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t404, 0
  %t406 = load { i64, [1 x i64] }, ptr %l194
  %t407 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t405, { i64, [1 x i64] } %t406, 1
  %t408 = load i32, ptr %l195, !range !{i32 0, i32 8}
  %t409 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t407, i32 %t408, 2
  %t411 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t409, { i64, [4 x i64] } %t401, 3
  %t412 = getelementptr { i64, [21 x i64] }, ptr %t402, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t411, ptr %t412
  %t413 = load { i64, [21 x i64] }, ptr %t402
  %t415 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t413, ptr %t415
  %t416 = load ptr, ptr %l192, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t416, ptr %t415)
  br label %bb65
bb65:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load %"compiler/source:Span", ptr %l4
  %t420 = load i32, ptr %l15, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t421
  %t422 = getelementptr { i64, [21 x i64] }, ptr %t421, i32 0, i32 0
  store i64 4, ptr %t422
  %t424 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t419, 0
  %t426 = insertvalue { %"compiler/source:Span", i32 } %t424, i32 %t420, 1
  %t427 = getelementptr { i64, [21 x i64] }, ptr %t421, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t426, ptr %t427
  %t428 = load { i64, [21 x i64] }, ptr %t421
  %t430 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t428, ptr %t430
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t418, ptr %t430)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eresultViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/typed:ViewWalk"
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
  %l24 = alloca %"compiler/typed:ViewWalk"
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i32
  %l73 = alloca %"compiler/typed:ViewWalk"
  %l77 = alloca i64
  %l81 = alloca i64
  %l84 = alloca i64
  %l105 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca ptr
  %l112 = alloca ptr
  %l116 = alloca i64
  %l120 = alloca i64
  %l123 = alloca i64
  %l144 = alloca i64
  %l147 = alloca ptr
  %l148 = alloca ptr
  %l152 = alloca ptr
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"compiler/typed:ViewWalk" @compiler_2flower_2ecompiler_2flower_3alowering_2eviewWalk(ptr %v0, ptr %v0, ptr %t1)
  store %"compiler/typed:ViewWalk" %t3, ptr %l24
  br label %bb1
bb1:
  %t4 = load %"compiler/typed:ViewWalk", ptr %l24
  %t5 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 56, i64 8)
  store %"compiler/typed:ViewWalk" %t4, ptr %t5
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:lowering", ptr %t7, i32 0, i32 44
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eSettle(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v0, ptr %t5, ptr %t6, ptr %t9)
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 7
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l32
  br label %bb3
bb3:
  %t21 = load i64, ptr %l32, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb9
bb6:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l39, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l39, !tbaa !24
  store i64 %t48, ptr %l36, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l36, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb11, label %bb12
bb11:
  br label %bb23
bb12:
  br label %bb13
bb13:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t68, i32 0, i32 44
  %t74 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t70, i64 %t66)
  %t75 = extractvalue { i32, i64 } %t74, 1
  %t76 = extractvalue { i32, i64 } %t74, 0
  store i32 %t76, ptr %l62
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb15, label %ok.78, !prof !99
ok.78:
  store i64 %t75, ptr %l61
  br label %bb14
bb14:
  %t79 = load i64, ptr %l61, !tbaa !24
  store i64 %t79, ptr %l57, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  br label %bb22
bb17:
  %t80 = load i64, ptr %l57, !tbaa !24
  store i64 %t80, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = and i64 %a2, %t82
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = icmp ne i64 %t85, %t86
  br i1 %t89, label %bb18, label %bb19
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/lower:lowering", ptr %t91, i32 0, i32 44
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t93)
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  br label %bb22
bb22:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l7, !tbaa !24
  br label %bb10
bb23:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call %"compiler/typed:ViewWalk" @compiler_2flower_2ecompiler_2flower_3alowering_2eviewWalk(ptr %v0, ptr %v0, ptr %t99)
  store %"compiler/typed:ViewWalk" %t101, ptr %l73
  br label %bb24
bb24:
  %t102 = load %"compiler/typed:ViewWalk", ptr %l73
  store %"compiler/typed:ViewWalk" %t102, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/lower:lowering", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Body", ptr %t106, i32 0, i32 7
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l77
  br label %bb25
bb25:
  %t111 = load i64, ptr %l77, !tbaa !24
  store i64 %t111, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = load i64, ptr %l13, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb31
bb28:
  %t122 = load i64, ptr %l12, !tbaa !24
  %t123 = load i64, ptr %l11, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t127 = load i64, ptr %l13, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t132 = sub i64 %t130, 1
  %t133 = load i64, ptr %l13, !tbaa !24
  %t136 = sdiv i64 %t132, %t133
  store i64 %t136, ptr %l84, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb30
bb30:
  %t138 = load i64, ptr %l84, !tbaa !24
  store i64 %t138, ptr %l81, !tbaa !24
  br label %bb31
bb31:
  %t139 = load i64, ptr %l81, !tbaa !24
  store i64 %t139, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb32
bb32:
  %t140 = load i64, ptr %l15, !tbaa !24
  %t141 = load i64, ptr %l14, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb33, label %bb34
bb33:
  br label %bb62
bb34:
  br label %bb35
bb35:
  %t148 = load i64, ptr %l11, !tbaa !24
  %t149 = load i64, ptr %l15, !tbaa !24
  %t150 = load i64, ptr %l13, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t156 = add i64 %t148, %t153
  store i64 %t156, ptr %l16, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/lower:lowering", ptr %t158, i32 0, i32 44
  %t161 = load i64, ptr %l16, !tbaa !24
  %t164 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t160, i64 %t161)
  store i1 %t164, ptr %l105
  br label %bb36
bb36:
  %t165 = load i1, ptr %l105, !tbaa !21
  %t166 = xor i1 %t165, true
  br i1 %t166, label %bb37, label %bb38
bb37:
  br label %bb61
bb38:
  br label %bb39
bb39:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l107, !tbaa !29
  store ptr %l10, ptr %l108, !tbaa !29
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/typed:LocalUses", ptr %t169, i32 0, i32 9
  %t172 = load i64, ptr %l16, !tbaa !24
  %t175 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %v1, ptr %t171, i64 %t172)
  store ptr %t175, ptr %l112
  br label %bb40
bb40:
  %t176 = load i64, ptr %l16, !tbaa !24
  %t177 = load ptr, ptr %l107, !tbaa !29
  %t178 = load ptr, ptr %l108, !tbaa !29
  %t179 = load ptr, ptr %l112, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eelide(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %t177, ptr %t178, ptr %t179, i64 %t176)
  br label %bb41
bb41:
  store i64 0, ptr %l17, !tbaa !24
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr %"compiler/typed:LocalUses", ptr %t181, i32 0, i32 10
  %t185 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t183)
  store i64 %t185, ptr %l116
  br label %bb42
bb42:
  %t186 = load i64, ptr %l116, !tbaa !24
  store i64 %t186, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t187 = load i64, ptr %l18, !tbaa !24
  %t188 = load i64, ptr %l17, !tbaa !24
  %t191 = icmp sgt i64 %t187, %t188
  br i1 %t191, label %bb43, label %bb44
bb43:
  %t193 = load i64, ptr %l19, !tbaa !24
  %t195 = icmp sgt i64 %t193, 0
  br i1 %t195, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb48
bb45:
  %t197 = load i64, ptr %l18, !tbaa !24
  %t198 = load i64, ptr %l17, !tbaa !24
  %t201 = sub i64 %t197, %t198
  %t202 = load i64, ptr %l19, !tbaa !24
  %t205 = add i64 %t201, %t202
  %t207 = sub i64 %t205, 1
  %t208 = load i64, ptr %l19, !tbaa !24
  %t211 = sdiv i64 %t207, %t208
  store i64 %t211, ptr %l123, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb47
bb47:
  %t213 = load i64, ptr %l123, !tbaa !24
  store i64 %t213, ptr %l120, !tbaa !24
  br label %bb48
bb48:
  %t214 = load i64, ptr %l120, !tbaa !24
  store i64 %t214, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb49
bb49:
  %t215 = load i64, ptr %l21, !tbaa !24
  %t216 = load i64, ptr %l20, !tbaa !24
  %t219 = icmp slt i64 %t215, %t216
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb50, label %bb51
bb50:
  br label %bb60
bb51:
  br label %bb52
bb52:
  %t223 = load i64, ptr %l17, !tbaa !24
  %t224 = load i64, ptr %l21, !tbaa !24
  %t225 = load i64, ptr %l19, !tbaa !24
  %t228 = mul i64 %t224, %t225
  %t231 = add i64 %t223, %t228
  store i64 %t231, ptr %l22, !tbaa !24
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr %"compiler/typed:LocalUses", ptr %t233, i32 0, i32 10
  %t236 = load i64, ptr %l22, !tbaa !24
  %t239 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t235, i64 %t236)
  store i64 %t239, ptr %l144
  br label %bb53
bb53:
  %t240 = load i64, ptr %l16, !tbaa !24
  %t241 = load i64, ptr %l144, !tbaa !24
  %t243 = icmp eq i64 %t241, %t240
  br i1 %t243, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s11
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l147, !tbaa !29
  store ptr %l10, ptr %l148, !tbaa !29
  %t246 = load ptr, ptr %l1, !tbaa !29
  %t248 = getelementptr %"compiler/typed:LocalUses", ptr %t246, i32 0, i32 11
  %t249 = load i64, ptr %l22, !tbaa !24
  %t252 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v1, ptr %s11, ptr %t248, i64 %t249)
  store ptr %t252, ptr %l152
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t253 = load ptr, ptr %l152, !tbaa !29
  %t254 = load ptr, ptr %l147, !tbaa !29
  %t255 = load ptr, ptr %l148, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eelide(ptr %v0, ptr %v0, ptr %s11, ptr %v0, ptr %v0, ptr %t254, ptr %t255, ptr %t253, i64 -1)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s11)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t257 = load i64, ptr %l21, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l21, !tbaa !24
  br label %bb49
bb60:
  br label %bb61
bb61:
  %t261 = load i64, ptr %l15, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l15, !tbaa !24
  br label %bb32
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eret(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i1
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca i1
  %l38 = alloca i32
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca %"compiler/source:Span"
  %l47 = alloca { i64, [1 x i64] }
  %l48 = alloca { i64, [4 x i64] }
  %l55 = alloca i32
  %l58 = alloca i1
  %l63 = alloca i1
  %l65 = alloca i1
  %l69 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l80 = alloca %"compiler/mir:Lvalue"
  %t9 = alloca { i64, [4 x i64] }, align 8
  %t12 = alloca { i64, [8 x i64] }, align 8
  %t156 = alloca { i64, [4 x i64] }, align 8
  %t162 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t5, i64 0)
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  store { i64, [4 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [4 x i64] }, ptr %t9
  store { i64, [8 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [8 x i64] }, ptr %t12, i32 0, i32 0
  store i64 5, ptr %t13
  %t15 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t8, 0
  %t17 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t15, { i64, [4 x i64] } %t11, 1
  %t18 = getelementptr { i64, [8 x i64] }, ptr %t12, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t17, ptr %t18
  %t19 = load { i64, [8 x i64] }, ptr %t12
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t7, { i64, [8 x i64] } %t19)
  br label %bb4
bb4:
  br label %ret
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 6
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/source:Span", ptr %t34
  store %"compiler/source:Span" %t35, ptr %l3
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l4, !tbaa !23
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l5, !tbaa !29
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Call", ptr %t49, i32 0, i32 4
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb11, label %bb12
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l3
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t57 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2etail(ptr %v0, ptr %v1, ptr %t54, %"compiler/source:Span" %t55, ptr %t56, i32 %t57)
  br label %bb13
bb12:
  br label %bb14
bb13:
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
  call void @__olang_check_failed(ptr @olang_loc_1cfeed275c1dbeae_9c68fab96b3cccca)
  unreachable
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 2
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lower:lowering", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %t71, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t65, i32 %t72)
  store i32 %t75, ptr %l38
  br label %bb21
bb21:
  %t76 = load i32, ptr %l38, !tbaa !23
  store i32 %t76, ptr %l6, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t81 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretView(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  store i1 %t81, ptr %l41
  br label %bb22
bb22:
  %t82 = load i1, ptr %l41, !tbaa !21
  store i1 %t82, ptr %l7, !tbaa !21
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l42, !tbaa !29
  %t84 = load ptr, ptr %l2, !tbaa !29
  store ptr %t84, ptr %l43, !tbaa !29
  %t85 = load i32, ptr %l6, !tbaa !23
  store i32 %t85, ptr %l44, !tbaa !23
  %t86 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t86, ptr %l45
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t87)
  store { i64, [1 x i64] } %t89, ptr %l47
  br label %bb23
bb23:
  %t90 = load ptr, ptr %l42, !tbaa !29
  %t91 = load ptr, ptr %l43, !tbaa !29
  %t92 = load i32, ptr %l44, !tbaa !23
  %t93 = load %"compiler/source:Span", ptr %l45
  %t94 = load { i64, [1 x i64] }, ptr %l47
  %t95 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efitAt(ptr %v0, ptr %v1, ptr %t90, ptr %t91, i32 %t92, %"compiler/source:Span" %t93, { i64, [1 x i64] } %t94)
  store { i64, [4 x i64] } %t95, ptr %l48
  br label %bb24
bb24:
  %t96 = load { i64, [4 x i64] }, ptr %l48
  store { i64, [4 x i64] } %t96, ptr %l8
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/lower:lowering", ptr %t97, i32 0, i32 10
  %t100 = load i1, ptr %t99, !tbaa !21
  br i1 %t100, label %bb25, label %bb26
bb25:
  br label %ret
bb26:
  br label %bb27
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, [4 x i64] }, ptr %l8
  %t104 = load i32, ptr %l6, !tbaa !23
  %t105 = load %"compiler/source:Span", ptr %l1
  %t110 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t102, { i64, [4 x i64] } %t103, i32 %t104, %"compiler/source:Span" %t105)
  store i32 %t110, ptr %l55
  br label %bb28
bb28:
  %t111 = load i32, ptr %l55, !tbaa !23
  store i32 %t111, ptr %l9, !tbaa !23
  %t112 = load i1, ptr %l7, !tbaa !21
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = load i32, ptr %l6, !tbaa !23
  %t123 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %t116, ptr %t117, i32 %t119)
  store i1 %t123, ptr %l63
  br label %bb31
bb30:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb32
bb31:
  %t124 = load i1, ptr %l63, !tbaa !21
  %t125 = xor i1 %t124, true
  store i1 %t125, ptr %l58, !tbaa !21
  br label %bb32
bb32:
  %t127 = load i1, ptr %l58, !tbaa !21
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t130 = load i32, ptr %l6, !tbaa !23
  %t134 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidens(ptr %v0, ptr %v1, ptr %t128, ptr %t129, i32 %t130)
  store i1 %t134, ptr %l69
  br label %bb35
bb34:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb36
bb35:
  %t135 = load i1, ptr %l69, !tbaa !21
  %t136 = xor i1 %t135, true
  store i1 %t136, ptr %l65, !tbaa !21
  br label %bb36
bb36:
  %t138 = load i1, ptr %l65, !tbaa !21
  br i1 %t138, label %bb37, label %bb38
bb37:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load i32, ptr %l9, !tbaa !23
  %t141 = load i32, ptr %l6, !tbaa !23
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eretArrays(ptr %v0, ptr %v1, ptr %t139, i32 %t140, i32 %t141, ptr %t142, %"compiler/source:Span" %t143)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t149, i64 0)
  br label %bb41
bb41:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l77, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t152, ptr %l78
  %t153 = load i32, ptr %l9, !tbaa !23
  %t155 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t153)
  store %"compiler/mir:Lvalue" %t155, ptr %l80
  br label %bb42
bb42:
  store { i64, [4 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [4 x i64] }, ptr %t156, i32 0, i32 0
  store i64 1, ptr %t157
  %t158 = load %"compiler/mir:Lvalue", ptr %l80
  %t159 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t158, 0
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t156, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t159, ptr %t160
  %t161 = load { i64, [4 x i64] }, ptr %t156
  store { i64, [8 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [8 x i64] }, ptr %t162, i32 0, i32 0
  store i64 5, ptr %t163
  %t164 = load %"compiler/source:Span", ptr %l78
  %t165 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t164, 0
  %t167 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t165, { i64, [4 x i64] } %t161, 1
  %t168 = getelementptr { i64, [8 x i64] }, ptr %t162, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t167, ptr %t168
  %t169 = load { i64, [8 x i64] }, ptr %t162
  %t170 = load ptr, ptr %l77, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t170, { i64, [8 x i64] } %t169)
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
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
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca %"compiler/lower:level"
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l63 = alloca { i64, ptr }
  %l70 = alloca i1
  %l78 = alloca i1
  %l79 = alloca ptr
  %l88 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l99 = alloca i1
  %l109 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l127 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i1
  %l144 = alloca i1
  %l148 = alloca i1
  %l150 = alloca i1
  %l153 = alloca i1
  %l154 = alloca i1
  %l157 = alloca i1
  %l161 = alloca i1
  %l169 = alloca i64
  %l174 = alloca i64
  %l176 = alloca i64
  %l181 = alloca %"compiler/lower:level"
  %l189 = alloca ptr
  %l190 = alloca ptr
  %l191 = alloca i1
  %l196 = alloca ptr
  %l197 = alloca i1
  %l206 = alloca %"compiler/mir:Local"
  %l207 = alloca { i64, [1 x i64] }
  %l208 = alloca ptr
  %l210 = alloca { i64, [1 x i64] }
  %l212 = alloca i1
  %l214 = alloca i1
  %l217 = alloca i1
  %l218 = alloca i1
  %l220 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l30
  br label %bb4
bb4:
  %t11 = load i1, ptr %l30, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t13 = load ptr, ptr %l31, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb7, label %bb8
bb6:
  br label %bb79
bb7:
  %t16 = load ptr, ptr %l31, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 18}
  %t19 = icmp eq i64 %t17, 11
  store i1 %t19, ptr %l32, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l32, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Cond", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t36 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t27, ptr %t31, i32 %t32)
  store i1 %t36, ptr %l41
  br label %bb12
bb12:
  %t37 = load i1, ptr %l41, !tbaa !21
  br i1 %t37, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb16
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Cond", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  %t48 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t38, ptr %t42, i32 %t44)
  store i1 %t48, ptr %l48
  br label %bb15
bb15:
  %t49 = load i1, ptr %l48, !tbaa !21
  store i1 %t49, ptr %l42, !tbaa !21
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load i1, ptr %l42, !tbaa !21
  store i1 %t50, ptr %rv
  br label %ret
bb17:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t52 = load ptr, ptr %l49, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t55 = load ptr, ptr %l49, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 18}
  %t58 = icmp eq i64 %t56, 13
  store i1 %t58, ptr %l50, !tbaa !21
  br label %bb19
bb19:
  %t59 = load i1, ptr %l50, !tbaa !21
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb40
bb22:
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Match", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb23
bb23:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb24, label %bb25
bb24:
  br label %bb32
bb25:
  br label %bb26
bb26:
  %t83 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t83, ptr %l63, !tbaa !27
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr ptr, ptr %t87, i64 %t84
  %t89 = load ptr, ptr %t88, !tbaa !39
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Arm", ptr %t89, i32 0, i32 4
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load i32, ptr %l2, !tbaa !23
  %t100 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t91, ptr %t95, i32 %t96)
  store i1 %t100, ptr %l70
  br label %bb27
bb27:
  %t101 = load i1, ptr %l70, !tbaa !21
  br i1 %t101, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l6, !tbaa !24
  br label %bb23
bb32:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Match", ptr %t107, i32 0, i32 2
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb33, label %bb34
bb33:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l79, !tbaa !29
  %t117 = load ptr, ptr %l4, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Match", ptr %t117, i32 0, i32 2
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = icmp eq ptr %t120, null
  br i1 %t122, label %bb35, label %bb36
bb34:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb39
bb35:
  call void @__olang_check_failed(ptr @olang_loc_ddcb411f232bf43e_ce3417657830a5fa)
  unreachable
bb36:
  br label %bb37
bb37:
  %t124 = load ptr, ptr %l4, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Match", ptr %t124, i32 0, i32 2
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Arm", ptr %t127, i32 0, i32 4
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i32, ptr %l2, !tbaa !23
  %t133 = load ptr, ptr %l79, !tbaa !29
  %t136 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t133, ptr %t131, i32 %t132)
  store i1 %t136, ptr %l88
  br label %bb38
bb38:
  %t137 = load i1, ptr %l88, !tbaa !21
  store i1 %t137, ptr %l78, !tbaa !21
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t138 = load i1, ptr %l78, !tbaa !21
  store i1 %t138, ptr %rv
  br label %ret
bb40:
  %t139 = load ptr, ptr %l1, !tbaa !29
  store ptr %t139, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t140 = load ptr, ptr %l89, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb41, label %bb42
bb41:
  %t143 = load ptr, ptr %l89, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 18}
  %t146 = icmp eq i64 %t144, 14
  store i1 %t146, ptr %l90, !tbaa !21
  br label %bb42
bb42:
  %t147 = load i1, ptr %l90, !tbaa !21
  br i1 %t147, label %bb43, label %bb44
bb43:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr { i64, [5 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t150, i32 0, i32 2
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l9, !tbaa !29
  br label %bb45
bb44:
  br label %bb66
bb45:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l9, !tbaa !29
  %t157 = getelementptr %"compiler/typed:Try", ptr %t155, i32 0, i32 0
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i32, ptr %l2, !tbaa !23
  %t163 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t154, ptr %t158, i32 %t159)
  store i1 %t163, ptr %l99
  br label %bb46
bb46:
  %t164 = load i1, ptr %l99, !tbaa !21
  br i1 %t164, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t166 = load ptr, ptr %l9, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Try", ptr %t166, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 0
  store i64 %t173, ptr %l12, !tbaa !24
  br label %bb50
bb50:
  %t175 = load i64, ptr %l11, !tbaa !24
  %t176 = load i64, ptr %l12, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb51, label %bb52
bb51:
  br label %bb65
bb52:
  br label %bb53
bb53:
  %t183 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t183, ptr %l109, !tbaa !27
  %t184 = load i64, ptr %l11, !tbaa !24
  %t186 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr ptr, ptr %t187, i64 %t184
  %t189 = load ptr, ptr %t188, !tbaa !39
  %t193 = getelementptr %"compiler/typed:Clause", ptr %t189, i32 0, i32 4
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  store i64 %t198, ptr %l16, !tbaa !24
  br label %bb54
bb54:
  %t200 = load i64, ptr %l15, !tbaa !24
  %t201 = load i64, ptr %l16, !tbaa !24
  %t204 = icmp slt i64 %t200, %t201
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb55, label %bb56
bb55:
  br label %bb63
bb56:
  br label %bb57
bb57:
  %t208 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t208, ptr %l120, !tbaa !27
  %t209 = load i64, ptr %l15, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr ptr, ptr %t212, i64 %t209
  %t214 = load ptr, ptr %t213, !tbaa !39
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i32, ptr %l2, !tbaa !23
  %t223 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t216, ptr %t214, i32 %t219)
  store i1 %t223, ptr %l127
  br label %bb58
bb58:
  %t224 = load i1, ptr %l127, !tbaa !21
  br i1 %t224, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t226 = load i64, ptr %l15, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l15, !tbaa !24
  br label %bb54
bb63:
  br label %bb64
bb64:
  %t230 = load i64, ptr %l11, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l11, !tbaa !24
  br label %bb50
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb66:
  %t235 = load ptr, ptr %l1, !tbaa !29
  store ptr %t235, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t236 = load ptr, ptr %l134, !tbaa !29
  %t237 = icmp ne ptr %t236, null
  br i1 %t237, label %bb67, label %bb68
bb67:
  %t239 = load ptr, ptr %l134, !tbaa !29
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 18}
  %t242 = icmp eq i64 %t240, 12
  store i1 %t242, ptr %l135, !tbaa !21
  br label %bb68
bb68:
  %t243 = load i1, ptr %l135, !tbaa !21
  br i1 %t243, label %bb69, label %bb70
bb69:
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t246 = getelementptr { i64, [5 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t246, i32 0, i32 2
  %t248 = load ptr, ptr %t247
  store ptr %t248, ptr %l18, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load ptr, ptr %l18, !tbaa !29
  %t253 = getelementptr %"compiler/typed:Seq", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t255 = load i32, ptr %l2, !tbaa !23
  %t259 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t250, ptr %t254, i32 %t255)
  store i1 %t259, ptr %l144
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t260 = load i1, ptr %l144, !tbaa !21
  store i1 %t260, ptr %rv
  br label %ret
bb73:
  br i1 true, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_ecde87765d07009c_52dfe83edba10a08)
  unreachable
bb78:
  br label %bb79
bb79:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t263 = load i32, ptr %l2, !tbaa !23
  %t267 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %t261, ptr %t262, i32 %t263)
  store i1 %t267, ptr %l148
  br label %bb80
bb80:
  %t268 = load i1, ptr %l148, !tbaa !21
  %t269 = xor i1 %t268, true
  br i1 %t269, label %bb81, label %bb82
bb81:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load i32, ptr %l2, !tbaa !23
  %t275 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %t271, i32 %t272)
  store i1 %t275, ptr %l153
  br label %bb83
bb82:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb88
bb83:
  %t276 = load i1, ptr %l153, !tbaa !21
  br i1 %t276, label %bb84, label %bb85
bb84:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load ptr, ptr %l1, !tbaa !29
  %t281 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t277, ptr %t278)
  store i1 %t281, ptr %l157
  br label %bb86
bb85:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb87
bb86:
  %t282 = load i1, ptr %l157, !tbaa !21
  store i1 %t282, ptr %l154, !tbaa !21
  br label %bb87
bb87:
  %t283 = load i1, ptr %l154, !tbaa !21
  %t284 = xor i1 %t283, true
  store i1 %t284, ptr %l150, !tbaa !21
  br label %bb88
bb88:
  %t286 = load i1, ptr %l150, !tbaa !21
  br i1 %t286, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = call i1 @compiler_2ftyped_2eFreshTemp(ptr %v1, ptr %t288)
  store i1 %t290, ptr %l161
  br label %bb92
bb92:
  %t291 = load i1, ptr %l161, !tbaa !21
  br i1 %t291, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb94:
  br label %bb95
bb95:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/lower:lowering", ptr %t293, i32 0, i32 24
  %t296 = load i1, ptr %t295, !tbaa !21
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb96, label %bb97
bb96:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb97:
  br label %bb98
bb98:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/lower:lowering", ptr %t301, i32 0, i32 15
  %t305 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t303)
  store i64 %t305, ptr %l169
  br label %bb99
bb99:
  %t306 = load i64, ptr %l169, !tbaa !24
  %t307 = icmp sgt i64 %t306, 0
  br i1 %t307, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb101:
  br label %bb102
bb102:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/lower:lowering", ptr %t310, i32 0, i32 12
  store ptr %t312, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb103
bb103:
  %t314 = load i64, ptr %l20, !tbaa !24
  store i64 %t314, ptr %l174, !tbaa !24
  %t315 = load ptr, ptr %l19, !tbaa !29
  %t317 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t315)
  store i64 %t317, ptr %l176
  br label %bb104
bb104:
  %t318 = load i64, ptr %l174, !tbaa !24
  %t319 = load i64, ptr %l176, !tbaa !24
  %t320 = icmp slt i64 %t318, %t319
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb105, label %bb106
bb105:
  br label %bb113
bb106:
  br label %bb107
bb107:
  %t324 = load ptr, ptr %l19, !tbaa !29
  %t325 = load i64, ptr %l20, !tbaa !24
  %t328 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t324, i64 %t325)
  store %"compiler/lower:level" %t328, ptr %l181
  br label %bb108
bb108:
  %t329 = load %"compiler/lower:level", ptr %l181
  store %"compiler/lower:level" %t329, ptr %l21
  %t330 = getelementptr %"compiler/lower:level", ptr %l21, i32 0, i32 2
  %t331 = load i32, ptr %t330, !range !{i32 0, i32 7}
  %t333 = trunc i64 3 to i32
  %t334 = icmp eq i32 %t331, %t333
  br i1 %t334, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t337 = load i64, ptr %l20, !tbaa !24
  %t339 = add i64 %t337, 1
  store i64 %t339, ptr %l20, !tbaa !24
  br label %bb103
bb113:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load ptr, ptr %l1, !tbaa !29
  %t345 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %s0, ptr %t341, ptr %t342)
  store ptr %t345, ptr %l189
  br label %bb114
bb114:
  %t346 = load ptr, ptr %l189, !tbaa !29
  store ptr %t346, ptr %l22, !tbaa !29
  %t347 = load ptr, ptr %l22, !tbaa !29
  store ptr %t347, ptr %l190, !tbaa !29
  store i1 false, ptr %l191, !tbaa !21
  %t348 = load ptr, ptr %l190, !tbaa !29
  %t349 = icmp ne ptr %t348, null
  br i1 %t349, label %bb115, label %bb116
bb115:
  %t351 = load ptr, ptr %l190, !tbaa !29
  %t352 = load i64, ptr %t351, !range !{i64 0, i64 18}
  %t354 = icmp eq i64 %t352, 2
  store i1 %t354, ptr %l191, !tbaa !21
  br label %bb116
bb116:
  %t355 = load i1, ptr %l191, !tbaa !21
  br i1 %t355, label %bb117, label %bb118
bb117:
  %t356 = load ptr, ptr %l22, !tbaa !29
  %t358 = getelementptr { i64, [5 x i64] }, ptr %t356, i32 0, i32 1
  %t359 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t358, i32 0, i32 2
  %t360 = load ptr, ptr %t359
  store ptr %t360, ptr %l23, !tbaa !29
  br label %bb119
bb118:
  br label %bb141
bb119:
  %t362 = load ptr, ptr %l23, !tbaa !29
  store ptr %t362, ptr %l196, !tbaa !29
  store i1 false, ptr %l197, !tbaa !21
  %t363 = load ptr, ptr %l196, !tbaa !29
  %t364 = icmp ne ptr %t363, null
  br i1 %t364, label %bb120, label %bb121
bb120:
  %t366 = load ptr, ptr %l196, !tbaa !29
  %t367 = load i64, ptr %t366, !range !{i64 0, i64 8}
  %t369 = icmp eq i64 %t367, 0
  store i1 %t369, ptr %l197, !tbaa !21
  br label %bb121
bb121:
  %t370 = load i1, ptr %l197, !tbaa !21
  br i1 %t370, label %bb122, label %bb123
bb122:
  %t371 = load ptr, ptr %l23, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t373, i32 0, i32 2
  %t375 = load i32, ptr %t374
  store i32 %t375, ptr %l24, !tbaa !23
  br label %bb124
bb123:
  br label %bb135
bb124:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/lower:lowering", ptr %t377, i32 0, i32 3
  %t380 = getelementptr %"compiler/mir:Fn", ptr %t379, i32 0, i32 7
  %t381 = load i32, ptr %l24, !tbaa !23
  %t383 = sext i32 %t381 to i64
  %t386 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t380, i64 %t383)
  store %"compiler/mir:Local" %t386, ptr %l206
  br label %bb125
bb125:
  %t387 = getelementptr %"compiler/mir:Local", ptr %l206, i32 0, i32 4
  %t388 = load { i64, [1 x i64] }, ptr %t387
  store { i64, [1 x i64] } %t388, ptr %l207
  store ptr %l207, ptr %l208, !tbaa !29
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t389)
  store { i64, [1 x i64] } %t391, ptr %l210
  br label %bb126
bb126:
  %t392 = load ptr, ptr %l208, !tbaa !29
  %t394 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aScopeRef(ptr %t392, ptr %l210)
  store i1 %t394, ptr %l212
  br label %bb127
bb127:
  %t395 = load i1, ptr %l212, !tbaa !21
  %t396 = xor i1 %t395, true
  br i1 %t396, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l214, !tbaa !21
  br label %bb134
bb129:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load i32, ptr %l2, !tbaa !23
  %t402 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t398, i32 %t399)
  store i1 %t402, ptr %l217
  br label %bb130
bb130:
  %t403 = load i1, ptr %l217, !tbaa !21
  br i1 %t403, label %bb131, label %bb132
bb131:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/lower:lowering", ptr %t404, i32 0, i32 30
  %t407 = getelementptr %"compiler/typed:Plan", ptr %t406, i32 0, i32 3
  %t408 = load { i64, ptr }, ptr %t407, !tbaa !27
  store { i64, ptr } %t408, ptr %l220, !tbaa !27
  %t409 = load i32, ptr %l24, !tbaa !23
  %t411 = sext i32 %t409 to i64
  %t413 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = getelementptr i1, ptr %t414, i64 %t411
  %t416 = load i1, ptr %t415, !tbaa !31
  %t418 = xor i1 %t416, true
  store i1 %t418, ptr %l218, !tbaa !21
  br label %bb133
bb132:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb133
bb133:
  %t420 = load i1, ptr %l218, !tbaa !21
  store i1 %t420, ptr %l214, !tbaa !21
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s0)
  %t421 = load i1, ptr %l214, !tbaa !21
  store i1 %t421, ptr %rv
  br label %ret
bb135:
  br i1 true, label %bb136, label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb140
bb139:
  call void @__olang_check_failed(ptr @olang_loc_2e0d72be7b5575d7_214712821f524de3)
  unreachable
bb140:
  br label %bb146
bb141:
  br i1 true, label %bb142, label %bb143
bb142:
  br label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb146
bb145:
  call void @__olang_check_failed(ptr @olang_loc_4b16c1f6667ae236_8522eea6e5c16fe2)
  unreachable
bb146:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erunArrayLocal(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i64
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
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l10
  br label %bb5
bb5:
  %t16 = load i32, ptr %l10, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load i32, ptr %l2, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t21 = icmp ne i32 %t17, %t18
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t23, i32 %t24)
  store i64 %t27, ptr %l17
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t28 = load i64, ptr %l17, !tbaa !24
  %t29 = icmp slt i64 %t28, 0
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l14, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2esettleViews(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/typed:LocalUses"
  %l2 = alloca i64
  %l10 = alloca %"compiler/typed:LocalUses"
  %l16 = alloca i64
  %s0 = alloca %olang.scope
  %t16 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
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
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 2
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t16, ptr %v0, ptr %v0, ptr %s0, ptr %t11, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t16, i64 704, i1 false)
  br label %bb4
bb4:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l10, i64 704, i1 false)
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:lowering", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lower:lowering", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t26, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t22, i32 %t29)
  store i64 %t32, ptr %l16
  br label %bb5
bb5:
  %t33 = load i64, ptr %l16, !tbaa !24
  store i64 %t33, ptr %l2, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eresultViews(ptr %v0, ptr %s0, ptr %t38, ptr %l1, i64 %t39)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eviewLocals(ptr %v0, ptr %s0, ptr %t43, ptr %l1)
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eviewTemps(ptr %v0, ptr %s0, ptr %t46, ptr %l1)
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emovesAtLastUse(ptr %v0, ptr %s0, ptr %t49, ptr %l1)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i32
  %l44 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l70 = alloca i64
  %l74 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t7 = load ptr, ptr %l15, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l15, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l16, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l3, !tbaa !23
  store i32 %t21, ptr %l14, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 -1, ptr %l14, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8c91a6d7a61b2df6_ddcf23b133d92f82)
  unreachable
bb11:
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t31 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t27, i32 %t23)
  store i64 %t31, ptr %l25
  br label %bb12
bb12:
  %t32 = load i64, ptr %l25, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t37 = and i64 %t33, %t34
  %t39 = icmp ne i64 %t37, 0
  br i1 %t39, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l31, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 56
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Call", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t45, i64 %t51)
  %t55 = extractvalue { i32, i1 } %t54, 1
  %t56 = extractvalue { i32, i1 } %t54, 0
  store i32 %t56, ptr %l39
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb17, label %ok.58, !prof !99
ok.58:
  store i1 %t55, ptr %l38
  br label %bb16
bb16:
  %t59 = load i1, ptr %l38, !tbaa !21
  store i1 %t59, ptr %l32, !tbaa !21
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t60 = load i1, ptr %l32, !tbaa !21
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = getelementptr %"compiler/lower:lowering", ptr %t61, i32 0, i32 57
  store i1 %t60, ptr %t62, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Call", ptr %t63, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t68, i64 %t69)
  store i64 %t72, ptr %l44
  br label %bb20
bb20:
  %t73 = load i64, ptr %l44, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t74 = load i64, ptr %l7, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = icmp sgt i64 %t74, %t75
  br i1 %t78, label %bb21, label %bb22
bb21:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t82 = icmp sgt i64 %t80, 0
  br i1 %t82, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb26
bb23:
  %t84 = load i64, ptr %l7, !tbaa !24
  %t85 = load i64, ptr %l6, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l8, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t94 = sub i64 %t92, 1
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = sdiv i64 %t94, %t95
  store i64 %t98, ptr %l51, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb25
bb25:
  %t100 = load i64, ptr %l51, !tbaa !24
  store i64 %t100, ptr %l48, !tbaa !24
  br label %bb26
bb26:
  %t101 = load i64, ptr %l48, !tbaa !24
  store i64 %t101, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  %t102 = load i64, ptr %l10, !tbaa !24
  %t103 = load i64, ptr %l9, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb28, label %bb29
bb28:
  br label %bb39
bb29:
  br label %bb30
bb30:
  %t110 = load i64, ptr %l6, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l8, !tbaa !24
  %t115 = mul i64 %t111, %t112
  %t118 = add i64 %t110, %t115
  store i64 %t118, ptr %l11, !tbaa !24
  %t120 = load i64, ptr %l5, !tbaa !24
  %t121 = load i64, ptr %l11, !tbaa !24
  store i64 %t121, ptr %l70, !tbaa !24
  %t122 = load i64, ptr %l70, !tbaa !24
  %t123 = load i64, ptr %l70, !tbaa !24
  %t124 = shl i64 1, %t123
  %t127 = and i64 %t120, %t124
  %t129 = icmp ne i64 %t127, 0
  br i1 %t129, label %bb31, label %bb32
bb31:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr %"compiler/typed:Call", ptr %t132, i32 0, i32 1
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l77, !tbaa !27
  %t136 = load i64, ptr %l11, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr ptr, ptr %t139, i64 %t136
  %t141 = load ptr, ptr %t140, !tbaa !39
  %t144 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t131, ptr %t141)
  store i1 %t144, ptr %l80
  br label %bb33
bb32:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb34
bb33:
  %t145 = load i1, ptr %l80, !tbaa !21
  %t146 = xor i1 %t145, true
  store i1 %t146, ptr %l74, !tbaa !21
  br label %bb34
bb34:
  %t148 = load i1, ptr %l74, !tbaa !21
  br i1 %t148, label %bb35, label %bb36
bb35:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/lower:lowering", ptr %t149, i32 0, i32 57
  store i1 false, ptr %t151, !tbaa !21
  store i1 false, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t153 = load i64, ptr %l10, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l10, !tbaa !24
  br label %bb27
bb39:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/lower:lowering", ptr %t157, i32 0, i32 57
  store i1 false, ptr %t159, !tbaa !21
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca %"compiler/mir:Lvalue"
  %l18 = alloca ptr
  %l21 = alloca %"compiler/mir:Lvalue"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 9
  store i32 %t2, ptr %t5, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 10
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load i32, ptr %l1, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 4
  %t13 = load i32, ptr %t12, !tbaa !23
  %t16 = icmp ne i32 %t9, %t13
  br i1 %t16, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 4
  store i32 %t19, ptr %t22, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l11, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 5
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t27)
  store %"compiler/mir:Lvalue" %t29, ptr %l14
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:lowering", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 4
  %t36 = load %"compiler/source:Span", ptr %t35
  %t37 = load ptr, ptr %l11, !tbaa !29
  %t38 = load %"compiler/mir:Lvalue", ptr %l14
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t37, %"compiler/mir:Lvalue" %t38, i64 1, %"compiler/source:Span" %t36)
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l18, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 6
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t44)
  store %"compiler/mir:Lvalue" %t46, ptr %l21
  br label %bb6
bb6:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 4
  %t53 = load %"compiler/source:Span", ptr %t52
  %t54 = load ptr, ptr %l18, !tbaa !29
  %t55 = load %"compiler/mir:Lvalue", ptr %l21
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %t54, %"compiler/mir:Lvalue" %t55, i64 -1, %"compiler/source:Span" %t53)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, [1 x i64] }
  %l16 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i32
  %l29 = alloca %"compiler/mir:Local"
  %l42 = alloca i64
  %l45 = alloca i64
  %l65 = alloca i32
  %l72 = alloca { i64, [1 x i64] }
  %l73 = alloca i32
  %l77 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i32
  %l98 = alloca i32
  %l102 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t7 = load { i64, [2 x i64] }, ptr %t6
  store { i64, [2 x i64] } %t7, ptr %l4
  %t9 = load { i64, [2 x i64] }, ptr %l4
  %t11 = extractvalue { i64, [2 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 1
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t15 = getelementptr { i32 }, ptr %t14, i32 0, i32 0
  %t16 = load i32, ptr %t15
  store i32 %t16, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 3
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t20, i32 0, i32 7
  %t22 = load i32, ptr %l5, !tbaa !23
  %t24 = sext i32 %t22 to i64
  %t27 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t21, i64 %t24)
  store %"compiler/mir:Local" %t27, ptr %l29
  br label %bb4
bb4:
  %t28 = getelementptr %"compiler/mir:Local", ptr %l29, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  store i32 %t29, ptr %l21, !tbaa !23
  br label %bb14
bb5:
  %t31 = load { i64, [2 x i64] }, ptr %l4
  %t33 = extractvalue { i64, [2 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 2
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t37 = getelementptr { i64, i32, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l6, !tbaa !23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t40 = load i32, ptr %l6, !tbaa !23
  store i32 %t40, ptr %l21, !tbaa !23
  br label %bb14
bb9:
  %t42 = load { i64, [2 x i64] }, ptr %l4
  %t44 = extractvalue { i64, [2 x i64] } %t42, 0
  %t45 = icmp eq i64 %t44, 0
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t47, ptr %l21, !tbaa !23
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_a0544551fd9aba23_197859eb537d6a87)
  unreachable
bb14:
  %t49 = load i32, ptr %l21, !tbaa !23
  store i32 %t49, ptr %l7, !tbaa !23
  store i64 0, ptr %l8, !tbaa !24
  store i64 %a2, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = icmp sgt i64 %t52, %t53
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t58 = load i64, ptr %l10, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb20
bb17:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load i64, ptr %l10, !tbaa !24
  %t70 = add i64 %t66, %t67
  %t72 = sub i64 %t70, 1
  %t73 = load i64, ptr %l10, !tbaa !24
  %t76 = sdiv i64 %t72, %t73
  store i64 %t76, ptr %l45, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb19
bb19:
  %t78 = load i64, ptr %l45, !tbaa !24
  store i64 %t78, ptr %l42, !tbaa !24
  br label %bb20
bb20:
  %t79 = load i64, ptr %l42, !tbaa !24
  store i64 %t79, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb21
bb21:
  %t80 = load i64, ptr %l12, !tbaa !24
  %t81 = load i64, ptr %l11, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb22, label %bb23
bb22:
  br label %bb54
bb23:
  br label %bb24
bb24:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load i64, ptr %l12, !tbaa !24
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t96 = add i64 %t88, %t93
  store i64 %t96, ptr %l13, !tbaa !24
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t99 = load i32, ptr %l7, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l65
  br label %bb25
bb25:
  %t103 = load i32, ptr %l65, !tbaa !23
  store i32 %t103, ptr %l14, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lower:lowering", ptr %t104, i32 0, i32 3
  %t107 = getelementptr %"compiler/mir:Fn", ptr %t106, i32 0, i32 10
  %t108 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t109 = getelementptr %"compiler/mir:Range", ptr %t108, i32 0, i32 0
  %t110 = load i32, ptr %t109, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t113 = load i64, ptr %l13, !tbaa !24
  %t116 = add i64 %t112, %t113
  %t119 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t107, i64 %t116)
  store { i64, [1 x i64] } %t119, ptr %l72
  br label %bb26
bb26:
  %t120 = load { i64, [1 x i64] }, ptr %l72
  store { i64, [1 x i64] } %t120, ptr %l15
  %t121 = load { i64, [1 x i64] }, ptr %l15
  %t123 = extractvalue { i64, [1 x i64] } %t121, 0
  %t124 = icmp eq i64 %t123, 0
  br i1 %t124, label %bb27, label %bb28
bb27:
  %t126 = getelementptr { i64, [1 x i64] }, ptr %l15, i32 0, i32 1
  %t127 = getelementptr { i64 }, ptr %t126, i32 0, i32 0
  %t128 = load i64, ptr %t127
  store i64 %t128, ptr %l16, !tbaa !24
  br label %bb29
bb28:
  br label %bb32
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t130 = load ptr, ptr %l3, !tbaa !29
  store ptr %t130, ptr %l77, !tbaa !29
  %t131 = load ptr, ptr %l3, !tbaa !29
  %t132 = load i32, ptr %l14, !tbaa !23
  %t135 = call i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l80
  br label %bb30
bb30:
  %t136 = load ptr, ptr %l77, !tbaa !29
  %t137 = load i32, ptr %l80, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s6, ptr %t136, i32 %t137)
  store { i64, ptr } %t138, ptr %l81
  br label %bb31
bb31:
  %t139 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t139, ptr %l82, !tbaa !27
  %t140 = load i64, ptr %l16, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i32, ptr %t143, i64 %t140
  %t145 = load i32, ptr %t144, !tbaa !33
  store i32 %t145, ptr %l73, !tbaa !23
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb32:
  %t147 = load { i64, [1 x i64] }, ptr %l15
  %t149 = extractvalue { i64, [1 x i64] } %t147, 0
  %t150 = icmp eq i64 %t149, 1
  br i1 %t150, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  %t152 = load { i64, [1 x i64] }, ptr %l15
  %t154 = extractvalue { i64, [1 x i64] } %t152, 0
  %t155 = icmp eq i64 %t154, 2
  br i1 %t155, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t157 = load ptr, ptr %l3, !tbaa !29
  store ptr %t157, ptr %l89, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l14, !tbaa !23
  %t162 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l92
  br label %bb38
bb38:
  %t163 = load ptr, ptr %l89, !tbaa !29
  %t164 = load i32, ptr %l92, !tbaa !23
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t165, ptr %l93
  br label %bb39
bb39:
  %t166 = load i32, ptr %l93, !tbaa !23
  store i32 %t166, ptr %l73, !tbaa !23
  br label %bb52
bb40:
  %t167 = load { i64, [1 x i64] }, ptr %l15
  %t169 = extractvalue { i64, [1 x i64] } %t167, 0
  %t170 = icmp eq i64 %t169, 3
  br i1 %t170, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t172 = load ptr, ptr %l3, !tbaa !29
  %t173 = load i32, ptr %l14, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l98
  br label %bb44
bb44:
  %t177 = load i32, ptr %l98, !tbaa !23
  store i32 %t177, ptr %l73, !tbaa !23
  br label %bb52
bb45:
  %t178 = load { i64, [1 x i64] }, ptr %l15
  %t180 = extractvalue { i64, [1 x i64] } %t178, 0
  %t181 = icmp eq i64 %t180, 4
  br i1 %t181, label %bb46, label %bb47
bb46:
  %t183 = getelementptr { i64, [1 x i64] }, ptr %l15, i32 0, i32 1
  %t184 = getelementptr { i64 }, ptr %t183, i32 0, i32 0
  %t185 = load i64, ptr %t184
  store i64 %t185, ptr %l17, !tbaa !24
  br label %bb48
bb47:
  br label %bb51
bb48:
  store %olang.scope zeroinitializer, ptr %s9
  %t187 = load ptr, ptr %l3, !tbaa !29
  store ptr %t187, ptr %l102, !tbaa !29
  %t188 = load ptr, ptr %l3, !tbaa !29
  %t189 = load i32, ptr %l14, !tbaa !23
  %t192 = call i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l105
  br label %bb49
bb49:
  %t193 = load ptr, ptr %l102, !tbaa !29
  %t194 = load i32, ptr %l105, !tbaa !23
  %t195 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s9, ptr %t193, i32 %t194)
  store { i64, ptr } %t195, ptr %l106
  br label %bb50
bb50:
  %t196 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t196, ptr %l107, !tbaa !27
  %t197 = load i64, ptr %l17, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t197
  %t202 = load i32, ptr %t201, !tbaa !33
  store i32 %t202, ptr %l73, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_ecea37d4633e9922_e7ec56cda3c90b26)
  unreachable
bb52:
  %t204 = load i32, ptr %l73, !tbaa !23
  store i32 %t204, ptr %l7, !tbaa !23
  br label %bb53
bb53:
  %t205 = load i64, ptr %l12, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l12, !tbaa !24
  br label %bb21
bb54:
  %t209 = load i32, ptr %l7, !tbaa !23
  store i32 %t209, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etempPart(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l18 = alloca %"compiler/mir:Local"
  %l25 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l60 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i32
  %l72 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load %"compiler/mir:Lvalue", ptr %l1
  %t3 = call i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %t1)
  store i64 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i64, ptr %l11, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t11, i32 0, i32 7
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t12, i64 %t13)
  store %"compiler/mir:Local" %t16, ptr %l18
  br label %bb4
bb4:
  %t17 = getelementptr %"compiler/mir:Local", ptr %l18, i32 0, i32 3
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 4}
  %t20 = trunc i64 3 to i32
  %t21 = icmp eq i32 %t18, %t20
  %t23 = xor i1 %t21, true
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/mir:Lvalue", ptr %l1
  %t31 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eprojsOf(ptr %v0, ptr %s0, ptr %t27, %"compiler/mir:Lvalue" %t28)
  store { i64, ptr } %t31, ptr %l25
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb15
bb12:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %l31, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l31, !tbaa !24
  store i64 %t64, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb16
bb16:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb17, label %bb18
bb17:
  br label %bb36
bb18:
  br label %bb19
bb19:
  %t73 = load i64, ptr %l4, !tbaa !24
  %t74 = load i64, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l9, !tbaa !24
  %t83 = load i64, ptr %l9, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, [1 x i64] }, ptr %t86, i64 %t83
  %t88 = load { i64, [1 x i64] }, ptr %t87
  %t90 = extractvalue { i64, [1 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 3
  br i1 %t91, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, [1 x i64] }, ptr %t97, i64 %t94
  %t99 = load { i64, [1 x i64] }, ptr %t98
  %t101 = extractvalue { i64, [1 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 1
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, [1 x i64] }, ptr %t109, i64 %t106
  %t111 = load { i64, [1 x i64] }, ptr %t110
  %t113 = extractvalue { i64, [1 x i64] } %t111, 0
  %t114 = icmp eq i64 %t113, 2
  %t116 = xor i1 %t114, true
  store i1 %t116, ptr %l60, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t118 = load i1, ptr %l60, !tbaa !21
  br i1 %t118, label %bb26, label %bb27
bb26:
  br label %bb35
bb27:
  br label %bb28
bb28:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l65, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l66, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/mir:Lvalue", ptr %l1
  %t123 = load i64, ptr %l9, !tbaa !24
  %t127 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %t121, %"compiler/mir:Lvalue" %t122, i64 %t123)
  store i32 %t127, ptr %l70
  br label %bb29
bb29:
  %t128 = load ptr, ptr %l66, !tbaa !29
  %t129 = load i32, ptr %l70, !tbaa !23
  %t130 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t130, ptr %l71
  br label %bb30
bb30:
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = load i32, ptr %l71, !tbaa !23
  %t133 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t131, i32 %t132)
  store i64 %t133, ptr %l72
  br label %bb31
bb31:
  %t134 = load i64, ptr %l72, !tbaa !24
  %t135 = icmp slt i64 %t134, 0
  br i1 %t135, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l8, !tbaa !24
  br label %bb16
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etryCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i1
  %l15 = alloca ptr
  %l21 = alloca i1
  %l31 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l47 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Try", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l15, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Try", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_a3627063ced14f10_5c0b773917422a84)
  unreachable
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Try", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t24 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t22, ptr %t21)
  store i1 %t24, ptr %l21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l21, !tbaa !21
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l14, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Try", ptr %t28, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %bb26
bb13:
  br label %bb14
bb14:
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t45, ptr %l31, !tbaa !27
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 %t46
  %t51 = load ptr, ptr %t50, !tbaa !39
  %t55 = getelementptr %"compiler/typed:Clause", ptr %t51, i32 0, i32 4
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t70, ptr %l42, !tbaa !27
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 %t71
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t82 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t78, ptr %t76)
  store i1 %t82, ptr %l47
  br label %bb19
bb19:
  %t83 = load i1, ptr %l47, !tbaa !21
  br i1 %t83, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb15
bb24:
  br label %bb25
bb25:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l3, !tbaa !24
  br label %bb11
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca i64
  %l42 = alloca { i64, ptr }
  %l46 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load i64, ptr %l10, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l10, !tbaa !24
  %t8 = icmp sle i64 %t7, 230584300921369395
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_73384406ab4916da_7af5324ba56268d6)
  unreachable
bb3:
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = mul i64 %t10, 40
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t15, ptr %lp2
  %t17 = load ptr, ptr %lp2
  store { i64, ptr } %t14, ptr %t17, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_73384406ab4916da_7af5324ba56268d6)
  unreachable
bb5:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb10
bb7:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l22, !tbaa !24
  store i64 %t48, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l19, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  store i64 %t68, ptr %l40, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t70, ptr %l42, !tbaa !27
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 %t71
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t80 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %t76)
  store { i64, [4 x i64] } %t80, ptr %l46
  br label %bb15
bb15:
  %t81 = load { i64, [4 x i64] }, ptr %l46
  %t82 = load ptr, ptr %lp2
  %t83 = load i64, ptr %l40, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t85, i64 %t83
  store { i64, [4 x i64] } %t81, ptr %t86
  br label %bb16
bb16:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb11
bb17:
  %t91 = load ptr, ptr %lp2
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2evalue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca i32
  %l43 = alloca ptr
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca ptr
  %l55 = alloca i32
  %l59 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l63 = alloca { i64, [4 x i64] }
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l85 = alloca i32
  %l89 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i1
  %l108 = alloca { i64, [4 x i64] }
  %l109 = alloca ptr
  %l110 = alloca i1
  %l123 = alloca { i64, [4 x i64] }
  %l124 = alloca ptr
  %l125 = alloca i1
  %l138 = alloca { i64, [4 x i64] }
  %l139 = alloca ptr
  %l140 = alloca i1
  %l153 = alloca { i64, [4 x i64] }
  %l154 = alloca ptr
  %l155 = alloca i1
  %l168 = alloca { i64, [4 x i64] }
  %l169 = alloca ptr
  %l170 = alloca i1
  %l183 = alloca { i64, [4 x i64] }
  %l184 = alloca ptr
  %l185 = alloca i1
  %l198 = alloca { i64, [4 x i64] }
  %l199 = alloca ptr
  %l200 = alloca i1
  %l219 = alloca { i64, [4 x i64] }
  %l220 = alloca ptr
  %l221 = alloca i1
  %l234 = alloca { i64, [4 x i64] }
  %l235 = alloca ptr
  %l236 = alloca i1
  %l249 = alloca { i64, [4 x i64] }
  %l250 = alloca ptr
  %l251 = alloca i1
  %l258 = alloca { i64, [4 x i64] }
  %l259 = alloca ptr
  %l260 = alloca i1
  %l273 = alloca { i64, [4 x i64] }
  %l274 = alloca ptr
  %l275 = alloca i1
  %l286 = alloca { i64, [4 x i64] }
  %l287 = alloca ptr
  %l288 = alloca i1
  %l301 = alloca { i64, [4 x i64] }
  %l302 = alloca ptr
  %l303 = alloca i1
  %l316 = alloca { i64, [4 x i64] }
  %l317 = alloca ptr
  %l318 = alloca i1
  %l328 = alloca { i64, [4 x i64] }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t17 = alloca { i64, [4 x i64] }, align 8
  %t44 = alloca { i64, [4 x i64] }, align 8
  %t93 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l55
  br label %bb1
bb1:
  %t4 = load i32, ptr %l55, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t4, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l59, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t12)
  store %"compiler/source:Span" %t14, ptr %l61
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t15 = load ptr, ptr %l59, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l61
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t15, %"compiler/source:Span" %t16, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb5
bb5:
  store { i64, [4 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t17, i32 0, i32 0
  store i64 0, ptr %t18
  %t19 = load { i64, [4 x i64] }, ptr %t17
  call void @__olang_scope_close(ptr %s1)
  store { i64, [4 x i64] } %t19, ptr %rv
  br label %ret
bb6:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t22 = load ptr, ptr %l64, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l64, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l65, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l65, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l3, !tbaa !23
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t38, i32 0, i32 2
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load i64, ptr %l4, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 0
  store i64 2, ptr %t45
  %t47 = insertvalue { i32, i64 } undef, i32 %t42, 0
  %t49 = insertvalue { i32, i64 } %t47, i64 %t43, 1
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  store { i32, i64 } %t49, ptr %t50
  %t51 = load { i64, [4 x i64] }, ptr %t44
  store { i64, [4 x i64] } %t51, ptr %l63
  br label %bb132
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t54 = load ptr, ptr %l75, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l75, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 1
  store i1 %t60, ptr %l76, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l76, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t64, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  store %"compiler/source:Span" %t66, ptr %l5
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l6, !tbaa !23
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t76, i32 0, i32 3
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l7, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t80 = load i32, ptr %l6, !tbaa !23
  store i32 %t80, ptr %l85, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lower:lowering", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %l7, !tbaa !29
  %t87 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  store i32 %t87, ptr %l89
  br label %bb18
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lower:lowering", ptr %t88, i32 0, i32 7
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = load %"compiler/source:Span", ptr %l5
  store { i64, [4 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 0
  store i64 3, ptr %t94
  %t95 = load i32, ptr %l85, !tbaa !23
  %t96 = insertvalue { i32, i32, i64, %"compiler/source:Span" } undef, i32 %t95, 0
  %t97 = load i32, ptr %l89, !tbaa !23
  %t98 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t96, i32 %t97, 1
  %t100 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t98, i64 %t91, 2
  %t102 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t100, %"compiler/source:Span" %t92, 3
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  store { i32, i32, i64, %"compiler/source:Span" } %t102, ptr %t103
  %t104 = load { i64, [4 x i64] }, ptr %t93
  store { i64, [4 x i64] } %t104, ptr %l63
  br label %bb132
bb19:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t107 = load ptr, ptr %l94, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb20, label %bb21
bb20:
  %t110 = load ptr, ptr %l94, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 18}
  %t113 = icmp eq i64 %t111, 2
  store i1 %t113, ptr %l95, !tbaa !21
  br label %bb21
bb21:
  %t114 = load i1, ptr %l95, !tbaa !21
  br i1 %t114, label %bb22, label %bb23
bb22:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t117, i32 0, i32 0
  %t119 = load %"compiler/source:Span", ptr %t118
  store %"compiler/source:Span" %t119, ptr %l8
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t123, i32 0, i32 1
  %t125 = load i32, ptr %t124
  store i32 %t125, ptr %l9, !tbaa !23
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l10, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l10, !tbaa !29
  %t135 = load i32, ptr %l9, !tbaa !23
  %t136 = load %"compiler/source:Span", ptr %l8
  %t141 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eread(ptr %v0, ptr %v1, ptr %t133, ptr %t134, i32 %t135, %"compiler/source:Span" %t136)
  store { i64, [4 x i64] } %t141, ptr %l108
  br label %bb25
bb25:
  %t142 = load { i64, [4 x i64] }, ptr %l108
  store { i64, [4 x i64] } %t142, ptr %l63
  br label %bb132
bb26:
  %t143 = load ptr, ptr %l1, !tbaa !29
  store ptr %t143, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t144 = load ptr, ptr %l109, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb27, label %bb28
bb27:
  %t147 = load ptr, ptr %l109, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 18}
  %t150 = icmp eq i64 %t148, 3
  store i1 %t150, ptr %l110, !tbaa !21
  br label %bb28
bb28:
  %t151 = load i1, ptr %l110, !tbaa !21
  br i1 %t151, label %bb29, label %bb30
bb29:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t154, i32 0, i32 0
  %t156 = load %"compiler/source:Span", ptr %t155
  store %"compiler/source:Span" %t156, ptr %l11
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t160, i32 0, i32 1
  %t162 = load i32, ptr %t161
  store i32 %t162, ptr %l12, !tbaa !23
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t166 = getelementptr { i64, [5 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 2
  %t168 = load ptr, ptr %t167
  store ptr %t168, ptr %l13, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l13, !tbaa !29
  %t172 = load i32, ptr %l12, !tbaa !23
  %t173 = load %"compiler/source:Span", ptr %l11
  %t178 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eborrow(ptr %v0, ptr %v1, ptr %t170, ptr %t171, i32 %t172, %"compiler/source:Span" %t173)
  store { i64, [4 x i64] } %t178, ptr %l123
  br label %bb32
bb32:
  %t179 = load { i64, [4 x i64] }, ptr %l123
  store { i64, [4 x i64] } %t179, ptr %l63
  br label %bb132
bb33:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t181 = load ptr, ptr %l124, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb34, label %bb35
bb34:
  %t184 = load ptr, ptr %l124, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 18}
  %t187 = icmp eq i64 %t185, 4
  store i1 %t187, ptr %l125, !tbaa !21
  br label %bb35
bb35:
  %t188 = load i1, ptr %l125, !tbaa !21
  br i1 %t188, label %bb36, label %bb37
bb36:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [5 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t191, i32 0, i32 0
  %t193 = load %"compiler/source:Span", ptr %t192
  store %"compiler/source:Span" %t193, ptr %l14
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t197, i32 0, i32 1
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l15, !tbaa !23
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t203, i32 0, i32 2
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l16, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l16, !tbaa !29
  %t209 = load i32, ptr %l15, !tbaa !23
  %t210 = load %"compiler/source:Span", ptr %l14
  %t215 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etake(ptr %v0, ptr %v1, ptr %t207, ptr %t208, i32 %t209, %"compiler/source:Span" %t210)
  store { i64, [4 x i64] } %t215, ptr %l138
  br label %bb39
bb39:
  %t216 = load { i64, [4 x i64] }, ptr %l138
  store { i64, [4 x i64] } %t216, ptr %l63
  br label %bb132
bb40:
  %t217 = load ptr, ptr %l1, !tbaa !29
  store ptr %t217, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t218 = load ptr, ptr %l139, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb41, label %bb42
bb41:
  %t221 = load ptr, ptr %l139, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 18}
  %t224 = icmp eq i64 %t222, 5
  store i1 %t224, ptr %l140, !tbaa !21
  br label %bb42
bb42:
  %t225 = load i1, ptr %l140, !tbaa !21
  br i1 %t225, label %bb43, label %bb44
bb43:
  %t226 = load ptr, ptr %l1, !tbaa !29
  %t228 = getelementptr { i64, [5 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l17
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr { i64, [5 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t234, i32 0, i32 1
  %t236 = load i32, ptr %t235
  store i32 %t236, ptr %l18, !tbaa !23
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = getelementptr { i64, [5 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t240, i32 0, i32 2
  %t242 = load ptr, ptr %t241
  store ptr %t242, ptr %l19, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %l19, !tbaa !29
  %t246 = load i32, ptr %l18, !tbaa !23
  %t247 = load %"compiler/source:Span", ptr %l17
  %t252 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromote(ptr %v0, ptr %v1, ptr %t244, ptr %t245, i32 %t246, %"compiler/source:Span" %t247)
  store { i64, [4 x i64] } %t252, ptr %l153
  br label %bb46
bb46:
  %t253 = load { i64, [4 x i64] }, ptr %l153
  store { i64, [4 x i64] } %t253, ptr %l63
  br label %bb132
bb47:
  %t254 = load ptr, ptr %l1, !tbaa !29
  store ptr %t254, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t255 = load ptr, ptr %l154, !tbaa !29
  %t256 = icmp ne ptr %t255, null
  br i1 %t256, label %bb48, label %bb49
bb48:
  %t258 = load ptr, ptr %l154, !tbaa !29
  %t259 = load i64, ptr %t258, !range !{i64 0, i64 18}
  %t261 = icmp eq i64 %t259, 6
  store i1 %t261, ptr %l155, !tbaa !21
  br label %bb49
bb49:
  %t262 = load i1, ptr %l155, !tbaa !21
  br i1 %t262, label %bb50, label %bb51
bb50:
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr { i64, [5 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t265, i32 0, i32 0
  %t267 = load %"compiler/source:Span", ptr %t266
  store %"compiler/source:Span" %t267, ptr %l20
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr { i64, [5 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t271, i32 0, i32 1
  %t273 = load i32, ptr %t272
  store i32 %t273, ptr %l21, !tbaa !23
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr { i64, [5 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t277, i32 0, i32 2
  %t279 = load ptr, ptr %t278
  store ptr %t279, ptr %l22, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l22, !tbaa !29
  %t283 = load i32, ptr %l21, !tbaa !23
  %t284 = load %"compiler/source:Span", ptr %l20
  %t289 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecall(ptr %v0, ptr %v1, ptr %t281, ptr %t282, i32 %t283, %"compiler/source:Span" %t284)
  store { i64, [4 x i64] } %t289, ptr %l168
  br label %bb53
bb53:
  %t290 = load { i64, [4 x i64] }, ptr %l168
  store { i64, [4 x i64] } %t290, ptr %l63
  br label %bb132
bb54:
  %t291 = load ptr, ptr %l1, !tbaa !29
  store ptr %t291, ptr %l169, !tbaa !29
  store i1 false, ptr %l170, !tbaa !21
  %t292 = load ptr, ptr %l169, !tbaa !29
  %t293 = icmp ne ptr %t292, null
  br i1 %t293, label %bb55, label %bb56
bb55:
  %t295 = load ptr, ptr %l169, !tbaa !29
  %t296 = load i64, ptr %t295, !range !{i64 0, i64 18}
  %t298 = icmp eq i64 %t296, 7
  store i1 %t298, ptr %l170, !tbaa !21
  br label %bb56
bb56:
  %t299 = load i1, ptr %l170, !tbaa !21
  br i1 %t299, label %bb57, label %bb58
bb57:
  %t300 = load ptr, ptr %l1, !tbaa !29
  %t302 = getelementptr { i64, [5 x i64] }, ptr %t300, i32 0, i32 1
  %t303 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t302, i32 0, i32 0
  %t304 = load %"compiler/source:Span", ptr %t303
  store %"compiler/source:Span" %t304, ptr %l23
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t308 = getelementptr { i64, [5 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t308, i32 0, i32 1
  %t310 = load i32, ptr %t309
  store i32 %t310, ptr %l24, !tbaa !23
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = getelementptr { i64, [5 x i64] }, ptr %t312, i32 0, i32 1
  %t315 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t314, i32 0, i32 2
  %t316 = load ptr, ptr %t315
  store ptr %t316, ptr %l25, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load ptr, ptr %l25, !tbaa !29
  %t320 = load i32, ptr %l24, !tbaa !23
  %t321 = load %"compiler/source:Span", ptr %l23
  %t326 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emake(ptr %v0, ptr %v1, ptr %t318, ptr %t319, i32 %t320, %"compiler/source:Span" %t321)
  store { i64, [4 x i64] } %t326, ptr %l183
  br label %bb60
bb60:
  %t327 = load { i64, [4 x i64] }, ptr %l183
  store { i64, [4 x i64] } %t327, ptr %l63
  br label %bb132
bb61:
  %t328 = load ptr, ptr %l1, !tbaa !29
  store ptr %t328, ptr %l184, !tbaa !29
  store i1 false, ptr %l185, !tbaa !21
  %t329 = load ptr, ptr %l184, !tbaa !29
  %t330 = icmp ne ptr %t329, null
  br i1 %t330, label %bb62, label %bb63
bb62:
  %t332 = load ptr, ptr %l184, !tbaa !29
  %t333 = load i64, ptr %t332, !range !{i64 0, i64 18}
  %t335 = icmp eq i64 %t333, 8
  store i1 %t335, ptr %l185, !tbaa !21
  br label %bb63
bb63:
  %t336 = load i1, ptr %l185, !tbaa !21
  br i1 %t336, label %bb64, label %bb65
bb64:
  %t337 = load ptr, ptr %l1, !tbaa !29
  %t339 = getelementptr { i64, [5 x i64] }, ptr %t337, i32 0, i32 1
  %t340 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t339, i32 0, i32 0
  %t341 = load %"compiler/source:Span", ptr %t340
  store %"compiler/source:Span" %t341, ptr %l26
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t345 = getelementptr { i64, [5 x i64] }, ptr %t343, i32 0, i32 1
  %t346 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t345, i32 0, i32 1
  %t347 = load i32, ptr %t346
  store i32 %t347, ptr %l27, !tbaa !23
  %t349 = load ptr, ptr %l1, !tbaa !29
  %t351 = getelementptr { i64, [5 x i64] }, ptr %t349, i32 0, i32 1
  %t352 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t351, i32 0, i32 2
  %t353 = load ptr, ptr %t352
  store ptr %t353, ptr %l28, !tbaa !29
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %l28, !tbaa !29
  %t357 = load i32, ptr %l27, !tbaa !23
  %t358 = load %"compiler/source:Span", ptr %l26
  %t363 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecollect(ptr %v0, ptr %v1, ptr %t355, ptr %t356, i32 %t357, %"compiler/source:Span" %t358)
  store { i64, [4 x i64] } %t363, ptr %l198
  br label %bb67
bb67:
  %t364 = load { i64, [4 x i64] }, ptr %l198
  store { i64, [4 x i64] } %t364, ptr %l63
  br label %bb132
bb68:
  %t365 = load ptr, ptr %l1, !tbaa !29
  store ptr %t365, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t366 = load ptr, ptr %l199, !tbaa !29
  %t367 = icmp ne ptr %t366, null
  br i1 %t367, label %bb69, label %bb70
bb69:
  %t369 = load ptr, ptr %l199, !tbaa !29
  %t370 = load i64, ptr %t369, !range !{i64 0, i64 18}
  %t372 = icmp eq i64 %t370, 9
  store i1 %t372, ptr %l200, !tbaa !21
  br label %bb70
bb70:
  %t373 = load i1, ptr %l200, !tbaa !21
  br i1 %t373, label %bb71, label %bb72
bb71:
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t376 = getelementptr { i64, [5 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t376, i32 0, i32 0
  %t378 = load %"compiler/source:Span", ptr %t377
  store %"compiler/source:Span" %t378, ptr %l29
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t382, i32 0, i32 1
  %t384 = load i32, ptr %t383
  store i32 %t384, ptr %l30, !tbaa !23
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t388 = getelementptr { i64, [5 x i64] }, ptr %t386, i32 0, i32 1
  %t389 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t388, i32 0, i32 2
  %t390 = load i32, ptr %t389, !range !{i32 0, i32 52}
  store i32 %t390, ptr %l31
  %t392 = load ptr, ptr %l1, !tbaa !29
  %t394 = getelementptr { i64, [5 x i64] }, ptr %t392, i32 0, i32 1
  %t395 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t394, i32 0, i32 3
  %t396 = load i32, ptr %t395, !range !{i32 0, i32 3}
  store i32 %t396, ptr %l32
  %t398 = load ptr, ptr %l1, !tbaa !29
  %t400 = getelementptr { i64, [5 x i64] }, ptr %t398, i32 0, i32 1
  %t401 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t400, i32 0, i32 4
  %t402 = load { i64, ptr }, ptr %t401
  store { i64, ptr } %t402, ptr %l33, !tbaa !27
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t406 = load i32, ptr %l32, !range !{i32 0, i32 3}
  %t407 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t408 = load i32, ptr %l30, !tbaa !23
  %t409 = load %"compiler/source:Span", ptr %l29
  %t416 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprimExpr(ptr %v0, ptr %v1, ptr %t404, i32 %t405, i32 %t406, { i64, ptr } %t407, i32 %t408, %"compiler/source:Span" %t409)
  store { i64, [4 x i64] } %t416, ptr %l219
  br label %bb74
bb74:
  %t417 = load { i64, [4 x i64] }, ptr %l219
  store { i64, [4 x i64] } %t417, ptr %l63
  br label %bb132
bb75:
  %t418 = load ptr, ptr %l1, !tbaa !29
  store ptr %t418, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t419 = load ptr, ptr %l220, !tbaa !29
  %t420 = icmp ne ptr %t419, null
  br i1 %t420, label %bb76, label %bb77
bb76:
  %t422 = load ptr, ptr %l220, !tbaa !29
  %t423 = load i64, ptr %t422, !range !{i64 0, i64 18}
  %t425 = icmp eq i64 %t423, 10
  store i1 %t425, ptr %l221, !tbaa !21
  br label %bb77
bb77:
  %t426 = load i1, ptr %l221, !tbaa !21
  br i1 %t426, label %bb78, label %bb79
bb78:
  %t427 = load ptr, ptr %l1, !tbaa !29
  %t429 = getelementptr { i64, [5 x i64] }, ptr %t427, i32 0, i32 1
  %t430 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t429, i32 0, i32 0
  %t431 = load %"compiler/source:Span", ptr %t430
  store %"compiler/source:Span" %t431, ptr %l34
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t435 = getelementptr { i64, [5 x i64] }, ptr %t433, i32 0, i32 1
  %t436 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t435, i32 0, i32 1
  %t437 = load i32, ptr %t436
  store i32 %t437, ptr %l35, !tbaa !23
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr { i64, [5 x i64] }, ptr %t439, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t441, i32 0, i32 2
  %t443 = load ptr, ptr %t442
  store ptr %t443, ptr %l36, !tbaa !29
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load ptr, ptr %l36, !tbaa !29
  %t447 = load i32, ptr %l35, !tbaa !23
  %t448 = load %"compiler/source:Span", ptr %l34
  %t453 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eslice(ptr %v0, ptr %v1, ptr %t445, ptr %t446, i32 %t447, %"compiler/source:Span" %t448)
  store { i64, [4 x i64] } %t453, ptr %l234
  br label %bb81
bb81:
  %t454 = load { i64, [4 x i64] }, ptr %l234
  store { i64, [4 x i64] } %t454, ptr %l63
  br label %bb132
bb82:
  %t455 = load ptr, ptr %l1, !tbaa !29
  store ptr %t455, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t456 = load ptr, ptr %l235, !tbaa !29
  %t457 = icmp ne ptr %t456, null
  br i1 %t457, label %bb83, label %bb84
bb83:
  %t459 = load ptr, ptr %l235, !tbaa !29
  %t460 = load i64, ptr %t459, !range !{i64 0, i64 18}
  %t462 = icmp eq i64 %t460, 11
  store i1 %t462, ptr %l236, !tbaa !21
  br label %bb84
bb84:
  %t463 = load i1, ptr %l236, !tbaa !21
  br i1 %t463, label %bb85, label %bb86
bb85:
  %t464 = load ptr, ptr %l1, !tbaa !29
  %t466 = getelementptr { i64, [5 x i64] }, ptr %t464, i32 0, i32 1
  %t467 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t466, i32 0, i32 0
  %t468 = load %"compiler/source:Span", ptr %t467
  store %"compiler/source:Span" %t468, ptr %l37
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t472 = getelementptr { i64, [5 x i64] }, ptr %t470, i32 0, i32 1
  %t473 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t472, i32 0, i32 1
  %t474 = load i32, ptr %t473
  store i32 %t474, ptr %l38, !tbaa !23
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr { i64, [5 x i64] }, ptr %t476, i32 0, i32 1
  %t479 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t478, i32 0, i32 2
  %t480 = load ptr, ptr %t479
  store ptr %t480, ptr %l39, !tbaa !29
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load ptr, ptr %l39, !tbaa !29
  %t484 = load i32, ptr %l38, !tbaa !23
  %t485 = load %"compiler/source:Span", ptr %l37
  %t490 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econd(ptr %v0, ptr %v1, ptr %t482, ptr %t483, i32 %t484, %"compiler/source:Span" %t485)
  store { i64, [4 x i64] } %t490, ptr %l249
  br label %bb88
bb88:
  %t491 = load { i64, [4 x i64] }, ptr %l249
  store { i64, [4 x i64] } %t491, ptr %l63
  br label %bb132
bb89:
  %t492 = load ptr, ptr %l1, !tbaa !29
  store ptr %t492, ptr %l250, !tbaa !29
  store i1 false, ptr %l251, !tbaa !21
  %t493 = load ptr, ptr %l250, !tbaa !29
  %t494 = icmp ne ptr %t493, null
  br i1 %t494, label %bb90, label %bb91
bb90:
  %t496 = load ptr, ptr %l250, !tbaa !29
  %t497 = load i64, ptr %t496, !range !{i64 0, i64 18}
  %t499 = icmp eq i64 %t497, 12
  store i1 %t499, ptr %l251, !tbaa !21
  br label %bb91
bb91:
  %t500 = load i1, ptr %l251, !tbaa !21
  br i1 %t500, label %bb92, label %bb93
bb92:
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t503 = getelementptr { i64, [5 x i64] }, ptr %t501, i32 0, i32 1
  %t504 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t503, i32 0, i32 2
  %t505 = load ptr, ptr %t504
  store ptr %t505, ptr %l40, !tbaa !29
  br label %bb94
bb93:
  br label %bb96
bb94:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t508 = load ptr, ptr %l40, !tbaa !29
  %t511 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eseq(ptr %v0, ptr %v1, ptr %t507, ptr %t508)
  store { i64, [4 x i64] } %t511, ptr %l258
  br label %bb95
bb95:
  %t512 = load { i64, [4 x i64] }, ptr %l258
  store { i64, [4 x i64] } %t512, ptr %l63
  br label %bb132
bb96:
  %t513 = load ptr, ptr %l1, !tbaa !29
  store ptr %t513, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t514 = load ptr, ptr %l259, !tbaa !29
  %t515 = icmp ne ptr %t514, null
  br i1 %t515, label %bb97, label %bb98
bb97:
  %t517 = load ptr, ptr %l259, !tbaa !29
  %t518 = load i64, ptr %t517, !range !{i64 0, i64 18}
  %t520 = icmp eq i64 %t518, 13
  store i1 %t520, ptr %l260, !tbaa !21
  br label %bb98
bb98:
  %t521 = load i1, ptr %l260, !tbaa !21
  br i1 %t521, label %bb99, label %bb100
bb99:
  %t522 = load ptr, ptr %l1, !tbaa !29
  %t524 = getelementptr { i64, [5 x i64] }, ptr %t522, i32 0, i32 1
  %t525 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t524, i32 0, i32 0
  %t526 = load %"compiler/source:Span", ptr %t525
  store %"compiler/source:Span" %t526, ptr %l41
  %t528 = load ptr, ptr %l1, !tbaa !29
  %t530 = getelementptr { i64, [5 x i64] }, ptr %t528, i32 0, i32 1
  %t531 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t530, i32 0, i32 1
  %t532 = load i32, ptr %t531
  store i32 %t532, ptr %l42, !tbaa !23
  %t534 = load ptr, ptr %l1, !tbaa !29
  %t536 = getelementptr { i64, [5 x i64] }, ptr %t534, i32 0, i32 1
  %t537 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t536, i32 0, i32 2
  %t538 = load ptr, ptr %t537
  store ptr %t538, ptr %l43, !tbaa !29
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load ptr, ptr %l43, !tbaa !29
  %t542 = load i32, ptr %l42, !tbaa !23
  %t543 = load %"compiler/source:Span", ptr %l41
  %t548 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ematch(ptr %v0, ptr %v1, ptr %t540, ptr %t541, i32 %t542, %"compiler/source:Span" %t543)
  store { i64, [4 x i64] } %t548, ptr %l273
  br label %bb102
bb102:
  %t549 = load { i64, [4 x i64] }, ptr %l273
  store { i64, [4 x i64] } %t549, ptr %l63
  br label %bb132
bb103:
  %t550 = load ptr, ptr %l1, !tbaa !29
  store ptr %t550, ptr %l274, !tbaa !29
  store i1 false, ptr %l275, !tbaa !21
  %t551 = load ptr, ptr %l274, !tbaa !29
  %t552 = icmp ne ptr %t551, null
  br i1 %t552, label %bb104, label %bb105
bb104:
  %t554 = load ptr, ptr %l274, !tbaa !29
  %t555 = load i64, ptr %t554, !range !{i64 0, i64 18}
  %t557 = icmp eq i64 %t555, 14
  store i1 %t557, ptr %l275, !tbaa !21
  br label %bb105
bb105:
  %t558 = load i1, ptr %l275, !tbaa !21
  br i1 %t558, label %bb106, label %bb107
bb106:
  %t559 = load ptr, ptr %l1, !tbaa !29
  %t561 = getelementptr { i64, [5 x i64] }, ptr %t559, i32 0, i32 1
  %t562 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t561, i32 0, i32 0
  %t563 = load %"compiler/source:Span", ptr %t562
  store %"compiler/source:Span" %t563, ptr %l44
  %t565 = load ptr, ptr %l1, !tbaa !29
  %t567 = getelementptr { i64, [5 x i64] }, ptr %t565, i32 0, i32 1
  %t568 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t567, i32 0, i32 2
  %t569 = load ptr, ptr %t568
  store ptr %t569, ptr %l45, !tbaa !29
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t572 = load ptr, ptr %l1, !tbaa !29
  %t573 = load ptr, ptr %l45, !tbaa !29
  %t574 = load %"compiler/source:Span", ptr %l44
  %t579 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etry(ptr %v0, ptr %v1, ptr %v1, ptr %t571, ptr %t572, ptr %t573, %"compiler/source:Span" %t574)
  store { i64, [4 x i64] } %t579, ptr %l286
  br label %bb109
bb109:
  %t580 = load { i64, [4 x i64] }, ptr %l286
  store { i64, [4 x i64] } %t580, ptr %l63
  br label %bb132
bb110:
  %t581 = load ptr, ptr %l1, !tbaa !29
  store ptr %t581, ptr %l287, !tbaa !29
  store i1 false, ptr %l288, !tbaa !21
  %t582 = load ptr, ptr %l287, !tbaa !29
  %t583 = icmp ne ptr %t582, null
  br i1 %t583, label %bb111, label %bb112
bb111:
  %t585 = load ptr, ptr %l287, !tbaa !29
  %t586 = load i64, ptr %t585, !range !{i64 0, i64 18}
  %t588 = icmp eq i64 %t586, 15
  store i1 %t588, ptr %l288, !tbaa !21
  br label %bb112
bb112:
  %t589 = load i1, ptr %l288, !tbaa !21
  br i1 %t589, label %bb113, label %bb114
bb113:
  %t590 = load ptr, ptr %l1, !tbaa !29
  %t592 = getelementptr { i64, [5 x i64] }, ptr %t590, i32 0, i32 1
  %t593 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t592, i32 0, i32 0
  %t594 = load %"compiler/source:Span", ptr %t593
  store %"compiler/source:Span" %t594, ptr %l46
  %t596 = load ptr, ptr %l1, !tbaa !29
  %t598 = getelementptr { i64, [5 x i64] }, ptr %t596, i32 0, i32 1
  %t599 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t598, i32 0, i32 1
  %t600 = load i32, ptr %t599
  store i32 %t600, ptr %l47, !tbaa !23
  %t602 = load ptr, ptr %l1, !tbaa !29
  %t604 = getelementptr { i64, [5 x i64] }, ptr %t602, i32 0, i32 1
  %t605 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t604, i32 0, i32 2
  %t606 = load ptr, ptr %t605
  store ptr %t606, ptr %l48, !tbaa !29
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t609 = load ptr, ptr %l48, !tbaa !29
  %t610 = load i32, ptr %l47, !tbaa !23
  %t611 = load %"compiler/source:Span", ptr %l46
  %t616 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efnVal(ptr %v0, ptr %v1, ptr %t608, ptr %t609, i32 %t610, %"compiler/source:Span" %t611)
  store { i64, [4 x i64] } %t616, ptr %l301
  br label %bb116
bb116:
  %t617 = load { i64, [4 x i64] }, ptr %l301
  store { i64, [4 x i64] } %t617, ptr %l63
  br label %bb132
bb117:
  %t618 = load ptr, ptr %l1, !tbaa !29
  store ptr %t618, ptr %l302, !tbaa !29
  store i1 false, ptr %l303, !tbaa !21
  %t619 = load ptr, ptr %l302, !tbaa !29
  %t620 = icmp ne ptr %t619, null
  br i1 %t620, label %bb118, label %bb119
bb118:
  %t622 = load ptr, ptr %l302, !tbaa !29
  %t623 = load i64, ptr %t622, !range !{i64 0, i64 18}
  %t625 = icmp eq i64 %t623, 16
  store i1 %t625, ptr %l303, !tbaa !21
  br label %bb119
bb119:
  %t626 = load i1, ptr %l303, !tbaa !21
  br i1 %t626, label %bb120, label %bb121
bb120:
  %t627 = load ptr, ptr %l1, !tbaa !29
  %t629 = getelementptr { i64, [5 x i64] }, ptr %t627, i32 0, i32 1
  %t630 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t629, i32 0, i32 0
  %t631 = load %"compiler/source:Span", ptr %t630
  store %"compiler/source:Span" %t631, ptr %l49
  %t633 = load ptr, ptr %l1, !tbaa !29
  %t635 = getelementptr { i64, [5 x i64] }, ptr %t633, i32 0, i32 1
  %t636 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t635, i32 0, i32 1
  %t637 = load i32, ptr %t636
  store i32 %t637, ptr %l50, !tbaa !23
  %t639 = load ptr, ptr %l1, !tbaa !29
  %t641 = getelementptr { i64, [5 x i64] }, ptr %t639, i32 0, i32 1
  %t642 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t641, i32 0, i32 2
  %t643 = load ptr, ptr %t642
  store ptr %t643, ptr %l51, !tbaa !29
  br label %bb122
bb121:
  br label %bb124
bb122:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t646 = load ptr, ptr %l51, !tbaa !29
  %t647 = load i32, ptr %l50, !tbaa !23
  %t648 = load %"compiler/source:Span", ptr %l49
  %t653 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etext(ptr %v0, ptr %v1, ptr %t645, ptr %t646, i32 %t647, %"compiler/source:Span" %t648)
  store { i64, [4 x i64] } %t653, ptr %l316
  br label %bb123
bb123:
  %t654 = load { i64, [4 x i64] }, ptr %l316
  store { i64, [4 x i64] } %t654, ptr %l63
  br label %bb132
bb124:
  %t655 = load ptr, ptr %l1, !tbaa !29
  store ptr %t655, ptr %l317, !tbaa !29
  store i1 false, ptr %l318, !tbaa !21
  %t656 = load ptr, ptr %l317, !tbaa !29
  %t657 = icmp ne ptr %t656, null
  br i1 %t657, label %bb125, label %bb126
bb125:
  %t659 = load ptr, ptr %l317, !tbaa !29
  %t660 = load i64, ptr %t659, !range !{i64 0, i64 18}
  %t662 = icmp eq i64 %t660, 17
  store i1 %t662, ptr %l318, !tbaa !21
  br label %bb126
bb126:
  %t663 = load i1, ptr %l318, !tbaa !21
  br i1 %t663, label %bb127, label %bb128
bb127:
  %t664 = load ptr, ptr %l1, !tbaa !29
  %t666 = getelementptr { i64, [5 x i64] }, ptr %t664, i32 0, i32 1
  %t667 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t666, i32 0, i32 1
  %t668 = load i64, ptr %t667
  store i64 %t668, ptr %l52, !tbaa !24
  %t670 = load ptr, ptr %l1, !tbaa !29
  %t672 = getelementptr { i64, [5 x i64] }, ptr %t670, i32 0, i32 1
  %t673 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t672, i32 0, i32 2
  %t674 = load ptr, ptr %t673
  store ptr %t674, ptr %l53, !tbaa !29
  br label %bb129
bb128:
  br label %bb131
bb129:
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t677 = load i64, ptr %l52, !tbaa !24
  %t678 = load ptr, ptr %l53, !tbaa !29
  %t682 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eaway(ptr %v0, ptr %v1, ptr %t676, i64 %t677, ptr %t678)
  store { i64, [4 x i64] } %t682, ptr %l328
  br label %bb130
bb130:
  %t683 = load { i64, [4 x i64] }, ptr %l328
  store { i64, [4 x i64] } %t683, ptr %l63
  br label %bb132
bb131:
  call void @__olang_check_failed(ptr @olang_loc_c62658d3c5a83b98_5474a5965e06e124)
  unreachable
bb132:
  %t684 = load { i64, [4 x i64] }, ptr %l63
  store { i64, [4 x i64] } %t684, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2evalueCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l6 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, [7 x i64] }
  %l10 = alloca i32
  %rv = alloca { { i64, [7 x i64] }, i32 }
  %t9 = alloca { i64, [7 x i64] }, align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %t2)
  store { i64, [4 x i64] } %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [7 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [7 x i64] }, ptr %t9, i32 0, i32 0
  store i64 2, ptr %t10
  %t12 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t7, 0
  %t13 = getelementptr { i64, [7 x i64] }, ptr %t9, i32 0, i32 1
  store { { i64, [4 x i64] } } %t12, ptr %t13
  %t14 = load { i64, [7 x i64] }, ptr %t9
  store { i64, [7 x i64] } %t14, ptr %l8
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t15)
  store i32 %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = load { i64, [7 x i64] }, ptr %l8
  %t19 = insertvalue { { i64, [7 x i64] }, i32 } undef, { i64, [7 x i64] } %t18, 0
  %t20 = load i32, ptr %l10, !tbaa !23
  %t21 = insertvalue { { i64, [7 x i64] }, i32 } %t19, i32 %t20, 1
  store { { i64, [7 x i64] }, i32 } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, [7 x i64] }, i32 }, ptr %rv
  ret { { i64, [7 x i64] }, i32 } %rr
}

define dso_local %"compiler/typed:ViewWalk" @compiler_2flower_2ecompiler_2flower_3alowering_2eviewWalk(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l43 = alloca i64
  %l44 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca %"compiler/typed:Local"
  %l52 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l59 = alloca i1
  %l62 = alloca i64
  %l77 = alloca %"compiler/typed:ViewWalk"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/typed:ViewWalk"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 5
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t12 = load i64, ptr %l15, !tbaa !24
  %t14 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t12, i64 %t11)
  store i64 %t14, ptr %l17
  br label %bb2
bb2:
  %t15 = load i64, ptr %l17, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb5:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l24, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l21, !tbaa !24
  store i64 %t43, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l8, !tbaa !24
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Body", ptr %t62, i32 0, i32 3
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l43, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %l44, !tbaa !29
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 5
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t69, i64 %t70)
  store i32 %t73, ptr %l48
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l44, !tbaa !29
  %t75 = load i32, ptr %l48, !tbaa !23
  %t76 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t74, i32 %t75)
  store %"compiler/typed:Local" %t76, ptr %l49
  br label %bb14
bb14:
  %t77 = getelementptr %"compiler/typed:Local", ptr %l49, i32 0, i32 1
  %t78 = getelementptr %"compiler/source:Span", ptr %t77, i32 0, i32 0
  %t79 = load i32, ptr %t78, !tbaa !23
  %t81 = sext i32 %t79 to i64
  %t82 = load i64, ptr %l43, !tbaa !24
  %t84 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t82, i64 %t81)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t84, ptr %l52
  br label %bb15
bb15:
  %t85 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l52
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lower:lowering", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/lower:Lowerer", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 5
  %t101 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t97, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t85)
  store i1 %t101, ptr %l59
  br label %bb16
bb16:
  %t102 = load i1, ptr %l59, !tbaa !21
  %t103 = xor i1 %t102, true
  br i1 %t103, label %bb17, label %bb18
bb17:
  %t105 = load i64, ptr %l1, !tbaa !24
  %t106 = load i64, ptr %l8, !tbaa !24
  store i64 %t106, ptr %l62, !tbaa !24
  %t107 = load i64, ptr %l62, !tbaa !24
  %t108 = load i64, ptr %l62, !tbaa !24
  %t109 = shl i64 1, %t108
  %t112 = or i64 %t105, %t109
  store i64 %t112, ptr %l1, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t114 = load i64, ptr %l7, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l7, !tbaa !24
  br label %bb9
bb21:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/lower:lowering", ptr %t118, i32 0, i32 0
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/lower:lowering", ptr %t123, i32 0, i32 2
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t128 = load i64, ptr %l1, !tbaa !24
  %t130 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t131 = ptrtoint ptr %t130 to i64
  %t132 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t131, i64 8)
  %t133 = getelementptr { ptr, ptr }, ptr %t132, i32 0, i32 0
  store ptr %t121, ptr %t133, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t135 = getelementptr { ptr, ptr }, ptr %t132, i32 0, i32 1
  store ptr %v0, ptr %t135, !tbaa !28
  %t136 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_18, 0
  %t137 = insertvalue { ptr, ptr } %t136, ptr %t132, 1
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t140 = ptrtoint ptr %t139 to i64
  %t141 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t140, i64 8)
  %t142 = getelementptr { ptr, ptr }, ptr %t141, i32 0, i32 0
  store ptr %t138, ptr %t142, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t144 = getelementptr { ptr, ptr }, ptr %t141, i32 0, i32 1
  store ptr %v0, ptr %t144, !tbaa !28
  %t145 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_19, 0
  %t146 = insertvalue { ptr, ptr } %t145, ptr %t141, 1
  %t151 = extractvalue { ptr, ptr } %t137, 0
  %t152 = extractvalue { ptr, ptr } %t137, 1
  %t154 = extractvalue { ptr, ptr } %t146, 0
  %t155 = extractvalue { ptr, ptr } %t146, 1
  %t156 = call %"compiler/typed:ViewWalk" @compiler_2ftyped_3aViewWalk_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t126, ptr %t127, i64 %t128, ptr %t151, ptr %t152, ptr %t154, ptr %t155)
  store %"compiler/typed:ViewWalk" %t156, ptr %l77
  br label %bb22
bb22:
  %t157 = load %"compiler/typed:ViewWalk", ptr %l77
  store %"compiler/typed:ViewWalk" %t157, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:ViewWalk", ptr %rv
  ret %"compiler/typed:ViewWalk" %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ewhyNot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load i64, ptr %l2, !tbaa !24
  %t7 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i64 %t3)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t11 = load i64, ptr %l2, !tbaa !24
  %t15 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eescWhy(ptr %v0, ptr %v1, ptr %s0, ptr %t9, ptr %t10, i64 %t11)
  store { i64, ptr } %t15, ptr %l11
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb5
bb4:
  %t16 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = add i64 %t17, %t20
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t16, i64 %t17)
  %t23 = getelementptr i8, ptr %t22, i64 %t17
  call void @olang_textcopy(ptr %t23, ptr %t19, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t22, 1
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t28 = extractvalue { i64, ptr } %t25, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l7, !tbaa !27
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:LocalUses", ptr %t34, i32 0, i32 7
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t36, i64 %t37)
  store i1 %t40, ptr %l17
  br label %bb6
bb6:
  %t41 = load i1, ptr %l17, !tbaa !21
  br i1 %t41, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l18, !tbaa !27
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/typed:LocalUses", ptr %t42, i32 0, i32 2
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l22
  br label %bb10
bb10:
  %t49 = load i1, ptr %l22, !tbaa !21
  br i1 %t49, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/typed:LocalUses", ptr %t50, i32 0, i32 4
  %t53 = load i64, ptr %l2, !tbaa !24
  %t56 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t52, i64 %t53)
  store i1 %t56, ptr %l27
  br label %bb14
bb14:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l28, !tbaa !27
  br label %bb17
bb16:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l28, !tbaa !27
  br label %bb17
bb17:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load i64, ptr %l2, !tbaa !24
  %t64 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %t58, ptr %t59, i64 %t60)
  store i1 %t64, ptr %l32
  br label %bb18
bb18:
  %t65 = load i1, ptr %l32, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l34, !tbaa !27
  br label %bb21
bb20:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l34, !tbaa !27
  br label %bb21
bb21:
  %t68 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = add i64 %t74, %t77
  %t79 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t86)
  call void @olang_textcopy(ptr %t87, ptr %t69, i64 %t70)
  %t88 = getelementptr i8, ptr %t87, i64 %t70
  call void @olang_textcopy(ptr %t88, ptr %t72, i64 %t73)
  %t89 = getelementptr i8, ptr %t88, i64 %t73
  call void @olang_textcopy(ptr %t89, ptr %t76, i64 %t77)
  %t90 = getelementptr i8, ptr %t89, i64 %t77
  call void @olang_textcopy(ptr %t90, ptr %t80, i64 %t81)
  %t91 = getelementptr i8, ptr %t90, i64 %t81
  call void @olang_textcopy(ptr %t91, ptr %t84, i64 %t85)
  %t92 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t87, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidens(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 52}
  store i32 %t20, ptr %l4
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t24, i32 0, i32 4
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t29 = load i32, ptr %l4, !range !{i32 0, i32 52}
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t31 = load i32, ptr %l3, !tbaa !23
  %t36 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %a0, i32 %t29, { i64, ptr } %t30, i32 %t31)
  store i1 %t36, ptr %l21
  br label %bb6
bb6:
  %t37 = load i1, ptr %l21, !tbaa !21
  store i1 %t37, ptr %l6, !tbaa !21
  br label %bb18
bb7:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 17
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_d2f9ab61c66bb7bd_ba20d4faed7cd6b1)
  unreachable
bb18:
  %t47 = load i1, ptr %l6, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ezero(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, [7 x i64] }
  %l7 = alloca i32
  %l8 = alloca i32
  %l16 = alloca i32
  %l20 = alloca i32
  %l33 = alloca i32
  %l37 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca { i64, [7 x i64] }
  %l41 = alloca %"compiler/mir:Range"
  %l42 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca %"compiler/mir:Range"
  %l50 = alloca %"compiler/mir:Lvalue"
  %l54 = alloca %"compiler/mir:Call"
  %l55 = alloca i32
  %l63 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t24 = alloca { i64, [2 x i64] }, align 8
  %t33 = alloca { i64, [7 x i64] }, align 8
  %t47 = alloca { i64, [2 x i64] }, align 8
  %t110 = alloca { i64, [8 x i64] }, align 8
  %t127 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
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
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %t9, i32 3, i32 %t10)
  store i32 %t14, ptr %l16
  br label %bb1
bb1:
  %t15 = load i32, ptr %l16, !tbaa !23
  store i32 %t15, ptr %l1, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t16, i32 3, i32 %t17)
  store i32 %t21, ptr %l20
  br label %bb2
bb2:
  %t22 = load i32, ptr %l20, !tbaa !23
  store i32 %t22, ptr %l5, !tbaa !23
  %t23 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 0
  store i64 3, ptr %t25
  %t27 = insertvalue { i32, i32 } undef, i32 3, 0
  %t29 = insertvalue { i32, i32 } %t27, i32 %t23, 1
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  store { i32, i32 } %t29, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t24
  %t32 = load i32, ptr %l5, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [7 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t36 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t31, 0
  %t38 = insertvalue { { i64, [2 x i64] }, i32 } %t36, i32 %t32, 1
  %t39 = getelementptr { i64, [7 x i64] }, ptr %t33, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t38, ptr %t39
  %t40 = load { i64, [7 x i64] }, ptr %t33
  store { i64, [7 x i64] } %t40, ptr %l6
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 0
  store i64 3, ptr %t48
  %t50 = insertvalue { i32, i32 } undef, i32 3, 0
  %t52 = insertvalue { i32, i32 } %t50, i32 %t46, 1
  %t53 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 1
  store { i32, i32 } %t52, ptr %t53
  %t54 = load { i64, [2 x i64] }, ptr %t47
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %t45, { i64, [2 x i64] } %t54)
  br label %bb3
bb3:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/lower:lowering", ptr %t57, i32 0, i32 3
  %t61 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t59)
  store i32 %t61, ptr %l33
  br label %bb4
bb4:
  %t62 = load i32, ptr %l33, !tbaa !23
  store i32 %t62, ptr %l7, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l1, !tbaa !23
  %t65 = load %"compiler/source:Span", ptr %l2
  %t69 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t63, i32 %t64, %"compiler/source:Span" %t65)
  store i32 %t69, ptr %l37
  br label %bb5
bb5:
  %t70 = load i32, ptr %l37, !tbaa !23
  store i32 %t70, ptr %l8, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/lower:lowering", ptr %t71, i32 0, i32 3
  store ptr %t73, ptr %l39, !tbaa !29
  %t74 = load { i64, [7 x i64] }, ptr %l6
  store { i64, [7 x i64] } %t74, ptr %l40
  %t75 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t75, ptr %l41
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l42, !tbaa !29
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t78 = load { i64, [7 x i64] }, ptr %l6
  %t79 = load i32, ptr %l5, !tbaa !23
  %t83 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t77, { i64, [7 x i64] } %t78, i32 %t79)
  store i64 %t83, ptr %l46
  br label %bb6
bb6:
  %t85 = load ptr, ptr %l42, !tbaa !29
  %t86 = load i64, ptr %l46, !tbaa !24
  %t88 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %t85, i64 %t86, i32 %a3)
  store %"compiler/mir:Range" %t88, ptr %l48
  br label %bb7
bb7:
  %t89 = load i32, ptr %l8, !tbaa !23
  %t91 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t89)
  store %"compiler/mir:Lvalue" %t91, ptr %l50
  br label %bb8
bb8:
  %t92 = load i32, ptr %l7, !tbaa !23
  %t93 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t94 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t95 = load { i64, [7 x i64] }, ptr %l40
  %t96 = load %"compiler/mir:Range", ptr %l41
  %t97 = load %"compiler/mir:Range", ptr %l48
  %t98 = load %"compiler/mir:Lvalue", ptr %l50
  %t102 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t95, %"compiler/mir:Range" %t96, %"compiler/mir:Range" %t97, %"compiler/mir:Lvalue" %t98, i1 true, i32 %t92, i32 %t93, i32 %t94)
  store %"compiler/mir:Call" %t102, ptr %l54
  br label %bb9
bb9:
  %t103 = load ptr, ptr %l39, !tbaa !29
  %t104 = load %"compiler/mir:Call", ptr %l54
  %t105 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t103, %"compiler/mir:Call" %t104)
  store i32 %t105, ptr %l55
  br label %bb10
bb10:
  %t106 = load i32, ptr %l55, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l2
  store { i64, [8 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [8 x i64] }, ptr %t110, i32 0, i32 0
  store i64 4, ptr %t111
  %t113 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t108, 0
  %t115 = insertvalue { %"compiler/source:Span", i32 } %t113, i32 %t106, 1
  %t116 = getelementptr { i64, [8 x i64] }, ptr %t110, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t115, ptr %t116
  %t117 = load { i64, [8 x i64] }, ptr %t110
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t107, { i64, [8 x i64] } %t117)
  br label %bb11
bb11:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t120, i32 %t121)
  br label %bb12
bb12:
  %t124 = load i32, ptr %l8, !tbaa !23
  %t126 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t124)
  store %"compiler/mir:Lvalue" %t126, ptr %l63
  br label %bb13
bb13:
  store { i64, [4 x i64] } zeroinitializer, ptr %t127
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t127, i32 0, i32 0
  store i64 1, ptr %t128
  %t129 = load %"compiler/mir:Lvalue", ptr %l63
  %t130 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t129, 0
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t127, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t130, ptr %t131
  %t132 = load { i64, [4 x i64] }, ptr %t127
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t132, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroLocal(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l7 = alloca %"compiler/mir:Local"
  %l10 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l17 = alloca %"compiler/mir:Lvalue"
  %l21 = alloca { i64, [21 x i64] }
  %s0 = alloca %olang.scope
  %t27 = alloca { i64, [4 x i64] }, align 8
  %t34 = alloca { i64, [15 x i64] }, align 8
  %t40 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/mir:Fn", ptr %t3, i32 0, i32 7
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t4, i64 %t5)
  store %"compiler/mir:Local" %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = getelementptr %"compiler/mir:Local", ptr %l7, i32 0, i32 2
  %t10 = load i32, ptr %t9, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 3
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 9
  %t18 = load i32, ptr %t17, !tbaa !23
  store i32 %t18, ptr %l12, !tbaa !23
  store %"compiler/source:Span" %a2, ptr %l13
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = trunc i64 %t20 to i32
  %t25 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t22)
  store %"compiler/mir:Lvalue" %t25, ptr %l17
  br label %bb2
bb2:
  %t26 = load i32, ptr %l3, !tbaa !23
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
  %t42 = load %"compiler/source:Span", ptr %l13
  %t43 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t42, 0
  %t44 = load %"compiler/mir:Lvalue", ptr %l17
  %t45 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t43, %"compiler/mir:Lvalue" %t44, 1
  %t47 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t45, { i64, [15 x i64] } %t39, 2
  %t48 = getelementptr { i64, [21 x i64] }, ptr %t40, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t47, ptr %t48
  %t49 = load { i64, [21 x i64] }, ptr %t40
  store { i64, [21 x i64] } %t49, ptr %l21
  %t50 = load ptr, ptr %l10, !tbaa !29
  %t51 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s0, ptr %t50, i32 %t51, ptr %l21)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flower_2eindexOf(ptr %v0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, i32 %a1) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l36 = alloca i32
  %rv = alloca i64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t2 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %l0)
  store i64 %t2, ptr %l9
  br label %bb1
bb1:
  %t3 = load i64, ptr %l9, !tbaa !24
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = icmp sgt i64 %t4, %t5
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb7
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = sub i64 %t14, %t15
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = sub i64 %t22, 1
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sdiv i64 %t24, %t25
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l13, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t40 = load i64, ptr %l2, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = mul i64 %t41, %t42
  %t48 = add i64 %t40, %t45
  store i64 %t48, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %l0, i64 %t50)
  store i32 %t53, ptr %l36
  br label %bb12
bb12:
  %t55 = load i32, ptr %l36, !tbaa !23
  %t57 = icmp eq i32 %t55, %a1
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load i64, ptr %l7, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d1 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Char" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"gen" }>, align 8
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"plain" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define internal i1 @olang_lambda_6(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" weak " }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d8 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"a declared Copy whose body check did not make (E31d)" }>, align 8
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

@__olang_empty_array = external constant [16 x i64]
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
define internal void @olang_lambda_9(ptr %env, i64 %a0, i32 %a1) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"compiler/lower:pl"
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca %"compiler/lower:pl"
  %l54 = alloca %"compiler/lower:pl"
  %l57 = alloca %"compiler/lower:pl"
  %l60 = alloca %"compiler/lower:pl"
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca %"compiler/lower:pl"
  %l65 = alloca %"compiler/lower:pl"
  %l68 = alloca %"compiler/lower:pl"
  %l71 = alloca %"compiler/lower:pl"
  %l78 = alloca { i64, [4 x i64] }
  %l81 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t70 = alloca { i64, [1 x i64] }, align 8
  %t81 = alloca { i64, [1 x i64] }, align 8
  %t98 = alloca { i64, [1 x i64] }, align 8
  %t109 = alloca { i64, [1 x i64] }, align 8
  %t147 = alloca { i64, [8 x i64] }, align 8
  store i64 %a0, ptr %l0
  %cp0 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %cp1 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/lower:pl", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/lower:pl", ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load %"compiler/source:Span", ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load i32, ptr %cp4, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  %vq2 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 7
  %vr2 = load ptr, ptr %vq2, !tbaa !28
  %vc2 = call ptr @__olang_capture_scope(ptr %vr2)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l18, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %vc0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l22
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l18, !tbaa !29
  %t11 = load i32, ptr %l22, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %vc0, ptr %s0, ptr %t10, i32 %t11)
  store { i64, ptr } %t12, ptr %l23
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l23, !tbaa !27
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
  store i64 0, ptr %l29, !tbaa !24
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
  store i64 %t42, ptr %l32, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l32, !tbaa !24
  store i64 %t44, ptr %l29, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l29, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb11:
  br label %bb12
bb12:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l50, !tbaa !29
  %t65 = load ptr, ptr %l2, !tbaa !29
  store ptr %t65, ptr %l51, !tbaa !29
  store %"compiler/lower:pl" %cv1, ptr %l52
  %t68 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l52)
  store %"compiler/lower:pl" %t68, ptr %l54
  br label %bb13
bb13:
  %t69 = load i64, ptr %l0, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t70
  %t71 = getelementptr { i64, [1 x i64] }, ptr %t70, i32 0, i32 0
  store i64 4, ptr %t71
  %t73 = insertvalue { i64 } undef, i64 %t69, 0
  %t74 = getelementptr { i64, [1 x i64] }, ptr %t70, i32 0, i32 1
  store { i64 } %t73, ptr %t74
  %t75 = load { i64, [1 x i64] }, ptr %t70
  %t76 = load ptr, ptr %l51, !tbaa !29
  %t77 = load %"compiler/lower:pl", ptr %l54
  %t79 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t76, %"compiler/lower:pl" %t77, { i64, [1 x i64] } %t75)
  store %"compiler/lower:pl" %t79, ptr %l57
  br label %bb14
bb14:
  %t80 = load i64, ptr %l9, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [1 x i64] }, ptr %t81, i32 0, i32 0
  store i64 0, ptr %t82
  %t84 = insertvalue { i64 } undef, i64 %t80, 0
  %t85 = getelementptr { i64, [1 x i64] }, ptr %t81, i32 0, i32 1
  store { i64 } %t84, ptr %t85
  %t86 = load { i64, [1 x i64] }, ptr %t81
  %t87 = load ptr, ptr %l50, !tbaa !29
  %t88 = load %"compiler/lower:pl", ptr %l57
  %t90 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t87, %"compiler/lower:pl" %t88, { i64, [1 x i64] } %t86)
  store %"compiler/lower:pl" %t90, ptr %l60
  br label %bb15
bb15:
  %t91 = load %"compiler/lower:pl", ptr %l60
  store %"compiler/lower:pl" %t91, ptr %l11
  %t92 = load ptr, ptr %l2, !tbaa !29
  store ptr %t92, ptr %l61, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  store ptr %t93, ptr %l62, !tbaa !29
  store %"compiler/lower:pl" %cv2, ptr %l63
  %t96 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l63)
  store %"compiler/lower:pl" %t96, ptr %l65
  br label %bb16
bb16:
  %t97 = load i64, ptr %l0, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [1 x i64] }, ptr %t98, i32 0, i32 0
  store i64 4, ptr %t99
  %t101 = insertvalue { i64 } undef, i64 %t97, 0
  %t102 = getelementptr { i64, [1 x i64] }, ptr %t98, i32 0, i32 1
  store { i64 } %t101, ptr %t102
  %t103 = load { i64, [1 x i64] }, ptr %t98
  %t104 = load ptr, ptr %l62, !tbaa !29
  %t105 = load %"compiler/lower:pl", ptr %l65
  %t107 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t104, %"compiler/lower:pl" %t105, { i64, [1 x i64] } %t103)
  store %"compiler/lower:pl" %t107, ptr %l68
  br label %bb17
bb17:
  %t108 = load i64, ptr %l9, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [1 x i64] }, ptr %t109, i32 0, i32 0
  store i64 0, ptr %t110
  %t112 = insertvalue { i64 } undef, i64 %t108, 0
  %t113 = getelementptr { i64, [1 x i64] }, ptr %t109, i32 0, i32 1
  store { i64 } %t112, ptr %t113
  %t114 = load { i64, [1 x i64] }, ptr %t109
  %t115 = load ptr, ptr %l61, !tbaa !29
  %t116 = load %"compiler/lower:pl", ptr %l68
  %t118 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t115, %"compiler/lower:pl" %t116, { i64, [1 x i64] } %t114)
  store %"compiler/lower:pl" %t118, ptr %l71
  br label %bb18
bb18:
  %t119 = load %"compiler/lower:pl", ptr %l71
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t121 = load %"compiler/lower:pl", ptr %l11
  %t123 = load i64, ptr %l9, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr i32, ptr %t126, i64 %t123
  %t128 = load i32, ptr %t127, !tbaa !33
  %t135 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %vc0, ptr %s2, ptr %s2, ptr %t120, %"compiler/lower:pl" %t121, %"compiler/lower:pl" %t119, i32 %t128, %"compiler/source:Span" %cv3, i1 false)
  store { i64, [4 x i64] } %t135, ptr %l78
  br label %bb19
bb19:
  %t136 = load { i64, [4 x i64] }, ptr %l78
  store { i64, [4 x i64] } %t136, ptr %l15
  %t137 = load ptr, ptr %l2, !tbaa !29
  %t139 = getelementptr %"compiler/lower:lowering", ptr %t137, i32 0, i32 3
  %t141 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %vc0, ptr %t139)
  store i32 %t141, ptr %l81
  br label %bb20
bb20:
  %t142 = load i32, ptr %l81, !tbaa !23
  store i32 %t142, ptr %l16, !tbaa !23
  %t143 = load ptr, ptr %l2, !tbaa !29
  %t144 = load { i64, [4 x i64] }, ptr %l15
  %t145 = load i32, ptr %l16, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [8 x i64] }, ptr %t147, i32 0, i32 0
  store i64 2, ptr %t148
  %t150 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t144, 0
  %t152 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t150, i32 %t145, 1
  %t154 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t152, i32 %cv4, 2
  %t155 = getelementptr { i64, [8 x i64] }, ptr %t147, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t154, ptr %t155
  %t156 = load { i64, [8 x i64] }, ptr %t147
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %vc0, ptr %t143, { i64, [8 x i64] } %t156)
  br label %bb21
bb21:
  %t159 = load ptr, ptr %l2, !tbaa !29
  %t160 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %vc0, ptr %t159, i32 %t160)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb23:
  %t163 = load i64, ptr %l8, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l8, !tbaa !24
  br label %bb9
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@.d10 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"an Equal helper for a type with no parts" }>, align 8
define internal void @olang_lambda_11(ptr %env, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca ptr
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %l16 = alloca %"compiler/lower:pl"
  %l17 = alloca ptr
  %l18 = alloca %"compiler/lower:pl"
  %l20 = alloca %"compiler/lower:pl"
  %l23 = alloca %"compiler/lower:pl"
  %l26 = alloca { i64, [4 x i64] }
  %l29 = alloca i32
  %s0 = alloca %olang.scope
  %t7 = alloca { i64, [1 x i64] }, align 8
  %t22 = alloca { i64, [1 x i64] }, align 8
  %t51 = alloca { i64, [8 x i64] }, align 8
  store i32 %a0, ptr %l0
  %cp0 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/lower:pl", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/lower:pl", ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load i32, ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load %"compiler/source:Span", ptr %cp4, !tbaa !28
  %cp5 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %cv5 = load i32, ptr %cp5, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 7
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  %vq2 = getelementptr { ptr, %"compiler/lower:pl", %"compiler/lower:pl", i32, %"compiler/source:Span", i32, ptr, ptr, ptr }, ptr %env, i32 0, i32 8
  %vr2 = load ptr, ptr %vq2, !tbaa !28
  %vc2 = call ptr @__olang_capture_scope(ptr %vr2)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2, ptr %l10, !tbaa !29
  store %"compiler/lower:pl" %cv1, ptr %l11
  %t5 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l11)
  store %"compiler/lower:pl" %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [1 x i64] }, ptr %t7, i32 0, i32 0
  store i64 1, ptr %t8
  %t10 = insertvalue { i32 } undef, i32 %t6, 0
  %t11 = getelementptr { i64, [1 x i64] }, ptr %t7, i32 0, i32 1
  store { i32 } %t10, ptr %t11
  %t12 = load { i64, [1 x i64] }, ptr %t7
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t14 = load %"compiler/lower:pl", ptr %l13
  %t16 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t13, %"compiler/lower:pl" %t14, { i64, [1 x i64] } %t12)
  store %"compiler/lower:pl" %t16, ptr %l16
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l17, !tbaa !29
  store %"compiler/lower:pl" %cv2, ptr %l18
  %t20 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l18)
  store %"compiler/lower:pl" %t20, ptr %l20
  br label %bb3
bb3:
  %t21 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 0
  store i64 1, ptr %t23
  %t25 = insertvalue { i32 } undef, i32 %t21, 0
  %t26 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 1
  store { i32 } %t25, ptr %t26
  %t27 = load { i64, [1 x i64] }, ptr %t22
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = load %"compiler/lower:pl", ptr %l20
  %t31 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t28, %"compiler/lower:pl" %t29, { i64, [1 x i64] } %t27)
  store %"compiler/lower:pl" %t31, ptr %l23
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l9, !tbaa !29
  %t35 = load %"compiler/lower:pl", ptr %l16
  %t36 = load %"compiler/lower:pl", ptr %l23
  %t39 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %vc0, ptr %s0, ptr %s0, ptr %t34, %"compiler/lower:pl" %t35, %"compiler/lower:pl" %t36, i32 %cv3, %"compiler/source:Span" %cv4, i1 false)
  store { i64, [4 x i64] } %t39, ptr %l26
  br label %bb5
bb5:
  %t40 = load { i64, [4 x i64] }, ptr %l26
  store { i64, [4 x i64] } %t40, ptr %l6
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 3
  %t45 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %vc0, ptr %t43)
  store i32 %t45, ptr %l29
  br label %bb6
bb6:
  %t46 = load i32, ptr %l29, !tbaa !23
  store i32 %t46, ptr %l7, !tbaa !23
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t48 = load { i64, [4 x i64] }, ptr %l6
  %t49 = load i32, ptr %l7, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [8 x i64] }, ptr %t51, i32 0, i32 0
  store i64 2, ptr %t52
  %t54 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t48, 0
  %t56 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t54, i32 %t49, 1
  %t58 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t56, i32 %cv5, 2
  %t59 = getelementptr { i64, [8 x i64] }, ptr %t51, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t58, ptr %t59
  %t60 = load { i64, [8 x i64] }, ptr %t51
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %vc0, ptr %t47, { i64, [8 x i64] } %t60)
  br label %bb7
bb7:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t64 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %vc0, ptr %t63, i32 %t64)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
define internal void @olang_lambda_14(ptr %env, i64 %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca ptr
  %l50 = alloca %"compiler/lower:pl"
  %l52 = alloca %"compiler/lower:pl"
  %l55 = alloca %"compiler/lower:pl"
  %l58 = alloca %"compiler/lower:pl"
  %l62 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t73 = alloca { i64, [1 x i64] }, align 8
  %t84 = alloca { i64, [1 x i64] }, align 8
  %cp0 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %cp1 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load i32, ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/lower:pl", ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load %"compiler/source:Span", ptr %cp3, !tbaa !28
  store %"compiler/source:Span" %cv3, ptr %l12
  %vq0 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 4
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, i32, %"compiler/lower:pl", %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 5
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %vc0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l17
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l13, !tbaa !29
  %t11 = load i32, ptr %l17, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %vc0, ptr %s0, ptr %t10, i32 %t11)
  store { i64, ptr } %t12, ptr %l18
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l18, !tbaa !27
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
  store i64 0, ptr %l24, !tbaa !24
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
  store i64 %t42, ptr %l27, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l27, !tbaa !24
  store i64 %t44, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l24, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l45, !tbaa !29
  store i32 %cv1, ptr %l46, !tbaa !23
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %l47, !tbaa !29
  %t67 = load ptr, ptr %l2, !tbaa !29
  store ptr %t67, ptr %l48, !tbaa !29
  %t68 = load ptr, ptr %l2, !tbaa !29
  store ptr %t68, ptr %l49, !tbaa !29
  store %"compiler/lower:pl" %cv2, ptr %l50
  %t71 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l50)
  store %"compiler/lower:pl" %t71, ptr %l52
  br label %bb13
bb13:
  store { i64, [1 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [1 x i64] }, ptr %t73, i32 0, i32 0
  store i64 4, ptr %t74
  %t76 = insertvalue { i64 } undef, i64 %a0, 0
  %t77 = getelementptr { i64, [1 x i64] }, ptr %t73, i32 0, i32 1
  store { i64 } %t76, ptr %t77
  %t78 = load { i64, [1 x i64] }, ptr %t73
  %t79 = load ptr, ptr %l49, !tbaa !29
  %t80 = load %"compiler/lower:pl", ptr %l52
  %t82 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t79, %"compiler/lower:pl" %t80, { i64, [1 x i64] } %t78)
  store %"compiler/lower:pl" %t82, ptr %l55
  br label %bb14
bb14:
  %t83 = load i64, ptr %l9, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [1 x i64] }, ptr %t84, i32 0, i32 0
  store i64 0, ptr %t85
  %t87 = insertvalue { i64 } undef, i64 %t83, 0
  %t88 = getelementptr { i64, [1 x i64] }, ptr %t84, i32 0, i32 1
  store { i64 } %t87, ptr %t88
  %t89 = load { i64, [1 x i64] }, ptr %t84
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t91 = load %"compiler/lower:pl", ptr %l55
  %t93 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t90, %"compiler/lower:pl" %t91, { i64, [1 x i64] } %t89)
  store %"compiler/lower:pl" %t93, ptr %l58
  br label %bb15
bb15:
  %t94 = load i64, ptr %l9, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t94
  %t99 = load i32, ptr %t98, !tbaa !33
  %t100 = load %"compiler/source:Span", ptr %l12
  %t101 = load ptr, ptr %l47, !tbaa !29
  %t102 = load %"compiler/lower:pl", ptr %l58
  %t105 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %vc0, ptr %s2, ptr %t101, %"compiler/lower:pl" %t102, i32 %t99, %"compiler/source:Span" %t100, i1 false)
  store { i64, [4 x i64] } %t105, ptr %l62
  br label %bb16
bb16:
  %t106 = load %"compiler/source:Span", ptr %l12
  %t107 = load ptr, ptr %l45, !tbaa !29
  %t108 = load i32, ptr %l46, !tbaa !23
  %t109 = load { i64, [4 x i64] }, ptr %l62
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %vc0, ptr %t107, i32 %t108, { i64, [4 x i64] } %t109, %"compiler/source:Span" %t106)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  br label %bb9
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@.d15 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a Hash helper for a type with no parts" }>, align 8
define internal void @olang_lambda_16(ptr %env, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca %"compiler/lower:pl"
  %l12 = alloca %"compiler/lower:pl"
  %l15 = alloca %"compiler/lower:pl"
  %l18 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %t9 = alloca { i64, [1 x i64] }, align 8
  %cp0 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load i32, ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/lower:pl", ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load i32, ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load %"compiler/source:Span", ptr %cp4, !tbaa !28
  store %"compiler/source:Span" %cv4, ptr %l5
  %vq0 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 5
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, i32, %"compiler/lower:pl", i32, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 6
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i32 %cv1, ptr %l7, !tbaa !23
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  store ptr %t4, ptr %l9, !tbaa !29
  store %"compiler/lower:pl" %cv2, ptr %l10
  %t7 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l10)
  store %"compiler/lower:pl" %t7, ptr %l12
  br label %bb1
bb1:
  store { i64, [1 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [1 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t12 = insertvalue { i32 } undef, i32 %a0, 0
  %t13 = getelementptr { i64, [1 x i64] }, ptr %t9, i32 0, i32 1
  store { i32 } %t12, ptr %t13
  %t14 = load { i64, [1 x i64] }, ptr %t9
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t16 = load %"compiler/lower:pl", ptr %l12
  %t18 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t15, %"compiler/lower:pl" %t16, { i64, [1 x i64] } %t14)
  store %"compiler/lower:pl" %t18, ptr %l15
  br label %bb2
bb2:
  %t20 = load %"compiler/source:Span", ptr %l5
  %t21 = load ptr, ptr %l8, !tbaa !29
  %t22 = load %"compiler/lower:pl", ptr %l15
  %t25 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %vc0, ptr %s0, ptr %t21, %"compiler/lower:pl" %t22, i32 %cv3, %"compiler/source:Span" %t20, i1 false)
  store { i64, [4 x i64] } %t25, ptr %l18
  br label %bb3
bb3:
  %t26 = load %"compiler/source:Span", ptr %l5
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t28 = load i32, ptr %l7, !tbaa !23
  %t29 = load { i64, [4 x i64] }, ptr %l18
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %vc0, ptr %t27, i32 %t28, { i64, [4 x i64] } %t29, %"compiler/source:Span" %t26)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aScopeRef(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 5}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 5}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb10
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 0, label %bb4 i64 1, label %bb5 i64 4, label %bb6 ]
bb3:
  br label %bb10
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [1 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [1 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb7, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [1 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb8, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [1 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [1 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  %t44 = icmp eq i32 %t37, %t41
  br i1 %t44, label %bb9, label %bb1
bb7:
  br label %bb3
bb8:
  br label %bb3
bb9:
  br label %bb3
bb10:
  %t46 = load i1, ptr %l2, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d17 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"an unknown type (a check error or gap): an expression" }>, align 8
define internal i64 @olang_lambda_18(ptr %env, i32 %a0) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %vc0, ptr %cv0, i32 %a0)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define internal i64 @olang_lambda_19(ptr %env, i32 %a0) #0 {
entry:
  %l2 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %rv = alloca i64
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %cv0, i32 0, i32 44
  %t6 = sext i32 %a0 to i64
  %t9 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l8
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l7
  br label %bb1
bb1:
  %t14 = load i64, ptr %l7, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" escapes" }>, align 8
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" returned" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" written" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" assigned" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" lent" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@olang_loc_fb323a156c70c4fe_3d15b87c8f91a072 = external constant [0 x i8]
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLower(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eDump(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_c32f9218f06293f2_15f5ca50bc3801e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2262f7260befbeda_ad33d1a86099f68e = external constant [0 x i8]
@olang_loc_78466967dd42e061_bdc585e3e8213235 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6143a96035d3ceac_ef612191f7538720 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
@olang_loc_9919e1798def049b_eb223155b689b93f = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ehomeKept(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
@G_2ecompiler_2flower_2eOutOfBounds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eneverNullPath(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2efieldAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_c6e8669f85ad48a7_dc5f185375890b93 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2escalar(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eflag(ptr %v0, ptr %a0, i1 %a1, %"compiler/source:Span" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3, ptr %a4c, ptr %a4e)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %a0, i1 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emethodBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashErr(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamElig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2erunArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldUnchanged(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3e618b7a6832a44e_dc583ba968d0a99a = external constant [0 x i8]
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftyped_2eViewOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@G_2ecompiler_2ftyped_2eViewBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b20a71c9b4f6a91d_fe0bcb009af05229 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
@olang_loc_166f6c7f8536ecb_3daea1ccb6433847 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2flower_2eWrongCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_80847d650e26c632_64a1946959062bee = external constant [0 x i8]
declare ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2emutGlobals(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2estrBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
@olang_loc_838d4f7d17068d91_8ef0a18bf216f57d = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eSettle(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eelide(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2etail(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
@olang_loc_1cfeed275c1dbeae_9c68fab96b3cccca = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretView(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efitAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eretArrays(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ddcb411f232bf43e_ce3417657830a5fa = external constant [0 x i8]
@olang_loc_ecde87765d07009c_52dfe83edba10a08 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2eFreshTemp(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_2e0d72be7b5575d7_214712821f524de3 = external constant [0 x i8]
@olang_loc_4b16c1f6667ae236_8522eea6e5c16fe2 = external constant [0 x i8]
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eviewLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eviewTemps(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2emovesAtLastUse(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8c91a6d7a61b2df6_ddcf23b133d92f82 = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2, %"compiler/source:Span" %a3)
@olang_loc_a0544551fd9aba23_197859eb537d6a87 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ecea37d4633e9922_e7ec56cda3c90b26 = external constant [0 x i8]
declare i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eprojsOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_a3627063ced14f10_5c0b773917422a84 = external constant [0 x i8]
@olang_loc_73384406ab4916da_7af5324ba56268d6 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eread(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eborrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromote(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecollect(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprimExpr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, i32 %a4, %"compiler/source:Span" %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eslice(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econd(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eseq(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etry(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efnVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etext(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eaway(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_c62658d3c5a83b98_5474a5965e06e124 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/typed:ViewWalk" @compiler_2ftyped_3aViewWalk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eescWhy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
@olang_loc_d2f9ab61c66bb7bd_ba20d4faed7cd6b1 = external constant [0 x i8]
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
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
