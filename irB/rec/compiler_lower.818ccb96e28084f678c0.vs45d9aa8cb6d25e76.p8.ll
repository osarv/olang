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
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/lower:tryCtx" = type { i64, { i64, ptr }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/lower:collectCtx" = type { i32, i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/lower:relPath" = type { i64, { i64, ptr } }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/lower:loopCtx" = type { i32, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:LastUses" = type { i64, { i64, ptr }, { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/lower:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDecideGen(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca i64
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l11
  br label %bb1
bb1:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l15, !tbaa !24
  store i64 %t40, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l1, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l3, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l6, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l36, !tbaa !29
  %t60 = load i64, ptr %l6, !tbaa !24
  store i64 %t60, ptr %l37, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/lower:Lowerer", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/load:Loader", ptr %t67, i32 0, i32 10
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t69, i64 %t70)
  store ptr %t73, ptr %l43
  br label %bb12
bb12:
  %t74 = load ptr, ptr %l43, !tbaa !29
  %t76 = getelementptr %"compiler/load:Module", ptr %t74, i32 0, i32 8
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t78 = load ptr, ptr %l36, !tbaa !29
  %t79 = load i64, ptr %l37, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2edecideGen(ptr %v0, ptr %v0, ptr %t78, i64 %t79, { i64, ptr } %t77)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l5, !tbaa !24
  br label %bb8
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/typed:Plan"
  %l21 = alloca %"compiler/typed:Plan"
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l32 = alloca i64
  %l36 = alloca %"compiler/typed:Plan"
  %l38 = alloca %"compiler/typed:Plan"
  %l40 = alloca i64
  %rv = alloca i64
  %t28 = alloca %"compiler/typed:Plan", align 8
  %t31 = alloca %"compiler/typed:Plan", align 8
  %t61 = alloca %"compiler/typed:Plan", align 8
  %t64 = alloca %"compiler/typed:Plan", align 8
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
  br label %bb11
bb3:
  %t10 = load i32, ptr %l2, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store i64 %t12, ptr %l9, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:Lowerer", ptr %t13, i32 0, i32 2
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l12
  br label %bb4
bb4:
  %t18 = load i64, ptr %l9, !tbaa !24
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:Lowerer", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l2, !tbaa !23
  %t27 = sext i32 %t25 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t28, ptr %v0, ptr %v0, ptr %t24, i64 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t28, i64 536, i1 false)
  br label %bb7
bb6:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb10
bb7:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t31, ptr %v0, ptr %l19)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t31, i64 536, i1 false)
  br label %bb8
bb8:
  %t33 = getelementptr %"compiler/typed:Plan", ptr %l21, i32 0, i32 15
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l23
  br label %bb9
bb9:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l14, !tbaa !24
  br label %bb10
bb10:
  %t37 = load i64, ptr %l14, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb27
bb11:
  %t38 = load { i64, [2 x i64] }, ptr %l1
  %t40 = extractvalue { i64, [2 x i64] } %t38, 0
  %t41 = icmp eq i64 %t40, 6
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t44 = getelementptr { i32, i64 }, ptr %t43, i32 0, i32 1
  %t45 = load i64, ptr %t44
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb14
bb13:
  br label %bb22
bb14:
  %t47 = load i64, ptr %l3, !tbaa !24
  store i64 %t47, ptr %l27, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:Lowerer", ptr %t48, i32 0, i32 3
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l30
  br label %bb15
bb15:
  %t53 = load i64, ptr %l27, !tbaa !24
  %t54 = load i64, ptr %l30, !tbaa !24
  %t55 = icmp slt i64 %t53, %t54
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/lower:Lowerer", ptr %t57, i32 0, i32 3
  %t60 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t61, ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t61, i64 536, i1 false)
  br label %bb18
bb17:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb21
bb18:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t64, ptr %v0, ptr %l36)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t64, i64 536, i1 false)
  br label %bb19
bb19:
  %t66 = getelementptr %"compiler/typed:Plan", ptr %l38, i32 0, i32 15
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l40
  br label %bb20
bb20:
  %t69 = load i64, ptr %l40, !tbaa !24
  store i64 %t69, ptr %l32, !tbaa !24
  br label %bb21
bb21:
  %t70 = load i64, ptr %l32, !tbaa !24
  store i64 %t70, ptr %l4, !tbaa !24
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_caf8701635663f27_e992a5ba8ea146fb)
  unreachable
bb27:
  %t71 = load i64, ptr %l4, !tbaa !24
  store i64 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l7 = alloca i1
  %l11 = alloca i64
  %l19 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l25 = alloca i1
  %l32 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l33 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i32
  %l38 = alloca i1
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 35
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:Lowerer", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 5
  %t13 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Ha270003b2266a12c55eea6eacf9a4be1(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l11
  br label %bb3
bb3:
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = icmp eq i64 %t14, 0
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l7, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 34
  store ptr %t20, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:Lowerer", ptr %t22, i32 0, i32 35
  store i1 true, ptr %t24, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:Lowerer", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 5
  %t32 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v0, ptr %t30)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t32, ptr %l19
  br label %bb8
bb8:
  %t33 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l19
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t33, ptr %l1
  br label %bb9
bb9:
  %t35 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %l1)
  %t36 = extractvalue { i32, i64 } %t35, 1
  %t37 = extractvalue { i32, i64 } %t35, 0
  store i32 %t37, ptr %l23
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb11, label %ok.39, !prof !99
ok.39:
  store i64 %t36, ptr %l22
  br label %bb10
bb10:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  br label %bb13
bb11:
  %t41 = load i32, ptr %l23, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  br label %bb16
bb13:
  %t45 = load i64, ptr %l20, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lower:Lowerer", ptr %t46, i32 0, i32 34
  %t49 = getelementptr %"compiler/mir:GenInfo", ptr %t48, i32 0, i32 0
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t49, i64 %t45, i1 true)
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb9
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:Lowerer", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 7
  %t60 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v0, ptr %t58)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t60, ptr %l32
  br label %bb17
bb17:
  %t61 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l32
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t61, ptr %l3
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t63 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %s5, ptr %l3)
  %t64 = extractvalue { i32, { i64, ptr } } %t63, 1
  %t65 = extractvalue { i32, { i64, ptr } } %t63, 0
  store i32 %t65, ptr %l36
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb20, label %ok.67, !prof !99
ok.67:
  store { i64, ptr } %t64, ptr %l35
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l39, !tbaa !24
  %t70 = load i64, ptr %l39, !tbaa !24
  %t71 = mul i64 %t70, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l40, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l39, !tbaa !24
  %t80 = mul i64 %t79, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t76, ptr %t78, i64 %t80, i1 false)
  %t81 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t81, ptr %l33, !tbaa !27
  br label %bb22
bb20:
  %t82 = load i32, ptr %l36, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  store i1 %t85, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb22:
  %t86 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/lower:Lowerer", ptr %t87, i32 0, i32 34
  %t90 = getelementptr %"compiler/mir:GenInfo", ptr %t89, i32 0, i32 1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %t90, { i64, ptr } %t86, i1 true)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  br label %bb18
bb25:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:Lowerer", ptr %t94, i32 0, i32 34
  store ptr %t96, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l5 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 12
  %t4 = load { i64, [2 x i64] }, ptr %l1
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %t3, { i64, [2 x i64] } %t4)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 12
  %t12 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %t11, { i64, [2 x i64] } %t12, i1 true)
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:Lowerer", ptr %t15, i32 0, i32 11
  %t18 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t17, { i64, [2 x i64] } %t18)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eanyRender(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i32
  %lp5 = alloca ptr
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/lower:pl"
  %l13 = alloca ptr
  %l20 = alloca i32
  %l22 = alloca %"compiler/typed:Body"
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca ptr
  %l33 = alloca %"compiler/mir:Fn"
  %l35 = alloca %"compiler/lower:lowering"
  %l36 = alloca %"compiler/source:Span"
  %l39 = alloca { i64, ptr }
  %l40 = alloca %"compiler/mir:Lvalue"
  %l43 = alloca %"compiler/lower:pl"
  %l49 = alloca ptr
  %l50 = alloca %"compiler/lower:pl"
  %l52 = alloca %"compiler/lower:pl"
  %l54 = alloca %"compiler/lower:pl"
  %l56 = alloca ptr
  %l57 = alloca { i64, [1 x i64] }
  %l58 = alloca ptr
  %l59 = alloca %"compiler/lower:pl"
  %l61 = alloca %"compiler/lower:pl"
  %l62 = alloca %"compiler/mir:Lvalue"
  %l67 = alloca ptr
  %l68 = alloca %"compiler/lower:pl"
  %l70 = alloca %"compiler/lower:pl"
  %l79 = alloca %"compiler/mir:Fn"
  %l81 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t28 = alloca %"compiler/typed:Body", align 8
  %t43 = alloca { i64, [2 x i64] }, align 8
  %t52 = alloca %"compiler/mir:Fn", align 8
  %t57 = alloca %"compiler/lower:lowering", align 8
  %t67 = alloca { i64, [1 x i64] }, align 8
  %t81 = alloca { i64, [4 x i64] }, align 8
  %t110 = alloca { i64, [1 x i64] }, align 8
  %t123 = alloca { i64, [1 x i64] }, align 8
  %t139 = alloca { i64, [4 x i64] }, align 8
  %t159 = alloca { i64, [1 x i64] }, align 8
  %t171 = alloca { i64, [4 x i64] }, align 8
  %t185 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 61
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store ptr %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l13, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:Lowerer", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/generic:AnyTable", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t25 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t17, i32 0, i32 %t21)
  store i32 %t25, ptr %l20
  br label %bb2
bb2:
  %t26 = load i32, ptr %l20, !tbaa !23
  store i32 %t26, ptr %l4, !tbaa !23
  %t27 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2estandIn(ptr %t28, ptr %v1, i32 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t28, i64 408, i1 false)
  br label %bb3
bb3:
  %t30 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 408, i64 8)
  store ptr %t30, ptr %lp5
  %t31 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %l22, i64 408, i1 false)
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l23, !tbaa !29
  %t33 = load ptr, ptr %lp5
  store ptr %t33, ptr %l24, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:Lowerer", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  store ptr %t39, ptr %l27, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i1, ptr %l2, !tbaa !21
  store { i64, [2 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 0
  store i64 5, ptr %t44
  %t46 = insertvalue { i64, i1 } undef, i64 %t41, 0
  %t48 = insertvalue { i64, i1 } %t46, i1 %t42, 1
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 1
  store { i64, i1 } %t48, ptr %t49
  %t50 = load { i64, [2 x i64] }, ptr %t43
  %t51 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %t52, ptr %v0, ptr %v1, ptr %t40, { i64, [2 x i64] } %t50, i32 %t51)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t52, i64 800, i1 false)
  br label %bb4
bb4:
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %l33, i64 800, i1 false)
  %t58 = load ptr, ptr %l23, !tbaa !29
  %t59 = load ptr, ptr %l24, !tbaa !29
  %t60 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2flower_3alowering_2ector(ptr %t57, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t58, ptr %t59, ptr %t60, ptr %t56)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t57, i64 3272, i1 false)
  br label %bb5
bb5:
  %t62 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3272, i64 8)
  store ptr %t62, ptr %lp6
  %t63 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %l35, i64 3272, i1 false)
  %t64 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t64, ptr %l36
  br label %bb6
bb6:
  %t65 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t65, ptr %l7
  %t66 = load ptr, ptr %lp6
  store { i64, [1 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [1 x i64] }, ptr %t67, i32 0, i32 0
  store i64 6, ptr %t68
  %t69 = load { i64, [1 x i64] }, ptr %t67
  %t70 = mul i64 1, 16
  %t71 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t70)
  %t72 = insertvalue { i64, ptr } undef, i64 1, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l39, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, [1 x i64] }, ptr %t76, i64 0
  store { i64, [1 x i64] } %t69, ptr %t77
  %t79 = load { i64, ptr }, ptr %l39, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v1, ptr %s0, ptr %t66, { i64, ptr } %t79)
  br label %bb7
bb7:
  %t80 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 1)
  store %"compiler/mir:Lvalue" %t80, ptr %l40
  br label %bb8
bb8:
  store { i64, [4 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 0
  store i64 1, ptr %t82
  %t83 = load %"compiler/mir:Lvalue", ptr %l40
  %t84 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t83, 0
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t84, ptr %t85
  %t86 = load { i64, [4 x i64] }, ptr %t81
  %t88 = load ptr, ptr %lp6
  %t89 = getelementptr %"compiler/lower:lowering", ptr %t88, i32 0, i32 8
  store { i64, [4 x i64] } %t86, ptr %t89
  %t90 = load ptr, ptr %lp6
  %t92 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v1, ptr %s0, ptr %t90, i32 0)
  store %"compiler/lower:pl" %t92, ptr %l43
  br label %bb9
bb9:
  %t93 = load %"compiler/lower:pl", ptr %l43
  store %"compiler/lower:pl" %t93, ptr %l8
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = getelementptr %"compiler/generic:AnyTable", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = getelementptr %"compiler/generic:AnyTable", ptr %t98, i32 0, i32 0
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = icmp ne i32 %t97, %t101
  br i1 %t104, label %bb10, label %bb11
bb10:
  %t106 = load ptr, ptr %lp6
  store ptr %t106, ptr %l49, !tbaa !29
  %t107 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t107, ptr %l50
  %t109 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l50)
  store %"compiler/lower:pl" %t109, ptr %l52
  br label %bb12
bb11:
  br label %bb14
bb12:
  store { i64, [1 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [1 x i64] }, ptr %t110, i32 0, i32 0
  store i64 0, ptr %t111
  %t112 = insertvalue { i64 } undef, i64 0, 0
  %t113 = getelementptr { i64, [1 x i64] }, ptr %t110, i32 0, i32 1
  store { i64 } %t112, ptr %t113
  %t114 = load { i64, [1 x i64] }, ptr %t110
  %t115 = load ptr, ptr %l49, !tbaa !29
  %t116 = load %"compiler/lower:pl", ptr %l52
  %t118 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v1, ptr %s0, ptr %s0, ptr %t115, %"compiler/lower:pl" %t116, { i64, [1 x i64] } %t114)
  store %"compiler/lower:pl" %t118, ptr %l54
  br label %bb13
bb13:
  %t119 = load %"compiler/lower:pl", ptr %l54
  store %"compiler/lower:pl" %t119, ptr %l8
  br label %bb14
bb14:
  %t120 = load i1, ptr %l2, !tbaa !21
  br i1 %t120, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t122 = load ptr, ptr %lp6
  store ptr %t122, ptr %l56, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [1 x i64] }, ptr %t123, i32 0, i32 0
  store i64 1, ptr %t124
  %t125 = insertvalue { i64 } undef, i64 0, 0
  %t126 = getelementptr { i64, [1 x i64] }, ptr %t123, i32 0, i32 1
  store { i64 } %t125, ptr %t126
  %t127 = load { i64, [1 x i64] }, ptr %t123
  store { i64, [1 x i64] } %t127, ptr %l57
  %t128 = load ptr, ptr %lp6
  store ptr %t128, ptr %l58, !tbaa !29
  %t129 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t129, ptr %l59
  %t131 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l59)
  store %"compiler/lower:pl" %t131, ptr %l61
  br label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t132 = load ptr, ptr %lp6
  store ptr %t132, ptr %l67, !tbaa !29
  %t133 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t133, ptr %l68
  %t135 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l68)
  store %"compiler/lower:pl" %t135, ptr %l70
  br label %bb20
bb17:
  %t136 = load ptr, ptr %l58, !tbaa !29
  %t137 = load %"compiler/lower:pl", ptr %l61
  %t138 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v1, ptr %s2, ptr %t136, %"compiler/lower:pl" %t137)
  store %"compiler/mir:Lvalue" %t138, ptr %l62
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 0
  store i64 1, ptr %t140
  %t141 = load %"compiler/mir:Lvalue", ptr %l62
  %t142 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t141, 0
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t142, ptr %t143
  %t144 = load { i64, [4 x i64] }, ptr %t139
  %t145 = load ptr, ptr %l3, !tbaa !29
  %t147 = getelementptr %"compiler/generic:AnyTable", ptr %t145, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t149 = load %"compiler/source:Span", ptr %l7
  %t150 = load ptr, ptr %l56, !tbaa !29
  %t151 = load { i64, [1 x i64] }, ptr %l57
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erender(ptr %v1, ptr %t150, { i64, [1 x i64] } %t151, { i64, [4 x i64] } %t144, i32 %t148, %"compiler/source:Span" %t149)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb20:
  %t155 = load ptr, ptr %l3, !tbaa !29
  %t157 = getelementptr %"compiler/generic:AnyTable", ptr %t155, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t159
  %t160 = getelementptr { i64, [1 x i64] }, ptr %t159, i32 0, i32 0
  store i64 1, ptr %t160
  %t161 = insertvalue { i64 } undef, i64 0, 0
  %t162 = getelementptr { i64, [1 x i64] }, ptr %t159, i32 0, i32 1
  store { i64 } %t161, ptr %t162
  %t163 = load { i64, [1 x i64] }, ptr %t159
  %t164 = load %"compiler/source:Span", ptr %l7
  %t165 = load ptr, ptr %l67, !tbaa !29
  %t166 = load %"compiler/lower:pl", ptr %l70
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %v1, ptr %s3, ptr %t165, %"compiler/lower:pl" %t166, i32 %t158, { i64, [1 x i64] } %t163, %"compiler/source:Span" %t164)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t170 = load ptr, ptr %lp6
  store { i64, [4 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 0
  store i64 0, ptr %t172
  %t173 = load { i64, [4 x i64] }, ptr %t171
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v1, ptr %t170, { i64, [4 x i64] } %t173)
  br label %bb23
bb23:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %lp6
  %t178 = getelementptr %"compiler/lower:lowering", ptr %t177, i32 0, i32 11
  %t179 = load i1, ptr %t178, !tbaa !21
  %t182 = getelementptr %"compiler/lower:Lowerer", ptr %t176, i32 0, i32 7
  store i1 %t179, ptr %t182, !tbaa !21
  %t183 = load ptr, ptr %lp6
  %t184 = getelementptr %"compiler/lower:lowering", ptr %t183, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t184, i64 800, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aFn(ptr %t185, ptr %v1, ptr %l79)
  call void @llvm.memmove.p0.p0.i64(ptr %l81, ptr %t185, i64 800, i1 false)
  br label %bb24
bb24:
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %l81, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l79, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2edecideGen(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l32 = alloca i64
  %l39 = alloca i32
  %l46 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  br label %bb46
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l22, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb19
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:Lowerer", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TypeDecl", ptr %t43, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t50 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t41, i64 %t42, i32 %t46)
  store i64 %t50, ptr %l32
  br label %bb10
bb10:
  %t51 = load i64, ptr %l32, !tbaa !24
  store i64 %t51, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = icmp slt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb45
bb12:
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:Lowerer", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t65 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t59, i64 %t60, i64 %t61)
  store i32 %t65, ptr %l39
  br label %bb14
bb14:
  %t66 = load i32, ptr %l39, !tbaa !23
  %t67 = sext i32 %t66 to i64
  store i64 %t67, ptr %l9, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lower:Lowerer", ptr %t69, i32 0, i32 36
  %t72 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t71, i64 %t72, i1 true)
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:Lowerer", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 3
  store ptr %t80, ptr %l46, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2edeclName(ptr %v0, ptr %s3, ptr %t81, i64 %t82)
  store { i64, ptr } %t85, ptr %l49
  br label %bb16
bb16:
  %t86 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t88 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = add i64 %t87, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t86, i64 %t87)
  %t93 = getelementptr i8, ptr %t92, i64 %t87
  call void @olang_textcopy(ptr %t93, ptr %t89, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l51, !tbaa !27
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2egenValue(ptr %v0, ptr %s3, ptr %t103, i64 %t104)
  store { i64, ptr } %t107, ptr %l54
  br label %bb17
bb17:
  %t108 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load ptr, ptr %l46, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l51, !tbaa !27
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %s3, ptr %s3, ptr %t115, { i64, ptr } %t116, { i64, ptr } %t114, i1 true)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb19:
  %t118 = load ptr, ptr %l6, !tbaa !29
  store ptr %t118, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t119 = load ptr, ptr %l56, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb20, label %bb21
bb20:
  %t122 = load ptr, ptr %l56, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 11}
  %t125 = icmp eq i64 %t123, 7
  store i1 %t125, ptr %l57, !tbaa !21
  br label %bb21
bb21:
  %t126 = load i1, ptr %l57, !tbaa !21
  br i1 %t126, label %bb22, label %bb23
bb22:
  %t127 = load ptr, ptr %l6, !tbaa !29
  %t129 = getelementptr { i64, [8 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", ptr }, ptr %t129, i32 0, i32 1
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l10, !tbaa !29
  br label %bb24
bb23:
  br label %bb39
bb24:
  %t133 = load ptr, ptr %l10, !tbaa !29
  %t135 = getelementptr %"compiler/ast:TopIf", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = icmp eq ptr %t136, null
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb25, label %bb26
bb25:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l66, !tbaa !29
  %t143 = load i64, ptr %l1, !tbaa !24
  store i64 %t143, ptr %l67, !tbaa !24
  %t144 = load ptr, ptr %l10, !tbaa !29
  %t146 = getelementptr %"compiler/ast:TopIf", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = icmp eq ptr %t147, null
  br i1 %t149, label %bb27, label %bb28
bb26:
  br label %bb31
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1382960bfc70c50f_447f2e6bbefa4703)
  unreachable
bb28:
  br label %bb29
bb29:
  %t151 = load ptr, ptr %l10, !tbaa !29
  %t153 = getelementptr %"compiler/ast:TopIf", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t157 = getelementptr %"compiler/ast:TopBranch", ptr %t154, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  %t159 = load ptr, ptr %l66, !tbaa !29
  %t160 = load i64, ptr %l67, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2edecideGen(ptr %v0, ptr %v1, ptr %t159, i64 %t160, { i64, ptr } %t158)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t162 = load ptr, ptr %l10, !tbaa !29
  %t164 = getelementptr %"compiler/ast:TopIf", ptr %t162, i32 0, i32 3
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = icmp eq ptr %t165, null
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb32, label %bb33
bb32:
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l79, !tbaa !29
  %t172 = load i64, ptr %l1, !tbaa !24
  store i64 %t172, ptr %l80, !tbaa !24
  %t173 = load ptr, ptr %l10, !tbaa !29
  %t175 = getelementptr %"compiler/ast:TopIf", ptr %t173, i32 0, i32 3
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = icmp eq ptr %t176, null
  br i1 %t178, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_543552ccedba0a30_34b88e2195dff774)
  unreachable
bb35:
  br label %bb36
bb36:
  %t180 = load ptr, ptr %l10, !tbaa !29
  %t182 = getelementptr %"compiler/ast:TopIf", ptr %t180, i32 0, i32 3
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t186 = getelementptr %"compiler/ast:TopBranch", ptr %t183, i32 0, i32 1
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t188 = load ptr, ptr %l79, !tbaa !29
  %t189 = load i64, ptr %l80, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2edecideGen(ptr %v0, ptr %v1, ptr %t188, i64 %t189, { i64, ptr } %t187)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_c10f234bff0405bc_197db79cf1a1a0)
  unreachable
bb44:
  br label %bb45
bb45:
  %t191 = load i64, ptr %l4, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l4, !tbaa !24
  br label %bb1
bb46:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelper(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %lp4 = alloca ptr
  %lp5 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca %"compiler/typed:Body"
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l18 = alloca ptr
  %l24 = alloca %"compiler/mir:Fn"
  %l26 = alloca %"compiler/lower:lowering"
  %l32 = alloca %"compiler/mir:Fn"
  %l34 = alloca %"compiler/mir:Fn"
  %t15 = alloca %"compiler/typed:Body", align 8
  %t30 = alloca { i64, [2 x i64] }, align 8
  %t39 = alloca %"compiler/mir:Fn", align 8
  %t44 = alloca %"compiler/lower:lowering", align 8
  %t66 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t8 = load i32, ptr %l2, !tbaa !23
  %t12 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t6, i32 %t7, i32 %t8)
  store i32 %t12, ptr %l11
  br label %bb1
bb1:
  %t13 = load i32, ptr %l11, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2flower_2estandIn(ptr %t15, ptr %v1, i32 %t14)
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %t15, i64 408, i1 false)
  br label %bb2
bb2:
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 408, i64 8)
  store ptr %t17, ptr %lp4
  %t18 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l13, i64 408, i1 false)
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  %t20 = load ptr, ptr %lp4
  store ptr %t20, ptr %l15, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:Lowerer", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t29 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [2 x i64] }, ptr %t30, i32 0, i32 0
  store i64 3, ptr %t31
  %t33 = insertvalue { i32, i32 } undef, i32 %t28, 0
  %t35 = insertvalue { i32, i32 } %t33, i32 %t29, 1
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t30, i32 0, i32 1
  store { i32, i32 } %t35, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t30
  %t38 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %t39, ptr %v0, ptr %v1, ptr %t27, { i64, [2 x i64] } %t37, i32 %t38)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t39, i64 800, i1 false)
  br label %bb3
bb3:
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %l24, i64 800, i1 false)
  %t45 = load ptr, ptr %l14, !tbaa !29
  %t46 = load ptr, ptr %l15, !tbaa !29
  %t47 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2flower_3alowering_2ector(ptr %t44, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t45, ptr %t46, ptr %t47, ptr %t43)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t44, i64 3272, i1 false)
  br label %bb4
bb4:
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3272, i64 8)
  store ptr %t49, ptr %lp5
  %t50 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %l26, i64 3272, i1 false)
  %t51 = load ptr, ptr %lp5
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t53 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ehelper(ptr %v1, ptr %t51, i32 %t52, i32 %t53)
  br label %bb5
bb5:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %lp5
  %t59 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 11
  %t60 = load i1, ptr %t59, !tbaa !21
  %t63 = getelementptr %"compiler/lower:Lowerer", ptr %t57, i32 0, i32 7
  store i1 %t60, ptr %t63, !tbaa !21
  %t64 = load ptr, ptr %lp5
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

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2enoRefKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i64
  %l43 = alloca %"compiler/typed:LocalUses"
  %l47 = alloca i32
  %l51 = alloca i1
  %l52 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i1
  %l64 = alloca i1
  %l66 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i1
  %l75 = alloca i64
  %l79 = alloca i64
  %l82 = alloca i64
  %l102 = alloca i64
  %l109 = alloca i64
  %l113 = alloca i64
  %l116 = alloca i64
  %l136 = alloca i64
  %l143 = alloca i64
  %l147 = alloca i64
  %l150 = alloca i64
  %l170 = alloca i64
  %l177 = alloca i64
  %l181 = alloca i64
  %l184 = alloca i64
  %l204 = alloca i64
  %l207 = alloca i1
  %l208 = alloca ptr
  %l211 = alloca i64
  %l214 = alloca i64
  %l215 = alloca i1
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
  store i1 true, ptr %l32, !tbaa !21
  br label %bb4
bb2:
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l33, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 5
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l36
  br label %bb3
bb3:
  %t14 = load i64, ptr %l33, !tbaa !24
  %t15 = load i64, ptr %l36, !tbaa !24
  %t16 = icmp sge i64 %t14, %t15
  store i1 %t16, ptr %l32, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l32, !tbaa !21
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
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t27, i64 704, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l43, i64 704, i1 false)
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 5
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t32, i64 %t33)
  store i32 %t36, ptr %l47
  br label %bb9
bb9:
  %t37 = load i32, ptr %l47, !tbaa !23
  %t38 = sext i32 %t37 to i64
  store i64 %t38, ptr %l4, !tbaa !24
  %t40 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 6
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t40, i64 %t41)
  store i1 %t44, ptr %l51
  br label %bb10
bb10:
  %t45 = load i1, ptr %l51, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb14
bb12:
  %t46 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 2
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t46, i64 %t47)
  store i1 %t50, ptr %l55
  br label %bb13
bb13:
  %t51 = load i1, ptr %l55, !tbaa !21
  store i1 %t51, ptr %l52, !tbaa !21
  br label %bb14
bb14:
  %t52 = load i1, ptr %l52, !tbaa !21
  br i1 %t52, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb18
bb16:
  %t53 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 4
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l59
  br label %bb17
bb17:
  %t58 = load i1, ptr %l59, !tbaa !21
  store i1 %t58, ptr %l56, !tbaa !21
  br label %bb18
bb18:
  %t59 = load i1, ptr %l56, !tbaa !21
  br i1 %t59, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t61 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 7
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t61, i64 %t62)
  store i1 %t65, ptr %l63
  br label %bb22
bb22:
  %t66 = load i1, ptr %l63, !tbaa !21
  br i1 %t66, label %bb23, label %bb24
bb23:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v0, ptr %t67)
  store ptr %t69, ptr %l66
  br label %bb25
bb24:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb29
bb25:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v0, ptr %t70)
  store ptr %t72, ptr %l68
  br label %bb26
bb26:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %t75, !tbaa !23
  %t77 = load ptr, ptr %l68, !tbaa !29
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t77, i32 %t76)
  store i32 %t79, ptr %l71
  br label %bb27
bb27:
  %t80 = load ptr, ptr %l66, !tbaa !29
  %t81 = load i32, ptr %l71, !tbaa !23
  %t82 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t82, ptr %l72
  br label %bb28
bb28:
  %t83 = load i1, ptr %l72, !tbaa !21
  store i1 %t83, ptr %l64, !tbaa !21
  br label %bb29
bb29:
  %t84 = load i1, ptr %l64, !tbaa !21
  br i1 %t84, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  store i64 0, ptr %l5, !tbaa !24
  %t86 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 8
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t86)
  store i64 %t88, ptr %l75
  br label %bb33
bb33:
  %t89 = load i64, ptr %l75, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb34, label %bb35
bb34:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb39
bb36:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t101 = load i64, ptr %l5, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l82, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb38
bb38:
  %t116 = load i64, ptr %l82, !tbaa !24
  store i64 %t116, ptr %l79, !tbaa !24
  br label %bb39
bb39:
  %t117 = load i64, ptr %l79, !tbaa !24
  store i64 %t117, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb40
bb40:
  %t118 = load i64, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l8, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb41, label %bb42
bb41:
  br label %bb49
bb42:
  br label %bb43
bb43:
  %t126 = load i64, ptr %l5, !tbaa !24
  %t127 = load i64, ptr %l9, !tbaa !24
  %t128 = load i64, ptr %l7, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  %t136 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 8
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t136, i64 %t134)
  store i64 %t140, ptr %l102
  br label %bb44
bb44:
  %t141 = load i64, ptr %l4, !tbaa !24
  %t142 = load i64, ptr %l102, !tbaa !24
  %t144 = icmp eq i64 %t142, %t141
  br i1 %t144, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t147 = load i64, ptr %l9, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l9, !tbaa !24
  br label %bb40
bb49:
  store i64 0, ptr %l11, !tbaa !24
  %t151 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 12
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t151)
  store i64 %t153, ptr %l109
  br label %bb50
bb50:
  %t154 = load i64, ptr %l109, !tbaa !24
  store i64 %t154, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t155 = load i64, ptr %l12, !tbaa !24
  %t156 = load i64, ptr %l11, !tbaa !24
  %t159 = icmp sgt i64 %t155, %t156
  br i1 %t159, label %bb51, label %bb52
bb51:
  %t161 = load i64, ptr %l13, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb56
bb53:
  %t165 = load i64, ptr %l12, !tbaa !24
  %t166 = load i64, ptr %l11, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l13, !tbaa !24
  %t173 = add i64 %t169, %t170
  %t175 = sub i64 %t173, 1
  %t176 = load i64, ptr %l13, !tbaa !24
  %t179 = sdiv i64 %t175, %t176
  store i64 %t179, ptr %l116, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb55
bb55:
  %t181 = load i64, ptr %l116, !tbaa !24
  store i64 %t181, ptr %l113, !tbaa !24
  br label %bb56
bb56:
  %t182 = load i64, ptr %l113, !tbaa !24
  store i64 %t182, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb57
bb57:
  %t183 = load i64, ptr %l15, !tbaa !24
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb58, label %bb59
bb58:
  br label %bb66
bb59:
  br label %bb60
bb60:
  %t191 = load i64, ptr %l11, !tbaa !24
  %t192 = load i64, ptr %l15, !tbaa !24
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = mul i64 %t192, %t193
  %t199 = add i64 %t191, %t196
  %t201 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 12
  %t205 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t201, i64 %t199)
  store i64 %t205, ptr %l136
  br label %bb61
bb61:
  %t206 = load i64, ptr %l4, !tbaa !24
  %t207 = load i64, ptr %l136, !tbaa !24
  %t209 = icmp eq i64 %t207, %t206
  br i1 %t209, label %bb62, label %bb63
bb62:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t212 = load i64, ptr %l15, !tbaa !24
  %t214 = add i64 %t212, 1
  store i64 %t214, ptr %l15, !tbaa !24
  br label %bb57
bb66:
  store i64 0, ptr %l17, !tbaa !24
  %t216 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 10
  %t218 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t216)
  store i64 %t218, ptr %l143
  br label %bb67
bb67:
  %t219 = load i64, ptr %l143, !tbaa !24
  store i64 %t219, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t220 = load i64, ptr %l18, !tbaa !24
  %t221 = load i64, ptr %l17, !tbaa !24
  %t224 = icmp sgt i64 %t220, %t221
  br i1 %t224, label %bb68, label %bb69
bb68:
  %t226 = load i64, ptr %l19, !tbaa !24
  %t228 = icmp sgt i64 %t226, 0
  br i1 %t228, label %bb70, label %bb71
bb69:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb73
bb70:
  %t230 = load i64, ptr %l18, !tbaa !24
  %t231 = load i64, ptr %l17, !tbaa !24
  %t234 = sub i64 %t230, %t231
  %t235 = load i64, ptr %l19, !tbaa !24
  %t238 = add i64 %t234, %t235
  %t240 = sub i64 %t238, 1
  %t241 = load i64, ptr %l19, !tbaa !24
  %t244 = sdiv i64 %t240, %t241
  store i64 %t244, ptr %l150, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb72
bb72:
  %t246 = load i64, ptr %l150, !tbaa !24
  store i64 %t246, ptr %l147, !tbaa !24
  br label %bb73
bb73:
  %t247 = load i64, ptr %l147, !tbaa !24
  store i64 %t247, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb74
bb74:
  %t248 = load i64, ptr %l21, !tbaa !24
  %t249 = load i64, ptr %l20, !tbaa !24
  %t252 = icmp slt i64 %t248, %t249
  %t254 = xor i1 %t252, true
  br i1 %t254, label %bb75, label %bb76
bb75:
  br label %bb83
bb76:
  br label %bb77
bb77:
  %t256 = load i64, ptr %l17, !tbaa !24
  %t257 = load i64, ptr %l21, !tbaa !24
  %t258 = load i64, ptr %l19, !tbaa !24
  %t261 = mul i64 %t257, %t258
  %t264 = add i64 %t256, %t261
  %t266 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 10
  %t270 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t266, i64 %t264)
  store i64 %t270, ptr %l170
  br label %bb78
bb78:
  %t271 = load i64, ptr %l4, !tbaa !24
  %t272 = load i64, ptr %l170, !tbaa !24
  %t274 = icmp eq i64 %t272, %t271
  br i1 %t274, label %bb79, label %bb80
bb79:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t277 = load i64, ptr %l21, !tbaa !24
  %t279 = add i64 %t277, 1
  store i64 %t279, ptr %l21, !tbaa !24
  br label %bb74
bb83:
  store i64 0, ptr %l23, !tbaa !24
  %t281 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 15
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t281)
  store i64 %t283, ptr %l177
  br label %bb84
bb84:
  %t284 = load i64, ptr %l177, !tbaa !24
  store i64 %t284, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t285 = load i64, ptr %l24, !tbaa !24
  %t286 = load i64, ptr %l23, !tbaa !24
  %t289 = icmp sgt i64 %t285, %t286
  br i1 %t289, label %bb85, label %bb86
bb85:
  %t291 = load i64, ptr %l25, !tbaa !24
  %t293 = icmp sgt i64 %t291, 0
  br i1 %t293, label %bb87, label %bb88
bb86:
  store i64 0, ptr %l181, !tbaa !24
  br label %bb90
bb87:
  %t295 = load i64, ptr %l24, !tbaa !24
  %t296 = load i64, ptr %l23, !tbaa !24
  %t299 = sub i64 %t295, %t296
  %t300 = load i64, ptr %l25, !tbaa !24
  %t303 = add i64 %t299, %t300
  %t305 = sub i64 %t303, 1
  %t306 = load i64, ptr %l25, !tbaa !24
  %t309 = sdiv i64 %t305, %t306
  store i64 %t309, ptr %l184, !tbaa !24
  br label %bb89
bb88:
  store i64 0, ptr %l184, !tbaa !24
  br label %bb89
bb89:
  %t311 = load i64, ptr %l184, !tbaa !24
  store i64 %t311, ptr %l181, !tbaa !24
  br label %bb90
bb90:
  %t312 = load i64, ptr %l181, !tbaa !24
  store i64 %t312, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb91
bb91:
  %t313 = load i64, ptr %l27, !tbaa !24
  %t314 = load i64, ptr %l26, !tbaa !24
  %t317 = icmp slt i64 %t313, %t314
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb92, label %bb93
bb92:
  br label %bb106
bb93:
  br label %bb94
bb94:
  %t321 = load i64, ptr %l23, !tbaa !24
  %t322 = load i64, ptr %l27, !tbaa !24
  %t323 = load i64, ptr %l25, !tbaa !24
  %t326 = mul i64 %t322, %t323
  %t329 = add i64 %t321, %t326
  store i64 %t329, ptr %l28, !tbaa !24
  %t331 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 15
  %t332 = load i64, ptr %l28, !tbaa !24
  %t335 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t331, i64 %t332)
  store i64 %t335, ptr %l204
  br label %bb95
bb95:
  %t336 = load i64, ptr %l4, !tbaa !24
  %t337 = load i64, ptr %l204, !tbaa !24
  %t339 = icmp eq i64 %t337, %t336
  br i1 %t339, label %bb96, label %bb97
bb96:
  %t341 = load ptr, ptr %l0, !tbaa !29
  store ptr %t341, ptr %l208, !tbaa !29
  %t342 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 16
  %t343 = load i64, ptr %l28, !tbaa !24
  %t346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t342, i64 %t343)
  store i64 %t346, ptr %l211
  br label %bb98
bb97:
  store i1 false, ptr %l207, !tbaa !21
  br label %bb101
bb98:
  %t347 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 17
  %t348 = load i64, ptr %l28, !tbaa !24
  %t351 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t347, i64 %t348)
  store i64 %t351, ptr %l214
  br label %bb99
bb99:
  %t352 = load ptr, ptr %l208, !tbaa !29
  %t353 = load i64, ptr %l211, !tbaa !24
  %t354 = load i64, ptr %l214, !tbaa !24
  %t355 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %t352, i64 %t353, i64 %t354)
  store i1 %t355, ptr %l215
  br label %bb100
bb100:
  %t356 = load i1, ptr %l215, !tbaa !21
  %t357 = xor i1 %t356, true
  store i1 %t357, ptr %l207, !tbaa !21
  br label %bb101
bb101:
  %t359 = load i1, ptr %l207, !tbaa !21
  br i1 %t359, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb103:
  br label %bb104
bb104:
  br label %bb105
bb105:
  %t361 = load i64, ptr %l27, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l27, !tbaa !24
  br label %bb91
bb106:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [7 x i64] } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca { i64, ptr }
  %l35 = alloca i1
  %l38 = alloca i1
  %l43 = alloca i64
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i1
  %l56 = alloca i1
  %l61 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i1
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i64
  %l81 = alloca i64
  %l101 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l107 = alloca i1
  %l112 = alloca i1
  %l114 = alloca { i64, ptr }
  %l117 = alloca i1
  %l118 = alloca i1
  %l120 = alloca { i64, ptr }
  %l123 = alloca i64
  %l142 = alloca i1
  %l144 = alloca { i64, ptr }
  %l147 = alloca i1
  %l148 = alloca i1
  %l150 = alloca { i64, ptr }
  %l153 = alloca i64
  %l158 = alloca i1
  %l160 = alloca { i64, [4 x i64] }
  %l165 = alloca { i64, [4 x i64] }
  %l172 = alloca { i64, [4 x i64] }
  %l177 = alloca ptr
  %l178 = alloca { i64, [4 x i64] }
  %l180 = alloca ptr
  %l181 = alloca { i64, ptr }
  %l183 = alloca i32
  %l185 = alloca %"compiler/source:Span"
  %l186 = alloca { i64, [4 x i64] }
  %l191 = alloca i1
  %l193 = alloca { i64, ptr }
  %l196 = alloca i1
  %l197 = alloca i1
  %l198 = alloca ptr
  %l200 = alloca i32
  %l201 = alloca i1
  %l202 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca ptr
  %l207 = alloca i32
  %l208 = alloca i32
  %l209 = alloca i32
  %l210 = alloca ptr
  %l212 = alloca { i64, ptr }
  %l215 = alloca i32
  %l216 = alloca i32
  %l217 = alloca i1
  %l219 = alloca i1
  %l224 = alloca i1
  %l226 = alloca { i64, ptr }
  %l229 = alloca i1
  %l230 = alloca i1
  %l233 = alloca ptr
  %l234 = alloca { i64, [4 x i64] }
  %l236 = alloca i32
  %l238 = alloca %"compiler/source:Span"
  %l239 = alloca i32
  %l240 = alloca ptr
  %l241 = alloca { i64, ptr }
  %l243 = alloca i32
  %l245 = alloca %"compiler/mir:Lvalue"
  %l246 = alloca { i64, ptr }
  %l249 = alloca { i64, [15 x i64] }
  %l251 = alloca %"compiler/source:Span"
  %l252 = alloca { i64, [4 x i64] }
  %l255 = alloca ptr
  %l257 = alloca i32
  %l258 = alloca i1
  %l262 = alloca { i64, ptr }
  %l271 = alloca i64
  %l273 = alloca i64
  %l278 = alloca ptr
  %l286 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  %t290 = alloca { i64, [4 x i64] }, align 8
  %t461 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [7 x i64] } %a2, ptr %l2
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
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %l30, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l33
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l30, !tbaa !29
  %t13 = load i32, ptr %l33, !tbaa !23
  %t14 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store { i64, ptr } %t14, ptr %l34
  br label %bb2
bb2:
  %t15 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = load { i64, [7 x i64] }, ptr %l2
  %t18 = extractvalue { i64, [7 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t22 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t21, i32 0, i32 0
  %t23 = load { i64, [2 x i64] }, ptr %t22
  %t25 = extractvalue { i64, [2 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 3
  store i1 %t26, ptr %l38, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t28 = load i1, ptr %l38, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_e4b18f7db400c6ba_98b68b17576d276)
  unreachable
bb14:
  %t29 = load i1, ptr %l35, !tbaa !21
  store i1 %t29, ptr %l6, !tbaa !21
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l43, !tbaa !24
  %t36 = load i64, ptr %l43, !tbaa !24
  %t37 = icmp sge i64 %t36, 0
  br i1 %t37, label %bb15, label %bb16
bb15:
  %t39 = load i64, ptr %l43, !tbaa !24
  %t40 = icmp sle i64 %t39, 230584300921369395
  br i1 %t40, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1f81b40d868fb2d4_a735c8b3105ef948)
  unreachable
bb17:
  %t42 = load i64, ptr %l43, !tbaa !24
  %t43 = mul i64 %t42, 40
  %t44 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l7, !tbaa !27
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 26
  %t51 = load i1, ptr %t50, !tbaa !21
  store i1 %t51, ptr %l8, !tbaa !21
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 26
  store i1 false, ptr %t55, !tbaa !21
  %t56 = load ptr, ptr %l4, !tbaa !29
  store ptr %t56, ptr %l50, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l53
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1f81b40d868fb2d4_a735c8b3105ef948)
  unreachable
bb19:
  %t62 = load ptr, ptr %l50, !tbaa !29
  %t63 = load i32, ptr %l53, !tbaa !23
  %t64 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t62, i32 %t63)
  store i1 %t64, ptr %l54
  br label %bb20
bb20:
  %t65 = load i1, ptr %l54, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb21, label %bb22
bb21:
  %t68 = load i1, ptr %l8, !tbaa !21
  %t70 = xor i1 %t68, true
  store i1 %t70, ptr %l56, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb23
bb23:
  %t72 = load i1, ptr %l56, !tbaa !21
  store i1 %t72, ptr %l9, !tbaa !21
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Call", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  store ptr %t76, ptr %l10, !tbaa !29
  %t78 = load ptr, ptr %l10, !tbaa !29
  store ptr %t78, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t79 = load ptr, ptr %l62, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb24, label %bb25
bb24:
  %t82 = load ptr, ptr %l62, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 5}
  %t85 = icmp eq i64 %t83, 0
  store i1 %t85, ptr %l63, !tbaa !21
  br label %bb25
bb25:
  %t86 = load i1, ptr %l63, !tbaa !21
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t87 = load ptr, ptr %l10, !tbaa !29
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { i32 }, ptr %t89, i32 0, i32 0
  %t91 = load i32, ptr %t90
  store i32 %t91, ptr %l11, !tbaa !23
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t93 = load i32, ptr %l11, !tbaa !23
  %t95 = sext i32 %t93 to i64
  store i64 %t95, ptr %l61, !tbaa !24
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 -1, ptr %l61, !tbaa !24
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_61e032a6ae5cf8c0_b6153574db2992dc)
  unreachable
bb34:
  %t97 = load i64, ptr %l61, !tbaa !24
  store i64 %t97, ptr %l12, !tbaa !24
  %t98 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l70
  br label %bb35
bb35:
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %t100
  store ptr %t100, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Call", ptr %t102, i32 0, i32 1
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  store i64 %t107, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t109 = load i64, ptr %l15, !tbaa !24
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp sgt i64 %t109, %t110
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t115 = load i64, ptr %l16, !tbaa !24
  %t117 = icmp sgt i64 %t115, 0
  br i1 %t117, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb41
bb38:
  %t119 = load i64, ptr %l15, !tbaa !24
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = sub i64 %t119, %t120
  %t124 = load i64, ptr %l16, !tbaa !24
  %t127 = add i64 %t123, %t124
  %t129 = sub i64 %t127, 1
  %t130 = load i64, ptr %l16, !tbaa !24
  %t133 = sdiv i64 %t129, %t130
  store i64 %t133, ptr %l81, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb40
bb40:
  %t135 = load i64, ptr %l81, !tbaa !24
  store i64 %t135, ptr %l78, !tbaa !24
  br label %bb41
bb41:
  %t136 = load i64, ptr %l78, !tbaa !24
  store i64 %t136, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb42
bb42:
  %t137 = load i64, ptr %l18, !tbaa !24
  %t138 = load i64, ptr %l17, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb43, label %bb44
bb43:
  br label %bb135
bb44:
  br label %bb45
bb45:
  %t145 = load i64, ptr %l14, !tbaa !24
  %t146 = load i64, ptr %l18, !tbaa !24
  %t147 = load i64, ptr %l16, !tbaa !24
  %t150 = mul i64 %t146, %t147
  %t153 = add i64 %t145, %t150
  store i64 %t153, ptr %l19, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Call", ptr %t156, i32 0, i32 1
  %t159 = load { i64, ptr }, ptr %t158, !tbaa !27
  store { i64, ptr } %t159, ptr %l101, !tbaa !27
  %t160 = load i64, ptr %l19, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr ptr, ptr %t163, i64 %t160
  %t165 = load ptr, ptr %t164, !tbaa !39
  %t166 = load ptr, ptr %l13, !tbaa !29
  %t170 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2ehandedOver(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %t155, ptr %t165, ptr %t166)
  store ptr %t170, ptr %l105
  br label %bb46
bb46:
  %t171 = load ptr, ptr %l105, !tbaa !29
  store ptr %t171, ptr %l20, !tbaa !29
  %t172 = load i1, ptr %l9, !tbaa !21
  br i1 %t172, label %bb47, label %bb48
bb47:
  %t174 = load i64, ptr %l19, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t180 = icmp slt i64 %t174, %t177
  store i1 %t180, ptr %l107, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb49
bb49:
  %t182 = load i1, ptr %l107, !tbaa !21
  br i1 %t182, label %bb50, label %bb51
bb50:
  %t183 = load ptr, ptr %l4, !tbaa !29
  %t184 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t184, ptr %l114, !tbaa !27
  %t185 = load i64, ptr %l19, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i32, ptr %t188, i64 %t185
  %t190 = load i32, ptr %t189, !tbaa !33
  %t193 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t183, i32 %t190)
  store i1 %t193, ptr %l117
  br label %bb52
bb51:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb57
bb52:
  %t194 = load i1, ptr %l117, !tbaa !21
  br i1 %t194, label %bb53, label %bb54
bb53:
  %t195 = load ptr, ptr %l4, !tbaa !29
  %t196 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t196, ptr %l120, !tbaa !27
  %t197 = load i64, ptr %l19, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t197
  %t202 = load i32, ptr %t201, !tbaa !33
  %t205 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t195, i32 %t202)
  store i64 %t205, ptr %l123
  br label %bb55
bb54:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb56
bb55:
  %t206 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t207 = load i64, ptr %l123, !tbaa !24
  %t209 = and i64 %t207, %t206
  %t211 = icmp ne i64 %t209, 0
  store i1 %t211, ptr %l118, !tbaa !21
  br label %bb56
bb56:
  %t213 = load i1, ptr %l118, !tbaa !21
  %t214 = xor i1 %t213, true
  store i1 %t214, ptr %l112, !tbaa !21
  br label %bb57
bb57:
  %t216 = load i1, ptr %l112, !tbaa !21
  br i1 %t216, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s7
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l20, !tbaa !29
  %t219 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v1, ptr %s7, ptr %t217, ptr %t218, ptr %t219, ptr null)
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb61:
  %t224 = load i1, ptr %l8, !tbaa !21
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb62, label %bb63
bb62:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l20, !tbaa !29
  %t230 = load i64, ptr %l12, !tbaa !24
  %t231 = load i64, ptr %l19, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eargView(ptr %v0, ptr %v1, ptr %t228, ptr %t229, i64 %t230, i64 %t231)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  %t236 = load i64, ptr %l19, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t242 = icmp slt i64 %t236, %t239
  br i1 %t242, label %bb66, label %bb67
bb66:
  %t244 = load ptr, ptr %l4, !tbaa !29
  %t245 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t245, ptr %l144, !tbaa !27
  %t246 = load i64, ptr %l19, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i32, ptr %t249, i64 %t246
  %t251 = load i32, ptr %t250, !tbaa !33
  %t254 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t244, i32 %t251)
  store i1 %t254, ptr %l147
  br label %bb68
bb67:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb69
bb68:
  %t255 = load i1, ptr %l147, !tbaa !21
  store i1 %t255, ptr %l142, !tbaa !21
  br label %bb69
bb69:
  %t256 = load i1, ptr %l142, !tbaa !21
  br i1 %t256, label %bb70, label %bb71
bb70:
  %t257 = load ptr, ptr %l4, !tbaa !29
  %t258 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t258, ptr %l150, !tbaa !27
  %t259 = load i64, ptr %l19, !tbaa !24
  %t261 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = getelementptr i32, ptr %t262, i64 %t259
  %t264 = load i32, ptr %t263, !tbaa !33
  %t267 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t257, i32 %t264)
  store i64 %t267, ptr %l153
  br label %bb72
bb71:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb73
bb72:
  %t268 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t269 = load i64, ptr %l153, !tbaa !24
  %t271 = and i64 %t269, %t268
  %t273 = icmp eq i64 %t271, 0
  store i1 %t273, ptr %l148, !tbaa !21
  br label %bb73
bb73:
  %t275 = load i1, ptr %l148, !tbaa !21
  store i1 %t275, ptr %l21, !tbaa !21
  %t276 = load i1, ptr %l9, !tbaa !21
  br i1 %t276, label %bb74, label %bb75
bb74:
  %t278 = load i1, ptr %l21, !tbaa !21
  store i1 %t278, ptr %l158, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb76
bb76:
  %t280 = load i1, ptr %l158, !tbaa !21
  br i1 %t280, label %bb77, label %bb78
bb77:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l20, !tbaa !29
  %t283 = load i64, ptr %l12, !tbaa !24
  %t284 = load i64, ptr %l19, !tbaa !24
  %t289 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estackArg(ptr %v0, ptr %v1, ptr %t281, ptr %t282, i64 %t283, i64 %t284)
  store { i64, [4 x i64] } %t289, ptr %l165
  br label %bb79
bb78:
  store { i64, [4 x i64] } zeroinitializer, ptr %t290
  %t291 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 0
  store i64 0, ptr %t291
  %t292 = load { i64, [4 x i64] }, ptr %t290
  store { i64, [4 x i64] } %t292, ptr %l160
  br label %bb80
bb79:
  %t294 = load { i64, [4 x i64] }, ptr %l165
  store { i64, [4 x i64] } %t294, ptr %l160
  br label %bb80
bb80:
  %t295 = load { i64, [4 x i64] }, ptr %l160
  store { i64, [4 x i64] } %t295, ptr %l22
  %t296 = load { i64, [4 x i64] }, ptr %l22
  %t298 = extractvalue { i64, [4 x i64] } %t296, 0
  %t299 = icmp eq i64 %t298, 0
  br i1 %t299, label %bb81, label %bb82
bb81:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load ptr, ptr %l20, !tbaa !29
  %t306 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t301, ptr %t302)
  store { i64, [4 x i64] } %t306, ptr %l172
  br label %bb83
bb82:
  br label %bb84
bb83:
  %t307 = load { i64, [4 x i64] }, ptr %l172
  store { i64, [4 x i64] } %t307, ptr %l22
  br label %bb84
bb84:
  %t308 = load i64, ptr %l19, !tbaa !24
  %t309 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t314 = icmp slt i64 %t308, %t311
  br i1 %t314, label %bb85, label %bb86
bb85:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l177, !tbaa !29
  %t317 = load { i64, [4 x i64] }, ptr %l22
  store { i64, [4 x i64] } %t317, ptr %l178
  %t318 = load ptr, ptr %l20, !tbaa !29
  store ptr %t318, ptr %l180, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t320, ptr %l181, !tbaa !27
  %t321 = load i64, ptr %l19, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr i32, ptr %t324, i64 %t321
  %t326 = load i32, ptr %t325, !tbaa !33
  store i32 %t326, ptr %l183, !tbaa !23
  %t327 = load ptr, ptr %l20, !tbaa !29
  %t329 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t327)
  store %"compiler/source:Span" %t329, ptr %l185
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t330 = load ptr, ptr %l177, !tbaa !29
  %t331 = load { i64, [4 x i64] }, ptr %l178
  %t332 = load ptr, ptr %l180, !tbaa !29
  %t333 = load i32, ptr %l183, !tbaa !23
  %t334 = load %"compiler/source:Span", ptr %l185
  %t335 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efit(ptr %v0, ptr %v1, ptr %t330, { i64, [4 x i64] } %t331, ptr %t332, i32 %t333, %"compiler/source:Span" %t334)
  store { i64, [4 x i64] } %t335, ptr %l186
  br label %bb88
bb88:
  %t336 = load { i64, [4 x i64] }, ptr %l186
  store { i64, [4 x i64] } %t336, ptr %l22
  br label %bb89
bb89:
  %t337 = load i64, ptr %l19, !tbaa !24
  %t338 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t343 = icmp slt i64 %t337, %t340
  br i1 %t343, label %bb90, label %bb91
bb90:
  %t345 = load ptr, ptr %l4, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t346, ptr %l193, !tbaa !27
  %t347 = load i64, ptr %l19, !tbaa !24
  %t349 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr i32, ptr %t350, i64 %t347
  %t352 = load i32, ptr %t351, !tbaa !33
  %t355 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t345, i32 %t352)
  store i1 %t355, ptr %l196
  br label %bb92
bb91:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb93
bb92:
  %t356 = load i1, ptr %l196, !tbaa !21
  store i1 %t356, ptr %l191, !tbaa !21
  br label %bb93
bb93:
  %t357 = load i1, ptr %l191, !tbaa !21
  br i1 %t357, label %bb94, label %bb95
bb94:
  %t358 = load ptr, ptr %l4, !tbaa !29
  store ptr %t358, ptr %l198, !tbaa !29
  %t359 = load ptr, ptr %l20, !tbaa !29
  %t361 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t359)
  store i32 %t361, ptr %l200
  br label %bb96
bb95:
  store i1 true, ptr %l197, !tbaa !21
  br label %bb107
bb96:
  %t362 = load ptr, ptr %l198, !tbaa !29
  %t363 = load i32, ptr %l200, !tbaa !23
  %t364 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t362, i32 %t363)
  store i1 %t364, ptr %l201
  br label %bb97
bb97:
  %t365 = load i1, ptr %l201, !tbaa !21
  br i1 %t365, label %bb98, label %bb99
bb98:
  %t366 = load ptr, ptr %l4, !tbaa !29
  store ptr %t366, ptr %l203, !tbaa !29
  %t367 = load ptr, ptr %l4, !tbaa !29
  store ptr %t367, ptr %l204, !tbaa !29
  %t368 = load ptr, ptr %l4, !tbaa !29
  store ptr %t368, ptr %l205, !tbaa !29
  %t369 = load ptr, ptr %l20, !tbaa !29
  %t371 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t369)
  store i32 %t371, ptr %l207
  br label %bb100
bb99:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb106
bb100:
  %t372 = load ptr, ptr %l205, !tbaa !29
  %t373 = load i32, ptr %l207, !tbaa !23
  %t374 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t372, i32 %t373)
  store i32 %t374, ptr %l208
  br label %bb101
bb101:
  %t375 = load ptr, ptr %l204, !tbaa !29
  %t376 = load i32, ptr %l208, !tbaa !23
  %t377 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t375, i32 %t376)
  store i32 %t377, ptr %l209
  br label %bb102
bb102:
  %t378 = load ptr, ptr %l4, !tbaa !29
  store ptr %t378, ptr %l210, !tbaa !29
  %t379 = load ptr, ptr %l4, !tbaa !29
  %t380 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t380, ptr %l212, !tbaa !27
  %t381 = load i64, ptr %l19, !tbaa !24
  %t383 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr i32, ptr %t384, i64 %t381
  %t386 = load i32, ptr %t385, !tbaa !33
  %t389 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t379, i32 %t386)
  store i32 %t389, ptr %l215
  br label %bb103
bb103:
  %t390 = load ptr, ptr %l210, !tbaa !29
  %t391 = load i32, ptr %l215, !tbaa !23
  %t392 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t390, i32 %t391)
  store i32 %t392, ptr %l216
  br label %bb104
bb104:
  %t393 = load ptr, ptr %l203, !tbaa !29
  %t394 = load i32, ptr %l209, !tbaa !23
  %t395 = load i32, ptr %l216, !tbaa !23
  %t396 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t393, i32 %t394, i32 %t395)
  store i1 %t396, ptr %l217
  br label %bb105
bb105:
  %t397 = load i1, ptr %l217, !tbaa !21
  store i1 %t397, ptr %l202, !tbaa !21
  br label %bb106
bb106:
  %t398 = load i1, ptr %l202, !tbaa !21
  store i1 %t398, ptr %l197, !tbaa !21
  br label %bb107
bb107:
  %t399 = load i1, ptr %l197, !tbaa !21
  store i1 %t399, ptr %l23, !tbaa !21
  %t400 = load i1, ptr %l6, !tbaa !21
  br i1 %t400, label %bb108, label %bb109
bb108:
  %t402 = load i64, ptr %l19, !tbaa !24
  %t403 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t403, 0
  %t408 = icmp slt i64 %t402, %t405
  store i1 %t408, ptr %l219, !tbaa !21
  br label %bb110
bb109:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb110
bb110:
  %t410 = load i1, ptr %l219, !tbaa !21
  br i1 %t410, label %bb111, label %bb112
bb111:
  %t411 = load ptr, ptr %l4, !tbaa !29
  %t412 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t412, ptr %l226, !tbaa !27
  %t413 = load i64, ptr %l19, !tbaa !24
  %t415 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr i32, ptr %t416, i64 %t413
  %t418 = load i32, ptr %t417, !tbaa !33
  %t421 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t411, i32 %t418)
  store i1 %t421, ptr %l229
  br label %bb113
bb112:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb114
bb113:
  %t422 = load i1, ptr %l229, !tbaa !21
  store i1 %t422, ptr %l224, !tbaa !21
  br label %bb114
bb114:
  %t423 = load i1, ptr %l224, !tbaa !21
  br i1 %t423, label %bb115, label %bb116
bb115:
  %t424 = load i1, ptr %l23, !tbaa !21
  %t426 = xor i1 %t424, true
  store i1 %t426, ptr %l230, !tbaa !21
  br label %bb117
bb116:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb117
bb117:
  %t428 = load i1, ptr %l230, !tbaa !21
  br i1 %t428, label %bb118, label %bb119
bb118:
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l233, !tbaa !29
  %t430 = load { i64, [4 x i64] }, ptr %l22
  store { i64, [4 x i64] } %t430, ptr %l234
  %t431 = load ptr, ptr %l20, !tbaa !29
  %t433 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t431)
  store i32 %t433, ptr %l236
  br label %bb120
bb119:
  br label %bb126
bb120:
  %t434 = load ptr, ptr %l20, !tbaa !29
  %t436 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t434)
  store %"compiler/source:Span" %t436, ptr %l238
  br label %bb121
bb121:
  %t437 = load ptr, ptr %l233, !tbaa !29
  %t438 = load { i64, [4 x i64] }, ptr %l234
  %t439 = load i32, ptr %l236, !tbaa !23
  %t440 = load %"compiler/source:Span", ptr %l238
  %t441 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t437, { i64, [4 x i64] } %t438, i32 %t439, %"compiler/source:Span" %t440)
  store i32 %t441, ptr %l239
  br label %bb122
bb122:
  %t442 = load i32, ptr %l239, !tbaa !23
  %t443 = load ptr, ptr %l0, !tbaa !29
  store ptr %t443, ptr %l240, !tbaa !29
  %t444 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t444, ptr %l241, !tbaa !27
  %t445 = load i64, ptr %l19, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr i32, ptr %t448, i64 %t445
  %t450 = load i32, ptr %t449, !tbaa !33
  store i32 %t450, ptr %l243, !tbaa !23
  %t453 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t442)
  store %"compiler/mir:Lvalue" %t453, ptr %l245
  br label %bb123
bb123:
  %t454 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t454, ptr %l246, !tbaa !27
  %t455 = load i64, ptr %l19, !tbaa !24
  %t457 = getelementptr { i64, ptr }, ptr %l246, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !27
  %t459 = getelementptr i32, ptr %t458, i64 %t455
  %t460 = load i32, ptr %t459, !tbaa !33
  store { i64, [15 x i64] } zeroinitializer, ptr %t461
  %t462 = getelementptr { i64, [15 x i64] }, ptr %t461, i32 0, i32 0
  store i64 1, ptr %t462
  %t463 = load %"compiler/mir:Lvalue", ptr %l245
  %t464 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t463, 0
  %t466 = insertvalue { %"compiler/mir:Lvalue", i32 } %t464, i32 %t460, 1
  %t467 = getelementptr { i64, [15 x i64] }, ptr %t461, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t466, ptr %t467
  %t468 = load { i64, [15 x i64] }, ptr %t461
  store { i64, [15 x i64] } %t468, ptr %l249
  %t469 = load ptr, ptr %l20, !tbaa !29
  %t471 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t469)
  store %"compiler/source:Span" %t471, ptr %l251
  br label %bb124
bb124:
  %t472 = load ptr, ptr %l240, !tbaa !29
  %t473 = load i32, ptr %l243, !tbaa !23
  %t474 = load { i64, [15 x i64] }, ptr %l249
  %t475 = load %"compiler/source:Span", ptr %l251
  %t476 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t472, i32 %t473, { i64, [15 x i64] } %t474, %"compiler/source:Span" %t475)
  store { i64, [4 x i64] } %t476, ptr %l252
  br label %bb125
bb125:
  %t477 = load { i64, [4 x i64] }, ptr %l252
  store { i64, [4 x i64] } %t477, ptr %l22
  br label %bb126
bb126:
  %t478 = load i64, ptr %l19, !tbaa !24
  %t479 = load { i64, [4 x i64] }, ptr %l22
  %t482 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = getelementptr { i64, [4 x i64] }, ptr %t483, i64 %t478
  store { i64, [4 x i64] } %t479, ptr %t484
  %t485 = load ptr, ptr %l4, !tbaa !29
  store ptr %t485, ptr %l255, !tbaa !29
  %t486 = load ptr, ptr %l20, !tbaa !29
  %t488 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t486)
  store i32 %t488, ptr %l257
  br label %bb127
bb127:
  %t489 = load ptr, ptr %l255, !tbaa !29
  %t490 = load i32, ptr %l257, !tbaa !23
  %t491 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t489, i32 %t490)
  store i1 %t491, ptr %l258
  br label %bb128
bb128:
  %t492 = load i1, ptr %l258, !tbaa !21
  br i1 %t492, label %bb129, label %bb130
bb129:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = getelementptr %"compiler/lower:lowering", ptr %t493, i32 0, i32 35
  %t496 = load ptr, ptr %l1, !tbaa !29
  %t498 = getelementptr %"compiler/typed:Call", ptr %t496, i32 0, i32 1
  %t499 = load { i64, ptr }, ptr %t498, !tbaa !27
  store { i64, ptr } %t499, ptr %l262, !tbaa !27
  %t500 = load i64, ptr %l19, !tbaa !24
  %t502 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t503 = load ptr, ptr %t502, !tbaa !27
  %t504 = getelementptr ptr, ptr %t503, i64 %t500
  %t505 = load ptr, ptr %t504, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t495, ptr %t505)
  br label %bb131
bb130:
  br label %bb133
bb131:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/lower:lowering", ptr %t508, i32 0, i32 36
  %t511 = load { i64, [4 x i64] }, ptr %l22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t510, { i64, [4 x i64] } %t511)
  br label %bb132
bb132:
  br label %bb133
bb133:
  br label %bb134
bb134:
  %t514 = load i64, ptr %l18, !tbaa !24
  %t516 = add i64 %t514, 1
  store i64 %t516, ptr %l18, !tbaa !24
  br label %bb42
bb135:
  %t518 = load ptr, ptr %l13, !tbaa !29
  store ptr %t518, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb136
bb136:
  %t520 = load i64, ptr %l26, !tbaa !24
  store i64 %t520, ptr %l271, !tbaa !24
  %t521 = load ptr, ptr %l25, !tbaa !29
  %t523 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t521)
  store i64 %t523, ptr %l273
  br label %bb137
bb137:
  %t524 = load i64, ptr %l271, !tbaa !24
  %t525 = load i64, ptr %l273, !tbaa !24
  %t526 = icmp slt i64 %t524, %t525
  %t528 = xor i1 %t526, true
  br i1 %t528, label %bb138, label %bb139
bb138:
  br label %bb144
bb139:
  br label %bb140
bb140:
  %t530 = load ptr, ptr %l25, !tbaa !29
  %t531 = load i64, ptr %l26, !tbaa !24
  %t534 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t530, i64 %t531)
  store ptr %t534, ptr %l278
  br label %bb141
bb141:
  %t535 = load ptr, ptr %l278, !tbaa !29
  %t536 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v0, ptr %t536, ptr %t535)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t540 = load i64, ptr %l26, !tbaa !24
  %t542 = add i64 %t540, 1
  store i64 %t542, ptr %l26, !tbaa !24
  br label %bb136
bb144:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t546 = getelementptr %"compiler/lower:lowering", ptr %t544, i32 0, i32 3
  %t547 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t550 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t546, { i64, ptr } %t547)
  store %"compiler/mir:Range" %t550, ptr %l286
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s0)
  %t551 = load %"compiler/mir:Range", ptr %l286
  store %"compiler/mir:Range" %t551, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [1 x i64] }
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l12 = alloca i1
  %l19 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l29 = alloca %"compiler/mir:Lvalue"
  %l31 = alloca { i64, ptr }
  %l33 = alloca { i64, [4 x i64] }
  %l37 = alloca i32
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/mir:Lvalue"
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l52 = alloca %"compiler/mir:Lvalue"
  %l54 = alloca %"compiler/mir:Lvalue"
  %l59 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t39 = alloca { i64, [4 x i64] }, align 8
  %t77 = alloca { i64, [4 x i64] }, align 8
  %t80 = alloca { i64, [15 x i64] }, align 8
  %t92 = alloca { i64, [21 x i64] }, align 8
  %t115 = alloca { i64, [21 x i64] }, align 8
  %t134 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load { i64, [4 x i64] }, ptr %l1
  %t12 = load i32, ptr %l2, !tbaa !23
  %t13 = load { i64, [1 x i64] }, ptr %l4
  %t14 = load %"compiler/source:Span", ptr %l3
  %t22 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t10, { i64, [4 x i64] } %t11, i32 %t12, { i64, [1 x i64] } %t13, %"compiler/source:Span" %t14, i1 %a5)
  store { i64, [4 x i64] } %t22, ptr %l19
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, [4 x i64] }, ptr %l19
  store { i64, [4 x i64] } %t23, ptr %rv
  br label %ret
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load { i64, [4 x i64] }, ptr %l1
  %t26 = load i32, ptr %l2, !tbaa !23
  %t27 = load %"compiler/source:Span", ptr %l3
  %t32 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t24, { i64, [4 x i64] } %t25, i32 %t26, %"compiler/source:Span" %t27)
  store i32 %t32, ptr %l24
  br label %bb6
bb6:
  %t33 = load i32, ptr %l24, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l25, !tbaa !29
  store i32 22, ptr %l26
  %t35 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t35, ptr %l27, !tbaa !23
  %t36 = load i32, ptr %l6, !tbaa !23
  %t38 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t36)
  store %"compiler/mir:Lvalue" %t38, ptr %l29
  br label %bb7
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 0
  store i64 1, ptr %t40
  %t41 = load %"compiler/mir:Lvalue", ptr %l29
  %t42 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t41, 0
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t42, ptr %t43
  %t44 = load { i64, [4 x i64] }, ptr %t39
  %t45 = mul i64 1, 40
  %t46 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 1, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l31, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t51, i64 0
  store { i64, [4 x i64] } %t44, ptr %t52
  %t53 = load %"compiler/source:Span", ptr %l3
  %t54 = load ptr, ptr %l25, !tbaa !29
  %t55 = load i32, ptr %l26, !range !{i32 0, i32 52}
  %t56 = load i32, ptr %l27, !tbaa !23
  %t57 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t59 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t54, i32 %t55, i32 %t56, { i64, ptr } %t57, %"compiler/source:Span" %t53)
  store { i64, [4 x i64] } %t59, ptr %l33
  br label %bb8
bb8:
  %t60 = load { i64, [4 x i64] }, ptr %l33
  store { i64, [4 x i64] } %t60, ptr %l7
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l2, !tbaa !23
  %t63 = load %"compiler/source:Span", ptr %l3
  %t67 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t61, i32 %t62, %"compiler/source:Span" %t63)
  store i32 %t67, ptr %l37
  br label %bb9
bb9:
  %t68 = load i32, ptr %l37, !tbaa !23
  store i32 %t68, ptr %l8, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l38, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t70, ptr %l39
  %t71 = load i32, ptr %l8, !tbaa !23
  %t73 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t71)
  store %"compiler/mir:Lvalue" %t73, ptr %l41
  br label %bb10
bb10:
  %t74 = load { i64, [1 x i64] }, ptr %l4
  %t75 = load i32, ptr %l2, !tbaa !23
  %t76 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 0
  store i64 0, ptr %t78
  %t79 = load { i64, [4 x i64] }, ptr %t77
  store { i64, [15 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [15 x i64] }, ptr %t80, i32 0, i32 0
  store i64 8, ptr %t81
  %t83 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t74, 0
  %t85 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t83, i32 %t75, 1
  %t87 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t85, { i64, [4 x i64] } %t76, 2
  %t89 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t87, { i64, [4 x i64] } %t79, 3
  %t90 = getelementptr { i64, [15 x i64] }, ptr %t80, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t89, ptr %t90
  %t91 = load { i64, [15 x i64] }, ptr %t80
  store { i64, [21 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [21 x i64] }, ptr %t92, i32 0, i32 0
  store i64 0, ptr %t93
  %t94 = load %"compiler/source:Span", ptr %l39
  %t95 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t94, 0
  %t96 = load %"compiler/mir:Lvalue", ptr %l41
  %t97 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t95, %"compiler/mir:Lvalue" %t96, 1
  %t99 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t97, { i64, [15 x i64] } %t91, 2
  %t100 = getelementptr { i64, [21 x i64] }, ptr %t92, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t99, ptr %t100
  %t101 = load { i64, [21 x i64] }, ptr %t92
  %t103 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t101, ptr %t103
  %t104 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t104, ptr %t103)
  br label %bb11
bb11:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l49, !tbaa !29
  %t107 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t107, ptr %l50
  %t108 = load i32, ptr %l8, !tbaa !23
  %t110 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t108)
  store %"compiler/mir:Lvalue" %t110, ptr %l52
  br label %bb12
bb12:
  %t111 = load i32, ptr %l6, !tbaa !23
  %t113 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t111)
  store %"compiler/mir:Lvalue" %t113, ptr %l54
  br label %bb13
bb13:
  %t114 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [21 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 0
  store i64 9, ptr %t116
  %t117 = load %"compiler/source:Span", ptr %l50
  %t118 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t117, 0
  %t119 = load %"compiler/mir:Lvalue", ptr %l52
  %t120 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t118, %"compiler/mir:Lvalue" %t119, 1
  %t121 = load %"compiler/mir:Lvalue", ptr %l54
  %t122 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t120, %"compiler/mir:Lvalue" %t121, 2
  %t124 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t122, { i64, [4 x i64] } %t114, 3
  %t125 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t124, ptr %t125
  %t126 = load { i64, [21 x i64] }, ptr %t115
  %t128 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t126, ptr %t128
  %t129 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t129, ptr %t128)
  br label %bb14
bb14:
  %t131 = load i32, ptr %l8, !tbaa !23
  %t133 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t131)
  store %"compiler/mir:Lvalue" %t133, ptr %l59
  br label %bb15
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t134
  %t135 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 0
  store i64 1, ptr %t135
  %t136 = load %"compiler/mir:Lvalue", ptr %l59
  %t137 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t136, 0
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t137, ptr %t138
  %t139 = load { i64, [4 x i64] }, ptr %t134
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t139, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l8 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t28 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = icmp slt i32 %t8, 0
  store i1 %t10, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l5, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
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
  store i1 %t25, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l8, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  store { i64, [1 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [1 x i64] }, ptr %t28, i32 0, i32 0
  store i64 2, ptr %t29
  %t30 = load { i64, [1 x i64] }, ptr %t28
  store { i64, [1 x i64] } %t30, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lower:lowering", ptr %t33, i32 0, i32 30
  %t36 = getelementptr %"compiler/typed:Plan", ptr %t35, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l18, !tbaa !27
  %t38 = load i32, ptr %l1, !tbaa !23
  %t40 = sext i32 %t38 to i64
  %t42 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t43, i64 %t40
  %t45 = load { i64, [2 x i64] }, ptr %t44
  %t48 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t32, { i64, [2 x i64] } %t45)
  store { i64, [1 x i64] } %t48, ptr %l22
  br label %bb10
bb10:
  %t49 = load { i64, [1 x i64] }, ptr %l22
  store { i64, [1 x i64] } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/lower:tryCtx" %a1, { i64, ptr } %a2, i32 %a3, i32 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:tryCtx"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l49 = alloca i32
  %l52 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca i32
  %l68 = alloca ptr
  %l77 = alloca i1
  %l81 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca { i64, [4 x i64] }
  %l96 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l100 = alloca %"compiler/mir:Lvalue"
  %l107 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l138 = alloca i64
  %l141 = alloca { i64, ptr }
  %l145 = alloca { i64, [4 x i64] }
  %l148 = alloca ptr
  %l150 = alloca %"compiler/source:Span"
  %l152 = alloca %"compiler/mir:Lvalue"
  %l153 = alloca i32
  %l157 = alloca %"compiler/mir:Range"
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t176 = alloca { i64, [15 x i64] }, align 8
  %t182 = alloca { i64, [21 x i64] }, align 8
  %t299 = alloca { i64, [15 x i64] }, align 8
  %t308 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:tryCtx" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l6, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t5 = load i64, ptr %l7, !tbaa !24
  %t6 = load i64, ptr %l6, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l8, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l29, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l29, !tbaa !24
  store i64 %t31, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l26, !tbaa !24
  store i64 %t32, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb63
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l11, !tbaa !24
  %t51 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  %t52 = load i64, ptr %l11, !tbaa !24
  %t55 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v1, ptr %t51, i64 %t52)
  store i32 %t55, ptr %l49
  br label %bb11
bb11:
  %t56 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t57 = load i32, ptr %l49, !tbaa !23
  %t59 = icmp eq i32 %t57, %t56
  br i1 %t59, label %bb12, label %bb13
bb12:
  br label %bb62
bb13:
  br label %bb14
bb14:
  %t61 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t61, ptr %l52, !tbaa !27
  %t62 = load i64, ptr %l11, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  store ptr %t67, ptr %l12, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l55, !tbaa !29
  %t70 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  %t71 = load i64, ptr %l11, !tbaa !24
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v1, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l58
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l55, !tbaa !29
  %t76 = load i32, ptr %l58, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t75, i32 %t76)
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lower:lowering", ptr %t77, i32 0, i32 3
  %t80 = getelementptr %"compiler/mir:Fn", ptr %t79, i32 0, i32 22
  store ptr %t80, ptr %l60, !tbaa !29
  %t81 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v1, ptr %t81, i64 %t82)
  store i32 %t85, ptr %l63
  br label %bb17
bb17:
  %t86 = load ptr, ptr %l60, !tbaa !29
  %t87 = load i32, ptr %l63, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t86, i32 %t87)
  br label %bb18
bb18:
  %t88 = load ptr, ptr %l12, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Clause", ptr %t88, i32 0, i32 3
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l68, !tbaa !29
  %t98 = load ptr, ptr %l12, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Clause", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb21, label %bb22
bb20:
  br label %bb25
bb21:
  call void @__olang_check_failed(ptr @olang_loc_ed4966d7257d1cce_314b285230575e82)
  unreachable
bb22:
  br label %bb23
bb23:
  %t105 = load ptr, ptr %l12, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Clause", ptr %t105, i32 0, i32 3
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t109 = load ptr, ptr %l68, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v2, ptr %t109, ptr %t108)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/lower:lowering", ptr %t111, i32 0, i32 10
  %t114 = load i1, ptr %t113, !tbaa !21
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = load i32, ptr %l3, !tbaa !23
  %t119 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t122 = icmp ne i32 %t118, %t119
  store i1 %t122, ptr %l77, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb28
bb28:
  %t124 = load i1, ptr %l77, !tbaa !21
  br i1 %t124, label %bb29, label %bb30
bb29:
  %t125 = load ptr, ptr %l12, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Clause", ptr %t125, i32 0, i32 4
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t132 = icmp sgt i64 %t130, 0
  store i1 %t132, ptr %l81, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb31
bb31:
  %t134 = load i1, ptr %l81, !tbaa !21
  br i1 %t134, label %bb32, label %bb33
bb32:
  %t135 = load ptr, ptr %l12, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Clause", ptr %t135, i32 0, i32 4
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t142 = icmp eq i64 %t140, 1
  br i1 %t142, label %bb34, label %bb35
bb33:
  br label %bb60
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l12, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Clause", ptr %t145, i32 0, i32 4
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l92, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr ptr, ptr %t150, i64 0
  %t152 = load ptr, ptr %t151, !tbaa !39
  %t156 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v2, ptr %t144, ptr %t152)
  store { i64, [4 x i64] } %t156, ptr %l95
  br label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t157 = load ptr, ptr %l12, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Clause", ptr %t157, i32 0, i32 4
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l107, !tbaa !24
  %t163 = load i64, ptr %l107, !tbaa !24
  %t164 = icmp sge i64 %t163, 0
  br i1 %t164, label %bb39, label %bb40
bb36:
  %t166 = load { i64, [4 x i64] }, ptr %l95
  store { i64, [4 x i64] } %t166, ptr %l13
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l96, !tbaa !29
  %t168 = load ptr, ptr %l12, !tbaa !29
  %t170 = getelementptr %"compiler/typed:Clause", ptr %t168, i32 0, i32 0
  %t171 = load %"compiler/source:Span", ptr %t170
  store %"compiler/source:Span" %t171, ptr %l98
  %t172 = load i32, ptr %l3, !tbaa !23
  %t174 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t172)
  store %"compiler/mir:Lvalue" %t174, ptr %l100
  br label %bb37
bb37:
  %t175 = load { i64, [4 x i64] }, ptr %l13
  store { i64, [15 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [15 x i64] }, ptr %t176, i32 0, i32 0
  store i64 0, ptr %t177
  %t179 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t175, 0
  %t180 = getelementptr { i64, [15 x i64] }, ptr %t176, i32 0, i32 1
  store { { i64, [4 x i64] } } %t179, ptr %t180
  %t181 = load { i64, [15 x i64] }, ptr %t176
  store { i64, [21 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [21 x i64] }, ptr %t182, i32 0, i32 0
  store i64 0, ptr %t183
  %t184 = load %"compiler/source:Span", ptr %l98
  %t185 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t184, 0
  %t186 = load %"compiler/mir:Lvalue", ptr %l100
  %t187 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t185, %"compiler/mir:Lvalue" %t186, 1
  %t189 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t187, { i64, [15 x i64] } %t181, 2
  %t190 = getelementptr { i64, [21 x i64] }, ptr %t182, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t189, ptr %t190
  %t191 = load { i64, [21 x i64] }, ptr %t182
  %t193 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t191, ptr %t193
  %t194 = load ptr, ptr %l96, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s6, ptr %t194, ptr %t193)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb59
bb39:
  %t196 = load i64, ptr %l107, !tbaa !24
  %t197 = icmp sle i64 %t196, 230584300921369395
  br i1 %t197, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_4fc14cddf040b63b_d4edc892d8598fd7)
  unreachable
bb41:
  %t199 = load i64, ptr %l107, !tbaa !24
  %t200 = mul i64 %t199, 40
  %t201 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t200)
  %t202 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  store { i64, ptr } %t203, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t205 = load ptr, ptr %l12, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Clause", ptr %t205, i32 0, i32 4
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  store i64 %t210, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t212 = load i64, ptr %l16, !tbaa !24
  %t213 = load i64, ptr %l15, !tbaa !24
  %t216 = icmp sgt i64 %t212, %t213
  br i1 %t216, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_4fc14cddf040b63b_d4edc892d8598fd7)
  unreachable
bb43:
  %t218 = load i64, ptr %l17, !tbaa !24
  %t220 = icmp sgt i64 %t218, 0
  br i1 %t220, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb48
bb45:
  %t222 = load i64, ptr %l16, !tbaa !24
  %t223 = load i64, ptr %l15, !tbaa !24
  %t226 = sub i64 %t222, %t223
  %t227 = load i64, ptr %l17, !tbaa !24
  %t230 = add i64 %t226, %t227
  %t232 = sub i64 %t230, 1
  %t233 = load i64, ptr %l17, !tbaa !24
  %t236 = sdiv i64 %t232, %t233
  store i64 %t236, ptr %l120, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb47
bb47:
  %t238 = load i64, ptr %l120, !tbaa !24
  store i64 %t238, ptr %l117, !tbaa !24
  br label %bb48
bb48:
  %t239 = load i64, ptr %l117, !tbaa !24
  store i64 %t239, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb49
bb49:
  %t240 = load i64, ptr %l19, !tbaa !24
  %t241 = load i64, ptr %l18, !tbaa !24
  %t244 = icmp slt i64 %t240, %t241
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb50, label %bb51
bb50:
  br label %bb55
bb51:
  br label %bb52
bb52:
  %t248 = load i64, ptr %l15, !tbaa !24
  %t249 = load i64, ptr %l19, !tbaa !24
  %t250 = load i64, ptr %l17, !tbaa !24
  %t253 = mul i64 %t249, %t250
  %t256 = add i64 %t248, %t253
  store i64 %t256, ptr %l20, !tbaa !24
  %t258 = load i64, ptr %l20, !tbaa !24
  store i64 %t258, ptr %l138, !tbaa !24
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l12, !tbaa !29
  %t262 = getelementptr %"compiler/typed:Clause", ptr %t260, i32 0, i32 4
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l141, !tbaa !27
  %t264 = load i64, ptr %l20, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr ptr, ptr %t267, i64 %t264
  %t269 = load ptr, ptr %t268, !tbaa !39
  %t273 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v2, ptr %t259, ptr %t269)
  store { i64, [4 x i64] } %t273, ptr %l145
  br label %bb53
bb53:
  %t274 = load { i64, [4 x i64] }, ptr %l145
  %t275 = load i64, ptr %l138, !tbaa !24
  %t276 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr { i64, [4 x i64] }, ptr %t277, i64 %t275
  store { i64, [4 x i64] } %t274, ptr %t278
  br label %bb54
bb54:
  %t279 = load i64, ptr %l19, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l19, !tbaa !24
  br label %bb49
bb55:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l148, !tbaa !29
  %t284 = load ptr, ptr %l12, !tbaa !29
  %t286 = getelementptr %"compiler/typed:Clause", ptr %t284, i32 0, i32 0
  %t287 = load %"compiler/source:Span", ptr %t286
  store %"compiler/source:Span" %t287, ptr %l150
  %t288 = load i32, ptr %l3, !tbaa !23
  %t290 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t288)
  store %"compiler/mir:Lvalue" %t290, ptr %l152
  br label %bb56
bb56:
  store i32 %a4, ptr %l153, !tbaa !23
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/lower:lowering", ptr %t292, i32 0, i32 3
  %t295 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t298 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s7, ptr %t294, { i64, ptr } %t295)
  store %"compiler/mir:Range" %t298, ptr %l157
  br label %bb57
bb57:
  store { i64, [15 x i64] } zeroinitializer, ptr %t299
  %t300 = getelementptr { i64, [15 x i64] }, ptr %t299, i32 0, i32 0
  store i64 6, ptr %t300
  %t301 = load i32, ptr %l153, !tbaa !23
  %t302 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t301, 0
  %t303 = insertvalue { i32, i64, %"compiler/mir:Range" } %t302, i64 0, 1
  %t304 = load %"compiler/mir:Range", ptr %l157
  %t305 = insertvalue { i32, i64, %"compiler/mir:Range" } %t303, %"compiler/mir:Range" %t304, 2
  %t306 = getelementptr { i64, [15 x i64] }, ptr %t299, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t305, ptr %t306
  %t307 = load { i64, [15 x i64] }, ptr %t299
  store { i64, [21 x i64] } zeroinitializer, ptr %t308
  %t309 = getelementptr { i64, [21 x i64] }, ptr %t308, i32 0, i32 0
  store i64 0, ptr %t309
  %t310 = load %"compiler/source:Span", ptr %l150
  %t311 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t310, 0
  %t312 = load %"compiler/mir:Lvalue", ptr %l152
  %t313 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t311, %"compiler/mir:Lvalue" %t312, 1
  %t315 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t313, { i64, [15 x i64] } %t307, 2
  %t316 = getelementptr { i64, [21 x i64] }, ptr %t308, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t315, ptr %t316
  %t317 = load { i64, [21 x i64] }, ptr %t308
  %t319 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t317, ptr %t319
  %t320 = load ptr, ptr %l148, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t320, ptr %t319)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s7)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t322 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v3, ptr %t322, ptr %a5)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t326 = load i64, ptr %l10, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l10, !tbaa !24
  br label %bb7
bb63:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecollect(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [1 x i64] }
  %l12 = alloca i32
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, [1 x i64] }
  %l17 = alloca i32
  %l18 = alloca i32
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca i32
  %l22 = alloca %"compiler/mir:Lvalue"
  %l23 = alloca %"compiler/mir:Lvalue"
  %l28 = alloca i32
  %l32 = alloca i1
  %l35 = alloca i64
  %l42 = alloca i32
  %l43 = alloca ptr
  %l46 = alloca i32
  %l48 = alloca i32
  %l50 = alloca { i64, [4 x i64] }
  %l58 = alloca { i64, [4 x i64] }
  %l59 = alloca ptr
  %l60 = alloca { i64, [4 x i64] }
  %l66 = alloca i32
  %l68 = alloca { i64, [4 x i64] }
  %l73 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i32
  %l76 = alloca { i64, [4 x i64] }
  %l78 = alloca { i64, [4 x i64] }
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, [4 x i64] }
  %l94 = alloca i1
  %l102 = alloca { i64, [1 x i64] }
  %l106 = alloca i32
  %l109 = alloca i1
  %l110 = alloca i1
  %l113 = alloca ptr
  %l116 = alloca i1
  %l117 = alloca { i64, [4 x i64] }
  %l121 = alloca ptr
  %l122 = alloca %"compiler/source:Span"
  %l124 = alloca %"compiler/mir:Lvalue"
  %l135 = alloca i32
  %l136 = alloca ptr
  %l137 = alloca %"compiler/source:Span"
  %l139 = alloca %"compiler/mir:Lvalue"
  %l141 = alloca { i64, [4 x i64] }
  %l146 = alloca ptr
  %l147 = alloca i32
  %l148 = alloca i32
  %l149 = alloca i32
  %l150 = alloca i32
  %l151 = alloca { i64, [1 x i64] }
  %l152 = alloca ptr
  %l155 = alloca i32
  %l156 = alloca i1
  %l157 = alloca %"compiler/lower:collectCtx"
  %l161 = alloca %"compiler/lower:collectCtx"
  %l164 = alloca %"compiler/lower:collectCtx"
  %l165 = alloca i32
  %l170 = alloca %"compiler/mir:Lvalue"
  %l175 = alloca i32
  %l179 = alloca { i64, [1 x i64] }
  %l180 = alloca ptr
  %l181 = alloca %"compiler/source:Span"
  %l183 = alloca %"compiler/mir:Lvalue"
  %l194 = alloca i32
  %l195 = alloca ptr
  %l196 = alloca %"compiler/source:Span"
  %l198 = alloca %"compiler/mir:Lvalue"
  %l200 = alloca { i64, [4 x i64] }
  %l205 = alloca ptr
  %l211 = alloca %"compiler/lower:collectCtx"
  %l215 = alloca %"compiler/lower:collectCtx"
  %l218 = alloca %"compiler/lower:collectCtx"
  %l219 = alloca i32
  %l226 = alloca { i64, [1 x i64] }
  %l228 = alloca { i64, [1 x i64] }
  %l230 = alloca i1
  %l231 = alloca ptr
  %l234 = alloca i32
  %l236 = alloca i32
  %l242 = alloca { i64, ptr }
  %l243 = alloca %"compiler/mir:Lvalue"
  %l244 = alloca ptr
  %l245 = alloca i32
  %l246 = alloca %"compiler/mir:Lvalue"
  %l248 = alloca { i64, [4 x i64] }
  %l250 = alloca %"compiler/mir:Lvalue"
  %l255 = alloca { i64, [4 x i64] }
  %l256 = alloca ptr
  %l259 = alloca i32
  %l260 = alloca i1
  %l266 = alloca { i64, ptr }
  %l268 = alloca { i64, [4 x i64] }
  %l272 = alloca i32
  %l273 = alloca ptr
  %l274 = alloca %"compiler/source:Span"
  %l276 = alloca %"compiler/mir:Lvalue"
  %l280 = alloca { i64, [1 x i64] }
  %l281 = alloca i32
  %l283 = alloca %"compiler/mir:Lvalue"
  %l290 = alloca ptr
  %l292 = alloca { i64, [2 x i64] }
  %l293 = alloca ptr
  %l296 = alloca i32
  %l297 = alloca i1
  %l298 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l302 = alloca %"compiler/mir:Lvalue"
  %l308 = alloca { i64, ptr }
  %l309 = alloca %"compiler/mir:Lvalue"
  %l312 = alloca ptr
  %l315 = alloca i1
  %l316 = alloca ptr
  %l318 = alloca %"compiler/mir:Lvalue"
  %l327 = alloca %"compiler/mir:Lvalue"
  %l329 = alloca ptr
  %l330 = alloca %"compiler/source:Span"
  %l331 = alloca %"compiler/mir:Lvalue"
  %l332 = alloca %"compiler/mir:Lvalue"
  %l334 = alloca %"compiler/mir:Lvalue"
  %l339 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t31 = alloca { i64, [4 x i64] }, align 8
  %t152 = alloca { i64, [4 x i64] }, align 8
  %t209 = alloca { i64, [4 x i64] }, align 8
  %t217 = alloca { i64, [4 x i64] }, align 8
  %t231 = alloca { i64, [15 x i64] }, align 8
  %t243 = alloca { i64, [21 x i64] }, align 8
  %t273 = alloca { i64, [15 x i64] }, align 8
  %t279 = alloca { i64, [21 x i64] }, align 8
  %t341 = alloca { i64, [4 x i64] }, align 8
  %t348 = alloca { i64, [4 x i64] }, align 8
  %t380 = alloca { i64, [4 x i64] }, align 8
  %t383 = alloca { i64, [15 x i64] }, align 8
  %t395 = alloca { i64, [21 x i64] }, align 8
  %t425 = alloca { i64, [15 x i64] }, align 8
  %t431 = alloca { i64, [21 x i64] }, align 8
  %t483 = alloca { i64, [4 x i64] }, align 8
  %t516 = alloca { i64, [2 x i64] }, align 8
  %t522 = alloca { i64, [1 x i64] }, align 8
  %t547 = alloca { i64, [4 x i64] }, align 8
  %t554 = alloca { i64, [15 x i64] }, align 8
  %t629 = alloca { i64, [4 x i64] }, align 8
  %t635 = alloca { i64, [4 x i64] }, align 8
  %t638 = alloca { i64, [15 x i64] }, align 8
  %t650 = alloca { i64, [21 x i64] }, align 8
  %t668 = alloca { i64, [2 x i64] }, align 8
  %t684 = alloca { i64, [1 x i64] }, align 8
  %t709 = alloca { i64, [2 x i64] }, align 8
  %t715 = alloca { i64, [1 x i64] }, align 8
  %t748 = alloca { i64, [4 x i64] }, align 8
  %t782 = alloca { i64, [4 x i64] }, align 8
  %t796 = alloca { i64, [4 x i64] }, align 8
  %t802 = alloca { i64, [21 x i64] }, align 8
  %t821 = alloca { i64, [4 x i64] }, align 8
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
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l28
  br label %bb1
bb1:
  %t11 = load i32, ptr %l28, !tbaa !23
  store i32 %t11, ptr %l5, !tbaa !23
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb5
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l5, !tbaa !23
  %t22 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l35
  br label %bb4
bb4:
  %t23 = load i64, ptr %l35, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  store i1 %t24, ptr %l32, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l32, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t27, %"compiler/source:Span" %t28, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb8
bb7:
  br label %bb9
bb8:
  store { i64, [4 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 0
  store i64 0, ptr %t32
  %t33 = load { i64, [4 x i64] }, ptr %t31
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t33, ptr %rv
  br label %ret
bb9:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t36 = load i32, ptr %l5, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l42
  br label %bb10
bb10:
  %t40 = load i32, ptr %l42, !tbaa !23
  store i32 %t40, ptr %l6, !tbaa !23
  %t41 = load ptr, ptr %l4, !tbaa !29
  store ptr %t41, ptr %l43, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load i32, ptr %l6, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t42, i32 %t43, i32 0)
  store i32 %t46, ptr %l46
  br label %bb11
bb11:
  %t47 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t48 = load ptr, ptr %l43, !tbaa !29
  %t49 = load i32, ptr %l46, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t48, i32 %t49, i64 %t47)
  store i32 %t51, ptr %l48
  br label %bb12
bb12:
  %t52 = load i32, ptr %l48, !tbaa !23
  store i32 %t52, ptr %l7, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t53, i64 100)
  store { i64, [4 x i64] } %t55, ptr %l50
  br label %bb13
bb13:
  %t56 = load { i64, [4 x i64] }, ptr %l50
  store { i64, [4 x i64] } %t56, ptr %l8
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Collect", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Collect", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t73 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t66, ptr %t70)
  store { i64, [4 x i64] } %t73, ptr %l58
  br label %bb16
bb15:
  br label %bb28
bb16:
  %t74 = load { i64, [4 x i64] }, ptr %l58
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l59, !tbaa !29
  store { i64, [4 x i64] } %t74, ptr %l60
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Collect", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  br i1 %t82, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_162f2c5d450ff5be_60a02040feb29ca2)
  unreachable
bb18:
  br label %bb19
bb19:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Collect", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t87)
  store i32 %t89, ptr %l66
  br label %bb20
bb20:
  %t90 = load %"compiler/source:Span", ptr %l3
  %t91 = load ptr, ptr %l59, !tbaa !29
  %t92 = load { i64, [4 x i64] }, ptr %l60
  %t93 = load i32, ptr %l66, !tbaa !23
  %t95 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t91, { i64, [4 x i64] } %t92, i32 %t93, %"compiler/source:Span" %t90)
  store { i64, [4 x i64] } %t95, ptr %l68
  br label %bb21
bb21:
  %t96 = load { i64, [4 x i64] }, ptr %l68
  store { i64, [4 x i64] } %t96, ptr %l8
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Collect", ptr %t97, i32 0, i32 3
  %t100 = load i32, ptr %t99, !range !{i32 0, i32 3}
  %t102 = trunc i64 0 to i32
  %t103 = icmp eq i32 %t100, %t102
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l73, !tbaa !29
  store i32 18, ptr %l74
  %t108 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t108, ptr %l75, !tbaa !23
  %t109 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } %t109, ptr %l76
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t110, i64 0)
  store { i64, [4 x i64] } %t112, ptr %l78
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t113 = mul i64 2, 40
  %t114 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 2, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l79, !tbaa !27
  %t117 = load { i64, [4 x i64] }, ptr %l76
  %t118 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t119, i64 0
  store { i64, [4 x i64] } %t117, ptr %t120
  %t121 = load { i64, [4 x i64] }, ptr %l78
  %t122 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t123, i64 1
  store { i64, [4 x i64] } %t121, ptr %t124
  %t125 = load %"compiler/source:Span", ptr %l3
  %t126 = load ptr, ptr %l73, !tbaa !29
  %t127 = load i32, ptr %l74, !range !{i32 0, i32 52}
  %t128 = load i32, ptr %l75, !tbaa !23
  %t129 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t131 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s3, ptr %t126, i32 %t127, i32 %t128, { i64, ptr } %t129, %"compiler/source:Span" %t125)
  store { i64, [4 x i64] } %t131, ptr %l81
  br label %bb25
bb25:
  %t132 = load { i64, [4 x i64] }, ptr %l81
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Collect", ptr %t135, i32 0, i32 3
  %t138 = load i32, ptr %t137, !range !{i32 0, i32 3}
  %t139 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t140 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t133, { i64, [4 x i64] } %t132, i32 %t138, i32 9, i64 %t139, %"compiler/source:Span" %t140)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/lower:lowering", ptr %t147, i32 0, i32 10
  %t150 = load i1, ptr %t149, !tbaa !21
  br i1 %t150, label %bb29, label %bb30
bb29:
  store { i64, [4 x i64] } zeroinitializer, ptr %t152
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t152, i32 0, i32 0
  store i64 0, ptr %t153
  %t154 = load { i64, [4 x i64] }, ptr %t152
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t154, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Collect", ptr %t156, i32 0, i32 4
  %t159 = load i1, ptr %t158, !tbaa !21
  br i1 %t159, label %bb32, label %bb33
bb32:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Collect", ptr %t161, i32 0, i32 0
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = icmp eq ptr %t164, null
  %t168 = xor i1 %t166, true
  store i1 %t168, ptr %l94, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb34
bb34:
  %t170 = load i1, ptr %l94, !tbaa !21
  br i1 %t170, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s5
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Collect", ptr %t172, i32 0, i32 2
  %t175 = load i32, ptr %t174, !tbaa !23
  %t178 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t171, i32 %t175)
  store { i64, [1 x i64] } %t178, ptr %l102
  br label %bb37
bb36:
  br label %bb67
bb37:
  %t179 = load { i64, [1 x i64] }, ptr %l102
  store { i64, [1 x i64] } %t179, ptr %l11
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i32, ptr %l2, !tbaa !23
  %t182 = load %"compiler/source:Span", ptr %l3
  %t186 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t180, i32 %t181, %"compiler/source:Span" %t182)
  store i32 %t186, ptr %l106
  br label %bb38
bb38:
  %t187 = load i32, ptr %l106, !tbaa !23
  store i32 %t187, ptr %l12, !tbaa !23
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l6, !tbaa !23
  %t192 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %t188, i32 %t189)
  store i1 %t192, ptr %l109
  br label %bb39
bb39:
  %t193 = load i1, ptr %l109, !tbaa !21
  br i1 %t193, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l110, !tbaa !21
  br label %bb44
bb41:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/lower:lowering", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t199 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t197)
  store ptr %t199, ptr %l113
  br label %bb42
bb42:
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t201 = load i32, ptr %l6, !tbaa !23
  %t202 = load ptr, ptr %l113, !tbaa !29
  %t205 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t202, ptr %t200, i32 %t201)
  store i1 %t205, ptr %l116
  br label %bb43
bb43:
  %t206 = load i1, ptr %l116, !tbaa !21
  store i1 %t206, ptr %l110, !tbaa !21
  br label %bb44
bb44:
  %t207 = load i1, ptr %l110, !tbaa !21
  br i1 %t207, label %bb45, label %bb46
bb45:
  %t208 = load i32, ptr %l6, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t209
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 0
  store i64 2, ptr %t210
  %t212 = insertvalue { i32, i64 } undef, i32 %t208, 0
  %t213 = insertvalue { i32, i64 } %t212, i64 0, 1
  %t214 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  store { i32, i64 } %t213, ptr %t214
  %t215 = load { i64, [4 x i64] }, ptr %t209
  store { i64, [4 x i64] } %t215, ptr %l117
  br label %bb47
bb46:
  store { i64, [4 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 0
  store i64 0, ptr %t218
  %t219 = load { i64, [4 x i64] }, ptr %t217
  store { i64, [4 x i64] } %t219, ptr %l117
  br label %bb47
bb47:
  %t221 = load { i64, [4 x i64] }, ptr %l117
  store { i64, [4 x i64] } %t221, ptr %l13
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l121, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t223, ptr %l122
  %t224 = load i32, ptr %l12, !tbaa !23
  %t226 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t224)
  store %"compiler/mir:Lvalue" %t226, ptr %l124
  br label %bb48
bb48:
  %t227 = load { i64, [1 x i64] }, ptr %l11
  %t228 = load i32, ptr %l2, !tbaa !23
  %t229 = load { i64, [4 x i64] }, ptr %l8
  %t230 = load { i64, [4 x i64] }, ptr %l13
  store { i64, [15 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [15 x i64] }, ptr %t231, i32 0, i32 0
  store i64 8, ptr %t232
  %t234 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t227, 0
  %t236 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t234, i32 %t228, 1
  %t238 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t236, { i64, [4 x i64] } %t229, 2
  %t240 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t238, { i64, [4 x i64] } %t230, 3
  %t241 = getelementptr { i64, [15 x i64] }, ptr %t231, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t240, ptr %t241
  %t242 = load { i64, [15 x i64] }, ptr %t231
  store { i64, [21 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [21 x i64] }, ptr %t243, i32 0, i32 0
  store i64 0, ptr %t244
  %t245 = load %"compiler/source:Span", ptr %l122
  %t246 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t245, 0
  %t247 = load %"compiler/mir:Lvalue", ptr %l124
  %t248 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t246, %"compiler/mir:Lvalue" %t247, 1
  %t250 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t248, { i64, [15 x i64] } %t242, 2
  %t251 = getelementptr { i64, [21 x i64] }, ptr %t243, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t250, ptr %t251
  %t252 = load { i64, [21 x i64] }, ptr %t243
  %t254 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 176, i64 8)
  store { i64, [21 x i64] } %t252, ptr %t254
  %t255 = load ptr, ptr %l121, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s5, ptr %t255, ptr %t254)
  br label %bb49
bb49:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t259 = load %"compiler/source:Span", ptr %l3
  %t263 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t257, i32 %t258, %"compiler/source:Span" %t259)
  store i32 %t263, ptr %l135
  br label %bb50
bb50:
  %t264 = load i32, ptr %l135, !tbaa !23
  store i32 %t264, ptr %l14, !tbaa !23
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l136, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t266, ptr %l137
  %t267 = load i32, ptr %l14, !tbaa !23
  %t269 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t267)
  store %"compiler/mir:Lvalue" %t269, ptr %l139
  br label %bb51
bb51:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t270, i64 0)
  store { i64, [4 x i64] } %t272, ptr %l141
  br label %bb52
bb52:
  store { i64, [15 x i64] } zeroinitializer, ptr %t273
  %t274 = getelementptr { i64, [15 x i64] }, ptr %t273, i32 0, i32 0
  store i64 0, ptr %t274
  %t275 = load { i64, [4 x i64] }, ptr %l141
  %t276 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t275, 0
  %t277 = getelementptr { i64, [15 x i64] }, ptr %t273, i32 0, i32 1
  store { { i64, [4 x i64] } } %t276, ptr %t277
  %t278 = load { i64, [15 x i64] }, ptr %t273
  store { i64, [21 x i64] } zeroinitializer, ptr %t279
  %t280 = getelementptr { i64, [21 x i64] }, ptr %t279, i32 0, i32 0
  store i64 0, ptr %t280
  %t281 = load %"compiler/source:Span", ptr %l137
  %t282 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t281, 0
  %t283 = load %"compiler/mir:Lvalue", ptr %l139
  %t284 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t282, %"compiler/mir:Lvalue" %t283, 1
  %t286 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t284, { i64, [15 x i64] } %t278, 2
  %t287 = getelementptr { i64, [21 x i64] }, ptr %t279, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t286, ptr %t287
  %t288 = load { i64, [21 x i64] }, ptr %t279
  %t290 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 176, i64 8)
  store { i64, [21 x i64] } %t288, ptr %t290
  %t291 = load ptr, ptr %l136, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s5, ptr %t291, ptr %t290)
  br label %bb53
bb53:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/lower:lowering", ptr %t293, i32 0, i32 19
  store ptr %t295, ptr %l146, !tbaa !29
  %t296 = load i32, ptr %l12, !tbaa !23
  store i32 %t296, ptr %l147, !tbaa !23
  %t297 = load i32, ptr %l14, !tbaa !23
  store i32 %t297, ptr %l148, !tbaa !23
  %t298 = load i32, ptr %l6, !tbaa !23
  store i32 %t298, ptr %l149, !tbaa !23
  %t299 = load i32, ptr %l2, !tbaa !23
  store i32 %t299, ptr %l150, !tbaa !23
  %t300 = load { i64, [1 x i64] }, ptr %l11
  store { i64, [1 x i64] } %t300, ptr %l151
  %t301 = load ptr, ptr %l4, !tbaa !29
  store ptr %t301, ptr %l152, !tbaa !29
  %t302 = load ptr, ptr %l4, !tbaa !29
  %t303 = load i32, ptr %l2, !tbaa !23
  %t306 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t302, i32 %t303)
  store i32 %t306, ptr %l155
  br label %bb54
bb54:
  %t307 = load ptr, ptr %l152, !tbaa !29
  %t308 = load i32, ptr %l155, !tbaa !23
  %t309 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t307, i32 %t308)
  store i1 %t309, ptr %l156
  br label %bb55
bb55:
  %t310 = load i32, ptr %l147, !tbaa !23
  %t311 = load i32, ptr %l148, !tbaa !23
  %t312 = load i32, ptr %l149, !tbaa !23
  %t313 = load i32, ptr %l150, !tbaa !23
  %t314 = load { i64, [1 x i64] }, ptr %l151
  %t315 = load i1, ptr %l156, !tbaa !21
  %t316 = call %"compiler/lower:collectCtx" @compiler_2flower_3acollectCtx_2ector(ptr %s5, i32 %t310, i32 %t311, i32 %t312, i32 %t313, { i64, [1 x i64] } %t314, i1 true, i1 %t315)
  store %"compiler/lower:collectCtx" %t316, ptr %l157
  br label %bb56
bb56:
  %t317 = load ptr, ptr %l146, !tbaa !29
  %t318 = load %"compiler/lower:collectCtx", ptr %l157
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePus_Hd0ab7b9373bf150d973fdf7c33c4c364(ptr %v0, ptr %t317, %"compiler/lower:collectCtx" %t318)
  br label %bb57
bb57:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = getelementptr %"compiler/typed:Collect", ptr %t320, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %t319, ptr %t323)
  br label %bb58
bb58:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/lower:lowering", ptr %t326, i32 0, i32 19
  %t330 = call { i32, %"compiler/lower:collectCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePop_He1200c0c51a1e2029459d9d8221d233c(ptr %v0, ptr %t328)
  %t331 = extractvalue { i32, %"compiler/lower:collectCtx" } %t330, 1
  %t332 = extractvalue { i32, %"compiler/lower:collectCtx" } %t330, 0
  store i32 %t332, ptr %l165
  %t333 = icmp ne i32 %t332, 0
  br i1 %t333, label %bb60, label %ok.334, !prof !99
ok.334:
  store %"compiler/lower:collectCtx" %t331, ptr %l164
  br label %bb59
bb59:
  %t335 = load %"compiler/lower:collectCtx", ptr %l164
  store %"compiler/lower:collectCtx" %t335, ptr %l161
  br label %bb62
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/lower:lowering", ptr %t336, i32 0, i32 10
  %t339 = load i1, ptr %t338, !tbaa !21
  br i1 %t339, label %bb63, label %bb64
bb63:
  store { i64, [4 x i64] } zeroinitializer, ptr %t341
  %t342 = getelementptr { i64, [4 x i64] }, ptr %t341, i32 0, i32 0
  store i64 0, ptr %t342
  %t343 = load { i64, [4 x i64] }, ptr %t341
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t343, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t345 = load i32, ptr %l12, !tbaa !23
  %t347 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t345)
  store %"compiler/mir:Lvalue" %t347, ptr %l170
  br label %bb66
bb66:
  store { i64, [4 x i64] } zeroinitializer, ptr %t348
  %t349 = getelementptr { i64, [4 x i64] }, ptr %t348, i32 0, i32 0
  store i64 1, ptr %t349
  %t350 = load %"compiler/mir:Lvalue", ptr %l170
  %t351 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t350, 0
  %t352 = getelementptr { i64, [4 x i64] }, ptr %t348, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t351, ptr %t352
  %t353 = load { i64, [4 x i64] }, ptr %t348
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t353, ptr %rv
  br label %ret
bb67:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i32, ptr %l7, !tbaa !23
  %t357 = load %"compiler/source:Span", ptr %l3
  %t361 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t355, i32 %t356, %"compiler/source:Span" %t357)
  store i32 %t361, ptr %l175
  br label %bb68
bb68:
  %t362 = load i32, ptr %l175, !tbaa !23
  store i32 %t362, ptr %l15, !tbaa !23
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load ptr, ptr %l1, !tbaa !29
  %t366 = getelementptr %"compiler/typed:Collect", ptr %t364, i32 0, i32 2
  %t367 = load i32, ptr %t366, !tbaa !23
  %t370 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t363, i32 %t367)
  store { i64, [1 x i64] } %t370, ptr %l179
  br label %bb69
bb69:
  %t371 = load { i64, [1 x i64] }, ptr %l179
  store { i64, [1 x i64] } %t371, ptr %l16
  %t372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t372, ptr %l180, !tbaa !29
  %t373 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t373, ptr %l181
  %t374 = load i32, ptr %l15, !tbaa !23
  %t376 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t374)
  store %"compiler/mir:Lvalue" %t376, ptr %l183
  br label %bb70
bb70:
  %t377 = load { i64, [1 x i64] }, ptr %l16
  %t378 = load i32, ptr %l7, !tbaa !23
  %t379 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } zeroinitializer, ptr %t380
  %t381 = getelementptr { i64, [4 x i64] }, ptr %t380, i32 0, i32 0
  store i64 0, ptr %t381
  %t382 = load { i64, [4 x i64] }, ptr %t380
  store { i64, [15 x i64] } zeroinitializer, ptr %t383
  %t384 = getelementptr { i64, [15 x i64] }, ptr %t383, i32 0, i32 0
  store i64 8, ptr %t384
  %t386 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t377, 0
  %t388 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t386, i32 %t378, 1
  %t390 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t388, { i64, [4 x i64] } %t379, 2
  %t392 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t390, { i64, [4 x i64] } %t382, 3
  %t393 = getelementptr { i64, [15 x i64] }, ptr %t383, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t392, ptr %t393
  %t394 = load { i64, [15 x i64] }, ptr %t383
  store { i64, [21 x i64] } zeroinitializer, ptr %t395
  %t396 = getelementptr { i64, [21 x i64] }, ptr %t395, i32 0, i32 0
  store i64 0, ptr %t396
  %t397 = load %"compiler/source:Span", ptr %l181
  %t398 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t397, 0
  %t399 = load %"compiler/mir:Lvalue", ptr %l183
  %t400 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t398, %"compiler/mir:Lvalue" %t399, 1
  %t402 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t400, { i64, [15 x i64] } %t394, 2
  %t403 = getelementptr { i64, [21 x i64] }, ptr %t395, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t402, ptr %t403
  %t404 = load { i64, [21 x i64] }, ptr %t395
  %t406 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t404, ptr %t406
  %t407 = load ptr, ptr %l180, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t407, ptr %t406)
  br label %bb71
bb71:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t411 = load %"compiler/source:Span", ptr %l3
  %t415 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t409, i32 %t410, %"compiler/source:Span" %t411)
  store i32 %t415, ptr %l194
  br label %bb72
bb72:
  %t416 = load i32, ptr %l194, !tbaa !23
  store i32 %t416, ptr %l17, !tbaa !23
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l195, !tbaa !29
  %t418 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t418, ptr %l196
  %t419 = load i32, ptr %l17, !tbaa !23
  %t421 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t419)
  store %"compiler/mir:Lvalue" %t421, ptr %l198
  br label %bb73
bb73:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t422, i64 0)
  store { i64, [4 x i64] } %t424, ptr %l200
  br label %bb74
bb74:
  store { i64, [15 x i64] } zeroinitializer, ptr %t425
  %t426 = getelementptr { i64, [15 x i64] }, ptr %t425, i32 0, i32 0
  store i64 0, ptr %t426
  %t427 = load { i64, [4 x i64] }, ptr %l200
  %t428 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t427, 0
  %t429 = getelementptr { i64, [15 x i64] }, ptr %t425, i32 0, i32 1
  store { { i64, [4 x i64] } } %t428, ptr %t429
  %t430 = load { i64, [15 x i64] }, ptr %t425
  store { i64, [21 x i64] } zeroinitializer, ptr %t431
  %t432 = getelementptr { i64, [21 x i64] }, ptr %t431, i32 0, i32 0
  store i64 0, ptr %t432
  %t433 = load %"compiler/source:Span", ptr %l196
  %t434 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t433, 0
  %t435 = load %"compiler/mir:Lvalue", ptr %l198
  %t436 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t434, %"compiler/mir:Lvalue" %t435, 1
  %t438 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t436, { i64, [15 x i64] } %t430, 2
  %t439 = getelementptr { i64, [21 x i64] }, ptr %t431, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t438, ptr %t439
  %t440 = load { i64, [21 x i64] }, ptr %t431
  %t442 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t440, ptr %t442
  %t443 = load ptr, ptr %l195, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t443, ptr %t442)
  br label %bb75
bb75:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/lower:lowering", ptr %t445, i32 0, i32 19
  store ptr %t447, ptr %l205, !tbaa !29
  %t448 = load i32, ptr %l15, !tbaa !23
  %t449 = load i32, ptr %l17, !tbaa !23
  %t450 = load i32, ptr %l6, !tbaa !23
  %t451 = load i32, ptr %l7, !tbaa !23
  %t452 = load { i64, [1 x i64] }, ptr %l16
  %t458 = call %"compiler/lower:collectCtx" @compiler_2flower_3acollectCtx_2ector(ptr %s0, i32 %t448, i32 %t449, i32 %t450, i32 %t451, { i64, [1 x i64] } %t452, i1 false, i1 true)
  store %"compiler/lower:collectCtx" %t458, ptr %l211
  br label %bb76
bb76:
  %t459 = load ptr, ptr %l205, !tbaa !29
  %t460 = load %"compiler/lower:collectCtx", ptr %l211
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePus_Hd0ab7b9373bf150d973fdf7c33c4c364(ptr %v0, ptr %t459, %"compiler/lower:collectCtx" %t460)
  br label %bb77
bb77:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load ptr, ptr %l1, !tbaa !29
  %t464 = getelementptr %"compiler/typed:Collect", ptr %t462, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %t461, ptr %t465)
  br label %bb78
bb78:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/lower:lowering", ptr %t468, i32 0, i32 19
  %t472 = call { i32, %"compiler/lower:collectCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePop_He1200c0c51a1e2029459d9d8221d233c(ptr %v0, ptr %t470)
  %t473 = extractvalue { i32, %"compiler/lower:collectCtx" } %t472, 1
  %t474 = extractvalue { i32, %"compiler/lower:collectCtx" } %t472, 0
  store i32 %t474, ptr %l219
  %t475 = icmp ne i32 %t474, 0
  br i1 %t475, label %bb80, label %ok.476, !prof !99
ok.476:
  store %"compiler/lower:collectCtx" %t473, ptr %l218
  br label %bb79
bb79:
  %t477 = load %"compiler/lower:collectCtx", ptr %l218
  store %"compiler/lower:collectCtx" %t477, ptr %l215
  br label %bb82
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"compiler/lower:lowering", ptr %t478, i32 0, i32 10
  %t481 = load i1, ptr %t480, !tbaa !21
  br i1 %t481, label %bb83, label %bb84
bb83:
  store { i64, [4 x i64] } zeroinitializer, ptr %t483
  %t484 = getelementptr { i64, [4 x i64] }, ptr %t483, i32 0, i32 0
  store i64 0, ptr %t484
  %t485 = load { i64, [4 x i64] }, ptr %t483
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t485, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t490 = getelementptr %"compiler/typed:Collect", ptr %t488, i32 0, i32 2
  %t491 = load i32, ptr %t490, !tbaa !23
  %t494 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t487, i32 %t491)
  store { i64, [1 x i64] } %t494, ptr %l226
  br label %bb86
bb86:
  %t495 = load { i64, [1 x i64] }, ptr %l16
  store { i64, [1 x i64] } %t495, ptr %l228
  %t498 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aScopeRef(ptr %l226, ptr %l228)
  store i1 %t498, ptr %l230
  br label %bb87
bb87:
  %t499 = load i1, ptr %l230, !tbaa !21
  br i1 %t499, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s10
  %t500 = load ptr, ptr %l4, !tbaa !29
  store ptr %t500, ptr %l231, !tbaa !29
  %t501 = load ptr, ptr %l4, !tbaa !29
  %t502 = load i32, ptr %l6, !tbaa !23
  %t505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t501, i32 %t502, i32 0)
  store i32 %t505, ptr %l234
  br label %bb90
bb89:
  br label %bb102
bb90:
  %t506 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t507 = load ptr, ptr %l231, !tbaa !29
  %t508 = load i32, ptr %l234, !tbaa !23
  %t510 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t507, i32 %t508, i64 %t506)
  store i32 %t510, ptr %l236
  br label %bb91
bb91:
  %t511 = load i32, ptr %l236, !tbaa !23
  store i32 %t511, ptr %l18, !tbaa !23
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr %"compiler/lower:lowering", ptr %t512, i32 0, i32 3
  %t515 = load i32, ptr %l15, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t516
  %t517 = getelementptr { i64, [2 x i64] }, ptr %t516, i32 0, i32 0
  store i64 1, ptr %t517
  %t519 = insertvalue { i32 } undef, i32 %t515, 0
  %t520 = getelementptr { i64, [2 x i64] }, ptr %t516, i32 0, i32 1
  store { i32 } %t519, ptr %t520
  %t521 = load { i64, [2 x i64] }, ptr %t516
  store { i64, [1 x i64] } zeroinitializer, ptr %t522
  %t523 = getelementptr { i64, [1 x i64] }, ptr %t522, i32 0, i32 0
  store i64 3, ptr %t523
  %t524 = load { i64, [1 x i64] }, ptr %t522
  %t525 = mul i64 1, 16
  %t526 = call ptr @__olang_scope_alloc_zeroed(ptr %s10, i64 %t525)
  %t527 = insertvalue { i64, ptr } undef, i64 1, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t526, 1
  store { i64, ptr } %t528, ptr %l242, !tbaa !27
  %t530 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t531 = load ptr, ptr %t530, !tbaa !27
  %t532 = getelementptr { i64, [1 x i64] }, ptr %t531, i64 0
  store { i64, [1 x i64] } %t524, ptr %t532
  %t535 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t536 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s10, ptr %t514, { i64, [2 x i64] } %t521, { i64, ptr } %t535)
  store %"compiler/mir:Lvalue" %t536, ptr %l243
  br label %bb92
bb92:
  %t537 = load %"compiler/mir:Lvalue", ptr %l243
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l244, !tbaa !29
  %t539 = load i32, ptr %l18, !tbaa !23
  store i32 %t539, ptr %l245, !tbaa !23
  store %"compiler/mir:Lvalue" %t537, ptr %l246
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t541, i64 0)
  store { i64, [4 x i64] } %t543, ptr %l248
  br label %bb93
bb93:
  %t544 = load i32, ptr %l17, !tbaa !23
  %t546 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t544)
  store %"compiler/mir:Lvalue" %t546, ptr %l250
  br label %bb94
bb94:
  store { i64, [4 x i64] } zeroinitializer, ptr %t547
  %t548 = getelementptr { i64, [4 x i64] }, ptr %t547, i32 0, i32 0
  store i64 1, ptr %t548
  %t549 = load %"compiler/mir:Lvalue", ptr %l250
  %t550 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t549, 0
  %t551 = getelementptr { i64, [4 x i64] }, ptr %t547, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t550, ptr %t551
  %t552 = load { i64, [4 x i64] }, ptr %t547
  %t553 = load i32, ptr %l18, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t554
  %t555 = getelementptr { i64, [15 x i64] }, ptr %t554, i32 0, i32 0
  store i64 9, ptr %t555
  %t556 = load %"compiler/mir:Lvalue", ptr %l246
  %t557 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } undef, %"compiler/mir:Lvalue" %t556, 0
  %t558 = load { i64, [4 x i64] }, ptr %l248
  %t559 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t557, { i64, [4 x i64] } %t558, 1
  %t561 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t559, { i64, [4 x i64] } %t552, 2
  %t563 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t561, i32 %t553, 3
  %t564 = getelementptr { i64, [15 x i64] }, ptr %t554, i32 0, i32 1
  store { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t563, ptr %t564
  %t565 = load { i64, [15 x i64] }, ptr %t554
  %t566 = load %"compiler/source:Span", ptr %l3
  %t567 = load ptr, ptr %l244, !tbaa !29
  %t568 = load i32, ptr %l245, !tbaa !23
  %t571 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t567, i32 %t568, { i64, [15 x i64] } %t565, %"compiler/source:Span" %t566)
  store { i64, [4 x i64] } %t571, ptr %l255
  br label %bb95
bb95:
  %t572 = load { i64, [4 x i64] }, ptr %l255
  store { i64, [4 x i64] } %t572, ptr %l20
  %t573 = load ptr, ptr %l4, !tbaa !29
  store ptr %t573, ptr %l256, !tbaa !29
  %t574 = load ptr, ptr %l4, !tbaa !29
  %t575 = load i32, ptr %l2, !tbaa !23
  %t578 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t574, i32 %t575)
  store i32 %t578, ptr %l259
  br label %bb96
bb96:
  %t579 = load ptr, ptr %l256, !tbaa !29
  %t580 = load i32, ptr %l259, !tbaa !23
  %t581 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t579, i32 %t580)
  store i1 %t581, ptr %l260
  br label %bb97
bb97:
  %t582 = load i1, ptr %l260, !tbaa !21
  br i1 %t582, label %bb98, label %bb99
bb98:
  %t583 = load { i64, [4 x i64] }, ptr %l20
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t583, ptr %rv
  br label %ret
bb99:
  br label %bb100
bb100:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load i32, ptr %l2, !tbaa !23
  %t587 = load { i64, [4 x i64] }, ptr %l20
  %t588 = mul i64 1, 40
  %t589 = call ptr @__olang_scope_alloc_zeroed(ptr %s10, i64 %t588)
  %t590 = insertvalue { i64, ptr } undef, i64 1, 0
  %t591 = insertvalue { i64, ptr } %t590, ptr %t589, 1
  store { i64, ptr } %t591, ptr %l266, !tbaa !27
  %t593 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t594 = load ptr, ptr %t593, !tbaa !27
  %t595 = getelementptr { i64, [4 x i64] }, ptr %t594, i64 0
  store { i64, [4 x i64] } %t587, ptr %t595
  %t596 = load %"compiler/source:Span", ptr %l3
  %t600 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t602 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s10, ptr %t585, i32 20, i32 %t586, { i64, ptr } %t600, %"compiler/source:Span" %t596)
  store { i64, [4 x i64] } %t602, ptr %l268
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t603 = load { i64, [4 x i64] }, ptr %l268
  store { i64, [4 x i64] } %t603, ptr %rv
  br label %ret
bb102:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load i32, ptr %l2, !tbaa !23
  %t606 = load %"compiler/source:Span", ptr %l3
  %t610 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t604, i32 %t605, %"compiler/source:Span" %t606)
  store i32 %t610, ptr %l272
  br label %bb103
bb103:
  %t611 = load i32, ptr %l272, !tbaa !23
  store i32 %t611, ptr %l21, !tbaa !23
  %t612 = load ptr, ptr %l0, !tbaa !29
  store ptr %t612, ptr %l273, !tbaa !29
  %t613 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t613, ptr %l274
  %t614 = load i32, ptr %l21, !tbaa !23
  %t616 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t614)
  store %"compiler/mir:Lvalue" %t616, ptr %l276
  br label %bb104
bb104:
  %t617 = load ptr, ptr %l0, !tbaa !29
  %t618 = load ptr, ptr %l1, !tbaa !29
  %t620 = getelementptr %"compiler/typed:Collect", ptr %t618, i32 0, i32 2
  %t621 = load i32, ptr %t620, !tbaa !23
  %t624 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t617, i32 %t621)
  store { i64, [1 x i64] } %t624, ptr %l280
  br label %bb105
bb105:
  %t625 = load i32, ptr %l2, !tbaa !23
  store i32 %t625, ptr %l281, !tbaa !23
  %t626 = load i32, ptr %l17, !tbaa !23
  %t628 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t626)
  store %"compiler/mir:Lvalue" %t628, ptr %l283
  br label %bb106
bb106:
  store { i64, [4 x i64] } zeroinitializer, ptr %t629
  %t630 = getelementptr { i64, [4 x i64] }, ptr %t629, i32 0, i32 0
  store i64 1, ptr %t630
  %t631 = load %"compiler/mir:Lvalue", ptr %l283
  %t632 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t631, 0
  %t633 = getelementptr { i64, [4 x i64] }, ptr %t629, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t632, ptr %t633
  %t634 = load { i64, [4 x i64] }, ptr %t629
  store { i64, [4 x i64] } zeroinitializer, ptr %t635
  %t636 = getelementptr { i64, [4 x i64] }, ptr %t635, i32 0, i32 0
  store i64 0, ptr %t636
  %t637 = load { i64, [4 x i64] }, ptr %t635
  store { i64, [15 x i64] } zeroinitializer, ptr %t638
  %t639 = getelementptr { i64, [15 x i64] }, ptr %t638, i32 0, i32 0
  store i64 8, ptr %t639
  %t640 = load { i64, [1 x i64] }, ptr %l280
  %t641 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t640, 0
  %t642 = load i32, ptr %l281, !tbaa !23
  %t643 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t641, i32 %t642, 1
  %t645 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t643, { i64, [4 x i64] } %t634, 2
  %t647 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t645, { i64, [4 x i64] } %t637, 3
  %t648 = getelementptr { i64, [15 x i64] }, ptr %t638, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t647, ptr %t648
  %t649 = load { i64, [15 x i64] }, ptr %t638
  store { i64, [21 x i64] } zeroinitializer, ptr %t650
  %t651 = getelementptr { i64, [21 x i64] }, ptr %t650, i32 0, i32 0
  store i64 0, ptr %t651
  %t652 = load %"compiler/source:Span", ptr %l274
  %t653 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t652, 0
  %t654 = load %"compiler/mir:Lvalue", ptr %l276
  %t655 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t653, %"compiler/mir:Lvalue" %t654, 1
  %t657 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t655, { i64, [15 x i64] } %t649, 2
  %t658 = getelementptr { i64, [21 x i64] }, ptr %t650, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t657, ptr %t658
  %t659 = load { i64, [21 x i64] }, ptr %t650
  %t661 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t659, ptr %t661
  %t662 = load ptr, ptr %l273, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t662, ptr %t661)
  br label %bb107
bb107:
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/lower:lowering", ptr %t664, i32 0, i32 3
  store ptr %t666, ptr %l290, !tbaa !29
  %t667 = load i32, ptr %l21, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t668
  %t669 = getelementptr { i64, [2 x i64] }, ptr %t668, i32 0, i32 0
  store i64 1, ptr %t669
  %t671 = insertvalue { i32 } undef, i32 %t667, 0
  %t672 = getelementptr { i64, [2 x i64] }, ptr %t668, i32 0, i32 1
  store { i32 } %t671, ptr %t672
  %t673 = load { i64, [2 x i64] }, ptr %t668
  store { i64, [2 x i64] } %t673, ptr %l292
  %t674 = load ptr, ptr %l4, !tbaa !29
  store ptr %t674, ptr %l293, !tbaa !29
  %t675 = load ptr, ptr %l4, !tbaa !29
  %t676 = load i32, ptr %l2, !tbaa !23
  %t679 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t675, i32 %t676)
  store i32 %t679, ptr %l296
  br label %bb108
bb108:
  %t680 = load ptr, ptr %l293, !tbaa !29
  %t681 = load i32, ptr %l296, !tbaa !23
  %t682 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t680, i32 %t681)
  store i1 %t682, ptr %l297
  br label %bb109
bb109:
  %t683 = load i1, ptr %l297, !tbaa !21
  br i1 %t683, label %bb110, label %bb111
bb110:
  store { i64, [1 x i64] } zeroinitializer, ptr %t684
  %t685 = getelementptr { i64, [1 x i64] }, ptr %t684, i32 0, i32 0
  store i64 3, ptr %t685
  %t686 = load { i64, [1 x i64] }, ptr %t684
  %t687 = mul i64 1, 16
  %t688 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t687)
  %t689 = insertvalue { i64, ptr } undef, i64 1, 0
  %t690 = insertvalue { i64, ptr } %t689, ptr %t688, 1
  store { i64, ptr } %t690, ptr %l300, !tbaa !27
  %t692 = getelementptr { i64, ptr }, ptr %l300, i32 0, i32 1
  %t693 = load ptr, ptr %t692, !tbaa !27
  %t694 = getelementptr { i64, [1 x i64] }, ptr %t693, i64 0
  store { i64, [1 x i64] } %t686, ptr %t694
  %t695 = load { i64, ptr }, ptr %l300, !tbaa !27
  store { i64, ptr } %t695, ptr %l298, !tbaa !27
  br label %bb112
bb111:
  %t696 = mul i64 0, 16
  %t697 = insertvalue { i64, ptr } undef, i64 0, 0
  %t698 = insertvalue { i64, ptr } %t697, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t698, ptr %l298, !tbaa !27
  br label %bb112
bb112:
  %t700 = load ptr, ptr %l290, !tbaa !29
  %t701 = load { i64, [2 x i64] }, ptr %l292
  %t702 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t703 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t700, { i64, [2 x i64] } %t701, { i64, ptr } %t702)
  store %"compiler/mir:Lvalue" %t703, ptr %l302
  br label %bb113
bb113:
  %t704 = load %"compiler/mir:Lvalue", ptr %l302
  store %"compiler/mir:Lvalue" %t704, ptr %l22
  %t705 = load ptr, ptr %l0, !tbaa !29
  %t707 = getelementptr %"compiler/lower:lowering", ptr %t705, i32 0, i32 3
  %t708 = load i32, ptr %l15, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t709
  %t710 = getelementptr { i64, [2 x i64] }, ptr %t709, i32 0, i32 0
  store i64 1, ptr %t710
  %t712 = insertvalue { i32 } undef, i32 %t708, 0
  %t713 = getelementptr { i64, [2 x i64] }, ptr %t709, i32 0, i32 1
  store { i32 } %t712, ptr %t713
  %t714 = load { i64, [2 x i64] }, ptr %t709
  store { i64, [1 x i64] } zeroinitializer, ptr %t715
  %t716 = getelementptr { i64, [1 x i64] }, ptr %t715, i32 0, i32 0
  store i64 3, ptr %t716
  %t717 = load { i64, [1 x i64] }, ptr %t715
  %t718 = mul i64 1, 16
  %t719 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t718)
  %t720 = insertvalue { i64, ptr } undef, i64 1, 0
  %t721 = insertvalue { i64, ptr } %t720, ptr %t719, 1
  store { i64, ptr } %t721, ptr %l308, !tbaa !27
  %t723 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t724 = load ptr, ptr %t723, !tbaa !27
  %t725 = getelementptr { i64, [1 x i64] }, ptr %t724, i64 0
  store { i64, [1 x i64] } %t717, ptr %t725
  %t728 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t729 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t707, { i64, [2 x i64] } %t714, { i64, ptr } %t728)
  store %"compiler/mir:Lvalue" %t729, ptr %l309
  br label %bb114
bb114:
  %t730 = load %"compiler/mir:Lvalue", ptr %l309
  store %"compiler/mir:Lvalue" %t730, ptr %l23
  %t731 = load ptr, ptr %l0, !tbaa !29
  %t733 = getelementptr %"compiler/lower:lowering", ptr %t731, i32 0, i32 0
  %t734 = load ptr, ptr %t733, !tbaa !29
  %t736 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t734)
  store ptr %t736, ptr %l312
  br label %bb115
bb115:
  %t737 = load ptr, ptr %l4, !tbaa !29
  %t738 = load i32, ptr %l6, !tbaa !23
  %t739 = load ptr, ptr %l312, !tbaa !29
  %t742 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t739, ptr %t737, i32 %t738)
  store i1 %t742, ptr %l315
  br label %bb116
bb116:
  %t743 = load i1, ptr %l315, !tbaa !21
  br i1 %t743, label %bb117, label %bb118
bb117:
  %t744 = load ptr, ptr %l0, !tbaa !29
  store ptr %t744, ptr %l316, !tbaa !29
  %t745 = load i32, ptr %l17, !tbaa !23
  %t747 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t745)
  store %"compiler/mir:Lvalue" %t747, ptr %l318
  br label %bb119
bb118:
  br label %bb122
bb119:
  store { i64, [4 x i64] } zeroinitializer, ptr %t748
  %t749 = getelementptr { i64, [4 x i64] }, ptr %t748, i32 0, i32 0
  store i64 1, ptr %t749
  %t750 = load %"compiler/mir:Lvalue", ptr %l318
  %t751 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t750, 0
  %t752 = getelementptr { i64, [4 x i64] }, ptr %t748, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t751, ptr %t752
  %t753 = load { i64, [4 x i64] }, ptr %t748
  %t754 = load %"compiler/source:Span", ptr %l3
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t756 = load %"compiler/source:Span", ptr %l3
  %t757 = load %"compiler/mir:Lvalue", ptr %l22
  %t758 = load %"compiler/mir:Lvalue", ptr %l23
  %t759 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr null, i32 1
  %t760 = ptrtoint ptr %t759 to i64
  %t761 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t760, i64 8)
  %t762 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %t761, i32 0, i32 0
  store ptr %t755, ptr %t762, !tbaa !28
  %t764 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %t761, i32 0, i32 1
  store %"compiler/source:Span" %t756, ptr %t764, !tbaa !28
  %t766 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %t761, i32 0, i32 2
  store %"compiler/mir:Lvalue" %t757, ptr %t766, !tbaa !28
  %t768 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %t761, i32 0, i32 3
  store %"compiler/mir:Lvalue" %t758, ptr %t768, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t770 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %t761, i32 0, i32 4
  store ptr %v0, ptr %t770, !tbaa !28
  %t771 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_2, 0
  %t772 = insertvalue { ptr, ptr } %t771, ptr %t761, 1
  %t773 = load ptr, ptr %l316, !tbaa !29
  %t777 = extractvalue { ptr, ptr } %t772, 0
  %t778 = extractvalue { ptr, ptr } %t772, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v0, ptr %t773, { i64, [4 x i64] } %t753, %"compiler/source:Span" %t754, ptr %t777, ptr %t778)
  br label %bb120
bb120:
  %t779 = load i32, ptr %l21, !tbaa !23
  %t781 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t779)
  store %"compiler/mir:Lvalue" %t781, ptr %l327
  br label %bb121
bb121:
  store { i64, [4 x i64] } zeroinitializer, ptr %t782
  %t783 = getelementptr { i64, [4 x i64] }, ptr %t782, i32 0, i32 0
  store i64 1, ptr %t783
  %t784 = load %"compiler/mir:Lvalue", ptr %l327
  %t785 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t784, 0
  %t786 = getelementptr { i64, [4 x i64] }, ptr %t782, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t785, ptr %t786
  %t787 = load { i64, [4 x i64] }, ptr %t782
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t787, ptr %rv
  br label %ret
bb122:
  %t789 = load ptr, ptr %l0, !tbaa !29
  store ptr %t789, ptr %l329, !tbaa !29
  %t790 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t790, ptr %l330
  %t791 = load %"compiler/mir:Lvalue", ptr %l22
  store %"compiler/mir:Lvalue" %t791, ptr %l331
  %t792 = load %"compiler/mir:Lvalue", ptr %l23
  store %"compiler/mir:Lvalue" %t792, ptr %l332
  %t793 = load i32, ptr %l17, !tbaa !23
  %t795 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t793)
  store %"compiler/mir:Lvalue" %t795, ptr %l334
  br label %bb123
bb123:
  store { i64, [4 x i64] } zeroinitializer, ptr %t796
  %t797 = getelementptr { i64, [4 x i64] }, ptr %t796, i32 0, i32 0
  store i64 1, ptr %t797
  %t798 = load %"compiler/mir:Lvalue", ptr %l334
  %t799 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t798, 0
  %t800 = getelementptr { i64, [4 x i64] }, ptr %t796, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t799, ptr %t800
  %t801 = load { i64, [4 x i64] }, ptr %t796
  store { i64, [21 x i64] } zeroinitializer, ptr %t802
  %t803 = getelementptr { i64, [21 x i64] }, ptr %t802, i32 0, i32 0
  store i64 9, ptr %t803
  %t804 = load %"compiler/source:Span", ptr %l330
  %t805 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t804, 0
  %t806 = load %"compiler/mir:Lvalue", ptr %l331
  %t807 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t805, %"compiler/mir:Lvalue" %t806, 1
  %t808 = load %"compiler/mir:Lvalue", ptr %l332
  %t809 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t807, %"compiler/mir:Lvalue" %t808, 2
  %t811 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t809, { i64, [4 x i64] } %t801, 3
  %t812 = getelementptr { i64, [21 x i64] }, ptr %t802, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t811, ptr %t812
  %t813 = load { i64, [21 x i64] }, ptr %t802
  %t815 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t813, ptr %t815
  %t816 = load ptr, ptr %l329, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t816, ptr %t815)
  br label %bb124
bb124:
  %t818 = load i32, ptr %l21, !tbaa !23
  %t820 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t818)
  store %"compiler/mir:Lvalue" %t820, ptr %l339
  br label %bb125
bb125:
  store { i64, [4 x i64] } zeroinitializer, ptr %t821
  %t822 = getelementptr { i64, [4 x i64] }, ptr %t821, i32 0, i32 0
  store i64 1, ptr %t822
  %t823 = load %"compiler/mir:Lvalue", ptr %l339
  %t824 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t823, 0
  %t825 = getelementptr { i64, [4 x i64] }, ptr %t821, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t824, ptr %t825
  %t826 = load { i64, [4 x i64] }, ptr %t821
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t826, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyHome(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/lower:level"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"compiler/lower:level"
  %l26 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t38 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 3
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load { i64, [1 x i64] }, ptr %l1
  store { i64, [1 x i64] } %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 12
  store ptr %t12, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  store i64 %t14, ptr %l11, !tbaa !24
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l13
  br label %bb5
bb5:
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t24, i64 %t25)
  store %"compiler/lower:level" %t28, ptr %l18
  br label %bb9
bb9:
  %t29 = load %"compiler/lower:level", ptr %l18
  store %"compiler/lower:level" %t29, ptr %l4
  %t30 = getelementptr %"compiler/lower:level", ptr %l4, i32 0, i32 2
  %t31 = load i32, ptr %t30, !range !{i32 0, i32 7}
  %t33 = trunc i64 0 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = getelementptr %"compiler/lower:level", ptr %l4, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [1 x i64] }, ptr %t38, i32 0, i32 0
  store i64 0, ptr %t39
  %t41 = insertvalue { i32 } undef, i32 %t37, 0
  %t42 = getelementptr { i64, [1 x i64] }, ptr %t38, i32 0, i32 1
  store { i32 } %t41, ptr %t42
  %t43 = load { i64, [1 x i64] }, ptr %t38
  store { i64, [1 x i64] } %t43, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %t49)
  store { i64, [1 x i64] } %t51, ptr %l26
  br label %bb15
bb15:
  %t52 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrWord(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i32 %a6, %"compiler/source:Span" %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l4 = alloca i64
  %l7 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l18 = alloca %"compiler/lower:pl"
  %l21 = alloca %"compiler/lower:pl"
  %s1 = alloca %olang.scope
  %t16 = alloca { i64, [2 x i64] }, align 8
  %t25 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  store i64 %a4, ptr %l4
  store %"compiler/source:Span" %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [1 x i64] }, ptr %l1
  %t4 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %t1, { i64, [1 x i64] } %t2, { i64, ptr } %a3, %"compiler/source:Span" %t4)
  br label %bb1
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l14, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l15, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [2 x i64] }, ptr %t16, i32 0, i32 0
  store i64 1, ptr %t17
  %t19 = insertvalue { i32 } undef, i32 %a2, 0
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t16, i32 0, i32 1
  store { i32 } %t19, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t16
  %t23 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s1, { i64, [2 x i64] } %t21)
  store %"compiler/lower:pl" %t23, ptr %l18
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t24 = load i64, ptr %l4, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [1 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t28 = insertvalue { i64 } undef, i64 %t24, 0
  %t29 = getelementptr { i64, [1 x i64] }, ptr %t25, i32 0, i32 1
  store { i64 } %t28, ptr %t29
  %t30 = load { i64, [1 x i64] }, ptr %t25
  %t31 = load ptr, ptr %l15, !tbaa !29
  %t32 = load %"compiler/lower:pl", ptr %l18
  %t34 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s1, ptr %s1, ptr %t31, %"compiler/lower:pl" %t32, { i64, [1 x i64] } %t30)
  store %"compiler/lower:pl" %t34, ptr %l21
  br label %bb5
bb5:
  %t37 = load { i64, [1 x i64] }, ptr %l1
  %t38 = load %"compiler/source:Span", ptr %l7
  %t39 = load ptr, ptr %l14, !tbaa !29
  %t40 = load %"compiler/lower:pl", ptr %l21
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %s1, ptr %t39, %"compiler/lower:pl" %t40, i64 %a5, i32 %a6, { i64, [1 x i64] } %t37, %"compiler/source:Span" %t38)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eevalStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, [4 x i64] }
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i1
  %l21 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca ptr
  %l34 = alloca i1
  %l46 = alloca i64
  %l59 = alloca i64
  %l65 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i1
  %l80 = alloca ptr
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca { i64, [4 x i64] }
  %l93 = alloca ptr
  %l94 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l101 = alloca %"compiler/lower:relPath"
  %l103 = alloca %"compiler/lower:relPath"
  %l105 = alloca i64
  %l112 = alloca { i64, [4 x i64] }
  %l114 = alloca i64
  %l116 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca { i64, [4 x i64] }
  %l122 = alloca i32
  %l124 = alloca i32
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l11, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2flower__2ecompiler__2flower__3alowering__2eevalStmt_2elocal_2e3
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l11
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l13
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler__2flower__2ecompiler__2flower__3alowering__2eevalStmt_2elocal_2e3
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l11
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l3
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 4
  store i1 %t28, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l16, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb18
bb10:
  %t36 = ptrtoint ptr %s0 to i64
  store i64 %t36, ptr %l21, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2ecompiler__2flower__2ecompiler__2flower__3alowering__2eevalStmt_2elocal_2e3
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = call ptr @__olang_region_make(ptr %s0)
  %t40 = ptrtoint ptr %t39 to i64
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load i64, ptr %l21
  %t44 = inttoptr i64 %t43 to ptr
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ereleases(ptr %v0, ptr %v1, ptr %t44, ptr %t41, ptr %t42, i1 false)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l25
  br label %bb13
bb13:
  %t48 = load i1, ptr @olang_2esole_2ecompiler__2flower__2ecompiler__2flower__3alowering__2eevalStmt_2elocal_2e3
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t50 = load i64, ptr %l21
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t53 = load { i64, ptr }, ptr %t52
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = call ptr @__olang_region_or(ptr %t54, ptr null)
  %t56 = icmp ne ptr %t55, null
  %t57 = select i1 %t56, ptr %t55, ptr null
  %t58 = icmp eq ptr %t57, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t58)
  br label %bb15
bb15:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l27
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l3
  %t61 = load i1, ptr @olang_2esole_2ecompiler__2flower__2ecompiler__2flower__3alowering__2eevalStmt_2elocal_2e3
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  call void @__olang_region_drop(ptr %t68)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l27
  br label %bb17
bb17:
  br label %bb72
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb71
bb21:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t72 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t69)
  store ptr %t72, ptr %l31
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l31, !tbaa !29
  store ptr %t73, ptr %l5, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/lower:lowering", ptr %t74, i32 0, i32 31
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t81 = icmp eq ptr %t79, null
  %t83 = xor i1 %t81, true
  store i1 %t83, ptr %l34, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb25
bb25:
  %t85 = load i1, ptr %l34, !tbaa !21
  br i1 %t85, label %bb26, label %bb27
bb26:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lower:lowering", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/lower:Lowerer", ptr %t89, i32 0, i32 5
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  br i1 %t94, label %bb28, label %bb29
bb27:
  br label %bb70
bb28:
  call void @__olang_check_failed(ptr @olang_loc_190a01ede4622abe_5dffdf8c82030ba2)
  unreachable
bb29:
  br label %bb30
bb30:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/lower:lowering", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/lower:Lowerer", ptr %t99, i32 0, i32 5
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load ptr, ptr %l5, !tbaa !29
  %t106 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eDroppedMove(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i64 %t106, ptr %l46
  br label %bb31
bb31:
  %t107 = load i64, ptr %l46, !tbaa !24
  store i64 %t107, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lower:lowering", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/lower:Lowerer", ptr %t111, i32 0, i32 5
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  br i1 %t116, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_dbd01c2d9a53cc65_a4645b55310f1609)
  unreachable
bb33:
  br label %bb34
bb34:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/lower:lowering", ptr %t118, i32 0, i32 0
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/lower:Lowerer", ptr %t121, i32 0, i32 5
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/lower:lowering", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 0
  %t131 = load i32, ptr %t130, !tbaa !23
  %t133 = sext i32 %t131 to i64
  %t134 = load i64, ptr %l6, !tbaa !24
  %t138 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %t124, i64 %t133, i64 %t134)
  store i64 %t138, ptr %l59
  br label %bb35
bb35:
  %t139 = load i64, ptr %l59, !tbaa !24
  store i64 %t139, ptr %l7, !tbaa !24
  %t140 = load i64, ptr %l7, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2ffree_2eNotSole, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb36, label %bb37
bb36:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb38
bb37:
  br label %bb38
bb38:
  %t146 = load i64, ptr %l6, !tbaa !24
  %t148 = icmp sge i64 %t146, 0
  br i1 %t148, label %bb39, label %bb40
bb39:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/lower:lowering", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/lower:Lowerer", ptr %t153, i32 0, i32 5
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = icmp eq ptr %t156, null
  br i1 %t158, label %bb41, label %bb42
bb40:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb45
bb41:
  call void @__olang_check_failed(ptr @olang_loc_a97196d802881110_6601adde25c6e514)
  unreachable
bb42:
  br label %bb43
bb43:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lower:lowering", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/lower:Lowerer", ptr %t163, i32 0, i32 5
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load i64, ptr %l6, !tbaa !24
  %t170 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsHandle(ptr %v0, ptr %t166, i64 %t167)
  store i1 %t170, ptr %l74
  br label %bb44
bb44:
  %t171 = load i1, ptr %l74, !tbaa !21
  store i1 %t171, ptr %l65, !tbaa !21
  br label %bb45
bb45:
  %t172 = load i1, ptr %l65, !tbaa !21
  store i1 %t172, ptr %l8, !tbaa !21
  %t173 = load i64, ptr %l6, !tbaa !24
  %t175 = icmp sge i64 %t173, 0
  br i1 %t175, label %bb46, label %bb47
bb46:
  %t177 = load ptr, ptr %l2, !tbaa !29
  %t179 = call i1 @compiler_2flower_2eclausedTry(ptr %v1, ptr %t177)
  store i1 %t179, ptr %l79
  br label %bb48
bb47:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb49
bb48:
  %t180 = load i1, ptr %l79, !tbaa !21
  store i1 %t180, ptr %l77, !tbaa !21
  br label %bb49
bb49:
  %t181 = load i1, ptr %l77, !tbaa !21
  br i1 %t181, label %bb50, label %bb51
bb50:
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l80, !tbaa !29
  %t183 = load i64, ptr %l7, !tbaa !24
  %t185 = add i64 %t183, 1
  %t187 = shl i64 %t185, 1
  store i64 %t187, ptr %l83, !tbaa !24
  %t188 = load i1, ptr %l8, !tbaa !21
  br i1 %t188, label %bb52, label %bb53
bb51:
  br label %bb56
bb52:
  store i64 1, ptr %l85, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb54
bb54:
  %t190 = load i64, ptr %l83, !tbaa !24
  %t191 = load i64, ptr %l85, !tbaa !24
  %t192 = or i64 %t190, %t191
  %t194 = load ptr, ptr %l80, !tbaa !29
  %t195 = getelementptr %"compiler/lower:lowering", ptr %t194, i32 0, i32 38
  store i64 %t192, ptr %t195, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l2, !tbaa !29
  %t201 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t196, ptr %t197)
  store { i64, [4 x i64] } %t201, ptr %l90
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  %t202 = load i64, ptr %l6, !tbaa !24
  %t204 = icmp sge i64 %t202, 0
  br i1 %t204, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l3, ptr %l93, !tbaa !29
  %t206 = load i64, ptr %l7, !tbaa !24
  store i64 %t206, ptr %l94, !tbaa !24
  %t207 = load i1, ptr %l8, !tbaa !21
  br i1 %t207, label %bb59, label %bb60
bb58:
  br label %bb69
bb59:
  %t209 = mul i64 1, 8
  %t210 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t209)
  %t211 = insertvalue { i64, ptr } undef, i64 1, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  store { i64, ptr } %t212, ptr %l97, !tbaa !27
  %t213 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr i64, ptr %t214, i64 0
  store i64 0, ptr %t215, !tbaa !34
  %t216 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t216, ptr %l96, !tbaa !27
  br label %bb65
bb60:
  %t217 = icmp sge i64 0, 0
  br i1 %t217, label %bb61, label %bb62
bb61:
  %t219 = icmp sle i64 0, 1152921504606846975
  br i1 %t219, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_719d9e2d41dcaf75_6e5af642a4d5dbe1)
  unreachable
bb63:
  %t221 = mul i64 0, 8
  %t222 = insertvalue { i64, ptr } undef, i64 0, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t223, ptr %l96, !tbaa !27
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_719d9e2d41dcaf75_6e5af642a4d5dbe1)
  unreachable
bb65:
  %t225 = load i64, ptr %l94, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t227 = call %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %s6, i64 %t225, { i64, ptr } %t226)
  store %"compiler/lower:relPath" %t227, ptr %l101
  br label %bb66
bb66:
  %t229 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s6, ptr %l101)
  store %"compiler/lower:relPath" %t229, ptr %l103
  br label %bb67
bb67:
  %t230 = load ptr, ptr %l93, !tbaa !29
  %t231 = load %"compiler/lower:relPath", ptr %l103
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %s0, ptr %s6, ptr %t230, %"compiler/lower:relPath" %t231)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s6)
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_77b58b6522aee3d1_f74e5dfa2bca7ecd)
  unreachable
bb72:
  %t233 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %s0, ptr %l3)
  store i64 %t233, ptr %l105
  br label %bb73
bb73:
  %t234 = load i64, ptr %l105, !tbaa !24
  %t235 = icmp eq i64 %t234, 0
  br i1 %t235, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s7
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %s7, ptr %s7, ptr %t237, ptr %t238, ptr null, ptr null)
  br label %bb76
bb75:
  br label %bb77
bb76:
  call void @__olang_scope_close(ptr %s7)
  br label %bb77
bb77:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l2, !tbaa !29
  %t246 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t241, ptr %t242)
  store { i64, [4 x i64] } %t246, ptr %l112
  br label %bb78
bb78:
  %t247 = load { i64, [4 x i64] }, ptr %l112
  store { i64, [4 x i64] } %t247, ptr %l9
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %s0, ptr %l3)
  store i64 %t249, ptr %l114
  br label %bb79
bb79:
  %t250 = load i64, ptr %l114, !tbaa !24
  %t251 = icmp eq i64 %t250, 0
  br i1 %t251, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb82
bb81:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/lower:lowering", ptr %t253, i32 0, i32 10
  %t256 = load i1, ptr %t255, !tbaa !21
  store i1 %t256, ptr %l116, !tbaa !21
  br label %bb82
bb82:
  %t258 = load i1, ptr %l116, !tbaa !21
  br i1 %t258, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb84:
  br label %bb85
bb85:
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l119, !tbaa !29
  %t260 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [4 x i64] } %t260, ptr %l120
  %t261 = load ptr, ptr %l2, !tbaa !29
  %t263 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t261)
  store i32 %t263, ptr %l122
  br label %bb86
bb86:
  %t264 = load %"compiler/source:Span", ptr %l1
  %t265 = load ptr, ptr %l119, !tbaa !29
  %t266 = load { i64, [4 x i64] }, ptr %l120
  %t267 = load i32, ptr %l122, !tbaa !23
  %t269 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t265, { i64, [4 x i64] } %t266, i32 %t267, %"compiler/source:Span" %t264)
  store i32 %t269, ptr %l124
  br label %bb87
bb87:
  %t270 = load i32, ptr %l124, !tbaa !23
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %s0, ptr %t271, i32 %t270, ptr %l3, %"compiler/source:Span" %t273)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca i1
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca { i64, [4 x i64] }
  %l29 = alloca { i64, [4 x i64] }
  %l31 = alloca i64
  %l33 = alloca { i64, [1 x i64] }
  %l34 = alloca { i64, [4 x i64] }
  %l35 = alloca i32
  %l36 = alloca %"compiler/lower:pl"
  %l41 = alloca i32
  %l50 = alloca i32
  %l59 = alloca { i64, [4 x i64] }
  %l70 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l82 = alloca i1
  %l86 = alloca i1
  %l93 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l97 = alloca %"compiler/mir:Lvalue"
  %l102 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca i32
  %l105 = alloca ptr
  %l106 = alloca { i64, [4 x i64] }
  %l112 = alloca i32
  %l114 = alloca { i64, [4 x i64] }
  %l116 = alloca { i64, [4 x i64] }
  %l117 = alloca { i64, ptr }
  %l119 = alloca { i64, [4 x i64] }
  %l122 = alloca i32
  %l125 = alloca i32
  %l135 = alloca { i64, ptr }
  %l138 = alloca { i64, [4 x i64] }
  %l142 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l145 = alloca %"compiler/mir:Lvalue"
  %l155 = alloca %"compiler/mir:Lvalue"
  %l159 = alloca { i64, ptr }
  %l162 = alloca { i64, [4 x i64] }
  %l170 = alloca i1
  %l173 = alloca i1
  %l174 = alloca i1
  %l178 = alloca i1
  %l184 = alloca i64
  %l187 = alloca i64
  %l199 = alloca i64
  %l202 = alloca i64
  %l220 = alloca i64
  %l222 = alloca { i64, [4 x i64] }
  %l223 = alloca ptr
  %l224 = alloca { i64, [4 x i64] }
  %l225 = alloca i32
  %l229 = alloca { i64, [1 x i64] }
  %l231 = alloca { i64, [4 x i64] }
  %l235 = alloca ptr
  %l236 = alloca i32
  %l237 = alloca i32
  %l241 = alloca %"compiler/mir:Range"
  %l244 = alloca { i64, [4 x i64] }
  %l245 = alloca ptr
  %l248 = alloca i32
  %l249 = alloca i1
  %l252 = alloca ptr
  %l253 = alloca i32
  %l257 = alloca { i64, [1 x i64] }
  %l262 = alloca { i64, [4 x i64] }
  %l268 = alloca ptr
  %l269 = alloca { i64, [4 x i64] }
  %l275 = alloca i32
  %l277 = alloca { i64, [4 x i64] }
  %l282 = alloca ptr
  %l283 = alloca i32
  %l284 = alloca i32
  %l285 = alloca { i64, [4 x i64] }
  %l287 = alloca { i64, [4 x i64] }
  %l288 = alloca { i64, ptr }
  %l290 = alloca { i64, [4 x i64] }
  %l302 = alloca i1
  %l305 = alloca i64
  %l308 = alloca ptr
  %l309 = alloca i32
  %l310 = alloca i32
  %l311 = alloca { i64, [4 x i64] }
  %l315 = alloca { i64, [4 x i64] }
  %l316 = alloca { i64, ptr }
  %l318 = alloca { i64, [4 x i64] }
  %l327 = alloca { i64, [1 x i64] }
  %l332 = alloca { i64, [1 x i64] }
  %l341 = alloca { i64, [4 x i64] }
  %l349 = alloca i32
  %l352 = alloca %"compiler/lower:pl"
  %l353 = alloca ptr
  %l356 = alloca i32
  %l357 = alloca i1
  %l358 = alloca ptr
  %l359 = alloca %"compiler/lower:pl"
  %l361 = alloca %"compiler/lower:pl"
  %l363 = alloca %"compiler/lower:pl"
  %l364 = alloca ptr
  %l365 = alloca { i64, [4 x i64] }
  %l366 = alloca %"compiler/source:Span"
  %l367 = alloca ptr
  %l368 = alloca %"compiler/source:Span"
  %l369 = alloca %"compiler/lower:pl"
  %l371 = alloca %"compiler/lower:pl"
  %l377 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t22 = alloca { i64, [4 x i64] }, align 8
  %t32 = alloca { i64, [4 x i64] }, align 8
  %t55 = alloca { i64, [4 x i64] }, align 8
  %t68 = alloca { i64, [4 x i64] }, align 8
  %t156 = alloca { i64, [15 x i64] }, align 8
  %t162 = alloca { i64, [21 x i64] }, align 8
  %t238 = alloca { i64, [8 x i64] }, align 8
  %t281 = alloca { i64, [15 x i64] }, align 8
  %t287 = alloca { i64, [21 x i64] }, align 8
  %t312 = alloca { i64, [4 x i64] }, align 8
  %t325 = alloca { i64, [4 x i64] }, align 8
  %t390 = alloca { i64, [4 x i64] }, align 8
  %t489 = alloca { i64, [15 x i64] }, align 8
  %t531 = alloca { i64, [15 x i64] }, align 8
  %t557 = alloca { i64, [4 x i64] }, align 8
  %t718 = alloca { i64, [15 x i64] }, align 8
  %t754 = alloca { i64, [2 x i64] }, align 8
  %t777 = alloca { i64, [1 x i64] }, align 8
  %t824 = alloca { i64, [4 x i64] }, align 8
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
  store i32 %t10, ptr %l41
  br label %bb1
bb1:
  %t11 = load i32, ptr %l41, !tbaa !23
  store i32 %t11, ptr %l7, !tbaa !23
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t18, %"compiler/source:Span" %t19, { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d3, i32 0, i32 1) })
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
  %t26 = load ptr, ptr %l6, !tbaa !29
  %t27 = load i32, ptr %l7, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l50
  br label %bb6
bb6:
  %t31 = load i32, ptr %l50, !tbaa !23
  store i32 %t31, ptr %l8, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [4 x i64] }, ptr %t32
  store { i64, [4 x i64] } %t34, ptr %l9
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Make", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Make", ptr %t46, i32 0, i32 3
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t45, ptr %t49)
  store { i64, [4 x i64] } %t52, ptr %l59
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t53 = load { i64, [4 x i64] }, ptr %l59
  store { i64, [4 x i64] } %t53, ptr %l9
  br label %bb10
bb10:
  %t54 = load i32, ptr %l8, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 0
  store i64 2, ptr %t56
  %t58 = insertvalue { i32, i64 } undef, i32 %t54, 0
  %t59 = insertvalue { i32, i64 } %t58, i64 0, 1
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  store { i32, i64 } %t59, ptr %t60
  %t61 = load { i64, [4 x i64] }, ptr %t55
  store { i64, [4 x i64] } %t61, ptr %l10
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Make", ptr %t63, i32 0, i32 6
  %t66 = load i1, ptr %t65, !tbaa !21
  br i1 %t66, label %bb11, label %bb12
bb11:
  store { i64, [4 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t70 = load { i64, [4 x i64] }, ptr %t68
  store { i64, [4 x i64] } %t70, ptr %l10
  br label %bb60
bb12:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Make", ptr %t72, i32 0, i32 2
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb13, label %bb14
bb13:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Make", ptr %t81, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l70, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr ptr, ptr %t86, i64 0
  %t88 = load ptr, ptr %t87, !tbaa !39
  store ptr %t88, ptr %l11, !tbaa !29
  %t90 = load ptr, ptr %l11, !tbaa !29
  store ptr %t90, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t91 = load ptr, ptr %l73, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb15, label %bb16
bb14:
  br label %bb59
bb15:
  %t94 = load ptr, ptr %l73, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 18}
  %t97 = icmp eq i64 %t95, 6
  store i1 %t97, ptr %l74, !tbaa !21
  br label %bb16
bb16:
  %t98 = load i1, ptr %l74, !tbaa !21
  br i1 %t98, label %bb17, label %bb18
bb17:
  %t99 = load ptr, ptr %l11, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l12, !tbaa !29
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t105 = load ptr, ptr %l12, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Call", ptr %t105, i32 0, i32 3
  %t108 = load i1, ptr %t107, !tbaa !21
  store i1 %t108, ptr %l72, !tbaa !21
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_8d285e9a6f8d174e_3f8421b20b21070a)
  unreachable
bb25:
  %t110 = load i1, ptr %l72, !tbaa !21
  br i1 %t110, label %bb26, label %bb27
bb26:
  %t113 = load { i64, [4 x i64] }, ptr %l9
  %t115 = extractvalue { i64, [4 x i64] } %t113, 0
  %t116 = icmp eq i64 %t115, 0
  %t118 = xor i1 %t116, true
  store i1 %t118, ptr %l82, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb28
bb28:
  %t120 = load i1, ptr %l82, !tbaa !21
  br i1 %t120, label %bb29, label %bb30
bb29:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/lower:lowering", ptr %t121, i32 0, i32 10
  %t124 = load i1, ptr %t123, !tbaa !21
  %t126 = xor i1 %t124, true
  store i1 %t126, ptr %l86, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb31
bb31:
  %t128 = load i1, ptr %l86, !tbaa !21
  br i1 %t128, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l8, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr %l3
  %t135 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t129, i32 %t130, %"compiler/source:Span" %t131)
  store i32 %t135, ptr %l93
  br label %bb34
bb33:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Make", ptr %t137, i32 0, i32 2
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l159, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr ptr, ptr %t142, i64 0
  %t144 = load ptr, ptr %t143, !tbaa !39
  %t148 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t136, ptr %t144)
  store { i64, [4 x i64] } %t148, ptr %l162
  br label %bb57
bb34:
  %t149 = load i32, ptr %l93, !tbaa !23
  store i32 %t149, ptr %l14, !tbaa !23
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l94, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t151, ptr %l95
  %t152 = load i32, ptr %l14, !tbaa !23
  %t154 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t152)
  store %"compiler/mir:Lvalue" %t154, ptr %l97
  br label %bb35
bb35:
  %t155 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [15 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [15 x i64] }, ptr %t156, i32 0, i32 0
  store i64 0, ptr %t157
  %t159 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t155, 0
  %t160 = getelementptr { i64, [15 x i64] }, ptr %t156, i32 0, i32 1
  store { { i64, [4 x i64] } } %t159, ptr %t160
  %t161 = load { i64, [15 x i64] }, ptr %t156
  store { i64, [21 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [21 x i64] }, ptr %t162, i32 0, i32 0
  store i64 0, ptr %t163
  %t164 = load %"compiler/source:Span", ptr %l95
  %t165 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t164, 0
  %t166 = load %"compiler/mir:Lvalue", ptr %l97
  %t167 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t165, %"compiler/mir:Lvalue" %t166, 1
  %t169 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t167, { i64, [15 x i64] } %t161, 2
  %t170 = getelementptr { i64, [21 x i64] }, ptr %t162, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t169, ptr %t170
  %t171 = load { i64, [21 x i64] }, ptr %t162
  %t173 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 176, i64 8)
  store { i64, [21 x i64] } %t171, ptr %t173
  %t174 = load ptr, ptr %l94, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s8, ptr %t174, ptr %t173)
  br label %bb36
bb36:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l102, !tbaa !29
  store i32 17, ptr %l103
  %t177 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t177, ptr %l104, !tbaa !23
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l105, !tbaa !29
  %t179 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [4 x i64] } %t179, ptr %l106
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Make", ptr %t180, i32 0, i32 3
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb37, label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_f5af5833f64caf98_602ac3538c074da4)
  unreachable
bb38:
  br label %bb39
bb39:
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Make", ptr %t187, i32 0, i32 3
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t190)
  store i32 %t192, ptr %l112
  br label %bb40
bb40:
  %t193 = load %"compiler/source:Span", ptr %l3
  %t194 = load ptr, ptr %l105, !tbaa !29
  %t195 = load { i64, [4 x i64] }, ptr %l106
  %t196 = load i32, ptr %l112, !tbaa !23
  %t198 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t194, { i64, [4 x i64] } %t195, i32 %t196, %"compiler/source:Span" %t193)
  store { i64, [4 x i64] } %t198, ptr %l114
  br label %bb41
bb41:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t199, i64 0)
  store { i64, [4 x i64] } %t201, ptr %l116
  br label %bb42
bb42:
  %t202 = mul i64 2, 40
  %t203 = call ptr @__olang_scope_alloc_zeroed(ptr %s8, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 2, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l117, !tbaa !27
  %t206 = load { i64, [4 x i64] }, ptr %l114
  %t207 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr { i64, [4 x i64] }, ptr %t208, i64 0
  store { i64, [4 x i64] } %t206, ptr %t209
  %t210 = load { i64, [4 x i64] }, ptr %l116
  %t211 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr { i64, [4 x i64] }, ptr %t212, i64 1
  store { i64, [4 x i64] } %t210, ptr %t213
  %t214 = load %"compiler/source:Span", ptr %l3
  %t215 = load ptr, ptr %l102, !tbaa !29
  %t216 = load i32, ptr %l103, !range !{i32 0, i32 52}
  %t217 = load i32, ptr %l104, !tbaa !23
  %t218 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t220 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s8, ptr %t215, i32 %t216, i32 %t217, { i64, ptr } %t218, %"compiler/source:Span" %t214)
  store { i64, [4 x i64] } %t220, ptr %l119
  br label %bb43
bb43:
  %t221 = load { i64, [4 x i64] }, ptr %l119
  store { i64, [4 x i64] } %t221, ptr %l15
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/lower:lowering", ptr %t222, i32 0, i32 3
  %t226 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t224)
  store i32 %t226, ptr %l122
  br label %bb44
bb44:
  %t227 = load i32, ptr %l122, !tbaa !23
  store i32 %t227, ptr %l16, !tbaa !23
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/lower:lowering", ptr %t228, i32 0, i32 3
  %t232 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t230)
  store i32 %t232, ptr %l125
  br label %bb45
bb45:
  %t233 = load i32, ptr %l125, !tbaa !23
  store i32 %t233, ptr %l17, !tbaa !23
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load { i64, [4 x i64] }, ptr %l15
  %t236 = load i32, ptr %l16, !tbaa !23
  %t237 = load i32, ptr %l17, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [8 x i64] }, ptr %t238, i32 0, i32 0
  store i64 2, ptr %t239
  %t241 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t235, 0
  %t243 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t241, i32 %t236, 1
  %t245 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t243, i32 %t237, 2
  %t246 = getelementptr { i64, [8 x i64] }, ptr %t238, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t245, ptr %t246
  %t247 = load { i64, [8 x i64] }, ptr %t238
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t234, { i64, [8 x i64] } %t247)
  br label %bb46
bb46:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t250, i32 %t251)
  br label %bb47
bb47:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t257 = getelementptr %"compiler/typed:Make", ptr %t255, i32 0, i32 2
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  store { i64, ptr } %t258, ptr %l135, !tbaa !27
  %t259 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr ptr, ptr %t260, i64 0
  %t262 = load ptr, ptr %t261, !tbaa !39
  %t266 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t254, ptr %t262)
  store { i64, [4 x i64] } %t266, ptr %l138
  br label %bb48
bb48:
  %t267 = load { i64, [4 x i64] }, ptr %l138
  store { i64, [4 x i64] } %t267, ptr %l18
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/lower:lowering", ptr %t268, i32 0, i32 10
  %t271 = load i1, ptr %t270, !tbaa !21
  %t273 = xor i1 %t271, true
  br i1 %t273, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s9
  %t275 = load ptr, ptr %l0, !tbaa !29
  store ptr %t275, ptr %l142, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t276, ptr %l143
  %t277 = load i32, ptr %l14, !tbaa !23
  %t279 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t277)
  store %"compiler/mir:Lvalue" %t279, ptr %l145
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t280 = load { i64, [4 x i64] }, ptr %l18
  store { i64, [15 x i64] } zeroinitializer, ptr %t281
  %t282 = getelementptr { i64, [15 x i64] }, ptr %t281, i32 0, i32 0
  store i64 0, ptr %t282
  %t284 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t280, 0
  %t285 = getelementptr { i64, [15 x i64] }, ptr %t281, i32 0, i32 1
  store { { i64, [4 x i64] } } %t284, ptr %t285
  %t286 = load { i64, [15 x i64] }, ptr %t281
  store { i64, [21 x i64] } zeroinitializer, ptr %t287
  %t288 = getelementptr { i64, [21 x i64] }, ptr %t287, i32 0, i32 0
  store i64 0, ptr %t288
  %t289 = load %"compiler/source:Span", ptr %l143
  %t290 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t289, 0
  %t291 = load %"compiler/mir:Lvalue", ptr %l145
  %t292 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t290, %"compiler/mir:Lvalue" %t291, 1
  %t294 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t292, { i64, [15 x i64] } %t286, 2
  %t295 = getelementptr { i64, [21 x i64] }, ptr %t287, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t294, ptr %t295
  %t296 = load { i64, [21 x i64] }, ptr %t287
  %t298 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 176, i64 8)
  store { i64, [21 x i64] } %t296, ptr %t298
  %t299 = load ptr, ptr %l142, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s9, ptr %t299, ptr %t298)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb53
bb53:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i32, ptr %l17, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t301, i32 %t302)
  br label %bb54
bb54:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i32, ptr %l17, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t305, i32 %t306)
  br label %bb55
bb55:
  %t309 = load i32, ptr %l14, !tbaa !23
  %t311 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t309)
  store %"compiler/mir:Lvalue" %t311, ptr %l155
  br label %bb56
bb56:
  store { i64, [4 x i64] } zeroinitializer, ptr %t312
  %t313 = getelementptr { i64, [4 x i64] }, ptr %t312, i32 0, i32 0
  store i64 1, ptr %t313
  %t314 = load %"compiler/mir:Lvalue", ptr %l155
  %t315 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t314, 0
  %t316 = getelementptr { i64, [4 x i64] }, ptr %t312, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t315, ptr %t316
  %t317 = load { i64, [4 x i64] }, ptr %t312
  store { i64, [4 x i64] } %t317, ptr %l10
  call void @__olang_scope_close(ptr %s8)
  br label %bb58
bb57:
  %t319 = load { i64, [4 x i64] }, ptr %l162
  store { i64, [4 x i64] } %t319, ptr %l10
  br label %bb58
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/lower:lowering", ptr %t320, i32 0, i32 10
  %t323 = load i1, ptr %t322, !tbaa !21
  br i1 %t323, label %bb61, label %bb62
bb61:
  store { i64, [4 x i64] } zeroinitializer, ptr %t325
  %t326 = getelementptr { i64, [4 x i64] }, ptr %t325, i32 0, i32 0
  store i64 0, ptr %t326
  %t327 = load { i64, [4 x i64] }, ptr %t325
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t327, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  %t329 = load ptr, ptr %l1, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Make", ptr %t329, i32 0, i32 2
  %t332 = load { i64, ptr }, ptr %t331, !tbaa !27
  %t334 = extractvalue { i64, ptr } %t332, 0
  %t336 = icmp sgt i64 %t334, 0
  br i1 %t336, label %bb64, label %bb65
bb64:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l8, !tbaa !23
  %t342 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %t338, i32 %t339)
  store i1 %t342, ptr %l173
  br label %bb66
bb65:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb67
bb66:
  %t343 = load i1, ptr %l173, !tbaa !21
  store i1 %t343, ptr %l170, !tbaa !21
  br label %bb67
bb67:
  %t344 = load i1, ptr %l170, !tbaa !21
  br i1 %t344, label %bb68, label %bb69
bb68:
  %t345 = load { i64, [4 x i64] }, ptr %l10
  %t347 = extractvalue { i64, [4 x i64] } %t345, 0
  %t348 = icmp eq i64 %t347, 0
  %t350 = xor i1 %t348, true
  store i1 %t350, ptr %l174, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb70
bb70:
  %t352 = load i1, ptr %l174, !tbaa !21
  br i1 %t352, label %bb71, label %bb72
bb71:
  %t353 = load { i64, [4 x i64] }, ptr %l10
  %t355 = extractvalue { i64, [4 x i64] } %t353, 0
  %t356 = icmp eq i64 %t355, 2
  %t358 = xor i1 %t356, true
  store i1 %t358, ptr %l178, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb73
bb73:
  %t360 = load i1, ptr %l178, !tbaa !21
  store i1 %t360, ptr %l19, !tbaa !21
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l7, !tbaa !23
  %t365 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t361, i32 %t362)
  store i64 %t365, ptr %l184
  br label %bb74
bb74:
  %t366 = load i64, ptr %l184, !tbaa !24
  store i64 %t366, ptr %l20, !tbaa !24
  %t367 = load i64, ptr %l20, !tbaa !24
  %t369 = icmp sge i64 %t367, 0
  br i1 %t369, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s12
  %t371 = load i64, ptr %l20, !tbaa !24
  store i64 %t371, ptr %l187, !tbaa !24
  %t372 = load i64, ptr %l187, !tbaa !24
  %t373 = icmp sge i64 %t372, 0
  br i1 %t373, label %bb77, label %bb78
bb76:
  br label %bb110
bb77:
  %t375 = load i64, ptr %l187, !tbaa !24
  %t376 = icmp sle i64 %t375, 230584300921369395
  br i1 %t376, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_1e1698b45a1b0cf3_495e2913f4118f47)
  unreachable
bb79:
  %t378 = load i64, ptr %l187, !tbaa !24
  %t379 = mul i64 %t378, 40
  %t380 = call ptr @__olang_scope_alloc_zeroed(ptr %s12, i64 %t379)
  %t381 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  store { i64, ptr } %t382, ptr %l21, !tbaa !27
  %t384 = load { i64, [4 x i64] }, ptr %l10
  %t386 = extractvalue { i64, [4 x i64] } %t384, 0
  %t387 = icmp eq i64 %t386, 0
  br i1 %t387, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_1e1698b45a1b0cf3_495e2913f4118f47)
  unreachable
bb81:
  %t389 = load i32, ptr %l8, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t390
  %t391 = getelementptr { i64, [4 x i64] }, ptr %t390, i32 0, i32 0
  store i64 2, ptr %t391
  %t393 = insertvalue { i32, i64 } undef, i32 %t389, 0
  %t394 = insertvalue { i32, i64 } %t393, i64 0, 1
  %t395 = getelementptr { i64, [4 x i64] }, ptr %t390, i32 0, i32 1
  store { i32, i64 } %t394, ptr %t395
  %t396 = load { i64, [4 x i64] }, ptr %t390
  store { i64, [4 x i64] } %t396, ptr %l10
  br label %bb83
bb82:
  br label %bb83
bb83:
  store i64 0, ptr %l22, !tbaa !24
  %t398 = load i64, ptr %l20, !tbaa !24
  store i64 %t398, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t400 = load i64, ptr %l23, !tbaa !24
  %t401 = load i64, ptr %l22, !tbaa !24
  %t404 = icmp sgt i64 %t400, %t401
  br i1 %t404, label %bb84, label %bb85
bb84:
  %t406 = load i64, ptr %l24, !tbaa !24
  %t408 = icmp sgt i64 %t406, 0
  br i1 %t408, label %bb86, label %bb87
bb85:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb89
bb86:
  %t410 = load i64, ptr %l23, !tbaa !24
  %t411 = load i64, ptr %l22, !tbaa !24
  %t414 = sub i64 %t410, %t411
  %t415 = load i64, ptr %l24, !tbaa !24
  %t418 = add i64 %t414, %t415
  %t420 = sub i64 %t418, 1
  %t421 = load i64, ptr %l24, !tbaa !24
  %t424 = sdiv i64 %t420, %t421
  store i64 %t424, ptr %l202, !tbaa !24
  br label %bb88
bb87:
  store i64 0, ptr %l202, !tbaa !24
  br label %bb88
bb88:
  %t426 = load i64, ptr %l202, !tbaa !24
  store i64 %t426, ptr %l199, !tbaa !24
  br label %bb89
bb89:
  %t427 = load i64, ptr %l199, !tbaa !24
  store i64 %t427, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb90
bb90:
  %t428 = load i64, ptr %l26, !tbaa !24
  %t429 = load i64, ptr %l25, !tbaa !24
  %t432 = icmp slt i64 %t428, %t429
  %t434 = xor i1 %t432, true
  br i1 %t434, label %bb91, label %bb92
bb91:
  br label %bb100
bb92:
  br label %bb93
bb93:
  %t436 = load i64, ptr %l22, !tbaa !24
  %t437 = load i64, ptr %l26, !tbaa !24
  %t438 = load i64, ptr %l24, !tbaa !24
  %t441 = mul i64 %t437, %t438
  %t444 = add i64 %t436, %t441
  store i64 %t444, ptr %l220, !tbaa !24
  %t447 = load i1, ptr %l19, !tbaa !21
  br i1 %t447, label %bb94, label %bb95
bb94:
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l223, !tbaa !29
  %t450 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t450, ptr %l224
  %t451 = load i32, ptr %l8, !tbaa !23
  store i32 %t451, ptr %l225, !tbaa !23
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load ptr, ptr %l1, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Make", ptr %t453, i32 0, i32 4
  %t456 = load i32, ptr %t455, !tbaa !23
  %t459 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t452, i32 %t456)
  store { i64, [1 x i64] } %t459, ptr %l229
  br label %bb96
bb95:
  %t460 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t460, ptr %l222
  br label %bb98
bb96:
  %t462 = load %"compiler/source:Span", ptr %l3
  %t463 = load ptr, ptr %l223, !tbaa !29
  %t464 = load { i64, [4 x i64] }, ptr %l224
  %t465 = load i32, ptr %l225, !tbaa !23
  %t466 = load { i64, [1 x i64] }, ptr %l229
  %t468 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t463, { i64, [4 x i64] } %t464, i32 %t465, { i64, [1 x i64] } %t466, %"compiler/source:Span" %t462, i1 false)
  store { i64, [4 x i64] } %t468, ptr %l231
  br label %bb97
bb97:
  %t469 = load { i64, [4 x i64] }, ptr %l231
  store { i64, [4 x i64] } %t469, ptr %l222
  br label %bb98
bb98:
  %t470 = load { i64, [4 x i64] }, ptr %l222
  %t471 = load i64, ptr %l220, !tbaa !24
  %t472 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t473 = load ptr, ptr %t472, !tbaa !27
  %t474 = getelementptr { i64, [4 x i64] }, ptr %t473, i64 %t471
  store { i64, [4 x i64] } %t470, ptr %t474
  br label %bb99
bb99:
  %t475 = load i64, ptr %l26, !tbaa !24
  %t477 = add i64 %t475, 1
  store i64 %t477, ptr %l26, !tbaa !24
  br label %bb90
bb100:
  %t479 = load ptr, ptr %l0, !tbaa !29
  store ptr %t479, ptr %l235, !tbaa !29
  %t480 = load i32, ptr %l7, !tbaa !23
  store i32 %t480, ptr %l236, !tbaa !23
  %t481 = load i32, ptr %l7, !tbaa !23
  store i32 %t481, ptr %l237, !tbaa !23
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/lower:lowering", ptr %t482, i32 0, i32 3
  %t485 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t488 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s12, ptr %t484, { i64, ptr } %t485)
  store %"compiler/mir:Range" %t488, ptr %l241
  br label %bb101
bb101:
  store { i64, [15 x i64] } zeroinitializer, ptr %t489
  %t490 = getelementptr { i64, [15 x i64] }, ptr %t489, i32 0, i32 0
  store i64 6, ptr %t490
  %t491 = load i32, ptr %l237, !tbaa !23
  %t492 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t491, 0
  %t493 = insertvalue { i32, i64, %"compiler/mir:Range" } %t492, i64 0, 1
  %t494 = load %"compiler/mir:Range", ptr %l241
  %t495 = insertvalue { i32, i64, %"compiler/mir:Range" } %t493, %"compiler/mir:Range" %t494, 2
  %t496 = getelementptr { i64, [15 x i64] }, ptr %t489, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t495, ptr %t496
  %t497 = load { i64, [15 x i64] }, ptr %t489
  %t498 = load %"compiler/source:Span", ptr %l3
  %t499 = load ptr, ptr %l235, !tbaa !29
  %t500 = load i32, ptr %l236, !tbaa !23
  %t503 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t499, i32 %t500, { i64, [15 x i64] } %t497, %"compiler/source:Span" %t498)
  store { i64, [4 x i64] } %t503, ptr %l244
  br label %bb102
bb102:
  %t504 = load { i64, [4 x i64] }, ptr %l244
  store { i64, [4 x i64] } %t504, ptr %l28
  %t505 = load ptr, ptr %l6, !tbaa !29
  store ptr %t505, ptr %l245, !tbaa !29
  %t506 = load ptr, ptr %l6, !tbaa !29
  %t507 = load i32, ptr %l2, !tbaa !23
  %t510 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t506, i32 %t507)
  store i32 %t510, ptr %l248
  br label %bb103
bb103:
  %t511 = load ptr, ptr %l245, !tbaa !29
  %t512 = load i32, ptr %l248, !tbaa !23
  %t513 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t511, i32 %t512)
  store i1 %t513, ptr %l249
  br label %bb104
bb104:
  %t514 = load i1, ptr %l249, !tbaa !21
  %t515 = xor i1 %t514, true
  br i1 %t515, label %bb105, label %bb106
bb105:
  %t517 = load { i64, [4 x i64] }, ptr %l28
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t517, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  %t519 = load ptr, ptr %l0, !tbaa !29
  store ptr %t519, ptr %l252, !tbaa !29
  %t520 = load i32, ptr %l2, !tbaa !23
  store i32 %t520, ptr %l253, !tbaa !23
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load ptr, ptr %l1, !tbaa !29
  %t524 = getelementptr %"compiler/typed:Make", ptr %t522, i32 0, i32 4
  %t525 = load i32, ptr %t524, !tbaa !23
  %t528 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t521, i32 %t525)
  store { i64, [1 x i64] } %t528, ptr %l257
  br label %bb108
bb108:
  %t529 = load { i64, [4 x i64] }, ptr %l28
  %t530 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t531
  %t532 = getelementptr { i64, [15 x i64] }, ptr %t531, i32 0, i32 0
  store i64 7, ptr %t532
  %t533 = load { i64, [1 x i64] }, ptr %l257
  %t534 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t533, 0
  %t536 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t534, { i64, [4 x i64] } %t529, 1
  %t538 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t536, i32 %t530, 2
  %t539 = getelementptr { i64, [15 x i64] }, ptr %t531, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t538, ptr %t539
  %t540 = load { i64, [15 x i64] }, ptr %t531
  %t541 = load %"compiler/source:Span", ptr %l3
  %t542 = load ptr, ptr %l252, !tbaa !29
  %t543 = load i32, ptr %l253, !tbaa !23
  %t546 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t542, i32 %t543, { i64, [15 x i64] } %t540, %"compiler/source:Span" %t541)
  store { i64, [4 x i64] } %t546, ptr %l262
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t547 = load { i64, [4 x i64] }, ptr %l262
  store { i64, [4 x i64] } %t547, ptr %rv
  br label %ret
bb110:
  %t548 = load { i64, [4 x i64] }, ptr %l9
  %t550 = extractvalue { i64, [4 x i64] } %t548, 0
  %t551 = icmp eq i64 %t550, 0
  br i1 %t551, label %bb111, label %bb112
bb111:
  store %olang.scope zeroinitializer, ptr %s18
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s18, ptr %t553, %"compiler/source:Span" %t554, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb113
bb112:
  br label %bb114
bb113:
  store { i64, [4 x i64] } zeroinitializer, ptr %t557
  %t558 = getelementptr { i64, [4 x i64] }, ptr %t557, i32 0, i32 0
  store i64 0, ptr %t558
  %t559 = load { i64, [4 x i64] }, ptr %t557
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t559, ptr %rv
  br label %ret
bb114:
  %t561 = load ptr, ptr %l0, !tbaa !29
  store ptr %t561, ptr %l268, !tbaa !29
  %t562 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [4 x i64] } %t562, ptr %l269
  %t563 = load ptr, ptr %l1, !tbaa !29
  %t565 = getelementptr %"compiler/typed:Make", ptr %t563, i32 0, i32 3
  %t566 = load ptr, ptr %t565, !tbaa !29
  %t568 = icmp eq ptr %t566, null
  br i1 %t568, label %bb115, label %bb116
bb115:
  call void @__olang_check_failed(ptr @olang_loc_4345db1597b95ac6_216be31f80f17832)
  unreachable
bb116:
  br label %bb117
bb117:
  %t570 = load ptr, ptr %l1, !tbaa !29
  %t572 = getelementptr %"compiler/typed:Make", ptr %t570, i32 0, i32 3
  %t573 = load ptr, ptr %t572, !tbaa !29
  %t575 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t573)
  store i32 %t575, ptr %l275
  br label %bb118
bb118:
  %t576 = load %"compiler/source:Span", ptr %l3
  %t577 = load ptr, ptr %l268, !tbaa !29
  %t578 = load { i64, [4 x i64] }, ptr %l269
  %t579 = load i32, ptr %l275, !tbaa !23
  %t581 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t577, { i64, [4 x i64] } %t578, i32 %t579, %"compiler/source:Span" %t576)
  store { i64, [4 x i64] } %t581, ptr %l277
  br label %bb119
bb119:
  %t582 = load { i64, [4 x i64] }, ptr %l277
  store { i64, [4 x i64] } %t582, ptr %l29
  %t583 = load ptr, ptr %l1, !tbaa !29
  %t585 = getelementptr %"compiler/typed:Make", ptr %t583, i32 0, i32 5
  %t586 = load i32, ptr %t585, !range !{i32 0, i32 3}
  %t588 = trunc i64 0 to i32
  %t589 = icmp eq i32 %t586, %t588
  %t591 = xor i1 %t589, true
  br i1 %t591, label %bb120, label %bb121
bb120:
  store %olang.scope zeroinitializer, ptr %s19
  %t593 = load ptr, ptr %l0, !tbaa !29
  store ptr %t593, ptr %l282, !tbaa !29
  store i32 18, ptr %l283
  %t594 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t594, ptr %l284, !tbaa !23
  %t595 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t595, ptr %l285
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t598 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t596, i64 0)
  store { i64, [4 x i64] } %t598, ptr %l287
  br label %bb122
bb121:
  br label %bb133
bb122:
  %t599 = mul i64 2, 40
  %t600 = call ptr @__olang_scope_alloc_zeroed(ptr %s19, i64 %t599)
  %t601 = insertvalue { i64, ptr } undef, i64 2, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t600, 1
  store { i64, ptr } %t602, ptr %l288, !tbaa !27
  %t603 = load { i64, [4 x i64] }, ptr %l285
  %t604 = getelementptr { i64, ptr }, ptr %l288, i32 0, i32 1
  %t605 = load ptr, ptr %t604, !tbaa !27
  %t606 = getelementptr { i64, [4 x i64] }, ptr %t605, i64 0
  store { i64, [4 x i64] } %t603, ptr %t606
  %t607 = load { i64, [4 x i64] }, ptr %l287
  %t608 = getelementptr { i64, ptr }, ptr %l288, i32 0, i32 1
  %t609 = load ptr, ptr %t608, !tbaa !27
  %t610 = getelementptr { i64, [4 x i64] }, ptr %t609, i64 1
  store { i64, [4 x i64] } %t607, ptr %t610
  %t611 = load %"compiler/source:Span", ptr %l3
  %t612 = load ptr, ptr %l282, !tbaa !29
  %t613 = load i32, ptr %l283, !range !{i32 0, i32 52}
  %t614 = load i32, ptr %l284, !tbaa !23
  %t615 = load { i64, ptr }, ptr %l288, !tbaa !27
  %t617 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s19, ptr %t612, i32 %t613, i32 %t614, { i64, ptr } %t615, %"compiler/source:Span" %t611)
  store { i64, [4 x i64] } %t617, ptr %l290
  br label %bb123
bb123:
  %t618 = load { i64, [4 x i64] }, ptr %l290
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t621 = load ptr, ptr %l1, !tbaa !29
  %t623 = getelementptr %"compiler/typed:Make", ptr %t621, i32 0, i32 5
  %t624 = load i32, ptr %t623, !range !{i32 0, i32 3}
  %t625 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t626 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t619, { i64, [4 x i64] } %t618, i32 %t624, i32 9, i64 %t625, %"compiler/source:Span" %t626)
  br label %bb124
bb124:
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t635 = getelementptr %"compiler/lower:lowering", ptr %t633, i32 0, i32 0
  %t636 = load ptr, ptr %t635, !tbaa !29
  %t638 = getelementptr %"compiler/lower:Lowerer", ptr %t636, i32 0, i32 0
  %t639 = load ptr, ptr %t638, !tbaa !29
  %t640 = load i32, ptr %l8, !tbaa !23
  %t643 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t639, i32 %t640)
  store i1 %t643, ptr %l302
  br label %bb125
bb125:
  %t644 = load ptr, ptr %l6, !tbaa !29
  %t645 = load i32, ptr %l8, !tbaa !23
  %t648 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t644, i32 %t645)
  store i64 %t648, ptr %l305
  br label %bb126
bb126:
  %t649 = load i64, ptr %l305, !tbaa !24
  store i64 %t649, ptr %l31, !tbaa !24
  %t650 = load i64, ptr %l31, !tbaa !24
  %t652 = icmp sgt i64 %t650, 1
  br i1 %t652, label %bb127, label %bb128
bb127:
  store %olang.scope zeroinitializer, ptr %s20
  %t654 = load ptr, ptr %l0, !tbaa !29
  store ptr %t654, ptr %l308, !tbaa !29
  store i32 16, ptr %l309
  %t655 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t655, ptr %l310, !tbaa !23
  %t656 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t656, ptr %l311
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t658 = load i64, ptr %l31, !tbaa !24
  %t660 = sdiv i64 9223372036854775807, %t658
  %t663 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t657, i64 %t660)
  store { i64, [4 x i64] } %t663, ptr %l315
  br label %bb129
bb128:
  br label %bb132
bb129:
  %t664 = mul i64 2, 40
  %t665 = call ptr @__olang_scope_alloc_zeroed(ptr %s20, i64 %t664)
  %t666 = insertvalue { i64, ptr } undef, i64 2, 0
  %t667 = insertvalue { i64, ptr } %t666, ptr %t665, 1
  store { i64, ptr } %t667, ptr %l316, !tbaa !27
  %t668 = load { i64, [4 x i64] }, ptr %l311
  %t669 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t670 = load ptr, ptr %t669, !tbaa !27
  %t671 = getelementptr { i64, [4 x i64] }, ptr %t670, i64 0
  store { i64, [4 x i64] } %t668, ptr %t671
  %t672 = load { i64, [4 x i64] }, ptr %l315
  %t673 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t674 = load ptr, ptr %t673, !tbaa !27
  %t675 = getelementptr { i64, [4 x i64] }, ptr %t674, i64 1
  store { i64, [4 x i64] } %t672, ptr %t675
  %t676 = load %"compiler/source:Span", ptr %l3
  %t677 = load ptr, ptr %l308, !tbaa !29
  %t678 = load i32, ptr %l309, !range !{i32 0, i32 52}
  %t679 = load i32, ptr %l310, !tbaa !23
  %t680 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t682 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s20, ptr %t677, i32 %t678, i32 %t679, { i64, ptr } %t680, %"compiler/source:Span" %t676)
  store { i64, [4 x i64] } %t682, ptr %l318
  br label %bb130
bb130:
  %t683 = load { i64, [4 x i64] }, ptr %l318
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t686 = load ptr, ptr %l1, !tbaa !29
  %t688 = getelementptr %"compiler/typed:Make", ptr %t686, i32 0, i32 5
  %t689 = load i32, ptr %t688, !range !{i32 0, i32 3}
  %t690 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t691 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t684, { i64, [4 x i64] } %t683, i32 %t689, i32 9, i64 %t690, %"compiler/source:Span" %t691)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s20)
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s19)
  br label %bb133
bb133:
  br i1 %a4, label %bb134, label %bb135
bb134:
  store { i64, [1 x i64] } %a5, ptr %l327
  br label %bb137
bb135:
  %t702 = load ptr, ptr %l0, !tbaa !29
  %t703 = load ptr, ptr %l1, !tbaa !29
  %t705 = getelementptr %"compiler/typed:Make", ptr %t703, i32 0, i32 4
  %t706 = load i32, ptr %t705, !tbaa !23
  %t709 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %t702, i32 %t706)
  store { i64, [1 x i64] } %t709, ptr %l332
  br label %bb136
bb136:
  %t710 = load { i64, [1 x i64] }, ptr %l332
  store { i64, [1 x i64] } %t710, ptr %l327
  br label %bb137
bb137:
  %t711 = load { i64, [1 x i64] }, ptr %l327
  store { i64, [1 x i64] } %t711, ptr %l33
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t713 = load i32, ptr %l2, !tbaa !23
  %t714 = load { i64, [1 x i64] }, ptr %l33
  %t715 = load i32, ptr %l2, !tbaa !23
  %t716 = load { i64, [4 x i64] }, ptr %l29
  %t717 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [15 x i64] } zeroinitializer, ptr %t718
  %t719 = getelementptr { i64, [15 x i64] }, ptr %t718, i32 0, i32 0
  store i64 8, ptr %t719
  %t721 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t714, 0
  %t723 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t721, i32 %t715, 1
  %t725 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t723, { i64, [4 x i64] } %t716, 2
  %t727 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t725, { i64, [4 x i64] } %t717, 3
  %t728 = getelementptr { i64, [15 x i64] }, ptr %t718, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t727, ptr %t728
  %t729 = load { i64, [15 x i64] }, ptr %t718
  %t730 = load %"compiler/source:Span", ptr %l3
  %t735 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t712, i32 %t713, { i64, [15 x i64] } %t729, %"compiler/source:Span" %t730)
  store { i64, [4 x i64] } %t735, ptr %l341
  br label %bb138
bb138:
  %t736 = load { i64, [4 x i64] }, ptr %l341
  store { i64, [4 x i64] } %t736, ptr %l34
  %t737 = load i1, ptr %l19, !tbaa !21
  %t739 = xor i1 %t737, true
  br i1 %t739, label %bb139, label %bb140
bb139:
  %t741 = load { i64, [4 x i64] }, ptr %l34
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t741, ptr %rv
  br label %ret
bb140:
  br label %bb141
bb141:
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t744 = load { i64, [4 x i64] }, ptr %l34
  %t745 = load i32, ptr %l2, !tbaa !23
  %t746 = load %"compiler/source:Span", ptr %l3
  %t751 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t743, { i64, [4 x i64] } %t744, i32 %t745, %"compiler/source:Span" %t746)
  store i32 %t751, ptr %l349
  br label %bb142
bb142:
  %t752 = load i32, ptr %l349, !tbaa !23
  store i32 %t752, ptr %l35, !tbaa !23
  %t753 = load i32, ptr %l35, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t754
  %t755 = getelementptr { i64, [2 x i64] }, ptr %t754, i32 0, i32 0
  store i64 1, ptr %t755
  %t757 = insertvalue { i32 } undef, i32 %t753, 0
  %t758 = getelementptr { i64, [2 x i64] }, ptr %t754, i32 0, i32 1
  store { i32 } %t757, ptr %t758
  %t759 = load { i64, [2 x i64] }, ptr %t754
  %t761 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t759)
  store %"compiler/lower:pl" %t761, ptr %l352
  br label %bb143
bb143:
  %t762 = load %"compiler/lower:pl", ptr %l352
  store %"compiler/lower:pl" %t762, ptr %l36
  %t763 = load ptr, ptr %l6, !tbaa !29
  store ptr %t763, ptr %l353, !tbaa !29
  %t764 = load ptr, ptr %l6, !tbaa !29
  %t765 = load i32, ptr %l2, !tbaa !23
  %t768 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t764, i32 %t765)
  store i32 %t768, ptr %l356
  br label %bb144
bb144:
  %t769 = load ptr, ptr %l353, !tbaa !29
  %t770 = load i32, ptr %l356, !tbaa !23
  %t771 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t769, i32 %t770)
  store i1 %t771, ptr %l357
  br label %bb145
bb145:
  %t772 = load i1, ptr %l357, !tbaa !21
  br i1 %t772, label %bb146, label %bb147
bb146:
  %t773 = load ptr, ptr %l0, !tbaa !29
  store ptr %t773, ptr %l358, !tbaa !29
  %t774 = load %"compiler/lower:pl", ptr %l36
  store %"compiler/lower:pl" %t774, ptr %l359
  %t776 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l359)
  store %"compiler/lower:pl" %t776, ptr %l361
  br label %bb148
bb147:
  br label %bb150
bb148:
  store { i64, [1 x i64] } zeroinitializer, ptr %t777
  %t778 = getelementptr { i64, [1 x i64] }, ptr %t777, i32 0, i32 0
  store i64 3, ptr %t778
  %t779 = load { i64, [1 x i64] }, ptr %t777
  %t780 = load ptr, ptr %l358, !tbaa !29
  %t781 = load %"compiler/lower:pl", ptr %l361
  %t783 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t780, %"compiler/lower:pl" %t781, { i64, [1 x i64] } %t779)
  store %"compiler/lower:pl" %t783, ptr %l363
  br label %bb149
bb149:
  %t784 = load %"compiler/lower:pl", ptr %l363
  store %"compiler/lower:pl" %t784, ptr %l36
  br label %bb150
bb150:
  %t785 = load ptr, ptr %l0, !tbaa !29
  store ptr %t785, ptr %l364, !tbaa !29
  %t786 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t786, ptr %l365
  %t787 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t787, ptr %l366
  %t788 = load ptr, ptr %l0, !tbaa !29
  store ptr %t788, ptr %l367, !tbaa !29
  %t789 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t789, ptr %l368
  %t790 = load %"compiler/lower:pl", ptr %l36
  store %"compiler/lower:pl" %t790, ptr %l369
  %t792 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l369)
  store %"compiler/lower:pl" %t792, ptr %l371
  br label %bb151
bb151:
  %t793 = load { i64, [4 x i64] }, ptr %l10
  %t794 = load i32, ptr %l8, !tbaa !23
  %t795 = load { i64, [1 x i64] }, ptr %l33
  %t796 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr null, i32 1
  %t797 = ptrtoint ptr %t796 to i64
  %t798 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t797, i64 8)
  %t799 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 0
  %t800 = load ptr, ptr %l367, !tbaa !29
  store ptr %t800, ptr %t799, !tbaa !28
  %t801 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 1
  %t802 = load %"compiler/source:Span", ptr %l368
  store %"compiler/source:Span" %t802, ptr %t801, !tbaa !28
  %t803 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 2
  %t804 = load %"compiler/lower:pl", ptr %l371
  store %"compiler/lower:pl" %t804, ptr %t803, !tbaa !28
  %t805 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 3
  store { i64, [4 x i64] } %t793, ptr %t805, !tbaa !28
  %t807 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 4
  store i32 %t794, ptr %t807, !tbaa !28
  %t809 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 5
  store { i64, [1 x i64] } %t795, ptr %t809, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t811 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 6
  store ptr %v0, ptr %t811, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t812 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t798, i32 0, i32 7
  store ptr %s0, ptr %t812, !tbaa !28
  %t813 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t814 = insertvalue { ptr, ptr } %t813, ptr %t798, 1
  %t815 = load ptr, ptr %l364, !tbaa !29
  %t816 = load { i64, [4 x i64] }, ptr %l365
  %t817 = load %"compiler/source:Span", ptr %l366
  %t819 = extractvalue { ptr, ptr } %t814, 0
  %t820 = extractvalue { ptr, ptr } %t814, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s0, ptr %t815, { i64, [4 x i64] } %t816, %"compiler/source:Span" %t817, ptr %t819, ptr %t820)
  br label %bb152
bb152:
  %t821 = load i32, ptr %l35, !tbaa !23
  %t823 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t821)
  store %"compiler/mir:Lvalue" %t823, ptr %l377
  br label %bb153
bb153:
  store { i64, [4 x i64] } zeroinitializer, ptr %t824
  %t825 = getelementptr { i64, [4 x i64] }, ptr %t824, i32 0, i32 0
  store i64 1, ptr %t825
  %t826 = load %"compiler/mir:Lvalue", ptr %l377
  %t827 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t826, 0
  %t828 = getelementptr { i64, [4 x i64] }, ptr %t824, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t827, ptr %t828
  %t829 = load { i64, [4 x i64] }, ptr %t824
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t829, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eflag(ptr %v0, ptr %a0, i1 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/mir:Lvalue"
  %l15 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t21 = alloca { i64, [15 x i64] }, align 8
  %t27 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l2
  %t7 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i32, ptr %l7, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t10, ptr %l9
  %t11 = load i32, ptr %l3, !tbaa !23
  %t13 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t11)
  store %"compiler/mir:Lvalue" %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l2
  %t20 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %t14, i1 %a1, %"compiler/source:Span" %t16)
  store { i64, [4 x i64] } %t20, ptr %l15
  br label %bb3
bb3:
  store { i64, [15 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [15 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t23 = load { i64, [4 x i64] }, ptr %l15
  %t24 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t23, 0
  %t25 = getelementptr { i64, [15 x i64] }, ptr %t21, i32 0, i32 1
  store { { i64, [4 x i64] } } %t24, ptr %t25
  %t26 = load { i64, [15 x i64] }, ptr %t21
  store { i64, [21 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [21 x i64] }, ptr %t27, i32 0, i32 0
  store i64 0, ptr %t28
  %t29 = load %"compiler/source:Span", ptr %l9
  %t30 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t29, 0
  %t31 = load %"compiler/mir:Lvalue", ptr %l11
  %t32 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t30, %"compiler/mir:Lvalue" %t31, 1
  %t34 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t32, { i64, [15 x i64] } %t26, 2
  %t35 = getelementptr { i64, [21 x i64] }, ptr %t27, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t34, ptr %t35
  %t36 = load { i64, [21 x i64] }, ptr %t27
  %t38 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t36, ptr %t38
  %t39 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t39, ptr %t38)
  br label %bb4
bb4:
  %t41 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efoundOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l10 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca i64
  %l27 = alloca i1
  %l34 = alloca ptr
  %l40 = alloca { i64, [4 x i64] }
  %l45 = alloca i1
  %l47 = alloca i1
  %l55 = alloca { i64, [4 x i64] }
  %l59 = alloca i32
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l63 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, [1 x i64] }
  %t12 = alloca { i64, [1 x i64] }, align 8
  %t33 = alloca { i64, [4 x i64] }, align 8
  %t93 = alloca { i64, [1 x i64] }, align 8
  %t123 = alloca { i64, [15 x i64] }, align 8
  %t129 = alloca { i64, [21 x i64] }, align 8
  %t144 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l7, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 30
  %t5 = getelementptr %"compiler/typed:Plan", ptr %t4, i32 0, i32 10
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = icmp sge i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [1 x i64] }, ptr %t12, i32 0, i32 0
  store i64 2, ptr %t13
  %t14 = load { i64, [1 x i64] }, ptr %t12
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t14, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 4
  %t22 = load %"compiler/source:Span", ptr %t21
  store %"compiler/source:Span" %t22, ptr %l2
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 30
  %t27 = getelementptr %"compiler/typed:Plan", ptr %t26, i32 0, i32 10
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l19
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l19, !tbaa !29
  store ptr %t32, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t35 = load { i64, [4 x i64] }, ptr %t33
  store { i64, [4 x i64] } %t35, ptr %l4
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:lowering", ptr %t37, i32 0, i32 35
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l23
  br label %bb6
bb6:
  %t42 = load i64, ptr %l23, !tbaa !24
  %t43 = sub i64 %t42, 1
  store i64 %t43, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load { i64, [4 x i64] }, ptr %l4
  %t51 = extractvalue { i64, [4 x i64] } %t49, 0
  %t52 = icmp eq i64 %t51, 0
  store i1 %t52, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t54 = load i1, ptr %l27, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/lower:lowering", ptr %t57, i32 0, i32 35
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s3, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l34
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t67 = icmp eq ptr %t65, %t64
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lower:lowering", ptr %t69, i32 0, i32 36
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t71, i64 %t72)
  store { i64, [4 x i64] } %t75, ptr %l40
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t76 = load { i64, [4 x i64] }, ptr %l40
  store { i64, [4 x i64] } %t76, ptr %l4
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t77 = load i64, ptr %l5, !tbaa !24
  %t79 = sub i64 %t77, 1
  store i64 %t79, ptr %l5, !tbaa !24
  br label %bb7
bb20:
  %t81 = load { i64, [4 x i64] }, ptr %l4
  %t83 = extractvalue { i64, [4 x i64] } %t81, 0
  %t84 = icmp eq i64 %t83, 0
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t86 = load ptr, ptr %l3, !tbaa !29
  %t88 = call i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %t86)
  store i1 %t88, ptr %l47
  br label %bb23
bb22:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb24
bb23:
  %t89 = load i1, ptr %l47, !tbaa !21
  %t90 = xor i1 %t89, true
  store i1 %t90, ptr %l45, !tbaa !21
  br label %bb24
bb24:
  %t92 = load i1, ptr %l45, !tbaa !21
  br i1 %t92, label %bb25, label %bb26
bb25:
  store { i64, [1 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 0
  store i64 2, ptr %t94
  %t95 = load { i64, [1 x i64] }, ptr %t93
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t95, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t97 = load { i64, [4 x i64] }, ptr %l4
  %t99 = extractvalue { i64, [4 x i64] } %t97, 0
  %t100 = icmp eq i64 %t99, 0
  br i1 %t100, label %bb28, label %bb29
bb28:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t107 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v0, ptr %t102, ptr %t103)
  store { i64, [4 x i64] } %t107, ptr %l55
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t108 = load { i64, [4 x i64] }, ptr %l55
  store { i64, [4 x i64] } %t108, ptr %l4
  br label %bb31
bb31:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t111 = load %"compiler/source:Span", ptr %l2
  %t115 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t109, i32 %t110, %"compiler/source:Span" %t111)
  store i32 %t115, ptr %l59
  br label %bb32
bb32:
  %t116 = load i32, ptr %l59, !tbaa !23
  store i32 %t116, ptr %l6, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l60, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t118, ptr %l61
  %t119 = load i32, ptr %l6, !tbaa !23
  %t121 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t119)
  store %"compiler/mir:Lvalue" %t121, ptr %l63
  br label %bb33
bb33:
  %t122 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [15 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [15 x i64] }, ptr %t123, i32 0, i32 0
  store i64 15, ptr %t124
  %t126 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t122, 0
  %t127 = getelementptr { i64, [15 x i64] }, ptr %t123, i32 0, i32 1
  store { { i64, [4 x i64] } } %t126, ptr %t127
  %t128 = load { i64, [15 x i64] }, ptr %t123
  store { i64, [21 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [21 x i64] }, ptr %t129, i32 0, i32 0
  store i64 0, ptr %t130
  %t131 = load %"compiler/source:Span", ptr %l61
  %t132 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t131, 0
  %t133 = load %"compiler/mir:Lvalue", ptr %l63
  %t134 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t132, %"compiler/mir:Lvalue" %t133, 1
  %t136 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t134, { i64, [15 x i64] } %t128, 2
  %t137 = getelementptr { i64, [21 x i64] }, ptr %t129, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t136, ptr %t137
  %t138 = load { i64, [21 x i64] }, ptr %t129
  %t140 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t138, ptr %t140
  %t141 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t141, ptr %t140)
  br label %bb34
bb34:
  %t143 = load i32, ptr %l6, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [1 x i64] }, ptr %t144, i32 0, i32 0
  store i64 4, ptr %t145
  %t147 = insertvalue { i32 } undef, i32 %t143, 0
  %t148 = getelementptr { i64, [1 x i64] }, ptr %t144, i32 0, i32 1
  store { i32 } %t147, ptr %t148
  %t149 = load { i64, [1 x i64] }, ptr %t144
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t149, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3alowering_2ehandedOver(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca i1
  %l30 = alloca { i64, ptr }
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb22
bb5:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Seq", ptr %t16, i32 0, i32 2
  %t19 = load i1, ptr %t18, !tbaa !21
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Seq", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  store i1 %t28, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Seq", ptr %t33, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t50, ptr %l30, !tbaa !27
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v2, ptr %v1, ptr %a2, ptr %t56)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb12
bb18:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Seq", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_58c3cf8c6fce78d4_23ae1924195b9e70)
  unreachable
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Seq", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  store ptr %t76, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_3f94e1722b42397a_72ec18aae06ab796)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l68 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l79 = alloca i1
  %l83 = alloca i1
  %l86 = alloca { i64, ptr }
  %l88 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l98 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t2 = load ptr, ptr %l12, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb64
bb6:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t11 = load ptr, ptr %l16, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l16, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l17, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l3, !tbaa !23
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l4, !tbaa !29
  br label %bb11
bb10:
  br label %bb18
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 2
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l27
  br label %bb12
bb12:
  %t39 = load i1, ptr %l27, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t46 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldRefPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t40, ptr %t41, ptr %t42)
  store i1 %t46, ptr %l32
  br label %bb15
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t53 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t47, ptr %t48, ptr %t49)
  store i1 %t53, ptr %l36
  br label %bb16
bb15:
  %t54 = load i1, ptr %l32, !tbaa !21
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb17
bb16:
  %t55 = load i1, ptr %l36, !tbaa !21
  store i1 %t55, ptr %l28, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l28, !tbaa !21
  store i1 %t56, ptr %l11, !tbaa !21
  br label %bb64
bb18:
  %t57 = load ptr, ptr %l2, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t58 = load ptr, ptr %l37, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l37, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 18}
  %t64 = icmp eq i64 %t62, 3
  store i1 %t64, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t68, i32 0, i32 2
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t74 = load ptr, ptr %l5, !tbaa !29
  %t78 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t72, ptr %t73, ptr %t74)
  store i1 %t78, ptr %l46
  br label %bb24
bb24:
  %t79 = load i1, ptr %l46, !tbaa !21
  store i1 %t79, ptr %l11, !tbaa !21
  br label %bb64
bb25:
  %t80 = load ptr, ptr %l2, !tbaa !29
  store ptr %t80, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l47, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 18}
  %t87 = icmp eq i64 %t85, 10
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l48, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t91, i32 0, i32 2
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Slice", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t104 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t95, ptr %t96, ptr %t100)
  store i1 %t104, ptr %l57
  br label %bb31
bb31:
  %t105 = load i1, ptr %l57, !tbaa !21
  store i1 %t105, ptr %l11, !tbaa !21
  br label %bb64
bb32:
  %t106 = load ptr, ptr %l2, !tbaa !29
  store ptr %t106, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t107 = load ptr, ptr %l58, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb33, label %bb34
bb33:
  %t110 = load ptr, ptr %l58, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 18}
  %t113 = icmp eq i64 %t111, 5
  store i1 %t113, ptr %l59, !tbaa !21
  br label %bb34
bb34:
  %t114 = load i1, ptr %l59, !tbaa !21
  br i1 %t114, label %bb35, label %bb36
bb35:
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l7, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t123 = load ptr, ptr %l7, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Promote", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t130 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldMadeOf(ptr %v0, ptr %v1, ptr %v2, ptr %t121, ptr %t122, ptr %t126)
  store i1 %t130, ptr %l68
  br label %bb38
bb38:
  %t131 = load i1, ptr %l68, !tbaa !21
  store i1 %t131, ptr %l11, !tbaa !21
  br label %bb64
bb39:
  %t132 = load ptr, ptr %l2, !tbaa !29
  store ptr %t132, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t133 = load ptr, ptr %l69, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb40, label %bb41
bb40:
  %t136 = load ptr, ptr %l69, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 18}
  %t139 = icmp eq i64 %t137, 9
  store i1 %t139, ptr %l70, !tbaa !21
  br label %bb41
bb41:
  %t140 = load i1, ptr %l70, !tbaa !21
  br i1 %t140, label %bb42, label %bb43
bb42:
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t143 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t143, i32 0, i32 2
  %t145 = load i32, ptr %t144, !range !{i32 0, i32 52}
  store i32 %t145, ptr %l8
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t149 = getelementptr { i64, [5 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t149, i32 0, i32 4
  %t151 = load { i64, ptr }, ptr %t150
  store { i64, ptr } %t151, ptr %l9, !tbaa !27
  br label %bb44
bb43:
  br label %bb52
bb44:
  %t153 = load i32, ptr %l8, !range !{i32 0, i32 52}
  %t155 = trunc i64 20 to i32
  %t156 = icmp eq i32 %t153, %t155
  br i1 %t156, label %bb45, label %bb46
bb45:
  %t158 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t162 = icmp eq i64 %t160, 1
  store i1 %t162, ptr %l79, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb47
bb47:
  %t164 = load i1, ptr %l79, !tbaa !21
  br i1 %t164, label %bb48, label %bb49
bb48:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t167, ptr %l86, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr ptr, ptr %t169, i64 0
  %t171 = load ptr, ptr %t170, !tbaa !39
  %t175 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t165, ptr %t166, ptr %t171)
  store i1 %t175, ptr %l88
  br label %bb50
bb49:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb51
bb50:
  %t176 = load i1, ptr %l88, !tbaa !21
  store i1 %t176, ptr %l83, !tbaa !21
  br label %bb51
bb51:
  %t177 = load i1, ptr %l83, !tbaa !21
  store i1 %t177, ptr %l11, !tbaa !21
  br label %bb64
bb52:
  %t178 = load ptr, ptr %l2, !tbaa !29
  store ptr %t178, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t179 = load ptr, ptr %l89, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb53, label %bb54
bb53:
  %t182 = load ptr, ptr %l89, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 18}
  %t185 = icmp eq i64 %t183, 17
  store i1 %t185, ptr %l90, !tbaa !21
  br label %bb54
bb54:
  %t186 = load i1, ptr %l90, !tbaa !21
  br i1 %t186, label %bb55, label %bb56
bb55:
  %t187 = load ptr, ptr %l2, !tbaa !29
  %t189 = getelementptr { i64, [5 x i64] }, ptr %t187, i32 0, i32 1
  %t190 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t189, i32 0, i32 2
  %t191 = load ptr, ptr %t190
  store ptr %t191, ptr %l10, !tbaa !29
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t195 = load ptr, ptr %l10, !tbaa !29
  %t199 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t193, ptr %t194, ptr %t195)
  store i1 %t199, ptr %l98
  br label %bb58
bb58:
  %t200 = load i1, ptr %l98, !tbaa !21
  store i1 %t200, ptr %l11, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_7afd5d1ad8925abe_46fef9b6d0280482)
  unreachable
bb64:
  %t201 = load i1, ptr %l11, !tbaa !21
  store i1 %t201, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldThroughTemps(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l32 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l47 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l73 = alloca { i64, ptr }
  %l76 = alloca i1
  %l77 = alloca i1
  %l79 = alloca { i64, ptr }
  %l82 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l97 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Call", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t11 = load ptr, ptr %l4, !tbaa !29
  store ptr %t11, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t12 = load ptr, ptr %l20, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l20, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 5}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l21, !tbaa !21
  br label %bb2
bb2:
  %t19 = load i1, ptr %l21, !tbaa !21
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/lower:Lowerer", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = load i32, ptr %l5, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t32, i64 %t36)
  store ptr %t39, ptr %l32
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l32, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Body", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %t42, !tbaa !23
  store i32 %t43, ptr %l19, !tbaa !23
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i32 -1, ptr %l19, !tbaa !23
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_a07ec099b2fecc_5ff3e99d534ebc80)
  unreachable
bb12:
  %t45 = load i32, ptr %l19, !tbaa !23
  store i32 %t45, ptr %l6, !tbaa !23
  %t46 = load i32, ptr %l6, !tbaa !23
  %t48 = icmp eq i32 %t46, -1
  br i1 %t48, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l3, !tbaa !29
  store ptr %t50, ptr %l37, !tbaa !29
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t52 = load i32, ptr %l6, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l40
  br label %bb16
bb16:
  %t56 = load ptr, ptr %l37, !tbaa !29
  %t57 = load i32, ptr %l40, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t56, i32 %t57)
  store { i64, ptr } %t58, ptr %l41
  br label %bb17
bb17:
  %t59 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t59, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Call", ptr %t60, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t71 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t65, i64 %t68)
  store i64 %t71, ptr %l47
  br label %bb18
bb18:
  %t72 = load i64, ptr %l47, !tbaa !24
  store i64 %t72, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb24
bb21:
  %t83 = load i64, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l10, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l54, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb23
bb23:
  %t99 = load i64, ptr %l54, !tbaa !24
  store i64 %t99, ptr %l51, !tbaa !24
  br label %bb24
bb24:
  %t100 = load i64, ptr %l51, !tbaa !24
  store i64 %t100, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb25
bb25:
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb26, label %bb27
bb26:
  br label %bb43
bb27:
  br label %bb28
bb28:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t110 = load i64, ptr %l12, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l13, !tbaa !24
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t120 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t120, ptr %l73, !tbaa !27
  %t121 = load i64, ptr %l13, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i32, ptr %t124, i64 %t121
  %t126 = load i32, ptr %t125, !tbaa !33
  %t129 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t119, i32 %t126)
  store i1 %t129, ptr %l76
  br label %bb29
bb29:
  %t130 = load i1, ptr %l76, !tbaa !21
  br i1 %t130, label %bb30, label %bb31
bb30:
  %t131 = load ptr, ptr %l3, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t132, ptr %l79, !tbaa !27
  %t133 = load i64, ptr %l13, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i32, ptr %t136, i64 %t133
  %t138 = load i32, ptr %t137, !tbaa !33
  %t141 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t131, i32 %t138)
  store i64 %t141, ptr %l82
  br label %bb32
bb31:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb33
bb32:
  %t142 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t143 = load i64, ptr %l82, !tbaa !24
  %t145 = and i64 %t143, %t142
  %t147 = icmp ne i64 %t145, 0
  store i1 %t147, ptr %l77, !tbaa !21
  br label %bb33
bb33:
  %t149 = load i1, ptr %l77, !tbaa !21
  br i1 %t149, label %bb34, label %bb35
bb34:
  br label %bb42
bb35:
  br label %bb36
bb36:
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Call", ptr %t150, i32 0, i32 1
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l87, !tbaa !27
  %t154 = load i64, ptr %l13, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr ptr, ptr %t157, i64 %t154
  %t159 = load ptr, ptr %t158, !tbaa !39
  %t161 = call ptr @compiler_2flower_2etempViewCall(ptr %v2, ptr %v2, ptr %t159)
  store ptr %t161, ptr %l90
  br label %bb37
bb37:
  %t162 = load ptr, ptr %l90, !tbaa !29
  store ptr %t162, ptr %l14, !tbaa !29
  %t163 = load ptr, ptr %l14, !tbaa !29
  %t165 = icmp eq ptr %t163, null
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb38, label %bb39
bb38:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l14, !tbaa !29
  %t175 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %t169, ptr %a1, ptr %t171)
  store i1 %t175, ptr %l97
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t176 = load i64, ptr %l12, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l12, !tbaa !24
  br label %bb25
bb43:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ehelper(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/lower:pl"
  %l7 = alloca { i64, ptr }
  %l18 = alloca %"compiler/lower:pl"
  %l20 = alloca %"compiler/lower:pl"
  %l21 = alloca ptr
  %l27 = alloca { i64, [4 x i64] }
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l35 = alloca %"compiler/lower:pl"
  %l38 = alloca { i64, [4 x i64] }
  %l44 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l60 = alloca { i64, [4 x i64] }
  %l65 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l67 = alloca %"compiler/mir:Lvalue"
  %l69 = alloca ptr
  %l71 = alloca %"compiler/lower:pl"
  %l83 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l85 = alloca ptr
  %l87 = alloca %"compiler/lower:pl"
  %l93 = alloca { i64, [4 x i64] }
  %l98 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l101 = alloca %"compiler/lower:pl"
  %l102 = alloca i32
  %l103 = alloca { i64, [1 x i64] }
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t94 = alloca { i64, [1 x i64] }, align 8
  %t134 = alloca { i64, [1 x i64] }, align 8
  %t149 = alloca { i64, [4 x i64] }, align 8
  %t163 = alloca { i64, [1 x i64] }, align 8
  %t175 = alloca { i64, [4 x i64] }, align 8
  %t191 = alloca { i64, [1 x i64] }, align 8
  %t210 = alloca { i64, [1 x i64] }, align 8
  %t235 = alloca { i64, [1 x i64] }, align 8
  %t253 = alloca { i64, [1 x i64] }, align 8
  %t267 = alloca { i64, [4 x i64] }, align 8
  %t278 = alloca { i64, [1 x i64] }, align 8
  %t298 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 4
  %t12 = load %"compiler/source:Span", ptr %t11
  store %"compiler/source:Span" %t12, ptr %l4
  %t14 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t16 = trunc i64 1 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb9
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = mul i64 0, 16
  %t21 = insertvalue { i64, ptr } undef, i64 0, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s1, ptr %t19, { i64, ptr } %t22)
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s1, ptr %t25, i32 0)
  store %"compiler/lower:pl" %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load %"compiler/lower:pl", ptr %l18
  store %"compiler/lower:pl" %t28, ptr %l5
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s1, ptr %t29, i32 1)
  store %"compiler/lower:pl" %t31, ptr %l20
  br label %bb6
bb6:
  %t32 = load %"compiler/lower:pl", ptr %l20
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/lower:pl", ptr %l5
  %t37 = load i32, ptr %l2, !tbaa !23
  %t38 = load %"compiler/source:Span", ptr %l4
  %t44 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %s1, ptr %s1, ptr %t34, %"compiler/lower:pl" %t35, %"compiler/lower:pl" %t32, i32 %t37, %"compiler/source:Span" %t38, i1 true)
  store { i64, [4 x i64] } %t44, ptr %l27
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l21, !tbaa !29
  %t46 = load { i64, [4 x i64] }, ptr %l27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t45, { i64, [4 x i64] } %t46)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb64
bb9:
  %t47 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t49 = trunc i64 2 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb17
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = mul i64 0, 16
  %t54 = insertvalue { i64, ptr } undef, i64 0, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s2, ptr %t52, { i64, ptr } %t55)
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l32, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s2, ptr %t60, i32 0)
  store %"compiler/lower:pl" %t62, ptr %l35
  br label %bb14
bb14:
  %t63 = load i32, ptr %l2, !tbaa !23
  %t64 = load %"compiler/source:Span", ptr %l4
  %t65 = load ptr, ptr %l33, !tbaa !29
  %t66 = load %"compiler/lower:pl", ptr %l35
  %t69 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %s2, ptr %t65, %"compiler/lower:pl" %t66, i32 %t63, %"compiler/source:Span" %t64, i1 true)
  store { i64, [4 x i64] } %t69, ptr %l38
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l32, !tbaa !29
  %t71 = load { i64, [4 x i64] }, ptr %l38
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t70, { i64, [4 x i64] } %t71)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb64
bb17:
  %t72 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t74 = trunc i64 3 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb28
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/lower:lowering", ptr %t78, i32 0, i32 3
  %t81 = getelementptr %"compiler/mir:Fn", ptr %t80, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s3, ptr %t77, i32 %t82)
  store { i64, ptr } %t85, ptr %l44
  br label %bb21
bb21:
  %t86 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t86, ptr %l7, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l45, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t92 = icmp sgt i64 %t90, 0
  br i1 %t92, label %bb22, label %bb23
bb22:
  store { i64, [1 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [1 x i64] }, ptr %t94, i32 0, i32 0
  store i64 1, ptr %t95
  %t96 = load { i64, [1 x i64] }, ptr %t94
  %t97 = mul i64 1, 16
  %t98 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 1, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr { i64, [1 x i64] }, ptr %t103, i64 0
  store { i64, [1 x i64] } %t96, ptr %t104
  %t105 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t105, ptr %l49, !tbaa !27
  br label %bb24
bb23:
  %t106 = mul i64 0, 16
  %t107 = insertvalue { i64, ptr } undef, i64 0, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t108, ptr %l49, !tbaa !27
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l45, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l49, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s3, ptr %t110, { i64, ptr } %t111)
  br label %bb25
bb25:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l53, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l2, !tbaa !23
  %t115 = load %"compiler/source:Span", ptr %l4
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t120 = icmp sgt i64 %t118, 0
  %t125 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroOf(ptr %v0, ptr %t113, i32 %t114, %"compiler/source:Span" %t115, i1 %t120)
  store { i64, [4 x i64] } %t125, ptr %l60
  br label %bb26
bb26:
  %t126 = load ptr, ptr %l53, !tbaa !29
  %t127 = load { i64, [4 x i64] }, ptr %l60
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t126, { i64, [4 x i64] } %t127)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb64
bb28:
  %t128 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t130 = trunc i64 0 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb37
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t133 = load ptr, ptr %l0, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t134
  %t135 = getelementptr { i64, [1 x i64] }, ptr %t134, i32 0, i32 0
  store i64 6, ptr %t135
  %t136 = load { i64, [1 x i64] }, ptr %t134
  %t137 = mul i64 1, 16
  %t138 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t137)
  %t139 = insertvalue { i64, ptr } undef, i64 1, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  store { i64, ptr } %t140, ptr %l65, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, [1 x i64] }, ptr %t143, i64 0
  store { i64, [1 x i64] } %t136, ptr %t144
  %t146 = load { i64, ptr }, ptr %l65, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s4, ptr %t133, { i64, ptr } %t146)
  br label %bb32
bb32:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l66, !tbaa !29
  %t148 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 1)
  store %"compiler/mir:Lvalue" %t148, ptr %l67
  br label %bb33
bb33:
  store { i64, [4 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 0
  store i64 1, ptr %t150
  %t151 = load %"compiler/mir:Lvalue", ptr %l67
  %t152 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t151, 0
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t152, ptr %t153
  %t154 = load { i64, [4 x i64] }, ptr %t149
  %t156 = load ptr, ptr %l66, !tbaa !29
  %t157 = getelementptr %"compiler/lower:lowering", ptr %t156, i32 0, i32 8
  store { i64, [4 x i64] } %t154, ptr %t157
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l69, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s4, ptr %t159, i32 0)
  store %"compiler/lower:pl" %t161, ptr %l71
  br label %bb34
bb34:
  %t162 = load i32, ptr %l2, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t163
  %t164 = getelementptr { i64, [1 x i64] }, ptr %t163, i32 0, i32 0
  store i64 1, ptr %t164
  %t165 = insertvalue { i64 } undef, i64 0, 0
  %t166 = getelementptr { i64, [1 x i64] }, ptr %t163, i32 0, i32 1
  store { i64 } %t165, ptr %t166
  %t167 = load { i64, [1 x i64] }, ptr %t163
  %t168 = load %"compiler/source:Span", ptr %l4
  %t169 = load ptr, ptr %l69, !tbaa !29
  %t170 = load %"compiler/lower:pl", ptr %l71
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAt(ptr %v0, ptr %s4, ptr %t169, %"compiler/lower:pl" %t170, i32 %t162, { i64, [1 x i64] } %t167, %"compiler/source:Span" %t168, i1 true)
  br label %bb35
bb35:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t175
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t175, i32 0, i32 0
  store i64 0, ptr %t176
  %t177 = load { i64, [4 x i64] }, ptr %t175
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t174, { i64, [4 x i64] } %t177)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %bb64
bb37:
  %t180 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t182 = trunc i64 4 to i32
  %t183 = icmp eq i32 %t180, %t182
  br i1 %t183, label %bb38, label %bb39
bb38:
  br label %bb42
bb39:
  %t185 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t187 = trunc i64 5 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb47
bb42:
  store %olang.scope zeroinitializer, ptr %s5
  %t190 = load ptr, ptr %l0, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t191
  %t192 = getelementptr { i64, [1 x i64] }, ptr %t191, i32 0, i32 0
  store i64 1, ptr %t192
  %t193 = load { i64, [1 x i64] }, ptr %t191
  %t194 = mul i64 1, 16
  %t195 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t194)
  %t196 = insertvalue { i64, ptr } undef, i64 1, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  store { i64, ptr } %t197, ptr %l83, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr { i64, [1 x i64] }, ptr %t200, i64 0
  store { i64, [1 x i64] } %t193, ptr %t201
  %t203 = load { i64, ptr }, ptr %l83, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s5, ptr %t190, { i64, ptr } %t203)
  br label %bb43
bb43:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l84, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l85, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s5, ptr %t206, i32 0)
  store %"compiler/lower:pl" %t208, ptr %l87
  br label %bb44
bb44:
  %t209 = load i32, ptr %l2, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t210
  %t211 = getelementptr { i64, [1 x i64] }, ptr %t210, i32 0, i32 0
  store i64 1, ptr %t211
  %t212 = insertvalue { i64 } undef, i64 0, 0
  %t213 = getelementptr { i64, [1 x i64] }, ptr %t210, i32 0, i32 1
  store { i64 } %t212, ptr %t213
  %t214 = load { i64, [1 x i64] }, ptr %t210
  %t215 = load %"compiler/source:Span", ptr %l4
  %t216 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t218 = trunc i64 5 to i32
  %t219 = icmp eq i32 %t216, %t218
  %t220 = load ptr, ptr %l85, !tbaa !29
  %t221 = load %"compiler/lower:pl", ptr %l87
  %t226 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %s5, ptr %t220, %"compiler/lower:pl" %t221, i32 %t209, { i64, [1 x i64] } %t214, %"compiler/source:Span" %t215, i1 true, i1 %t219)
  store { i64, [4 x i64] } %t226, ptr %l93
  br label %bb45
bb45:
  %t227 = load ptr, ptr %l84, !tbaa !29
  %t228 = load { i64, [4 x i64] }, ptr %l93
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t227, { i64, [4 x i64] } %t228)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s5)
  br label %bb64
bb47:
  %t229 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t231 = trunc i64 6 to i32
  %t232 = icmp eq i32 %t229, %t231
  br i1 %t232, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb56
bb50:
  store %olang.scope zeroinitializer, ptr %s6
  %t234 = load ptr, ptr %l0, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t235
  %t236 = getelementptr { i64, [1 x i64] }, ptr %t235, i32 0, i32 0
  store i64 3, ptr %t236
  %t237 = load { i64, [1 x i64] }, ptr %t235
  %t238 = mul i64 1, 16
  %t239 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t238)
  %t240 = insertvalue { i64, ptr } undef, i64 1, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  store { i64, ptr } %t241, ptr %l98, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr { i64, [1 x i64] }, ptr %t244, i64 0
  store { i64, [1 x i64] } %t237, ptr %t245
  %t247 = load { i64, ptr }, ptr %l98, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s6, ptr %t234, { i64, ptr } %t247)
  br label %bb51
bb51:
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l99, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s6, ptr %t249, i32 0)
  store %"compiler/lower:pl" %t251, ptr %l101
  br label %bb52
bb52:
  %t252 = load i32, ptr %l2, !tbaa !23
  store i32 %t252, ptr %l102, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [1 x i64] }, ptr %t253, i32 0, i32 0
  store i64 1, ptr %t254
  %t255 = insertvalue { i64 } undef, i64 0, 0
  %t256 = getelementptr { i64, [1 x i64] }, ptr %t253, i32 0, i32 1
  store { i64 } %t255, ptr %t256
  %t257 = load { i64, [1 x i64] }, ptr %t253
  store { i64, [1 x i64] } %t257, ptr %l103
  %t258 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t258, ptr %l104
  %t259 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t259, ptr %l105
  br label %bb53
bb53:
  %t260 = load ptr, ptr %l99, !tbaa !29
  %t261 = load %"compiler/lower:pl", ptr %l101
  %t262 = load i32, ptr %l102, !tbaa !23
  %t263 = load { i64, [1 x i64] }, ptr %l103
  %t264 = load %"compiler/source:Span", ptr %l104
  %t265 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %s6, ptr %s6, ptr %t260, %"compiler/lower:pl" %t261, i32 %t262, { i64, [1 x i64] } %t263, %"compiler/source:Span" %t264, i1 true, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t265)
  br label %bb54
bb54:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t267
  %t268 = getelementptr { i64, [4 x i64] }, ptr %t267, i32 0, i32 0
  store i64 0, ptr %t268
  %t269 = load { i64, [4 x i64] }, ptr %t267
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t266, { i64, [4 x i64] } %t269)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s6)
  br label %bb64
bb56:
  %t272 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t274 = trunc i64 7 to i32
  %t275 = icmp eq i32 %t272, %t274
  br i1 %t275, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb63
bb59:
  store %olang.scope zeroinitializer, ptr %s7
  %t277 = load ptr, ptr %l0, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [1 x i64] }, ptr %t278, i32 0, i32 0
  store i64 3, ptr %t279
  %t280 = load { i64, [1 x i64] }, ptr %t278
  %t281 = mul i64 1, 16
  %t282 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t281)
  %t283 = insertvalue { i64, ptr } undef, i64 1, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  store { i64, ptr } %t284, ptr %l112, !tbaa !27
  %t286 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr { i64, [1 x i64] }, ptr %t287, i64 0
  store { i64, [1 x i64] } %t280, ptr %t288
  %t290 = load { i64, ptr }, ptr %l112, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %s7, ptr %t277, { i64, ptr } %t290)
  br label %bb60
bb60:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load i32, ptr %l2, !tbaa !23
  %t293 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardBody(ptr %v0, ptr %t291, i32 %t292, %"compiler/source:Span" %t293)
  br label %bb61
bb61:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t298
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t298, i32 0, i32 0
  store i64 0, ptr %t299
  %t300 = load { i64, [4 x i64] }, ptr %t298
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t297, { i64, [4 x i64] } %t300)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s7)
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_30767a805df234bd_503f920f410b6239)
  unreachable
bb64:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCallee(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l14 = alloca i32
  %l19 = alloca i32
  %rv = alloca { { i64, [7 x i64] }, i32 }
  %t37 = alloca { i64, [2 x i64] }, align 8
  %t49 = alloca { i64, [2 x i64] }, align 8
  %t58 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %a1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i32 1, ptr %l7
  br label %bb3
bb2:
  store i32 2, ptr %l7
  br label %bb3
bb3:
  %t8 = load i32, ptr %l7, !range !{i32 0, i32 8}
  store i32 %t8, ptr %l3
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t13 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t14 = load i32, ptr %l2, !tbaa !23
  %t18 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %t12, i32 %t13, i32 %t14)
  store i32 %t18, ptr %l14
  br label %bb4
bb4:
  %t19 = load i32, ptr %l14, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 2
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t25 = load i32, ptr %l2, !tbaa !23
  %t29 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t23, i32 %t24, i32 %t25)
  store i32 %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load i32, ptr %l19, !tbaa !23
  store i32 %t30, ptr %l4, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t36 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 0
  store i64 3, ptr %t38
  %t40 = insertvalue { i32, i32 } undef, i32 %t35, 0
  %t42 = insertvalue { i32, i32 } %t40, i32 %t36, 1
  %t43 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 1
  store { i32, i32 } %t42, ptr %t43
  %t44 = load { i64, [2 x i64] }, ptr %t37
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %t34, { i64, [2 x i64] } %t44)
  br label %bb6
bb6:
  %t47 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t48 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t49, i32 0, i32 0
  store i64 3, ptr %t50
  %t52 = insertvalue { i32, i32 } undef, i32 %t47, 0
  %t54 = insertvalue { i32, i32 } %t52, i32 %t48, 1
  %t55 = getelementptr { i64, [2 x i64] }, ptr %t49, i32 0, i32 1
  store { i32, i32 } %t54, ptr %t55
  %t56 = load { i64, [2 x i64] }, ptr %t49
  %t57 = load i32, ptr %l4, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t58
  %t59 = getelementptr { i64, [7 x i64] }, ptr %t58, i32 0, i32 0
  store i64 0, ptr %t59
  %t61 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t56, 0
  %t63 = insertvalue { { i64, [2 x i64] }, i32 } %t61, i32 %t57, 1
  %t64 = getelementptr { i64, [7 x i64] }, ptr %t58, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t63, ptr %t64
  %t65 = load { i64, [7 x i64] }, ptr %t58
  %t66 = load i32, ptr %l4, !tbaa !23
  %t68 = insertvalue { { i64, [7 x i64] }, i32 } undef, { i64, [7 x i64] } %t65, 0
  %t70 = insertvalue { { i64, [7 x i64] }, i32 } %t68, i32 %t66, 1
  store { { i64, [7 x i64] }, i32 } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, [7 x i64] }, i32 }, ptr %rv
  ret { { i64, [7 x i64] }, i32 } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ehomeKept(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca { i64, [1 x i64] }
  %l15 = alloca i1
  %l21 = alloca i1
  %l25 = alloca %"compiler/mir:Local"
  %l30 = alloca { i64, ptr }
  %l36 = alloca i1
  %l38 = alloca i32
  %l43 = alloca %"compiler/typed:Local"
  %l51 = alloca %"compiler/typed:Local"
  %l56 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i32
  %l63 = alloca i1
  %l64 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i64
  %l73 = alloca { i64, [1 x i64] }
  %l77 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 24
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb3
bb2:
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 30
  %t16 = getelementptr %"compiler/typed:Plan", ptr %t15, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = icmp sge i64 %t12, %t19
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb7
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 3
  %t28 = getelementptr %"compiler/mir:Fn", ptr %t27, i32 0, i32 7
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t28, i64 %t29)
  store %"compiler/mir:Local" %t32, ptr %l25
  br label %bb6
bb6:
  %t33 = getelementptr %"compiler/mir:Local", ptr %l25, i32 0, i32 4
  %t34 = load { i64, [1 x i64] }, ptr %t33
  %t36 = extractvalue { i64, [1 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 3
  %t39 = xor i1 %t37, true
  store i1 %t39, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 30
  %t45 = getelementptr %"compiler/typed:Plan", ptr %t44, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l30, !tbaa !27
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i64 %t47
  %t52 = load { i64, [2 x i64] }, ptr %t51
  store { i64, [2 x i64] } %t52, ptr %l3
  %t54 = load { i64, [2 x i64] }, ptr %l3
  %t56 = extractvalue { i64, [2 x i64] } %t54, 0
  %t57 = icmp eq i64 %t56, 1
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb14
bb12:
  %t61 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t62 = getelementptr { i32 }, ptr %t61, i32 0, i32 0
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l38, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lower:lowering", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 7
  %t72 = load i64, ptr %l2, !tbaa !24
  %t75 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/typed:Local" %t75, ptr %l43
  br label %bb13
bb13:
  %t76 = getelementptr %"compiler/typed:Local", ptr %l43, i32 0, i32 3
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load i32, ptr %l38, !tbaa !23
  %t80 = icmp eq i32 %t78, %t77
  store i1 %t80, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t82 = load i1, ptr %l36, !tbaa !21
  br i1 %t82, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t83 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t84 = getelementptr { i32 }, ptr %t83, i32 0, i32 0
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l5, !tbaa !23
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/lower:lowering", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 7
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t92, i64 %t93)
  store %"compiler/typed:Local" %t96, ptr %l51
  br label %bb18
bb18:
  %t97 = getelementptr %"compiler/typed:Local", ptr %l51, i32 0, i32 2
  %t98 = load i32, ptr %t97, !tbaa !23
  store i32 %t98, ptr %l6, !tbaa !23
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/lower:lowering", ptr %t100, i32 0, i32 2
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t104 = load i32, ptr %l6, !tbaa !23
  %t107 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t103, i32 %t104)
  store i1 %t107, ptr %l56
  br label %bb19
bb19:
  %t108 = load i1, ptr %l56, !tbaa !21
  br i1 %t108, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb28
bb21:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l6, !tbaa !23
  %t113 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l60
  br label %bb22
bb22:
  %t114 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t115 = load i32, ptr %l60, !tbaa !23
  %t117 = icmp ne i32 %t115, %t114
  br i1 %t117, label %bb23, label %bb24
bb23:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l64, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l6, !tbaa !23
  %t124 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l67
  br label %bb25
bb24:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb27
bb25:
  %t125 = load ptr, ptr %l64, !tbaa !29
  %t126 = load i32, ptr %l67, !tbaa !23
  %t127 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t125, i32 %t126)
  store i64 %t127, ptr %l68
  br label %bb26
bb26:
  %t128 = load i64, ptr %l68, !tbaa !24
  %t129 = icmp slt i64 %t128, 0
  store i1 %t129, ptr %l63, !tbaa !21
  br label %bb27
bb27:
  %t131 = load i1, ptr %l63, !tbaa !21
  store i1 %t131, ptr %l57, !tbaa !21
  br label %bb28
bb28:
  %t132 = load i1, ptr %l57, !tbaa !21
  br i1 %t132, label %bb29, label %bb30
bb29:
  br label %ret
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l2, !tbaa !24
  store i64 %t133, ptr %l7, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, [2 x i64] }, ptr %l3
  %t139 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t135, { i64, [2 x i64] } %t136)
  store { i64, [1 x i64] } %t139, ptr %l73
  br label %bb32
bb32:
  %t140 = load { i64, [1 x i64] }, ptr %l73
  store { i64, [1 x i64] } %t140, ptr %l8
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/lower:lowering", ptr %t141, i32 0, i32 3
  %t144 = getelementptr %"compiler/mir:Fn", ptr %t143, i32 0, i32 7
  %t145 = load i64, ptr %l7, !tbaa !24
  %t148 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v0, ptr %t144, i64 %t145)
  store ptr %t148, ptr %l77
  br label %bb33
bb33:
  %t149 = load ptr, ptr %l77, !tbaa !29
  %t151 = load { i64, [1 x i64] }, ptr %l8
  %t154 = getelementptr %"compiler/mir:Local", ptr %t149, i32 0, i32 4
  store { i64, [1 x i64] } %t151, ptr %t154
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/lower:pl"
  %l12 = alloca %"compiler/lower:pl"
  %l15 = alloca %"compiler/lower:pl"
  %l17 = alloca %"compiler/lower:pl"
  %l22 = alloca i32
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca { i64, [1 x i64] }
  %l29 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca %"compiler/lower:pl"
  %l35 = alloca %"compiler/lower:pl"
  %l36 = alloca %"compiler/mir:Lvalue"
  %l40 = alloca { i64, [4 x i64] }
  %l45 = alloca i1
  %l46 = alloca i1
  %l49 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca %"compiler/lower:pl"
  %l56 = alloca %"compiler/lower:pl"
  %l57 = alloca %"compiler/mir:Lvalue"
  %l61 = alloca { i64, [4 x i64] }
  %l64 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
  %l84 = alloca i32
  %l87 = alloca ptr
  %l88 = alloca { i64, [1 x i64] }
  %l89 = alloca ptr
  %l90 = alloca %"compiler/lower:pl"
  %l92 = alloca %"compiler/lower:pl"
  %l93 = alloca %"compiler/mir:Lvalue"
  %l99 = alloca i1
  %l103 = alloca i1
  %l107 = alloca i1
  %l111 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l115 = alloca { i64, [1 x i64] }
  %l116 = alloca i32
  %l117 = alloca ptr
  %l118 = alloca i32
  %l119 = alloca ptr
  %l120 = alloca %"compiler/lower:pl"
  %l122 = alloca %"compiler/lower:pl"
  %l123 = alloca %"compiler/mir:Lvalue"
  %l127 = alloca { i64, [4 x i64] }
  %l130 = alloca ptr
  %l131 = alloca %"compiler/lower:pl"
  %l133 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t44 = alloca { i64, [4 x i64] }, align 8
  %t50 = alloca { i64, [15 x i64] }, align 8
  %t62 = alloca { i64, [21 x i64] }, align 8
  %t102 = alloca { i64, [4 x i64] }, align 8
  %t108 = alloca { i64, [15 x i64] }, align 8
  %t149 = alloca { i64, [21 x i64] }, align 8
  %t184 = alloca { i64, [4 x i64] }, align 8
  %t238 = alloca { i64, [4 x i64] }, align 8
  %t244 = alloca { i64, [15 x i64] }, align 8
  %t256 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t2, ptr %l10
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l10)
  store %"compiler/lower:pl" %t4, ptr %l12
  br label %bb1
bb1:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load %"compiler/source:Span", ptr %l4
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = load %"compiler/lower:pl", ptr %l12
  %t11 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v1, ptr %v1, ptr %t7, %"compiler/lower:pl" %t8, i32 %t5, %"compiler/source:Span" %t6)
  store %"compiler/lower:pl" %t11, ptr %l15
  br label %bb2
bb2:
  %t13 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l15)
  store %"compiler/lower:pl" %t13, ptr %l17
  br label %bb3
bb3:
  %t14 = load %"compiler/lower:pl", ptr %l17
  store %"compiler/lower:pl" %t14, ptr %l1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 2
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l5, !tbaa !29
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l22
  br label %bb4
bb4:
  %t25 = load i32, ptr %l22, !tbaa !23
  store i32 %t25, ptr %l6, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisChar(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l25
  br label %bb5
bb5:
  %t31 = load i1, ptr %l25, !tbaa !21
  br i1 %t31, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l26, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t33, ptr %l27
  %t34 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t34, ptr %l28
  store i32 3, ptr %l29
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l30, !tbaa !29
  %t36 = load i32, ptr %l2, !tbaa !23
  store i32 %t36, ptr %l31, !tbaa !23
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l32, !tbaa !29
  %t38 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t38, ptr %l33
  %t40 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l33)
  store %"compiler/lower:pl" %t40, ptr %l35
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t41 = load ptr, ptr %l32, !tbaa !29
  %t42 = load %"compiler/lower:pl", ptr %l35
  %t43 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t41, %"compiler/lower:pl" %t42)
  store %"compiler/mir:Lvalue" %t43, ptr %l36
  br label %bb9
bb9:
  store { i64, [4 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 0
  store i64 1, ptr %t45
  %t46 = load %"compiler/mir:Lvalue", ptr %l36
  %t47 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t46, 0
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t47, ptr %t48
  %t49 = load { i64, [4 x i64] }, ptr %t44
  store { i64, [15 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [15 x i64] }, ptr %t50, i32 0, i32 0
  store i64 0, ptr %t51
  %t53 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t49, 0
  %t54 = getelementptr { i64, [15 x i64] }, ptr %t50, i32 0, i32 1
  store { { i64, [4 x i64] } } %t53, ptr %t54
  %t55 = load { i64, [15 x i64] }, ptr %t50
  %t56 = load %"compiler/source:Span", ptr %l4
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = load i32, ptr %l31, !tbaa !23
  %t61 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t57, i32 %t58, { i64, [15 x i64] } %t55, %"compiler/source:Span" %t56)
  store { i64, [4 x i64] } %t61, ptr %l40
  br label %bb10
bb10:
  store { i64, [21 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [21 x i64] }, ptr %t62, i32 0, i32 0
  store i64 8, ptr %t63
  %t64 = load %"compiler/source:Span", ptr %l27
  %t65 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t64, 0
  %t66 = load { i64, [1 x i64] }, ptr %l28
  %t67 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t65, { i64, [1 x i64] } %t66, 1
  %t68 = load i32, ptr %l29, !range !{i32 0, i32 8}
  %t69 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t67, i32 %t68, 2
  %t70 = load { i64, [4 x i64] }, ptr %l40
  %t71 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t69, { i64, [4 x i64] } %t70, 3
  %t72 = getelementptr { i64, [21 x i64] }, ptr %t62, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t71, ptr %t72
  %t73 = load { i64, [21 x i64] }, ptr %t62
  %t75 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 176, i64 8)
  store { i64, [21 x i64] } %t73, ptr %t75
  %t76 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s1, ptr %t76, ptr %t75)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l2, !tbaa !23
  %t82 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisText(ptr %v0, ptr %t78, i32 %t79)
  store i1 %t82, ptr %l45
  br label %bb13
bb13:
  %t83 = load i1, ptr %l45, !tbaa !21
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l2, !tbaa !23
  %t88 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ehasStr(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l49
  br label %bb16
bb15:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  %t89 = load i1, ptr %l49, !tbaa !21
  %t90 = xor i1 %t89, true
  store i1 %t90, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t92 = load i1, ptr %l46, !tbaa !21
  br i1 %t92, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l51, !tbaa !29
  %t94 = load i32, ptr %l2, !tbaa !23
  store i32 %t94, ptr %l52, !tbaa !23
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l53, !tbaa !29
  %t96 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t96, ptr %l54
  %t98 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l54)
  store %"compiler/lower:pl" %t98, ptr %l56
  br label %bb20
bb19:
  br label %bb33
bb20:
  %t99 = load ptr, ptr %l53, !tbaa !29
  %t100 = load %"compiler/lower:pl", ptr %l56
  %t101 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t99, %"compiler/lower:pl" %t100)
  store %"compiler/mir:Lvalue" %t101, ptr %l57
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 0
  store i64 1, ptr %t103
  %t104 = load %"compiler/mir:Lvalue", ptr %l57
  %t105 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t104, 0
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t105, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t102
  store { i64, [15 x i64] } zeroinitializer, ptr %t108
  %t109 = getelementptr { i64, [15 x i64] }, ptr %t108, i32 0, i32 0
  store i64 0, ptr %t109
  %t111 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t107, 0
  %t112 = getelementptr { i64, [15 x i64] }, ptr %t108, i32 0, i32 1
  store { { i64, [4 x i64] } } %t111, ptr %t112
  %t113 = load { i64, [15 x i64] }, ptr %t108
  %t114 = load %"compiler/source:Span", ptr %l4
  %t115 = load ptr, ptr %l51, !tbaa !29
  %t116 = load i32, ptr %l52, !tbaa !23
  %t119 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t115, i32 %t116, { i64, [15 x i64] } %t113, %"compiler/source:Span" %t114)
  store { i64, [4 x i64] } %t119, ptr %l61
  br label %bb22
bb22:
  %t120 = load { i64, [4 x i64] }, ptr %l61
  store { i64, [4 x i64] } %t120, ptr %l7
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t122 = load i32, ptr %l6, !tbaa !23
  %t125 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t121, i32 %t122)
  store i1 %t125, ptr %l64
  br label %bb23
bb23:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb24, label %bb25
bb24:
  %t127 = load ptr, ptr %l5, !tbaa !29
  %t128 = load i32, ptr %l6, !tbaa !23
  %t131 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t127, i32 %t128)
  store i1 %t131, ptr %l68
  br label %bb26
bb25:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb27
bb26:
  %t132 = load i1, ptr %l68, !tbaa !21
  store i1 %t132, ptr %l65, !tbaa !21
  br label %bb27
bb27:
  %t133 = load i1, ptr %l65, !tbaa !21
  br i1 %t133, label %bb28, label %bb29
bb28:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, [1 x i64] }, ptr %l3
  %t136 = load { i64, [4 x i64] }, ptr %l7
  %t137 = load i32, ptr %l2, !tbaa !23
  %t138 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderMaybeText(ptr %v0, ptr %t134, { i64, [1 x i64] } %t135, { i64, [4 x i64] } %t136, i32 %t137, %"compiler/source:Span" %t138, i32 1)
  br label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l4
  %t147 = load { i64, [1 x i64] }, ptr %l3
  %t148 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [21 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [21 x i64] }, ptr %t149, i32 0, i32 0
  store i64 8, ptr %t150
  %t152 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t146, 0
  %t154 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t152, { i64, [1 x i64] } %t147, 1
  %t156 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t154, i32 1, 2
  %t158 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t156, { i64, [4 x i64] } %t148, 3
  %t159 = getelementptr { i64, [21 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t158, ptr %t159
  %t160 = load { i64, [21 x i64] }, ptr %t149
  %t162 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 176, i64 8)
  store { i64, [21 x i64] } %t160, ptr %t162
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s4, ptr %t145, ptr %t162)
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb33:
  %t165 = load ptr, ptr %l5, !tbaa !29
  %t166 = load i32, ptr %l2, !tbaa !23
  %t169 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l84
  br label %bb34
bb34:
  %t170 = load i32, ptr %l84, !range !{i32 0, i32 33}
  %t172 = trunc i64 32 to i32
  %t173 = icmp eq i32 %t170, %t172
  br i1 %t173, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s5
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l87, !tbaa !29
  %t176 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t176, ptr %l88
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l89, !tbaa !29
  %t178 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t178, ptr %l90
  %t180 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s5, ptr %l90)
  store %"compiler/lower:pl" %t180, ptr %l92
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t181 = load ptr, ptr %l89, !tbaa !29
  %t182 = load %"compiler/lower:pl", ptr %l92
  %t183 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s5, ptr %t181, %"compiler/lower:pl" %t182)
  store %"compiler/mir:Lvalue" %t183, ptr %l93
  br label %bb38
bb38:
  store { i64, [4 x i64] } zeroinitializer, ptr %t184
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 0
  store i64 1, ptr %t185
  %t186 = load %"compiler/mir:Lvalue", ptr %l93
  %t187 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t186, 0
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t187, ptr %t188
  %t189 = load { i64, [4 x i64] }, ptr %t184
  %t190 = load i32, ptr %l2, !tbaa !23
  %t191 = load %"compiler/source:Span", ptr %l4
  %t192 = load ptr, ptr %l87, !tbaa !29
  %t193 = load { i64, [1 x i64] }, ptr %l88
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %t192, { i64, [1 x i64] } %t193, { i64, [4 x i64] } %t189, i32 %t190, %"compiler/source:Span" %t191)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb40:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l2, !tbaa !23
  %t201 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2escalar(ptr %v0, ptr %t197, i32 %t198)
  store i1 %t201, ptr %l99
  br label %bb41
bb41:
  %t202 = load i1, ptr %l99, !tbaa !21
  br i1 %t202, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s6
  store i32 7, ptr %l8
  %t204 = load ptr, ptr %l5, !tbaa !29
  %t205 = load i32, ptr %l6, !tbaa !23
  %t208 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t204, i32 %t205)
  store i1 %t208, ptr %l103
  br label %bb44
bb43:
  br label %bb60
bb44:
  %t209 = load i1, ptr %l103, !tbaa !21
  br i1 %t209, label %bb45, label %bb46
bb45:
  store i32 5, ptr %l8
  br label %bb55
bb46:
  %t211 = load ptr, ptr %l5, !tbaa !29
  %t212 = load i32, ptr %l6, !tbaa !23
  %t215 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t211, i32 %t212)
  store i1 %t215, ptr %l107
  br label %bb47
bb47:
  %t216 = load i1, ptr %l107, !tbaa !21
  br i1 %t216, label %bb48, label %bb49
bb48:
  store i32 4, ptr %l8
  br label %bb54
bb49:
  %t218 = load ptr, ptr %l5, !tbaa !29
  %t219 = load i32, ptr %l6, !tbaa !23
  %t222 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t218, i32 %t219)
  store i1 %t222, ptr %l111
  br label %bb50
bb50:
  %t223 = load i1, ptr %l111, !tbaa !21
  br i1 %t223, label %bb51, label %bb52
bb51:
  store i32 6, ptr %l8
  br label %bb53
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l113, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t226, ptr %l114
  %t227 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t227, ptr %l115
  %t228 = load i32, ptr %l8, !range !{i32 0, i32 8}
  store i32 %t228, ptr %l116
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l117, !tbaa !29
  %t230 = load i32, ptr %l2, !tbaa !23
  store i32 %t230, ptr %l118, !tbaa !23
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l119, !tbaa !29
  %t232 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t232, ptr %l120
  %t234 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s6, ptr %l120)
  store %"compiler/lower:pl" %t234, ptr %l122
  br label %bb56
bb56:
  %t235 = load ptr, ptr %l119, !tbaa !29
  %t236 = load %"compiler/lower:pl", ptr %l122
  %t237 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s6, ptr %t235, %"compiler/lower:pl" %t236)
  store %"compiler/mir:Lvalue" %t237, ptr %l123
  br label %bb57
bb57:
  store { i64, [4 x i64] } zeroinitializer, ptr %t238
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 0
  store i64 1, ptr %t239
  %t240 = load %"compiler/mir:Lvalue", ptr %l123
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
  %t250 = load %"compiler/source:Span", ptr %l4
  %t251 = load ptr, ptr %l117, !tbaa !29
  %t252 = load i32, ptr %l118, !tbaa !23
  %t255 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t251, i32 %t252, { i64, [15 x i64] } %t249, %"compiler/source:Span" %t250)
  store { i64, [4 x i64] } %t255, ptr %l127
  br label %bb58
bb58:
  store { i64, [21 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [21 x i64] }, ptr %t256, i32 0, i32 0
  store i64 8, ptr %t257
  %t258 = load %"compiler/source:Span", ptr %l114
  %t259 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t258, 0
  %t260 = load { i64, [1 x i64] }, ptr %l115
  %t261 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t259, { i64, [1 x i64] } %t260, 1
  %t262 = load i32, ptr %l116, !range !{i32 0, i32 8}
  %t263 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t261, i32 %t262, 2
  %t264 = load { i64, [4 x i64] }, ptr %l127
  %t265 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t263, { i64, [4 x i64] } %t264, 3
  %t266 = getelementptr { i64, [21 x i64] }, ptr %t256, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t265, ptr %t266
  %t267 = load { i64, [21 x i64] }, ptr %t256
  %t269 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t267, ptr %t269
  %t270 = load ptr, ptr %l113, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s6, ptr %t270, ptr %t269)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb60:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l130, !tbaa !29
  %t273 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t273, ptr %l131
  %t275 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l131)
  store %"compiler/lower:pl" %t275, ptr %l133
  br label %bb61
bb61:
  %t276 = load i32, ptr %l2, !tbaa !23
  %t277 = load { i64, [1 x i64] }, ptr %l3
  %t278 = load %"compiler/source:Span", ptr %l4
  %t279 = load ptr, ptr %l130, !tbaa !29
  %t280 = load %"compiler/lower:pl", ptr %l133
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAt(ptr %v0, ptr %s0, ptr %t279, %"compiler/lower:pl" %t280, i32 %t276, { i64, [1 x i64] } %t277, %"compiler/source:Span" %t278, i1 false)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einstance(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t8 = alloca { i64, [1 x i64] }, align 8
  %t83 = alloca { i64, [1 x i64] }, align 8
  %t94 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  store { i64, [1 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [1 x i64] }, ptr %t8, i32 0, i32 0
  store i64 2, ptr %t9
  %t10 = load { i64, [1 x i64] }, ptr %t8
  store { i64, [1 x i64] } %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l1, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 6
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l14
  br label %bb4
bb4:
  %t20 = load i64, ptr %l14, !tbaa !24
  store i64 %t20, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l21, !tbaa !24
  store i64 %t47, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l18, !tbaa !24
  store i64 %t48, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t57 = load i64, ptr %l1, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l3, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l6, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lower:lowering", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t70, i32 0, i32 6
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t72, i64 %t73)
  store { i64, [1 x i64] } %t76, ptr %l43
  br label %bb15
bb15:
  %t77 = load { i64, [1 x i64] }, ptr %l43
  %t79 = extractvalue { i64, [1 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 2
  br i1 %t80, label %bb16, label %bb17
bb16:
  %t82 = load i64, ptr %l6, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [1 x i64] }, ptr %t83, i32 0, i32 0
  store i64 1, ptr %t84
  %t86 = insertvalue { i64 } undef, i64 %t82, 0
  %t87 = getelementptr { i64, [1 x i64] }, ptr %t83, i32 0, i32 1
  store { i64 } %t86, ptr %t87
  %t88 = load { i64, [1 x i64] }, ptr %t83
  store { i64, [1 x i64] } %t88, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l5, !tbaa !24
  br label %bb11
bb20:
  store { i64, [1 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [1 x i64] }, ptr %t94, i32 0, i32 0
  store i64 2, ptr %t95
  %t96 = load { i64, [1 x i64] }, ptr %t94
  store { i64, [1 x i64] } %t96, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoin(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"compiler/lower:tryCtx"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i32
  %l21 = alloca i64
  %l24 = alloca %"compiler/lower:tryCtx"
  %l34 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l50 = alloca %"compiler/lower:tryCtx"
  %l52 = alloca %"compiler/lower:tryCtx"
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l76 = alloca %"compiler/lower:tryCtx"
  %l79 = alloca %"compiler/lower:tryCtx"
  %l80 = alloca i32
  %l81 = alloca i32
  %l84 = alloca i32
  %l85 = alloca i32
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Join", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinErrors(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i32 %t8, ptr %l18
  br label %bb1
bb1:
  %t9 = load i32, ptr %l18, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 12
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l21
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Join", ptr %t15, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l21, !tbaa !24
  %t21 = call %"compiler/lower:tryCtx" @compiler_2flower_3atryCtx_2ector(ptr %v1, ptr %v0, i64 %t19, { i64, ptr } %t18, i1 false, i1 false)
  store %"compiler/lower:tryCtx" %t21, ptr %l24
  br label %bb3
bb3:
  %t22 = load %"compiler/lower:tryCtx", ptr %l24
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/lower:tryCtx" %t22, ptr %t23
  store ptr %t23, ptr %l4, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Join", ptr %t25, i32 0, i32 2
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t42, ptr %l34, !tbaa !27
  %t43 = load i64, ptr %l6, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr ptr, ptr %t46, i64 %t43
  %t48 = load ptr, ptr %t47, !tbaa !39
  store ptr %t48, ptr %l8, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/lower:tryCtx", ptr %t50, i32 0, i32 4
  %t53 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t52, i32 %t53)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l6, !tbaa !24
  br label %bb4
bb10:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Join", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %t60, ptr %t64, i32 3, i32 %t65)
  br label %bb11
bb11:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lower:lowering", ptr %t70, i32 0, i32 21
  store ptr %t72, ptr %l48, !tbaa !29
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = load %"compiler/lower:tryCtx", ptr %t73
  store %"compiler/lower:tryCtx" %t75, ptr %l50
  %t77 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %l50)
  store %"compiler/lower:tryCtx" %t77, ptr %l52
  br label %bb12
bb12:
  %t78 = load ptr, ptr %l48, !tbaa !29
  %t79 = load %"compiler/lower:tryCtx", ptr %l52
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t78, %"compiler/lower:tryCtx" %t79)
  br label %bb13
bb13:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/lower:lowering", ptr %t80, i32 0, i32 22
  store ptr %t82, ptr %l54, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t83)
  store ptr %t85, ptr %l56
  br label %bb14
bb14:
  %t86 = load ptr, ptr %l56, !tbaa !29
  %t88 = getelementptr %"compiler/lower:level", ptr %t86, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t90 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t90, i32 %t89)
  br label %bb15
bb15:
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Join", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Block", ptr %t95, i32 0, i32 1
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t112 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t112, ptr %l68, !tbaa !27
  %t113 = load i64, ptr %l10, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr ptr, ptr %t116, i64 %t113
  %t118 = load ptr, ptr %t117, !tbaa !39
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t120, ptr %t118)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l10, !tbaa !24
  br label %bb16
bb22:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %t128)
  br label %bb23
bb23:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/lower:lowering", ptr %t130, i32 0, i32 21
  %t134 = call { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t132)
  %t135 = extractvalue { i32, %"compiler/lower:tryCtx" } %t134, 1
  %t136 = extractvalue { i32, %"compiler/lower:tryCtx" } %t134, 0
  store i32 %t136, ptr %l80
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb25, label %ok.138, !prof !99
ok.138:
  store %"compiler/lower:tryCtx" %t135, ptr %l79
  br label %bb24
bb24:
  %t139 = load %"compiler/lower:tryCtx", ptr %l79
  store %"compiler/lower:tryCtx" %t139, ptr %l76
  br label %bb27
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t140 = load %"compiler/lower:tryCtx", ptr %l76
  store %"compiler/lower:tryCtx" %t140, ptr %l13
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/lower:lowering", ptr %t141, i32 0, i32 22
  %t145 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t143)
  %t146 = extractvalue { i32, i32 } %t145, 1
  %t147 = extractvalue { i32, i32 } %t145, 0
  store i32 %t147, ptr %l85
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb29, label %ok.149, !prof !99
ok.149:
  store i32 %t146, ptr %l84
  br label %bb28
bb28:
  %t150 = load i32, ptr %l84, !tbaa !23
  store i32 %t150, ptr %l81, !tbaa !23
  br label %bb31
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t151 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t151, ptr %l86
  br label %bb32
bb32:
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l14
  %t153 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t153, ptr %l14)
  br label %bb33
bb33:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load %"compiler/lower:tryCtx", ptr %l13
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Join", ptr %t158, i32 0, i32 2
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t162 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t163 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eclauses(ptr %v0, ptr %s0, ptr %v1, ptr %s0, ptr %t156, %"compiler/lower:tryCtx" %t157, { i64, ptr } %t161, i32 %t162, i32 %t163, ptr %l14)
  br label %bb34
bb34:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t170, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t171)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2eleafPaths(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/free:leaf"
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca i64
  %l34 = alloca %"compiler/free:leaf"
  %l36 = alloca %"compiler/free:leaf"
  %l43 = alloca i64
  %l49 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca %"compiler/lower:relPath"
  %l56 = alloca %"compiler/lower:relPath"
  %l59 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %l96 = alloca ptr
  %l99 = alloca %"compiler/lower:relPath"
  %l101 = alloca %"compiler/lower:relPath"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/lower:Lowerer", ptr %t8, i32 0, i32 5
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_e5b6724f2c0e70f4_3544be27bc88d5e0)
  unreachable
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 5
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l3, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t27 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLeaves(ptr %v0, ptr %s1, ptr %t23, i32 %a1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l25
  br label %bb5
bb5:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t29 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %t29
  store ptr %t29, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load i64, ptr %l5, !tbaa !24
  store i64 %t31, ptr %l27, !tbaa !24
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s1, ptr %t32)
  store i64 %t34, ptr %l29
  br label %bb7
bb7:
  %t35 = load i64, ptr %l27, !tbaa !24
  %t36 = load i64, ptr %l29, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb9:
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s1, ptr %s1, ptr %t41, i64 %t42)
  store %"compiler/free:leaf" %t45, ptr %l34
  br label %bb11
bb11:
  %t47 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s2, ptr %l34)
  store %"compiler/free:leaf" %t47, ptr %l36
  br label %bb12
bb12:
  %t48 = load %"compiler/free:leaf", ptr %l36
  store %"compiler/free:leaf" %t48, ptr %l6
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t53, i32 0, i32 0
  %t56 = load i32, ptr %t55, !tbaa !23
  %t58 = sext i32 %t56 to i64
  %t59 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 1
  %t60 = load i64, ptr %t59, !tbaa !24
  %t64 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %t49, i64 %t58, i64 %t60)
  store i64 %t64, ptr %l43
  br label %bb13
bb13:
  %t65 = load i64, ptr %l43, !tbaa !24
  store i64 %t65, ptr %l7, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr @G_2ecompiler_2ffree_2eNotSole, !tbaa !24
  %t70 = icmp eq i64 %t66, %t67
  br i1 %t70, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb15:
  br label %bb16
bb16:
  %t72 = load ptr, ptr %l3, !tbaa !29
  %t73 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  %t77 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsHandle(ptr %v0, ptr %t72, i64 %t74)
  store i1 %t77, ptr %l49
  br label %bb17
bb17:
  %t78 = load i1, ptr %l49, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t81 = load ptr, ptr %lp2
  store ptr %t81, ptr %l51, !tbaa !29
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  %t87 = call %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %s4, i64 %t82, { i64, ptr } %t84)
  store %"compiler/lower:relPath" %t87, ptr %l54
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t89 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s4, ptr %l54)
  store %"compiler/lower:relPath" %t89, ptr %l56
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t91 = load %"compiler/lower:relPath", ptr %l56
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v1, ptr %s4, ptr %t90, %"compiler/lower:relPath" %t91)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb23:
  %t92 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l59, !tbaa !24
  %t98 = load i64, ptr %l59, !tbaa !24
  %t99 = icmp sge i64 %t98, 0
  br i1 %t99, label %bb24, label %bb25
bb24:
  %t101 = load i64, ptr %l59, !tbaa !24
  %t102 = icmp sle i64 %t101, 1152921504606846975
  br i1 %t102, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_dc337209e99dc7c1_dc835b0b512a4145)
  unreachable
bb26:
  %t104 = load i64, ptr %l59, !tbaa !24
  %t105 = mul i64 %t104, 8
  %t106 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t110 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 0
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  store i64 %t113, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l9, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_dc337209e99dc7c1_dc835b0b512a4145)
  unreachable
bb28:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb33
bb30:
  %t125 = load i64, ptr %l10, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l11, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l11, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l71, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb32
bb32:
  %t141 = load i64, ptr %l71, !tbaa !24
  store i64 %t141, ptr %l68, !tbaa !24
  br label %bb33
bb33:
  %t142 = load i64, ptr %l68, !tbaa !24
  store i64 %t142, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb34
bb34:
  %t143 = load i64, ptr %l13, !tbaa !24
  %t144 = load i64, ptr %l12, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  br label %bb37
bb37:
  %t151 = load i64, ptr %l9, !tbaa !24
  %t152 = load i64, ptr %l13, !tbaa !24
  %t153 = load i64, ptr %l11, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  store i64 %t159, ptr %l14, !tbaa !24
  %t161 = load i64, ptr %l14, !tbaa !24
  %t162 = load i64, ptr %l14, !tbaa !24
  %t163 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 0
  %t165 = getelementptr { i64, ptr }, ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i64, ptr %t166, i64 %t162
  %t168 = load i64, ptr %t167, !tbaa !34
  %t171 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i64, ptr %t172, i64 %t161
  store i64 %t168, ptr %t173, !tbaa !34
  br label %bb38
bb38:
  %t174 = load i64, ptr %l13, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l13, !tbaa !24
  br label %bb34
bb39:
  %t178 = getelementptr %"compiler/free:leaf", ptr %l6, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i64, ptr %t184, i64 %t181
  store i64 0, ptr %t185, !tbaa !34
  %t186 = load ptr, ptr %lp2
  store ptr %t186, ptr %l96, !tbaa !29
  %t187 = load i64, ptr %l7, !tbaa !24
  %t188 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t191 = call %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %s2, i64 %t187, { i64, ptr } %t188)
  store %"compiler/lower:relPath" %t191, ptr %l99
  br label %bb40
bb40:
  %t193 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s2, ptr %l99)
  store %"compiler/lower:relPath" %t193, ptr %l101
  br label %bb41
bb41:
  %t194 = load ptr, ptr %l96, !tbaa !29
  %t195 = load %"compiler/lower:relPath", ptr %l101
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v1, ptr %s2, ptr %t194, %"compiler/lower:relPath" %t195)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb43:
  %t196 = load i64, ptr %l5, !tbaa !24
  %t198 = add i64 %t196, 1
  store i64 %t198, ptr %l5, !tbaa !24
  br label %bb6
bb44:
  call void @__olang_scope_close(ptr %s1)
  %t200 = load ptr, ptr %lp2
  %t201 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t200
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t201, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"compiler/lower:loopCtx"
  %l9 = alloca i32
  %l15 = alloca ptr
  %l17 = alloca i32
  %l20 = alloca i64
  %l21 = alloca %"compiler/lower:loopCtx"
  %l25 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca ptr
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"compiler/lower:loopCtx"
  %l53 = alloca %"compiler/lower:loopCtx"
  %l54 = alloca i32
  %l55 = alloca ptr
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  %t5 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t3)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t7, i32 %t8)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t11, i32 %t12)
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 17
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Block", ptr %t18, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %l17, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 12
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l20
  br label %bb4
bb4:
  %t27 = load i32, ptr %l17, !tbaa !23
  %t28 = load i64, ptr %l20, !tbaa !24
  %t29 = call %"compiler/lower:loopCtx" @compiler_2flower_3aloopCtx_2ector(ptr %s0, i32 %t27, i64 %t28)
  store %"compiler/lower:loopCtx" %t29, ptr %l21
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load %"compiler/lower:loopCtx", ptr %l21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ePush_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %s0, ptr %t30, %"compiler/lower:loopCtx" %t31)
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 17
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 17
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eLen_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l28
  br label %bb8
bb8:
  %t44 = load i64, ptr %l28, !tbaa !24
  %t45 = sub i64 %t44, 1
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v0, ptr %t46, i64 %t45)
  store ptr %t48, ptr %l30
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l30, !tbaa !29
  store ptr %t49, ptr %l5, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l5, !tbaa !29
  %t53 = getelementptr %"compiler/lower:loopCtx", ptr %t51, i32 0, i32 4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v0, ptr %t50, ptr %t53)
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = getelementptr %"compiler/lower:loopCtx", ptr %t56, i32 0, i32 4
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t58)
  store i64 %t60, ptr %l36
  br label %bb11
bb11:
  %t61 = load i64, ptr %l36, !tbaa !24
  %t62 = icmp sgt i64 %t61, 0
  br i1 %t62, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l38, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t67 = getelementptr %"compiler/lower:loopCtx", ptr %t65, i32 0, i32 4
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l40
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %s1, ptr %l40)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l42
  br label %bb14
bb13:
  br label %bb21
bb14:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s1, ptr %t71, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72)
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb16, label %bb17
bb16:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v2, ptr %t79, ptr %t80)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t83, i32 %t84)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb21:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/lower:lowering", ptr %t87, i32 0, i32 17
  %t91 = call { i32, %"compiler/lower:loopCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ePop_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v0, ptr %t89)
  %t92 = extractvalue { i32, %"compiler/lower:loopCtx" } %t91, 1
  %t93 = extractvalue { i32, %"compiler/lower:loopCtx" } %t91, 0
  store i32 %t93, ptr %l54
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb23, label %ok.95, !prof !99
ok.95:
  store %"compiler/lower:loopCtx" %t92, ptr %l53
  br label %bb22
bb22:
  %t96 = load %"compiler/lower:loopCtx", ptr %l53
  store %"compiler/lower:loopCtx" %t96, ptr %l50
  br label %bb25
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  %t97 = load %"compiler/lower:loopCtx", ptr %l50
  store %"compiler/lower:loopCtx" %t97, ptr %l6
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l55, !tbaa !29
  %t99 = getelementptr %"compiler/lower:loopCtx", ptr %l6, i32 0, i32 3
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l56
  %t102 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l56)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l58
  br label %bb26
bb26:
  %t103 = load ptr, ptr %l55, !tbaa !29
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t103, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emovable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l24 = alloca %"compiler/typed:Local"
  %l28 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l50 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l91 = alloca i64
  %l98 = alloca i1
  %l99 = alloca i1
  %l103 = alloca i1
  %l104 = alloca i1
  %l108 = alloca ptr
  %l111 = alloca i1
  %l115 = alloca ptr
  %l119 = alloca i64
  %l127 = alloca i1
  %l140 = alloca i64
  %l155 = alloca i64
  %l158 = alloca i1
  %l164 = alloca i1
  %l166 = alloca { i64, ptr }
  %l176 = alloca i1
  %l178 = alloca { i64, ptr }
  %l186 = alloca ptr
  %l187 = alloca ptr
  %l191 = alloca i1
  %l195 = alloca i1
  %l197 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l210 = alloca i1
  %l219 = alloca { i64, ptr }
  %l230 = alloca i1
  %l233 = alloca ptr
  %l236 = alloca i32
  %l238 = alloca i1
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
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
  store %"compiler/typed:Local" %t10, ptr %l24
  br label %bb1
bb1:
  %t11 = load %"compiler/typed:Local", ptr %l24
  store %"compiler/typed:Local" %t11, ptr %l4
  %t12 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 7}
  %t15 = trunc i64 1 to i32
  %t16 = icmp eq i32 %t13, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 2
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t25 = load i32, ptr %t24, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t23, i32 %t25)
  store i1 %t28, ptr %l32
  br label %bb4
bb4:
  %t29 = load i1, ptr %l32, !tbaa !21
  store i1 %t29, ptr %l28, !tbaa !21
  br label %bb5
bb5:
  %t30 = load i1, ptr %l28, !tbaa !21
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb8
bb7:
  %t31 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 6
  %t32 = load i1, ptr %t31, !tbaa !21
  store i1 %t32, ptr %l33, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l33, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 45
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t38, i64 %t39)
  store i1 %t42, ptr %l39
  br label %bb12
bb12:
  %t43 = load i1, ptr %l39, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb16
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 44
  %t47 = load i64, ptr %l2, !tbaa !24
  %t50 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t46, i64 %t47)
  store i1 %t50, ptr %l44
  br label %bb15
bb15:
  %t51 = load i1, ptr %l44, !tbaa !21
  store i1 %t51, ptr %l40, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l40, !tbaa !21
  br i1 %t52, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb20
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 51
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t55, i64 %t56)
  store i1 %t59, ptr %l49
  br label %bb19
bb19:
  %t60 = load i1, ptr %l49, !tbaa !21
  store i1 %t60, ptr %l45, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l45, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb24
bb22:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/typed:LocalUses", ptr %t62, i32 0, i32 4
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t64, i64 %t65)
  store i1 %t68, ptr %l54
  br label %bb23
bb23:
  %t69 = load i1, ptr %l54, !tbaa !21
  store i1 %t69, ptr %l50, !tbaa !21
  br label %bb24
bb24:
  %t70 = load i1, ptr %l50, !tbaa !21
  br i1 %t70, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb28
bb26:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t73 = load i64, ptr %l2, !tbaa !24
  %t77 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %t71, ptr %t72, i64 %t73)
  store i1 %t77, ptr %l59
  br label %bb27
bb27:
  %t78 = load i1, ptr %l59, !tbaa !21
  store i1 %t78, ptr %l55, !tbaa !21
  br label %bb28
bb28:
  %t79 = load i1, ptr %l55, !tbaa !21
  br i1 %t79, label %bb29, label %bb30
bb29:
  store i1 false, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  store i64 0, ptr %l5, !tbaa !24
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/typed:LocalUses", ptr %t81, i32 0, i32 8
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t83)
  store i64 %t85, ptr %l63
  br label %bb32
bb32:
  %t86 = load i64, ptr %l63, !tbaa !24
  store i64 %t86, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l5, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb33, label %bb34
bb33:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb38
bb35:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l70, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb37
bb37:
  %t113 = load i64, ptr %l70, !tbaa !24
  store i64 %t113, ptr %l67, !tbaa !24
  br label %bb38
bb38:
  %t114 = load i64, ptr %l67, !tbaa !24
  store i64 %t114, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s4
  %t115 = load i64, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb68
bb41:
  br label %bb42
bb42:
  %t123 = load i64, ptr %l5, !tbaa !24
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l7, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l10, !tbaa !24
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/typed:LocalUses", ptr %t133, i32 0, i32 8
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t135, i64 %t136)
  store i64 %t139, ptr %l91
  br label %bb43
bb43:
  %t140 = load i64, ptr %l2, !tbaa !24
  %t141 = load i64, ptr %l91, !tbaa !24
  %t143 = icmp eq i64 %t141, %t140
  br i1 %t143, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s4)
  store i1 false, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/lower:lowering", ptr %t146, i32 0, i32 45
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t148, i64 %t149)
  store i1 %t152, ptr %l98
  br label %bb47
bb47:
  %t153 = load i1, ptr %l98, !tbaa !21
  br i1 %t153, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb51
bb49:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/lower:lowering", ptr %t154, i32 0, i32 44
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t156, i64 %t157)
  store i1 %t160, ptr %l103
  br label %bb50
bb50:
  %t161 = load i1, ptr %l103, !tbaa !21
  store i1 %t161, ptr %l99, !tbaa !21
  br label %bb51
bb51:
  %t162 = load i1, ptr %l99, !tbaa !21
  br i1 %t162, label %bb52, label %bb53
bb52:
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr %"compiler/typed:LocalUses", ptr %t163, i32 0, i32 9
  %t166 = load i64, ptr %l10, !tbaa !24
  %t169 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %s4, ptr %t165, i64 %t166)
  store ptr %t169, ptr %l108
  br label %bb54
bb53:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb55
bb54:
  %t170 = load ptr, ptr %l108, !tbaa !29
  %t171 = icmp eq ptr %t170, null
  %t173 = xor i1 %t171, true
  store i1 %t173, ptr %l104, !tbaa !21
  br label %bb55
bb55:
  %t175 = load i1, ptr %l104, !tbaa !21
  br i1 %t175, label %bb56, label %bb57
bb56:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/typed:LocalUses", ptr %t176, i32 0, i32 9
  %t179 = load i64, ptr %l10, !tbaa !24
  %t182 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %v1, ptr %t178, i64 %t179)
  store ptr %t182, ptr %l115
  br label %bb58
bb57:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb63
bb58:
  %t183 = load ptr, ptr %l115, !tbaa !29
  store ptr %t183, ptr %l11, !tbaa !29
  %t184 = load ptr, ptr %l11, !tbaa !29
  %t186 = icmp eq ptr %t184, null
  br i1 %t186, label %bb59, label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_15ef98c123c6a086_7d993f1b090e93a)
  unreachable
bb60:
  br label %bb61
bb61:
  %t188 = load ptr, ptr %l11, !tbaa !29
  %t190 = call i64 @compiler_2flower_2evalueRootLocal(ptr %v1, ptr %t188)
  store i64 %t190, ptr %l119
  br label %bb62
bb62:
  %t191 = load i64, ptr %l2, !tbaa !24
  %t192 = load i64, ptr %l119, !tbaa !24
  %t194 = icmp eq i64 %t192, %t191
  store i1 %t194, ptr %l111, !tbaa !21
  br label %bb63
bb63:
  %t196 = load i1, ptr %l111, !tbaa !21
  br i1 %t196, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s4)
  store i1 false, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s4)
  br label %bb67
bb67:
  %t198 = load i64, ptr %l9, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l9, !tbaa !24
  br label %bb39
bb68:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/lower:lowering", ptr %t202, i32 0, i32 31
  %t205 = load i1, ptr %t204, !tbaa !21
  br i1 %t205, label %bb69, label %bb70
bb69:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/lower:lowering", ptr %t207, i32 0, i32 0
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t212 = getelementptr %"compiler/lower:Lowerer", ptr %t210, i32 0, i32 5
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = icmp eq ptr %t213, null
  br i1 %t215, label %bb71, label %bb72
bb70:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb75
bb71:
  call void @__olang_check_failed(ptr @olang_loc_18102df1fd53c36d_7d565fea6dfdcc1)
  unreachable
bb72:
  br label %bb73
bb73:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/lower:lowering", ptr %t217, i32 0, i32 0
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/lower:Lowerer", ptr %t220, i32 0, i32 5
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/lower:lowering", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Body", ptr %t227, i32 0, i32 0
  %t230 = load i32, ptr %t229, !tbaa !23
  %t232 = sext i32 %t230 to i64
  %t233 = load i64, ptr %l2, !tbaa !24
  %t237 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedCopy(ptr %v0, ptr %t223, i64 %t232, i64 %t233)
  store i64 %t237, ptr %l140
  br label %bb74
bb74:
  %t238 = load i64, ptr %l3, !tbaa !24
  %t239 = load i64, ptr %l140, !tbaa !24
  %t241 = icmp eq i64 %t239, %t238
  store i1 %t241, ptr %l127, !tbaa !21
  br label %bb75
bb75:
  %t243 = load i1, ptr %l127, !tbaa !21
  br i1 %t243, label %bb76, label %bb77
bb76:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/lower:lowering", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/lower:Lowerer", ptr %t247, i32 0, i32 5
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = icmp eq ptr %t250, null
  br i1 %t252, label %bb78, label %bb79
bb77:
  br label %bb91
bb78:
  call void @__olang_check_failed(ptr @olang_loc_7273d5babac73458_596d6780ed01c38c)
  unreachable
bb79:
  br label %bb80
bb80:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/lower:lowering", ptr %t254, i32 0, i32 0
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/lower:Lowerer", ptr %t257, i32 0, i32 5
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/lower:lowering", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = getelementptr %"compiler/typed:Body", ptr %t264, i32 0, i32 0
  %t267 = load i32, ptr %t266, !tbaa !23
  %t269 = sext i32 %t267 to i64
  %t270 = load i64, ptr %l2, !tbaa !24
  %t274 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedSite(ptr %v0, ptr %t260, i64 %t269, i64 %t270)
  store i64 %t274, ptr %l155
  br label %bb81
bb81:
  %t275 = load i64, ptr %l155, !tbaa !24
  store i64 %t275, ptr %l12, !tbaa !24
  %t276 = load i64, ptr %l12, !tbaa !24
  %t278 = icmp sge i64 %t276, 0
  br i1 %t278, label %bb82, label %bb83
bb82:
  %t280 = load i64, ptr %l12, !tbaa !24
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/lower:lowering", ptr %t281, i32 0, i32 30
  %t284 = getelementptr %"compiler/typed:Plan", ptr %t283, i32 0, i32 5
  %t285 = load { i64, ptr }, ptr %t284, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t290 = icmp slt i64 %t280, %t287
  store i1 %t290, ptr %l158, !tbaa !21
  br label %bb84
bb83:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb84
bb84:
  %t292 = load i1, ptr %l158, !tbaa !21
  br i1 %t292, label %bb85, label %bb86
bb85:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/lower:lowering", ptr %t293, i32 0, i32 30
  %t296 = getelementptr %"compiler/typed:Plan", ptr %t295, i32 0, i32 5
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  store { i64, ptr } %t297, ptr %l166, !tbaa !27
  %t298 = load i64, ptr %l12, !tbaa !24
  %t300 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr i64, ptr %t301, i64 %t298
  %t303 = load i64, ptr %t302, !tbaa !34
  %t305 = icmp eq i64 %t303, 1
  store i1 %t305, ptr %l164, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb87
bb87:
  %t307 = load i1, ptr %l164, !tbaa !21
  br i1 %t307, label %bb88, label %bb89
bb88:
  store i1 true, ptr %rv
  br label %ret
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t309 = load i64, ptr %l3, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/lower:lowering", ptr %t310, i32 0, i32 30
  %t313 = getelementptr %"compiler/typed:Plan", ptr %t312, i32 0, i32 0
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t319 = icmp sge i64 %t309, %t316
  br i1 %t319, label %bb92, label %bb93
bb92:
  store i1 true, ptr %l176, !tbaa !21
  br label %bb94
bb93:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/lower:lowering", ptr %t321, i32 0, i32 30
  %t324 = getelementptr %"compiler/typed:Plan", ptr %t323, i32 0, i32 5
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !27
  store { i64, ptr } %t325, ptr %l178, !tbaa !27
  %t326 = load i64, ptr %l3, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr i64, ptr %t329, i64 %t326
  %t331 = load i64, ptr %t330, !tbaa !34
  %t333 = icmp ne i64 %t331, 0
  store i1 %t333, ptr %l176, !tbaa !21
  br label %bb94
bb94:
  %t335 = load i1, ptr %l176, !tbaa !21
  br i1 %t335, label %bb95, label %bb96
bb95:
  store i1 false, ptr %rv
  br label %ret
bb96:
  br label %bb97
bb97:
  %t337 = load ptr, ptr %l1, !tbaa !29
  %t339 = getelementptr %"compiler/typed:LocalUses", ptr %t337, i32 0, i32 9
  %t340 = load i64, ptr %l2, !tbaa !24
  %t343 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %v1, ptr %t339, i64 %t340)
  store ptr %t343, ptr %l186
  br label %bb98
bb98:
  %t344 = load ptr, ptr %l186, !tbaa !29
  %t345 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t344)
  store ptr %t345, ptr %l187
  br label %bb99
bb99:
  %t346 = load ptr, ptr %l187, !tbaa !29
  store ptr %t346, ptr %l13, !tbaa !29
  %t347 = load ptr, ptr %l13, !tbaa !29
  %t349 = icmp eq ptr %t347, null
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb100, label %bb101
bb100:
  %t353 = load ptr, ptr %l13, !tbaa !29
  %t355 = getelementptr %"compiler/typed:Call", ptr %t353, i32 0, i32 2
  %t356 = load i32, ptr %t355, !tbaa !23
  %t358 = icmp sge i32 %t356, 0
  store i1 %t358, ptr %l191, !tbaa !21
  br label %bb102
bb101:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb102
bb102:
  %t360 = load i1, ptr %l191, !tbaa !21
  br i1 %t360, label %bb103, label %bb104
bb103:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/lower:lowering", ptr %t361, i32 0, i32 30
  %t364 = getelementptr %"compiler/typed:Plan", ptr %t363, i32 0, i32 5
  %t365 = load { i64, ptr }, ptr %t364, !tbaa !27
  store { i64, ptr } %t365, ptr %l197, !tbaa !27
  %t366 = load ptr, ptr %l13, !tbaa !29
  %t368 = getelementptr %"compiler/typed:Call", ptr %t366, i32 0, i32 2
  %t369 = load i32, ptr %t368, !tbaa !23
  %t371 = sext i32 %t369 to i64
  %t373 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr i64, ptr %t374, i64 %t371
  %t376 = load i64, ptr %t375, !tbaa !34
  %t378 = icmp ne i64 %t376, 0
  store i1 %t378, ptr %l195, !tbaa !21
  br label %bb105
bb104:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb105
bb105:
  %t380 = load i1, ptr %l195, !tbaa !21
  br i1 %t380, label %bb106, label %bb107
bb106:
  store i1 false, ptr %rv
  br label %ret
bb107:
  br label %bb108
bb108:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/lower:lowering", ptr %t382, i32 0, i32 30
  %t385 = getelementptr %"compiler/typed:Plan", ptr %t384, i32 0, i32 0
  %t386 = load { i64, ptr }, ptr %t385, !tbaa !27
  store { i64, ptr } %t386, ptr %l205, !tbaa !27
  %t387 = load i64, ptr %l3, !tbaa !24
  %t389 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = getelementptr { i64, [2 x i64] }, ptr %t390, i64 %t387
  %t392 = load { i64, [2 x i64] }, ptr %t391
  store { i64, [2 x i64] } %t392, ptr %l14
  %t394 = load { i64, [2 x i64] }, ptr %l14
  %t396 = extractvalue { i64, [2 x i64] } %t394, 0
  %t397 = icmp eq i64 %t396, 2
  br i1 %t397, label %bb109, label %bb110
bb109:
  %t399 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t400 = getelementptr { i64 }, ptr %t399, i32 0, i32 0
  %t401 = load i64, ptr %t400
  store i64 %t401, ptr %l15, !tbaa !24
  %t403 = load i64, ptr %l2, !tbaa !24
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/lower:lowering", ptr %t404, i32 0, i32 30
  %t407 = getelementptr %"compiler/typed:Plan", ptr %t406, i32 0, i32 1
  %t408 = load { i64, ptr }, ptr %t407, !tbaa !27
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t413 = icmp slt i64 %t403, %t410
  store i1 %t413, ptr %l210, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb111
bb111:
  %t415 = load i1, ptr %l210, !tbaa !21
  br i1 %t415, label %bb112, label %bb113
bb112:
  %t416 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t417 = getelementptr { i64 }, ptr %t416, i32 0, i32 0
  %t418 = load i64, ptr %t417
  store i64 %t418, ptr %l16, !tbaa !24
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr %"compiler/lower:lowering", ptr %t420, i32 0, i32 30
  %t423 = getelementptr %"compiler/typed:Plan", ptr %t422, i32 0, i32 1
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !27
  store { i64, ptr } %t424, ptr %l219, !tbaa !27
  %t425 = load i64, ptr %l2, !tbaa !24
  %t427 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t428 = load ptr, ptr %t427, !tbaa !27
  %t429 = getelementptr { i64, [2 x i64] }, ptr %t428, i64 %t425
  %t430 = load { i64, [2 x i64] }, ptr %t429
  store { i64, [2 x i64] } %t430, ptr %l17
  %t432 = load { i64, [2 x i64] }, ptr %l17
  %t434 = extractvalue { i64, [2 x i64] } %t432, 0
  %t435 = icmp eq i64 %t434, 2
  br i1 %t435, label %bb114, label %bb115
bb113:
  br label %bb117
bb114:
  %t437 = getelementptr { i64, [2 x i64] }, ptr %l17, i32 0, i32 1
  %t438 = getelementptr { i64 }, ptr %t437, i32 0, i32 0
  %t439 = load i64, ptr %t438
  %t441 = load i64, ptr %l16, !tbaa !24
  %t445 = icmp eq i64 %t441, %t439
  store i1 %t445, ptr %rv
  br label %ret
bb115:
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t447 = load { i64, [2 x i64] }, ptr %l14
  %t449 = extractvalue { i64, [2 x i64] } %t447, 0
  %t450 = icmp eq i64 %t449, 1
  br i1 %t450, label %bb118, label %bb119
bb118:
  %t452 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t453 = getelementptr { i32 }, ptr %t452, i32 0, i32 0
  %t454 = load i32, ptr %t453
  store i32 %t454, ptr %l19, !tbaa !23
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/lower:lowering", ptr %t456, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !29
  store ptr %t459, ptr %l233, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load i64, ptr %l2, !tbaa !24
  %t464 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estorageBlock(ptr %v0, ptr %t460, i64 %t461)
  store i32 %t464, ptr %l236
  br label %bb120
bb119:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb122
bb120:
  %t465 = load i32, ptr %l19, !tbaa !23
  %t466 = load ptr, ptr %l233, !tbaa !29
  %t467 = load i32, ptr %l236, !tbaa !23
  %t469 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t466, i32 %t467, i32 %t465)
  store i1 %t469, ptr %l238
  br label %bb121
bb121:
  %t470 = load i1, ptr %l238, !tbaa !21
  store i1 %t470, ptr %l230, !tbaa !21
  br label %bb122
bb122:
  %t471 = load i1, ptr %l230, !tbaa !21
  store i1 %t471, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2emovesAtLastUse(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/typed:LastUses"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i1
  %l18 = alloca i1
  %l25 = alloca i64
  %l26 = alloca %"compiler/typed:LastUses"
  %l27 = alloca ptr
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l64 = alloca i64
  %l67 = alloca i64
  %l69 = alloca i1
  %l70 = alloca { i64, ptr }
  %l72 = alloca i64
  %l75 = alloca i64
  %l77 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca ptr
  %l80 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i1
  %l87 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca ptr
  %l95 = alloca i64
  %l98 = alloca ptr
  %l106 = alloca ptr
  %l107 = alloca i64
  %l113 = alloca ptr
  %l115 = alloca i64
  %l120 = alloca %"compiler/typed:Local"
  %l123 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t36 = alloca %"compiler/typed:LastUses", align 8
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
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 11
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  store i1 %t16, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:lowering", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 14
  %t25 = load i1, ptr %t24, !tbaa !21
  store i1 %t25, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Body", ptr %t31, i32 0, i32 7
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l25
  br label %bb10
bb10:
  %t37 = load i64, ptr %l25, !tbaa !24
  call void @compiler_2ftyped_3aLastUses_2ector(ptr %t36, ptr %s0, i64 %t37)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t36, i64 264, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l26, i64 264, i1 false)
  store ptr %l2, ptr %l27, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 11
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_fb069b64d7548fb8_fd74029d8d87e6e4)
  unreachable
bb13:
  br label %bb14
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Body", ptr %t51, i32 0, i32 11
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %s0, ptr %v0, ptr %t56, ptr %t54)
  br label %bb15
bb15:
  store i64 0, ptr %l3, !tbaa !24
  %t58 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 6
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t58)
  store i64 %t60, ptr %l37
  br label %bb16
bb16:
  %t61 = load i64, ptr %l37, !tbaa !24
  store i64 %t61, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load i64, ptr %l3, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb22
bb19:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l5, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l44, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb21
bb21:
  %t88 = load i64, ptr %l44, !tbaa !24
  store i64 %t88, ptr %l41, !tbaa !24
  br label %bb22
bb22:
  %t89 = load i64, ptr %l41, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb23
bb23:
  %t90 = load i64, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l6, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb24, label %bb25
bb24:
  br label %bb54
bb25:
  br label %bb26
bb26:
  %t98 = load i64, ptr %l3, !tbaa !24
  %t99 = load i64, ptr %l7, !tbaa !24
  %t100 = load i64, ptr %l5, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l8, !tbaa !24
  %t108 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 7
  %t109 = load i64, ptr %l8, !tbaa !24
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t108, i64 %t109)
  store i64 %t112, ptr %l64
  br label %bb27
bb27:
  %t113 = load i64, ptr %l64, !tbaa !24
  store i64 %t113, ptr %l9, !tbaa !24
  %t114 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 8
  %t115 = load i64, ptr %l8, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t114, i64 %t115)
  store i64 %t118, ptr %l67
  br label %bb28
bb28:
  %t119 = load i64, ptr %l67, !tbaa !24
  %t120 = icmp slt i64 %t119, 0
  br i1 %t120, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb32
bb30:
  %t122 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 1
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l70, !tbaa !27
  %t124 = load i64, ptr %l9, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i64, ptr %t127, i64 %t124
  %t129 = load i64, ptr %t128, !tbaa !34
  store i64 %t129, ptr %l72, !tbaa !24
  %t130 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 8
  %t131 = load i64, ptr %l8, !tbaa !24
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t130, i64 %t131)
  store i64 %t134, ptr %l75
  br label %bb31
bb31:
  %t135 = load i64, ptr %l72, !tbaa !24
  %t136 = load i64, ptr %l75, !tbaa !24
  %t137 = icmp ne i64 %t135, %t136
  store i1 %t137, ptr %l69, !tbaa !21
  br label %bb32
bb32:
  %t139 = load i1, ptr %l69, !tbaa !21
  br i1 %t139, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb37
bb34:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l78, !tbaa !29
  store ptr %a1, ptr %l79, !tbaa !29
  %t142 = load i64, ptr %l9, !tbaa !24
  store i64 %t142, ptr %l80, !tbaa !24
  %t143 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 6
  %t144 = load i64, ptr %l8, !tbaa !24
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t143, i64 %t144)
  store i64 %t147, ptr %l83
  br label %bb35
bb35:
  %t148 = load ptr, ptr %l78, !tbaa !29
  %t149 = load ptr, ptr %l79, !tbaa !29
  %t150 = load i64, ptr %l80, !tbaa !24
  %t151 = load i64, ptr %l83, !tbaa !24
  %t152 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emovable(ptr %v0, ptr %v1, ptr %t148, ptr %t149, i64 %t150, i64 %t151)
  store i1 %t152, ptr %l84
  br label %bb36
bb36:
  %t153 = load i1, ptr %l84, !tbaa !21
  %t154 = xor i1 %t153, true
  store i1 %t154, ptr %l77, !tbaa !21
  br label %bb37
bb37:
  %t156 = load i1, ptr %l77, !tbaa !21
  br i1 %t156, label %bb38, label %bb39
bb38:
  br label %bb53
bb39:
  br label %bb40
bb40:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/lower:lowering", ptr %t157, i32 0, i32 46
  store ptr %t159, ptr %l87, !tbaa !29
  %t160 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 6
  %t161 = load i64, ptr %l8, !tbaa !24
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t160, i64 %t161)
  store i64 %t164, ptr %l90
  br label %bb41
bb41:
  %t165 = load ptr, ptr %l87, !tbaa !29
  %t166 = load i64, ptr %l90, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t165, i64 %t166, i1 true)
  br label %bb42
bb42:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/lower:lowering", ptr %t167, i32 0, i32 58
  store ptr %t169, ptr %l92, !tbaa !29
  %t170 = getelementptr %"compiler/typed:LastUses", ptr %l2, i32 0, i32 6
  %t171 = load i64, ptr %l8, !tbaa !24
  %t174 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t170, i64 %t171)
  store i64 %t174, ptr %l95
  br label %bb43
bb43:
  %t175 = load i64, ptr %l9, !tbaa !24
  %t176 = load ptr, ptr %l92, !tbaa !29
  %t177 = load i64, ptr %l95, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t176, i64 %t177, i64 %t175)
  br label %bb44
bb44:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/lower:lowering", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  store ptr %t182, ptr %l98, !tbaa !29
  %t183 = load ptr, ptr %l98, !tbaa !29
  %t184 = getelementptr %"compiler/lower:Lowerer", ptr %t183, i32 0, i32 28
  %t185 = load i64, ptr %t184, !tbaa !24
  %t187 = add i64 %t185, 1
  %t189 = load ptr, ptr %l98, !tbaa !29
  %t190 = getelementptr %"compiler/lower:Lowerer", ptr %t189, i32 0, i32 28
  store i64 %t187, ptr %t190, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/lower:lowering", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/lower:Lowerer", ptr %t194, i32 0, i32 32
  %t197 = load i1, ptr %t196, !tbaa !21
  br i1 %t197, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s5
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/lower:lowering", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/lower:Lowerer", ptr %t202, i32 0, i32 33
  store ptr %t204, ptr %l106, !tbaa !29
  %t205 = ptrtoint ptr %v0 to i64
  store i64 %t205, ptr %l107, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t206, label %bb47, label %bb48
bb46:
  br label %bb52
bb47:
  %t208 = call ptr @__olang_region_make(ptr %v0)
  %t209 = ptrtoint ptr %t208 to i64
  store i64 %t209, ptr %l107, !tbaa !24
  br label %bb48
bb48:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/lower:lowering", ptr %t210, i32 0, i32 0
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = getelementptr %"compiler/lower:Lowerer", ptr %t213, i32 0, i32 0
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t218 = getelementptr %"compiler/generic:Program", ptr %t216, i32 0, i32 0
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = getelementptr %"compiler/load:Loader", ptr %t219, i32 0, i32 4
  %t222 = load ptr, ptr %t221, !tbaa !29
  store ptr %t222, ptr %l113, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/lower:lowering", ptr %t223, i32 0, i32 7
  %t226 = load i64, ptr %t225, !tbaa !24
  store i64 %t226, ptr %l115, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/lower:lowering", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = getelementptr %"compiler/typed:Body", ptr %t230, i32 0, i32 7
  %t233 = load i64, ptr %l9, !tbaa !24
  %t236 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t232, i64 %t233)
  store %"compiler/typed:Local" %t236, ptr %l120
  br label %bb49
bb49:
  %t237 = getelementptr %"compiler/typed:Local", ptr %l120, i32 0, i32 1
  %t238 = getelementptr %"compiler/source:Span", ptr %t237, i32 0, i32 0
  %t239 = load i32, ptr %t238, !tbaa !23
  %t241 = sext i32 %t239 to i64
  %t242 = load ptr, ptr %l113, !tbaa !29
  %t243 = load i64, ptr %l115, !tbaa !24
  %t245 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s5, ptr %t242, i64 %t243, i64 %t241)
  store { i64, ptr } %t245, ptr %l123
  br label %bb50
bb50:
  %t246 = load i64, ptr %l9, !tbaa !24
  %t247 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = extractvalue { i64, ptr } %t247, 0
  %t250 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t251 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t252 = add i64 %t249, %t251
  %t254 = call i64 @__olang_fmt_i64(ptr null, i64 %t246)
  %t255 = add i64 %t252, %t254
  %t256 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t258 = add i64 %t255, %t257
  %t259 = load i64, ptr %l107
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = call ptr @__olang_scope_alloc(ptr %t260, i64 %t258)
  call void @olang_textcopy(ptr %t261, ptr %t248, i64 %t249)
  %t262 = getelementptr i8, ptr %t261, i64 %t249
  call void @olang_textcopy(ptr %t262, ptr %t250, i64 %t251)
  %t263 = getelementptr i8, ptr %t262, i64 %t251
  %t264 = call i64 @__olang_fmt_i64(ptr %t263, i64 %t246)
  %t265 = getelementptr i8, ptr %t263, i64 %t254
  call void @olang_textcopy(ptr %t265, ptr %t256, i64 %t257)
  %t266 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t261, 1
  %t269 = load i64, ptr %l107
  %t270 = inttoptr i64 %t269 to ptr
  %t271 = extractvalue { i64, ptr } %t267, 0
  %t272 = extractvalue { i64, ptr } %t267, 1
  %t273 = mul i64 %t271, 1
  %t274 = call ptr @__olang_scope_alloc(ptr %t270, i64 %t273)
  call void @llvm.memcpy.p0.p0.i64(ptr %t274, ptr %t272, i64 %t273, i1 false)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t274, 1
  %t277 = load ptr, ptr %l106, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t277, { i64, ptr } %t276)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t279 = load i64, ptr %l7, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l7, !tbaa !24
  br label %bb23
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emutStorage(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
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
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 8
  %t40 = load i1, ptr %t39, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca i32
  %l20 = alloca %"compiler/typed:BlockInfo"
  %l23 = alloca i32
  %l24 = alloca ptr
  %l31 = alloca %"compiler/typed:BlockInfo"
  %l37 = alloca ptr
  %l42 = alloca %"compiler/lower:level"
  %s0 = alloca %olang.scope
  %t61 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  store ptr %t3, ptr %l6, !tbaa !29
  %t4 = load i32, ptr %l2, !range !{i32 0, i32 7}
  store i32 %t4, ptr %l7
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t5)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  %t10 = getelementptr %"compiler/lower:level", ptr %t8, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  store i32 %t11, ptr %l11, !tbaa !23
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Block", ptr %t12, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  store i32 %t15, ptr %l13, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 8
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Block", ptr %t22, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t21, i64 %t27)
  store %"compiler/typed:BlockInfo" %t30, ptr %l20
  br label %bb2
bb2:
  %t31 = getelementptr %"compiler/typed:BlockInfo", ptr %l20, i32 0, i32 2
  %t32 = load %"compiler/source:Span", ptr %t31
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t35 = load i32, ptr %l7, !range !{i32 0, i32 7}
  %t36 = load i32, ptr %l11, !tbaa !23
  %t37 = load i32, ptr %l13, !tbaa !23
  %t40 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t34, i32 %t35, i32 %t36, i32 %t37, %"compiler/source:Span" %t32, i32 %a3)
  store i32 %t40, ptr %l23
  br label %bb3
bb3:
  %t41 = load i32, ptr %l23, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l24, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t46, i32 0, i32 8
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Block", ptr %t49, i32 0, i32 0
  %t52 = load i32, ptr %t51, !tbaa !23
  %t54 = sext i32 %t52 to i64
  %t57 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t48, i64 %t54)
  store %"compiler/typed:BlockInfo" %t57, ptr %l31
  br label %bb4
bb4:
  %t58 = getelementptr %"compiler/typed:BlockInfo", ptr %l31, i32 0, i32 2
  %t59 = load %"compiler/source:Span", ptr %t58
  %t60 = load i32, ptr %l4, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [21 x i64] }, ptr %t61, i32 0, i32 0
  store i64 3, ptr %t62
  %t64 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t59, 0
  %t66 = insertvalue { %"compiler/source:Span", i32 } %t64, i32 %t60, 1
  %t67 = getelementptr { i64, [21 x i64] }, ptr %t61, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t66, ptr %t67
  %t68 = load { i64, [21 x i64] }, ptr %t61
  %t70 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t68, ptr %t70
  %t71 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t71, ptr %t70)
  br label %bb5
bb5:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lower:lowering", ptr %t73, i32 0, i32 12
  store ptr %t75, ptr %l37, !tbaa !29
  %t76 = load i32, ptr %l4, !tbaa !23
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Block", ptr %t77, i32 0, i32 0
  %t80 = load i32, ptr %t79, !tbaa !23
  %t81 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t85 = call %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %s0, i32 %t76, i32 %t80, i32 %t81)
  store %"compiler/lower:level" %t85, ptr %l42
  br label %bb6
bb6:
  %t86 = load ptr, ptr %l37, !tbaa !29
  %t87 = load %"compiler/lower:level", ptr %l42
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t86, %"compiler/lower:level" %t87)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i1
  %l16 = alloca { i64, [4 x i64] }
  %l22 = alloca { i64, [4 x i64] }
  %l28 = alloca i32
  %l30 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca %"compiler/lower:pl"
  %l44 = alloca { i64, [4 x i64] }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, [4 x i64] }
  %l51 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca ptr
  %l57 = alloca %"compiler/lower:pl"
  %l60 = alloca { i64, [4 x i64] }
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t62 = alloca { i64, [2 x i64] }, align 8
  %t109 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i1, ptr %l10, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l15
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t20 = load i1, ptr %l15, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, [4 x i64] }, ptr %l1
  %t23 = load i32, ptr %l2, !tbaa !23
  %t24 = load %"compiler/source:Span", ptr %l4
  %t25 = load { i64, [1 x i64] }, ptr %l3
  %t31 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t21, { i64, [4 x i64] } %t22, i32 %t23, %"compiler/source:Span" %t24, { i64, [1 x i64] } %t25, i1 false)
  store { i64, [4 x i64] } %t31, ptr %l22
  br label %bb7
bb6:
  %t32 = load { i64, [4 x i64] }, ptr %l1
  store { i64, [4 x i64] } %t32, ptr %l16
  br label %bb8
bb7:
  %t34 = load { i64, [4 x i64] }, ptr %l22
  store { i64, [4 x i64] } %t34, ptr %l16
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load { i64, [4 x i64] }, ptr %l16
  store { i64, [4 x i64] } %t35, ptr %rv
  br label %ret
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, [4 x i64] }, ptr %l1
  %t38 = load i32, ptr %l2, !tbaa !23
  %t39 = load %"compiler/source:Span", ptr %l4
  %t44 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t36, { i64, [4 x i64] } %t37, i32 %t38, %"compiler/source:Span" %t39)
  store i32 %t44, ptr %l28
  br label %bb10
bb10:
  %t45 = load i32, ptr %l28, !tbaa !23
  store i32 %t45, ptr %l6, !tbaa !23
  br i1 %a5, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l34
  br label %bb13
bb12:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t56 = load i1, ptr %l34, !tbaa !21
  store i1 %t56, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l30, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l35, !tbaa !29
  store i32 5, ptr %l36
  %t59 = load i32, ptr %l2, !tbaa !23
  store i32 %t59, ptr %l37, !tbaa !23
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l38, !tbaa !29
  %t61 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 0
  store i64 1, ptr %t63
  %t65 = insertvalue { i32 } undef, i32 %t61, 0
  %t66 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  store { i32 } %t65, ptr %t66
  %t67 = load { i64, [2 x i64] }, ptr %t62
  %t69 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s2, { i64, [2 x i64] } %t67)
  store %"compiler/lower:pl" %t69, ptr %l41
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t70 = load i32, ptr %l2, !tbaa !23
  %t71 = load %"compiler/source:Span", ptr %l4
  %t72 = load ptr, ptr %l38, !tbaa !29
  %t73 = load %"compiler/lower:pl", ptr %l41
  %t76 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s2, ptr %t72, %"compiler/lower:pl" %t73, i32 %t70, %"compiler/source:Span" %t71)
  store { i64, [4 x i64] } %t76, ptr %l44
  br label %bb18
bb18:
  %t77 = mul i64 1, 40
  %t78 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t77)
  %t79 = insertvalue { i64, ptr } undef, i64 1, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l45, !tbaa !27
  %t81 = load { i64, [4 x i64] }, ptr %l44
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t83, i64 0
  store { i64, [4 x i64] } %t81, ptr %t84
  %t85 = load { i64, [1 x i64] }, ptr %l3
  %t86 = mul i64 1, 16
  %t87 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 1, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l47, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, [1 x i64] }, ptr %t92, i64 0
  store { i64, [1 x i64] } %t85, ptr %t93
  %t94 = load i32, ptr %l2, !tbaa !23
  %t95 = load %"compiler/source:Span", ptr %l4
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i32, ptr %l36, !range !{i32 0, i32 8}
  %t98 = load i32, ptr %l37, !tbaa !23
  %t99 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t103 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s2, ptr %s2, ptr %t96, i32 %t97, i32 %t98, { i64, ptr } %t99, { i64, ptr } %t100, i32 %t94, %"compiler/source:Span" %t95)
  store { i64, [4 x i64] } %t103, ptr %l50
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t104 = load { i64, [4 x i64] }, ptr %l50
  store { i64, [4 x i64] } %t104, ptr %rv
  br label %ret
bb20:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l51, !tbaa !29
  store i32 4, ptr %l52
  %t106 = load i32, ptr %l2, !tbaa !23
  store i32 %t106, ptr %l53, !tbaa !23
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l54, !tbaa !29
  %t108 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 0
  store i64 1, ptr %t110
  %t112 = insertvalue { i32 } undef, i32 %t108, 0
  %t113 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 1
  store { i32 } %t112, ptr %t113
  %t114 = load { i64, [2 x i64] }, ptr %t109
  %t116 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t114)
  store %"compiler/lower:pl" %t116, ptr %l57
  br label %bb21
bb21:
  %t117 = load i32, ptr %l2, !tbaa !23
  %t118 = load %"compiler/source:Span", ptr %l4
  %t119 = load ptr, ptr %l54, !tbaa !29
  %t120 = load %"compiler/lower:pl", ptr %l57
  %t123 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s0, ptr %t119, %"compiler/lower:pl" %t120, i32 %t117, %"compiler/source:Span" %t118)
  store { i64, [4 x i64] } %t123, ptr %l60
  br label %bb22
bb22:
  %t124 = mul i64 1, 40
  %t125 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 1, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l61, !tbaa !27
  %t128 = load { i64, [4 x i64] }, ptr %l60
  %t129 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t130, i64 0
  store { i64, [4 x i64] } %t128, ptr %t131
  %t132 = load { i64, [1 x i64] }, ptr %l3
  %t133 = mul i64 1, 16
  %t134 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t133)
  %t135 = insertvalue { i64, ptr } undef, i64 1, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  store { i64, ptr } %t136, ptr %l63, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, [1 x i64] }, ptr %t139, i64 0
  store { i64, [1 x i64] } %t132, ptr %t140
  %t141 = load i32, ptr %l2, !tbaa !23
  %t142 = load %"compiler/source:Span", ptr %l4
  %t143 = load ptr, ptr %l51, !tbaa !29
  %t144 = load i32, ptr %l52, !range !{i32 0, i32 8}
  %t145 = load i32, ptr %l53, !tbaa !23
  %t146 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t150 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s0, ptr %s0, ptr %t143, i32 %t144, i32 %t145, { i64, ptr } %t146, { i64, ptr } %t147, i32 %t141, %"compiler/source:Span" %t142)
  store { i64, [4 x i64] } %t150, ptr %l66
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t151 = load { i64, [4 x i64] }, ptr %l66
  store { i64, [4 x i64] } %t151, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %lp5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca %"compiler/lower:pl"
  %l10 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %l16 = alloca ptr
  %l21 = alloca i1
  %l26 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i32
  %l34 = alloca %"compiler/mir:Lvalue"
  %l38 = alloca { i64, [4 x i64] }
  %l41 = alloca i32
  %l43 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t60 = alloca { i64, [15 x i64] }, align 8
  %t81 = alloca { i64, [2 x i64] }, align 8
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
  store ptr %t1, ptr %l7, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l8
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l8)
  store %"compiler/lower:pl" %t4, ptr %l10
  br label %bb1
bb1:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = load %"compiler/lower:pl", ptr %l10
  %t11 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epackedField(ptr %v0, ptr %v2, ptr %v2, ptr %t7, %"compiler/lower:pl" %t8, i32 %t5, i64 %t6)
  store %"compiler/lower:pl" %t11, ptr %l13
  br label %bb2
bb2:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t12, ptr %lp5
  %t13 = load %"compiler/lower:pl", ptr %l13
  %t14 = load ptr, ptr %lp5
  store %"compiler/lower:pl" %t13, ptr %t14
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l16
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i32, ptr %l2, !tbaa !23
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t31 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t27, ptr %t24, i32 %t25, i64 %t26)
  store i1 %t31, ptr %l21
  br label %bb4
bb4:
  %t32 = load i1, ptr %l21, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %lp5
  %t36 = load %"compiler/lower:pl", ptr %t35
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/lower:pl" %t36, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t38, i32 %t39)
  store { i64, ptr } %t42, ptr %l26
  br label %bb8
bb8:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i32, ptr %t46, i64 %t43
  %t48 = load i32, ptr %t47, !tbaa !33
  store i32 %t48, ptr %l6, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l30, !tbaa !29
  %t52 = load i32, ptr %l6, !tbaa !23
  store i32 %t52, ptr %l31, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %lp5
  %t55 = load %"compiler/lower:pl", ptr %t54
  %t58 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t53, %"compiler/lower:pl" %t55)
  store %"compiler/mir:Lvalue" %t58, ptr %l34
  br label %bb9
bb9:
  %t59 = load i32, ptr %l6, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [15 x i64] }, ptr %t60, i32 0, i32 0
  store i64 21, ptr %t61
  %t62 = load %"compiler/mir:Lvalue", ptr %l34
  %t63 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t62, 0
  %t65 = insertvalue { %"compiler/mir:Lvalue", i32 } %t63, i32 %t59, 1
  %t66 = getelementptr { i64, [15 x i64] }, ptr %t60, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t65, ptr %t66
  %t67 = load { i64, [15 x i64] }, ptr %t60
  %t68 = load %"compiler/source:Span", ptr %l4
  %t69 = load ptr, ptr %l30, !tbaa !29
  %t70 = load i32, ptr %l31, !tbaa !23
  %t73 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t69, i32 %t70, { i64, [15 x i64] } %t67, %"compiler/source:Span" %t68)
  store { i64, [4 x i64] } %t73, ptr %l38
  br label %bb10
bb10:
  %t74 = load i32, ptr %l6, !tbaa !23
  %t75 = load %"compiler/source:Span", ptr %l4
  %t76 = load ptr, ptr %l29, !tbaa !29
  %t77 = load { i64, [4 x i64] }, ptr %l38
  %t80 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t76, { i64, [4 x i64] } %t77, i32 %t74, %"compiler/source:Span" %t75)
  store i32 %t80, ptr %l41
  br label %bb11
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 0
  store i64 1, ptr %t82
  %t83 = load i32, ptr %l41, !tbaa !23
  %t84 = insertvalue { i32 } undef, i32 %t83, 0
  %t85 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 1
  store { i32 } %t84, ptr %t85
  %t86 = load { i64, [2 x i64] }, ptr %t81
  %t88 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t86)
  store %"compiler/lower:pl" %t88, ptr %l43
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load %"compiler/lower:pl", ptr %l43
  store %"compiler/lower:pl" %t89, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceCount(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, ptr }
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
  %l15 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l29 = alloca i1
  %l32 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca %"compiler/mir:Local"
  %l42 = alloca i32
  %l43 = alloca i1
  %l50 = alloca i64
  %l53 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l108 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/mir:Lvalue", ptr %l1
  %t5 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etempPart(ptr %v0, ptr %t1, %"compiler/mir:Lvalue" %t2)
  store i1 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i1, ptr %l19, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load %"compiler/mir:Lvalue", ptr %l1
  %t12 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eprojsOf(ptr %v0, ptr %s0, ptr %t8, %"compiler/mir:Lvalue" %t9)
  store { i64, ptr } %t12, ptr %l23
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t13, ptr %l2, !tbaa !27
  %t14 = load %"compiler/mir:Lvalue", ptr %l1
  %t16 = call i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %t14)
  store i64 %t16, ptr %l25
  br label %bb6
bb6:
  %t17 = load i64, ptr %l25, !tbaa !24
  store i64 %t17, ptr %l3, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t22 = icmp eq i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  store i1 %t26, ptr %l29, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l29, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l34, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lower:lowering", ptr %t33, i32 0, i32 2
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l36, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:lowering", ptr %t37, i32 0, i32 3
  %t40 = getelementptr %"compiler/mir:Fn", ptr %t39, i32 0, i32 7
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t40, i64 %t41)
  store %"compiler/mir:Local" %t44, ptr %l40
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb15
bb12:
  %t45 = getelementptr %"compiler/mir:Local", ptr %l40, i32 0, i32 2
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = load ptr, ptr %l36, !tbaa !29
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t47, i32 %t46)
  store i32 %t49, ptr %l42
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l34, !tbaa !29
  %t51 = load i32, ptr %l42, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t52, ptr %l43
  br label %bb14
bb14:
  %t53 = load i1, ptr %l43, !tbaa !21
  store i1 %t53, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t54 = load i1, ptr %l32, !tbaa !21
  br i1 %t54, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = icmp sgt i64 %t60, %t61
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb24
bb21:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t74 = sub i64 %t70, %t71
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t74, %t75
  %t80 = sub i64 %t78, 1
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = sdiv i64 %t80, %t81
  store i64 %t84, ptr %l53, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb23
bb23:
  %t86 = load i64, ptr %l53, !tbaa !24
  store i64 %t86, ptr %l50, !tbaa !24
  br label %bb24
bb24:
  %t87 = load i64, ptr %l50, !tbaa !24
  store i64 %t87, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l8, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb26, label %bb27
bb26:
  br label %bb33
bb27:
  br label %bb28
bb28:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l7, !tbaa !24
  %t101 = mul i64 %t97, %t98
  %t104 = add i64 %t96, %t101
  store i64 %t104, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, [1 x i64] }, ptr %t109, i64 %t106
  %t111 = load { i64, [1 x i64] }, ptr %t110
  %t113 = extractvalue { i64, [1 x i64] } %t111, 0
  %t114 = icmp eq i64 %t113, 3
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l10, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l4, !tbaa !24
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t120 = load i64, ptr %l9, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l9, !tbaa !24
  br label %bb25
bb33:
  %t124 = load i64, ptr %l4, !tbaa !24
  store i64 %t124, ptr %l11, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l12, !tbaa !24
  %t131 = load i64, ptr %l11, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb34, label %bb35
bb34:
  %t136 = load i64, ptr %l13, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb39
bb36:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l11, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l13, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l13, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l87, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb38
bb38:
  %t156 = load i64, ptr %l87, !tbaa !24
  store i64 %t156, ptr %l84, !tbaa !24
  br label %bb39
bb39:
  %t157 = load i64, ptr %l84, !tbaa !24
  store i64 %t157, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb40
bb40:
  %t158 = load i64, ptr %l15, !tbaa !24
  %t159 = load i64, ptr %l14, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb41, label %bb42
bb41:
  br label %bb51
bb42:
  br label %bb43
bb43:
  %t166 = load i64, ptr %l11, !tbaa !24
  %t167 = load i64, ptr %l15, !tbaa !24
  %t168 = load i64, ptr %l13, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l16, !tbaa !24
  %t176 = load i64, ptr %l16, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr { i64, [1 x i64] }, ptr %t179, i64 %t176
  %t181 = load { i64, [1 x i64] }, ptr %t180
  %t183 = extractvalue { i64, [1 x i64] } %t181, 0
  %t184 = icmp eq i64 %t183, 1
  br i1 %t184, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb46
bb45:
  %t186 = load i64, ptr %l16, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, [1 x i64] }, ptr %t189, i64 %t186
  %t191 = load { i64, [1 x i64] }, ptr %t190
  %t193 = extractvalue { i64, [1 x i64] } %t191, 0
  %t194 = icmp eq i64 %t193, 2
  store i1 %t194, ptr %l108, !tbaa !21
  br label %bb46
bb46:
  %t196 = load i1, ptr %l108, !tbaa !21
  br i1 %t196, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  store i64 1, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t198 = load i64, ptr %l15, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l15, !tbaa !24
  br label %bb40
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i64 2, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l49 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l60 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t17 = load ptr, ptr %l14, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t35, ptr %l22
  br label %bb10
bb10:
  %t36 = load i1, ptr %l22, !tbaa !21
  store i1 %t36, ptr %l7, !tbaa !21
  br label %bb44
bb11:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t38 = load ptr, ptr %l23, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 10
  store i1 %t44, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Slice", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t59 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %t52, ptr %t56)
  store i1 %t59, ptr %l32
  br label %bb17
bb17:
  %t60 = load i1, ptr %l32, !tbaa !21
  store i1 %t60, ptr %l7, !tbaa !21
  br label %bb44
bb18:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t62 = load ptr, ptr %l33, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t65 = load ptr, ptr %l33, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 9
  store i1 %t68, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t69 = load i1, ptr %l34, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t72, i32 0, i32 2
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 52}
  store i32 %t74, ptr %l4
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t78, i32 0, i32 4
  %t80 = load { i64, ptr }, ptr %t79
  store { i64, ptr } %t80, ptr %l5, !tbaa !27
  br label %bb23
bb22:
  br label %bb32
bb23:
  %t82 = load i32, ptr %l4, !range !{i32 0, i32 52}
  %t84 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t82)
  store i1 %t84, ptr %l42
  br label %bb24
bb24:
  %t85 = load i1, ptr %l42, !tbaa !21
  br i1 %t85, label %bb25, label %bb26
bb25:
  %t86 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t90 = icmp sgt i64 %t88, 0
  store i1 %t90, ptr %l43, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb27
bb27:
  %t92 = load i1, ptr %l43, !tbaa !21
  br i1 %t92, label %bb28, label %bb29
bb28:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %l49, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr ptr, ptr %t96, i64 0
  %t98 = load ptr, ptr %t97, !tbaa !39
  %t101 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %t93, ptr %t98)
  store i1 %t101, ptr %l51
  br label %bb30
bb29:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb31
bb30:
  %t102 = load i1, ptr %l51, !tbaa !21
  store i1 %t102, ptr %l47, !tbaa !21
  br label %bb31
bb31:
  %t103 = load i1, ptr %l47, !tbaa !21
  store i1 %t103, ptr %l7, !tbaa !21
  br label %bb44
bb32:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store ptr %t104, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t105 = load ptr, ptr %l52, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb33, label %bb34
bb33:
  %t108 = load ptr, ptr %l52, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 18}
  %t111 = icmp eq i64 %t109, 17
  store i1 %t111, ptr %l53, !tbaa !21
  br label %bb34
bb34:
  %t112 = load i1, ptr %l53, !tbaa !21
  br i1 %t112, label %bb35, label %bb36
bb35:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [5 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t115, i32 0, i32 2
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t123 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %t119, ptr %t120)
  store i1 %t123, ptr %l60
  br label %bb38
bb38:
  %t124 = load i1, ptr %l60, !tbaa !21
  store i1 %t124, ptr %l7, !tbaa !21
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_c024ea3ffaf634ad_6315be653d232c01)
  unreachable
bb44:
  %t125 = load i1, ptr %l7, !tbaa !21
  store i1 %t125, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eprojsOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l1 = alloca %"compiler/mir:Lvalue"
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
  %l47 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, ptr }
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 1
  %t3 = load i32, ptr %t2, !tbaa !23
  %t5 = sext i32 %t3 to i64
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l10, !tbaa !24
  %t10 = icmp sle i64 %t9, 576460752303423487
  br i1 %t10, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_65caa10a9ab9ec93_4c004a47da8c19bf)
  unreachable
bb3:
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = mul i64 %t12, 16
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t17, ptr %lp2
  %t19 = load ptr, ptr %lp2
  store { i64, ptr } %t16, ptr %t19, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t20 = load ptr, ptr %lp2
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_65caa10a9ab9ec93_4c004a47da8c19bf)
  unreachable
bb5:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb10
bb7:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t51 = load i64, ptr %l22, !tbaa !24
  store i64 %t51, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l19, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l8, !tbaa !24
  store i64 %t71, ptr %l40, !tbaa !24
  %t74 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 3
  %t75 = getelementptr %"compiler/mir:Fn", ptr %t74, i32 0, i32 10
  %t76 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t77 = getelementptr %"compiler/mir:Range", ptr %t76, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t87 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t75, i64 %t84)
  store { i64, [1 x i64] } %t87, ptr %l47
  br label %bb15
bb15:
  %t88 = load { i64, [1 x i64] }, ptr %l47
  %t89 = load ptr, ptr %lp2
  %t90 = load i64, ptr %l40, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, [1 x i64] }, ptr %t92, i64 %t90
  store { i64, [1 x i64] } %t88, ptr %t93
  br label %bb16
bb16:
  %t94 = load i64, ptr %l7, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l7, !tbaa !24
  br label %bb11
bb17:
  %t98 = load ptr, ptr %lp2
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eprologue(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i32
  %l14 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l35 = alloca i32
  %l45 = alloca { i64, ptr }
  %l55 = alloca i32
  %l63 = alloca i32
  %l72 = alloca ptr
  %l75 = alloca %"compiler/lower:level"
  %s0 = alloca %olang.scope
  %t123 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l14, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 3
  %t11 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t7, i32 %t12)
  store i32 %t15, ptr %l18
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l14, !tbaa !29
  %t17 = load i32, ptr %l18, !tbaa !23
  %t18 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t16, i32 %t17)
  store { i64, ptr } %t18, ptr %l19
  br label %bb2
bb2:
  %t19 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t19, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t32, ptr %l26, !tbaa !27
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i32, ptr %t36, i64 %t33
  %t38 = load i32, ptr %t37, !tbaa !33
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lower:lowering", ptr %t40, i32 0, i32 3
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t46, i32 0, i32 4
  %t49 = load %"compiler/source:Span", ptr %t48
  %t54 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %t42, i32 0, %"compiler/source:Span" %t49, i32 %t38)
  store i32 %t54, ptr %l35
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l4, !tbaa !24
  br label %bb3
bb9:
  store { i64, ptr } %a1, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t73 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t73, ptr %l45, !tbaa !27
  %t74 = load i64, ptr %l8, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, [1 x i64] }, ptr %t77, i64 %t74
  %t79 = load { i64, [1 x i64] }, ptr %t78
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lower:lowering", ptr %t81, i32 0, i32 3
  %t84 = getelementptr %"compiler/mir:Fn", ptr %t83, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t84, { i64, [1 x i64] } %t79)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l8, !tbaa !24
  br label %bb10
bb16:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:lowering", ptr %t92, i32 0, i32 3
  %t96 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t94)
  store i32 %t96, ptr %l55
  br label %bb17
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/lower:lowering", ptr %t97, i32 0, i32 3
  %t100 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/lower:lowering", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Body", ptr %t104, i32 0, i32 4
  %t107 = load %"compiler/source:Span", ptr %t106
  %t112 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t99, i32 0, i32 %t100, i32 -1, %"compiler/source:Span" %t107, i32 0)
  store i32 %t112, ptr %l63
  br label %bb18
bb18:
  %t113 = load i32, ptr %l63, !tbaa !23
  store i32 %t113, ptr %l11, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/lower:lowering", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Body", ptr %t118, i32 0, i32 4
  %t121 = load %"compiler/source:Span", ptr %t120
  %t122 = load i32, ptr %l11, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [21 x i64] }, ptr %t123, i32 0, i32 0
  store i64 3, ptr %t124
  %t126 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t121, 0
  %t128 = insertvalue { %"compiler/source:Span", i32 } %t126, i32 %t122, 1
  %t129 = getelementptr { i64, [21 x i64] }, ptr %t123, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t128, ptr %t129
  %t130 = load { i64, [21 x i64] }, ptr %t123
  %t132 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t130, ptr %t132
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t114, ptr %t132)
  br label %bb19
bb19:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/lower:lowering", ptr %t135, i32 0, i32 12
  store ptr %t137, ptr %l72, !tbaa !29
  %t138 = load i32, ptr %l11, !tbaa !23
  %t141 = call %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %s0, i32 %t138, i32 -1, i32 0)
  store %"compiler/lower:level" %t141, ptr %l75
  br label %bb20
bb20:
  %t142 = load ptr, ptr %l72, !tbaa !29
  %t143 = load %"compiler/lower:level", ptr %l75
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t142, %"compiler/lower:level" %t143)
  br label %bb21
bb21:
  %t144 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdParams(ptr %v0, ptr %t144)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromoteNew(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca ptr
  %l12 = alloca { i64, [4 x i64] }
  %l19 = alloca { i64, [1 x i64] }
  %l27 = alloca { i64, [4 x i64] }
  %l32 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca { i64, [1 x i64] }
  %l44 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t16 = alloca { i64, [4 x i64] }, align 8
  %t34 = alloca { i64, [15 x i64] }, align 8
  %t82 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Promote", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store { i64, [4 x i64] } %t9, ptr %l12
  br label %bb1
bb1:
  %t10 = load { i64, [4 x i64] }, ptr %l12
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
  store { i64, [4 x i64] } %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Promote", ptr %t21, i32 0, i32 1
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t20, i32 %t24)
  store { i64, [1 x i64] } %t27, ptr %l19
  br label %bb5
bb5:
  %t28 = load { i64, [1 x i64] }, ptr %l19
  store { i64, [1 x i64] } %t28, ptr %l5
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t31 = load { i64, [1 x i64] }, ptr %l5
  %t32 = load { i64, [4 x i64] }, ptr %l4
  %t33 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [15 x i64] }, ptr %t34, i32 0, i32 0
  store i64 7, ptr %t35
  %t37 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t31, 0
  %t39 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t37, { i64, [4 x i64] } %t32, 1
  %t41 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t39, i32 %t33, 2
  %t42 = getelementptr { i64, [15 x i64] }, ptr %t34, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t41, ptr %t42
  %t43 = load { i64, [15 x i64] }, ptr %t34
  %t44 = load %"compiler/source:Span", ptr %l3
  %t49 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t29, i32 %t30, { i64, [15 x i64] } %t43, %"compiler/source:Span" %t44)
  store { i64, [4 x i64] } %t49, ptr %l27
  br label %bb6
bb6:
  %t50 = load { i64, [4 x i64] }, ptr %l27
  store { i64, [4 x i64] } %t50, ptr %l6
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lower:lowering", ptr %t51, i32 0, i32 2
  %t54 = load ptr, ptr %t53, !tbaa !29
  store ptr %t54, ptr %l7, !tbaa !29
  %t56 = load ptr, ptr %l7, !tbaa !29
  %t57 = load i32, ptr %l2, !tbaa !23
  %t60 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l32
  br label %bb7
bb7:
  %t61 = load i1, ptr %l32, !tbaa !21
  br i1 %t61, label %bb8, label %bb9
bb8:
  %t62 = load ptr, ptr %l7, !tbaa !29
  store ptr %t62, ptr %l34, !tbaa !29
  %t63 = load ptr, ptr %l7, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l37
  br label %bb10
bb9:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb12
bb10:
  %t68 = load ptr, ptr %l34, !tbaa !29
  %t69 = load i32, ptr %l37, !tbaa !23
  %t70 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t68, i32 %t69)
  store i1 %t70, ptr %l38
  br label %bb11
bb11:
  %t71 = load i1, ptr %l38, !tbaa !21
  store i1 %t71, ptr %l33, !tbaa !21
  br label %bb12
bb12:
  %t72 = load i1, ptr %l33, !tbaa !21
  br i1 %t72, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l39, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t74, ptr %l40
  %t75 = load { i64, [1 x i64] }, ptr %l5
  store { i64, [1 x i64] } %t75, ptr %l41
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t77 = load i32, ptr %l2, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l44
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t81 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [21 x i64] } zeroinitializer, ptr %t82
  %t83 = getelementptr { i64, [21 x i64] }, ptr %t82, i32 0, i32 0
  store i64 5, ptr %t83
  %t84 = load %"compiler/source:Span", ptr %l40
  %t85 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t84, 0
  %t86 = load { i64, [1 x i64] }, ptr %l41
  %t87 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t85, { i64, [1 x i64] } %t86, 1
  %t88 = load i32, ptr %l44, !tbaa !23
  %t89 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t87, i32 %t88, 2
  %t91 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t89, { i64, [4 x i64] } %t81, 3
  %t92 = getelementptr { i64, [21 x i64] }, ptr %t82, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t91, ptr %t92
  %t93 = load { i64, [21 x i64] }, ptr %t82
  %t95 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t93, ptr %t95
  %t96 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t96, ptr %t95)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t98 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [4 x i64] } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epushHeld(ptr %v0, ptr %a0, i32 %a1, i32 %a2, { i64, [4 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l21 = alloca i1
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l33 = alloca i64
  %l36 = alloca i64
  %l56 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l61 = alloca i32
  %l62 = alloca i32
  %l68 = alloca i32
  %l71 = alloca i32
  %l72 = alloca ptr
  %l77 = alloca { i64, [4 x i64] }
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l87 = alloca %"compiler/lower:pl"
  %l93 = alloca i64
  %l95 = alloca %"compiler/lower:pl"
  %l96 = alloca %"compiler/mir:Lvalue"
  %s3 = alloca %olang.scope
  %t126 = alloca { i64, [8 x i64] }, align 8
  %t145 = alloca { i64, [2 x i64] }, align 8
  %t166 = alloca { i64, [1 x i64] }, align 8
  %t179 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l21
  br label %bb1
bb1:
  %t11 = load i1, ptr %l21, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l5, !tbaa !29
  store ptr %t14, ptr %l23, !tbaa !29
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l26
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l23, !tbaa !29
  %t21 = load i32, ptr %l26, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t22, ptr %l27
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t23, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t28 = load i64, ptr %l8, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load i64, ptr %l9, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb12
bb9:
  %t38 = load i64, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l9, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l36, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l36, !tbaa !24
  store i64 %t54, ptr %l33, !tbaa !24
  br label %bb12
bb12:
  %t55 = load i64, ptr %l33, !tbaa !24
  store i64 %t55, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = load i64, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb15:
  br label %bb16
bb16:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l11, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l12, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/lower:lowering", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/lower:Lowerer", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l56, !tbaa !29
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t82, ptr %l58, !tbaa !27
  %t83 = load i64, ptr %l12, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t81, i32 %t88)
  store i32 %t91, ptr %l61
  br label %bb17
bb17:
  %t92 = load ptr, ptr %l56, !tbaa !29
  %t93 = load i32, ptr %l61, !tbaa !23
  %t94 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t94, ptr %l62
  br label %bb18
bb18:
  %t95 = load i32, ptr %l62, !tbaa !23
  store i32 %t95, ptr %l13, !tbaa !23
  %t96 = load i32, ptr %l13, !tbaa !23
  %t97 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t100 = icmp eq i32 %t96, %t97
  br i1 %t100, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb20:
  br label %bb21
bb21:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 3
  %t106 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t104)
  store i32 %t106, ptr %l68
  br label %bb22
bb22:
  %t107 = load i32, ptr %l68, !tbaa !23
  store i32 %t107, ptr %l14, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lower:lowering", ptr %t108, i32 0, i32 3
  %t112 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t110)
  store i32 %t112, ptr %l71
  br label %bb23
bb23:
  %t113 = load i32, ptr %l71, !tbaa !23
  store i32 %t113, ptr %l15, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l72, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l12, !tbaa !24
  %t118 = load %"compiler/source:Span", ptr %l4
  %t123 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %t115, { i64, [4 x i64] } %a3, i64 %t117, %"compiler/source:Span" %t118)
  store { i64, [4 x i64] } %t123, ptr %l77
  br label %bb24
bb24:
  %t124 = load i32, ptr %l14, !tbaa !23
  %t125 = load i32, ptr %l15, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [8 x i64] }, ptr %t126, i32 0, i32 0
  store i64 2, ptr %t127
  %t128 = load { i64, [4 x i64] }, ptr %l77
  %t129 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t128, 0
  %t131 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t129, i32 %t124, 1
  %t133 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t131, i32 %t125, 2
  %t134 = getelementptr { i64, [8 x i64] }, ptr %t126, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t133, ptr %t134
  %t135 = load { i64, [8 x i64] }, ptr %t126
  %t136 = load ptr, ptr %l72, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t136, { i64, [8 x i64] } %t135)
  br label %bb25
bb25:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t138, i32 %t139)
  br label %bb26
bb26:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l83, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l84, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 0
  store i64 1, ptr %t146
  %t148 = insertvalue { i32 } undef, i32 %a1, 0
  %t149 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 1
  store { i32 } %t148, ptr %t149
  %t150 = load { i64, [2 x i64] }, ptr %t145
  %t152 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s3, { i64, [2 x i64] } %t150)
  store %"compiler/lower:pl" %t152, ptr %l87
  br label %bb27
bb27:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/lower:lowering", ptr %t153, i32 0, i32 0
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/lower:Lowerer", ptr %t156, i32 0, i32 0
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i32, ptr %l2, !tbaa !23
  %t161 = load i64, ptr %l12, !tbaa !24
  %t165 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t159, i32 %t160, i64 %t161)
  store i64 %t165, ptr %l93
  br label %bb28
bb28:
  store { i64, [1 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [1 x i64] }, ptr %t166, i32 0, i32 0
  store i64 0, ptr %t167
  %t168 = load i64, ptr %l93, !tbaa !24
  %t169 = insertvalue { i64 } undef, i64 %t168, 0
  %t170 = getelementptr { i64, [1 x i64] }, ptr %t166, i32 0, i32 1
  store { i64 } %t169, ptr %t170
  %t171 = load { i64, [1 x i64] }, ptr %t166
  %t172 = load ptr, ptr %l84, !tbaa !29
  %t173 = load %"compiler/lower:pl", ptr %l87
  %t175 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s3, ptr %s3, ptr %t172, %"compiler/lower:pl" %t173, { i64, [1 x i64] } %t171)
  store %"compiler/lower:pl" %t175, ptr %l95
  br label %bb29
bb29:
  %t176 = load ptr, ptr %l83, !tbaa !29
  %t177 = load %"compiler/lower:pl", ptr %l95
  %t178 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t176, %"compiler/lower:pl" %t177)
  store %"compiler/mir:Lvalue" %t178, ptr %l96
  br label %bb30
bb30:
  store { i64, [4 x i64] } zeroinitializer, ptr %t179
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 0
  store i64 1, ptr %t180
  %t181 = load %"compiler/mir:Lvalue", ptr %l96
  %t182 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t181, 0
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t182, ptr %t183
  %t184 = load { i64, [4 x i64] }, ptr %t179
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l13, !tbaa !23
  %t189 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrPush(ptr %v0, ptr %t186, { i64, [4 x i64] } %t184, i32 %t188, %"compiler/source:Span" %t189)
  br label %bb31
bb31:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t194, i32 %t195)
  br label %bb32
bb32:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t198, i32 %t199)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb34:
  %t202 = load i64, ptr %l11, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l11, !tbaa !24
  br label %bb13
bb35:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPieces(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Text", ptr %a1, i32 0, i32 0
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
  br label %bb21
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
  store ptr %t26, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 2}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l19, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l5, !tbaa !29
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { ptr }, ptr %t37, i32 0, i32 0
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t46 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %t42)
  store i1 %t46, ptr %l27
  br label %bb10
bb10:
  %t47 = load i1, ptr %l27, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_ea10c0b622ff638a_d8330c6c5ba8e40e)
  unreachable
bb19:
  br label %bb20
bb20:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l3, !tbaa !24
  br label %bb1
bb21:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l83 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i1
  %l99 = alloca i1
  %l100 = alloca i1
  %l105 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l116 = alloca i1
  %l117 = alloca i1
  %l121 = alloca i1
  %l122 = alloca i1
  %l127 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l138 = alloca i1
  %l142 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca i1
  %l152 = alloca i1
  %l153 = alloca i1
  %l156 = alloca i1
  %l157 = alloca i1
  %l160 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i1
  %l169 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l179 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t7 = load ptr, ptr %l17, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l17, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l18, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l18, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t16 = load ptr, ptr %l21, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l21, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 1
  store i1 %t22, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l22, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb130
bb13:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t25 = load ptr, ptr %l25, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb14, label %bb15
bb14:
  %t28 = load ptr, ptr %l25, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 2
  store i1 %t31, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t32 = load i1, ptr %l26, !tbaa !21
  br i1 %t32, label %bb16, label %bb17
bb16:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l2, !tbaa !29
  br label %bb22
bb17:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t40 = load ptr, ptr %l31, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb18, label %bb19
bb18:
  %t43 = load ptr, ptr %l31, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 3
  store i1 %t46, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t47 = load i1, ptr %l32, !tbaa !21
  br i1 %t47, label %bb20, label %bb21
bb20:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l2, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t58 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t54, ptr %t55)
  store i1 %t58, ptr %l39
  br label %bb23
bb23:
  %t59 = load i1, ptr %l39, !tbaa !21
  store i1 %t59, ptr %l16, !tbaa !21
  br label %bb130
bb24:
  %t60 = load ptr, ptr %l1, !tbaa !29
  store ptr %t60, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t61 = load ptr, ptr %l40, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb25, label %bb26
bb25:
  %t64 = load ptr, ptr %l40, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 18}
  %t67 = icmp eq i64 %t65, 5
  store i1 %t67, ptr %l41, !tbaa !21
  br label %bb26
bb26:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb27, label %bb28
bb27:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [5 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l3, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Promote", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t83 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t75, ptr %t79)
  store i1 %t83, ptr %l50
  br label %bb30
bb30:
  %t84 = load i1, ptr %l50, !tbaa !21
  store i1 %t84, ptr %l16, !tbaa !21
  br label %bb130
bb31:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t86 = load ptr, ptr %l51, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb32, label %bb33
bb32:
  %t89 = load ptr, ptr %l51, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 18}
  %t92 = icmp eq i64 %t90, 6
  store i1 %t92, ptr %l52, !tbaa !21
  br label %bb33
bb33:
  %t93 = load i1, ptr %l52, !tbaa !21
  br i1 %t93, label %bb34, label %bb35
bb34:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr { i64, [5 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t96, i32 0, i32 2
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l4, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l4, !tbaa !29
  %t104 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietCall(ptr %v0, ptr %v1, ptr %t100, ptr %t101)
  store i1 %t104, ptr %l59
  br label %bb37
bb37:
  %t105 = load i1, ptr %l59, !tbaa !21
  store i1 %t105, ptr %l16, !tbaa !21
  br label %bb130
bb38:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t107 = load ptr, ptr %l60, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb39, label %bb40
bb39:
  %t110 = load ptr, ptr %l60, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 18}
  %t113 = icmp eq i64 %t111, 7
  store i1 %t113, ptr %l61, !tbaa !21
  br label %bb40
bb40:
  %t114 = load i1, ptr %l61, !tbaa !21
  br i1 %t114, label %bb41, label %bb42
bb41:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l5, !tbaa !29
  br label %bb43
bb42:
  br label %bb49
bb43:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Make", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t128 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietAll(ptr %v0, ptr %v1, ptr %t121, { i64, ptr } %t125)
  store i1 %t128, ptr %l69
  br label %bb44
bb44:
  %t129 = load i1, ptr %l69, !tbaa !21
  br i1 %t129, label %bb45, label %bb46
bb45:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l5, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Make", ptr %t131, i32 0, i32 3
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t137 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t130, ptr %t134)
  store i1 %t137, ptr %l74
  br label %bb47
bb46:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb48
bb47:
  %t138 = load i1, ptr %l74, !tbaa !21
  store i1 %t138, ptr %l70, !tbaa !21
  br label %bb48
bb48:
  %t139 = load i1, ptr %l70, !tbaa !21
  store i1 %t139, ptr %l16, !tbaa !21
  br label %bb130
bb49:
  %t140 = load ptr, ptr %l1, !tbaa !29
  store ptr %t140, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t141 = load ptr, ptr %l75, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb50, label %bb51
bb50:
  %t144 = load ptr, ptr %l75, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 18}
  %t147 = icmp eq i64 %t145, 9
  store i1 %t147, ptr %l76, !tbaa !21
  br label %bb51
bb51:
  %t148 = load i1, ptr %l76, !tbaa !21
  br i1 %t148, label %bb52, label %bb53
bb52:
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr { i64, [5 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t151, i32 0, i32 4
  %t153 = load { i64, ptr }, ptr %t152
  store { i64, ptr } %t153, ptr %l6, !tbaa !27
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t159 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietAll(ptr %v0, ptr %v1, ptr %t155, { i64, ptr } %t156)
  store i1 %t159, ptr %l83
  br label %bb55
bb55:
  %t160 = load i1, ptr %l83, !tbaa !21
  store i1 %t160, ptr %l16, !tbaa !21
  br label %bb130
bb56:
  %t161 = load ptr, ptr %l1, !tbaa !29
  store ptr %t161, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t162 = load ptr, ptr %l84, !tbaa !29
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %bb57, label %bb58
bb57:
  %t165 = load ptr, ptr %l84, !tbaa !29
  %t166 = load i64, ptr %t165, !range !{i64 0, i64 18}
  %t168 = icmp eq i64 %t166, 10
  store i1 %t168, ptr %l85, !tbaa !21
  br label %bb58
bb58:
  %t169 = load i1, ptr %l85, !tbaa !21
  br i1 %t169, label %bb59, label %bb60
bb59:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr { i64, [5 x i64] }, ptr %t170, i32 0, i32 1
  %t173 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t172, i32 0, i32 2
  %t174 = load ptr, ptr %t173
  store ptr %t174, ptr %l7, !tbaa !29
  br label %bb61
bb60:
  br label %bb71
bb61:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %l7, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Slice", ptr %t177, i32 0, i32 0
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t183 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t176, ptr %t180)
  store i1 %t183, ptr %l93
  br label %bb62
bb62:
  %t184 = load i1, ptr %l93, !tbaa !21
  br i1 %t184, label %bb63, label %bb64
bb63:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l7, !tbaa !29
  %t188 = getelementptr %"compiler/typed:Slice", ptr %t186, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t193 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t185, ptr %t189)
  store i1 %t193, ptr %l99
  br label %bb65
bb64:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb66
bb65:
  %t194 = load i1, ptr %l99, !tbaa !21
  store i1 %t194, ptr %l94, !tbaa !21
  br label %bb66
bb66:
  %t195 = load i1, ptr %l94, !tbaa !21
  br i1 %t195, label %bb67, label %bb68
bb67:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l7, !tbaa !29
  %t199 = getelementptr %"compiler/typed:Slice", ptr %t197, i32 0, i32 2
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t204 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t196, ptr %t200)
  store i1 %t204, ptr %l105
  br label %bb69
bb68:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb70
bb69:
  %t205 = load i1, ptr %l105, !tbaa !21
  store i1 %t205, ptr %l100, !tbaa !21
  br label %bb70
bb70:
  %t206 = load i1, ptr %l100, !tbaa !21
  store i1 %t206, ptr %l16, !tbaa !21
  br label %bb130
bb71:
  %t207 = load ptr, ptr %l1, !tbaa !29
  store ptr %t207, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t208 = load ptr, ptr %l106, !tbaa !29
  %t209 = icmp ne ptr %t208, null
  br i1 %t209, label %bb72, label %bb73
bb72:
  %t211 = load ptr, ptr %l106, !tbaa !29
  %t212 = load i64, ptr %t211, !range !{i64 0, i64 18}
  %t214 = icmp eq i64 %t212, 11
  store i1 %t214, ptr %l107, !tbaa !21
  br label %bb73
bb73:
  %t215 = load i1, ptr %l107, !tbaa !21
  br i1 %t215, label %bb74, label %bb75
bb74:
  %t216 = load ptr, ptr %l1, !tbaa !29
  %t218 = getelementptr { i64, [5 x i64] }, ptr %t216, i32 0, i32 1
  %t219 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t218, i32 0, i32 2
  %t220 = load ptr, ptr %t219
  store ptr %t220, ptr %l8, !tbaa !29
  br label %bb76
bb75:
  br label %bb86
bb76:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %l8, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Cond", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t230 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t222, ptr %t226)
  store i1 %t230, ptr %l116
  br label %bb77
bb77:
  %t231 = load i1, ptr %l116, !tbaa !21
  br i1 %t231, label %bb78, label %bb79
bb78:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load ptr, ptr %l8, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Cond", ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t239 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t232, ptr %t236)
  store i1 %t239, ptr %l121
  br label %bb80
bb79:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb81
bb80:
  %t240 = load i1, ptr %l121, !tbaa !21
  store i1 %t240, ptr %l117, !tbaa !21
  br label %bb81
bb81:
  %t241 = load i1, ptr %l117, !tbaa !21
  br i1 %t241, label %bb82, label %bb83
bb82:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l8, !tbaa !29
  %t245 = getelementptr %"compiler/typed:Cond", ptr %t243, i32 0, i32 2
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t250 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t242, ptr %t246)
  store i1 %t250, ptr %l127
  br label %bb84
bb83:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb85
bb84:
  %t251 = load i1, ptr %l127, !tbaa !21
  store i1 %t251, ptr %l122, !tbaa !21
  br label %bb85
bb85:
  %t252 = load i1, ptr %l122, !tbaa !21
  store i1 %t252, ptr %l16, !tbaa !21
  br label %bb130
bb86:
  %t253 = load ptr, ptr %l1, !tbaa !29
  store ptr %t253, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t254 = load ptr, ptr %l128, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb87, label %bb88
bb87:
  %t257 = load ptr, ptr %l128, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 18}
  %t260 = icmp eq i64 %t258, 12
  store i1 %t260, ptr %l129, !tbaa !21
  br label %bb88
bb88:
  %t261 = load i1, ptr %l129, !tbaa !21
  br i1 %t261, label %bb89, label %bb90
bb89:
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [5 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t264, i32 0, i32 2
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l9, !tbaa !29
  br label %bb91
bb90:
  br label %bb96
bb91:
  %t268 = load ptr, ptr %l9, !tbaa !29
  %t270 = getelementptr %"compiler/typed:Seq", ptr %t268, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t275 = icmp eq i64 %t273, 0
  br i1 %t275, label %bb92, label %bb93
bb92:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load ptr, ptr %l9, !tbaa !29
  %t280 = getelementptr %"compiler/typed:Seq", ptr %t278, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t284 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t277, ptr %t281)
  store i1 %t284, ptr %l142
  br label %bb94
bb93:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb95
bb94:
  %t285 = load i1, ptr %l142, !tbaa !21
  store i1 %t285, ptr %l138, !tbaa !21
  br label %bb95
bb95:
  %t286 = load i1, ptr %l138, !tbaa !21
  store i1 %t286, ptr %l16, !tbaa !21
  br label %bb130
bb96:
  %t287 = load ptr, ptr %l1, !tbaa !29
  store ptr %t287, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t288 = load ptr, ptr %l143, !tbaa !29
  %t289 = icmp ne ptr %t288, null
  br i1 %t289, label %bb97, label %bb98
bb97:
  %t291 = load ptr, ptr %l143, !tbaa !29
  %t292 = load i64, ptr %t291, !range !{i64 0, i64 18}
  %t294 = icmp eq i64 %t292, 14
  store i1 %t294, ptr %l144, !tbaa !21
  br label %bb98
bb98:
  %t295 = load i1, ptr %l144, !tbaa !21
  br i1 %t295, label %bb99, label %bb100
bb99:
  %t296 = load ptr, ptr %l1, !tbaa !29
  %t298 = getelementptr { i64, [5 x i64] }, ptr %t296, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t298, i32 0, i32 2
  %t300 = load ptr, ptr %t299
  store ptr %t300, ptr %l10, !tbaa !29
  br label %bb101
bb100:
  br label %bb111
bb101:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load ptr, ptr %l10, !tbaa !29
  %t305 = getelementptr %"compiler/typed:Try", ptr %t303, i32 0, i32 0
  %t306 = load ptr, ptr %t305, !tbaa !29
  %t309 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t302, ptr %t306)
  store i1 %t309, ptr %l152
  br label %bb102
bb102:
  %t310 = load i1, ptr %l152, !tbaa !21
  br i1 %t310, label %bb103, label %bb104
bb103:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load ptr, ptr %l10, !tbaa !29
  %t315 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eselfTry(ptr %v0, ptr %v1, ptr %t311, ptr %t312)
  store i1 %t315, ptr %l156
  br label %bb105
bb104:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb110
bb105:
  %t316 = load i1, ptr %l156, !tbaa !21
  br i1 %t316, label %bb106, label %bb107
bb106:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb109
bb107:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l10, !tbaa !29
  %t321 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietClauses(ptr %v0, ptr %v1, ptr %t317, ptr %t318)
  store i1 %t321, ptr %l160
  br label %bb108
bb108:
  %t322 = load i1, ptr %l160, !tbaa !21
  store i1 %t322, ptr %l157, !tbaa !21
  br label %bb109
bb109:
  %t323 = load i1, ptr %l157, !tbaa !21
  store i1 %t323, ptr %l153, !tbaa !21
  br label %bb110
bb110:
  %t324 = load i1, ptr %l153, !tbaa !21
  store i1 %t324, ptr %l16, !tbaa !21
  br label %bb130
bb111:
  %t325 = load ptr, ptr %l1, !tbaa !29
  store ptr %t325, ptr %l161, !tbaa !29
  store i1 false, ptr %l162, !tbaa !21
  %t326 = load ptr, ptr %l161, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb112, label %bb113
bb112:
  %t329 = load ptr, ptr %l161, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 18}
  %t332 = icmp eq i64 %t330, 16
  store i1 %t332, ptr %l162, !tbaa !21
  br label %bb113
bb113:
  %t333 = load i1, ptr %l162, !tbaa !21
  br i1 %t333, label %bb114, label %bb115
bb114:
  %t334 = load ptr, ptr %l1, !tbaa !29
  %t336 = getelementptr { i64, [5 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t336, i32 0, i32 2
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l11, !tbaa !29
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load ptr, ptr %l11, !tbaa !29
  %t344 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPieces(ptr %v0, ptr %v1, ptr %t340, ptr %t341)
  store i1 %t344, ptr %l169
  br label %bb117
bb117:
  %t345 = load i1, ptr %l169, !tbaa !21
  store i1 %t345, ptr %l16, !tbaa !21
  br label %bb130
bb118:
  %t346 = load ptr, ptr %l1, !tbaa !29
  store ptr %t346, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t347 = load ptr, ptr %l170, !tbaa !29
  %t348 = icmp ne ptr %t347, null
  br i1 %t348, label %bb119, label %bb120
bb119:
  %t350 = load ptr, ptr %l170, !tbaa !29
  %t351 = load i64, ptr %t350, !range !{i64 0, i64 18}
  %t353 = icmp eq i64 %t351, 17
  store i1 %t353, ptr %l171, !tbaa !21
  br label %bb120
bb120:
  %t354 = load i1, ptr %l171, !tbaa !21
  br i1 %t354, label %bb121, label %bb122
bb121:
  %t355 = load ptr, ptr %l1, !tbaa !29
  %t357 = getelementptr { i64, [5 x i64] }, ptr %t355, i32 0, i32 1
  %t358 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t357, i32 0, i32 2
  %t359 = load ptr, ptr %t358
  store ptr %t359, ptr %l12, !tbaa !29
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load ptr, ptr %l12, !tbaa !29
  %t366 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t361, ptr %t362)
  store i1 %t366, ptr %l179
  br label %bb124
bb124:
  %t367 = load i1, ptr %l179, !tbaa !21
  store i1 %t367, ptr %l16, !tbaa !21
  br label %bb130
bb125:
  br i1 true, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb130
bb129:
  call void @__olang_check_failed(ptr @olang_loc_3bbf6907cdc90559_48ef26e69e7376e5)
  unreachable
bb130:
  %t368 = load i1, ptr %l16, !tbaa !21
  store i1 %t368, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l24 = alloca ptr
  %l27 = alloca i64
  %l31 = alloca i1
  %l35 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l62 = alloca i1
  %l67 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l72 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l91 = alloca i1
  %l96 = alloca ptr
  %l104 = alloca ptr
  %l105 = alloca i1
  %l114 = alloca ptr
  %l122 = alloca ptr
  %l123 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 40
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Call", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %t21, !tbaa !23
  %t24 = sext i32 %t22 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t18, i64 %t24, i1 true)
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lower:lowering", ptr %t27, i32 0, i32 56
  store ptr %t29, ptr %l24, !tbaa !29
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = sext i32 %t33 to i64
  store i64 %t35, ptr %l27, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb9
bb8:
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  %t46 = xor i1 %t44, true
  store i1 %t46, ptr %l31, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l31, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewindowQuiet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t49, ptr %t50, ptr %t51, ptr %t52)
  store i1 %t57, ptr %l40
  br label %bb12
bb11:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb13
bb12:
  %t58 = load i1, ptr %l40, !tbaa !21
  store i1 %t58, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l24, !tbaa !29
  %t60 = load i64, ptr %l27, !tbaa !24
  %t61 = load i1, ptr %l35, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t59, i64 %t60, i1 %t61)
  br label %bb14
bb14:
  br label %bb87
bb15:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t63 = load ptr, ptr %l41, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load ptr, ptr %l41, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 5
  store i1 %t69, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t70 = load i1, ptr %l42, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l5, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Promote", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t83 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t77, ptr %t81, ptr %t82, ptr %t83)
  br label %bb21
bb21:
  br label %bb87
bb22:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t89 = load ptr, ptr %l52, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t92 = load ptr, ptr %l52, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 18}
  %t95 = icmp eq i64 %t93, 9
  store i1 %t95, ptr %l53, !tbaa !21
  br label %bb24
bb24:
  %t96 = load i1, ptr %l53, !tbaa !21
  br i1 %t96, label %bb25, label %bb26
bb25:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t99, i32 0, i32 2
  %t101 = load i32, ptr %t100, !range !{i32 0, i32 52}
  store i32 %t101, ptr %l6
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t105, i32 0, i32 4
  %t107 = load { i64, ptr }, ptr %t106
  store { i64, ptr } %t107, ptr %l7, !tbaa !27
  br label %bb27
bb26:
  br label %bb35
bb27:
  %t109 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t111 = trunc i64 20 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb28, label %bb29
bb28:
  %t114 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t118 = icmp eq i64 %t116, 1
  store i1 %t118, ptr %l62, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb30
bb30:
  %t120 = load i1, ptr %l62, !tbaa !21
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t122, ptr %l67, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 0
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t128 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t121, ptr %t126, ptr %t127, ptr %t128)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb87
bb35:
  %t133 = load ptr, ptr %l1, !tbaa !29
  store ptr %t133, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t134 = load ptr, ptr %l71, !tbaa !29
  %t135 = icmp ne ptr %t134, null
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t137 = load ptr, ptr %l71, !tbaa !29
  %t138 = load i64, ptr %t137, !range !{i64 0, i64 18}
  %t140 = icmp eq i64 %t138, 17
  store i1 %t140, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t141 = load i1, ptr %l72, !tbaa !21
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr { i64, [5 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l8, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l8, !tbaa !29
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t151 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t148, ptr %t149, ptr %t150, ptr %t151)
  br label %bb41
bb41:
  br label %bb87
bb42:
  %t156 = load ptr, ptr %l1, !tbaa !29
  store ptr %t156, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t157 = load ptr, ptr %l81, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb43, label %bb44
bb43:
  %t160 = load ptr, ptr %l81, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 18}
  %t163 = icmp eq i64 %t161, 12
  store i1 %t163, ptr %l82, !tbaa !21
  br label %bb44
bb44:
  %t164 = load i1, ptr %l82, !tbaa !21
  br i1 %t164, label %bb45, label %bb46
bb45:
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr { i64, [5 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t167, i32 0, i32 2
  %t169 = load ptr, ptr %t168
  store ptr %t169, ptr %l9, !tbaa !29
  br label %bb47
bb46:
  br label %bb58
bb47:
  %t171 = load ptr, ptr %l9, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Seq", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = icmp eq ptr %t174, null
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb48, label %bb49
bb48:
  %t180 = load ptr, ptr %l9, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Seq", ptr %t180, i32 0, i32 0
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t187 = icmp eq i64 %t185, 0
  store i1 %t187, ptr %l91, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb50
bb50:
  %t189 = load i1, ptr %l91, !tbaa !21
  br i1 %t189, label %bb51, label %bb52
bb51:
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l96, !tbaa !29
  %t191 = load ptr, ptr %l9, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Seq", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = icmp eq ptr %t194, null
  br i1 %t196, label %bb53, label %bb54
bb52:
  br label %bb57
bb53:
  call void @__olang_check_failed(ptr @olang_loc_763e3b2e421df924_4ff52ff107ec1ef8)
  unreachable
bb54:
  br label %bb55
bb55:
  %t198 = load ptr, ptr %l9, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Seq", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t202 = load ptr, ptr %l2, !tbaa !29
  %t203 = load ptr, ptr %l3, !tbaa !29
  %t204 = load ptr, ptr %l96, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t204, ptr %t201, ptr %t202, ptr %t203)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb87
bb58:
  %t208 = load ptr, ptr %l1, !tbaa !29
  store ptr %t208, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t209 = load ptr, ptr %l104, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb59, label %bb60
bb59:
  %t212 = load ptr, ptr %l104, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 18}
  %t215 = icmp eq i64 %t213, 14
  store i1 %t215, ptr %l105, !tbaa !21
  br label %bb60
bb60:
  %t216 = load i1, ptr %l105, !tbaa !21
  br i1 %t216, label %bb61, label %bb62
bb61:
  %t217 = load ptr, ptr %l1, !tbaa !29
  %t219 = getelementptr { i64, [5 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t219, i32 0, i32 2
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l10, !tbaa !29
  br label %bb63
bb62:
  br label %bb71
bb63:
  %t223 = load ptr, ptr %l10, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Try", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb64, label %bb65
bb64:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l114, !tbaa !29
  %t233 = load ptr, ptr %l10, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Try", ptr %t233, i32 0, i32 0
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = icmp eq ptr %t236, null
  br i1 %t238, label %bb66, label %bb67
bb65:
  br label %bb70
bb66:
  call void @__olang_check_failed(ptr @olang_loc_292009f276c7a2f3_194bd9ce8dfbeb17)
  unreachable
bb67:
  br label %bb68
bb68:
  %t240 = load ptr, ptr %l10, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Try", ptr %t240, i32 0, i32 0
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t244 = load ptr, ptr %l2, !tbaa !29
  %t245 = load ptr, ptr %l3, !tbaa !29
  %t246 = load ptr, ptr %l114, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t246, ptr %t243, ptr %t244, ptr %t245)
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %bb87
bb71:
  %t250 = load ptr, ptr %l1, !tbaa !29
  store ptr %t250, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb72, label %bb73
bb72:
  %t254 = load ptr, ptr %l122, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 2
  store i1 %t257, ptr %l123, !tbaa !21
  br label %bb73
bb73:
  %t258 = load i1, ptr %l123, !tbaa !21
  br i1 %t258, label %bb74, label %bb75
bb74:
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = getelementptr { i64, [5 x i64] }, ptr %t259, i32 0, i32 1
  %t262 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t261, i32 0, i32 2
  %t263 = load ptr, ptr %t262
  store ptr %t263, ptr %l11, !tbaa !29
  br label %bb80
bb75:
  %t265 = load ptr, ptr %l1, !tbaa !29
  store ptr %t265, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t266 = load ptr, ptr %l128, !tbaa !29
  %t267 = icmp ne ptr %t266, null
  br i1 %t267, label %bb76, label %bb77
bb76:
  %t269 = load ptr, ptr %l128, !tbaa !29
  %t270 = load i64, ptr %t269, !range !{i64 0, i64 18}
  %t272 = icmp eq i64 %t270, 3
  store i1 %t272, ptr %l129, !tbaa !21
  br label %bb77
bb77:
  %t273 = load i1, ptr %l129, !tbaa !21
  br i1 %t273, label %bb78, label %bb79
bb78:
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr { i64, [5 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t276, i32 0, i32 2
  %t278 = load ptr, ptr %t277
  store ptr %t278, ptr %l11, !tbaa !29
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l11, !tbaa !29
  %t282 = load ptr, ptr %l2, !tbaa !29
  %t283 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t280, ptr %t281, ptr %t282, ptr %t283)
  br label %bb81
bb81:
  br label %bb87
bb82:
  br i1 true, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_a9234ad2dabfd921_4df0c0618daabfe5)
  unreachable
bb87:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eregionSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l60 = alloca i1
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %rv = alloca i64
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
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t10 = load ptr, ptr %l13, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 18}
  %t16 = icmp eq i64 %t14, 5
  store i1 %t16, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l14, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr { i64, [5 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t20, i32 0, i32 2
  %t22 = load ptr, ptr %t21
  store ptr %t22, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Promote", ptr %t24, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = sext i32 %t27 to i64
  store i64 %t29, ptr %l12, !tbaa !24
  br label %bb38
bb9:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 18}
  %t38 = icmp eq i64 %t36, 7
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Make", ptr %t46, i32 0, i32 4
  %t49 = load i32, ptr %t48, !tbaa !23
  %t51 = sext i32 %t49 to i64
  store i64 %t51, ptr %l12, !tbaa !24
  br label %bb38
bb15:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t54 = load ptr, ptr %l31, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l31, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 16
  store i1 %t60, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t61 = load i1, ptr %l32, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l4, !tbaa !29
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Text", ptr %t68, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  store i64 %t73, ptr %l12, !tbaa !24
  br label %bb38
bb21:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t76 = load ptr, ptr %l40, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l40, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 18}
  %t82 = icmp eq i64 %t80, 8
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t83 = load i1, ptr %l41, !tbaa !21
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Collect", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %t92, !tbaa !23
  %t95 = sext i32 %t93 to i64
  store i64 %t95, ptr %l12, !tbaa !24
  br label %bb38
bb27:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t98 = load ptr, ptr %l49, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb28, label %bb29
bb28:
  %t101 = load ptr, ptr %l49, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 18}
  %t104 = icmp eq i64 %t102, 6
  store i1 %t104, ptr %l50, !tbaa !21
  br label %bb29
bb29:
  %t105 = load i1, ptr %l50, !tbaa !21
  br i1 %t105, label %bb30, label %bb31
bb30:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t108, i32 0, i32 2
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l6, !tbaa !29
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Call", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %t114, !tbaa !23
  %t117 = sext i32 %t115 to i64
  store i64 %t117, ptr %l12, !tbaa !24
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_5f06e436ba25f30_8078c3a4dcac4c4)
  unreachable
bb38:
  %t119 = load i64, ptr %l12, !tbaa !24
  store i64 %t119, ptr %l7, !tbaa !24
  %t120 = load i64, ptr %l7, !tbaa !24
  %t122 = icmp slt i64 %t120, 0
  br i1 %t122, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb41
bb40:
  %t124 = load i64, ptr %l7, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/lower:lowering", ptr %t125, i32 0, i32 30
  %t128 = getelementptr %"compiler/typed:Plan", ptr %t127, i32 0, i32 5
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t134 = icmp sge i64 %t124, %t131
  store i1 %t134, ptr %l60, !tbaa !21
  br label %bb41
bb41:
  %t136 = load i1, ptr %l60, !tbaa !21
  br i1 %t136, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb44
bb43:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/lower:lowering", ptr %t137, i32 0, i32 30
  %t140 = getelementptr %"compiler/typed:Plan", ptr %t139, i32 0, i32 5
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l68, !tbaa !27
  %t142 = load i64, ptr %l7, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i64, ptr %t145, i64 %t142
  %t147 = load i64, ptr %t146, !tbaa !34
  %t149 = icmp eq i64 %t147, 0
  store i1 %t149, ptr %l66, !tbaa !21
  br label %bb44
bb44:
  %t151 = load i1, ptr %l66, !tbaa !21
  br i1 %t151, label %bb45, label %bb46
bb45:
  store i64 -1, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t153 = load i64, ptr %l7, !tbaa !24
  store i64 %t153, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i64 %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l30 = alloca i64
  %l33 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca %"compiler/lower:pl"
  %l61 = alloca %"compiler/lower:pl"
  %l64 = alloca %"compiler/lower:pl"
  %l67 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t93 = alloca { i64, [1 x i64] }, align 8
  %t104 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t5, i32 %a3)
  store i32 %t9, ptr %l17
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l13, !tbaa !29
  %t11 = load i32, ptr %l17, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %s0, ptr %t10, i32 %t11)
  store { i64, ptr } %t12, ptr %l18
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = icmp eq i64 %t16, 0
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, [1 x i64] }, ptr %l4
  %t22 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s0, ptr %t20, { i64, [1 x i64] } %t21, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, %"compiler/source:Span" %t22)
  br label %bb6
bb6:
  store i64 0, ptr %l7, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l9, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb12
bb9:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l9, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l33, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb11
bb11:
  %t56 = load i64, ptr %l33, !tbaa !24
  store i64 %t56, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l30, !tbaa !24
  store i64 %t57, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load i64, ptr %l11, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb15:
  br label %bb16
bb16:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l11, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l12, !tbaa !24
  %t76 = load i64, ptr %l12, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, [1 x i64] }, ptr %l4
  %t82 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s4, ptr %t80, { i64, [1 x i64] } %t81, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, %"compiler/source:Span" %t82)
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l56, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l57, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l58, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l59
  %t91 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l59)
  store %"compiler/lower:pl" %t91, ptr %l61
  br label %bb21
bb21:
  store { i64, [1 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 0
  store i64 4, ptr %t94
  %t96 = insertvalue { i64 } undef, i64 %a2, 0
  %t97 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 1
  store { i64 } %t96, ptr %t97
  %t98 = load { i64, [1 x i64] }, ptr %t93
  %t99 = load ptr, ptr %l58, !tbaa !29
  %t100 = load %"compiler/lower:pl", ptr %l61
  %t102 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s3, ptr %s3, ptr %t99, %"compiler/lower:pl" %t100, { i64, [1 x i64] } %t98)
  store %"compiler/lower:pl" %t102, ptr %l64
  br label %bb22
bb22:
  %t103 = load i64, ptr %l12, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [1 x i64] }, ptr %t104, i32 0, i32 0
  store i64 0, ptr %t105
  %t107 = insertvalue { i64 } undef, i64 %t103, 0
  %t108 = getelementptr { i64, [1 x i64] }, ptr %t104, i32 0, i32 1
  store { i64 } %t107, ptr %t108
  %t109 = load { i64, [1 x i64] }, ptr %t104
  %t110 = load ptr, ptr %l57, !tbaa !29
  %t111 = load %"compiler/lower:pl", ptr %l64
  %t113 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s3, ptr %s3, ptr %t110, %"compiler/lower:pl" %t111, { i64, [1 x i64] } %t109)
  store %"compiler/lower:pl" %t113, ptr %l67
  br label %bb23
bb23:
  %t114 = load i64, ptr %l12, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i32, ptr %t117, i64 %t114
  %t119 = load i32, ptr %t118, !tbaa !33
  %t120 = load { i64, [1 x i64] }, ptr %l4
  %t121 = load %"compiler/source:Span", ptr %l5
  %t122 = load ptr, ptr %l56, !tbaa !29
  %t123 = load %"compiler/lower:pl", ptr %l67
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %v0, ptr %s3, ptr %t122, %"compiler/lower:pl" %t123, i32 %t119, { i64, [1 x i64] } %t120, %"compiler/source:Span" %t121)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  %t127 = load i64, ptr %l11, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l11, !tbaa !24
  br label %bb13
bb26:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load { i64, [1 x i64] }, ptr %l4
  %t133 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s0, ptr %t131, { i64, [1 x i64] } %t132, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, %"compiler/source:Span" %t133)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScopeAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l56 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t103 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l11, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/lower:Lowerer", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t11, i64 %a2)
  store ptr %t16, ptr %l17
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l17, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %t19, !tbaa !23
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t21, i32 %t20)
  store { i64, ptr } %t23, ptr %l20
  br label %bb2
bb2:
  %t24 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t24, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb3, label %bb4
bb3:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb5:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l29, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t55 = load i64, ptr %l29, !tbaa !24
  store i64 %t55, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t56 = load i64, ptr %l26, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t75
  %t80 = load i64, ptr %t79, !tbaa !34
  %t81 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb13, label %bb14
bb13:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lower:lowering", ptr %t86, i32 0, i32 30
  %t91 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = load i64, ptr %l9, !tbaa !24
  %t97 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t88, i32 %t92, i64 %t93)
  store { i64, [2 x i64] } %t97, ptr %l56
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t98 = load { i64, [2 x i64] }, ptr %l56
  store { i64, [2 x i64] } %t98, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t99 = load i64, ptr %l8, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l8, !tbaa !24
  br label %bb9
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [2 x i64] }, ptr %t103, i32 0, i32 0
  store i64 0, ptr %t104
  %t105 = load { i64, [2 x i64] }, ptr %t103
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t105, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i64
  %l24 = alloca %"compiler/lower:level"
  %l31 = alloca %"compiler/lower:level"
  %l38 = alloca i64
  %l46 = alloca %"compiler/lower:level"
  %l50 = alloca i1
  %l55 = alloca i1
  %l59 = alloca %"compiler/lower:level"
  %l79 = alloca { i64, [1 x i64] }
  %l85 = alloca { i64, [1 x i64] }
  %l93 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t47 = alloca { i64, [1 x i64] }, align 8
  %t107 = alloca { i64, [1 x i64] }, align 8
  %t118 = alloca { i64, [1 x i64] }, align 8
  %t132 = alloca { i64, [1 x i64] }, align 8
  %t144 = alloca { i64, [1 x i64] }, align 8
  %t201 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb32
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 12
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l16
  br label %bb4
bb4:
  %t15 = load i64, ptr %l16, !tbaa !24
  %t16 = sub i64 %t15, 1
  store i64 %t16, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sge i64 %t18, 0
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb15
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 12
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/lower:level" %t30, ptr %l24
  br label %bb9
bb9:
  %t31 = getelementptr %"compiler/lower:level", ptr %l24, i32 0, i32 1
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = icmp eq i32 %t32, %t33
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 12
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t40, i64 %t41)
  store %"compiler/lower:level" %t44, ptr %l31
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t45 = getelementptr %"compiler/lower:level", ptr %l31, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [1 x i64] }, ptr %t47, i32 0, i32 0
  store i64 0, ptr %t48
  %t50 = insertvalue { i32 } undef, i32 %t46, 0
  %t51 = getelementptr { i64, [1 x i64] }, ptr %t47, i32 0, i32 1
  store { i32 } %t50, ptr %t51
  %t52 = load { i64, [1 x i64] }, ptr %t47
  store { i64, [1 x i64] } %t52, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = sub i64 %t54, 1
  store i64 %t56, ptr %l3, !tbaa !24
  br label %bb5
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 12
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l38
  br label %bb16
bb16:
  %t63 = load i64, ptr %l38, !tbaa !24
  %t64 = sub i64 %t63, 1
  store i64 %t64, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = icmp sge i64 %t66, 0
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb18, label %bb19
bb18:
  br label %bb31
bb19:
  br label %bb20
bb20:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/lower:lowering", ptr %t72, i32 0, i32 12
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t74, i64 %t75)
  store %"compiler/lower:level" %t78, ptr %l46
  br label %bb21
bb21:
  %t79 = getelementptr %"compiler/lower:level", ptr %l46, i32 0, i32 1
  %t80 = load i32, ptr %t79, !tbaa !23
  store i32 %t80, ptr %l5, !tbaa !23
  %t82 = load i32, ptr %l5, !tbaa !23
  %t84 = icmp sge i32 %t82, 0
  br i1 %t84, label %bb22, label %bb23
bb22:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/lower:lowering", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load i32, ptr %l5, !tbaa !23
  %t91 = load i32, ptr %l2, !tbaa !23
  %t95 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t89, i32 %t90, i32 %t91)
  store i1 %t95, ptr %l55
  br label %bb24
bb23:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb25
bb24:
  %t96 = load i1, ptr %l55, !tbaa !21
  store i1 %t96, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  %t97 = load i1, ptr %l50, !tbaa !21
  br i1 %t97, label %bb26, label %bb27
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lower:lowering", ptr %t98, i32 0, i32 12
  %t101 = load i64, ptr %l4, !tbaa !24
  %t104 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t100, i64 %t101)
  store %"compiler/lower:level" %t104, ptr %l59
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t105 = getelementptr %"compiler/lower:level", ptr %l59, i32 0, i32 0
  %t106 = load i32, ptr %t105, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [1 x i64] }, ptr %t107, i32 0, i32 0
  store i64 0, ptr %t108
  %t110 = insertvalue { i32 } undef, i32 %t106, 0
  %t111 = getelementptr { i64, [1 x i64] }, ptr %t107, i32 0, i32 1
  store { i32 } %t110, ptr %t111
  %t112 = load { i64, [1 x i64] }, ptr %t107
  store { i64, [1 x i64] } %t112, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t114 = load i64, ptr %l4, !tbaa !24
  %t116 = sub i64 %t114, 1
  store i64 %t116, ptr %l4, !tbaa !24
  br label %bb17
bb31:
  store { i64, [1 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [1 x i64] }, ptr %t118, i32 0, i32 0
  store i64 2, ptr %t119
  %t120 = load { i64, [1 x i64] }, ptr %t118
  store { i64, [1 x i64] } %t120, ptr %rv
  br label %ret
bb32:
  %t122 = load { i64, [2 x i64] }, ptr %l1
  %t124 = extractvalue { i64, [2 x i64] } %t122, 0
  %t125 = icmp eq i64 %t124, 2
  br i1 %t125, label %bb33, label %bb34
bb33:
  %t127 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t128 = getelementptr { i64 }, ptr %t127, i32 0, i32 0
  %t129 = load i64, ptr %t128
  store i64 %t129, ptr %l6, !tbaa !24
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t131 = load i64, ptr %l6, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [1 x i64] }, ptr %t132, i32 0, i32 0
  store i64 1, ptr %t133
  %t135 = insertvalue { i64 } undef, i64 %t131, 0
  %t136 = getelementptr { i64, [1 x i64] }, ptr %t132, i32 0, i32 1
  store { i64 } %t135, ptr %t136
  %t137 = load { i64, [1 x i64] }, ptr %t132
  store { i64, [1 x i64] } %t137, ptr %rv
  br label %ret
bb36:
  %t139 = load { i64, [2 x i64] }, ptr %l1
  %t141 = extractvalue { i64, [2 x i64] } %t139, 0
  %t142 = icmp eq i64 %t141, 5
  br i1 %t142, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, [1 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [1 x i64] }, ptr %t144, i32 0, i32 0
  store i64 3, ptr %t145
  %t146 = load { i64, [1 x i64] }, ptr %t144
  store { i64, [1 x i64] } %t146, ptr %rv
  br label %ret
bb40:
  %t148 = load { i64, [2 x i64] }, ptr %l1
  %t150 = extractvalue { i64, [2 x i64] } %t148, 0
  %t151 = icmp eq i64 %t150, 4
  br i1 %t151, label %bb41, label %bb42
bb41:
  %t153 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t154 = getelementptr { i32 }, ptr %t153, i32 0, i32 0
  %t155 = load i32, ptr %t154
  store i32 %t155, ptr %l7, !tbaa !23
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i32, ptr %l7, !tbaa !23
  %t160 = sext i32 %t158 to i64
  %t163 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %t157, i64 %t160)
  store { i64, [1 x i64] } %t163, ptr %l79
  br label %bb44
bb44:
  %t164 = load { i64, [1 x i64] }, ptr %l79
  store { i64, [1 x i64] } %t164, ptr %rv
  br label %ret
bb45:
  %t165 = load { i64, [2 x i64] }, ptr %l1
  %t167 = extractvalue { i64, [2 x i64] } %t165, 0
  %t168 = icmp eq i64 %t167, 7
  br i1 %t168, label %bb46, label %bb47
bb46:
  %t170 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t171 = getelementptr { i64 }, ptr %t170, i32 0, i32 0
  %t172 = load i64, ptr %t171
  store i64 %t172, ptr %l8, !tbaa !24
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load i64, ptr %l8, !tbaa !24
  %t178 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efoundOf(ptr %v0, ptr %t174, i64 %t175)
  store { i64, [1 x i64] } %t178, ptr %l85
  br label %bb49
bb49:
  %t179 = load { i64, [1 x i64] }, ptr %l85
  store { i64, [1 x i64] } %t179, ptr %rv
  br label %ret
bb50:
  %t180 = load { i64, [2 x i64] }, ptr %l1
  %t182 = extractvalue { i64, [2 x i64] } %t180, 0
  %t183 = icmp eq i64 %t182, 8
  br i1 %t183, label %bb51, label %bb52
bb51:
  %t185 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t186 = getelementptr { i64, i64 }, ptr %t185, i32 0, i32 0
  %t187 = load i64, ptr %t186
  store i64 %t187, ptr %l9, !tbaa !24
  %t189 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t190 = getelementptr { i64, i64 }, ptr %t189, i32 0, i32 1
  %t191 = load i64, ptr %t190
  store i64 %t191, ptr %l10, !tbaa !24
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i64, ptr %l9, !tbaa !24
  %t195 = load i64, ptr %l10, !tbaa !24
  %t199 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epassedOr(ptr %v0, ptr %t193, i64 %t194, i64 %t195)
  store { i64, [1 x i64] } %t199, ptr %l93
  br label %bb54
bb54:
  %t200 = load { i64, [1 x i64] }, ptr %l93
  store { i64, [1 x i64] } %t200, ptr %rv
  br label %ret
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store { i64, [1 x i64] } zeroinitializer, ptr %t201
  %t202 = getelementptr { i64, [1 x i64] }, ptr %t201, i32 0, i32 0
  store i64 2, ptr %t202
  %t203 = load { i64, [1 x i64] }, ptr %t201
  store { i64, [1 x i64] } %t203, ptr %rv
  br label %ret
bb59:
  call void @__olang_check_failed(ptr @olang_loc_a3e3ce1f266a1e3a_904ea2ee4ca5797e)
  unreachable
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eslice(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/lower:pl"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l18 = alloca %"compiler/lower:pl"
  %l20 = alloca %"compiler/lower:pl"
  %l26 = alloca { i64, [4 x i64] }
  %l31 = alloca { i64, [4 x i64] }
  %l35 = alloca ptr
  %l36 = alloca { i64, [4 x i64] }
  %l39 = alloca i32
  %l41 = alloca { i64, [4 x i64] }
  %l42 = alloca ptr
  %l43 = alloca { i64, [4 x i64] }
  %l46 = alloca i32
  %l48 = alloca { i64, [4 x i64] }
  %l53 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca %"compiler/lower:pl"
  %l59 = alloca %"compiler/lower:pl"
  %l60 = alloca %"compiler/mir:Lvalue"
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, [4 x i64] }
  %l65 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l68 = alloca { i64, [4 x i64] }
  %l70 = alloca { i64, [4 x i64] }
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, [4 x i64] }
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, [4 x i64] }
  %l101 = alloca { i64, ptr }
  %l103 = alloca { i64, [4 x i64] }
  %l111 = alloca ptr
  %l112 = alloca i32
  %l115 = alloca %"compiler/mir:Lvalue"
  %l121 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t44 = alloca { i64, [4 x i64] }, align 8
  %t97 = alloca { i64, [4 x i64] }, align 8
  %t245 = alloca { i64, [15 x i64] }, align 8
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 25
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Slice", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t12 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %s0, ptr %t4, ptr %t8)
  store %"compiler/lower:pl" %t12, ptr %l18
  br label %bb1
bb1:
  %t14 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l18)
  store %"compiler/lower:pl" %t14, ptr %l20
  br label %bb2
bb2:
  %t15 = load %"compiler/lower:pl", ptr %l20
  store %"compiler/lower:pl" %t15, ptr %l4
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 25
  store i1 false, ptr %t18, !tbaa !21
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Slice", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t27 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t19, ptr %t23)
  store { i64, [4 x i64] } %t27, ptr %l26
  br label %bb3
bb3:
  %t28 = load { i64, [4 x i64] }, ptr %l26
  store { i64, [4 x i64] } %t28, ptr %l5
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Slice", ptr %t30, i32 0, i32 2
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t37 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t29, ptr %t33)
  store { i64, [4 x i64] } %t37, ptr %l31
  br label %bb4
bb4:
  %t38 = load { i64, [4 x i64] }, ptr %l31
  store { i64, [4 x i64] } %t38, ptr %l6
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 10
  %t42 = load i1, ptr %t41, !tbaa !21
  br i1 %t42, label %bb5, label %bb6
bb5:
  store { i64, [4 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 0
  store i64 0, ptr %t45
  %t46 = load { i64, [4 x i64] }, ptr %t44
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t46, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l35, !tbaa !29
  %t49 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [4 x i64] } %t49, ptr %l36
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Slice", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t53)
  store i32 %t55, ptr %l39
  br label %bb8
bb8:
  %t56 = load %"compiler/source:Span", ptr %l3
  %t57 = load ptr, ptr %l35, !tbaa !29
  %t58 = load { i64, [4 x i64] }, ptr %l36
  %t59 = load i32, ptr %l39, !tbaa !23
  %t61 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t57, { i64, [4 x i64] } %t58, i32 %t59, %"compiler/source:Span" %t56)
  store { i64, [4 x i64] } %t61, ptr %l41
  br label %bb9
bb9:
  %t62 = load { i64, [4 x i64] }, ptr %l41
  store { i64, [4 x i64] } %t62, ptr %l7
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l42, !tbaa !29
  %t64 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [4 x i64] } %t64, ptr %l43
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Slice", ptr %t65, i32 0, i32 2
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t68)
  store i32 %t70, ptr %l46
  br label %bb10
bb10:
  %t71 = load %"compiler/source:Span", ptr %l3
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t73 = load { i64, [4 x i64] }, ptr %l43
  %t74 = load i32, ptr %l46, !tbaa !23
  %t76 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t72, { i64, [4 x i64] } %t73, i32 %t74, %"compiler/source:Span" %t71)
  store { i64, [4 x i64] } %t76, ptr %l48
  br label %bb11
bb11:
  %t77 = load { i64, [4 x i64] }, ptr %l48
  store { i64, [4 x i64] } %t77, ptr %l8
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Slice", ptr %t78, i32 0, i32 3
  %t81 = load i32, ptr %t80, !range !{i32 0, i32 3}
  %t83 = trunc i64 0 to i32
  %t84 = icmp eq i32 %t81, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l53, !tbaa !29
  store i32 22, ptr %l54
  %t89 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t89, ptr %l55, !tbaa !23
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l56, !tbaa !29
  %t91 = load %"compiler/lower:pl", ptr %l4
  store %"compiler/lower:pl" %t91, ptr %l57
  %t93 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l57)
  store %"compiler/lower:pl" %t93, ptr %l59
  br label %bb14
bb13:
  br label %bb24
bb14:
  %t94 = load ptr, ptr %l56, !tbaa !29
  %t95 = load %"compiler/lower:pl", ptr %l59
  %t96 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t94, %"compiler/lower:pl" %t95)
  store %"compiler/mir:Lvalue" %t96, ptr %l60
  br label %bb15
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 0
  store i64 1, ptr %t98
  %t99 = load %"compiler/mir:Lvalue", ptr %l60
  %t100 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t99, 0
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t100, ptr %t101
  %t102 = load { i64, [4 x i64] }, ptr %t97
  %t103 = mul i64 1, 40
  %t104 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t103)
  %t105 = insertvalue { i64, ptr } undef, i64 1, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  store { i64, ptr } %t106, ptr %l62, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t109, i64 0
  store { i64, [4 x i64] } %t102, ptr %t110
  %t111 = load %"compiler/source:Span", ptr %l3
  %t112 = load ptr, ptr %l53, !tbaa !29
  %t113 = load i32, ptr %l54, !range !{i32 0, i32 52}
  %t114 = load i32, ptr %l55, !tbaa !23
  %t115 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t117 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t112, i32 %t113, i32 %t114, { i64, ptr } %t115, %"compiler/source:Span" %t111)
  store { i64, [4 x i64] } %t117, ptr %l64
  br label %bb16
bb16:
  %t118 = load { i64, [4 x i64] }, ptr %l64
  store { i64, [4 x i64] } %t118, ptr %l9
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l65, !tbaa !29
  store i32 18, ptr %l66
  %t120 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t120, ptr %l67, !tbaa !23
  %t121 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t121, ptr %l68
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t122, i64 0)
  store { i64, [4 x i64] } %t124, ptr %l70
  br label %bb17
bb17:
  %t125 = mul i64 2, 40
  %t126 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 2, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l71, !tbaa !27
  %t129 = load { i64, [4 x i64] }, ptr %l68
  %t130 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t131, i64 0
  store { i64, [4 x i64] } %t129, ptr %t132
  %t133 = load { i64, [4 x i64] }, ptr %l70
  %t134 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t135, i64 1
  store { i64, [4 x i64] } %t133, ptr %t136
  %t137 = load %"compiler/source:Span", ptr %l3
  %t138 = load ptr, ptr %l65, !tbaa !29
  %t139 = load i32, ptr %l66, !range !{i32 0, i32 52}
  %t140 = load i32, ptr %l67, !tbaa !23
  %t141 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t143 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t138, i32 %t139, i32 %t140, { i64, ptr } %t141, %"compiler/source:Span" %t137)
  store { i64, [4 x i64] } %t143, ptr %l73
  br label %bb18
bb18:
  %t144 = load { i64, [4 x i64] }, ptr %l73
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Slice", ptr %t147, i32 0, i32 3
  %t150 = load i32, ptr %t149, !range !{i32 0, i32 3}
  %t151 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t152 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t145, { i64, [4 x i64] } %t144, i32 %t150, i32 8, i64 %t151, %"compiler/source:Span" %t152)
  br label %bb19
bb19:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t161 = load { i64, [4 x i64] }, ptr %l7
  %t162 = load { i64, [4 x i64] }, ptr %l8
  %t163 = mul i64 2, 40
  %t164 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 2, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l86, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr { i64, [4 x i64] }, ptr %t169, i64 0
  store { i64, [4 x i64] } %t161, ptr %t170
  %t172 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t173, i64 1
  store { i64, [4 x i64] } %t162, ptr %t174
  %t175 = load %"compiler/source:Span", ptr %l3
  %t179 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t181 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t159, i32 16, i32 %t160, { i64, ptr } %t179, %"compiler/source:Span" %t175)
  store { i64, [4 x i64] } %t181, ptr %l88
  br label %bb20
bb20:
  %t182 = load { i64, [4 x i64] }, ptr %l88
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l1, !tbaa !29
  %t187 = getelementptr %"compiler/typed:Slice", ptr %t185, i32 0, i32 3
  %t188 = load i32, ptr %t187, !range !{i32 0, i32 3}
  %t189 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t190 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t183, { i64, [4 x i64] } %t182, i32 %t188, i32 8, i64 %t189, %"compiler/source:Span" %t190)
  br label %bb21
bb21:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t199 = load { i64, [4 x i64] }, ptr %l8
  %t200 = load { i64, [4 x i64] }, ptr %l9
  %t201 = mul i64 2, 40
  %t202 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t201)
  %t203 = insertvalue { i64, ptr } undef, i64 2, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  store { i64, ptr } %t204, ptr %l101, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t207, i64 0
  store { i64, [4 x i64] } %t199, ptr %t208
  %t210 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t211, i64 1
  store { i64, [4 x i64] } %t200, ptr %t212
  %t213 = load %"compiler/source:Span", ptr %l3
  %t217 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t219 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t197, i32 16, i32 %t198, { i64, ptr } %t217, %"compiler/source:Span" %t213)
  store { i64, [4 x i64] } %t219, ptr %l103
  br label %bb22
bb22:
  %t220 = load { i64, [4 x i64] }, ptr %l103
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Slice", ptr %t223, i32 0, i32 3
  %t226 = load i32, ptr %t225, !range !{i32 0, i32 3}
  %t227 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t228 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t221, { i64, [4 x i64] } %t220, i32 %t226, i32 8, i64 %t227, %"compiler/source:Span" %t228)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l111, !tbaa !29
  %t236 = load i32, ptr %l2, !tbaa !23
  store i32 %t236, ptr %l112, !tbaa !23
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load %"compiler/lower:pl", ptr %l4
  %t241 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t237, %"compiler/lower:pl" %t238)
  store %"compiler/mir:Lvalue" %t241, ptr %l115
  br label %bb25
bb25:
  %t242 = load { i64, [4 x i64] }, ptr %l7
  %t243 = load { i64, [4 x i64] }, ptr %l8
  %t244 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [15 x i64] }, ptr %t245, i32 0, i32 0
  store i64 9, ptr %t246
  %t247 = load %"compiler/mir:Lvalue", ptr %l115
  %t248 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } undef, %"compiler/mir:Lvalue" %t247, 0
  %t250 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t248, { i64, [4 x i64] } %t242, 1
  %t252 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t250, { i64, [4 x i64] } %t243, 2
  %t254 = insertvalue { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t252, i32 %t244, 3
  %t255 = getelementptr { i64, [15 x i64] }, ptr %t245, i32 0, i32 1
  store { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 } %t254, ptr %t255
  %t256 = load { i64, [15 x i64] }, ptr %t245
  %t257 = load %"compiler/source:Span", ptr %l3
  %t258 = load ptr, ptr %l111, !tbaa !29
  %t259 = load i32, ptr %l112, !tbaa !23
  %t262 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t258, i32 %t259, { i64, [15 x i64] } %t256, %"compiler/source:Span" %t257)
  store { i64, [4 x i64] } %t262, ptr %l121
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t263 = load { i64, [4 x i64] }, ptr %l121
  store { i64, [4 x i64] } %t263, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2esuspend(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l20 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca { i64, [4 x i64] }
  %l30 = alloca { i64, [4 x i64] }
  %l37 = alloca i32
  %l45 = alloca i64
  %l46 = alloca { i64, [1 x i64] }
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l77 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca i64
  %l86 = alloca %"compiler/lower:level"
  %l93 = alloca i32
  %l96 = alloca i32
  %l97 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l100 = alloca %"compiler/mir:Lvalue"
  %l101 = alloca { i64, [4 x i64] }
  %l102 = alloca i32
  %l106 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %t64 = alloca { i64, [1 x i64] }, align 8
  %t77 = alloca i64
  %t160 = alloca { i64, [1 x i64] }, align 8
  %t192 = alloca { i64, [4 x i64] }, align 8
  %t207 = alloca { i64, [8 x i64] }, align 8
  %t231 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t4, i32 %t11)
  store i32 %t14, ptr %l20
  br label %bb1
bb1:
  %t15 = load i32, ptr %l20, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l21, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t22 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store { i64, [4 x i64] } %t22, ptr %l25
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t26 = load %"compiler/source:Span", ptr %l1
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load { i64, [4 x i64] }, ptr %l25
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efit(ptr %v0, ptr %v1, ptr %t27, { i64, [4 x i64] } %t28, ptr %t23, i32 %t25, %"compiler/source:Span" %t26)
  store { i64, [4 x i64] } %t32, ptr %l30
  br label %bb3
bb3:
  %t33 = load { i64, [4 x i64] }, ptr %l30
  store { i64, [4 x i64] } %t33, ptr %l4
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 10
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load { i64, [4 x i64] }, ptr %l4
  %t41 = load i32, ptr %l3, !tbaa !23
  %t42 = load %"compiler/source:Span", ptr %l1
  %t47 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t39, { i64, [4 x i64] } %t40, i32 %t41, %"compiler/source:Span" %t42)
  store i32 %t47, ptr %l37
  br label %bb7
bb7:
  %t48 = load i32, ptr %l37, !tbaa !23
  store i32 %t48, ptr %l5, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l5, !tbaa !23
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t53 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eretArrays(ptr %v0, ptr %v1, ptr %t49, i32 %t50, i32 %t51, ptr %t52, %"compiler/source:Span" %t53)
  br label %bb8
bb8:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t59, i32 0, i32 12
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l45
  br label %bb9
bb9:
  store { i64, [1 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [1 x i64] }, ptr %t64, i32 0, i32 0
  store i64 3, ptr %t65
  %t66 = load { i64, [1 x i64] }, ptr %t64
  store { i64, [1 x i64] } %t66, ptr %l46
  %t67 = load i64, ptr %l45, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb10, label %bb11
bb10:
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = icmp sle i64 %t70, 576460752303423487
  br i1 %t71, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c2ea6282af4907c_77e331cc54ab44a0)
  unreachable
bb12:
  %t73 = load i64, ptr %l45, !tbaa !24
  %t74 = mul i64 %t73, 16
  %t75 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t74)
  %t76 = load { i64, [1 x i64] }, ptr %l46
  store i64 0, ptr %t77
  br label %fill.78
fill.78:
  %t81 = load i64, ptr %t77
  %t82 = icmp slt i64 %t81, %t73
  br i1 %t82, label %fillb.79, label %filld.80
fillb.79:
  %t83 = getelementptr { i64, [1 x i64] }, ptr %t75, i64 %t81
  store { i64, [1 x i64] } %t76, ptr %t83
  %t84 = add i64 %t81, 1
  store i64 %t84, ptr %t77
  br label %fill.78
filld.80:
  %t85 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t75, 1
  store { i64, ptr } %t86, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lower:lowering", ptr %t88, i32 0, i32 12
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t90)
  store i64 %t92, ptr %l52
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_c2ea6282af4907c_77e331cc54ab44a0)
  unreachable
bb14:
  %t93 = load i64, ptr %l52, !tbaa !24
  store i64 %t93, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = icmp sgt i64 %t94, %t95
  br i1 %t98, label %bb15, label %bb16
bb15:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb20
bb17:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = sub i64 %t104, %t105
  %t109 = load i64, ptr %l9, !tbaa !24
  %t112 = add i64 %t108, %t109
  %t114 = sub i64 %t112, 1
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = sdiv i64 %t114, %t115
  store i64 %t118, ptr %l59, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb19
bb19:
  %t120 = load i64, ptr %l59, !tbaa !24
  store i64 %t120, ptr %l56, !tbaa !24
  br label %bb20
bb20:
  %t121 = load i64, ptr %l56, !tbaa !24
  store i64 %t121, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t122 = load i64, ptr %l11, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = icmp slt i64 %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t131 = load i64, ptr %l11, !tbaa !24
  %t132 = load i64, ptr %l9, !tbaa !24
  %t135 = mul i64 %t131, %t132
  %t138 = add i64 %t130, %t135
  store i64 %t138, ptr %l12, !tbaa !24
  %t140 = load i64, ptr %l12, !tbaa !24
  store i64 %t140, ptr %l77, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/lower:lowering", ptr %t141, i32 0, i32 12
  store ptr %t143, ptr %l79, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/lower:lowering", ptr %t144, i32 0, i32 12
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t146)
  store i64 %t148, ptr %l82
  br label %bb25
bb25:
  %t149 = load i64, ptr %l82, !tbaa !24
  %t150 = sub i64 %t149, 1
  %t151 = load i64, ptr %l12, !tbaa !24
  %t154 = sub i64 %t150, %t151
  %t155 = load ptr, ptr %l79, !tbaa !29
  %t157 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t155, i64 %t154)
  store %"compiler/lower:level" %t157, ptr %l86
  br label %bb26
bb26:
  %t158 = getelementptr %"compiler/lower:level", ptr %l86, i32 0, i32 0
  %t159 = load i32, ptr %t158, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [1 x i64] }, ptr %t160, i32 0, i32 0
  store i64 0, ptr %t161
  %t163 = insertvalue { i32 } undef, i32 %t159, 0
  %t164 = getelementptr { i64, [1 x i64] }, ptr %t160, i32 0, i32 1
  store { i32 } %t163, ptr %t164
  %t165 = load { i64, [1 x i64] }, ptr %t160
  %t167 = load i64, ptr %l77, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr { i64, [1 x i64] }, ptr %t169, i64 %t167
  store { i64, [1 x i64] } %t165, ptr %t170
  br label %bb27
bb27:
  %t171 = load i64, ptr %l11, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l11, !tbaa !24
  br label %bb21
bb28:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/lower:lowering", ptr %t175, i32 0, i32 3
  %t179 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t177)
  store i32 %t179, ptr %l93
  br label %bb29
bb29:
  %t180 = load i32, ptr %l93, !tbaa !23
  store i32 %t180, ptr %l13, !tbaa !23
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/lower:lowering", ptr %t181, i32 0, i32 3
  %t185 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t183)
  store i32 %t185, ptr %l96
  br label %bb30
bb30:
  %t186 = load i32, ptr %l96, !tbaa !23
  store i32 %t186, ptr %l14, !tbaa !23
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l97, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t188, ptr %l98
  %t189 = load i32, ptr %l5, !tbaa !23
  %t191 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t189)
  store %"compiler/mir:Lvalue" %t191, ptr %l100
  br label %bb31
bb31:
  store { i64, [4 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 0
  store i64 1, ptr %t193
  %t194 = load %"compiler/mir:Lvalue", ptr %l100
  %t195 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t194, 0
  %t196 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t195, ptr %t196
  %t197 = load { i64, [4 x i64] }, ptr %t192
  store { i64, [4 x i64] } %t197, ptr %l101
  %t198 = load i32, ptr %l13, !tbaa !23
  store i32 %t198, ptr %l102, !tbaa !23
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/lower:lowering", ptr %t199, i32 0, i32 3
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t205 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t201, { i64, ptr } %t202)
  store %"compiler/mir:Range" %t205, ptr %l106
  br label %bb32
bb32:
  %t206 = load i32, ptr %l14, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [8 x i64] }, ptr %t207, i32 0, i32 0
  store i64 11, ptr %t208
  %t209 = load %"compiler/source:Span", ptr %l98
  %t210 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 } undef, %"compiler/source:Span" %t209, 0
  %t211 = load { i64, [4 x i64] }, ptr %l101
  %t212 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 } %t210, { i64, [4 x i64] } %t211, 1
  %t213 = load i32, ptr %l102, !tbaa !23
  %t214 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 } %t212, i32 %t213, 2
  %t215 = load %"compiler/mir:Range", ptr %l106
  %t216 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 } %t214, %"compiler/mir:Range" %t215, 3
  %t218 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 } %t216, i32 %t206, 4
  %t219 = getelementptr { i64, [8 x i64] }, ptr %t207, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 } %t218, ptr %t219
  %t220 = load { i64, [8 x i64] }, ptr %t207
  %t221 = load ptr, ptr %l97, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t221, { i64, [8 x i64] } %t220)
  br label %bb33
bb33:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t223, i32 %t224)
  br label %bb34
bb34:
  %t227 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t227, i64 0)
  br label %bb35
bb35:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l1
  store { i64, [8 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [8 x i64] }, ptr %t231, i32 0, i32 0
  store i64 12, ptr %t232
  %t234 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t230, 0
  %t235 = getelementptr { i64, [8 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span" } %t234, ptr %t235
  %t236 = load { i64, [8 x i64] }, ptr %t231
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t229, { i64, [8 x i64] } %t236)
  br label %bb36
bb36:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t239, i32 %t240)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/lower:pl"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l22 = alloca %"compiler/lower:pl"
  %l24 = alloca %"compiler/lower:pl"
  %l28 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca %"compiler/mir:Lvalue"
  %l35 = alloca { i64, [4 x i64] }
  %l40 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t39 = alloca { i64, [4 x i64] }, align 8
  %t50 = alloca { i64, [15 x i64] }, align 8
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
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ereleases(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %t2, i1 false)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l7
  br label %bb1
bb1:
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %s0, ptr %l7)
  store i64 %t7, ptr %l9
  br label %bb2
bb2:
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp sgt i64 %t8, 0
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb6
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l14
  br label %bb5
bb5:
  %t16 = load i1, ptr %l14, !tbaa !21
  store i1 %t16, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb10
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l18
  br label %bb9
bb9:
  %t23 = load i1, ptr %l18, !tbaa !21
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t30 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %s1, ptr %t25, ptr %t26)
  store %"compiler/lower:pl" %t30, ptr %l22
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t32 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l22)
  store %"compiler/lower:pl" %t32, ptr %l24
  br label %bb14
bb14:
  %t33 = load %"compiler/lower:pl", ptr %l24
  store %"compiler/lower:pl" %t33, ptr %l4
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 10
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb15, label %bb16
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 0
  store i64 0, ptr %t40
  %t41 = load { i64, [4 x i64] }, ptr %t39
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t41, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l28, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  store i32 %t44, ptr %l29, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/lower:pl", ptr %l4
  %t49 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t45, %"compiler/lower:pl" %t46)
  store %"compiler/mir:Lvalue" %t49, ptr %l32
  br label %bb18
bb18:
  store { i64, [15 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [15 x i64] }, ptr %t50, i32 0, i32 0
  store i64 2, ptr %t51
  %t52 = load %"compiler/mir:Lvalue", ptr %l32
  %t53 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t52, 0
  %t54 = getelementptr { i64, [15 x i64] }, ptr %t50, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t53, ptr %t54
  %t55 = load { i64, [15 x i64] }, ptr %t50
  %t56 = load %"compiler/source:Span", ptr %l3
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = load i32, ptr %l29, !tbaa !23
  %t61 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t57, i32 %t58, { i64, [15 x i64] } %t55, %"compiler/source:Span" %t56)
  store { i64, [4 x i64] } %t61, ptr %l35
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t62 = load { i64, [4 x i64] }, ptr %l35
  store { i64, [4 x i64] } %t62, ptr %rv
  br label %ret
bb20:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = load i32, ptr %l2, !tbaa !23
  %t66 = load %"compiler/source:Span", ptr %l3
  %t71 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eread(ptr %v0, ptr %v1, ptr %t63, ptr %t64, i32 %t65, %"compiler/source:Span" %t66)
  store { i64, [4 x i64] } %t71, ptr %l40
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t72 = load { i64, [4 x i64] }, ptr %l40
  store { i64, [4 x i64] } %t72, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etaskType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { { i64, [7 x i64] }, i32 }
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i1
  %l45 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca i1
  %l53 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca i1
  %l65 = alloca { { i64, [7 x i64] }, i32 }
  %l68 = alloca ptr
  %l69 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb40
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  store ptr %t21, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t22 = load ptr, ptr %l20, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 5}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l21, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { i32 }, ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/lower:Lowerer", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = load i32, ptr %l4, !tbaa !23
  %t46 = sext i32 %t44 to i64
  %t49 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t42, i64 %t46)
  store ptr %t49, ptr %l32
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %t52, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
bb12:
  %t55 = load ptr, ptr %l3, !tbaa !29
  store ptr %t55, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 5}
  %t62 = icmp eq i64 %t60, 1
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t63 = load i1, ptr %l36, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { i64 }, ptr %t66, i32 0, i32 0
  %t68 = load i64, ptr %t67
  store i64 %t68, ptr %l5, !tbaa !24
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lower:lowering", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/lower:Lowerer", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t77 = load i64, ptr %l5, !tbaa !24
  %t80 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t76, i64 %t77)
  store i32 %t80, ptr %l45
  br label %bb18
bb18:
  %t81 = load i32, ptr %l45, !tbaa !23
  store i32 %t81, ptr %rv
  br label %ret
bb19:
  %t82 = load ptr, ptr %l3, !tbaa !29
  store ptr %t82, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t83 = load ptr, ptr %l46, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l46, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 5}
  %t89 = icmp eq i64 %t87, 2
  store i1 %t89, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t90 = load i1, ptr %l47, !tbaa !21
  br i1 %t90, label %bb22, label %bb23
bb22:
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = getelementptr { i64, [3 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { ptr }, ptr %t93, i32 0, i32 0
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t97)
  store i32 %t99, ptr %l53
  br label %bb25
bb25:
  %t100 = load i32, ptr %l53, !tbaa !23
  store i32 %t100, ptr %rv
  br label %ret
bb26:
  %t101 = load ptr, ptr %l3, !tbaa !29
  store ptr %t101, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t102 = load ptr, ptr %l54, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb27, label %bb28
bb27:
  %t105 = load ptr, ptr %l54, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 5}
  %t108 = icmp eq i64 %t106, 4
  store i1 %t108, ptr %l55, !tbaa !21
  br label %bb28
bb28:
  %t109 = load i1, ptr %l55, !tbaa !21
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t112 = getelementptr { i64, [3 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { i32, i32 }, ptr %t112, i32 0, i32 0
  %t114 = load i32, ptr %t113, !range !{i32 0, i32 2}
  store i32 %t114, ptr %l7
  %t116 = load ptr, ptr %l3, !tbaa !29
  %t118 = getelementptr { i64, [3 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { i32, i32 }, ptr %t118, i32 0, i32 1
  %t120 = load i32, ptr %t119
  store i32 %t120, ptr %l8, !tbaa !23
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i32, ptr %l7, !range !{i32 0, i32 2}
  %t124 = load i32, ptr %l8, !tbaa !23
  %t128 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCallee(ptr %v0, ptr %t122, i32 %t123, i32 %t124)
  store { { i64, [7 x i64] }, i32 } %t128, ptr %l65
  br label %bb32
bb32:
  %t129 = load { { i64, [7 x i64] }, i32 }, ptr %l65
  store { { i64, [7 x i64] }, i32 } %t129, ptr %l9
  %t130 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l9, i32 0, i32 1
  %t131 = load i32, ptr %t130, !tbaa !23
  store i32 %t131, ptr %rv
  br label %ret
bb33:
  %t135 = load ptr, ptr %l3, !tbaa !29
  store ptr %t135, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t136 = load ptr, ptr %l68, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb34, label %bb35
bb34:
  %t139 = load ptr, ptr %l68, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 5}
  %t142 = icmp eq i64 %t140, 3
  store i1 %t142, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t143 = load i1, ptr %l69, !tbaa !21
  br i1 %t143, label %bb36, label %bb37
bb36:
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t146 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { i32, i64, i32 }, ptr %t146, i32 0, i32 2
  %t148 = load i32, ptr %t147
  store i32 %t148, ptr %l11, !tbaa !23
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t150 = load i32, ptr %l11, !tbaa !23
  store i32 %t150, ptr %rv
  br label %ret
bb39:
  call void @__olang_check_failed(ptr @olang_loc_3b3f675a7fcfa09e_a6d8609e08455d8a)
  unreachable
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_a39e67f1cd7c0b1f_e499cc399c2ba1cb)
  unreachable
bb45:
  %t152 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l31 = alloca %"compiler/mir:Local"
  %l36 = alloca i1
  %l37 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/mir:Lvalue"
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l51 = alloca %"compiler/lower:pl"
  %l53 = alloca %"compiler/lower:pl"
  %l54 = alloca %"compiler/mir:Lvalue"
  %l66 = alloca ptr
  %l68 = alloca %"compiler/source:Span"
  %l70 = alloca %"compiler/mir:Lvalue"
  %l88 = alloca ptr
  %l92 = alloca ptr
  %l102 = alloca ptr
  %l106 = alloca i32
  %l110 = alloca ptr
  %l111 = alloca i64
  %l114 = alloca i32
  %l115 = alloca ptr
  %l119 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t73 = alloca { i64, [4 x i64] }, align 8
  %t80 = alloca { i64, [15 x i64] }, align 8
  %t86 = alloca { i64, [21 x i64] }, align 8
  %t103 = alloca { i64, [2 x i64] }, align 8
  %t111 = alloca { i64, [1 x i64] }, align 8
  %t136 = alloca { i64, [15 x i64] }, align 8
  %t146 = alloca { i64, [21 x i64] }, align 8
  %t166 = alloca { i64, [15 x i64] }, align 8
  %t176 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 18
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l15, !tbaa !29
  %t10 = getelementptr %"compiler/lower:tryCtx", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l17, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 %t12
  %t17 = load ptr, ptr %t16, !tbaa !39
  store ptr %t17, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Clause", ptr %t19, i32 0, i32 5
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb2, label %bb3
bb2:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Clause", ptr %t26, i32 0, i32 5
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = trunc i64 %t29 to i32
  store i32 %t31, ptr %l7, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 3
  %t37 = getelementptr %"compiler/mir:Fn", ptr %t36, i32 0, i32 7
  %t38 = load i32, ptr %l7, !tbaa !23
  %t40 = sext i32 %t38 to i64
  %t43 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t37, i64 %t40)
  store %"compiler/mir:Local" %t43, ptr %l31
  br label %bb4
bb3:
  br label %bb17
bb4:
  %t44 = getelementptr %"compiler/mir:Local", ptr %l31, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  store i32 %t45, ptr %l8, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 2
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i32, ptr %l8, !tbaa !23
  %t54 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l36
  br label %bb5
bb5:
  %t55 = load i1, ptr %l36, !tbaa !21
  br i1 %t55, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  store i1 true, ptr %l6, !tbaa !21
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l37, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Clause", ptr %t57, i32 0, i32 0
  %t60 = load %"compiler/source:Span", ptr %t59
  store %"compiler/source:Span" %t60, ptr %l39
  %t61 = load i32, ptr %l7, !tbaa !23
  %t63 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t61)
  store %"compiler/mir:Lvalue" %t63, ptr %l41
  br label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l66, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Clause", ptr %t65, i32 0, i32 0
  %t68 = load %"compiler/source:Span", ptr %t67
  store %"compiler/source:Span" %t68, ptr %l68
  %t69 = load i32, ptr %l7, !tbaa !23
  %t71 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t69)
  store %"compiler/mir:Lvalue" %t71, ptr %l70
  br label %bb14
bb8:
  %t72 = load i32, ptr %l8, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 0
  store i64 2, ptr %t74
  %t76 = insertvalue { i32, i64 } undef, i32 %t72, 0
  %t77 = insertvalue { i32, i64 } %t76, i64 0, 1
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  store { i32, i64 } %t77, ptr %t78
  %t79 = load { i64, [4 x i64] }, ptr %t73
  store { i64, [15 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [15 x i64] }, ptr %t80, i32 0, i32 0
  store i64 0, ptr %t81
  %t83 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t79, 0
  %t84 = getelementptr { i64, [15 x i64] }, ptr %t80, i32 0, i32 1
  store { { i64, [4 x i64] } } %t83, ptr %t84
  %t85 = load { i64, [15 x i64] }, ptr %t80
  store { i64, [21 x i64] } zeroinitializer, ptr %t86
  %t87 = getelementptr { i64, [21 x i64] }, ptr %t86, i32 0, i32 0
  store i64 0, ptr %t87
  %t88 = load %"compiler/source:Span", ptr %l39
  %t89 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t88, 0
  %t90 = load %"compiler/mir:Lvalue", ptr %l41
  %t91 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t89, %"compiler/mir:Lvalue" %t90, 1
  %t93 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t91, { i64, [15 x i64] } %t85, 2
  %t94 = getelementptr { i64, [21 x i64] }, ptr %t86, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t93, ptr %t94
  %t95 = load { i64, [21 x i64] }, ptr %t86
  %t97 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t95, ptr %t97
  %t98 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t98, ptr %t97)
  br label %bb9
bb9:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l47, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l48, !tbaa !29
  %t102 = load i32, ptr %l7, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [2 x i64] }, ptr %t103, i32 0, i32 0
  store i64 1, ptr %t104
  %t106 = insertvalue { i32 } undef, i32 %t102, 0
  %t107 = getelementptr { i64, [2 x i64] }, ptr %t103, i32 0, i32 1
  store { i32 } %t106, ptr %t107
  %t108 = load { i64, [2 x i64] }, ptr %t103
  %t110 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s2, { i64, [2 x i64] } %t108)
  store %"compiler/lower:pl" %t110, ptr %l51
  br label %bb10
bb10:
  store { i64, [1 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [1 x i64] }, ptr %t111, i32 0, i32 0
  store i64 0, ptr %t112
  %t113 = insertvalue { i64 } undef, i64 0, 0
  %t114 = getelementptr { i64, [1 x i64] }, ptr %t111, i32 0, i32 1
  store { i64 } %t113, ptr %t114
  %t115 = load { i64, [1 x i64] }, ptr %t111
  %t116 = load ptr, ptr %l48, !tbaa !29
  %t117 = load %"compiler/lower:pl", ptr %l51
  %t119 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s2, ptr %s2, ptr %t116, %"compiler/lower:pl" %t117, { i64, [1 x i64] } %t115)
  store %"compiler/lower:pl" %t119, ptr %l53
  br label %bb11
bb11:
  %t120 = load ptr, ptr %l47, !tbaa !29
  %t121 = load %"compiler/lower:pl", ptr %l53
  %t122 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t120, %"compiler/lower:pl" %t121)
  store %"compiler/mir:Lvalue" %t122, ptr %l54
  br label %bb12
bb12:
  %t123 = load %"compiler/mir:Lvalue", ptr %l54
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l5, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Clause", ptr %t125, i32 0, i32 0
  %t128 = load %"compiler/source:Span", ptr %t127
  %t130 = load { i64, [4 x i64] }, ptr %l3
  %t131 = load i32, ptr %l4, !tbaa !23
  %t132 = load ptr, ptr %l5, !tbaa !29
  %t134 = getelementptr %"compiler/typed:Clause", ptr %t132, i32 0, i32 6
  %t135 = load i32, ptr %t134, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [15 x i64] }, ptr %t136, i32 0, i32 0
  store i64 11, ptr %t137
  %t139 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t130, 0
  %t141 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t139, i32 %t131, 1
  %t143 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t141, i32 %t135, 2
  %t144 = getelementptr { i64, [15 x i64] }, ptr %t136, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t143, ptr %t144
  %t145 = load { i64, [15 x i64] }, ptr %t136
  store { i64, [21 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [21 x i64] }, ptr %t146, i32 0, i32 0
  store i64 0, ptr %t147
  %t149 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t128, 0
  %t151 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t149, %"compiler/mir:Lvalue" %t123, 1
  %t153 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t151, { i64, [15 x i64] } %t145, 2
  %t154 = getelementptr { i64, [21 x i64] }, ptr %t146, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t153, ptr %t154
  %t155 = load { i64, [21 x i64] }, ptr %t146
  %t157 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t155, ptr %t157
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t124, ptr %t157)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb14:
  %t160 = load { i64, [4 x i64] }, ptr %l3
  %t161 = load i32, ptr %l4, !tbaa !23
  %t162 = load ptr, ptr %l5, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Clause", ptr %t162, i32 0, i32 6
  %t165 = load i32, ptr %t164, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [15 x i64] }, ptr %t166, i32 0, i32 0
  store i64 11, ptr %t167
  %t169 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t160, 0
  %t171 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t169, i32 %t161, 1
  %t173 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t171, i32 %t165, 2
  %t174 = getelementptr { i64, [15 x i64] }, ptr %t166, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t173, ptr %t174
  %t175 = load { i64, [15 x i64] }, ptr %t166
  store { i64, [21 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [21 x i64] }, ptr %t176, i32 0, i32 0
  store i64 0, ptr %t177
  %t178 = load %"compiler/source:Span", ptr %l68
  %t179 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t178, 0
  %t180 = load %"compiler/mir:Lvalue", ptr %l70
  %t181 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t179, %"compiler/mir:Lvalue" %t180, 1
  %t183 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t181, { i64, [15 x i64] } %t175, 2
  %t184 = getelementptr { i64, [21 x i64] }, ptr %t176, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t183, ptr %t184
  %t185 = load { i64, [21 x i64] }, ptr %t176
  %t187 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 176, i64 8)
  store { i64, [21 x i64] } %t185, ptr %t187
  %t188 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s3, ptr %t188, ptr %t187)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t190 = load i1, ptr %l6, !tbaa !21
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb18, label %bb19
bb18:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load { i64, [4 x i64] }, ptr %l3
  %t196 = load i32, ptr %l4, !tbaa !23
  %t197 = load ptr, ptr %l5, !tbaa !29
  %t199 = getelementptr %"compiler/typed:Clause", ptr %t197, i32 0, i32 0
  %t200 = load %"compiler/source:Span", ptr %t199
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epopIf(ptr %v0, ptr %t194, { i64, [4 x i64] } %t195, i32 %t196, %"compiler/source:Span" %t200)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/lower:lowering", ptr %t205, i32 0, i32 23
  %t208 = load i1, ptr %t207, !tbaa !21
  store i1 %t208, ptr %l10, !tbaa !21
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/lower:lowering", ptr %t210, i32 0, i32 23
  store i1 true, ptr %t212, !tbaa !21
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l88, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/lower:lowering", ptr %t214, i32 0, i32 18
  %t217 = load i64, ptr %l1, !tbaa !24
  %t220 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %s0, ptr %t216, i64 %t217)
  store ptr %t220, ptr %l92
  br label %bb22
bb22:
  %t221 = load ptr, ptr %l92, !tbaa !29
  %t223 = getelementptr %"compiler/lower:tryCtx", ptr %t221, i32 0, i32 0
  %t224 = load i64, ptr %t223, !tbaa !24
  %t225 = load ptr, ptr %l88, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t225, i64 %t224)
  br label %bb23
bb23:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load i1, ptr %l10, !tbaa !21
  %t231 = getelementptr %"compiler/lower:lowering", ptr %t227, i32 0, i32 23
  store i1 %t228, ptr %t231, !tbaa !21
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/lower:lowering", ptr %t232, i32 0, i32 10
  %t235 = load i1, ptr %t234, !tbaa !21
  br i1 %t235, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/lower:lowering", ptr %t237, i32 0, i32 18
  %t240 = load i64, ptr %l1, !tbaa !24
  %t243 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRefMut_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t239, i64 %t240)
  store ptr %t243, ptr %l102
  br label %bb27
bb27:
  %t244 = load ptr, ptr %l102, !tbaa !29
  store ptr %t244, ptr %l11, !tbaa !29
  %t245 = load ptr, ptr %l11, !tbaa !29
  %t247 = getelementptr %"compiler/lower:tryCtx", ptr %t245, i32 0, i32 4
  %t248 = load i64, ptr %l2, !tbaa !24
  %t251 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t247, i64 %t248)
  store i32 %t251, ptr %l106
  br label %bb28
bb28:
  %t252 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t253 = load i32, ptr %l106, !tbaa !23
  %t255 = icmp eq i32 %t253, %t252
  br i1 %t255, label %bb29, label %bb30
bb29:
  %t257 = load ptr, ptr %l11, !tbaa !29
  %t259 = getelementptr %"compiler/lower:tryCtx", ptr %t257, i32 0, i32 4
  store ptr %t259, ptr %l110, !tbaa !29
  %t260 = load i64, ptr %l2, !tbaa !24
  store i64 %t260, ptr %l111, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/lower:lowering", ptr %t261, i32 0, i32 3
  %t265 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t263)
  store i32 %t265, ptr %l114
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t266 = load ptr, ptr %l110, !tbaa !29
  %t267 = load i64, ptr %l111, !tbaa !24
  %t268 = load i32, ptr %l114, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eSetAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t266, i64 %t267, i32 %t268)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t269 = load ptr, ptr %l0, !tbaa !29
  store ptr %t269, ptr %l115, !tbaa !29
  %t270 = load ptr, ptr %l11, !tbaa !29
  %t272 = getelementptr %"compiler/lower:tryCtx", ptr %t270, i32 0, i32 4
  %t273 = load i64, ptr %l2, !tbaa !24
  %t276 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t272, i64 %t273)
  store i32 %t276, ptr %l119
  br label %bb34
bb34:
  %t277 = load ptr, ptr %l115, !tbaa !29
  %t278 = load i32, ptr %l119, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t277, i32 %t278)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCand(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/typed:Local"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l16 = alloca %"compiler/typed:Local"
  %l21 = alloca i1
  %l25 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l50 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i1
  %l60 = alloca i64
  %l64 = alloca i64
  %l67 = alloca i64
  %l88 = alloca i64
  %l98 = alloca i1
  %l101 = alloca i64
  %l105 = alloca i1
  %l106 = alloca ptr
  %l109 = alloca i32
  %l110 = alloca i1
  %l113 = alloca i1
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
  store %"compiler/typed:Local" %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load %"compiler/typed:Local", ptr %l16
  store %"compiler/typed:Local" %t11, ptr %l3
  %t12 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 7}
  store i32 %t13, ptr %l4
  %t15 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t17 = trunc i64 1 to i32
  %t18 = icmp eq i32 %t15, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t24 = trunc i64 3 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l21, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb4
bb4:
  %t29 = load i1, ptr %l21, !tbaa !21
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t30 = load i32, ptr %l4, !range !{i32 0, i32 7}
  %t32 = trunc i64 2 to i32
  %t33 = icmp eq i32 %t30, %t32
  %t35 = xor i1 %t33, true
  store i1 %t35, ptr %l25, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l25, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t39 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 6
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb14
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load i64, ptr %l2, !tbaa !24
  %t48 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %t42, ptr %t43, i64 %t44)
  store i1 %t48, ptr %l35
  br label %bb13
bb13:
  %t49 = load i1, ptr %l35, !tbaa !21
  store i1 %t49, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l31, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb18
bb16:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/typed:LocalUses", ptr %t51, i32 0, i32 7
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l40
  br label %bb17
bb17:
  %t58 = load i1, ptr %l40, !tbaa !21
  store i1 %t58, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t59 = load i1, ptr %l36, !tbaa !21
  br i1 %t59, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb22
bb20:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:LocalUses", ptr %t60, i32 0, i32 2
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t62, i64 %t63)
  store i1 %t66, ptr %l45
  br label %bb21
bb21:
  %t67 = load i1, ptr %l45, !tbaa !21
  store i1 %t67, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb26
bb24:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/typed:LocalUses", ptr %t69, i32 0, i32 4
  %t72 = load i64, ptr %l2, !tbaa !24
  %t75 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t71, i64 %t72)
  store i1 %t75, ptr %l50
  br label %bb25
bb25:
  %t76 = load i1, ptr %l50, !tbaa !21
  store i1 %t76, ptr %l46, !tbaa !21
  br label %bb26
bb26:
  %t77 = load i1, ptr %l46, !tbaa !21
  br i1 %t77, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb30
bb28:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  %t84 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %t78, ptr %t79, i64 %t80)
  store i1 %t84, ptr %l55
  br label %bb29
bb29:
  %t85 = load i1, ptr %l55, !tbaa !21
  %t86 = xor i1 %t85, true
  store i1 %t86, ptr %l51, !tbaa !21
  br label %bb30
bb30:
  %t88 = load i1, ptr %l51, !tbaa !21
  br i1 %t88, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  store i64 0, ptr %l5, !tbaa !24
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:LocalUses", ptr %t90, i32 0, i32 10
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t92)
  store i64 %t94, ptr %l60
  br label %bb34
bb34:
  %t95 = load i64, ptr %l60, !tbaa !24
  store i64 %t95, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t96 = load i64, ptr %l6, !tbaa !24
  %t97 = load i64, ptr %l5, !tbaa !24
  %t100 = icmp sgt i64 %t96, %t97
  br i1 %t100, label %bb35, label %bb36
bb35:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb40
bb37:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t107 = load i64, ptr %l5, !tbaa !24
  %t110 = sub i64 %t106, %t107
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = add i64 %t110, %t111
  %t116 = sub i64 %t114, 1
  %t117 = load i64, ptr %l7, !tbaa !24
  %t120 = sdiv i64 %t116, %t117
  store i64 %t120, ptr %l67, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb39
bb39:
  %t122 = load i64, ptr %l67, !tbaa !24
  store i64 %t122, ptr %l64, !tbaa !24
  br label %bb40
bb40:
  %t123 = load i64, ptr %l64, !tbaa !24
  store i64 %t123, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb41
bb41:
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l8, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb42, label %bb43
bb42:
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t132 = load i64, ptr %l5, !tbaa !24
  %t133 = load i64, ptr %l9, !tbaa !24
  %t134 = load i64, ptr %l7, !tbaa !24
  %t137 = mul i64 %t133, %t134
  %t140 = add i64 %t132, %t137
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr %"compiler/typed:LocalUses", ptr %t142, i32 0, i32 10
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t144, i64 %t140)
  store i64 %t148, ptr %l88
  br label %bb45
bb45:
  %t149 = load i64, ptr %l2, !tbaa !24
  %t150 = load i64, ptr %l88, !tbaa !24
  %t152 = icmp eq i64 %t150, %t149
  br i1 %t152, label %bb46, label %bb47
bb46:
  store i1 false, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l9, !tbaa !24
  br label %bb41
bb50:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/lower:lowering", ptr %t159, i32 0, i32 2
  %t162 = load ptr, ptr %t161, !tbaa !29
  store ptr %t162, ptr %l11, !tbaa !29
  %t164 = load ptr, ptr %l11, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t166 = load i32, ptr %t165, !tbaa !23
  %t169 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t164, i32 %t166)
  store i1 %t169, ptr %l98
  br label %bb51
bb51:
  %t170 = load i1, ptr %l98, !tbaa !21
  br i1 %t170, label %bb52, label %bb53
bb52:
  %t171 = load ptr, ptr %l11, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t173 = load i32, ptr %t172, !tbaa !23
  %t176 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t171, i32 %t173)
  store i64 %t176, ptr %l101
  br label %bb54
bb53:
  br label %bb60
bb54:
  %t177 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t178 = load i64, ptr %l101, !tbaa !24
  %t180 = and i64 %t178, %t177
  %t182 = icmp eq i64 %t180, 0
  br i1 %t182, label %bb55, label %bb56
bb55:
  %t184 = load ptr, ptr %l11, !tbaa !29
  store ptr %t184, ptr %l106, !tbaa !29
  %t185 = load ptr, ptr %l11, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t187 = load i32, ptr %t186, !tbaa !23
  %t190 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t185, i32 %t187)
  store i32 %t190, ptr %l109
  br label %bb57
bb56:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb59
bb57:
  %t191 = load ptr, ptr %l106, !tbaa !29
  %t192 = load i32, ptr %l109, !tbaa !23
  %t193 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %t191, i32 %t192)
  store i1 %t193, ptr %l110
  br label %bb58
bb58:
  %t194 = load i1, ptr %l110, !tbaa !21
  store i1 %t194, ptr %l105, !tbaa !21
  br label %bb59
bb59:
  %t195 = load i1, ptr %l105, !tbaa !21
  store i1 %t195, ptr %rv
  br label %ret
bb60:
  %t196 = load ptr, ptr %l11, !tbaa !29
  %t197 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t198 = load i32, ptr %t197, !tbaa !23
  %t201 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %t196, i32 %t198)
  store i1 %t201, ptr %l113
  br label %bb61
bb61:
  %t202 = load i1, ptr %l113, !tbaa !21
  store i1 %t202, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eyield(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/lower:collectCtx"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca { i64, [4 x i64] }
  %l7 = alloca %"compiler/mir:Lvalue"
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i32
  %l15 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca %"compiler/lower:collectCtx"
  %l29 = alloca { i64, [4 x i64] }
  %l33 = alloca %"compiler/mir:Lvalue"
  %l37 = alloca ptr
  %l39 = alloca { i64, [2 x i64] }
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca ptr
  %l58 = alloca %"compiler/source:Span"
  %l60 = alloca %"compiler/mir:Lvalue"
  %l61 = alloca i32
  %l62 = alloca i32
  %l64 = alloca ptr
  %l65 = alloca { i64, [4 x i64] }
  %l67 = alloca { i64, [4 x i64] }
  %l68 = alloca { i64, ptr }
  %l69 = alloca %"compiler/mir:Range"
  %l78 = alloca { i64, ptr }
  %l79 = alloca %"compiler/mir:Lvalue"
  %l80 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i32
  %l83 = alloca { i64, [4 x i64] }
  %l84 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca i32
  %l88 = alloca %"compiler/mir:Lvalue"
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, [4 x i64] }
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, [4 x i64] }
  %l98 = alloca i32
  %l101 = alloca i32
  %l109 = alloca ptr
  %l110 = alloca i32
  %l111 = alloca i32
  %l112 = alloca ptr
  %l113 = alloca i32
  %l114 = alloca i32
  %l115 = alloca { i64, [4 x i64] }
  %l117 = alloca { i64, [4 x i64] }
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, [4 x i64] }
  %l122 = alloca { i64, [4 x i64] }
  %l123 = alloca { i64, ptr }
  %l125 = alloca { i64, [4 x i64] }
  %l129 = alloca i32
  %l130 = alloca ptr
  %l131 = alloca %"compiler/source:Span"
  %l133 = alloca %"compiler/mir:Lvalue"
  %l141 = alloca ptr
  %l142 = alloca %"compiler/source:Span"
  %l148 = alloca { i64, ptr }
  %l149 = alloca %"compiler/mir:Lvalue"
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l157 = alloca %"compiler/mir:Lvalue"
  %l159 = alloca %"compiler/mir:Lvalue"
  %l168 = alloca ptr
  %l169 = alloca %"compiler/source:Span"
  %l177 = alloca { i64, ptr }
  %l178 = alloca %"compiler/mir:Lvalue"
  %l183 = alloca ptr
  %l184 = alloca %"compiler/source:Span"
  %l186 = alloca %"compiler/mir:Lvalue"
  %l187 = alloca i32
  %l188 = alloca i32
  %l190 = alloca ptr
  %l191 = alloca { i64, [4 x i64] }
  %l193 = alloca { i64, [4 x i64] }
  %l194 = alloca { i64, ptr }
  %l195 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t43 = alloca { i64, [4 x i64] }, align 8
  %t58 = alloca { i64, [2 x i64] }, align 8
  %t67 = alloca { i64, [1 x i64] }, align 8
  %t72 = alloca { i64, [1 x i64] }, align 8
  %t93 = alloca { i64, [1 x i64] }, align 8
  %t117 = alloca { i64, [15 x i64] }, align 8
  %t123 = alloca { i64, [21 x i64] }, align 8
  %t166 = alloca { i64, [15 x i64] }, align 8
  %t176 = alloca { i64, [21 x i64] }, align 8
  %t195 = alloca { i64, [2 x i64] }, align 8
  %t201 = alloca { i64, [1 x i64] }, align 8
  %t226 = alloca { i64, [4 x i64] }, align 8
  %t283 = alloca { i64, [8 x i64] }, align 8
  %t368 = alloca { i64, [4 x i64] }, align 8
  %t371 = alloca { i64, [15 x i64] }, align 8
  %t383 = alloca { i64, [21 x i64] }, align 8
  %t403 = alloca { i64, [2 x i64] }, align 8
  %t409 = alloca { i64, [1 x i64] }, align 8
  %t426 = alloca { i64, [21 x i64] }, align 8
  %t451 = alloca { i64, [4 x i64] }, align 8
  %t457 = alloca { i64, [15 x i64] }, align 8
  %t463 = alloca { i64, [21 x i64] }, align 8
  %t492 = alloca { i64, [2 x i64] }, align 8
  %t498 = alloca { i64, [1 x i64] }, align 8
  %t503 = alloca { i64, [1 x i64] }, align 8
  %t526 = alloca { i64, [15 x i64] }, align 8
  %t532 = alloca { i64, [21 x i64] }, align 8
  %t575 = alloca { i64, [15 x i64] }, align 8
  %t585 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 19
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eLen_H6eade83fd48a7a0e84be67fdfc468e69(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t9, %"compiler/source:Span" %t10, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 19
  store ptr %t15, ptr %l20, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 19
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eLen_H6eade83fd48a7a0e84be67fdfc468e69(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l23
  br label %bb6
bb6:
  %t21 = load i64, ptr %l23, !tbaa !24
  %t22 = sub i64 %t21, 1
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t25 = call %"compiler/lower:collectCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eAt__Hce97d3b6a95327627873f207e844a422(ptr %v0, ptr %t23, i64 %t22)
  store %"compiler/lower:collectCtx" %t25, ptr %l25
  br label %bb7
bb7:
  %t26 = load %"compiler/lower:collectCtx", ptr %l25
  store %"compiler/lower:collectCtx" %t26, ptr %l3
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t27, ptr %a2)
  store { i64, [4 x i64] } %t32, ptr %l29
  br label %bb8
bb8:
  %t33 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t33, ptr %l4
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 10
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t39 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 1
  %t40 = load i32, ptr %t39, !tbaa !23
  %t42 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t40)
  store %"compiler/mir:Lvalue" %t42, ptr %l33
  br label %bb12
bb12:
  store { i64, [4 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 0
  store i64 1, ptr %t44
  %t45 = load %"compiler/mir:Lvalue", ptr %l33
  %t46 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t45, 0
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t46, ptr %t47
  %t48 = load { i64, [4 x i64] }, ptr %t43
  store { i64, [4 x i64] } %t48, ptr %l5
  %t50 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 5
  %t51 = load i1, ptr %t50, !tbaa !21
  br i1 %t51, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 3
  store ptr %t55, ptr %l37, !tbaa !29
  %t56 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t58
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 0
  store i64 1, ptr %t59
  %t61 = insertvalue { i32 } undef, i32 %t57, 0
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  store { i32 } %t61, ptr %t62
  %t63 = load { i64, [2 x i64] }, ptr %t58
  store { i64, [2 x i64] } %t63, ptr %l39
  %t64 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 6
  %t65 = load i1, ptr %t64, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb14:
  br label %bb24
bb15:
  store { i64, [1 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [1 x i64] }, ptr %t67, i32 0, i32 0
  store i64 3, ptr %t68
  %t69 = load { i64, [1 x i64] }, ptr %t67
  %t70 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [1 x i64] }, ptr %t72, i32 0, i32 0
  store i64 1, ptr %t73
  %t75 = insertvalue { i32 } undef, i32 %t71, 0
  %t76 = getelementptr { i64, [1 x i64] }, ptr %t72, i32 0, i32 1
  store { i32 } %t75, ptr %t76
  %t77 = load { i64, [1 x i64] }, ptr %t72
  %t78 = mul i64 2, 16
  %t79 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 2, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l45, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, [1 x i64] }, ptr %t84, i64 0
  store { i64, [1 x i64] } %t69, ptr %t85
  %t87 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr { i64, [1 x i64] }, ptr %t88, i64 1
  store { i64, [1 x i64] } %t77, ptr %t89
  %t90 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t90, ptr %l41, !tbaa !27
  br label %bb17
bb16:
  %t91 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 1
  %t92 = load i32, ptr %t91, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 0
  store i64 1, ptr %t94
  %t96 = insertvalue { i32 } undef, i32 %t92, 0
  %t97 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 1
  store { i32 } %t96, ptr %t97
  %t98 = load { i64, [1 x i64] }, ptr %t93
  %t99 = mul i64 1, 16
  %t100 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t99)
  %t101 = insertvalue { i64, ptr } undef, i64 1, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l48, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, [1 x i64] }, ptr %t105, i64 0
  store { i64, [1 x i64] } %t98, ptr %t106
  %t107 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t107, ptr %l41, !tbaa !27
  br label %bb17
bb17:
  %t108 = load ptr, ptr %l37, !tbaa !29
  %t109 = load { i64, [2 x i64] }, ptr %l39
  %t110 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t111 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s3, ptr %t108, { i64, [2 x i64] } %t109, { i64, ptr } %t110)
  store %"compiler/mir:Lvalue" %t111, ptr %l49
  br label %bb18
bb18:
  %t112 = load %"compiler/mir:Lvalue", ptr %l49
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  %t116 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [15 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [15 x i64] }, ptr %t117, i32 0, i32 0
  store i64 0, ptr %t118
  %t120 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t116, 0
  %t121 = getelementptr { i64, [15 x i64] }, ptr %t117, i32 0, i32 1
  store { { i64, [4 x i64] } } %t120, ptr %t121
  %t122 = load { i64, [15 x i64] }, ptr %t117
  store { i64, [21 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [21 x i64] }, ptr %t123, i32 0, i32 0
  store i64 0, ptr %t124
  %t126 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t114, 0
  %t128 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t126, %"compiler/mir:Lvalue" %t112, 1
  %t130 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t128, { i64, [15 x i64] } %t122, 2
  %t131 = getelementptr { i64, [21 x i64] }, ptr %t123, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t130, ptr %t131
  %t132 = load { i64, [21 x i64] }, ptr %t123
  %t134 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 176, i64 8)
  store { i64, [21 x i64] } %t132, ptr %t134
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s3, ptr %t113, ptr %t134)
  br label %bb19
bb19:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l57, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t138, ptr %l58
  %t139 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 1
  %t140 = load i32, ptr %t139, !tbaa !23
  %t142 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t140)
  store %"compiler/mir:Lvalue" %t142, ptr %l60
  br label %bb20
bb20:
  store i32 3, ptr %l61
  %t143 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t143, ptr %l62, !tbaa !23
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/lower:lowering", ptr %t144, i32 0, i32 3
  store ptr %t146, ptr %l64, !tbaa !29
  %t147 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [4 x i64] } %t147, ptr %l65
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t148, i64 1)
  store { i64, [4 x i64] } %t150, ptr %l67
  br label %bb21
bb21:
  %t151 = mul i64 2, 40
  %t152 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 2, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l68, !tbaa !27
  %t155 = load { i64, [4 x i64] }, ptr %l65
  %t156 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, [4 x i64] }, ptr %t157, i64 0
  store { i64, [4 x i64] } %t155, ptr %t158
  %t159 = load { i64, [4 x i64] }, ptr %l67
  %t160 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, [4 x i64] }, ptr %t161, i64 1
  store { i64, [4 x i64] } %t159, ptr %t162
  %t163 = load ptr, ptr %l64, !tbaa !29
  %t164 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t165 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s3, ptr %t163, { i64, ptr } %t164)
  store %"compiler/mir:Range" %t165, ptr %l69
  br label %bb22
bb22:
  store { i64, [15 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [15 x i64] }, ptr %t166, i32 0, i32 0
  store i64 3, ptr %t167
  %t168 = load i32, ptr %l61, !range !{i32 0, i32 52}
  %t169 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t168, 0
  %t170 = load i32, ptr %l62, !tbaa !23
  %t171 = insertvalue { i32, i32, %"compiler/mir:Range" } %t169, i32 %t170, 1
  %t172 = load %"compiler/mir:Range", ptr %l69
  %t173 = insertvalue { i32, i32, %"compiler/mir:Range" } %t171, %"compiler/mir:Range" %t172, 2
  %t174 = getelementptr { i64, [15 x i64] }, ptr %t166, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t173, ptr %t174
  %t175 = load { i64, [15 x i64] }, ptr %t166
  store { i64, [21 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [21 x i64] }, ptr %t176, i32 0, i32 0
  store i64 0, ptr %t177
  %t178 = load %"compiler/source:Span", ptr %l58
  %t179 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t178, 0
  %t180 = load %"compiler/mir:Lvalue", ptr %l60
  %t181 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t179, %"compiler/mir:Lvalue" %t180, 1
  %t183 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t181, { i64, [15 x i64] } %t175, 2
  %t184 = getelementptr { i64, [21 x i64] }, ptr %t176, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t183, ptr %t184
  %t185 = load { i64, [21 x i64] }, ptr %t176
  %t187 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 176, i64 8)
  store { i64, [21 x i64] } %t185, ptr %t187
  %t188 = load ptr, ptr %l57, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s3, ptr %t188, ptr %t187)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/lower:lowering", ptr %t190, i32 0, i32 3
  %t193 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 0
  %t194 = load i32, ptr %t193, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t195
  %t196 = getelementptr { i64, [2 x i64] }, ptr %t195, i32 0, i32 0
  store i64 1, ptr %t196
  %t198 = insertvalue { i32 } undef, i32 %t194, 0
  %t199 = getelementptr { i64, [2 x i64] }, ptr %t195, i32 0, i32 1
  store { i32 } %t198, ptr %t199
  %t200 = load { i64, [2 x i64] }, ptr %t195
  store { i64, [1 x i64] } zeroinitializer, ptr %t201
  %t202 = getelementptr { i64, [1 x i64] }, ptr %t201, i32 0, i32 0
  store i64 3, ptr %t202
  %t203 = load { i64, [1 x i64] }, ptr %t201
  %t204 = mul i64 1, 16
  %t205 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t204)
  %t206 = insertvalue { i64, ptr } undef, i64 1, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  store { i64, ptr } %t207, ptr %l78, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr { i64, [1 x i64] }, ptr %t210, i64 0
  store { i64, [1 x i64] } %t203, ptr %t211
  %t214 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t215 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t192, { i64, [2 x i64] } %t200, { i64, ptr } %t214)
  store %"compiler/mir:Lvalue" %t215, ptr %l79
  br label %bb25
bb25:
  %t216 = load %"compiler/mir:Lvalue", ptr %l79
  store %"compiler/mir:Lvalue" %t216, ptr %l7
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l80, !tbaa !29
  store i32 13, ptr %l81
  %t218 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t218, ptr %l82, !tbaa !23
  %t219 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [4 x i64] } %t219, ptr %l83
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l84, !tbaa !29
  store i32 22, ptr %l85
  %t221 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t221, ptr %l86, !tbaa !23
  %t222 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 0
  %t223 = load i32, ptr %t222, !tbaa !23
  %t225 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t223)
  store %"compiler/mir:Lvalue" %t225, ptr %l88
  br label %bb26
bb26:
  store { i64, [4 x i64] } zeroinitializer, ptr %t226
  %t227 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 0
  store i64 1, ptr %t227
  %t228 = load %"compiler/mir:Lvalue", ptr %l88
  %t229 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t228, 0
  %t230 = getelementptr { i64, [4 x i64] }, ptr %t226, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t229, ptr %t230
  %t231 = load { i64, [4 x i64] }, ptr %t226
  %t232 = mul i64 1, 40
  %t233 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t232)
  %t234 = insertvalue { i64, ptr } undef, i64 1, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  store { i64, ptr } %t235, ptr %l90, !tbaa !27
  %t237 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t238, i64 0
  store { i64, [4 x i64] } %t231, ptr %t239
  %t240 = load %"compiler/source:Span", ptr %l1
  %t241 = load ptr, ptr %l84, !tbaa !29
  %t242 = load i32, ptr %l85, !range !{i32 0, i32 52}
  %t243 = load i32, ptr %l86, !tbaa !23
  %t244 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t246 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t241, i32 %t242, i32 %t243, { i64, ptr } %t244, %"compiler/source:Span" %t240)
  store { i64, [4 x i64] } %t246, ptr %l92
  br label %bb27
bb27:
  %t247 = mul i64 2, 40
  %t248 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t247)
  %t249 = insertvalue { i64, ptr } undef, i64 2, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  store { i64, ptr } %t250, ptr %l93, !tbaa !27
  %t251 = load { i64, [4 x i64] }, ptr %l83
  %t252 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t253, i64 0
  store { i64, [4 x i64] } %t251, ptr %t254
  %t255 = load { i64, [4 x i64] }, ptr %l92
  %t256 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t257, i64 1
  store { i64, [4 x i64] } %t255, ptr %t258
  %t259 = load %"compiler/source:Span", ptr %l1
  %t260 = load ptr, ptr %l80, !tbaa !29
  %t261 = load i32, ptr %l81, !range !{i32 0, i32 52}
  %t262 = load i32, ptr %l82, !tbaa !23
  %t263 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t265 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t260, i32 %t261, i32 %t262, { i64, ptr } %t263, %"compiler/source:Span" %t259)
  store { i64, [4 x i64] } %t265, ptr %l95
  br label %bb28
bb28:
  %t266 = load { i64, [4 x i64] }, ptr %l95
  store { i64, [4 x i64] } %t266, ptr %l8
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/lower:lowering", ptr %t267, i32 0, i32 3
  %t271 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t269)
  store i32 %t271, ptr %l98
  br label %bb29
bb29:
  %t272 = load i32, ptr %l98, !tbaa !23
  store i32 %t272, ptr %l9, !tbaa !23
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/lower:lowering", ptr %t273, i32 0, i32 3
  %t277 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t275)
  store i32 %t277, ptr %l101
  br label %bb30
bb30:
  %t278 = load i32, ptr %l101, !tbaa !23
  store i32 %t278, ptr %l10, !tbaa !23
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load { i64, [4 x i64] }, ptr %l8
  %t281 = load i32, ptr %l9, !tbaa !23
  %t282 = load i32, ptr %l10, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t283
  %t284 = getelementptr { i64, [8 x i64] }, ptr %t283, i32 0, i32 0
  store i64 2, ptr %t284
  %t286 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t280, 0
  %t288 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t286, i32 %t281, 1
  %t290 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t288, i32 %t282, 2
  %t291 = getelementptr { i64, [8 x i64] }, ptr %t283, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t290, ptr %t291
  %t292 = load { i64, [8 x i64] }, ptr %t283
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t279, { i64, [8 x i64] } %t292)
  br label %bb31
bb31:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t295, i32 %t296)
  br label %bb32
bb32:
  %t299 = load ptr, ptr %l0, !tbaa !29
  store ptr %t299, ptr %l109, !tbaa !29
  store i32 3, ptr %l110
  %t300 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t300, ptr %l111, !tbaa !23
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l112, !tbaa !29
  store i32 5, ptr %l113
  %t302 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t302, ptr %l114, !tbaa !23
  %t303 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [4 x i64] } %t303, ptr %l115
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t304, i64 2)
  store { i64, [4 x i64] } %t306, ptr %l117
  br label %bb33
bb33:
  %t307 = mul i64 2, 40
  %t308 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t307)
  %t309 = insertvalue { i64, ptr } undef, i64 2, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  store { i64, ptr } %t310, ptr %l118, !tbaa !27
  %t311 = load { i64, [4 x i64] }, ptr %l115
  %t312 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t313, i64 0
  store { i64, [4 x i64] } %t311, ptr %t314
  %t315 = load { i64, [4 x i64] }, ptr %l117
  %t316 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, [4 x i64] }, ptr %t317, i64 1
  store { i64, [4 x i64] } %t315, ptr %t318
  %t319 = load %"compiler/source:Span", ptr %l1
  %t320 = load ptr, ptr %l112, !tbaa !29
  %t321 = load i32, ptr %l113, !range !{i32 0, i32 52}
  %t322 = load i32, ptr %l114, !tbaa !23
  %t323 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t325 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t320, i32 %t321, i32 %t322, { i64, ptr } %t323, %"compiler/source:Span" %t319)
  store { i64, [4 x i64] } %t325, ptr %l120
  br label %bb34
bb34:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t326, i64 1)
  store { i64, [4 x i64] } %t328, ptr %l122
  br label %bb35
bb35:
  %t329 = mul i64 2, 40
  %t330 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t329)
  %t331 = insertvalue { i64, ptr } undef, i64 2, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t330, 1
  store { i64, ptr } %t332, ptr %l123, !tbaa !27
  %t333 = load { i64, [4 x i64] }, ptr %l120
  %t334 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr { i64, [4 x i64] }, ptr %t335, i64 0
  store { i64, [4 x i64] } %t333, ptr %t336
  %t337 = load { i64, [4 x i64] }, ptr %l122
  %t338 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr { i64, [4 x i64] }, ptr %t339, i64 1
  store { i64, [4 x i64] } %t337, ptr %t340
  %t341 = load %"compiler/source:Span", ptr %l1
  %t342 = load ptr, ptr %l109, !tbaa !29
  %t343 = load i32, ptr %l110, !range !{i32 0, i32 52}
  %t344 = load i32, ptr %l111, !tbaa !23
  %t345 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t347 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t342, i32 %t343, i32 %t344, { i64, ptr } %t345, %"compiler/source:Span" %t341)
  store { i64, [4 x i64] } %t347, ptr %l125
  br label %bb36
bb36:
  %t348 = load { i64, [4 x i64] }, ptr %l125
  store { i64, [4 x i64] } %t348, ptr %l11
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 3
  %t351 = load i32, ptr %t350, !tbaa !23
  %t352 = load %"compiler/source:Span", ptr %l1
  %t356 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t349, i32 %t351, %"compiler/source:Span" %t352)
  store i32 %t356, ptr %l129
  br label %bb37
bb37:
  %t357 = load i32, ptr %l129, !tbaa !23
  store i32 %t357, ptr %l12, !tbaa !23
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l130, !tbaa !29
  %t359 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t359, ptr %l131
  %t360 = load i32, ptr %l12, !tbaa !23
  %t362 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t360)
  store %"compiler/mir:Lvalue" %t362, ptr %l133
  br label %bb38
bb38:
  %t363 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 4
  %t364 = load { i64, [1 x i64] }, ptr %t363
  %t365 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 3
  %t366 = load i32, ptr %t365, !tbaa !23
  %t367 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } zeroinitializer, ptr %t368
  %t369 = getelementptr { i64, [4 x i64] }, ptr %t368, i32 0, i32 0
  store i64 0, ptr %t369
  %t370 = load { i64, [4 x i64] }, ptr %t368
  store { i64, [15 x i64] } zeroinitializer, ptr %t371
  %t372 = getelementptr { i64, [15 x i64] }, ptr %t371, i32 0, i32 0
  store i64 8, ptr %t372
  %t374 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t364, 0
  %t376 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t374, i32 %t366, 1
  %t378 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t376, { i64, [4 x i64] } %t367, 2
  %t380 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t378, { i64, [4 x i64] } %t370, 3
  %t381 = getelementptr { i64, [15 x i64] }, ptr %t371, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t380, ptr %t381
  %t382 = load { i64, [15 x i64] }, ptr %t371
  store { i64, [21 x i64] } zeroinitializer, ptr %t383
  %t384 = getelementptr { i64, [21 x i64] }, ptr %t383, i32 0, i32 0
  store i64 0, ptr %t384
  %t385 = load %"compiler/source:Span", ptr %l131
  %t386 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t385, 0
  %t387 = load %"compiler/mir:Lvalue", ptr %l133
  %t388 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t386, %"compiler/mir:Lvalue" %t387, 1
  %t390 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t388, { i64, [15 x i64] } %t382, 2
  %t391 = getelementptr { i64, [21 x i64] }, ptr %t383, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t390, ptr %t391
  %t392 = load { i64, [21 x i64] }, ptr %t383
  %t394 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t392, ptr %t394
  %t395 = load ptr, ptr %l130, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t395, ptr %t394)
  br label %bb39
bb39:
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l141, !tbaa !29
  %t398 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t398, ptr %l142
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/lower:lowering", ptr %t399, i32 0, i32 3
  %t402 = load i32, ptr %l12, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t403
  %t404 = getelementptr { i64, [2 x i64] }, ptr %t403, i32 0, i32 0
  store i64 1, ptr %t404
  %t406 = insertvalue { i32 } undef, i32 %t402, 0
  %t407 = getelementptr { i64, [2 x i64] }, ptr %t403, i32 0, i32 1
  store { i32 } %t406, ptr %t407
  %t408 = load { i64, [2 x i64] }, ptr %t403
  store { i64, [1 x i64] } zeroinitializer, ptr %t409
  %t410 = getelementptr { i64, [1 x i64] }, ptr %t409, i32 0, i32 0
  store i64 3, ptr %t410
  %t411 = load { i64, [1 x i64] }, ptr %t409
  %t412 = mul i64 1, 16
  %t413 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t412)
  %t414 = insertvalue { i64, ptr } undef, i64 1, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  store { i64, ptr } %t415, ptr %l148, !tbaa !27
  %t417 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = getelementptr { i64, [1 x i64] }, ptr %t418, i64 0
  store { i64, [1 x i64] } %t411, ptr %t419
  %t422 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t423 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t401, { i64, [2 x i64] } %t408, { i64, ptr } %t422)
  store %"compiler/mir:Lvalue" %t423, ptr %l149
  br label %bb40
bb40:
  %t424 = load %"compiler/mir:Lvalue", ptr %l7
  %t425 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [21 x i64] } zeroinitializer, ptr %t426
  %t427 = getelementptr { i64, [21 x i64] }, ptr %t426, i32 0, i32 0
  store i64 9, ptr %t427
  %t428 = load %"compiler/source:Span", ptr %l142
  %t429 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t428, 0
  %t430 = load %"compiler/mir:Lvalue", ptr %l149
  %t431 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t429, %"compiler/mir:Lvalue" %t430, 1
  %t433 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t431, %"compiler/mir:Lvalue" %t424, 2
  %t435 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t433, { i64, [4 x i64] } %t425, 3
  %t436 = getelementptr { i64, [21 x i64] }, ptr %t426, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t435, ptr %t436
  %t437 = load { i64, [21 x i64] }, ptr %t426
  %t439 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t437, ptr %t439
  %t440 = load ptr, ptr %l141, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t440, ptr %t439)
  br label %bb41
bb41:
  %t442 = load ptr, ptr %l0, !tbaa !29
  store ptr %t442, ptr %l154, !tbaa !29
  %t443 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t443, ptr %l155
  %t444 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 0
  %t445 = load i32, ptr %t444, !tbaa !23
  %t447 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t445)
  store %"compiler/mir:Lvalue" %t447, ptr %l157
  br label %bb42
bb42:
  %t448 = load i32, ptr %l12, !tbaa !23
  %t450 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t448)
  store %"compiler/mir:Lvalue" %t450, ptr %l159
  br label %bb43
bb43:
  store { i64, [4 x i64] } zeroinitializer, ptr %t451
  %t452 = getelementptr { i64, [4 x i64] }, ptr %t451, i32 0, i32 0
  store i64 1, ptr %t452
  %t453 = load %"compiler/mir:Lvalue", ptr %l159
  %t454 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t453, 0
  %t455 = getelementptr { i64, [4 x i64] }, ptr %t451, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t454, ptr %t455
  %t456 = load { i64, [4 x i64] }, ptr %t451
  store { i64, [15 x i64] } zeroinitializer, ptr %t457
  %t458 = getelementptr { i64, [15 x i64] }, ptr %t457, i32 0, i32 0
  store i64 0, ptr %t458
  %t460 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t456, 0
  %t461 = getelementptr { i64, [15 x i64] }, ptr %t457, i32 0, i32 1
  store { { i64, [4 x i64] } } %t460, ptr %t461
  %t462 = load { i64, [15 x i64] }, ptr %t457
  store { i64, [21 x i64] } zeroinitializer, ptr %t463
  %t464 = getelementptr { i64, [21 x i64] }, ptr %t463, i32 0, i32 0
  store i64 0, ptr %t464
  %t465 = load %"compiler/source:Span", ptr %l155
  %t466 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t465, 0
  %t467 = load %"compiler/mir:Lvalue", ptr %l157
  %t468 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t466, %"compiler/mir:Lvalue" %t467, 1
  %t470 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t468, { i64, [15 x i64] } %t462, 2
  %t471 = getelementptr { i64, [21 x i64] }, ptr %t463, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t470, ptr %t471
  %t472 = load { i64, [21 x i64] }, ptr %t463
  %t474 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t472, ptr %t474
  %t475 = load ptr, ptr %l154, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t475, ptr %t474)
  br label %bb44
bb44:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t477, i32 %t478)
  br label %bb45
bb45:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t481, i32 %t482)
  br label %bb46
bb46:
  %t485 = load ptr, ptr %l0, !tbaa !29
  store ptr %t485, ptr %l168, !tbaa !29
  %t486 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t486, ptr %l169
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t489 = getelementptr %"compiler/lower:lowering", ptr %t487, i32 0, i32 3
  %t490 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 0
  %t491 = load i32, ptr %t490, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t492
  %t493 = getelementptr { i64, [2 x i64] }, ptr %t492, i32 0, i32 0
  store i64 1, ptr %t493
  %t495 = insertvalue { i32 } undef, i32 %t491, 0
  %t496 = getelementptr { i64, [2 x i64] }, ptr %t492, i32 0, i32 1
  store { i32 } %t495, ptr %t496
  %t497 = load { i64, [2 x i64] }, ptr %t492
  store { i64, [1 x i64] } zeroinitializer, ptr %t498
  %t499 = getelementptr { i64, [1 x i64] }, ptr %t498, i32 0, i32 0
  store i64 3, ptr %t499
  %t500 = load { i64, [1 x i64] }, ptr %t498
  %t501 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 1
  %t502 = load i32, ptr %t501, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t503
  %t504 = getelementptr { i64, [1 x i64] }, ptr %t503, i32 0, i32 0
  store i64 1, ptr %t504
  %t506 = insertvalue { i32 } undef, i32 %t502, 0
  %t507 = getelementptr { i64, [1 x i64] }, ptr %t503, i32 0, i32 1
  store { i32 } %t506, ptr %t507
  %t508 = load { i64, [1 x i64] }, ptr %t503
  %t509 = mul i64 2, 16
  %t510 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t509)
  %t511 = insertvalue { i64, ptr } undef, i64 2, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t510, 1
  store { i64, ptr } %t512, ptr %l177, !tbaa !27
  %t514 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !27
  %t516 = getelementptr { i64, [1 x i64] }, ptr %t515, i64 0
  store { i64, [1 x i64] } %t500, ptr %t516
  %t518 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t519 = load ptr, ptr %t518, !tbaa !27
  %t520 = getelementptr { i64, [1 x i64] }, ptr %t519, i64 1
  store { i64, [1 x i64] } %t508, ptr %t520
  %t523 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t524 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t489, { i64, [2 x i64] } %t497, { i64, ptr } %t523)
  store %"compiler/mir:Lvalue" %t524, ptr %l178
  br label %bb47
bb47:
  %t525 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [15 x i64] } zeroinitializer, ptr %t526
  %t527 = getelementptr { i64, [15 x i64] }, ptr %t526, i32 0, i32 0
  store i64 0, ptr %t527
  %t529 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t525, 0
  %t530 = getelementptr { i64, [15 x i64] }, ptr %t526, i32 0, i32 1
  store { { i64, [4 x i64] } } %t529, ptr %t530
  %t531 = load { i64, [15 x i64] }, ptr %t526
  store { i64, [21 x i64] } zeroinitializer, ptr %t532
  %t533 = getelementptr { i64, [21 x i64] }, ptr %t532, i32 0, i32 0
  store i64 0, ptr %t533
  %t534 = load %"compiler/source:Span", ptr %l169
  %t535 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t534, 0
  %t536 = load %"compiler/mir:Lvalue", ptr %l178
  %t537 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t535, %"compiler/mir:Lvalue" %t536, 1
  %t539 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t537, { i64, [15 x i64] } %t531, 2
  %t540 = getelementptr { i64, [21 x i64] }, ptr %t532, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t539, ptr %t540
  %t541 = load { i64, [21 x i64] }, ptr %t532
  %t543 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t541, ptr %t543
  %t544 = load ptr, ptr %l168, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t544, ptr %t543)
  br label %bb48
bb48:
  %t546 = load ptr, ptr %l0, !tbaa !29
  store ptr %t546, ptr %l183, !tbaa !29
  %t547 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t547, ptr %l184
  %t548 = getelementptr %"compiler/lower:collectCtx", ptr %l3, i32 0, i32 1
  %t549 = load i32, ptr %t548, !tbaa !23
  %t551 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t549)
  store %"compiler/mir:Lvalue" %t551, ptr %l186
  br label %bb49
bb49:
  store i32 3, ptr %l187
  %t552 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t552, ptr %l188, !tbaa !23
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t555 = getelementptr %"compiler/lower:lowering", ptr %t553, i32 0, i32 3
  store ptr %t555, ptr %l190, !tbaa !29
  %t556 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [4 x i64] } %t556, ptr %l191
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t559 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t557, i64 1)
  store { i64, [4 x i64] } %t559, ptr %l193
  br label %bb50
bb50:
  %t560 = mul i64 2, 40
  %t561 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t560)
  %t562 = insertvalue { i64, ptr } undef, i64 2, 0
  %t563 = insertvalue { i64, ptr } %t562, ptr %t561, 1
  store { i64, ptr } %t563, ptr %l194, !tbaa !27
  %t564 = load { i64, [4 x i64] }, ptr %l191
  %t565 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr { i64, [4 x i64] }, ptr %t566, i64 0
  store { i64, [4 x i64] } %t564, ptr %t567
  %t568 = load { i64, [4 x i64] }, ptr %l193
  %t569 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t570 = load ptr, ptr %t569, !tbaa !27
  %t571 = getelementptr { i64, [4 x i64] }, ptr %t570, i64 1
  store { i64, [4 x i64] } %t568, ptr %t571
  %t572 = load ptr, ptr %l190, !tbaa !29
  %t573 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t574 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t572, { i64, ptr } %t573)
  store %"compiler/mir:Range" %t574, ptr %l195
  br label %bb51
bb51:
  store { i64, [15 x i64] } zeroinitializer, ptr %t575
  %t576 = getelementptr { i64, [15 x i64] }, ptr %t575, i32 0, i32 0
  store i64 3, ptr %t576
  %t577 = load i32, ptr %l187, !range !{i32 0, i32 52}
  %t578 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t577, 0
  %t579 = load i32, ptr %l188, !tbaa !23
  %t580 = insertvalue { i32, i32, %"compiler/mir:Range" } %t578, i32 %t579, 1
  %t581 = load %"compiler/mir:Range", ptr %l195
  %t582 = insertvalue { i32, i32, %"compiler/mir:Range" } %t580, %"compiler/mir:Range" %t581, 2
  %t583 = getelementptr { i64, [15 x i64] }, ptr %t575, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t582, ptr %t583
  %t584 = load { i64, [15 x i64] }, ptr %t575
  store { i64, [21 x i64] } zeroinitializer, ptr %t585
  %t586 = getelementptr { i64, [21 x i64] }, ptr %t585, i32 0, i32 0
  store i64 0, ptr %t586
  %t587 = load %"compiler/source:Span", ptr %l184
  %t588 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t587, 0
  %t589 = load %"compiler/mir:Lvalue", ptr %l186
  %t590 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t588, %"compiler/mir:Lvalue" %t589, 1
  %t592 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t590, { i64, [15 x i64] } %t584, 2
  %t593 = getelementptr { i64, [21 x i64] }, ptr %t585, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t592, ptr %t593
  %t594 = load { i64, [21 x i64] }, ptr %t585
  %t596 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t594, ptr %t596
  %t597 = load ptr, ptr %l183, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t597, ptr %t596)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2flower_2edroppedPlace(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call ptr @compiler_2flower_2edroppedArg(ptr %v0, ptr %v1, ptr %t16)
  store ptr %t18, ptr %l10
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l10, !tbaa !29
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store ptr null, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_57551e43b22f9a5d_6972bddfcfeae0e9)
  unreachable
bb12:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l5, !tbaa !24
  br label %bb32
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l21
  br label %bb12
bb12:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  br label %bb32
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 4
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Elem", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = call i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l30
  br label %bb19
bb19:
  %t60 = load i64, ptr %l30, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb32
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l31, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l32, !tbaa !21
  br i1 %t69, label %bb23, label %bb24
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Payload", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = call i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l39
  br label %bb26
bb26:
  %t82 = load i64, ptr %l39, !tbaa !24
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_de502b4556e13d28_d48b9fb731677334)
  unreachable
bb32:
  %t83 = load i64, ptr %l5, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2flower_2estableKey(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 -3750763034362895579, ptr %l1, !tbaa !65
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
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
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t23 = load i64, ptr %l1, !tbaa !65
  %t26 = zext i8 %t21 to i64
  %t29 = xor i64 %t23, %t26
  %t31 = mul i64 %t29, 1099511628211
  store i64 %t31, ptr %l1, !tbaa !65
  br label %bb5
bb5:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb6:
  %t37 = load i64, ptr %l1, !tbaa !65
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/lower:Gap" @compiler_2flower_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/lower:Gap"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/lower:Gap" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/lower:Gap" %t8, %"compiler/source:Span" %a1, 1
  %t12 = insertvalue %"compiler/lower:Gap" %t10, { i64, ptr } %a2, 2
  store %"compiler/lower:Gap" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:Gap", ptr %rv
  ret %"compiler/lower:Gap" %rr
}

define dso_local void @compiler_2flower_3alowering_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/mir:Fn"
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i1
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l31 = alloca { i64, [1 x i64] }
  %l32 = alloca i32
  %l33 = alloca { i64, [1 x i64] }
  %l34 = alloca %"compiler/typed:Plan"
  %l35 = alloca i1
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i1
  %l42 = alloca i64
  %l43 = alloca i32
  %l44 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca %"compiler/typed:DropHolding"
  %l46 = alloca i1
  %l47 = alloca i1
  %l48 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l52 = alloca i32
  %l53 = alloca i64
  %l54 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l56 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i32
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca i1
  %l67 = alloca %"compiler/mir:Fn"
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l74 = alloca i64
  %l76 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca %"compiler/typed:Plan"
  %l98 = alloca i64
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l103 = alloca i64
  %l105 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l107 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca i64
  %l111 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l113 = alloca i64
  %l115 = alloca %"compiler/typed:DropHolding"
  %l117 = alloca i64
  %l119 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l121 = alloca i64
  %l123 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l125 = alloca i64
  %l127 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l129 = alloca i64
  %l131 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l133 = alloca i64
  %l135 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l137 = alloca i64
  %l139 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l141 = alloca i64
  %l143 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l146 = alloca i64
  %l148 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l150 = alloca i64
  %l152 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l154 = alloca i64
  %l156 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l158 = alloca %"compiler/lower:lowering"
  %t15 = alloca { i64, [4 x i64] }, align 8
  %t125 = alloca { i64, [1 x i64] }, align 8
  %t129 = alloca { i64, [1 x i64] }, align 8
  %t133 = alloca %"compiler/typed:Plan", align 8
  %t241 = alloca %"compiler/typed:DropHolding", align 8
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l4, !tbaa !29
  store ptr %a1, ptr %l5, !tbaa !29
  store ptr %a2, ptr %l6, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l67, ptr %a3, i64 800, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l67, i64 800, i1 false)
  %t9 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t9, ptr %l8, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t11, ptr %l9, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t13, ptr %l10, !tbaa !23
  store i64 0, ptr %l11, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 0
  store i64 0, ptr %t16
  %t17 = load { i64, [4 x i64] }, ptr %t15
  store { i64, [4 x i64] } %t17, ptr %l12
  store i32 0, ptr %l13, !tbaa !23
  store i1 false, ptr %l14, !tbaa !21
  store i1 false, ptr %l15, !tbaa !21
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l72
  br label %bb1
bb1:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l16
  %t21 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e(ptr %v4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t21, ptr %l73
  br label %bb2
bb2:
  %t22 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t22, ptr %l17
  %t23 = ptrtoint ptr %v4 to i64
  store i64 %t23, ptr %l74, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e14
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = call ptr @__olang_region_make(ptr %v4)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l74, !tbaa !24
  br label %bb4
bb4:
  %t28 = load i64, ptr %l74
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e(ptr %t29)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %l76
  br label %bb5
bb5:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e14
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load i64, ptr %l74
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76, i32 0, i32 2
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr %t40
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr %t46
  %t53 = icmp eq ptr %t52, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t53)
  br label %bb7
bb7:
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %l18
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l78
  br label %bb8
bb8:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l19
  %t57 = ptrtoint ptr %v4 to i64
  store i64 %t57, ptr %l79, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e16
  br i1 %t58, label %bb9, label %bb10
bb9:
  %t60 = call ptr @__olang_region_make(ptr %v4)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l79, !tbaa !24
  br label %bb10
bb10:
  %t62 = load i64, ptr %l79
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %t63, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l81
  br label %bb11
bb11:
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e16
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load i64, ptr %l79
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = icmp ne ptr %t72, null
  %t74 = select i1 %t73, ptr %t72, ptr null
  %t75 = icmp eq ptr %t74, %t68
  call void @__olang_region_settle(ptr %t68, i1 %t75)
  br label %bb13
bb13:
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l20
  %t77 = ptrtoint ptr %v4 to i64
  store i64 %t77, ptr %l83, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e17
  br i1 %t78, label %bb14, label %bb15
bb14:
  %t80 = call ptr @__olang_region_make(ptr %v4)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l83, !tbaa !24
  br label %bb15
bb15:
  %t82 = load i64, ptr %l83
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ector(ptr %t83, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l85
  br label %bb16
bb16:
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e17
  br i1 %t85, label %bb17, label %bb18
bb17:
  %t87 = load i64, ptr %l83
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr null
  %t95 = icmp eq ptr %t94, %t88
  call void @__olang_region_settle(ptr %t88, i1 %t95)
  br label %bb18
bb18:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %l21
  %t97 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l87
  br label %bb19
bb19:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l22
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l88
  br label %bb20
bb20:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l23
  %t101 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l89
  br label %bb21
bb21:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l24
  %t103 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %l90
  br label %bb22
bb22:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l25
  %t105 = ptrtoint ptr %v4 to i64
  store i64 %t105, ptr %l91, !tbaa !24
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e22
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = call ptr @__olang_region_make(ptr %v4)
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l91, !tbaa !24
  br label %bb24
bb24:
  %t110 = load i64, ptr %l91
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %t111, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l93
  br label %bb25
bb25:
  %t113 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e22
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t115 = load i64, ptr %l91
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = icmp eq ptr %t122, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t123)
  br label %bb27
bb27:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l26
  store i1 false, ptr %l27, !tbaa !21
  store i1 false, ptr %l28, !tbaa !21
  store i1 false, ptr %l29, !tbaa !21
  store i1 false, ptr %l30, !tbaa !21
  store { i64, [1 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [1 x i64] }, ptr %t125, i32 0, i32 0
  store i64 2, ptr %t126
  %t127 = load { i64, [1 x i64] }, ptr %t125
  store { i64, [1 x i64] } %t127, ptr %l31
  store i32 -1, ptr %l32, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [1 x i64] }, ptr %t129, i32 0, i32 0
  store i64 2, ptr %t130
  %t131 = load { i64, [1 x i64] }, ptr %t129
  store { i64, [1 x i64] } %t131, ptr %l33
  call void @compiler_2ftyped_3aPlan_2ector(ptr %t133, ptr %v4, i64 0, i64 0, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l97, ptr %t133, i64 536, i1 false)
  br label %bb28
bb28:
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %l97, i64 536, i1 false)
  store i1 false, ptr %l35, !tbaa !21
  %t134 = ptrtoint ptr %v4 to i64
  store i64 %t134, ptr %l98, !tbaa !24
  %t135 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e32
  br i1 %t135, label %bb29, label %bb30
bb29:
  %t137 = call ptr @__olang_region_make(ptr %v4)
  %t138 = ptrtoint ptr %t137 to i64
  store i64 %t138, ptr %l98, !tbaa !24
  br label %bb30
bb30:
  %t139 = load i64, ptr %l98
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e(ptr %t140)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t141, ptr %l100
  br label %bb31
bb31:
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e32
  br i1 %t142, label %bb32, label %bb33
bb32:
  %t144 = load i64, ptr %l98
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 2
  %t147 = load { i64, ptr }, ptr %t146
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = call ptr @__olang_region_or(ptr %t148, ptr null)
  %t150 = icmp ne ptr %t149, null
  %t151 = select i1 %t150, ptr %t149, ptr null
  %t152 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 1
  %t153 = load { i64, ptr }, ptr %t152
  %t154 = extractvalue { i64, ptr } %t153, 1
  %t155 = call ptr @__olang_region_or(ptr %t154, ptr null)
  %t156 = icmp ne ptr %t155, null
  %t157 = select i1 %t156, ptr %t155, ptr %t151
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 0
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr %t157
  %t164 = icmp eq ptr %t163, %t145
  call void @__olang_region_settle(ptr %t145, i1 %t164)
  br label %bb33
bb33:
  %t165 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t165, ptr %l36
  %t166 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e(ptr %v4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t166, ptr %l102
  br label %bb34
bb34:
  %t167 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l102
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t167, ptr %l37
  %t168 = ptrtoint ptr %v4 to i64
  store i64 %t168, ptr %l103, !tbaa !24
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e34
  br i1 %t169, label %bb35, label %bb36
bb35:
  %t171 = call ptr @__olang_region_make(ptr %v4)
  %t172 = ptrtoint ptr %t171 to i64
  store i64 %t172, ptr %l103, !tbaa !24
  br label %bb36
bb36:
  %t173 = load i64, ptr %l103
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t174)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t175, ptr %l105
  br label %bb37
bb37:
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e34
  br i1 %t176, label %bb38, label %bb39
bb38:
  %t178 = load i64, ptr %l103
  %t179 = inttoptr i64 %t178 to ptr
  %t180 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %t180
  %t182 = extractvalue { i64, ptr } %t181, 1
  %t183 = call ptr @__olang_region_or(ptr %t182, ptr null)
  %t184 = icmp ne ptr %t183, null
  %t185 = select i1 %t184, ptr %t183, ptr null
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105, i32 0, i32 1
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = icmp ne ptr %t189, null
  %t191 = select i1 %t190, ptr %t189, ptr %t185
  %t192 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105, i32 0, i32 0
  %t193 = load { i64, ptr }, ptr %t192
  %t194 = extractvalue { i64, ptr } %t193, 1
  %t195 = call ptr @__olang_region_or(ptr %t194, ptr null)
  %t196 = icmp ne ptr %t195, null
  %t197 = select i1 %t196, ptr %t195, ptr %t191
  %t198 = icmp eq ptr %t197, %t179
  call void @__olang_region_settle(ptr %t179, i1 %t198)
  br label %bb39
bb39:
  %t199 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t199, ptr %l38
  %t200 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l107
  br label %bb40
bb40:
  %t201 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l107
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t201, ptr %l39
  %t202 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t202, ptr %l108
  br label %bb41
bb41:
  %t203 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t203, ptr %l40
  store i1 false, ptr %l41, !tbaa !21
  store i64 -1, ptr %l42, !tbaa !24
  store i32 -1, ptr %l43, !tbaa !23
  %t204 = ptrtoint ptr %v4 to i64
  store i64 %t204, ptr %l109, !tbaa !24
  %t205 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e40
  br i1 %t205, label %bb42, label %bb43
bb42:
  %t207 = call ptr @__olang_region_make(ptr %v4)
  %t208 = ptrtoint ptr %t207 to i64
  store i64 %t208, ptr %l109, !tbaa !24
  br label %bb43
bb43:
  %t209 = load i64, ptr %l109
  %t210 = inttoptr i64 %t209 to ptr
  %t211 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t210)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t211, ptr %l111
  br label %bb44
bb44:
  %t212 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e40
  br i1 %t212, label %bb45, label %bb46
bb45:
  %t214 = load i64, ptr %l109
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l111, i32 0, i32 2
  %t217 = load { i64, ptr }, ptr %t216
  %t218 = extractvalue { i64, ptr } %t217, 1
  %t219 = call ptr @__olang_region_or(ptr %t218, ptr null)
  %t220 = icmp ne ptr %t219, null
  %t221 = select i1 %t220, ptr %t219, ptr null
  %t222 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l111, i32 0, i32 1
  %t223 = load { i64, ptr }, ptr %t222
  %t224 = extractvalue { i64, ptr } %t223, 1
  %t225 = call ptr @__olang_region_or(ptr %t224, ptr null)
  %t226 = icmp ne ptr %t225, null
  %t227 = select i1 %t226, ptr %t225, ptr %t221
  %t228 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l111, i32 0, i32 0
  %t229 = load { i64, ptr }, ptr %t228
  %t230 = extractvalue { i64, ptr } %t229, 1
  %t231 = call ptr @__olang_region_or(ptr %t230, ptr null)
  %t232 = icmp ne ptr %t231, null
  %t233 = select i1 %t232, ptr %t231, ptr %t227
  %t234 = icmp eq ptr %t233, %t215
  call void @__olang_region_settle(ptr %t215, i1 %t234)
  br label %bb46
bb46:
  %t235 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l111
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t235, ptr %l44
  %t236 = ptrtoint ptr %v4 to i64
  store i64 %t236, ptr %l113, !tbaa !24
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e41
  br i1 %t237, label %bb47, label %bb48
bb47:
  %t239 = call ptr @__olang_region_make(ptr %v4)
  %t240 = ptrtoint ptr %t239 to i64
  store i64 %t240, ptr %l113, !tbaa !24
  br label %bb48
bb48:
  %t242 = load i64, ptr %l113
  %t243 = inttoptr i64 %t242 to ptr
  call void @compiler_2ftyped_3aDropHolding_2ector(ptr %t241, ptr %t243)
  call void @llvm.memmove.p0.p0.i64(ptr %l115, ptr %t241, i64 224, i1 false)
  br label %bb49
bb49:
  %t244 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e41
  br i1 %t244, label %bb50, label %bb51
bb50:
  %t246 = load i64, ptr %l113
  %t247 = inttoptr i64 %t246 to ptr
  %t248 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 6
  %t249 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t248, i32 0, i32 0
  %t250 = load { i64, ptr }, ptr %t249
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = call ptr @__olang_region_or(ptr %t251, ptr null)
  %t253 = icmp ne ptr %t252, null
  %t254 = select i1 %t253, ptr %t252, ptr null
  %t255 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 5
  %t256 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t255, i32 0, i32 0
  %t257 = load { i64, ptr }, ptr %t256
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = call ptr @__olang_region_or(ptr %t258, ptr null)
  %t260 = icmp ne ptr %t259, null
  %t261 = select i1 %t260, ptr %t259, ptr %t254
  %t262 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 4
  %t263 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t262, i32 0, i32 0
  %t264 = load { i64, ptr }, ptr %t263
  %t265 = extractvalue { i64, ptr } %t264, 1
  %t266 = call ptr @__olang_region_or(ptr %t265, ptr null)
  %t267 = icmp ne ptr %t266, null
  %t268 = select i1 %t267, ptr %t266, ptr %t261
  %t269 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 3
  %t270 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t269, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270
  %t272 = extractvalue { i64, ptr } %t271, 1
  %t273 = call ptr @__olang_region_or(ptr %t272, ptr null)
  %t274 = icmp ne ptr %t273, null
  %t275 = select i1 %t274, ptr %t273, ptr %t268
  %t276 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 2
  %t277 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t276, i32 0, i32 0
  %t278 = load { i64, ptr }, ptr %t277
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = call ptr @__olang_region_or(ptr %t279, ptr null)
  %t281 = icmp ne ptr %t280, null
  %t282 = select i1 %t281, ptr %t280, ptr %t275
  %t283 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 1
  %t284 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t283, i32 0, i32 0
  %t285 = load { i64, ptr }, ptr %t284
  %t286 = extractvalue { i64, ptr } %t285, 1
  %t287 = call ptr @__olang_region_or(ptr %t286, ptr null)
  %t288 = icmp ne ptr %t287, null
  %t289 = select i1 %t288, ptr %t287, ptr %t282
  %t290 = getelementptr %"compiler/typed:DropHolding", ptr %l115, i32 0, i32 0
  %t291 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t290, i32 0, i32 0
  %t292 = load { i64, ptr }, ptr %t291
  %t293 = extractvalue { i64, ptr } %t292, 1
  %t294 = call ptr @__olang_region_or(ptr %t293, ptr null)
  %t295 = icmp ne ptr %t294, null
  %t296 = select i1 %t295, ptr %t294, ptr %t289
  %t297 = icmp eq ptr %t296, %t247
  call void @__olang_region_settle(ptr %t247, i1 %t297)
  br label %bb51
bb51:
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %l115, i64 224, i1 false)
  store i1 false, ptr %l46, !tbaa !21
  store i1 false, ptr %l47, !tbaa !21
  %t298 = ptrtoint ptr %v4 to i64
  store i64 %t298, ptr %l117, !tbaa !24
  %t299 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e44
  br i1 %t299, label %bb52, label %bb53
bb52:
  %t301 = call ptr @__olang_region_make(ptr %v4)
  %t302 = ptrtoint ptr %t301 to i64
  store i64 %t302, ptr %l117, !tbaa !24
  br label %bb53
bb53:
  %t303 = load i64, ptr %l117
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t304)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t305, ptr %l119
  br label %bb54
bb54:
  %t306 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e44
  br i1 %t306, label %bb55, label %bb56
bb55:
  %t308 = load i64, ptr %l117
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119, i32 0, i32 2
  %t311 = load { i64, ptr }, ptr %t310
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = call ptr @__olang_region_or(ptr %t312, ptr null)
  %t314 = icmp ne ptr %t313, null
  %t315 = select i1 %t314, ptr %t313, ptr null
  %t316 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119, i32 0, i32 1
  %t317 = load { i64, ptr }, ptr %t316
  %t318 = extractvalue { i64, ptr } %t317, 1
  %t319 = call ptr @__olang_region_or(ptr %t318, ptr null)
  %t320 = icmp ne ptr %t319, null
  %t321 = select i1 %t320, ptr %t319, ptr %t315
  %t322 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119, i32 0, i32 0
  %t323 = load { i64, ptr }, ptr %t322
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = call ptr @__olang_region_or(ptr %t324, ptr null)
  %t326 = icmp ne ptr %t325, null
  %t327 = select i1 %t326, ptr %t325, ptr %t321
  %t328 = icmp eq ptr %t327, %t309
  call void @__olang_region_settle(ptr %t309, i1 %t328)
  br label %bb56
bb56:
  %t329 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t329, ptr %l48
  %t330 = ptrtoint ptr %v4 to i64
  store i64 %t330, ptr %l121, !tbaa !24
  %t331 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e45
  br i1 %t331, label %bb57, label %bb58
bb57:
  %t333 = call ptr @__olang_region_make(ptr %v4)
  %t334 = ptrtoint ptr %t333 to i64
  store i64 %t334, ptr %l121, !tbaa !24
  br label %bb58
bb58:
  %t335 = load i64, ptr %l121
  %t336 = inttoptr i64 %t335 to ptr
  %t337 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t336)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t337, ptr %l123
  br label %bb59
bb59:
  %t338 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e45
  br i1 %t338, label %bb60, label %bb61
bb60:
  %t340 = load i64, ptr %l121
  %t341 = inttoptr i64 %t340 to ptr
  %t342 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123, i32 0, i32 2
  %t343 = load { i64, ptr }, ptr %t342
  %t344 = extractvalue { i64, ptr } %t343, 1
  %t345 = call ptr @__olang_region_or(ptr %t344, ptr null)
  %t346 = icmp ne ptr %t345, null
  %t347 = select i1 %t346, ptr %t345, ptr null
  %t348 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123, i32 0, i32 1
  %t349 = load { i64, ptr }, ptr %t348
  %t350 = extractvalue { i64, ptr } %t349, 1
  %t351 = call ptr @__olang_region_or(ptr %t350, ptr null)
  %t352 = icmp ne ptr %t351, null
  %t353 = select i1 %t352, ptr %t351, ptr %t347
  %t354 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123, i32 0, i32 0
  %t355 = load { i64, ptr }, ptr %t354
  %t356 = extractvalue { i64, ptr } %t355, 1
  %t357 = call ptr @__olang_region_or(ptr %t356, ptr null)
  %t358 = icmp ne ptr %t357, null
  %t359 = select i1 %t358, ptr %t357, ptr %t353
  %t360 = icmp eq ptr %t359, %t341
  call void @__olang_region_settle(ptr %t341, i1 %t360)
  br label %bb61
bb61:
  %t361 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t361, ptr %l49
  %t362 = ptrtoint ptr %v4 to i64
  store i64 %t362, ptr %l125, !tbaa !24
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e46
  br i1 %t363, label %bb62, label %bb63
bb62:
  %t365 = call ptr @__olang_region_make(ptr %v4)
  %t366 = ptrtoint ptr %t365 to i64
  store i64 %t366, ptr %l125, !tbaa !24
  br label %bb63
bb63:
  %t367 = load i64, ptr %l125
  %t368 = inttoptr i64 %t367 to ptr
  %t369 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t368)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t369, ptr %l127
  br label %bb64
bb64:
  %t370 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e46
  br i1 %t370, label %bb65, label %bb66
bb65:
  %t372 = load i64, ptr %l125
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127, i32 0, i32 2
  %t375 = load { i64, ptr }, ptr %t374
  %t376 = extractvalue { i64, ptr } %t375, 1
  %t377 = call ptr @__olang_region_or(ptr %t376, ptr null)
  %t378 = icmp ne ptr %t377, null
  %t379 = select i1 %t378, ptr %t377, ptr null
  %t380 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127, i32 0, i32 1
  %t381 = load { i64, ptr }, ptr %t380
  %t382 = extractvalue { i64, ptr } %t381, 1
  %t383 = call ptr @__olang_region_or(ptr %t382, ptr null)
  %t384 = icmp ne ptr %t383, null
  %t385 = select i1 %t384, ptr %t383, ptr %t379
  %t386 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127, i32 0, i32 0
  %t387 = load { i64, ptr }, ptr %t386
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = call ptr @__olang_region_or(ptr %t388, ptr null)
  %t390 = icmp ne ptr %t389, null
  %t391 = select i1 %t390, ptr %t389, ptr %t385
  %t392 = icmp eq ptr %t391, %t373
  call void @__olang_region_settle(ptr %t373, i1 %t392)
  br label %bb66
bb66:
  %t393 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t393, ptr %l50
  %t394 = ptrtoint ptr %v4 to i64
  store i64 %t394, ptr %l129, !tbaa !24
  %t395 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e47
  br i1 %t395, label %bb67, label %bb68
bb67:
  %t397 = call ptr @__olang_region_make(ptr %v4)
  %t398 = ptrtoint ptr %t397 to i64
  store i64 %t398, ptr %l129, !tbaa !24
  br label %bb68
bb68:
  %t399 = load i64, ptr %l129
  %t400 = inttoptr i64 %t399 to ptr
  %t401 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t400)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t401, ptr %l131
  br label %bb69
bb69:
  %t402 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e47
  br i1 %t402, label %bb70, label %bb71
bb70:
  %t404 = load i64, ptr %l129
  %t405 = inttoptr i64 %t404 to ptr
  %t406 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l131, i32 0, i32 2
  %t407 = load { i64, ptr }, ptr %t406
  %t408 = extractvalue { i64, ptr } %t407, 1
  %t409 = call ptr @__olang_region_or(ptr %t408, ptr null)
  %t410 = icmp ne ptr %t409, null
  %t411 = select i1 %t410, ptr %t409, ptr null
  %t412 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l131, i32 0, i32 1
  %t413 = load { i64, ptr }, ptr %t412
  %t414 = extractvalue { i64, ptr } %t413, 1
  %t415 = call ptr @__olang_region_or(ptr %t414, ptr null)
  %t416 = icmp ne ptr %t415, null
  %t417 = select i1 %t416, ptr %t415, ptr %t411
  %t418 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l131, i32 0, i32 0
  %t419 = load { i64, ptr }, ptr %t418
  %t420 = extractvalue { i64, ptr } %t419, 1
  %t421 = call ptr @__olang_region_or(ptr %t420, ptr null)
  %t422 = icmp ne ptr %t421, null
  %t423 = select i1 %t422, ptr %t421, ptr %t417
  %t424 = icmp eq ptr %t423, %t405
  call void @__olang_region_settle(ptr %t405, i1 %t424)
  br label %bb71
bb71:
  %t425 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l131
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t425, ptr %l51
  store i32 0, ptr %l52, !tbaa !23
  store i64 -1, ptr %l53, !tbaa !24
  %t426 = ptrtoint ptr %v4 to i64
  store i64 %t426, ptr %l133, !tbaa !24
  %t427 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e50
  br i1 %t427, label %bb72, label %bb73
bb72:
  %t429 = call ptr @__olang_region_make(ptr %v4)
  %t430 = ptrtoint ptr %t429 to i64
  store i64 %t430, ptr %l133, !tbaa !24
  br label %bb73
bb73:
  %t431 = load i64, ptr %l133
  %t432 = inttoptr i64 %t431 to ptr
  %t433 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t432)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t433, ptr %l135
  br label %bb74
bb74:
  %t434 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e50
  br i1 %t434, label %bb75, label %bb76
bb75:
  %t436 = load i64, ptr %l133
  %t437 = inttoptr i64 %t436 to ptr
  %t438 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l135, i32 0, i32 2
  %t439 = load { i64, ptr }, ptr %t438
  %t440 = extractvalue { i64, ptr } %t439, 1
  %t441 = call ptr @__olang_region_or(ptr %t440, ptr null)
  %t442 = icmp ne ptr %t441, null
  %t443 = select i1 %t442, ptr %t441, ptr null
  %t444 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l135, i32 0, i32 1
  %t445 = load { i64, ptr }, ptr %t444
  %t446 = extractvalue { i64, ptr } %t445, 1
  %t447 = call ptr @__olang_region_or(ptr %t446, ptr null)
  %t448 = icmp ne ptr %t447, null
  %t449 = select i1 %t448, ptr %t447, ptr %t443
  %t450 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l135, i32 0, i32 0
  %t451 = load { i64, ptr }, ptr %t450
  %t452 = extractvalue { i64, ptr } %t451, 1
  %t453 = call ptr @__olang_region_or(ptr %t452, ptr null)
  %t454 = icmp ne ptr %t453, null
  %t455 = select i1 %t454, ptr %t453, ptr %t449
  %t456 = icmp eq ptr %t455, %t437
  call void @__olang_region_settle(ptr %t437, i1 %t456)
  br label %bb76
bb76:
  %t457 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l135
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t457, ptr %l54
  %t458 = ptrtoint ptr %v4 to i64
  store i64 %t458, ptr %l137, !tbaa !24
  %t459 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e51
  br i1 %t459, label %bb77, label %bb78
bb77:
  %t461 = call ptr @__olang_region_make(ptr %v4)
  %t462 = ptrtoint ptr %t461 to i64
  store i64 %t462, ptr %l137, !tbaa !24
  br label %bb78
bb78:
  %t463 = load i64, ptr %l137
  %t464 = inttoptr i64 %t463 to ptr
  %t465 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t464)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t465, ptr %l139
  br label %bb79
bb79:
  %t466 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e51
  br i1 %t466, label %bb80, label %bb81
bb80:
  %t468 = load i64, ptr %l137
  %t469 = inttoptr i64 %t468 to ptr
  %t470 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139, i32 0, i32 2
  %t471 = load { i64, ptr }, ptr %t470
  %t472 = extractvalue { i64, ptr } %t471, 1
  %t473 = call ptr @__olang_region_or(ptr %t472, ptr null)
  %t474 = icmp ne ptr %t473, null
  %t475 = select i1 %t474, ptr %t473, ptr null
  %t476 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139, i32 0, i32 1
  %t477 = load { i64, ptr }, ptr %t476
  %t478 = extractvalue { i64, ptr } %t477, 1
  %t479 = call ptr @__olang_region_or(ptr %t478, ptr null)
  %t480 = icmp ne ptr %t479, null
  %t481 = select i1 %t480, ptr %t479, ptr %t475
  %t482 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139, i32 0, i32 0
  %t483 = load { i64, ptr }, ptr %t482
  %t484 = extractvalue { i64, ptr } %t483, 1
  %t485 = call ptr @__olang_region_or(ptr %t484, ptr null)
  %t486 = icmp ne ptr %t485, null
  %t487 = select i1 %t486, ptr %t485, ptr %t481
  %t488 = icmp eq ptr %t487, %t469
  call void @__olang_region_settle(ptr %t469, i1 %t488)
  br label %bb81
bb81:
  %t489 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l139
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t489, ptr %l55
  %t490 = ptrtoint ptr %v4 to i64
  store i64 %t490, ptr %l141, !tbaa !24
  %t491 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e52
  br i1 %t491, label %bb82, label %bb83
bb82:
  %t493 = call ptr @__olang_region_make(ptr %v4)
  %t494 = ptrtoint ptr %t493 to i64
  store i64 %t494, ptr %l141, !tbaa !24
  br label %bb83
bb83:
  %t495 = load i64, ptr %l141
  %t496 = inttoptr i64 %t495 to ptr
  %t497 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t496)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t497, ptr %l143
  br label %bb84
bb84:
  %t498 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e52
  br i1 %t498, label %bb85, label %bb86
bb85:
  %t500 = load i64, ptr %l141
  %t501 = inttoptr i64 %t500 to ptr
  %t502 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143, i32 0, i32 2
  %t503 = load { i64, ptr }, ptr %t502
  %t504 = extractvalue { i64, ptr } %t503, 1
  %t505 = call ptr @__olang_region_or(ptr %t504, ptr null)
  %t506 = icmp ne ptr %t505, null
  %t507 = select i1 %t506, ptr %t505, ptr null
  %t508 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143, i32 0, i32 1
  %t509 = load { i64, ptr }, ptr %t508
  %t510 = extractvalue { i64, ptr } %t509, 1
  %t511 = call ptr @__olang_region_or(ptr %t510, ptr null)
  %t512 = icmp ne ptr %t511, null
  %t513 = select i1 %t512, ptr %t511, ptr %t507
  %t514 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143, i32 0, i32 0
  %t515 = load { i64, ptr }, ptr %t514
  %t516 = extractvalue { i64, ptr } %t515, 1
  %t517 = call ptr @__olang_region_or(ptr %t516, ptr null)
  %t518 = icmp ne ptr %t517, null
  %t519 = select i1 %t518, ptr %t517, ptr %t513
  %t520 = icmp eq ptr %t519, %t501
  call void @__olang_region_settle(ptr %t501, i1 %t520)
  br label %bb86
bb86:
  %t521 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t521, ptr %l56
  store i32 0, ptr %l57, !tbaa !23
  %t522 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t522, ptr %l145
  br label %bb87
bb87:
  %t523 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %l58
  %t524 = ptrtoint ptr %v4 to i64
  store i64 %t524, ptr %l146, !tbaa !24
  %t525 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e55
  br i1 %t525, label %bb88, label %bb89
bb88:
  %t527 = call ptr @__olang_region_make(ptr %v4)
  %t528 = ptrtoint ptr %t527 to i64
  store i64 %t528, ptr %l146, !tbaa !24
  br label %bb89
bb89:
  %t529 = load i64, ptr %l146
  %t530 = inttoptr i64 %t529 to ptr
  %t531 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t530, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t531, ptr %l148
  br label %bb90
bb90:
  %t532 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e55
  br i1 %t532, label %bb91, label %bb92
bb91:
  %t534 = load i64, ptr %l146
  %t535 = inttoptr i64 %t534 to ptr
  %t536 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l148, i32 0, i32 0
  %t537 = load { i64, ptr }, ptr %t536
  %t538 = extractvalue { i64, ptr } %t537, 1
  %t539 = call ptr @__olang_region_or(ptr %t538, ptr null)
  %t540 = icmp ne ptr %t539, null
  %t541 = select i1 %t540, ptr %t539, ptr null
  %t542 = icmp eq ptr %t541, %t535
  call void @__olang_region_settle(ptr %t535, i1 %t542)
  br label %bb92
bb92:
  %t543 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l148
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %l59
  %t544 = ptrtoint ptr %v4 to i64
  store i64 %t544, ptr %l150, !tbaa !24
  %t545 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e56
  br i1 %t545, label %bb93, label %bb94
bb93:
  %t547 = call ptr @__olang_region_make(ptr %v4)
  %t548 = ptrtoint ptr %t547 to i64
  store i64 %t548, ptr %l150, !tbaa !24
  br label %bb94
bb94:
  %t549 = load i64, ptr %l150
  %t550 = inttoptr i64 %t549 to ptr
  %t551 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t550)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t551, ptr %l152
  br label %bb95
bb95:
  %t552 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e56
  br i1 %t552, label %bb96, label %bb97
bb96:
  %t554 = load i64, ptr %l150
  %t555 = inttoptr i64 %t554 to ptr
  %t556 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l152, i32 0, i32 2
  %t557 = load { i64, ptr }, ptr %t556
  %t558 = extractvalue { i64, ptr } %t557, 1
  %t559 = call ptr @__olang_region_or(ptr %t558, ptr null)
  %t560 = icmp ne ptr %t559, null
  %t561 = select i1 %t560, ptr %t559, ptr null
  %t562 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l152, i32 0, i32 1
  %t563 = load { i64, ptr }, ptr %t562
  %t564 = extractvalue { i64, ptr } %t563, 1
  %t565 = call ptr @__olang_region_or(ptr %t564, ptr null)
  %t566 = icmp ne ptr %t565, null
  %t567 = select i1 %t566, ptr %t565, ptr %t561
  %t568 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l152, i32 0, i32 0
  %t569 = load { i64, ptr }, ptr %t568
  %t570 = extractvalue { i64, ptr } %t569, 1
  %t571 = call ptr @__olang_region_or(ptr %t570, ptr null)
  %t572 = icmp ne ptr %t571, null
  %t573 = select i1 %t572, ptr %t571, ptr %t567
  %t574 = icmp eq ptr %t573, %t555
  call void @__olang_region_settle(ptr %t555, i1 %t574)
  br label %bb97
bb97:
  %t575 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l152
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t575, ptr %l60
  store i1 false, ptr %l61, !tbaa !21
  %t576 = ptrtoint ptr %v4 to i64
  store i64 %t576, ptr %l154, !tbaa !24
  %t577 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e58
  br i1 %t577, label %bb98, label %bb99
bb98:
  %t579 = call ptr @__olang_region_make(ptr %v4)
  %t580 = ptrtoint ptr %t579 to i64
  store i64 %t580, ptr %l154, !tbaa !24
  br label %bb99
bb99:
  %t581 = load i64, ptr %l154
  %t582 = inttoptr i64 %t581 to ptr
  %t583 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t582)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t583, ptr %l156
  br label %bb100
bb100:
  %t584 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e58
  br i1 %t584, label %bb101, label %bb102
bb101:
  %t586 = load i64, ptr %l154
  %t587 = inttoptr i64 %t586 to ptr
  %t588 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156, i32 0, i32 2
  %t589 = load { i64, ptr }, ptr %t588
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = call ptr @__olang_region_or(ptr %t590, ptr null)
  %t592 = icmp ne ptr %t591, null
  %t593 = select i1 %t592, ptr %t591, ptr null
  %t594 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156, i32 0, i32 1
  %t595 = load { i64, ptr }, ptr %t594
  %t596 = extractvalue { i64, ptr } %t595, 1
  %t597 = call ptr @__olang_region_or(ptr %t596, ptr null)
  %t598 = icmp ne ptr %t597, null
  %t599 = select i1 %t598, ptr %t597, ptr %t593
  %t600 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156, i32 0, i32 0
  %t601 = load { i64, ptr }, ptr %t600
  %t602 = extractvalue { i64, ptr } %t601, 1
  %t603 = call ptr @__olang_region_or(ptr %t602, ptr null)
  %t604 = icmp ne ptr %t603, null
  %t605 = select i1 %t604, ptr %t603, ptr %t599
  %t606 = icmp eq ptr %t605, %t587
  call void @__olang_region_settle(ptr %t587, i1 %t606)
  br label %bb102
bb102:
  %t607 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156
  %t608 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 0
  %t609 = load ptr, ptr %l4, !tbaa !29
  store ptr %t609, ptr %t608, !tbaa !29
  %t610 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 1
  %t611 = load ptr, ptr %l5, !tbaa !29
  store ptr %t611, ptr %t610, !tbaa !29
  %t612 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 2
  %t613 = load ptr, ptr %l6, !tbaa !29
  store ptr %t613, ptr %t612, !tbaa !29
  %t614 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t614, ptr %l7, i64 800, i1 false)
  %t615 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 4
  %t616 = load i32, ptr %l8, !tbaa !23
  store i32 %t616, ptr %t615, !tbaa !23
  %t617 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 5
  %t618 = load i32, ptr %l9, !tbaa !23
  store i32 %t618, ptr %t617, !tbaa !23
  %t619 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 6
  %t620 = load i32, ptr %l10, !tbaa !23
  store i32 %t620, ptr %t619, !tbaa !23
  %t621 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 7
  %t622 = load i64, ptr %l11, !tbaa !24
  store i64 %t622, ptr %t621, !tbaa !24
  %t623 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 8
  %t624 = load { i64, [4 x i64] }, ptr %l12
  store { i64, [4 x i64] } %t624, ptr %t623
  %t625 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 9
  %t626 = load i32, ptr %l13, !tbaa !23
  store i32 %t626, ptr %t625, !tbaa !23
  %t627 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 10
  %t628 = load i1, ptr %l14, !tbaa !21
  store i1 %t628, ptr %t627, !tbaa !21
  %t629 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 11
  %t630 = load i1, ptr %l15, !tbaa !21
  store i1 %t630, ptr %t629, !tbaa !21
  %t631 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 12
  %t632 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t632, ptr %t631
  %t633 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 13
  %t634 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t634, ptr %t633
  %t635 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 14
  %t636 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t636, ptr %t635
  %t637 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 15
  %t638 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t638, ptr %t637
  %t639 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 16
  %t640 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t640, ptr %t639
  %t641 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 17
  %t642 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t642, ptr %t641
  %t643 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 18
  %t644 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t644, ptr %t643
  %t645 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 19
  %t646 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t646, ptr %t645
  %t647 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 20
  %t648 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t648, ptr %t647
  %t649 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 21
  %t650 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t650, ptr %t649
  %t651 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 22
  %t652 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t652, ptr %t651
  %t653 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 23
  %t654 = load i1, ptr %l27, !tbaa !21
  store i1 %t654, ptr %t653, !tbaa !21
  %t655 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 24
  %t656 = load i1, ptr %l28, !tbaa !21
  store i1 %t656, ptr %t655, !tbaa !21
  %t657 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 25
  %t658 = load i1, ptr %l29, !tbaa !21
  store i1 %t658, ptr %t657, !tbaa !21
  %t659 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 26
  %t660 = load i1, ptr %l30, !tbaa !21
  store i1 %t660, ptr %t659, !tbaa !21
  %t661 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 27
  %t662 = load { i64, [1 x i64] }, ptr %l31
  store { i64, [1 x i64] } %t662, ptr %t661
  %t663 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 28
  %t664 = load i32, ptr %l32, !tbaa !23
  store i32 %t664, ptr %t663, !tbaa !23
  %t665 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 29
  %t666 = load { i64, [1 x i64] }, ptr %l33
  store { i64, [1 x i64] } %t666, ptr %t665
  %t667 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 30
  call void @llvm.memmove.p0.p0.i64(ptr %t667, ptr %l34, i64 536, i1 false)
  %t668 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 31
  %t669 = load i1, ptr %l35, !tbaa !21
  store i1 %t669, ptr %t668, !tbaa !21
  %t670 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 32
  %t671 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t671, ptr %t670
  %t672 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 33
  %t673 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t673, ptr %t672
  %t674 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 34
  %t675 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t675, ptr %t674
  %t676 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 35
  %t677 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t677, ptr %t676
  %t678 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 36
  %t679 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t679, ptr %t678
  %t680 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 37
  %t681 = load i1, ptr %l41, !tbaa !21
  store i1 %t681, ptr %t680, !tbaa !21
  %t682 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 38
  %t683 = load i64, ptr %l42, !tbaa !24
  store i64 %t683, ptr %t682, !tbaa !24
  %t684 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 39
  %t685 = load i32, ptr %l43, !tbaa !23
  store i32 %t685, ptr %t684, !tbaa !23
  %t686 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 40
  %t687 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t687, ptr %t686
  %t688 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 41
  call void @llvm.memmove.p0.p0.i64(ptr %t688, ptr %l45, i64 224, i1 false)
  %t689 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 42
  %t690 = load i1, ptr %l46, !tbaa !21
  store i1 %t690, ptr %t689, !tbaa !21
  %t691 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 43
  %t692 = load i1, ptr %l47, !tbaa !21
  store i1 %t692, ptr %t691, !tbaa !21
  %t693 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 44
  %t694 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l48
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t694, ptr %t693
  %t695 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 45
  %t696 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t696, ptr %t695
  %t697 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 46
  %t698 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t698, ptr %t697
  %t699 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 47
  %t700 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l51
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t700, ptr %t699
  %t701 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 48
  %t702 = load i32, ptr %l52, !tbaa !23
  store i32 %t702, ptr %t701, !tbaa !23
  %t703 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 49
  %t704 = load i64, ptr %l53, !tbaa !24
  store i64 %t704, ptr %t703, !tbaa !24
  %t705 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 50
  %t706 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t706, ptr %t705
  %t707 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 51
  %t708 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t708, ptr %t707
  %t709 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 52
  %t710 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t710, ptr %t709
  %t711 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 53
  %t712 = load i32, ptr %l57, !tbaa !23
  store i32 %t712, ptr %t711, !tbaa !23
  %t713 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 54
  %t714 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t714, ptr %t713
  %t715 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 55
  %t716 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t716, ptr %t715
  %t717 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 56
  %t718 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t718, ptr %t717
  %t719 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 57
  %t720 = load i1, ptr %l61, !tbaa !21
  store i1 %t720, ptr %t719, !tbaa !21
  %t721 = getelementptr %"compiler/lower:lowering", ptr %l158, i32 0, i32 58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t607, ptr %t721
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l158, i64 3272, i1 false)
  br label %ret
ret:
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

@.d0 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"T13d " }>, align 8
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
@.d1 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a comprehension of a type that is no run-time array" }>, align 8
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
define internal void @olang_lambda_2(ptr %env, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/mir:Lvalue"
  %l16 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t6 = alloca { i64, [1 x i64] }, align 8
  %t19 = alloca { i64, [1 x i64] }, align 8
  %t29 = alloca { i64, [15 x i64] }, align 8
  %t35 = alloca { i64, [21 x i64] }, align 8
  store i32 %a0, ptr %l0
  %cp0 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/source:Span", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/mir:Lvalue", ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %env, i32 0, i32 3
  %cv3 = load %"compiler/mir:Lvalue", ptr %cp3, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", ptr }, ptr %env, i32 0, i32 4
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store %"compiler/source:Span" %cv1, ptr %l6
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [1 x i64] }, ptr %t6, i32 0, i32 0
  store i64 1, ptr %t7
  %t9 = insertvalue { i32 } undef, i32 %t5, 0
  %t10 = getelementptr { i64, [1 x i64] }, ptr %t6, i32 0, i32 1
  store { i32 } %t9, ptr %t10
  %t11 = load { i64, [1 x i64] }, ptr %t6
  %t15 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %vc0, ptr %t3, %"compiler/mir:Lvalue" %cv2, { i64, [1 x i64] } %t11)
  store %"compiler/mir:Lvalue" %t15, ptr %l11
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [1 x i64] }, ptr %t19, i32 0, i32 0
  store i64 1, ptr %t20
  %t22 = insertvalue { i32 } undef, i32 %t18, 0
  %t23 = getelementptr { i64, [1 x i64] }, ptr %t19, i32 0, i32 1
  store { i32 } %t22, ptr %t23
  %t24 = load { i64, [1 x i64] }, ptr %t19
  %t28 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %vc0, ptr %t16, %"compiler/mir:Lvalue" %cv3, { i64, [1 x i64] } %t24)
  store %"compiler/mir:Lvalue" %t28, ptr %l16
  br label %bb2
bb2:
  store { i64, [15 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [15 x i64] }, ptr %t29, i32 0, i32 0
  store i64 2, ptr %t30
  %t31 = load %"compiler/mir:Lvalue", ptr %l16
  %t32 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t31, 0
  %t33 = getelementptr { i64, [15 x i64] }, ptr %t29, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t32, ptr %t33
  %t34 = load { i64, [15 x i64] }, ptr %t29
  store { i64, [21 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [21 x i64] }, ptr %t35, i32 0, i32 0
  store i64 0, ptr %t36
  %t37 = load %"compiler/source:Span", ptr %l6
  %t38 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t37, 0
  %t39 = load %"compiler/mir:Lvalue", ptr %l11
  %t40 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t38, %"compiler/mir:Lvalue" %t39, 1
  %t42 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t40, { i64, [15 x i64] } %t34, 2
  %t43 = getelementptr { i64, [21 x i64] }, ptr %t35, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t42, ptr %t43
  %t44 = load { i64, [21 x i64] }, ptr %t35
  %t46 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t44, ptr %t46
  %t47 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %vc0, ptr %s0, ptr %t47, ptr %t46)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler__2flower__2ecompiler__2flower__3alowering__2eevalStmt_2elocal_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
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

@.d3 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"a fill of a type that is no array" }>, align 8
@.d4 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a run-time array's fill with no length" }>, align 8
define internal void @olang_lambda_5(ptr %env, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %l16 = alloca %"compiler/lower:pl"
  %l17 = alloca %"compiler/mir:Lvalue"
  %l23 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %t9 = alloca { i64, [1 x i64] }, align 8
  %t33 = alloca { i64, [15 x i64] }, align 8
  %t39 = alloca { i64, [21 x i64] }, align 8
  %cp0 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/source:Span", ptr %cp1, !tbaa !28
  store %"compiler/source:Span" %cv1, ptr %l2
  %cp2 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/lower:pl", ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load { i64, [4 x i64] }, ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load i32, ptr %cp4, !tbaa !28
  %cp5 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 5
  %cv5 = load { i64, [1 x i64] }, ptr %cp5, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/source:Span", %"compiler/lower:pl", { i64, [4 x i64] }, i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 7
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2, ptr %l8
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l9, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  store ptr %t4, ptr %l10, !tbaa !29
  store %"compiler/lower:pl" %cv2, ptr %l11
  %t7 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l11)
  store %"compiler/lower:pl" %t7, ptr %l13
  br label %bb1
bb1:
  store { i64, [1 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [1 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t12 = insertvalue { i32 } undef, i32 %a0, 0
  %t13 = getelementptr { i64, [1 x i64] }, ptr %t9, i32 0, i32 1
  store { i32 } %t12, ptr %t13
  %t14 = load { i64, [1 x i64] }, ptr %t9
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = load %"compiler/lower:pl", ptr %l13
  %t18 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t15, %"compiler/lower:pl" %t16, { i64, [1 x i64] } %t14)
  store %"compiler/lower:pl" %t18, ptr %l16
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t20 = load %"compiler/lower:pl", ptr %l16
  %t21 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %vc0, ptr %s0, ptr %t19, %"compiler/lower:pl" %t20)
  store %"compiler/mir:Lvalue" %t21, ptr %l17
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l2
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %vc0, ptr %t22, { i64, [4 x i64] } %cv3, i32 %cv4, { i64, [1 x i64] } %cv5, %"compiler/source:Span" %t26, i1 false)
  store { i64, [4 x i64] } %t32, ptr %l23
  br label %bb4
bb4:
  store { i64, [15 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [15 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t35 = load { i64, [4 x i64] }, ptr %l23
  %t36 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t35, 0
  %t37 = getelementptr { i64, [15 x i64] }, ptr %t33, i32 0, i32 1
  store { { i64, [4 x i64] } } %t36, ptr %t37
  %t38 = load { i64, [15 x i64] }, ptr %t33
  store { i64, [21 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [21 x i64] }, ptr %t39, i32 0, i32 0
  store i64 0, ptr %t40
  %t41 = load %"compiler/source:Span", ptr %l8
  %t42 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t41, 0
  %t43 = load %"compiler/mir:Lvalue", ptr %l17
  %t44 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t42, %"compiler/mir:Lvalue" %t43, 1
  %t46 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t44, { i64, [15 x i64] } %t38, 2
  %t47 = getelementptr { i64, [21 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t46, ptr %t47
  %t48 = load { i64, [21 x i64] }, ptr %t39
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t48, ptr %t50
  %t51 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %vc0, ptr %s0, ptr %t51, ptr %t50)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:tryCtx"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:tryCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:tryCtx", ptr %a0
  store %"compiler/lower:tryCtx" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/lower:tryCtx", ptr %l1
  store %"compiler/lower:tryCtx" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:tryCtx", ptr %rv
  ret %"compiler/lower:tryCtx" %rr
}

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

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d6 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c": local L" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d7 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" moved at its last use" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d11 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a yield outside a comprehension" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2flower_3alowering_2e14 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2flower_3alowering_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e34 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2flower_3alowering_2e40 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e41 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e44 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2flower_3alowering_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e46 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e47 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e50 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e51 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e52 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e55 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e56 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3alowering_2e58 = weak hidden constant i1 false
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

declare ptr @__olang_scope_mine_slow(ptr) noinline
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

declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_caf8701635663f27_e992a5ba8ea146fb = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Ha270003b2266a12c55eea6eacf9a4be1(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_H6b1fa5c8028973ecd947936aac3caef3(ptr %v0, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2estandIn(ptr %out, ptr %v0, i32 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %out, ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erender(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2edeclName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2egenValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
@olang_loc_1382960bfc70c50f_447f2e6bbefa4703 = external constant [0 x i8]
@olang_loc_543552ccedba0a30_34b88e2195dff774 = external constant [0 x i8]
@olang_loc_c10f234bff0405bc_197db79cf1a1a0 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_e4b18f7db400c6ba_98b68b17576d276 = external constant [0 x i8]
@olang_loc_1f81b40d868fb2d4_a735c8b3105ef948 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_61e032a6ae5cf8c0_b6153574db2992dc = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eargView(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estackArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ed4966d7257d1cce_314b285230575e82 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@olang_loc_4fc14cddf040b63b_d4edc892d8598fd7 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_162f2c5d450ff5be_60a02040feb29ca2 = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eOutOfBounds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:collectCtx" @compiler_2flower_3acollectCtx_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4, i1 %a5, i1 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePus_Hd0ab7b9373bf150d973fdf7c33c4c364(ptr %v0, ptr %a0, %"compiler/lower:collectCtx" %a1)
declare { i32, %"compiler/lower:collectCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePop_He1200c0c51a1e2029459d9d8221d233c(ptr %v0, ptr %a0)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ereleases(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_190a01ede4622abe_5dffdf8c82030ba2 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eDroppedMove(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_dbd01c2d9a53cc65_a4645b55310f1609 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2ffree_2eNotSole = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_a97196d802881110_6601adde25c6e514 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsHandle(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2eclausedTry(ptr %v0, ptr %a0)
@olang_loc_719d9e2d41dcaf75_6e5af642a4d5dbe1 = external constant [0 x i8]
declare %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %v0, i64 %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:relPath" %a1)
@olang_loc_77b58b6522aee3d1_f74e5dfa2bca7ecd = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3)
@olang_loc_8d285e9a6f8d174e_3f8421b20b21070a = external constant [0 x i8]
@olang_loc_f5af5833f64caf98_602ac3538c074da4 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1e1698b45a1b0cf3_495e2913f4118f47 = external constant [0 x i8]
@olang_loc_4345db1597b95ac6_216be31f80f17832 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstBool(ptr %v0, ptr %a0, i1 %a1, %"compiler/source:Span" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_58c3cf8c6fce78d4_23ae1924195b9e70 = external constant [0 x i8]
@olang_loc_3f94e1722b42397a_72ec18aae06ab796 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldRefPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldMadeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_7afd5d1ad8925abe_46fef9b6d0280482 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a07ec099b2fecc_5ff3e99d534ebc80 = external constant [0 x i8]
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare ptr @compiler_2flower_2etempViewCall(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/lower:pl" %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroOf(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, i1 %a6)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a6)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardBody(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@olang_loc_30767a805df234bd_503f920f410b6239 = external constant [0 x i8]
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2esolid(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisChar(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisText(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ehasStr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderMaybeText(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2escalar(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinErrors(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/lower:tryCtx" @compiler_2flower_3atryCtx_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i1 %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:tryCtx" %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %a0)
declare { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
@olang_loc_e5b6724f2c0e70f4_3544be27bc88d5e0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLeaves(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0)
declare %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_dc337209e99dc7c1_dc835b0b512a4145 = external constant [0 x i8]
declare %"compiler/lower:loopCtx" @compiler_2flower_3aloopCtx_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ePush_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:loopCtx" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eLen_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0)
declare { i32, %"compiler/lower:loopCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ePop_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_15ef98c123c6a086_7d993f1b090e93a = external constant [0 x i8]
declare i64 @compiler_2flower_2evalueRootLocal(ptr %v0, ptr %a0)
@olang_loc_18102df1fd53c36d_7d565fea6dfdcc1 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedCopy(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_7273d5babac73458_596d6780ed01c38c = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedSite(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estorageBlock(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_3aLastUses_2ector(ptr %out, ptr %v0, i64 %a0)
@olang_loc_fb069b64d7548fb8_fd74029d8d87e6e4 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftyped_2eMutGlobalsFact = external constant <{ [8 x i8], ptr }>
declare { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, %"compiler/lower:level" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epackedField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etempPart(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elocalRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_c024ea3ffaf634ad_6315be653d232c01 = external constant [0 x i8]
@olang_loc_65caa10a9ab9ec93_4c004a47da8c19bf = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdParams(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i64 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrPush(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_ea10c0b622ff638a_d8330c6c5ba8e40e = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietAll(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eselfTry(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietClauses(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_3bbf6907cdc90559_48ef26e69e7376e5 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewindowQuiet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_763e3b2e421df924_4ff52ff107ec1ef8 = external constant [0 x i8]
@olang_loc_292009f276c7a2f3_194bd9ce8dfbeb17 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_a9234ad2dabfd921_4df0c0618daabfe5 = external constant [0 x i8]
@olang_loc_5f06e436ba25f30_8078c3a4dcac4c4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epassedOr(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_a3e3ce1f266a1e3a_904ea2ee4ca5797e = external constant [0 x i8]
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eretArrays(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, %"compiler/source:Span" %a4)
@olang_loc_c2ea6282af4907c_77e331cc54ab44a0 = external constant [0 x i8]
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eread(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3b3f675a7fcfa09e_a6d8609e08455d8a = external constant [0 x i8]
@olang_loc_a39e67f1cd7c0b1f_e499cc399c2ba1cb = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epopIf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRefMut_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eSetAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eLen_H6eade83fd48a7a0e84be67fdfc468e69(ptr %v0, ptr %a0)
declare %"compiler/lower:collectCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eAt__Hce97d3b6a95327627873f207e844a422(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2edroppedArg(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_57551e43b22f9a5d_6972bddfcfeae0e9 = external constant [0 x i8]
@olang_loc_de502b4556e13d28_d48b9fb731677334 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2ftyped_3aPlan_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2ftyped_3aDropHolding_2ector(ptr %out, ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [1 x i64] } %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)

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
