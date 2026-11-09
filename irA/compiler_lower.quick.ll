source_filename = "compiler_lower.quick.ll"
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
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:tryCtx" = type { i64, { i64, ptr }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:relPath" = type { i64, { i64, ptr } }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/lower:loopCtx" = type { i32, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
@G_2ecompiler_2flower_2eContract = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eEmpty = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eFailIds = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailIds.k1, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailIds.k2, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailIds.k3, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailIds.k4, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailIds.k5, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailIds.k6 }>, align 64
@G_2ecompiler_2flower_2eFailIds.k1 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\73\74\64\2F\70\72\65\6C\75\64\65\2F\61\72\72\61\79" }>, align 8
@G_2ecompiler_2flower_2eFailIds.k2 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\73\74\64\2F\70\72\65\6C\75\64\65\2F\6E\75\6D\62\65\72" }>, align 8
@G_2ecompiler_2flower_2eFailIds.k3 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\73\74\64\2F\70\72\65\6C\75\64\65\2F\6E\75\6D\62\65\72" }>, align 8
@G_2ecompiler_2flower_2eFailIds.k4 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\73\74\64\2F\70\72\65\6C\75\64\65\2F\65\6E\75\6D\73" }>, align 8
@G_2ecompiler_2flower_2eFailIds.k5 = internal constant <{ [20 x i8] }> <{ [20 x i8] c"\73\74\64\2F\70\72\65\6C\75\64\65\2F\61\72\67\75\6D\65\6E\74" }>, align 8
@G_2ecompiler_2flower_2eFailIds.k6 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\73\74\64\2F\70\72\65\6C\75\64\65\2F\61\72\72\61\79" }>, align 8
@G_2ecompiler_2flower_2eFailTypes = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailTypes.k1, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailTypes.k2, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailTypes.k3, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailTypes.k4, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailTypes.k5, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailTypes.k6 }>, align 64
@G_2ecompiler_2flower_2eFailTypes.k1 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\41\72\72\61\79\45\72\72\6F\72" }>, align 8
@G_2ecompiler_2flower_2eFailTypes.k2 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\4E\75\6D\62\65\72\45\72\72\6F\72" }>, align 8
@G_2ecompiler_2flower_2eFailTypes.k3 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\4E\75\6D\62\65\72\45\72\72\6F\72" }>, align 8
@G_2ecompiler_2flower_2eFailTypes.k4 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\43\61\73\65\45\72\72\6F\72" }>, align 8
@G_2ecompiler_2flower_2eFailTypes.k5 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\41\72\67\75\6D\65\6E\74\45\72\72\6F\72" }>, align 8
@G_2ecompiler_2flower_2eFailTypes.k6 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\41\72\72\61\79\45\72\72\6F\72" }>, align 8
@G_2ecompiler_2flower_2eFailWords = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailWords.k1, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailWords.k2, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailWords.k3, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailWords.k4, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailWords.k5, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flower_2eFailWords.k6 }>, align 64
@G_2ecompiler_2flower_2eFailWords.k1 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\4F\75\74\4F\66\52\61\6E\67\65" }>, align 8
@G_2ecompiler_2flower_2eFailWords.k2 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\4F\76\65\72\66\6C\6F\77" }>, align 8
@G_2ecompiler_2flower_2eFailWords.k3 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\49\6E\76\61\6C\69\64" }>, align 8
@G_2ecompiler_2flower_2eFailWords.k4 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\57\72\6F\6E\67\43\61\73\65" }>, align 8
@G_2ecompiler_2flower_2eFailWords.k5 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\49\6E\76\61\6C\69\64" }>, align 8
@G_2ecompiler_2flower_2eFailWords.k6 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\45\6D\70\74\79" }>, align 8
@G_2ecompiler_2flower_2eInvalid = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eOutOfBounds = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eOverflow = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eSlotMax = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\01\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eWrongCase = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
define dso_local i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %a0) #0 {
entry:
  %l0 = alloca %"compiler/mir:Lvalue"
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l4 = alloca i64
  %rv = alloca i64
  store %"compiler/mir:Lvalue" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l0, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l1
  %t4 = load { i64, [2 x i64] }, ptr %l1
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t15 = sext i32 %t13 to i64
  store i64 %t15, ptr %l4, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_e95d68e3d7cba01a_696ee7b39c9f410e)
  unreachable
bb9:
  %t17 = load i64, ptr %l4, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2flower_2eborrowedPlace(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %t8 = icmp eq i64 %t6, 3
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
  call void @__olang_check_failed(ptr @olang_loc_76ec7e11cc604d77_65dfbe8f138a0f63)
  unreachable
bb11:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i1
  %l18 = alloca ptr
  %l26 = alloca %"compiler/mir:Fn"
  %l33 = alloca %"compiler/mir:Fn"
  %l40 = alloca %"compiler/mir:Fn"
  %l50 = alloca ptr
  %l56 = alloca %"compiler/mir:Fn"
  %l65 = alloca %"compiler/mir:Fn"
  %rv = alloca ptr
  %t34 = alloca %"compiler/mir:Fn", align 8
  %t51 = alloca %"compiler/mir:Fn", align 8
  %t67 = alloca %"compiler/mir:Fn", align 8
  %t106 = alloca %"compiler/mir:Fn", align 8
  %t127 = alloca %"compiler/mir:Fn", align 8
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
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t13 = sext i32 %t11 to i64
  %t16 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLower(ptr %v0, ptr %v1, ptr %t10, i64 %t13)
  store ptr %t16, ptr %l18
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l18, !tbaa !29
  store ptr %t17, ptr %rv
  br label %ret
bb5:
  %t18 = load { i64, [2 x i64] }, ptr %l1
  %t20 = extractvalue { i64, [2 x i64] } %t18, 0
  %t21 = icmp eq i64 %t20, 3
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { i32, i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 8}
  store i32 %t25, ptr %l3
  %t27 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t28 = getelementptr { i32, i32 }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t33 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelper(ptr %t34, ptr %v0, ptr %v1, ptr %t31, i32 %t32, i32 %t33)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t34, i64 800, i1 false)
  br label %bb9
bb9:
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %l26, i64 800, i1 false)
  store ptr %t38, ptr %rv
  br label %ret
bb10:
  %t40 = load { i64, [2 x i64] }, ptr %l1
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 1
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t46 = getelementptr { i32 }, ptr %t45, i32 0, i32 0
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l5, !tbaa !23
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eadapterFn(ptr %t51, ptr %v0, ptr %v1, ptr %t49, i32 %t50)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t51, i64 800, i1 false)
  br label %bb14
bb14:
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t54, ptr %l33, i64 800, i1 false)
  store ptr %t54, ptr %rv
  br label %ret
bb15:
  %t56 = load { i64, [2 x i64] }, ptr %l1
  %t58 = extractvalue { i64, [2 x i64] } %t56, 0
  %t59 = icmp eq i64 %t58, 2
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t61 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { i32 }, ptr %t61, i32 0, i32 0
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l6, !tbaa !23
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ecopiedFn(ptr %t67, ptr %v0, ptr %v1, ptr %t65, i32 %t66)
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t67, i64 800, i1 false)
  br label %bb19
bb19:
  %t70 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %l40, i64 800, i1 false)
  store ptr %t70, ptr %rv
  br label %ret
bb20:
  %t72 = load { i64, [2 x i64] }, ptr %l1
  %t74 = extractvalue { i64, [2 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 6
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t77 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t78 = getelementptr { i32, i64 }, ptr %t77, i32 0, i32 0
  %t79 = load i32, ptr %t78
  store i32 %t79, ptr %l7, !tbaa !23
  %t81 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t82 = getelementptr { i32, i64 }, ptr %t81, i32 0, i32 1
  %t83 = load i64, ptr %t82
  store i64 %t83, ptr %l8, !tbaa !24
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l7, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t89 = load i64, ptr %l8, !tbaa !24
  %t93 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2elowerAs(ptr %v0, ptr %v1, ptr %t85, i64 %t88, i64 %t89)
  store ptr %t93, ptr %l50
  br label %bb24
bb24:
  %t94 = load ptr, ptr %l50, !tbaa !29
  store ptr %t94, ptr %rv
  br label %ret
bb25:
  %t95 = load { i64, [2 x i64] }, ptr %l1
  %t97 = extractvalue { i64, [2 x i64] } %t95, 0
  %t98 = icmp eq i64 %t97, 4
  br i1 %t98, label %bb26, label %bb27
bb26:
  %t100 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t101 = getelementptr { i64 }, ptr %t100, i32 0, i32 0
  %t102 = load i64, ptr %t101
  store i64 %t102, ptr %l9, !tbaa !24
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2einitFn(ptr %t106, ptr %v0, ptr %v1, ptr %t104, i64 %t105)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t106, i64 800, i1 false)
  br label %bb29
bb29:
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %l56, i64 800, i1 false)
  store ptr %t109, ptr %rv
  br label %ret
bb30:
  %t111 = load { i64, [2 x i64] }, ptr %l1
  %t113 = extractvalue { i64, [2 x i64] } %t111, 0
  %t114 = icmp eq i64 %t113, 5
  br i1 %t114, label %bb31, label %bb32
bb31:
  %t116 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t117 = getelementptr { i64, i1 }, ptr %t116, i32 0, i32 0
  %t118 = load i64, ptr %t117
  store i64 %t118, ptr %l10, !tbaa !24
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t121 = getelementptr { i64, i1 }, ptr %t120, i32 0, i32 1
  %t122 = load i1, ptr %t121
  store i1 %t122, ptr %l11, !tbaa !21
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l10, !tbaa !24
  %t126 = load i1, ptr %l11, !tbaa !21
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eanyRender(ptr %t127, ptr %v0, ptr %v1, ptr %t124, i64 %t125, i1 %t126)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t127, i64 800, i1 false)
  br label %bb34
bb34:
  %t131 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %l65, i64 800, i1 false)
  store ptr %t131, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_3c213ca88cac8ac4_ee776128d38d19e0)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadGen(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca i64
  %l19 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l25 = alloca i1
  %l29 = alloca i1
  %l33 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/mir:GenInfo", ptr %t9, i32 0, i32 2
  %t13 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l13
  br label %bb4
bb4:
  %t14 = load i64, ptr %l13, !tbaa !24
  %t15 = icmp eq i64 %t14, 0
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/mir:GenInfo", ptr %t18, i32 0, i32 2
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t20)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %ret
bb9:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/mir:GenInfo", ptr %t22, i32 0, i32 2
  %t26 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v0, ptr %t24)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t26, ptr %l19
  br label %bb10
bb10:
  %t27 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l19
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t27, ptr %l3
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %l3)
  %t30 = extractvalue { i32, i64 } %t29, 1
  %t31 = extractvalue { i32, i64 } %t29, 0
  store i32 %t31, ptr %l23
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb13, label %ok.33, !prof !99
ok.33:
  store i64 %t30, ptr %l22
  br label %bb12
bb12:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l20, !tbaa !24
  br label %bb15
bb13:
  %t35 = load i32, ptr %l23, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  store i1 %t38, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb15:
  %t39 = load i64, ptr %l20, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lower:Lowerer", ptr %t40, i32 0, i32 36
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t42, i64 %t43)
  store i1 %t46, ptr %l29
  br label %bb16
bb16:
  %t47 = load i1, ptr %l29, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2edeclName(ptr %v0, ptr %s3, ptr %t50, i64 %t51)
  store { i64, ptr } %t54, ptr %l33
  br label %bb20
bb20:
  %t55 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t57 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = add i64 %t56, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t55, i64 %t56)
  %t62 = getelementptr i8, ptr %t61, i64 %t56
  call void @olang_textcopy(ptr %t62, ptr %t58, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t61, 1
  store { i64, ptr } %t64, ptr %l5, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lower:Lowerer", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 3
  store ptr %t71, ptr %l37, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t72, ptr %l38, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2egenValue(ptr %v0, ptr %s3, ptr %t73, i64 %t74)
  store { i64, ptr } %t77, ptr %l41
  br label %bb21
bb21:
  %t78 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l37, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l38, !tbaa !27
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %s3, ptr %s3, ptr %t85, { i64, ptr } %t86, { i64, ptr } %t84, i1 true)
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/lower:Lowerer", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 3
  %t94 = load i64, ptr %l1, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = call { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %s3, ptr %s3, ptr %t93, i64 %t94, { i64, ptr } %t95)
  %t100 = extractvalue { i32, { i64, ptr } } %t99, 1
  %t101 = extractvalue { i32, { i64, ptr } } %t99, 0
  store i32 %t101, ptr %l50
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb24, label %ok.103, !prof !99
ok.103:
  store { i64, ptr } %t100, ptr %l49
  br label %bb23
bb23:
  %t104 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t104, ptr %l43, !tbaa !27
  br label %bb26
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  br label %bb11
bb28:
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/mir:GenInfo", ptr %t105, i32 0, i32 2
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t107)
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2elowerAs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca { i64, [2 x i64] }
  %l37 = alloca %"compiler/mir:Fn"
  %l40 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l65 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l81 = alloca i32
  %l87 = alloca ptr
  %l93 = alloca i32
  %l95 = alloca i64
  %l102 = alloca %"compiler/lower:lowering"
  %l104 = alloca %"compiler/lower:lowering"
  %l112 = alloca ptr
  %l116 = alloca %"compiler/typed:Plan"
  %l118 = alloca %"compiler/typed:Plan"
  %l119 = alloca %"compiler/typed:Plan"
  %l133 = alloca i64
  %l136 = alloca i64
  %l139 = alloca ptr
  %l143 = alloca %"compiler/typed:Plan"
  %l145 = alloca %"compiler/typed:Plan"
  %l146 = alloca %"compiler/typed:Plan"
  %l160 = alloca ptr
  %l163 = alloca i1
  %l168 = alloca i1
  %l175 = alloca i1
  %s4 = alloca %olang.scope
  %rv = alloca ptr
  %t19 = alloca { i64, [2 x i64] }, align 8
  %t32 = alloca { i64, [2 x i64] }, align 8
  %t53 = alloca %"compiler/mir:Fn", align 8
  %t194 = alloca %"compiler/lower:lowering", align 8
  %t199 = alloca %"compiler/lower:lowering", align 8
  %t223 = alloca %"compiler/typed:Plan", align 8
  %t232 = alloca %"compiler/typed:Plan", align 8
  %t325 = alloca %"compiler/typed:Plan", align 8
  %t328 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l17
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l17, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = trunc i64 %t14 to i32
  %t18 = load i64, ptr %l2, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 6, ptr %t20
  %t22 = insertvalue { i32, i64 } undef, i32 %t16, 0
  %t24 = insertvalue { i32, i64 } %t22, i64 %t18, 1
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 1
  store { i32, i64 } %t24, ptr %t25
  %t26 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t26, ptr %l20
  br label %bb4
bb3:
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = trunc i64 %t28 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t35 = insertvalue { i32 } undef, i32 %t30, 0
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 1
  store { i32 } %t35, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t32
  store { i64, [2 x i64] } %t37, ptr %l20
  br label %bb4
bb4:
  %t39 = load { i64, [2 x i64] }, ptr %l20
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %t43, !tbaa !23
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Body", ptr %t45, i32 0, i32 3
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 4
  %t52 = load %"compiler/source:Span", ptr %t51
  call void @compiler_2fmir_3aFn_2ector(ptr %t53, ptr %v1, { i64, [2 x i64] } %t39, i32 %t44, i64 %t48, %"compiler/source:Span" %t52)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t53, i64 800, i1 false)
  br label %bb5
bb5:
  %t58 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t58, ptr %lp5
  %t59 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t59, ptr %l37, i64 800, i1 false)
  store i64 0, ptr %l6, !tbaa !24
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 12
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v1, ptr %t62)
  store i64 %t64, ptr %l40
  br label %bb6
bb6:
  %t65 = load i64, ptr %l40, !tbaa !24
  store i64 %t65, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb7, label %bb8
bb7:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb12
bb9:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l47, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb11
bb11:
  %t92 = load i64, ptr %l47, !tbaa !24
  store i64 %t92, ptr %l44, !tbaa !24
  br label %bb12
bb12:
  %t93 = load i64, ptr %l44, !tbaa !24
  store i64 %t93, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t102 = load i64, ptr %l6, !tbaa !24
  %t103 = load i64, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l11, !tbaa !24
  %t112 = load ptr, ptr %lp5
  %t113 = getelementptr %"compiler/mir:Fn", ptr %t112, i32 0, i32 23
  store ptr %t113, ptr %l65, !tbaa !29
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Body", ptr %t114, i32 0, i32 12
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v1, ptr %t116, i64 %t117)
  store i32 %t120, ptr %l69
  br label %bb17
bb17:
  %t121 = load ptr, ptr %l65, !tbaa !29
  %t122 = load i32, ptr %l69, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v1, ptr %t121, i32 %t122)
  br label %bb18
bb18:
  %t123 = load ptr, ptr %lp5
  %t124 = getelementptr %"compiler/mir:Fn", ptr %t123, i32 0, i32 24
  store ptr %t124, ptr %l70, !tbaa !29
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Body", ptr %t125, i32 0, i32 13
  %t128 = load i64, ptr %l11, !tbaa !24
  %t131 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t127, i64 %t128)
  store { i64, ptr } %t131, ptr %l74
  br label %bb19
bb19:
  %t132 = load ptr, ptr %l70, !tbaa !29
  %t133 = load { i64, ptr }, ptr %l74, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t132, { i64, ptr } %t133)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t134 = load i64, ptr %l10, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l10, !tbaa !24
  br label %bb13
bb22:
  %t138 = load ptr, ptr %l3, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Body", ptr %t138, i32 0, i32 14
  %t141 = load i1, ptr %t140, !tbaa !21
  br i1 %t141, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t143 = load ptr, ptr %lp5
  %t144 = getelementptr %"compiler/mir:Fn", ptr %t143, i32 0, i32 25
  store i1 true, ptr %t144, !tbaa !21
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/lower:Lowerer", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s4, ptr %s4, ptr %t148, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d1, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t150, ptr %l81
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t151 = load i32, ptr %l81, !tbaa !23
  store i32 %t151, ptr %l12, !tbaa !23
  %t152 = load i32, ptr %l12, !tbaa !23
  %t153 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t156 = icmp ne i32 %t152, %t153
  br i1 %t156, label %bb26, label %bb27
bb26:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/lower:Lowerer", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  store ptr %t163, ptr %l87, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/lower:Lowerer", ptr %t164, i32 0, i32 0
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  %t170 = load ptr, ptr %l3, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Body", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %t172, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t169, i32 %t173)
  store i32 %t176, ptr %l93
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t177 = load i32, ptr %l12, !tbaa !23
  %t178 = load ptr, ptr %l87, !tbaa !29
  %t179 = load i32, ptr %l93, !tbaa !23
  %t181 = call i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %t178, i32 %t179, i32 %t177, i64 0)
  store i64 %t181, ptr %l95
  br label %bb29
bb29:
  %t182 = load i64, ptr %l95, !tbaa !24
  %t183 = load ptr, ptr %lp5
  %t184 = getelementptr %"compiler/mir:Fn", ptr %t183, i32 0, i32 26
  store i64 %t182, ptr %t184, !tbaa !24
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb31
bb31:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l3, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/lower:Lowerer", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load ptr, ptr %lp5
  call void @compiler_2flower_3alowering_2ector(ptr %t194, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t185, ptr %t186, ptr %t192, ptr %t193)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t194, i64 3272, i1 false)
  br label %bb32
bb32:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3alowering(ptr %t199, ptr %v1, ptr %l102)
  call void @llvm.memmove.p0.p0.i64(ptr %l104, ptr %t199, i64 3272, i1 false)
  br label %bb33
bb33:
  %t201 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3272, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t201, ptr %l104, i64 3272, i1 false)
  store ptr %t201, ptr %l13, !tbaa !29
  %t203 = load ptr, ptr %l13, !tbaa !29
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = getelementptr %"compiler/typed:Body", ptr %t204, i32 0, i32 3
  %t207 = load i64, ptr %t206, !tbaa !24
  %t210 = getelementptr %"compiler/lower:lowering", ptr %t203, i32 0, i32 7
  store i64 %t207, ptr %t210, !tbaa !24
  %t211 = load i64, ptr %l2, !tbaa !24
  %t213 = icmp sge i64 %t211, 0
  br i1 %t213, label %bb34, label %bb35
bb34:
  %t215 = load ptr, ptr %l13, !tbaa !29
  %t217 = getelementptr %"compiler/lower:lowering", ptr %t215, i32 0, i32 24
  store i1 true, ptr %t217, !tbaa !21
  %t218 = load ptr, ptr %l13, !tbaa !29
  store ptr %t218, ptr %l112, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/lower:Lowerer", ptr %t219, i32 0, i32 3
  %t222 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t223, ptr %v0, ptr %v1, ptr %t221, i64 %t222)
  call void @llvm.memmove.p0.p0.i64(ptr %l116, ptr %t223, i64 536, i1 false)
  br label %bb36
bb35:
  %t226 = load i64, ptr %l1, !tbaa !24
  store i64 %t226, ptr %l133, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/lower:Lowerer", ptr %t227, i32 0, i32 2
  %t231 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t229)
  store i64 %t231, ptr %l136
  br label %bb64
bb36:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t232, ptr %v1, ptr %l116)
  call void @llvm.memmove.p0.p0.i64(ptr %l118, ptr %t232, i64 536, i1 false)
  br label %bb37
bb37:
  %t234 = load ptr, ptr %l112, !tbaa !29
  %t235 = getelementptr %"compiler/lower:lowering", ptr %t234, i32 0, i32 30
  call void @llvm.memmove.p0.p0.i64(ptr %l119, ptr %t235, i64 536, i1 false)
  %t236 = load ptr, ptr %l112, !tbaa !29
  %t237 = getelementptr %"compiler/lower:lowering", ptr %t236, i32 0, i32 30
  call void @llvm.memmove.p0.p0.i64(ptr %t237, ptr %l118, i64 536, i1 false)
  %t238 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e2
  br i1 %t238, label %bb38, label %bb39
bb38:
  %t240 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 2
  %t241 = load { i64, ptr }, ptr %t240
  %t242 = extractvalue { i64, ptr } %t241, 1
  call void @__olang_region_release(ptr %t242)
  store { i64, ptr } zeroinitializer, ptr %t240
  br label %bb39
bb39:
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e3
  br i1 %t243, label %bb40, label %bb41
bb40:
  %t245 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 3
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  call void @__olang_region_release(ptr %t247)
  store { i64, ptr } zeroinitializer, ptr %t245
  br label %bb41
bb41:
  %t248 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e4
  br i1 %t248, label %bb42, label %bb43
bb42:
  %t250 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 4
  %t251 = load { i64, ptr }, ptr %t250
  %t252 = extractvalue { i64, ptr } %t251, 1
  call void @__olang_region_release(ptr %t252)
  store { i64, ptr } zeroinitializer, ptr %t250
  br label %bb43
bb43:
  %t253 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e5
  br i1 %t253, label %bb44, label %bb45
bb44:
  %t255 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 5
  %t256 = load { i64, ptr }, ptr %t255
  %t257 = extractvalue { i64, ptr } %t256, 1
  call void @__olang_region_release(ptr %t257)
  store { i64, ptr } zeroinitializer, ptr %t255
  br label %bb45
bb45:
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e8
  br i1 %t258, label %bb46, label %bb47
bb46:
  %t260 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 8
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  call void @__olang_region_release(ptr %t262)
  store { i64, ptr } zeroinitializer, ptr %t260
  br label %bb47
bb47:
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e9
  br i1 %t263, label %bb48, label %bb49
bb48:
  %t265 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 9
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  call void @__olang_region_release(ptr %t267)
  store { i64, ptr } zeroinitializer, ptr %t265
  br label %bb49
bb49:
  %t268 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e11
  br i1 %t268, label %bb50, label %bb51
bb50:
  %t270 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 11
  %t271 = load { i64, ptr }, ptr %t270
  %t272 = extractvalue { i64, ptr } %t271, 1
  call void @__olang_region_release(ptr %t272)
  store { i64, ptr } zeroinitializer, ptr %t270
  br label %bb51
bb51:
  %t273 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e12
  br i1 %t273, label %bb52, label %bb53
bb52:
  %t275 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 12
  %t276 = load { i64, ptr }, ptr %t275
  %t277 = extractvalue { i64, ptr } %t276, 1
  call void @__olang_region_release(ptr %t277)
  store { i64, ptr } zeroinitializer, ptr %t275
  br label %bb53
bb53:
  %t278 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e13
  br i1 %t278, label %bb54, label %bb55
bb54:
  %t280 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 13
  %t281 = load { i64, ptr }, ptr %t280
  %t282 = extractvalue { i64, ptr } %t281, 1
  call void @__olang_region_release(ptr %t282)
  store { i64, ptr } zeroinitializer, ptr %t280
  br label %bb55
bb55:
  %t283 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e15
  br i1 %t283, label %bb56, label %bb57
bb56:
  %t285 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 15
  %t286 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t285, i32 0, i32 0
  %t287 = load { i64, ptr }, ptr %t286
  %t288 = extractvalue { i64, ptr } %t287, 1
  %t289 = call ptr @__olang_region_or(ptr %t288, ptr null)
  %t290 = icmp ne ptr %t289, null
  %t291 = select i1 %t290, ptr %t289, ptr null
  call void @__olang_region_drop(ptr %t291)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t285
  br label %bb57
bb57:
  %t292 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e16
  br i1 %t292, label %bb58, label %bb59
bb58:
  %t294 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 16
  %t295 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t294, i32 0, i32 0
  %t296 = load { i64, ptr }, ptr %t295
  %t297 = extractvalue { i64, ptr } %t296, 1
  %t298 = call ptr @__olang_region_or(ptr %t297, ptr null)
  %t299 = icmp ne ptr %t298, null
  %t300 = select i1 %t299, ptr %t298, ptr null
  call void @__olang_region_drop(ptr %t300)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t294
  br label %bb59
bb59:
  %t301 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e1
  br i1 %t301, label %bb60, label %bb61
bb60:
  %t303 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 17
  %t304 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t303, i32 0, i32 1
  %t305 = load { i64, ptr }, ptr %t304
  %t306 = extractvalue { i64, ptr } %t305, 1
  call void @__olang_region_release(ptr %t306)
  store { i64, ptr } zeroinitializer, ptr %t304
  br label %bb61
bb61:
  %t307 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e2
  br i1 %t307, label %bb62, label %bb63
bb62:
  %t309 = getelementptr %"compiler/typed:Plan", ptr %l119, i32 0, i32 17
  %t310 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t309, i32 0, i32 2
  %t311 = load { i64, ptr }, ptr %t310
  %t312 = extractvalue { i64, ptr } %t311, 1
  call void @__olang_region_release(ptr %t312)
  store { i64, ptr } zeroinitializer, ptr %t310
  br label %bb63
bb63:
  br label %bb96
bb64:
  %t313 = load i64, ptr %l133, !tbaa !24
  %t314 = load i64, ptr %l136, !tbaa !24
  %t315 = icmp slt i64 %t313, %t314
  br i1 %t315, label %bb65, label %bb66
bb65:
  %t317 = load ptr, ptr %l13, !tbaa !29
  %t319 = getelementptr %"compiler/lower:lowering", ptr %t317, i32 0, i32 24
  store i1 true, ptr %t319, !tbaa !21
  %t320 = load ptr, ptr %l13, !tbaa !29
  store ptr %t320, ptr %l139, !tbaa !29
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = getelementptr %"compiler/lower:Lowerer", ptr %t321, i32 0, i32 2
  %t324 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t325, ptr %v0, ptr %v1, ptr %t323, i64 %t324)
  call void @llvm.memmove.p0.p0.i64(ptr %l143, ptr %t325, i64 536, i1 false)
  br label %bb67
bb66:
  br label %bb95
bb67:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t328, ptr %v1, ptr %l143)
  call void @llvm.memmove.p0.p0.i64(ptr %l145, ptr %t328, i64 536, i1 false)
  br label %bb68
bb68:
  %t330 = load ptr, ptr %l139, !tbaa !29
  %t331 = getelementptr %"compiler/lower:lowering", ptr %t330, i32 0, i32 30
  call void @llvm.memmove.p0.p0.i64(ptr %l146, ptr %t331, i64 536, i1 false)
  %t332 = load ptr, ptr %l139, !tbaa !29
  %t333 = getelementptr %"compiler/lower:lowering", ptr %t332, i32 0, i32 30
  call void @llvm.memmove.p0.p0.i64(ptr %t333, ptr %l145, i64 536, i1 false)
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e2
  br i1 %t334, label %bb69, label %bb70
bb69:
  %t336 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 2
  %t337 = load { i64, ptr }, ptr %t336
  %t338 = extractvalue { i64, ptr } %t337, 1
  call void @__olang_region_release(ptr %t338)
  store { i64, ptr } zeroinitializer, ptr %t336
  br label %bb70
bb70:
  %t339 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e3
  br i1 %t339, label %bb71, label %bb72
bb71:
  %t341 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 3
  %t342 = load { i64, ptr }, ptr %t341
  %t343 = extractvalue { i64, ptr } %t342, 1
  call void @__olang_region_release(ptr %t343)
  store { i64, ptr } zeroinitializer, ptr %t341
  br label %bb72
bb72:
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e4
  br i1 %t344, label %bb73, label %bb74
bb73:
  %t346 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 4
  %t347 = load { i64, ptr }, ptr %t346
  %t348 = extractvalue { i64, ptr } %t347, 1
  call void @__olang_region_release(ptr %t348)
  store { i64, ptr } zeroinitializer, ptr %t346
  br label %bb74
bb74:
  %t349 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e5
  br i1 %t349, label %bb75, label %bb76
bb75:
  %t351 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 5
  %t352 = load { i64, ptr }, ptr %t351
  %t353 = extractvalue { i64, ptr } %t352, 1
  call void @__olang_region_release(ptr %t353)
  store { i64, ptr } zeroinitializer, ptr %t351
  br label %bb76
bb76:
  %t354 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e8
  br i1 %t354, label %bb77, label %bb78
bb77:
  %t356 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 8
  %t357 = load { i64, ptr }, ptr %t356
  %t358 = extractvalue { i64, ptr } %t357, 1
  call void @__olang_region_release(ptr %t358)
  store { i64, ptr } zeroinitializer, ptr %t356
  br label %bb78
bb78:
  %t359 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e9
  br i1 %t359, label %bb79, label %bb80
bb79:
  %t361 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 9
  %t362 = load { i64, ptr }, ptr %t361
  %t363 = extractvalue { i64, ptr } %t362, 1
  call void @__olang_region_release(ptr %t363)
  store { i64, ptr } zeroinitializer, ptr %t361
  br label %bb80
bb80:
  %t364 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e11
  br i1 %t364, label %bb81, label %bb82
bb81:
  %t366 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 11
  %t367 = load { i64, ptr }, ptr %t366
  %t368 = extractvalue { i64, ptr } %t367, 1
  call void @__olang_region_release(ptr %t368)
  store { i64, ptr } zeroinitializer, ptr %t366
  br label %bb82
bb82:
  %t369 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e12
  br i1 %t369, label %bb83, label %bb84
bb83:
  %t371 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 12
  %t372 = load { i64, ptr }, ptr %t371
  %t373 = extractvalue { i64, ptr } %t372, 1
  call void @__olang_region_release(ptr %t373)
  store { i64, ptr } zeroinitializer, ptr %t371
  br label %bb84
bb84:
  %t374 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e13
  br i1 %t374, label %bb85, label %bb86
bb85:
  %t376 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 13
  %t377 = load { i64, ptr }, ptr %t376
  %t378 = extractvalue { i64, ptr } %t377, 1
  call void @__olang_region_release(ptr %t378)
  store { i64, ptr } zeroinitializer, ptr %t376
  br label %bb86
bb86:
  %t379 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e15
  br i1 %t379, label %bb87, label %bb88
bb87:
  %t381 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 15
  %t382 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t381, i32 0, i32 0
  %t383 = load { i64, ptr }, ptr %t382
  %t384 = extractvalue { i64, ptr } %t383, 1
  %t385 = call ptr @__olang_region_or(ptr %t384, ptr null)
  %t386 = icmp ne ptr %t385, null
  %t387 = select i1 %t386, ptr %t385, ptr null
  call void @__olang_region_drop(ptr %t387)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t381
  br label %bb88
bb88:
  %t388 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e16
  br i1 %t388, label %bb89, label %bb90
bb89:
  %t390 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 16
  %t391 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t390, i32 0, i32 0
  %t392 = load { i64, ptr }, ptr %t391
  %t393 = extractvalue { i64, ptr } %t392, 1
  %t394 = call ptr @__olang_region_or(ptr %t393, ptr null)
  %t395 = icmp ne ptr %t394, null
  %t396 = select i1 %t395, ptr %t394, ptr null
  call void @__olang_region_drop(ptr %t396)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t390
  br label %bb90
bb90:
  %t397 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e1
  br i1 %t397, label %bb91, label %bb92
bb91:
  %t399 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 17
  %t400 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t399, i32 0, i32 1
  %t401 = load { i64, ptr }, ptr %t400
  %t402 = extractvalue { i64, ptr } %t401, 1
  call void @__olang_region_release(ptr %t402)
  store { i64, ptr } zeroinitializer, ptr %t400
  br label %bb92
bb92:
  %t403 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e2
  br i1 %t403, label %bb93, label %bb94
bb93:
  %t405 = getelementptr %"compiler/typed:Plan", ptr %l146, i32 0, i32 17
  %t406 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t405, i32 0, i32 2
  %t407 = load { i64, ptr }, ptr %t406
  %t408 = extractvalue { i64, ptr } %t407, 1
  call void @__olang_region_release(ptr %t408)
  store { i64, ptr } zeroinitializer, ptr %t406
  br label %bb94
bb94:
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t409 = load ptr, ptr %l13, !tbaa !29
  store ptr %t409, ptr %l160, !tbaa !29
  %t410 = load i64, ptr %l2, !tbaa !24
  %t412 = icmp slt i64 %t410, 0
  br i1 %t412, label %bb97, label %bb98
bb97:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/lower:Lowerer", ptr %t414, i32 0, i32 5
  %t417 = load ptr, ptr %t416, !tbaa !29
  %t419 = icmp eq ptr %t417, null
  %t421 = xor i1 %t419, true
  store i1 %t421, ptr %l163, !tbaa !21
  br label %bb99
bb98:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb99
bb99:
  %t423 = load i1, ptr %l163, !tbaa !21
  br i1 %t423, label %bb100, label %bb101
bb100:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"compiler/lower:Lowerer", ptr %t424, i32 0, i32 5
  %t427 = load ptr, ptr %t426, !tbaa !29
  %t429 = icmp eq ptr %t427, null
  br i1 %t429, label %bb102, label %bb103
bb101:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb106
bb102:
  call void @__olang_check_failed(ptr @olang_loc_f4868819b96b4ee8_1edd2b51c7badbd4)
  unreachable
bb103:
  br label %bb104
bb104:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr %"compiler/lower:Lowerer", ptr %t431, i32 0, i32 5
  %t434 = load ptr, ptr %t433, !tbaa !29
  %t435 = load i64, ptr %l1, !tbaa !24
  %t438 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFrees(ptr %v0, ptr %t434, i64 %t435)
  store i1 %t438, ptr %l175
  br label %bb105
bb105:
  %t439 = load i1, ptr %l175, !tbaa !21
  store i1 %t439, ptr %l168, !tbaa !21
  br label %bb106
bb106:
  %t440 = load i1, ptr %l168, !tbaa !21
  %t441 = load ptr, ptr %l160, !tbaa !29
  %t442 = getelementptr %"compiler/lower:lowering", ptr %t441, i32 0, i32 31
  store i1 %t440, ptr %t442, !tbaa !21
  %t443 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadGen(ptr %v0, ptr %t443, i64 -1)
  br label %bb107
bb107:
  %t445 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erun(ptr %v1, ptr %t445)
  br label %bb108
bb108:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load ptr, ptr %l3, !tbaa !29
  %t450 = getelementptr %"compiler/typed:Body", ptr %t448, i32 0, i32 3
  %t451 = load i64, ptr %t450, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadGen(ptr %v0, ptr %t447, i64 %t451)
  br label %bb109
bb109:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load ptr, ptr %l13, !tbaa !29
  %t457 = getelementptr %"compiler/lower:lowering", ptr %t455, i32 0, i32 11
  %t458 = load i1, ptr %t457, !tbaa !21
  %t461 = getelementptr %"compiler/lower:Lowerer", ptr %t454, i32 0, i32 7
  store i1 %t458, ptr %t461, !tbaa !21
  %t462 = load ptr, ptr %l13, !tbaa !29
  %t464 = getelementptr %"compiler/lower:lowering", ptr %t462, i32 0, i32 3
  store ptr %t464, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %a0) #0 {
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
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 21
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
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/lower:Lowerer", ptr %t16, i32 0, i32 21
  store i32 %t15, ptr %t17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 21
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterPassed(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
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
  %l19 = alloca i64
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l67 = alloca i1
  %l70 = alloca i1
  %l77 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l121 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  %t88 = alloca { i64, [1 x i64] }, align 8
  %t118 = alloca { i64, [1 x i64] }, align 8
  %t203 = alloca { i64, [1 x i64] }, align 8
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
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l25
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 3
  %t16 = getelementptr %"compiler/mir:Fn", ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16, !tbaa !23
  %t20 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t12, i32 %t17)
  store { i64, ptr } %t20, ptr %l29
  br label %bb2
bb2:
  %t21 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l31, !tbaa !24
  %t25 = load i64, ptr %l31, !tbaa !24
  %t26 = icmp sge i64 %t25, 0
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load i64, ptr %l31, !tbaa !24
  %t29 = icmp sle i64 %t28, 576460752303423487
  br i1 %t29, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_8a5ba3d76fdc22ed_b870bfe3eff73029)
  unreachable
bb5:
  %t31 = load i64, ptr %l31, !tbaa !24
  %t32 = mul i64 %t31, 16
  %t33 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8a5ba3d76fdc22ed_b870bfe3eff73029)
  unreachable
bb7:
  %t47 = load i64, ptr %l9, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb12
bb9:
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l43, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb11
bb11:
  %t67 = load i64, ptr %l43, !tbaa !24
  store i64 %t67, ptr %l40, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l40, !tbaa !24
  store i64 %t68, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  %t69 = load i64, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb14, label %bb15
bb14:
  br label %bb43
bb15:
  br label %bb16
bb16:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l11, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l12, !tbaa !24
  %t87 = load i64, ptr %l12, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [1 x i64] }, ptr %t88, i32 0, i32 0
  store i64 2, ptr %t89
  %t90 = load { i64, [1 x i64] }, ptr %t88
  %t93 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, [1 x i64] }, ptr %t94, i64 %t87
  store { i64, [1 x i64] } %t90, ptr %t95
  %t96 = load i64, ptr %l12, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t96
  %t101 = load i64, ptr %t100, !tbaa !34
  store i64 %t101, ptr %l13, !tbaa !24
  %t103 = load i64, ptr %l13, !tbaa !24
  %t105 = icmp eq i64 %t103, 0
  br i1 %t105, label %bb17, label %bb18
bb17:
  %t107 = load ptr, ptr %l3, !tbaa !29
  %t111 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t107, i32 %a2)
  store i1 %t111, ptr %l70
  br label %bb19
bb18:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb20
bb19:
  %t112 = load i1, ptr %l70, !tbaa !21
  store i1 %t112, ptr %l67, !tbaa !21
  br label %bb20
bb20:
  %t113 = load i1, ptr %l67, !tbaa !21
  br i1 %t113, label %bb21, label %bb22
bb21:
  %t114 = load i64, ptr %l12, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store { i64, [1 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [1 x i64] }, ptr %t118, i32 0, i32 0
  store i64 1, ptr %t119
  %t121 = insertvalue { i64 } undef, i64 %t117, 0
  %t122 = getelementptr { i64, [1 x i64] }, ptr %t118, i32 0, i32 1
  store { i64 } %t121, ptr %t122
  %t123 = load { i64, [1 x i64] }, ptr %t118
  %t126 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr { i64, [1 x i64] }, ptr %t127, i64 %t114
  store { i64, [1 x i64] } %t123, ptr %t128
  br label %bb42
bb22:
  br label %bb23
bb23:
  %t129 = load i64, ptr %l13, !tbaa !24
  %t131 = icmp sgt i64 %t129, 0
  br i1 %t131, label %bb24, label %bb25
bb24:
  %t133 = load i64, ptr %l13, !tbaa !24
  %t135 = sub i64 %t133, 1
  store i64 %t135, ptr %l77, !tbaa !24
  br label %bb26
bb25:
  %t137 = load i64, ptr %l13, !tbaa !24
  store i64 %t137, ptr %l77, !tbaa !24
  br label %bb26
bb26:
  %t139 = load i64, ptr %l77, !tbaa !24
  store i64 %t139, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t144 = load i64, ptr %l16, !tbaa !24
  %t145 = load i64, ptr %l15, !tbaa !24
  %t148 = icmp sgt i64 %t144, %t145
  br i1 %t148, label %bb27, label %bb28
bb27:
  %t150 = load i64, ptr %l17, !tbaa !24
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb32
bb29:
  %t154 = load i64, ptr %l16, !tbaa !24
  %t155 = load i64, ptr %l15, !tbaa !24
  %t158 = sub i64 %t154, %t155
  %t159 = load i64, ptr %l17, !tbaa !24
  %t162 = add i64 %t158, %t159
  %t164 = sub i64 %t162, 1
  %t165 = load i64, ptr %l17, !tbaa !24
  %t168 = sdiv i64 %t164, %t165
  store i64 %t168, ptr %l89, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb31
bb31:
  %t170 = load i64, ptr %l89, !tbaa !24
  store i64 %t170, ptr %l86, !tbaa !24
  br label %bb32
bb32:
  %t171 = load i64, ptr %l86, !tbaa !24
  store i64 %t171, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb33
bb33:
  %t172 = load i64, ptr %l19, !tbaa !24
  %t173 = load i64, ptr %l18, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb34, label %bb35
bb34:
  br label %bb41
bb35:
  br label %bb36
bb36:
  %t180 = load i64, ptr %l15, !tbaa !24
  %t181 = load i64, ptr %l19, !tbaa !24
  %t182 = load i64, ptr %l17, !tbaa !24
  %t185 = mul i64 %t181, %t182
  %t188 = add i64 %t180, %t185
  store i64 %t188, ptr %l20, !tbaa !24
  %t190 = load i64, ptr %l20, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i64, ptr %t193, i64 %t190
  %t195 = load i64, ptr %t194, !tbaa !34
  %t196 = load i64, ptr %l14, !tbaa !24
  %t199 = icmp eq i64 %t195, %t196
  br i1 %t199, label %bb37, label %bb38
bb37:
  %t201 = load i64, ptr %l12, !tbaa !24
  %t202 = load i64, ptr %l20, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t203
  %t204 = getelementptr { i64, [1 x i64] }, ptr %t203, i32 0, i32 0
  store i64 1, ptr %t204
  %t206 = insertvalue { i64 } undef, i64 %t202, 0
  %t207 = getelementptr { i64, [1 x i64] }, ptr %t203, i32 0, i32 1
  store { i64 } %t206, ptr %t207
  %t208 = load { i64, [1 x i64] }, ptr %t203
  %t211 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr { i64, [1 x i64] }, ptr %t212, i64 %t201
  store { i64, [1 x i64] } %t208, ptr %t213
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t214 = load i64, ptr %l19, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l19, !tbaa !24
  br label %bb33
bb41:
  br label %bb42
bb42:
  %t218 = load i64, ptr %l11, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l11, !tbaa !24
  br label %bb13
bb43:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/lower:lowering", ptr %t222, i32 0, i32 3
  %t225 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t228 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t224, { i64, ptr } %t225)
  store %"compiler/mir:Range" %t228, ptr %l121
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t229 = load %"compiler/mir:Range", ptr %l121
  store %"compiler/mir:Range" %t229, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecleanup(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i32
  %l28 = alloca ptr
  %l32 = alloca ptr
  %s0 = alloca %olang.scope
  %t24 = alloca { i64, [21 x i64] }, align 8
  %t73 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 16
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t8, i64 %t9)
  store i32 %t12, ptr %l11
  br label %bb4
bb4:
  %t13 = load i32, ptr %l11, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 3
  %t18 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t16)
  store i32 %t18, ptr %l14
  br label %bb5
bb5:
  %t19 = load i32, ptr %l14, !tbaa !23
  store i32 %t19, ptr %l4, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t22 = load i32, ptr %l3, !tbaa !23
  %t23 = load i32, ptr %l4, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [21 x i64] }, ptr %t24, i32 0, i32 0
  store i64 15, ptr %t25
  %t27 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t21, 0
  %t29 = insertvalue { %"compiler/source:Span", i32, i32 } %t27, i32 %t22, 1
  %t31 = insertvalue { %"compiler/source:Span", i32, i32 } %t29, i32 %t23, 2
  %t32 = getelementptr { i64, [21 x i64] }, ptr %t24, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t31, ptr %t32
  %t33 = load { i64, [21 x i64] }, ptr %t24
  %t35 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t33, ptr %t35
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t20, ptr %t35)
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 9
  %t41 = load i32, ptr %t40, !tbaa !23
  store i32 %t41, ptr %l5, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t43, i32 %t44)
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 16
  %t50 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t49, i64 %t50, i32 -1)
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l28, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lower:lowering", ptr %t54, i32 0, i32 15
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store ptr %t60, ptr %l32
  br label %bb9
bb9:
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t62 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v0, ptr %t61, ptr %t62)
  br label %bb10
bb10:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t63, i32 0, i32 16
  %t66 = load i64, ptr %l2, !tbaa !24
  %t67 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t65, i64 %t66, i32 %t67)
  br label %bb11
bb11:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l1
  store { i64, [8 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [8 x i64] }, ptr %t73, i32 0, i32 0
  store i64 10, ptr %t74
  %t76 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t72, 0
  %t77 = getelementptr { i64, [8 x i64] }, ptr %t73, i32 0, i32 1
  store { %"compiler/source:Span" } %t76, ptr %t77
  %t78 = load { i64, [8 x i64] }, ptr %t73
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t71, { i64, [8 x i64] } %t78)
  br label %bb12
bb12:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t81, i32 %t82)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca { i64, [4 x i64] }
  %t3 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [4 x i64] }, ptr %t3, i32 0, i32 0
  store i64 2, ptr %t4
  %t6 = insertvalue { i32, i64 } undef, i32 %t1, 0
  %t8 = insertvalue { i32, i64 } %t6, i64 %a1, 1
  %t9 = getelementptr { i64, [4 x i64] }, ptr %t3, i32 0, i32 1
  store { i32, i64 } %t8, ptr %t9
  %t10 = load { i64, [4 x i64] }, ptr %t3
  store { i64, [4 x i64] } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2econvertsApart(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i32
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l23 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i32, ptr %l7, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i32, ptr %l10, !tbaa !23
  store i32 %t12, ptr %l4, !tbaa !23
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = icmp ne i32 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i32, ptr %l4, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp ne i32 %t19, %t20
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l14, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l19, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lower:lowering", ptr %t27, i32 0, i32 2
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l23
  br label %bb8
bb7:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb11
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i32, ptr %l4, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l27
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l19, !tbaa !29
  %t44 = load i32, ptr %l23, !tbaa !23
  %t45 = load i32, ptr %l27, !tbaa !23
  %t46 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elaidApart(ptr %v0, ptr %t43, i32 %t44, i32 %t45)
  store i1 %t46, ptr %l28
  br label %bb10
bb10:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l18, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l16 = alloca i64
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
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 15
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t6, i32 %t7)
  %t11 = extractvalue { i32, i64 } %t10, 1
  %t12 = extractvalue { i32, i64 } %t10, 0
  store i32 %t12, ptr %l10
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store i64 %t11, ptr %l9
  br label %bb1
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -2, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp ne i64 %t17, -2
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t21, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emethodBody(ptr %v0, ptr %s0, ptr %s0, ptr %t23, i32 %t24, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i64 %t27, ptr %l16
  br label %bb8
bb8:
  %t28 = load i64, ptr %l16, !tbaa !24
  store i64 %t28, ptr %l3, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/lower:Lowerer", ptr %t32, i32 0, i32 15
  %t35 = load i32, ptr %l1, !tbaa !23
  %t36 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t34, i32 %t35, i64 %t36)
  br label %bb9
bb9:
  %t40 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eelide(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i1
  %l11 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l30 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eElidedCopy(ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a1, ptr %t6)
  store i1 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i1, ptr %l11, !tbaa !21
  %t12 = xor i1 %t11, true
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l2, !tbaa !29
  store ptr %t15, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 7
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:lowering", ptr %t30, i32 0, i32 46
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Make", ptr %t33, i32 0, i32 4
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t32, i64 %t38, i1 true)
  br label %bb13
bb13:
  br label %bb23
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb18, label %bb19
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 51
  %t48 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t47, i64 %t48, i1 true)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4e2a31381b56322a_5197c6e7cb15ae56)
  unreachable
bb23:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lower:lowering", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l30, !tbaa !29
  %t56 = getelementptr %"compiler/lower:Lowerer", ptr %t55, i32 0, i32 25
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = add i64 %t57, 1
  %t61 = load ptr, ptr %l30, !tbaa !29
  %t62 = getelementptr %"compiler/lower:Lowerer", ptr %t61, i32 0, i32 25
  store i64 %t59, ptr %t62, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, [1 x i64] }
  %l5 = alloca { i64, [4 x i64] }
  %l10 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t10 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounted(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  store i1 %t10, ptr %l10
  br label %bb4
bb4:
  %t11 = load i1, ptr %l10, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 3
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 9
  %t18 = load i32, ptr %t17, !tbaa !23
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %t14, i32 %t18, ptr %t19)
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 16}
  %t30 = icmp eq i64 %t28, 5
  store i1 %t30, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l17, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [21 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t34, i32 0, i32 0
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l2
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [21 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t40, i32 0, i32 1
  %t42 = load { i64, [1 x i64] }, ptr %t41
  store { i64, [1 x i64] } %t42, ptr %l3
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [21 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t46, i32 0, i32 2
  %t48 = load i32, ptr %t47
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [21 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t52, i32 0, i32 3
  %t54 = load { i64, [4 x i64] }, ptr %t53
  store { i64, [4 x i64] } %t54, ptr %l5
  %t56 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadDtor(ptr %v0, ptr %t56, i32 %t48)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eencloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l47 = alloca i1
  %l49 = alloca i64
  %l53 = alloca i64
  %l61 = alloca %"compiler/typed:BlockInfo"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a2, ptr %l3, !tbaa !23
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/lower:lowering", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 8
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i64, ptr %l14, !tbaa !24
  %t12 = add i64 %t11, 1
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l19, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb9, label %bb10
bb9:
  br label %bb24
bb10:
  br label %bb11
bb11:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load i32, ptr %l3, !tbaa !23
  %t64 = icmp eq i32 %t60, %a1
  br i1 %t64, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t67 = load i32, ptr %l3, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t71 = icmp slt i64 %t69, 0
  br i1 %t71, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb18
bb16:
  %t73 = load i32, ptr %l3, !tbaa !23
  %t75 = sext i32 %t73 to i64
  store i64 %t75, ptr %l49, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/lower:lowering", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 8
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l53
  br label %bb17
bb17:
  %t84 = load i64, ptr %l49, !tbaa !24
  %t85 = load i64, ptr %l53, !tbaa !24
  %t86 = icmp sge i64 %t84, %t85
  store i1 %t86, ptr %l47, !tbaa !21
  br label %bb18
bb18:
  %t88 = load i1, ptr %l47, !tbaa !21
  br i1 %t88, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/lower:lowering", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Body", ptr %t93, i32 0, i32 8
  %t96 = load i32, ptr %l3, !tbaa !23
  %t98 = sext i32 %t96 to i64
  %t101 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t95, i64 %t98)
  store %"compiler/typed:BlockInfo" %t101, ptr %l61
  br label %bb22
bb22:
  %t102 = getelementptr %"compiler/typed:BlockInfo", ptr %l61, i32 0, i32 0
  %t103 = load i32, ptr %t102, !tbaa !23
  store i32 %t103, ptr %l3, !tbaa !23
  br label %bb23
bb23:
  %t105 = load i64, ptr %l8, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l8, !tbaa !24
  br label %bb8
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i1
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i1
  %l49 = alloca ptr
  %l53 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i1, ptr %l12, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:LocalUses", ptr %t10, i32 0, i32 15
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t12)
  store i64 %t14, ptr %l16
  br label %bb5
bb5:
  %t15 = load i64, ptr %l16, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb11
bb8:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l23, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb13, label %bb14
bb13:
  br label %bb27
bb14:
  br label %bb15
bb15:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l8, !tbaa !24
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/typed:LocalUses", ptr %t62, i32 0, i32 15
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t64, i64 %t65)
  store i64 %t68, ptr %l44
  br label %bb16
bb16:
  %t69 = load i64, ptr %l2, !tbaa !24
  %t70 = load i64, ptr %l44, !tbaa !24
  %t72 = icmp eq i64 %t70, %t69
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t76 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  store ptr %t77, ptr %l49, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/typed:LocalUses", ptr %t78, i32 0, i32 16
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t80, i64 %t81)
  store i64 %t84, ptr %l53
  br label %bb19
bb18:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb22
bb19:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/typed:LocalUses", ptr %t85, i32 0, i32 17
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l57
  br label %bb20
bb20:
  %t92 = load ptr, ptr %l49, !tbaa !29
  %t93 = load i64, ptr %l53, !tbaa !24
  %t94 = load i64, ptr %l57, !tbaa !24
  %t95 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %t92, i64 %t93, i64 %t94)
  store i1 %t95, ptr %l58
  br label %bb21
bb21:
  %t96 = load i1, ptr %l58, !tbaa !21
  %t97 = xor i1 %t96, true
  store i1 %t97, ptr %l47, !tbaa !21
  br label %bb22
bb22:
  %t99 = load i1, ptr %l47, !tbaa !21
  br i1 %t99, label %bb23, label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t101 = load i64, ptr %l7, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l7, !tbaa !24
  br label %bb12
bb27:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca { i64, [4 x i64] }
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca { i64, [1 x i64] }
  %l24 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 10
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t11 = load { i64, [4 x i64] }, ptr %l1
  store { i64, [4 x i64] } %t11, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t20 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %t13, ptr %t14, i32 %t16)
  store i1 %t20, ptr %l15
  br label %bb7
bb7:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb8, label %bb9
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load { i64, [4 x i64] }, ptr %l1
  store { i64, [4 x i64] } %t23, ptr %l17
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t24)
  store i32 %t26, ptr %l19
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t27 = load i32, ptr %l3, !tbaa !23
  store i32 %t27, ptr %l20, !tbaa !23
  store %"compiler/source:Span" %a4, ptr %l21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %t29)
  store { i64, [1 x i64] } %t31, ptr %l23
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t33 = load { i64, [4 x i64] }, ptr %l17
  %t34 = load i32, ptr %l19, !tbaa !23
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = load %"compiler/source:Span", ptr %l21
  %t37 = load { i64, [1 x i64] }, ptr %l23
  %t38 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %t32, { i64, [4 x i64] } %t33, i32 %t34, i32 %t35, %"compiler/source:Span" %t36, { i64, [1 x i64] } %t37)
  store { i64, [4 x i64] } %t38, ptr %l24
  br label %bb12
bb12:
  %t39 = load { i64, [4 x i64] }, ptr %l24
  store { i64, [4 x i64] } %t39, ptr %rv
  br label %ret
bb13:
  %t40 = load { i64, [4 x i64] }, ptr %l1
  store { i64, [4 x i64] } %t40, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efitAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca ptr
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca { i64, [4 x i64] }
  %l11 = alloca i1
  %l13 = alloca ptr
  %l17 = alloca { i64, [4 x i64] }
  %l21 = alloca ptr
  %l22 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l28 = alloca { i64, [4 x i64] }
  %l32 = alloca { i64, [4 x i64] }
  %l35 = alloca i1
  %l40 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca { i64, [4 x i64] }
  %l46 = alloca i32
  %l50 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t25 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidens(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i32 %t3)
  store i1 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i1, ptr %l11, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call ptr @compiler_2flower_2econvertArg(ptr %v1, ptr %v1, ptr %t9)
  store ptr %t11, ptr %l13
  br label %bb4
bb3:
  br label %bb11
bb4:
  %t12 = load ptr, ptr %l13, !tbaa !29
  store ptr %t12, ptr %l5, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t18 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t13, ptr %t14)
  store { i64, [4 x i64] } %t18, ptr %l17
  br label %bb5
bb5:
  %t19 = load { i64, [4 x i64] }, ptr %l17
  store { i64, [4 x i64] } %t19, ptr %l6
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 10
  %t23 = load i1, ptr %t22, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store { i64, [4 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t27 = load { i64, [4 x i64] }, ptr %t25
  store { i64, [4 x i64] } %t27, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l21, !tbaa !29
  %t30 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [4 x i64] } %t30, ptr %l22
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t31)
  store i32 %t33, ptr %l24
  br label %bb9
bb9:
  %t34 = load i32, ptr %l2, !tbaa !23
  %t35 = load %"compiler/source:Span", ptr %l3
  %t36 = load { i64, [1 x i64] }, ptr %l4
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t38 = load { i64, [4 x i64] }, ptr %l22
  %t39 = load i32, ptr %l24, !tbaa !23
  %t43 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %t37, { i64, [4 x i64] } %t38, i32 %t39, i32 %t34, %"compiler/source:Span" %t35, { i64, [1 x i64] } %t36)
  store { i64, [4 x i64] } %t43, ptr %l28
  br label %bb10
bb10:
  %t44 = load { i64, [4 x i64] }, ptr %l28
  store { i64, [4 x i64] } %t44, ptr %rv
  br label %ret
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t50 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store { i64, [4 x i64] } %t50, ptr %l32
  br label %bb12
bb12:
  %t51 = load { i64, [4 x i64] }, ptr %l32
  store { i64, [4 x i64] } %t51, ptr %l7
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:lowering", ptr %t52, i32 0, i32 10
  %t55 = load i1, ptr %t54, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb16
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = load i32, ptr %l2, !tbaa !23
  %t64 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %t57, ptr %t58, i32 %t60)
  store i1 %t64, ptr %l40
  br label %bb15
bb15:
  %t65 = load i1, ptr %l40, !tbaa !21
  %t66 = xor i1 %t65, true
  store i1 %t66, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t68 = load i1, ptr %l35, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t69 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t69, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l43, !tbaa !29
  %t72 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t72, ptr %l44
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t73)
  store i32 %t75, ptr %l46
  br label %bb20
bb20:
  %t76 = load i32, ptr %l2, !tbaa !23
  %t77 = load %"compiler/source:Span", ptr %l3
  %t78 = load { i64, [1 x i64] }, ptr %l4
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load { i64, [4 x i64] }, ptr %l44
  %t81 = load i32, ptr %l46, !tbaa !23
  %t85 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %t79, { i64, [4 x i64] } %t80, i32 %t81, i32 %t76, %"compiler/source:Span" %t77, { i64, [1 x i64] } %t78)
  store { i64, [4 x i64] } %t85, ptr %l50
  br label %bb21
bb21:
  %t86 = load { i64, [4 x i64] }, ptr %l50
  store { i64, [4 x i64] } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eglobalHeld(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l32 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca %"compiler/lower:pl"
  %l41 = alloca %"compiler/mir:Lvalue"
  %l45 = alloca { i64, [4 x i64] }
  %s1 = alloca %olang.scope
  %t66 = alloca { i64, [2 x i64] }, align 8
  %t82 = alloca { i64, [15 x i64] }, align 8
  %t99 = alloca { i64, [1 x i64] }, align 8
  %t104 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t24, i32 0, i32 3
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb19
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb10
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:lowering", ptr %t37, i32 0, i32 2
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  %t44 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l26
  br label %bb9
bb9:
  %t45 = load i1, ptr %l26, !tbaa !21
  %t46 = xor i1 %t45, true
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t48 = load i1, ptr %l22, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lower:lowering", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i32, ptr %l3, !tbaa !23
  %t54 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t52, i32 %t53, i64 %t54)
  store i32 %t58, ptr %l32
  br label %bb14
bb14:
  %t59 = load i32, ptr %l32, !tbaa !23
  store i32 %t59, ptr %l6, !tbaa !23
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load i32, ptr %l6, !tbaa !23
  store i32 %t61, ptr %l34, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l35, !tbaa !29
  %t63 = load i64, ptr %l4, !tbaa !24
  %t64 = load i32, ptr %l5, !tbaa !23
  %t65 = load i32, ptr %l3, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 0
  store i64 2, ptr %t67
  %t69 = insertvalue { i64, i32, i32 } undef, i64 %t63, 0
  %t71 = insertvalue { i64, i32, i32 } %t69, i32 %t64, 1
  %t73 = insertvalue { i64, i32, i32 } %t71, i32 %t65, 2
  %t74 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 1
  store { i64, i32, i32 } %t73, ptr %t74
  %t75 = load { i64, [2 x i64] }, ptr %t66
  %t77 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s1, { i64, [2 x i64] } %t75)
  store %"compiler/lower:pl" %t77, ptr %l40
  br label %bb15
bb15:
  %t78 = load ptr, ptr %l35, !tbaa !29
  %t79 = load %"compiler/lower:pl", ptr %l40
  %t80 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t78, %"compiler/lower:pl" %t79)
  store %"compiler/mir:Lvalue" %t80, ptr %l41
  br label %bb16
bb16:
  %t81 = load i32, ptr %l6, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t82
  %t83 = getelementptr { i64, [15 x i64] }, ptr %t82, i32 0, i32 0
  store i64 1, ptr %t83
  %t84 = load %"compiler/mir:Lvalue", ptr %l41
  %t85 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t84, 0
  %t87 = insertvalue { %"compiler/mir:Lvalue", i32 } %t85, i32 %t81, 1
  %t88 = getelementptr { i64, [15 x i64] }, ptr %t82, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t87, ptr %t88
  %t89 = load { i64, [15 x i64] }, ptr %t82
  %t90 = load %"compiler/source:Span", ptr %l1
  %t91 = load ptr, ptr %l33, !tbaa !29
  %t92 = load i32, ptr %l34, !tbaa !23
  %t95 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t91, i32 %t92, { i64, [15 x i64] } %t89, %"compiler/source:Span" %t90)
  store { i64, [4 x i64] } %t95, ptr %l45
  br label %bb17
bb17:
  %t96 = load { i64, [4 x i64] }, ptr %l45
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l1
  store { i64, [1 x i64] } zeroinitializer, ptr %t99
  %t100 = getelementptr { i64, [1 x i64] }, ptr %t99, i32 0, i32 0
  store i64 2, ptr %t100
  %t101 = load { i64, [1 x i64] }, ptr %t99
  %t102 = load i32, ptr %l3, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [21 x i64] }, ptr %t104, i32 0, i32 0
  store i64 5, ptr %t105
  %t107 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t98, 0
  %t109 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t107, { i64, [1 x i64] } %t101, 1
  %t111 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t109, i32 %t102, 2
  %t113 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t111, { i64, [4 x i64] } %t96, 3
  %t114 = getelementptr { i64, [21 x i64] }, ptr %t104, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t113, ptr %t114
  %t115 = load { i64, [21 x i64] }, ptr %t104
  %t117 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 176, i64 8)
  store { i64, [21 x i64] } %t115, ptr %t117
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s1, ptr %t97, ptr %t117)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s1)
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_bfe26d98742a613d_748d632e2c99f8e9)
  unreachable
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardIf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [1 x i64] }
  %l21 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l29 = alloca i1
  %l37 = alloca i32
  %l38 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca i32
  %l43 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca ptr
  %l49 = alloca %"compiler/lower:pl"
  %l51 = alloca %"compiler/lower:pl"
  %l52 = alloca %"compiler/mir:Lvalue"
  %l56 = alloca { i64, [4 x i64] }
  %l57 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca ptr
  %l63 = alloca %"compiler/lower:pl"
  %l65 = alloca %"compiler/lower:pl"
  %l66 = alloca %"compiler/mir:Lvalue"
  %l70 = alloca { i64, [4 x i64] }
  %l73 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca i32
  %l77 = alloca ptr
  %l78 = alloca i32
  %l79 = alloca i32
  %l84 = alloca { i64, ptr }
  %l85 = alloca %"compiler/mir:Range"
  %l88 = alloca { i64, [4 x i64] }
  %l90 = alloca { i64, [1 x i64] }
  %l91 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca { i64, [1 x i64] }
  %l97 = alloca { i64, [4 x i64] }
  %l101 = alloca i32
  %l104 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %t81 = alloca { i64, [15 x i64] }, align 8
  %t111 = alloca { i64, [15 x i64] }, align 8
  %t162 = alloca { i64, [15 x i64] }, align 8
  %t199 = alloca { i64, [15 x i64] }, align 8
  %t221 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:If", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Block", ptr %t4, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/typed:If", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = call ptr @compiler_2flower_2ereadLocalPlace(ptr %v1, ptr %v1, ptr %t16)
  store ptr %t18, ptr %l21
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l21, !tbaa !29
  store ptr %t19, ptr %l3, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/typed:If", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Block", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l24, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 0
  %t30 = load ptr, ptr %t29, !tbaa !39
  %t32 = call ptr @compiler_2flower_2edroppedPlace(ptr %v1, ptr %v1, ptr %t30)
  store ptr %t32, ptr %l26
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l26, !tbaa !29
  store ptr %t33, ptr %l4, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb8
bb7:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb8
bb8:
  %t42 = load i1, ptr %l29, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 2
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l5, !tbaa !29
  %t48 = load ptr, ptr %l5, !tbaa !29
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t50 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t48, i32 %t49, i64 %t50)
  store i32 %t54, ptr %l37
  br label %bb12
bb12:
  %t55 = load i32, ptr %l37, !tbaa !23
  store i32 %t55, ptr %l6, !tbaa !23
  %t56 = load ptr, ptr %l5, !tbaa !29
  store ptr %t56, ptr %l38, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t57)
  store i32 %t59, ptr %l40
  br label %bb13
bb13:
  %t60 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t61 = load ptr, ptr %l38, !tbaa !29
  %t62 = load i32, ptr %l40, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t61, i32 %t62, i64 %t60)
  store i32 %t64, ptr %l42
  br label %bb14
bb14:
  %t65 = load i32, ptr %l42, !tbaa !23
  store i32 %t65, ptr %l7, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l43, !tbaa !29
  %t67 = load i32, ptr %l6, !tbaa !23
  store i32 %t67, ptr %l44, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l45, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t74 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t69, ptr %t70)
  store %"compiler/lower:pl" %t74, ptr %l49
  br label %bb15
bb15:
  %t76 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l49)
  store %"compiler/lower:pl" %t76, ptr %l51
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l45, !tbaa !29
  %t78 = load %"compiler/lower:pl", ptr %l51
  %t79 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v0, ptr %t77, %"compiler/lower:pl" %t78)
  store %"compiler/mir:Lvalue" %t79, ptr %l52
  br label %bb17
bb17:
  %t80 = load i32, ptr %l6, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [15 x i64] }, ptr %t81, i32 0, i32 0
  store i64 1, ptr %t82
  %t83 = load %"compiler/mir:Lvalue", ptr %l52
  %t84 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t83, 0
  %t86 = insertvalue { %"compiler/mir:Lvalue", i32 } %t84, i32 %t80, 1
  %t87 = getelementptr { i64, [15 x i64] }, ptr %t81, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t86, ptr %t87
  %t88 = load { i64, [15 x i64] }, ptr %t81
  %t89 = load %"compiler/source:Span", ptr %l1
  %t90 = load ptr, ptr %l43, !tbaa !29
  %t91 = load i32, ptr %l44, !tbaa !23
  %t94 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t90, i32 %t91, { i64, [15 x i64] } %t88, %"compiler/source:Span" %t89)
  store { i64, [4 x i64] } %t94, ptr %l56
  br label %bb18
bb18:
  %t95 = load { i64, [4 x i64] }, ptr %l56
  store { i64, [4 x i64] } %t95, ptr %l8
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l57, !tbaa !29
  %t97 = load i32, ptr %l7, !tbaa !23
  store i32 %t97, ptr %l58, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l59, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t104 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t99, ptr %t100)
  store %"compiler/lower:pl" %t104, ptr %l63
  br label %bb19
bb19:
  %t106 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l63)
  store %"compiler/lower:pl" %t106, ptr %l65
  br label %bb20
bb20:
  %t107 = load ptr, ptr %l59, !tbaa !29
  %t108 = load %"compiler/lower:pl", ptr %l65
  %t109 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v0, ptr %t107, %"compiler/lower:pl" %t108)
  store %"compiler/mir:Lvalue" %t109, ptr %l66
  br label %bb21
bb21:
  %t110 = load i32, ptr %l7, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [15 x i64] }, ptr %t111, i32 0, i32 0
  store i64 1, ptr %t112
  %t113 = load %"compiler/mir:Lvalue", ptr %l66
  %t114 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t113, 0
  %t116 = insertvalue { %"compiler/mir:Lvalue", i32 } %t114, i32 %t110, 1
  %t117 = getelementptr { i64, [15 x i64] }, ptr %t111, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t116, ptr %t117
  %t118 = load { i64, [15 x i64] }, ptr %t111
  %t119 = load %"compiler/source:Span", ptr %l1
  %t120 = load ptr, ptr %l57, !tbaa !29
  %t121 = load i32, ptr %l58, !tbaa !23
  %t124 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t120, i32 %t121, { i64, [15 x i64] } %t118, %"compiler/source:Span" %t119)
  store { i64, [4 x i64] } %t124, ptr %l70
  br label %bb22
bb22:
  %t125 = load { i64, [4 x i64] }, ptr %l70
  store { i64, [4 x i64] } %t125, ptr %l9
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/lower:lowering", ptr %t126, i32 0, i32 10
  %t129 = load i1, ptr %t128, !tbaa !21
  br i1 %t129, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t131 = load ptr, ptr %l5, !tbaa !29
  store ptr %t131, ptr %l73, !tbaa !29
  %t132 = load ptr, ptr %l4, !tbaa !29
  %t134 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t132)
  store i32 %t134, ptr %l75
  br label %bb26
bb26:
  %t135 = load ptr, ptr %l73, !tbaa !29
  %t136 = load i32, ptr %l75, !tbaa !23
  %t137 = call i32 @compiler_2fmir_2eGuardType(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t137, ptr %l76
  br label %bb27
bb27:
  %t138 = load i32, ptr %l76, !tbaa !23
  store i32 %t138, ptr %l10, !tbaa !23
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l77, !tbaa !29
  %t140 = load i32, ptr %l10, !tbaa !23
  store i32 %t140, ptr %l78, !tbaa !23
  %t141 = load i32, ptr %l10, !tbaa !23
  store i32 %t141, ptr %l79, !tbaa !23
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/lower:lowering", ptr %t142, i32 0, i32 3
  %t145 = load { i64, [4 x i64] }, ptr %l8
  %t146 = load { i64, [4 x i64] }, ptr %l9
  %t147 = mul i64 2, 40
  %t148 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 2, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l84, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t153, i64 0
  store { i64, [4 x i64] } %t145, ptr %t154
  %t156 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, [4 x i64] }, ptr %t157, i64 1
  store { i64, [4 x i64] } %t146, ptr %t158
  %t160 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t161 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t144, { i64, ptr } %t160)
  store %"compiler/mir:Range" %t161, ptr %l85
  br label %bb28
bb28:
  store { i64, [15 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [15 x i64] }, ptr %t162, i32 0, i32 0
  store i64 6, ptr %t163
  %t164 = load i32, ptr %l79, !tbaa !23
  %t165 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t164, 0
  %t166 = insertvalue { i32, i64, %"compiler/mir:Range" } %t165, i64 0, 1
  %t167 = load %"compiler/mir:Range", ptr %l85
  %t168 = insertvalue { i32, i64, %"compiler/mir:Range" } %t166, %"compiler/mir:Range" %t167, 2
  %t169 = getelementptr { i64, [15 x i64] }, ptr %t162, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t168, ptr %t169
  %t170 = load { i64, [15 x i64] }, ptr %t162
  %t171 = load %"compiler/source:Span", ptr %l1
  %t172 = load ptr, ptr %l77, !tbaa !29
  %t173 = load i32, ptr %l78, !tbaa !23
  %t176 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t172, i32 %t173, { i64, [15 x i64] } %t170, %"compiler/source:Span" %t171)
  store { i64, [4 x i64] } %t176, ptr %l88
  br label %bb29
bb29:
  %t177 = load { i64, [4 x i64] }, ptr %l88
  store { i64, [4 x i64] } %t177, ptr %l11
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %t178)
  store { i64, [1 x i64] } %t180, ptr %l90
  br label %bb30
bb30:
  %t181 = load { i64, [1 x i64] }, ptr %l90
  store { i64, [1 x i64] } %t181, ptr %l12
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l91, !tbaa !29
  %t183 = load ptr, ptr %l5, !tbaa !29
  %t184 = load i32, ptr %l10, !tbaa !23
  %t185 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t183, i32 %t184, i64 %t185)
  store i32 %t189, ptr %l95
  br label %bb31
bb31:
  %t190 = load { i64, [1 x i64] }, ptr %l12
  store { i64, [1 x i64] } %t190, ptr %l96
  %t191 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t191, ptr %l97
  %t192 = load ptr, ptr %l5, !tbaa !29
  %t193 = load i32, ptr %l10, !tbaa !23
  %t194 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t192, i32 %t193, i64 %t194)
  store i32 %t198, ptr %l101
  br label %bb32
bb32:
  store { i64, [15 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [15 x i64] }, ptr %t199, i32 0, i32 0
  store i64 7, ptr %t200
  %t201 = load { i64, [1 x i64] }, ptr %l96
  %t202 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t201, 0
  %t203 = load { i64, [4 x i64] }, ptr %l97
  %t204 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t202, { i64, [4 x i64] } %t203, 1
  %t205 = load i32, ptr %l101, !tbaa !23
  %t206 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t204, i32 %t205, 2
  %t207 = getelementptr { i64, [15 x i64] }, ptr %t199, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t206, ptr %t207
  %t208 = load { i64, [15 x i64] }, ptr %t199
  %t209 = load %"compiler/source:Span", ptr %l1
  %t210 = load ptr, ptr %l91, !tbaa !29
  %t211 = load i32, ptr %l95, !tbaa !23
  %t214 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t210, i32 %t211, { i64, [15 x i64] } %t208, %"compiler/source:Span" %t209)
  store { i64, [4 x i64] } %t214, ptr %l104
  br label %bb33
bb33:
  %t215 = load { i64, [4 x i64] }, ptr %l104
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l1
  %t218 = load { i64, [1 x i64] }, ptr %l12
  %t219 = load i32, ptr %l10, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t221
  %t222 = getelementptr { i64, [21 x i64] }, ptr %t221, i32 0, i32 0
  store i64 5, ptr %t222
  %t224 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t217, 0
  %t226 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t224, { i64, [1 x i64] } %t218, 1
  %t228 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t226, i32 %t219, 2
  %t230 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t228, { i64, [4 x i64] } %t215, 3
  %t231 = getelementptr { i64, [21 x i64] }, ptr %t221, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t230, ptr %t231
  %t232 = load { i64, [21 x i64] }, ptr %t221
  %t234 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t232, ptr %t234
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t216, ptr %t234)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldUnchanged(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/typed:Local"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca %"compiler/typed:Local"
  %l17 = alloca i1
  %l22 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l76 = alloca i64
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
  store %"compiler/typed:Local" %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load %"compiler/typed:Local", ptr %l14
  store %"compiler/typed:Local" %t11, ptr %l3
  %t12 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 7}
  %t15 = trunc i64 5 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 3
  %t20 = load i32, ptr %t19, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 53
  %t24 = load i32, ptr %t23, !tbaa !23
  %t28 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eencloses(ptr %v0, ptr %t18, i32 %t20, i32 %t24)
  store i1 %t28, ptr %l22
  br label %bb4
bb4:
  %t29 = load i1, ptr %l22, !tbaa !21
  %t30 = xor i1 %t29, true
  store i1 %t30, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t32 = load i1, ptr %l17, !tbaa !21
  br i1 %t32, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:LocalUses", ptr %t34, i32 0, i32 2
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t36, i64 %t37)
  store i1 %t40, ptr %l28
  br label %bb9
bb9:
  %t41 = load i1, ptr %l28, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb13
bb11:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/typed:LocalUses", ptr %t42, i32 0, i32 4
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l33
  br label %bb12
bb12:
  %t49 = load i1, ptr %l33, !tbaa !21
  store i1 %t49, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t50 = load i1, ptr %l29, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb17
bb15:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t53 = load i64, ptr %l2, !tbaa !24
  %t57 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eescapes(ptr %v0, ptr %v1, ptr %t51, ptr %t52, i64 %t53)
  store i1 %t57, ptr %l38
  br label %bb16
bb16:
  %t58 = load i1, ptr %l38, !tbaa !21
  store i1 %t58, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l34, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb21
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t62 = load i64, ptr %l2, !tbaa !24
  %t66 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %t60, ptr %t61, i64 %t62)
  store i1 %t66, ptr %l43
  br label %bb20
bb20:
  %t67 = load i1, ptr %l43, !tbaa !21
  %t68 = xor i1 %t67, true
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb21
bb21:
  %t70 = load i1, ptr %l39, !tbaa !21
  br i1 %t70, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  store i64 0, ptr %l4, !tbaa !24
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/typed:LocalUses", ptr %t72, i32 0, i32 10
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t74)
  store i64 %t76, ptr %l48
  br label %bb25
bb25:
  %t77 = load i64, ptr %l48, !tbaa !24
  store i64 %t77, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb31
bb28:
  %t88 = load i64, ptr %l5, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l6, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l55, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb30
bb30:
  %t104 = load i64, ptr %l55, !tbaa !24
  store i64 %t104, ptr %l52, !tbaa !24
  br label %bb31
bb31:
  %t105 = load i64, ptr %l52, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb32
bb32:
  %t106 = load i64, ptr %l8, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  br label %bb35
bb35:
  %t114 = load i64, ptr %l4, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l6, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/typed:LocalUses", ptr %t124, i32 0, i32 10
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t126, i64 %t122)
  store i64 %t130, ptr %l76
  br label %bb36
bb36:
  %t131 = load i64, ptr %l2, !tbaa !24
  %t132 = load i64, ptr %l76, !tbaa !24
  %t134 = icmp eq i64 %t132, %t131
  br i1 %t134, label %bb37, label %bb38
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l8, !tbaa !24
  br label %bb32
bb41:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eifStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l19 = alloca i32
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca ptr
  %s0 = alloca %olang.scope
  %t32 = alloca { i64, [8 x i64] }, align 8
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
  %t4 = getelementptr %"compiler/typed:If", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store { i64, [4 x i64] } %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t10, ptr %l3
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 10
  %t14 = load i1, ptr %t13, !tbaa !21
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
  store i32 %t21, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 3
  %t26 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l19
  br label %bb6
bb6:
  %t27 = load i32, ptr %l19, !tbaa !23
  store i32 %t27, ptr %l5, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load { i64, [4 x i64] }, ptr %l3
  %t30 = load i32, ptr %l4, !tbaa !23
  %t31 = load i32, ptr %l5, !tbaa !23
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
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l25
  br label %bb8
bb8:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l6
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t46, i32 %t47)
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/typed:If", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %t50, ptr %t54)
  br label %bb10
bb10:
  %t57 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t57, ptr %l6)
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t60, i32 %t61)
  br label %bb12
bb12:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/typed:If", ptr %t64, i32 0, i32 2
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb13, label %bb14
bb13:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l39, !tbaa !29
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/typed:If", ptr %t74, i32 0, i32 2
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  br i1 %t79, label %bb15, label %bb16
bb14:
  br label %bb19
bb15:
  call void @__olang_check_failed(ptr @olang_loc_64d900b05c2c7f2b_3f776bda77e5f7cf)
  unreachable
bb16:
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"compiler/typed:If", ptr %t81, i32 0, i32 2
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %t85, ptr %t84)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t87, ptr %l6)
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t90, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eimmutableGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t13 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t7, i64 %a1, i32 %a2)
  store ptr %t13, ptr %l9
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l9, !tbaa !29
  store ptr %t14, ptr %l3, !tbaa !29
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/ast:VarDecl", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t24)
  store i1 %t26, ptr %l16
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  %t27 = load i1, ptr %l16, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t30 = load i1, ptr %l13, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca { i64, [4 x i64] }
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i32 5, ptr %l5
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t2, ptr %l6, !tbaa !23
  store { i64, [4 x i64] } %a1, ptr %l7
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t4, i64 -7046029254386353131)
  store { i64, [4 x i64] } %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = mul i64 2, 40
  %t8 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 2, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l10, !tbaa !27
  %t11 = load { i64, [4 x i64] }, ptr %l7
  %t12 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t13, i64 0
  store { i64, [4 x i64] } %t11, ptr %t14
  %t15 = load { i64, [4 x i64] }, ptr %l9
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t17, i64 1
  store { i64, [4 x i64] } %t15, ptr %t18
  %t19 = load %"compiler/source:Span", ptr %l2
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t21 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t22 = load i32, ptr %l6, !tbaa !23
  %t23 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t25 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t20, i32 %t21, i32 %t22, { i64, ptr } %t23, %"compiler/source:Span" %t19)
  store { i64, [4 x i64] } %t25, ptr %l12
  br label %bb2
bb2:
  %t26 = load { i64, [4 x i64] }, ptr %l12
  store { i64, [4 x i64] } %t26, ptr %l3
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l13, !tbaa !29
  store i32 12, ptr %l14
  %t28 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t28, ptr %l15, !tbaa !23
  %t29 = load { i64, [4 x i64] }, ptr %l3
  store { i64, [4 x i64] } %t29, ptr %l16
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  store i32 9, ptr %l18
  %t31 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t31, ptr %l19, !tbaa !23
  %t32 = load { i64, [4 x i64] }, ptr %l3
  store { i64, [4 x i64] } %t32, ptr %l20
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t33, i64 29)
  store { i64, [4 x i64] } %t35, ptr %l22
  br label %bb3
bb3:
  %t36 = mul i64 2, 40
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 2, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l23, !tbaa !27
  %t40 = load { i64, [4 x i64] }, ptr %l20
  %t41 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t42, i64 0
  store { i64, [4 x i64] } %t40, ptr %t43
  %t44 = load { i64, [4 x i64] }, ptr %l22
  %t45 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t46, i64 1
  store { i64, [4 x i64] } %t44, ptr %t47
  %t48 = load %"compiler/source:Span", ptr %l2
  %t49 = load ptr, ptr %l17, !tbaa !29
  %t50 = load i32, ptr %l18, !range !{i32 0, i32 52}
  %t51 = load i32, ptr %l19, !tbaa !23
  %t52 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t54 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t49, i32 %t50, i32 %t51, { i64, ptr } %t52, %"compiler/source:Span" %t48)
  store { i64, [4 x i64] } %t54, ptr %l25
  br label %bb4
bb4:
  %t55 = mul i64 2, 40
  %t56 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t55)
  %t57 = insertvalue { i64, ptr } undef, i64 2, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l26, !tbaa !27
  %t59 = load { i64, [4 x i64] }, ptr %l16
  %t60 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t61, i64 0
  store { i64, [4 x i64] } %t59, ptr %t62
  %t63 = load { i64, [4 x i64] }, ptr %l25
  %t64 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t65, i64 1
  store { i64, [4 x i64] } %t63, ptr %t66
  %t67 = load %"compiler/source:Span", ptr %l2
  %t68 = load ptr, ptr %l13, !tbaa !29
  %t69 = load i32, ptr %l14, !range !{i32 0, i32 52}
  %t70 = load i32, ptr %l15, !tbaa !23
  %t71 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t73 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t68, i32 %t69, i32 %t70, { i64, ptr } %t71, %"compiler/source:Span" %t67)
  store { i64, [4 x i64] } %t73, ptr %l28
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t74 = load { i64, [4 x i64] }, ptr %l28
  store { i64, [4 x i64] } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3, ptr %a4c, ptr %a4e) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
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
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l36 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l75 = alloca i64
  %l79 = alloca i32
  %l81 = alloca i64
  %l82 = alloca %"compiler/mir:Case"
  %l84 = alloca %"compiler/mir:Case"
  %l89 = alloca i64
  %l94 = alloca i64
  %l98 = alloca i64
  %l101 = alloca i64
  %l119 = alloca i64
  %l122 = alloca i32
  %l123 = alloca i64
  %l126 = alloca i64
  %l129 = alloca %"compiler/mir:Case"
  %l132 = alloca ptr
  %l133 = alloca { i64, [4 x i64] }
  %l137 = alloca %"compiler/mir:Range"
  %l141 = alloca i64
  %l145 = alloca i64
  %l148 = alloca i64
  %l169 = alloca { ptr, ptr }
  %l172 = alloca i64
  %l173 = alloca { i64, ptr }
  %l176 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t125 = alloca i64
  %t243 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l8, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l8, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l36, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l36, !tbaa !24
  store i64 %t33, ptr %l33, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l33, !tbaa !24
  store i64 %t34, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l10, !tbaa !24
  %t36 = load i64, ptr %l9, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l10, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l11, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t53, ptr %l54, !tbaa !27
  %t54 = load i64, ptr %l11, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 %t54
  %t59 = load i32, ptr %t58, !tbaa !33
  %t61 = icmp ne i32 %t59, 0
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l60, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lower:lowering", ptr %t67, i32 0, i32 2
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t71, ptr %l63, !tbaa !27
  %t72 = load i64, ptr %l11, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i32, ptr %t75, i64 %t72
  %t77 = load i32, ptr %t76, !tbaa !33
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t70, i32 %t77)
  store i32 %t80, ptr %l66
  br label %bb14
bb13:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb16
bb14:
  %t81 = load ptr, ptr %l60, !tbaa !29
  %t82 = load i32, ptr %l66, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l67
  br label %bb15
bb15:
  %t84 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t87 = icmp sgt i64 %t85, 0
  store i1 %t87, ptr %l58, !tbaa !21
  br label %bb16
bb16:
  %t89 = load i1, ptr %l58, !tbaa !21
  br i1 %t89, label %bb17, label %bb18
bb17:
  %t90 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t90)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l10, !tbaa !24
  br label %bb8
bb22:
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t98, ptr %l75
  br label %bb23
bb23:
  %t99 = load i64, ptr %l75, !tbaa !24
  %t100 = icmp eq i64 %t99, 0
  br i1 %t100, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 3
  %t106 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t104)
  store i32 %t106, ptr %l79
  br label %bb27
bb27:
  %t107 = load i32, ptr %l79, !tbaa !23
  store i32 %t107, ptr %l12, !tbaa !23
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t109, ptr %l81
  br label %bb28
bb28:
  store %"compiler/mir:Case" zeroinitializer, ptr %l82
  %t110 = load i64, ptr %l81, !tbaa !24
  %t111 = icmp sgt i64 %t110, 0
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t113 = call %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %s0, i64 0, i32 0)
  store %"compiler/mir:Case" %t113, ptr %l84
  br label %bb31
bb30:
  %t114 = load i64, ptr %l81, !tbaa !24
  %t115 = icmp sge i64 %t114, 0
  br i1 %t115, label %bb32, label %bb33
bb31:
  %t117 = load %"compiler/mir:Case", ptr %l84
  store %"compiler/mir:Case" %t117, ptr %l82
  br label %bb30
bb32:
  %t118 = load i64, ptr %l81, !tbaa !24
  %t119 = icmp sle i64 %t118, 576460752303423487
  br i1 %t119, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_f77986af895aed4f_f84e497584b75763)
  unreachable
bb34:
  %t121 = load i64, ptr %l81, !tbaa !24
  %t122 = mul i64 %t121, 16
  %t123 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t122)
  %t124 = load %"compiler/mir:Case", ptr %l82
  store i64 0, ptr %t125
  br label %fill.126
fill.126:
  %t129 = load i64, ptr %t125
  %t130 = icmp slt i64 %t129, %t121
  br i1 %t130, label %fillb.127, label %filld.128
fillb.127:
  %t131 = getelementptr %"compiler/mir:Case", ptr %t123, i64 %t129
  store %"compiler/mir:Case" %t124, ptr %t131
  %t132 = add i64 %t129, 1
  store i64 %t132, ptr %t125
  br label %fill.126
filld.128:
  %t133 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t123, 1
  store { i64, ptr } %t134, ptr %l13, !tbaa !27
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t137, ptr %l89
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_f77986af895aed4f_f84e497584b75763)
  unreachable
bb36:
  %t138 = load i64, ptr %l89, !tbaa !24
  %t139 = icmp sge i64 %t138, 0
  br i1 %t139, label %bb37, label %bb38
bb37:
  %t141 = load i64, ptr %l89, !tbaa !24
  %t142 = icmp sle i64 %t141, 2305843009213693951
  br i1 %t142, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_4d7f91a5420115fa_db913b05a0de57ee)
  unreachable
bb39:
  %t144 = load i64, ptr %l89, !tbaa !24
  %t145 = mul i64 %t144, 4
  %t146 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t151 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t151, ptr %l94
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_4d7f91a5420115fa_db913b05a0de57ee)
  unreachable
bb41:
  %t152 = load i64, ptr %l94, !tbaa !24
  store i64 %t152, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t153 = load i64, ptr %l16, !tbaa !24
  %t154 = load i64, ptr %l15, !tbaa !24
  %t157 = icmp sgt i64 %t153, %t154
  br i1 %t157, label %bb42, label %bb43
bb42:
  %t159 = load i64, ptr %l17, !tbaa !24
  %t161 = icmp sgt i64 %t159, 0
  br i1 %t161, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb47
bb44:
  %t163 = load i64, ptr %l16, !tbaa !24
  %t164 = load i64, ptr %l15, !tbaa !24
  %t167 = sub i64 %t163, %t164
  %t168 = load i64, ptr %l17, !tbaa !24
  %t171 = add i64 %t167, %t168
  %t173 = sub i64 %t171, 1
  %t174 = load i64, ptr %l17, !tbaa !24
  %t177 = sdiv i64 %t173, %t174
  store i64 %t177, ptr %l101, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb46
bb46:
  %t179 = load i64, ptr %l101, !tbaa !24
  store i64 %t179, ptr %l98, !tbaa !24
  br label %bb47
bb47:
  %t180 = load i64, ptr %l98, !tbaa !24
  store i64 %t180, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb48
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t181 = load i64, ptr %l19, !tbaa !24
  %t182 = load i64, ptr %l18, !tbaa !24
  %t185 = icmp slt i64 %t181, %t182
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s7)
  br label %bb56
bb50:
  br label %bb51
bb51:
  %t189 = load i64, ptr %l15, !tbaa !24
  %t190 = load i64, ptr %l19, !tbaa !24
  %t191 = load i64, ptr %l17, !tbaa !24
  %t194 = mul i64 %t190, %t191
  %t197 = add i64 %t189, %t194
  store i64 %t197, ptr %l20, !tbaa !24
  %t199 = load i64, ptr %l20, !tbaa !24
  store i64 %t199, ptr %l119, !tbaa !24
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/lower:lowering", ptr %t200, i32 0, i32 3
  %t204 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t202)
  store i32 %t204, ptr %l122
  br label %bb52
bb52:
  %t205 = load i32, ptr %l122, !tbaa !23
  %t206 = load i64, ptr %l119, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i32, ptr %t208, i64 %t206
  store i32 %t205, ptr %t209, !tbaa !33
  %t210 = load i64, ptr %l20, !tbaa !24
  store i64 %t210, ptr %l123, !tbaa !24
  %t211 = load i64, ptr %l20, !tbaa !24
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t211)
  store i64 %t214, ptr %l126
  br label %bb53
bb53:
  %t215 = load i64, ptr %l20, !tbaa !24
  %t217 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = getelementptr i32, ptr %t218, i64 %t215
  %t220 = load i32, ptr %t219, !tbaa !33
  %t221 = load i64, ptr %l126, !tbaa !24
  %t223 = call %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %s7, i64 %t221, i32 %t220)
  store %"compiler/mir:Case" %t223, ptr %l129
  br label %bb54
bb54:
  %t224 = load %"compiler/mir:Case", ptr %l129
  %t225 = load i64, ptr %l123, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr %"compiler/mir:Case", ptr %t227, i64 %t225
  store %"compiler/mir:Case" %t224, ptr %t228
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb55:
  %t229 = load i64, ptr %l19, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l19, !tbaa !24
  br label %bb48
bb56:
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l132, !tbaa !29
  store { i64, [4 x i64] } %a2, ptr %l133
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/lower:lowering", ptr %t235, i32 0, i32 3
  %t238 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t241 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %s0, ptr %t237, { i64, ptr } %t238)
  store %"compiler/mir:Range" %t241, ptr %l137
  br label %bb57
bb57:
  %t242 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t243
  %t244 = getelementptr { i64, [8 x i64] }, ptr %t243, i32 0, i32 0
  store i64 3, ptr %t244
  %t245 = load { i64, [4 x i64] }, ptr %l133
  %t246 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } undef, { i64, [4 x i64] } %t245, 0
  %t247 = load %"compiler/mir:Range", ptr %l137
  %t248 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t246, %"compiler/mir:Range" %t247, 1
  %t250 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t248, i32 %t242, 2
  %t251 = getelementptr { i64, [8 x i64] }, ptr %t243, i32 0, i32 1
  store { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t250, ptr %t251
  %t252 = load { i64, [8 x i64] }, ptr %t243
  %t253 = load ptr, ptr %l132, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t253, { i64, [8 x i64] } %t252)
  br label %bb58
bb58:
  store i64 0, ptr %l21, !tbaa !24
  %t256 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t256, ptr %l141
  br label %bb59
bb59:
  %t257 = load i64, ptr %l141, !tbaa !24
  store i64 %t257, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t258 = load i64, ptr %l22, !tbaa !24
  %t259 = load i64, ptr %l21, !tbaa !24
  %t262 = icmp sgt i64 %t258, %t259
  br i1 %t262, label %bb60, label %bb61
bb60:
  %t264 = load i64, ptr %l23, !tbaa !24
  %t266 = icmp sgt i64 %t264, 0
  br i1 %t266, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb65
bb62:
  %t268 = load i64, ptr %l22, !tbaa !24
  %t269 = load i64, ptr %l21, !tbaa !24
  %t272 = sub i64 %t268, %t269
  %t273 = load i64, ptr %l23, !tbaa !24
  %t276 = add i64 %t272, %t273
  %t278 = sub i64 %t276, 1
  %t279 = load i64, ptr %l23, !tbaa !24
  %t282 = sdiv i64 %t278, %t279
  store i64 %t282, ptr %l148, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb64
bb64:
  %t284 = load i64, ptr %l148, !tbaa !24
  store i64 %t284, ptr %l145, !tbaa !24
  br label %bb65
bb65:
  %t285 = load i64, ptr %l145, !tbaa !24
  store i64 %t285, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb66
bb66:
  %t286 = load i64, ptr %l25, !tbaa !24
  %t287 = load i64, ptr %l24, !tbaa !24
  %t290 = icmp slt i64 %t286, %t287
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb67, label %bb68
bb67:
  br label %bb76
bb68:
  br label %bb69
bb69:
  %t294 = load i64, ptr %l21, !tbaa !24
  %t295 = load i64, ptr %l25, !tbaa !24
  %t296 = load i64, ptr %l23, !tbaa !24
  %t299 = mul i64 %t295, %t296
  %t302 = add i64 %t294, %t299
  store i64 %t302, ptr %l26, !tbaa !24
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i64, ptr %l26, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i32, ptr %t308, i64 %t305
  %t310 = load i32, ptr %t309, !tbaa !33
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t304, i32 %t310)
  br label %bb70
bb70:
  store { ptr, ptr } %pg4, ptr %l169
  %t314 = load i64, ptr %l26, !tbaa !24
  %t317 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t314)
  store i64 %t317, ptr %l172
  br label %bb71
bb71:
  %t318 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t318, ptr %l173, !tbaa !27
  %t319 = load i64, ptr %l26, !tbaa !24
  %t322 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 %t319)
  store i64 %t322, ptr %l176
  br label %bb72
bb72:
  %t323 = load i64, ptr %l176, !tbaa !24
  %t324 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr i32, ptr %t325, i64 %t323
  %t327 = load i32, ptr %t326, !tbaa !33
  %t328 = load { ptr, ptr }, ptr %l169
  %t329 = extractvalue { ptr, ptr } %t328, 0
  %t330 = extractvalue { ptr, ptr } %t328, 1
  %t331 = load i64, ptr %l172, !tbaa !24
  call void %t329(ptr %t330, i64 %t331, i32 %t327)
  br label %bb73
bb73:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t333, i32 %t334)
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t337 = load i64, ptr %l25, !tbaa !24
  %t339 = add i64 %t337, 1
  store i64 %t339, ptr %l25, !tbaa !24
  br label %bb66
bb76:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t341, i32 %t342)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epieceView(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
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
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 4 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Make", ptr %t26, i32 0, i32 2
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t33 = icmp ne i64 %t31, 1
  store i1 %t33, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l13, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb11
bb10:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Make", ptr %t36, i32 0, i32 4
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = icmp slt i32 %t39, 0
  store i1 %t41, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l18, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %ret
bb13:
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Make", ptr %t45, i32 0, i32 2
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l24, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr ptr, ptr %t50, i64 0
  %t52 = load ptr, ptr %t51, !tbaa !39
  %t55 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t44, ptr %t52)
  store i1 %t55, ptr %l26
  br label %bb15
bb15:
  %t56 = load i1, ptr %l26, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/lower:lowering", ptr %t57, i32 0, i32 46
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Make", ptr %t60, i32 0, i32 4
  %t63 = load i32, ptr %t62, !tbaa !23
  %t65 = sext i32 %t63 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t59, i64 %t65, i1 true)
  br label %bb18
bb17:
  br label %bb19
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
  call void @__olang_check_failed(ptr @olang_loc_b2a01b2e57b362d2_f7d1a82b4b6250e6)
  unreachable
bb25:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, [4 x i64] } } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedInPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i32
  %l16 = alloca { i64, [1 x i64] }
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, [1 x i64] }
  %l33 = alloca ptr
  %l39 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l62 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l83 = alloca { i64, [1 x i64] }
  %l88 = alloca { i64, [4 x i64] }
  %l96 = alloca ptr
  %l97 = alloca i1
  %l111 = alloca i1
  %l116 = alloca i1
  %l128 = alloca ptr
  %l132 = alloca { i64, [1 x i64] }
  %l136 = alloca { i64, [4 x i64] }
  %l142 = alloca { i64, [4 x i64] }
  %l148 = alloca { i64, [4 x i64] }
  %l158 = alloca i32
  %l160 = alloca i1
  %l163 = alloca i1
  %l168 = alloca { i64, [4 x i64] }
  %l169 = alloca { i64, [4 x i64] }
  %l175 = alloca { i64, [4 x i64] }
  %l176 = alloca i32
  %rv = alloca { i32, { i64, [4 x i64] } }
  %t98 = alloca { i64, [4 x i64] }, align 8
  %t262 = alloca { i64, [1 x i64] }, align 8
  %t275 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Promote", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call ptr @compiler_2flower_2ecollectOf(ptr %v1, ptr %v1, ptr %t9)
  store ptr %t11, ptr %l33
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l33, !tbaa !29
  store ptr %t12, ptr %l6, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Promote", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l7, !tbaa !29
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Collect", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = icmp sge i32 %t27, 0
  store i1 %t29, ptr %l39, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb4
bb4:
  %t31 = load i1, ptr %l39, !tbaa !21
  br i1 %t31, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l7, !tbaa !29
  store ptr %t32, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t33 = load ptr, ptr %l43, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb7, label %bb8
bb6:
  br label %bb24
bb7:
  %t36 = load ptr, ptr %l43, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 12
  store i1 %t39, ptr %l44, !tbaa !21
  br label %bb8
bb8:
  %t40 = load i1, ptr %l44, !tbaa !21
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t41 = load ptr, ptr %l7, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l8
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 1
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l9, !tbaa !23
  %t53 = load ptr, ptr %l7, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  %t62 = getelementptr %"compiler/typed:Seq", ptr %t57, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l13, !tbaa !24
  br label %bb11
bb10:
  br label %bb21
bb11:
  %t69 = load i64, ptr %l12, !tbaa !24
  %t70 = load i64, ptr %l13, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t77 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t77, ptr %l62, !tbaa !27
  %t78 = load i64, ptr %l12, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 %t78
  %t83 = load ptr, ptr %t82, !tbaa !39
  %t85 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t85, ptr %t83)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t89 = load i64, ptr %l12, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l12, !tbaa !24
  br label %bb11
bb17:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 10
  %t96 = load i1, ptr %t95, !tbaa !21
  br i1 %t96, label %bb18, label %bb19
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 0
  store i64 0, ptr %t99
  %t100 = load { i64, [4 x i64] }, ptr %t98
  %t102 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, { i64, [4 x i64] } %t100, 1
  store { i32, { i64, [4 x i64] } } %t102, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/lower:lowering", ptr %t103, i32 0, i32 28
  %t106 = load i32, ptr %t105, !tbaa !23
  store i32 %t106, ptr %l15, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lower:lowering", ptr %t108, i32 0, i32 29
  %t111 = load { i64, [1 x i64] }, ptr %t110
  store { i64, [1 x i64] } %t111, ptr %l16
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Collect", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %t116, !tbaa !23
  %t120 = getelementptr %"compiler/lower:lowering", ptr %t113, i32 0, i32 28
  store i32 %t117, ptr %t120, !tbaa !23
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l79, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Promote", ptr %t123, i32 0, i32 1
  %t126 = load i32, ptr %t125, !tbaa !23
  %t129 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t122, i32 %t126)
  store { i64, [1 x i64] } %t129, ptr %l83
  br label %bb22
bb22:
  %t130 = load { i64, [1 x i64] }, ptr %l83
  %t131 = load ptr, ptr %l79, !tbaa !29
  %t132 = getelementptr %"compiler/lower:lowering", ptr %t131, i32 0, i32 29
  store { i64, [1 x i64] } %t130, ptr %t132
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l6, !tbaa !29
  %t135 = load i32, ptr %l2, !tbaa !23
  %t136 = load %"compiler/source:Span", ptr %l3
  %t141 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecollect(ptr %v0, ptr %v1, ptr %t133, ptr %t134, i32 %t135, %"compiler/source:Span" %t136)
  store { i64, [4 x i64] } %t141, ptr %l88
  br label %bb23
bb23:
  %t142 = load { i64, [4 x i64] }, ptr %l88
  %t143 = load i32, ptr %l15, !tbaa !23
  %t145 = load { i64, [1 x i64] }, ptr %l16
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/lower:lowering", ptr %t147, i32 0, i32 28
  store i32 %t143, ptr %t151, !tbaa !23
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/lower:lowering", ptr %t152, i32 0, i32 29
  store { i64, [1 x i64] } %t145, ptr %t156
  %t159 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, { i64, [4 x i64] } %t142, 1
  store { i32, { i64, [4 x i64] } } %t159, ptr %rv
  br label %ret
bb24:
  %t160 = load ptr, ptr %l7, !tbaa !29
  store ptr %t160, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t161 = load ptr, ptr %l96, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb25, label %bb26
bb25:
  %t164 = load ptr, ptr %l96, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 18}
  %t167 = icmp eq i64 %t165, 7
  store i1 %t167, ptr %l97, !tbaa !21
  br label %bb26
bb26:
  %t168 = load i1, ptr %l97, !tbaa !21
  br i1 %t168, label %bb27, label %bb28
bb27:
  %t169 = load ptr, ptr %l7, !tbaa !29
  %t171 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t171, i32 0, i32 0
  %t173 = load %"compiler/source:Span", ptr %t172
  store %"compiler/source:Span" %t173, ptr %l20
  %t175 = load ptr, ptr %l7, !tbaa !29
  %t177 = getelementptr { i64, [5 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t177, i32 0, i32 1
  %t179 = load i32, ptr %t178
  store i32 %t179, ptr %l21, !tbaa !23
  %t181 = load ptr, ptr %l7, !tbaa !29
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t183, i32 0, i32 2
  %t185 = load ptr, ptr %t184
  store ptr %t185, ptr %l23, !tbaa !29
  %t189 = load ptr, ptr %l23, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Make", ptr %t189, i32 0, i32 0
  %t192 = load i32, ptr %t191, !range !{i32 0, i32 5}
  %t194 = trunc i64 3 to i32
  %t195 = icmp eq i32 %t192, %t194
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb29, label %bb30
bb28:
  br label %bb44
bb29:
  %t199 = load ptr, ptr %l23, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Make", ptr %t199, i32 0, i32 0
  %t202 = load i32, ptr %t201, !range !{i32 0, i32 5}
  %t204 = trunc i64 2 to i32
  %t205 = icmp eq i32 %t202, %t204
  %t207 = xor i1 %t205, true
  store i1 %t207, ptr %l111, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb31
bb31:
  %t209 = load i1, ptr %l111, !tbaa !21
  br i1 %t209, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb34
bb33:
  %t210 = load ptr, ptr %l23, !tbaa !29
  %t212 = getelementptr %"compiler/typed:Make", ptr %t210, i32 0, i32 4
  %t213 = load i32, ptr %t212, !tbaa !23
  %t215 = icmp slt i32 %t213, 0
  store i1 %t215, ptr %l116, !tbaa !21
  br label %bb34
bb34:
  %t217 = load i1, ptr %l116, !tbaa !21
  br i1 %t217, label %bb35, label %bb36
bb35:
  %t219 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [4 x i64] } } %t219, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/lower:lowering", ptr %t220, i32 0, i32 28
  %t223 = load i32, ptr %t222, !tbaa !23
  store i32 %t223, ptr %l24, !tbaa !23
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/lower:lowering", ptr %t225, i32 0, i32 29
  %t228 = load { i64, [1 x i64] }, ptr %t227
  store { i64, [1 x i64] } %t228, ptr %l25
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l23, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Make", ptr %t231, i32 0, i32 4
  %t234 = load i32, ptr %t233, !tbaa !23
  %t237 = getelementptr %"compiler/lower:lowering", ptr %t230, i32 0, i32 28
  store i32 %t234, ptr %t237, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l128, !tbaa !29
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load ptr, ptr %l1, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Promote", ptr %t240, i32 0, i32 1
  %t243 = load i32, ptr %t242, !tbaa !23
  %t246 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t239, i32 %t243)
  store { i64, [1 x i64] } %t246, ptr %l132
  br label %bb38
bb38:
  %t247 = load { i64, [1 x i64] }, ptr %l132
  %t248 = load ptr, ptr %l128, !tbaa !29
  %t249 = getelementptr %"compiler/lower:lowering", ptr %t248, i32 0, i32 29
  store { i64, [1 x i64] } %t247, ptr %t249
  %t250 = load ptr, ptr %l23, !tbaa !29
  %t252 = getelementptr %"compiler/typed:Make", ptr %t250, i32 0, i32 0
  %t253 = load i32, ptr %t252, !range !{i32 0, i32 5}
  %t255 = trunc i64 3 to i32
  %t256 = icmp eq i32 %t253, %t255
  br i1 %t256, label %bb39, label %bb40
bb39:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load ptr, ptr %l23, !tbaa !29
  %t260 = load i32, ptr %l2, !tbaa !23
  %t261 = load %"compiler/source:Span", ptr %l3
  store { i64, [1 x i64] } zeroinitializer, ptr %t262
  %t263 = getelementptr { i64, [1 x i64] }, ptr %t262, i32 0, i32 0
  store i64 2, ptr %t263
  %t264 = load { i64, [1 x i64] }, ptr %t262
  %t270 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %t258, ptr %t259, i32 %t260, %"compiler/source:Span" %t261, i1 false, { i64, [1 x i64] } %t264)
  store { i64, [4 x i64] } %t270, ptr %l142
  br label %bb41
bb40:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l23, !tbaa !29
  %t273 = load i32, ptr %l2, !tbaa !23
  %t274 = load %"compiler/source:Span", ptr %l3
  store { i64, [1 x i64] } zeroinitializer, ptr %t275
  %t276 = getelementptr { i64, [1 x i64] }, ptr %t275, i32 0, i32 0
  store i64 2, ptr %t276
  %t277 = load { i64, [1 x i64] }, ptr %t275
  %t283 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %t271, ptr %t272, i32 %t273, %"compiler/source:Span" %t274, i1 false, { i64, [1 x i64] } %t277)
  store { i64, [4 x i64] } %t283, ptr %l148
  br label %bb42
bb41:
  %t284 = load { i64, [4 x i64] }, ptr %l142
  store { i64, [4 x i64] } %t284, ptr %l136
  br label %bb43
bb42:
  %t285 = load { i64, [4 x i64] }, ptr %l148
  store { i64, [4 x i64] } %t285, ptr %l136
  br label %bb43
bb43:
  %t286 = load { i64, [4 x i64] }, ptr %l136
  %t287 = load i32, ptr %l24, !tbaa !23
  %t289 = load { i64, [1 x i64] }, ptr %l25
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/lower:lowering", ptr %t291, i32 0, i32 28
  store i32 %t287, ptr %t295, !tbaa !23
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/lower:lowering", ptr %t296, i32 0, i32 29
  store { i64, [1 x i64] } %t289, ptr %t300
  %t303 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, { i64, [4 x i64] } %t286, 1
  store { i32, { i64, [4 x i64] } } %t303, ptr %rv
  br label %ret
bb44:
  %t304 = load ptr, ptr %l5, !tbaa !29
  %t305 = load i32, ptr %l4, !tbaa !23
  %t308 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t304, i32 %t305)
  store i32 %t308, ptr %l158
  br label %bb45
bb45:
  %t309 = load i32, ptr %l158, !tbaa !23
  %t310 = icmp eq i32 %t309, 0
  br i1 %t310, label %bb46, label %bb47
bb46:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t316 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyInPlace(ptr %v0, ptr %v1, ptr %t312, ptr %t313)
  store i1 %t316, ptr %l163
  br label %bb48
bb47:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb49
bb48:
  %t317 = load i1, ptr %l163, !tbaa !21
  store i1 %t317, ptr %l160, !tbaa !21
  br label %bb49
bb49:
  %t318 = load i1, ptr %l160, !tbaa !21
  br i1 %t318, label %bb50, label %bb51
bb50:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t321 = load i32, ptr %l2, !tbaa !23
  %t322 = load %"compiler/source:Span", ptr %l3
  %t327 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedCopy(ptr %v0, ptr %v1, ptr %t319, ptr %t320, i32 %t321, %"compiler/source:Span" %t322)
  store { i64, [4 x i64] } %t327, ptr %l168
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t328 = load { i64, [4 x i64] }, ptr %l168
  %t329 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, { i64, [4 x i64] } %t328, 1
  store { i32, { i64, [4 x i64] } } %t329, ptr %rv
  br label %ret
bb53:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t332 = load i32, ptr %l2, !tbaa !23
  %t333 = load %"compiler/source:Span", ptr %l3
  %t334 = load i32, ptr %l4, !tbaa !23
  %t340 = call { i32, { i64, [4 x i64] } } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedFill(ptr %v0, ptr %v1, ptr %t330, ptr %t331, i32 %t332, %"compiler/source:Span" %t333, i32 %t334)
  %t341 = extractvalue { i32, { i64, [4 x i64] } } %t340, 1
  %t342 = extractvalue { i32, { i64, [4 x i64] } } %t340, 0
  store i32 %t342, ptr %l176
  %t343 = icmp ne i32 %t342, 0
  br i1 %t343, label %bb55, label %ok.344, !prof !99
ok.344:
  store { i64, [4 x i64] } %t341, ptr %l175
  br label %bb54
bb54:
  %t345 = load { i64, [4 x i64] }, ptr %l175
  store { i64, [4 x i64] } %t345, ptr %l169
  br label %bb56
bb55:
  %t346 = load i32, ptr %l176, !tbaa !23
  %t347 = lshr i32 %t346, 16
  %t348 = and i32 %t346, 65535
  %t349 = icmp eq i32 %t347, 1
  %t350 = select i1 %t349, i32 1, i32 0
  %t351 = icmp eq i32 %t346, 0
  %t352 = shl i32 %t350, 16
  %t353 = or i32 %t352, %t348
  %t354 = select i1 %t351, i32 0, i32 %t353
  %t356 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, i32 %t354, 0
  store { i32, { i64, [4 x i64] } } %t356, ptr %rv
  br label %ret
bb56:
  %t357 = load { i64, [4 x i64] }, ptr %l169
  %t358 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, { i64, [4 x i64] } %t357, 1
  store { i32, { i64, [4 x i64] } } %t358, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [4 x i64] } }, ptr %rv
  ret { i32, { i64, [4 x i64] } } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietAll(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i1
  %rv = alloca i1
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
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t28 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  store i1 %t28, ptr %l19
  br label %bb5
bb5:
  %t29 = load i1, ptr %l19, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l74 = alloca i1
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
  store i1 true, ptr %l7, !tbaa !21
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
  %t48 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  store i1 %t48, ptr %l29
  br label %bb20
bb20:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l7, !tbaa !21
  br label %bb54
bb21:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb22, label %bb23
bb22:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb23
bb23:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb24, label %bb25
bb24:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t69 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  store i1 %t69, ptr %l38
  br label %bb27
bb27:
  %t70 = load i1, ptr %l38, !tbaa !21
  store i1 %t70, ptr %l7, !tbaa !21
  br label %bb54
bb28:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb29, label %bb30
bb29:
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 4
  store i1 %t78, ptr %l40, !tbaa !21
  br label %bb30
bb30:
  %t79 = load i1, ptr %l40, !tbaa !21
  br i1 %t79, label %bb31, label %bb32
bb31:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Elem", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t93 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t86, ptr %t90)
  store i1 %t93, ptr %l48
  br label %bb34
bb34:
  %t94 = load i1, ptr %l48, !tbaa !21
  br i1 %t94, label %bb35, label %bb36
bb35:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Elem", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t103 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t95, ptr %t99)
  store i1 %t103, ptr %l54
  br label %bb37
bb36:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb38
bb37:
  %t104 = load i1, ptr %l54, !tbaa !21
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb38
bb38:
  %t105 = load i1, ptr %l49, !tbaa !21
  store i1 %t105, ptr %l7, !tbaa !21
  br label %bb54
bb39:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t107 = load ptr, ptr %l55, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb40, label %bb41
bb40:
  %t110 = load ptr, ptr %l55, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 8}
  %t113 = icmp eq i64 %t111, 5
  store i1 %t113, ptr %l56, !tbaa !21
  br label %bb41
bb41:
  %t114 = load i1, ptr %l56, !tbaa !21
  br i1 %t114, label %bb42, label %bb43
bb42:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l5, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Payload", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t128 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t121, ptr %t125)
  store i1 %t128, ptr %l64
  br label %bb45
bb45:
  %t129 = load i1, ptr %l64, !tbaa !21
  store i1 %t129, ptr %l7, !tbaa !21
  br label %bb54
bb46:
  %t130 = load ptr, ptr %l1, !tbaa !29
  store ptr %t130, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb47, label %bb48
bb47:
  %t134 = load ptr, ptr %l65, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 8}
  %t137 = icmp eq i64 %t135, 6
  store i1 %t137, ptr %l66, !tbaa !21
  br label %bb48
bb48:
  %t138 = load i1, ptr %l66, !tbaa !21
  br i1 %t138, label %bb49, label %bb50
bb49:
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t141, i32 0, i32 2
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l6, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t150 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t145, ptr %t146)
  store i1 %t150, ptr %l74
  br label %bb52
bb52:
  %t151 = load i1, ptr %l74, !tbaa !21
  store i1 %t151, ptr %l7, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_43c562ec71e00848_102dc0f053e29474)
  unreachable
bb54:
  %t152 = load i1, ptr %l7, !tbaa !21
  store i1 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eread(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/lower:pl"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l19 = alloca %"compiler/lower:pl"
  %l21 = alloca %"compiler/lower:pl"
  %l27 = alloca ptr
  %l28 = alloca %"compiler/lower:pl"
  %l30 = alloca %"compiler/lower:pl"
  %l33 = alloca { i64, [4 x i64] }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca ptr
  %l53 = alloca i32
  %l55 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca ptr
  %l67 = alloca %"compiler/lower:pl"
  %l69 = alloca %"compiler/lower:pl"
  %l70 = alloca %"compiler/mir:Lvalue"
  %l74 = alloca { i64, [4 x i64] }
  %l75 = alloca ptr
  %l76 = alloca i32
  %l79 = alloca %"compiler/mir:Lvalue"
  %l83 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t21 = alloca { i64, [4 x i64] }, align 8
  %t130 = alloca { i64, [15 x i64] }, align 8
  %t152 = alloca { i64, [4 x i64] }, align 8
  %t158 = alloca { i64, [15 x i64] }, align 8
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
  %t3 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadOut(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i32 %t3)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t12 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %s0, ptr %t7, ptr %t8)
  store %"compiler/lower:pl" %t12, ptr %l19
  br label %bb2
bb2:
  %t14 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l19)
  store %"compiler/lower:pl" %t14, ptr %l21
  br label %bb3
bb3:
  %t15 = load %"compiler/lower:pl", ptr %l21
  store %"compiler/lower:pl" %t15, ptr %l4
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 10
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store { i64, [4 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t23 = load { i64, [4 x i64] }, ptr %t21
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t23, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t25 = getelementptr %"compiler/lower:pl", ptr %l4, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l27, !tbaa !29
  %t31 = load %"compiler/lower:pl", ptr %l4
  store %"compiler/lower:pl" %t31, ptr %l28
  %t33 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l28)
  store %"compiler/lower:pl" %t33, ptr %l30
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t34 = load i32, ptr %l2, !tbaa !23
  %t35 = load %"compiler/source:Span", ptr %l3
  %t36 = load ptr, ptr %l27, !tbaa !29
  %t37 = load %"compiler/lower:pl", ptr %l30
  %t40 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %s2, ptr %t36, %"compiler/lower:pl" %t37, i32 %t34, %"compiler/source:Span" %t35)
  store { i64, [4 x i64] } %t40, ptr %l33
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i64, [4 x i64] }, ptr %l33
  store { i64, [4 x i64] } %t41, ptr %rv
  br label %ret
bb11:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t43 = load ptr, ptr %l34, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = load ptr, ptr %l34, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 8}
  %t49 = icmp eq i64 %t47, 3
  store i1 %t49, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t50 = load i1, ptr %l35, !tbaa !21
  br i1 %t50, label %bb14, label %bb15
bb14:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t53, i32 0, i32 0
  %t55 = load %"compiler/source:Span", ptr %t54
  store %"compiler/source:Span" %t55, ptr %l5
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60
  store i32 %t61, ptr %l6, !tbaa !23
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l7, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t71, i32 0, i32 3
  %t73 = load i64, ptr %t72
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:lowering", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t78)
  store ptr %t80, ptr %l49
  br label %bb16
bb15:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb19
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lower:lowering", ptr %t81, i32 0, i32 2
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l51, !tbaa !29
  %t85 = load ptr, ptr %l7, !tbaa !29
  %t87 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t85)
  store i32 %t87, ptr %l53
  br label %bb17
bb17:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load ptr, ptr %l49, !tbaa !29
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t91 = load i32, ptr %l53, !tbaa !23
  %t93 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t89, ptr %t90, i32 %t91, i64 %t88)
  store i1 %t93, ptr %l55
  br label %bb18
bb18:
  %t94 = load i1, ptr %l55, !tbaa !21
  store i1 %t94, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t95 = load i1, ptr %l38, !tbaa !21
  br i1 %t95, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t98, i32 0, i32 0
  %t100 = load %"compiler/source:Span", ptr %t99
  store %"compiler/source:Span" %t100, ptr %l9
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105
  store i32 %t106, ptr %l10, !tbaa !23
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l11, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t116, i32 0, i32 3
  %t118 = load i64, ptr %t117
  store i64 %t118, ptr %l12, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l64, !tbaa !29
  %t121 = load i32, ptr %l2, !tbaa !23
  store i32 %t121, ptr %l65, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l66, !tbaa !29
  %t123 = load %"compiler/lower:pl", ptr %l4
  store %"compiler/lower:pl" %t123, ptr %l67
  %t125 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l67)
  store %"compiler/lower:pl" %t125, ptr %l69
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t126 = load ptr, ptr %l66, !tbaa !29
  %t127 = load %"compiler/lower:pl", ptr %l69
  %t128 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t126, %"compiler/lower:pl" %t127)
  store %"compiler/mir:Lvalue" %t128, ptr %l70
  br label %bb23
bb23:
  %t129 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [15 x i64] }, ptr %t130, i32 0, i32 0
  store i64 21, ptr %t131
  %t132 = load %"compiler/mir:Lvalue", ptr %l70
  %t133 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t132, 0
  %t135 = insertvalue { %"compiler/mir:Lvalue", i32 } %t133, i32 %t129, 1
  %t136 = getelementptr { i64, [15 x i64] }, ptr %t130, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t135, ptr %t136
  %t137 = load { i64, [15 x i64] }, ptr %t130
  %t138 = load %"compiler/source:Span", ptr %l3
  %t139 = load ptr, ptr %l64, !tbaa !29
  %t140 = load i32, ptr %l65, !tbaa !23
  %t143 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t139, i32 %t140, { i64, [15 x i64] } %t137, %"compiler/source:Span" %t138)
  store { i64, [4 x i64] } %t143, ptr %l74
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t144 = load { i64, [4 x i64] }, ptr %l74
  store { i64, [4 x i64] } %t144, ptr %rv
  br label %ret
bb25:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l75, !tbaa !29
  %t146 = load i32, ptr %l2, !tbaa !23
  store i32 %t146, ptr %l76, !tbaa !23
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load %"compiler/lower:pl", ptr %l4
  %t151 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t147, %"compiler/lower:pl" %t148)
  store %"compiler/mir:Lvalue" %t151, ptr %l79
  br label %bb26
bb26:
  store { i64, [4 x i64] } zeroinitializer, ptr %t152
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t152, i32 0, i32 0
  store i64 1, ptr %t153
  %t154 = load %"compiler/mir:Lvalue", ptr %l79
  %t155 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t154, 0
  %t156 = getelementptr { i64, [4 x i64] }, ptr %t152, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t155, ptr %t156
  %t157 = load { i64, [4 x i64] }, ptr %t152
  store { i64, [15 x i64] } zeroinitializer, ptr %t158
  %t159 = getelementptr { i64, [15 x i64] }, ptr %t158, i32 0, i32 0
  store i64 0, ptr %t159
  %t161 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t157, 0
  %t162 = getelementptr { i64, [15 x i64] }, ptr %t158, i32 0, i32 1
  store { { i64, [4 x i64] } } %t161, ptr %t162
  %t163 = load { i64, [15 x i64] }, ptr %t158
  %t164 = load %"compiler/source:Span", ptr %l3
  %t165 = load ptr, ptr %l75, !tbaa !29
  %t166 = load i32, ptr %l76, !tbaa !23
  %t169 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t165, i32 %t166, { i64, [15 x i64] } %t163, %"compiler/source:Span" %t164)
  store { i64, [4 x i64] } %t169, ptr %l83
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t170 = load { i64, [4 x i64] }, ptr %l83
  store { i64, [4 x i64] } %t170, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %a0) #0 {
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
  %t80 = icmp eq i64 %t79, 1
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

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eslotLen(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l11 = alloca i1
  %l16 = alloca %"compiler/mir:Local"
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i64
  %rv = alloca i64
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
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 3
  %t11 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 7
  %t14 = sext i32 %a1 to i64
  %t17 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t11, i64 %t14)
  store %"compiler/mir:Local" %t17, ptr %l16
  br label %bb3
bb3:
  %t18 = getelementptr %"compiler/mir:Local", ptr %l16, i32 0, i32 4
  %t19 = load { i64, [1 x i64] }, ptr %t18
  %t21 = extractvalue { i64, [1 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 3
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t26 = load i1, ptr %l11, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v1, ptr %t28, ptr %a2)
  store ptr %t32, ptr %l23
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l23, !tbaa !29
  %t34 = call ptr @compiler_2flower_2ederefOf(ptr %v1, ptr %v1, ptr %t33)
  store ptr %t34, ptr %l24
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l24, !tbaa !29
  store ptr %t35, ptr %l3, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  br i1 %t38, label %bb10, label %bb11
bb10:
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l3, !tbaa !29
  store ptr %t41, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t42 = load ptr, ptr %l28, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 18}
  %t48 = icmp eq i64 %t46, 9
  store i1 %t48, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l29, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr { i64, [5 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t52, i32 0, i32 2
  %t54 = load i32, ptr %t53, !range !{i32 0, i32 52}
  store i32 %t54, ptr %l4
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t58, i32 0, i32 4
  %t60 = load { i64, ptr }, ptr %t59
  store { i64, ptr } %t60, ptr %l5, !tbaa !27
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t62 = load i32, ptr %l4, !range !{i32 0, i32 52}
  %t64 = trunc i64 20 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp eq i64 %t69, 1
  store i1 %t71, ptr %l38, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t73 = load i1, ptr %l38, !tbaa !21
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t74, ptr %l42, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr ptr, ptr %t76, i64 0
  %t78 = load ptr, ptr %t77, !tbaa !39
  store ptr %t78, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6682c02b2252cda2_fe6a13f6dabd3e9e)
  unreachable
bb29:
  %t81 = load ptr, ptr %l3, !tbaa !29
  store ptr %t81, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t82 = load ptr, ptr %l45, !tbaa !29
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %bb30, label %bb31
bb30:
  %t85 = load ptr, ptr %l45, !tbaa !29
  %t86 = load i64, ptr %t85, !range !{i64 0, i64 18}
  %t88 = icmp eq i64 %t86, 1
  store i1 %t88, ptr %l46, !tbaa !21
  br label %bb31
bb31:
  %t89 = load i1, ptr %l46, !tbaa !21
  br i1 %t89, label %bb32, label %bb33
bb32:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t92, i32 0, i32 3
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb52
bb34:
  %t96 = load ptr, ptr %l6, !tbaa !29
  store ptr %t96, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t97 = load ptr, ptr %l51, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb35, label %bb36
bb35:
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 3}
  %t103 = icmp eq i64 %t101, 1
  store i1 %t103, ptr %l52, !tbaa !21
  br label %bb36
bb36:
  %t104 = load i1, ptr %l52, !tbaa !21
  br i1 %t104, label %bb37, label %bb38
bb37:
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t107 = getelementptr { i64, [2 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { { i64, ptr } }, ptr %t107, i32 0, i32 0
  %t109 = load { i64, ptr }, ptr %t108
  store { i64, ptr } %t109, ptr %l7, !tbaa !27
  br label %bb39
bb38:
  br label %bb46
bb39:
  %t111 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t115 = icmp sgt i64 %t113, 0
  br i1 %t115, label %bb40, label %bb41
bb40:
  %t117 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = load i64, ptr @G_2ecompiler_2flower_2eSlotMax, !tbaa !24
  %t123 = icmp sle i64 %t119, %t120
  store i1 %t123, ptr %l60, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb42
bb42:
  %t125 = load i1, ptr %l60, !tbaa !21
  br i1 %t125, label %bb43, label %bb44
bb43:
  %t126 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l65, !tbaa !24
  br label %bb45
bb44:
  store i64 -1, ptr %l65, !tbaa !24
  br label %bb45
bb45:
  %t130 = load i64, ptr %l65, !tbaa !24
  store i64 %t130, ptr %rv
  br label %ret
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_19eccda8bcaeeea3_66c9148e2869a91f)
  unreachable
bb51:
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_27799137553e39c8_8803419b6a8ab6e4)
  unreachable
bb57:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l74 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l79 = alloca i32
  %l80 = alloca { i64, ptr }
  %l86 = alloca %"std/prelude/text:StringBuilder"
  %l95 = alloca i64
  %l98 = alloca i64
  %l119 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l135 = alloca i64
  %l139 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l144 = alloca i32
  %l146 = alloca { i64, ptr }
  %l149 = alloca i64
  %l153 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l160 = alloca i32
  %l162 = alloca { i64, ptr }
  %l166 = alloca ptr
  %l169 = alloca i32
  %l170 = alloca { i64, ptr }
  %l176 = alloca i64
  %l183 = alloca { i64, ptr }
  %l186 = alloca %"std/prelude/text:StringBuilder"
  %l187 = alloca ptr
  %l190 = alloca i32
  %l191 = alloca { i64, ptr }
  %l198 = alloca i64
  %l201 = alloca i64
  %l222 = alloca ptr
  %l224 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l236 = alloca i1
  %l239 = alloca i32
  %l242 = alloca ptr
  %l245 = alloca i32
  %l246 = alloca { i64, ptr }
  %l249 = alloca i1
  %l250 = alloca { i64, ptr }
  %l254 = alloca %"std/prelude/text:StringBuilder"
  %l257 = alloca i32
  %l258 = alloca ptr
  %l261 = alloca i32
  %l262 = alloca { i64, ptr }
  %l265 = alloca i32
  %l268 = alloca i1
  %l269 = alloca ptr
  %l272 = alloca i32
  %l273 = alloca { i64, ptr }
  %l276 = alloca i1
  %l281 = alloca i1
  %l283 = alloca i1
  %l285 = alloca i1
  %l290 = alloca ptr
  %l293 = alloca i1
  %l294 = alloca { i64, ptr }
  %l296 = alloca ptr
  %l299 = alloca i32
  %l300 = alloca { i64, ptr }
  %l303 = alloca { i64, ptr }
  %l309 = alloca i64
  %l312 = alloca i64
  %l338 = alloca ptr
  %l340 = alloca ptr
  %l341 = alloca { i64, ptr }
  %l347 = alloca { i64, ptr }
  %l350 = alloca ptr
  %l352 = alloca { i64, ptr }
  %l355 = alloca { i64, ptr }
  %l362 = alloca i32
  %l365 = alloca ptr
  %l368 = alloca i32
  %l369 = alloca { i64, ptr }
  %l375 = alloca i64
  %l378 = alloca i64
  %l396 = alloca ptr
  %l399 = alloca { i64, ptr }
  %l401 = alloca { i64, ptr }
  %l404 = alloca { i64, ptr }
  %l415 = alloca i1
  %l418 = alloca i32
  %l421 = alloca i1
  %l422 = alloca ptr
  %l425 = alloca i32
  %l426 = alloca { i64, ptr }
  %l429 = alloca i1
  %l432 = alloca i64
  %l434 = alloca ptr
  %l438 = alloca { i64, ptr }
  %l450 = alloca i64
  %l453 = alloca i64
  %l471 = alloca ptr
  %l474 = alloca { i64, ptr }
  %l475 = alloca ptr
  %l477 = alloca { i64, ptr }
  %l480 = alloca i32
  %l481 = alloca { i64, ptr }
  %l486 = alloca ptr
  %l490 = alloca { i64, ptr }
  %l495 = alloca { i64, ptr }
  %l499 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l56
  br label %bb1
bb1:
  %t11 = load i32, ptr %l56, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l6
  %t12 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l60, !tbaa !29
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l63
  br label %bb4
bb3:
  br label %bb37
bb4:
  %t26 = load ptr, ptr %l60, !tbaa !29
  %t27 = load i32, ptr %l63, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %s1, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l64
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/types:Table", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l67, !tbaa !29
  %t36 = load ptr, ptr %l5, !tbaa !29
  store ptr %t36, ptr %l68, !tbaa !29
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l71
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l68, !tbaa !29
  %t43 = load i32, ptr %l71, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t44, ptr %l72
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l67, !tbaa !29
  %t46 = call ptr @__olang_scope_of(ptr %t45, ptr null)
  %t47 = ptrtoint ptr %t46 to i64
  %t49 = inttoptr i64 %t47 to ptr
  %t50 = load ptr, ptr %l67, !tbaa !29
  %t51 = load i32, ptr %l72, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t49, ptr %s1, ptr %t50, i32 %t51)
  store { i64, ptr } %t52, ptr %l74
  br label %bb8
bb8:
  %t53 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = add i64 %t55, %t58
  %t60 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t54, i64 %t55)
  %t61 = getelementptr i8, ptr %t60, i64 %t55
  call void @olang_textcopy(ptr %t61, ptr %t57, i64 %t58)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t60, 1
  store { i64, ptr } %t63, ptr %l7, !tbaa !27
  %t65 = load ptr, ptr %l5, !tbaa !29
  store ptr %t65, ptr %l76, !tbaa !29
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t67 = load i32, ptr %l1, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t70, ptr %l79
  br label %bb9
bb9:
  %t71 = load ptr, ptr %l76, !tbaa !29
  %t72 = load i32, ptr %l79, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t71, i32 %t72)
  store { i64, ptr } %t73, ptr %l80
  br label %bb10
bb10:
  %t74 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t74, ptr %l8, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = icmp eq i64 %t77, 0
  br i1 %t79, label %bb11, label %bb12
bb11:
  %t81 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 1
  %t84 = extractvalue { i64, ptr } %t81, 0
  %t85 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t83, i64 %t84)
  %t86 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  call void @__olang_scope_close(ptr %s1)
  store { i64, ptr } %t87, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t89 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s1)
  store %"std/prelude/text:StringBuilder" %t89, ptr %l86
  br label %bb14
bb14:
  %t90 = load %"std/prelude/text:StringBuilder", ptr %l86
  store %"std/prelude/text:StringBuilder" %t90, ptr %l9
  %t91 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s1, ptr %l9, { i64, ptr } %t91)
  br label %bb15
bb15:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l9, i8 60)
  br label %bb16
bb16:
  store i64 0, ptr %l10, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  store i64 %t97, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l11, !tbaa !24
  %t100 = load i64, ptr %l10, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb17, label %bb18
bb17:
  %t105 = load i64, ptr %l12, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb22
bb19:
  %t109 = load i64, ptr %l11, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l12, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l12, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l98, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb21
bb21:
  %t125 = load i64, ptr %l98, !tbaa !24
  store i64 %t125, ptr %l95, !tbaa !24
  br label %bb22
bb22:
  %t126 = load i64, ptr %l95, !tbaa !24
  store i64 %t126, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t127 = load i64, ptr %l14, !tbaa !24
  %t128 = load i64, ptr %l13, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb25:
  br label %bb26
bb26:
  %t135 = load i64, ptr %l10, !tbaa !24
  %t136 = load i64, ptr %l14, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  store i64 %t143, ptr %l15, !tbaa !24
  %t145 = load i64, ptr %l15, !tbaa !24
  %t147 = icmp sgt i64 %t145, 0
  br i1 %t147, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s7, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb30
bb30:
  store ptr %l9, ptr %l119, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t151, ptr %l121, !tbaa !27
  %t152 = load i64, ptr %l15, !tbaa !24
  %t154 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr i32, ptr %t155, i64 %t152
  %t157 = load i32, ptr %t156, !tbaa !33
  %t160 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s6, ptr %t150, i32 %t157, i1 true, i1 true, i1 false)
  store { i64, ptr } %t160, ptr %l124
  br label %bb31
bb31:
  %t161 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t168 = load ptr, ptr %l119, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s1, ptr %s6, ptr %t168, { i64, ptr } %t167)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb33:
  %t170 = load i64, ptr %l14, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l14, !tbaa !24
  br label %bb23
bb34:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l9, i8 62)
  br label %bb35
bb35:
  %t176 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s1, ptr %v1, ptr %l9)
  store { i64, ptr } %t176, ptr %l130
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s1)
  %t177 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
bb37:
  %t178 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t180 = trunc i64 20 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t183 = load ptr, ptr %l5, !tbaa !29
  %t184 = load i32, ptr %l1, !tbaa !23
  %t187 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t183, i32 %t184)
  store i64 %t187, ptr %l135
  br label %bb40
bb39:
  br label %bb50
bb40:
  %t188 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t189 = load i64, ptr %l135, !tbaa !24
  %t191 = and i64 %t189, %t188
  %t193 = icmp ne i64 %t191, 0
  br i1 %t193, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l139, !tbaa !27
  br label %bb43
bb42:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l139, !tbaa !27
  br label %bb43
bb43:
  %t195 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t195, ptr %l140, !tbaa !27
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l141, !tbaa !29
  %t198 = load ptr, ptr %l5, !tbaa !29
  %t199 = load i32, ptr %l1, !tbaa !23
  %t202 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t198, i32 %t199)
  store i32 %t202, ptr %l144
  br label %bb44
bb44:
  %t203 = load i1, ptr %l3, !tbaa !21
  %t204 = load ptr, ptr %l141, !tbaa !29
  %t205 = load i32, ptr %l144, !tbaa !23
  %t207 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s9, ptr %t204, i32 %t205, i1 true, i1 %t203, i1 false)
  store { i64, ptr } %t207, ptr %l146
  br label %bb45
bb45:
  %t208 = load ptr, ptr %l5, !tbaa !29
  %t209 = load i32, ptr %l1, !tbaa !23
  %t212 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t208, i32 %t209)
  store i64 %t212, ptr %l149
  br label %bb46
bb46:
  %t213 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t214 = load i64, ptr %l149, !tbaa !24
  %t216 = and i64 %t214, %t213
  %t218 = icmp ne i64 %t216, 0
  br i1 %t218, label %bb47, label %bb48
bb47:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l153, !tbaa !27
  br label %bb49
bb48:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l153, !tbaa !27
  br label %bb49
bb49:
  %t220 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 1
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t223 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 1
  %t225 = extractvalue { i64, ptr } %t223, 0
  %t226 = add i64 %t222, %t225
  %t227 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 1
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t230 = add i64 %t226, %t229
  %t231 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t230)
  call void @olang_textcopy(ptr %t231, ptr %t221, i64 %t222)
  %t232 = getelementptr i8, ptr %t231, i64 %t222
  call void @olang_textcopy(ptr %t232, ptr %t224, i64 %t225)
  %t233 = getelementptr i8, ptr %t232, i64 %t225
  call void @olang_textcopy(ptr %t233, ptr %t228, i64 %t229)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t231, 1
  call void @__olang_scope_close(ptr %s9)
  store { i64, ptr } %t235, ptr %rv
  br label %ret
bb50:
  %t237 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t239 = trunc i64 29 to i32
  %t240 = icmp eq i32 %t237, %t239
  br i1 %t240, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l157, !tbaa !29
  %t243 = load ptr, ptr %l5, !tbaa !29
  %t244 = load i32, ptr %l1, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l160
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t248 = load i1, ptr %l3, !tbaa !21
  %t249 = load ptr, ptr %l157, !tbaa !29
  %t250 = load i32, ptr %l160, !tbaa !23
  %t252 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s11, ptr %t249, i32 %t250, i1 true, i1 %t248, i1 false)
  store { i64, ptr } %t252, ptr %l162
  br label %bb54
bb54:
  %t253 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t255 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = add i64 %t254, %t257
  %t259 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t253, i64 %t254)
  %t260 = getelementptr i8, ptr %t259, i64 %t254
  call void @olang_textcopy(ptr %t260, ptr %t256, i64 %t257)
  %t261 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t259, 1
  call void @__olang_scope_close(ptr %s11)
  store { i64, ptr } %t262, ptr %rv
  br label %ret
bb55:
  %t264 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t266 = trunc i64 19 to i32
  %t267 = icmp eq i32 %t264, %t266
  br i1 %t267, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s13
  %t269 = load ptr, ptr %l0, !tbaa !29
  store ptr %t269, ptr %l166, !tbaa !29
  %t270 = load ptr, ptr %l5, !tbaa !29
  %t271 = load i32, ptr %l1, !tbaa !23
  %t274 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t270, i32 %t271)
  store i32 %t274, ptr %l169
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t275 = load ptr, ptr %l166, !tbaa !29
  %t276 = load i32, ptr %l169, !tbaa !23
  %t277 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s13, ptr %t275, i32 %t276, i1 true, i1 true, i1 false)
  store { i64, ptr } %t277, ptr %l170
  br label %bb59
bb59:
  %t278 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t280 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = add i64 %t279, %t282
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t286 = add i64 %t283, %t285
  %t287 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t286)
  call void @olang_textcopy(ptr %t287, ptr %t278, i64 %t279)
  %t288 = getelementptr i8, ptr %t287, i64 %t279
  call void @olang_textcopy(ptr %t288, ptr %t281, i64 %t282)
  %t289 = getelementptr i8, ptr %t288, i64 %t282
  call void @olang_textcopy(ptr %t289, ptr %t284, i64 %t285)
  %t290 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t287, 1
  call void @__olang_scope_close(ptr %s13)
  store { i64, ptr } %t291, ptr %rv
  br label %ret
bb60:
  %t293 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t295 = trunc i64 26 to i32
  %t296 = icmp eq i32 %t293, %t295
  br i1 %t296, label %bb61, label %bb62
bb61:
  %t298 = load ptr, ptr %l5, !tbaa !29
  %t299 = load i32, ptr %l1, !tbaa !23
  %t302 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t298, i32 %t299)
  store i64 %t302, ptr %l176
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t303 = load i64, ptr %l176, !tbaa !24
  %t304 = call i64 @__olang_fmt_i64(ptr null, i64 %t303)
  %t305 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t304)
  %t306 = call i64 @__olang_fmt_i64(ptr %t305, i64 %t303)
  %t307 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t305, 1
  store { i64, ptr } %t308, ptr %rv
  br label %ret
bb64:
  %t310 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t312 = trunc i64 32 to i32
  %t313 = icmp eq i32 %t310, %t312
  br i1 %t313, label %bb65, label %bb66
bb65:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/lower:lowering", ptr %t315, i32 0, i32 0
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t319 = load i32, ptr %l1, !tbaa !23
  %t322 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eErrValSpelling(ptr %v0, ptr %v1, ptr %t318, i32 %t319)
  store { i64, ptr } %t322, ptr %l183
  br label %bb67
bb66:
  br label %bb68
bb67:
  %t323 = load { i64, ptr }, ptr %l183, !tbaa !27
  store { i64, ptr } %t323, ptr %rv
  br label %ret
bb68:
  %t324 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t326 = trunc i64 22 to i32
  %t327 = icmp eq i32 %t324, %t326
  br i1 %t327, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s18
  %t329 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s18)
  store %"std/prelude/text:StringBuilder" %t329, ptr %l186
  br label %bb71
bb70:
  br label %bb95
bb71:
  %t330 = load %"std/prelude/text:StringBuilder", ptr %l186
  store %"std/prelude/text:StringBuilder" %t330, ptr %l17
  %t331 = load ptr, ptr %l5, !tbaa !29
  store ptr %t331, ptr %l187, !tbaa !29
  %t332 = load ptr, ptr %l5, !tbaa !29
  %t333 = load i32, ptr %l1, !tbaa !23
  %t336 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t332, i32 %t333)
  store i32 %t336, ptr %l190
  br label %bb72
bb72:
  %t337 = load ptr, ptr %l187, !tbaa !29
  %t338 = load i32, ptr %l190, !tbaa !23
  %t339 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t337, i32 %t338)
  store { i64, ptr } %t339, ptr %l191
  br label %bb73
bb73:
  %t340 = load { i64, ptr }, ptr %l191, !tbaa !27
  store { i64, ptr } %t340, ptr %l18, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s18, ptr %l17, i8 40)
  br label %bb74
bb74:
  store i64 0, ptr %l19, !tbaa !24
  %t342 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t342, 0
  store i64 %t344, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t346 = load i64, ptr %l20, !tbaa !24
  %t347 = load i64, ptr %l19, !tbaa !24
  %t350 = icmp sgt i64 %t346, %t347
  br i1 %t350, label %bb75, label %bb76
bb75:
  %t352 = load i64, ptr %l21, !tbaa !24
  %t354 = icmp sgt i64 %t352, 0
  br i1 %t354, label %bb77, label %bb78
bb76:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb80
bb77:
  %t356 = load i64, ptr %l20, !tbaa !24
  %t357 = load i64, ptr %l19, !tbaa !24
  %t360 = sub i64 %t356, %t357
  %t361 = load i64, ptr %l21, !tbaa !24
  %t364 = add i64 %t360, %t361
  %t366 = sub i64 %t364, 1
  %t367 = load i64, ptr %l21, !tbaa !24
  %t370 = sdiv i64 %t366, %t367
  store i64 %t370, ptr %l201, !tbaa !24
  br label %bb79
bb78:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb79
bb79:
  %t372 = load i64, ptr %l201, !tbaa !24
  store i64 %t372, ptr %l198, !tbaa !24
  br label %bb80
bb80:
  %t373 = load i64, ptr %l198, !tbaa !24
  store i64 %t373, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb81
bb81:
  store %olang.scope zeroinitializer, ptr %s20
  %t374 = load i64, ptr %l23, !tbaa !24
  %t375 = load i64, ptr %l22, !tbaa !24
  %t378 = icmp slt i64 %t374, %t375
  %t380 = xor i1 %t378, true
  br i1 %t380, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s20)
  br label %bb92
bb83:
  br label %bb84
bb84:
  %t382 = load i64, ptr %l19, !tbaa !24
  %t383 = load i64, ptr %l23, !tbaa !24
  %t384 = load i64, ptr %l21, !tbaa !24
  %t387 = mul i64 %t383, %t384
  %t390 = add i64 %t382, %t387
  store i64 %t390, ptr %l24, !tbaa !24
  %t392 = load i64, ptr %l24, !tbaa !24
  %t394 = icmp sgt i64 %t392, 0
  br i1 %t394, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s21
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s18, ptr %s21, ptr %l17, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb87
bb86:
  br label %bb88
bb87:
  call void @__olang_scope_close(ptr %s21)
  br label %bb88
bb88:
  store ptr %l17, ptr %l222, !tbaa !29
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t398, ptr %l224, !tbaa !27
  %t399 = load i64, ptr %l24, !tbaa !24
  %t401 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = getelementptr i32, ptr %t402, i64 %t399
  %t404 = load i32, ptr %t403, !tbaa !33
  %t407 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s20, ptr %t397, i32 %t404, i1 true, i1 true, i1 false)
  store { i64, ptr } %t407, ptr %l227
  br label %bb89
bb89:
  %t408 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t408, 0
  %t410 = extractvalue { i64, ptr } %t408, 1
  %t411 = mul i64 %t409, 1
  %t412 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t411)
  call void @llvm.memcpy.p0.p0.i64(ptr %t412, ptr %t410, i64 %t411, i1 false)
  %t413 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t412, 1
  %t415 = load ptr, ptr %l222, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s18, ptr %s20, ptr %t415, { i64, ptr } %t414)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s20)
  br label %bb91
bb91:
  %t417 = load i64, ptr %l23, !tbaa !24
  %t419 = add i64 %t417, 1
  store i64 %t419, ptr %l23, !tbaa !24
  br label %bb81
bb92:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s18, ptr %l17, i8 41)
  br label %bb93
bb93:
  %t423 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s18, ptr %v1, ptr %l17)
  store { i64, ptr } %t423, ptr %l233
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s18)
  %t424 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t424, ptr %rv
  br label %ret
bb95:
  %t425 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t427 = trunc i64 21 to i32
  %t428 = icmp eq i32 %t425, %t427
  br i1 %t428, label %bb96, label %bb97
bb96:
  %t430 = load ptr, ptr %l5, !tbaa !29
  %t431 = load i32, ptr %l1, !tbaa !23
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t430, i32 %t431)
  store i32 %t434, ptr %l239
  br label %bb98
bb97:
  store i1 false, ptr %l236, !tbaa !21
  br label %bb99
bb98:
  %t435 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t436 = load i32, ptr %l239, !tbaa !23
  %t438 = icmp ne i32 %t436, %t435
  store i1 %t438, ptr %l236, !tbaa !21
  br label %bb99
bb99:
  %t440 = load i1, ptr %l236, !tbaa !21
  br i1 %t440, label %bb100, label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s23
  %t441 = load ptr, ptr %l0, !tbaa !29
  store ptr %t441, ptr %l242, !tbaa !29
  %t442 = load ptr, ptr %l5, !tbaa !29
  %t443 = load i32, ptr %l1, !tbaa !23
  %t446 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t442, i32 %t443)
  store i32 %t446, ptr %l245
  br label %bb102
bb101:
  br label %bb108
bb102:
  %t447 = load ptr, ptr %l242, !tbaa !29
  %t448 = load i32, ptr %l245, !tbaa !23
  %t449 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s23, ptr %t447, i32 %t448, i1 true, i1 false, i1 false)
  store { i64, ptr } %t449, ptr %l246
  br label %bb103
bb103:
  %t450 = load ptr, ptr %l5, !tbaa !29
  %t451 = load i32, ptr %l1, !tbaa !23
  %t454 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t450, i32 %t451)
  store i1 %t454, ptr %l249
  br label %bb104
bb104:
  %t455 = load i1, ptr %l249, !tbaa !21
  br i1 %t455, label %bb105, label %bb106
bb105:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l250, !tbaa !27
  br label %bb107
bb106:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l250, !tbaa !27
  br label %bb107
bb107:
  %t456 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = extractvalue { i64, ptr } %t456, 0
  %t459 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t460 = extractvalue { i64, ptr } %t459, 1
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t462 = add i64 %t458, %t461
  %t463 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t462)
  call void @olang_textcopy(ptr %t463, ptr %t457, i64 %t458)
  %t464 = getelementptr i8, ptr %t463, i64 %t458
  call void @olang_textcopy(ptr %t464, ptr %t460, i64 %t461)
  %t465 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t463, 1
  call void @__olang_scope_close(ptr %s23)
  store { i64, ptr } %t466, ptr %rv
  br label %ret
bb108:
  %t468 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t470 = trunc i64 21 to i32
  %t471 = icmp eq i32 %t468, %t470
  br i1 %t471, label %bb109, label %bb110
bb109:
  store %olang.scope zeroinitializer, ptr %s25
  %t473 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s25)
  store %"std/prelude/text:StringBuilder" %t473, ptr %l254
  br label %bb111
bb110:
  br label %bb243
bb111:
  %t474 = load %"std/prelude/text:StringBuilder", ptr %l254
  store %"std/prelude/text:StringBuilder" %t474, ptr %l25
  %t475 = load ptr, ptr %l5, !tbaa !29
  %t476 = load i32, ptr %l1, !tbaa !23
  %t479 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t475, i32 %t476)
  store i32 %t479, ptr %l257
  br label %bb112
bb112:
  %t480 = load i32, ptr %l257, !tbaa !23
  store i32 %t480, ptr %l26, !tbaa !23
  %t481 = load ptr, ptr %l5, !tbaa !29
  store ptr %t481, ptr %l258, !tbaa !29
  %t482 = load ptr, ptr %l5, !tbaa !29
  %t483 = load i32, ptr %l1, !tbaa !23
  %t486 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t482, i32 %t483)
  store i32 %t486, ptr %l261
  br label %bb113
bb113:
  %t487 = load ptr, ptr %l258, !tbaa !29
  %t488 = load i32, ptr %l261, !tbaa !23
  %t489 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t487, i32 %t488)
  store { i64, ptr } %t489, ptr %l262
  br label %bb114
bb114:
  %t490 = load { i64, ptr }, ptr %l262, !tbaa !27
  store { i64, ptr } %t490, ptr %l27, !tbaa !27
  %t491 = load ptr, ptr %l5, !tbaa !29
  %t492 = load i32, ptr %l26, !tbaa !23
  %t495 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t491, i32 %t492)
  store i32 %t495, ptr %l265
  br label %bb115
bb115:
  %t496 = load i32, ptr %l265, !range !{i32 0, i32 33}
  %t498 = trunc i64 22 to i32
  %t499 = icmp eq i32 %t496, %t498
  br i1 %t499, label %bb116, label %bb117
bb116:
  %t501 = load ptr, ptr %l5, !tbaa !29
  store ptr %t501, ptr %l269, !tbaa !29
  %t502 = load ptr, ptr %l5, !tbaa !29
  %t503 = load i32, ptr %l26, !tbaa !23
  %t506 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t502, i32 %t503)
  store i32 %t506, ptr %l272
  br label %bb118
bb117:
  store i1 false, ptr %l268, !tbaa !21
  br label %bb120
bb118:
  %t507 = load ptr, ptr %l269, !tbaa !29
  %t508 = load i32, ptr %l272, !tbaa !23
  %t509 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s25, ptr %t507, i32 %t508)
  store { i64, ptr } %t509, ptr %l273
  br label %bb119
bb119:
  %t510 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t510, 0
  %t513 = icmp sgt i64 %t511, 1
  store i1 %t513, ptr %l268, !tbaa !21
  br label %bb120
bb120:
  %t515 = load i1, ptr %l268, !tbaa !21
  br i1 %t515, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l276, !tbaa !21
  br label %bb123
bb122:
  %t516 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t518 = extractvalue { i64, ptr } %t516, 0
  %t520 = icmp sgt i64 %t518, 1
  store i1 %t520, ptr %l276, !tbaa !21
  br label %bb123
bb123:
  %t522 = load i1, ptr %l276, !tbaa !21
  store i1 %t522, ptr %l28, !tbaa !21
  %t523 = load i1, ptr %l2, !tbaa !21
  br i1 %t523, label %bb124, label %bb125
bb124:
  br i1 %a4, label %bb126, label %bb127
bb125:
  store i1 false, ptr %l281, !tbaa !21
  br label %bb132
bb126:
  store i1 true, ptr %l283, !tbaa !21
  br label %bb131
bb127:
  %t527 = load i1, ptr %l3, !tbaa !21
  br i1 %t527, label %bb128, label %bb129
bb128:
  %t529 = load i1, ptr %l28, !tbaa !21
  store i1 %t529, ptr %l285, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l285, !tbaa !21
  br label %bb130
bb130:
  %t531 = load i1, ptr %l285, !tbaa !21
  store i1 %t531, ptr %l283, !tbaa !21
  br label %bb131
bb131:
  %t532 = load i1, ptr %l283, !tbaa !21
  store i1 %t532, ptr %l281, !tbaa !21
  br label %bb132
bb132:
  %t533 = load i1, ptr %l281, !tbaa !21
  store i1 %t533, ptr %l29, !tbaa !21
  %t534 = load i1, ptr %l29, !tbaa !21
  br i1 %t534, label %bb133, label %bb134
bb133:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s25, ptr %l25, i8 40)
  br label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb136
bb136:
  %t537 = load i1, ptr %l2, !tbaa !21
  br i1 %t537, label %bb137, label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s27
  store ptr %l25, ptr %l290, !tbaa !29
  %t539 = load ptr, ptr %l5, !tbaa !29
  %t540 = load i32, ptr %l1, !tbaa !23
  %t543 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t539, i32 %t540)
  store i1 %t543, ptr %l293
  br label %bb139
bb138:
  br label %bb144
bb139:
  %t544 = load i1, ptr %l293, !tbaa !21
  br i1 %t544, label %bb140, label %bb141
bb140:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l294, !tbaa !27
  br label %bb142
bb141:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l294, !tbaa !27
  br label %bb142
bb142:
  %t545 = load ptr, ptr %l290, !tbaa !29
  %t546 = load { i64, ptr }, ptr %l294, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s27, ptr %t545, { i64, ptr } %t546)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s27)
  br label %bb144
bb144:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s25, ptr %l25, i8 40)
  br label %bb145
bb145:
  %t548 = load ptr, ptr %l5, !tbaa !29
  store ptr %t548, ptr %l296, !tbaa !29
  %t549 = load ptr, ptr %l5, !tbaa !29
  %t550 = load i32, ptr %l1, !tbaa !23
  %t553 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t549, i32 %t550)
  store i32 %t553, ptr %l299
  br label %bb146
bb146:
  %t554 = load ptr, ptr %l296, !tbaa !29
  %t555 = load i32, ptr %l299, !tbaa !23
  %t556 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t554, i32 %t555)
  store { i64, ptr } %t556, ptr %l300
  br label %bb147
bb147:
  %t557 = load { i64, ptr }, ptr %l300, !tbaa !27
  store { i64, ptr } %t557, ptr %l30, !tbaa !27
  %t558 = load ptr, ptr %l5, !tbaa !29
  %t559 = load i32, ptr %l1, !tbaa !23
  %t562 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v0, ptr %t558, i32 %t559)
  store { i64, ptr } %t562, ptr %l303
  br label %bb148
bb148:
  %t563 = load { i64, ptr }, ptr %l303, !tbaa !27
  store { i64, ptr } %t563, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t564 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t566 = extractvalue { i64, ptr } %t564, 0
  store i64 %t566, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t568 = load i64, ptr %l33, !tbaa !24
  %t569 = load i64, ptr %l32, !tbaa !24
  %t572 = icmp sgt i64 %t568, %t569
  br i1 %t572, label %bb149, label %bb150
bb149:
  %t574 = load i64, ptr %l34, !tbaa !24
  %t576 = icmp sgt i64 %t574, 0
  br i1 %t576, label %bb151, label %bb152
bb150:
  store i64 0, ptr %l309, !tbaa !24
  br label %bb154
bb151:
  %t578 = load i64, ptr %l33, !tbaa !24
  %t579 = load i64, ptr %l32, !tbaa !24
  %t582 = sub i64 %t578, %t579
  %t583 = load i64, ptr %l34, !tbaa !24
  %t586 = add i64 %t582, %t583
  %t588 = sub i64 %t586, 1
  %t589 = load i64, ptr %l34, !tbaa !24
  %t592 = sdiv i64 %t588, %t589
  store i64 %t592, ptr %l312, !tbaa !24
  br label %bb153
bb152:
  store i64 0, ptr %l312, !tbaa !24
  br label %bb153
bb153:
  %t594 = load i64, ptr %l312, !tbaa !24
  store i64 %t594, ptr %l309, !tbaa !24
  br label %bb154
bb154:
  %t595 = load i64, ptr %l309, !tbaa !24
  store i64 %t595, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb155
bb155:
  store %olang.scope zeroinitializer, ptr %s29
  %t596 = load i64, ptr %l36, !tbaa !24
  %t597 = load i64, ptr %l35, !tbaa !24
  %t600 = icmp slt i64 %t596, %t597
  %t602 = xor i1 %t600, true
  br i1 %t602, label %bb156, label %bb157
bb156:
  call void @__olang_scope_close(ptr %s29)
  br label %bb171
bb157:
  br label %bb158
bb158:
  %t604 = load i64, ptr %l32, !tbaa !24
  %t605 = load i64, ptr %l36, !tbaa !24
  %t606 = load i64, ptr %l34, !tbaa !24
  %t609 = mul i64 %t605, %t606
  %t612 = add i64 %t604, %t609
  store i64 %t612, ptr %l37, !tbaa !24
  %t614 = load i64, ptr %l37, !tbaa !24
  %t616 = icmp sgt i64 %t614, 0
  br i1 %t616, label %bb159, label %bb160
bb159:
  store %olang.scope zeroinitializer, ptr %s30
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s30, ptr %l25, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb161
bb160:
  br label %bb162
bb161:
  call void @__olang_scope_close(ptr %s30)
  br label %bb162
bb162:
  %t619 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t619, 0
  %t622 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t624 = extractvalue { i64, ptr } %t622, 0
  %t627 = icmp eq i64 %t621, %t624
  br i1 %t627, label %bb163, label %bb164
bb163:
  store %olang.scope zeroinitializer, ptr %s31
  store ptr %l25, ptr %l338, !tbaa !29
  %t629 = load ptr, ptr %l5, !tbaa !29
  %t631 = getelementptr %"compiler/types:Table", ptr %t629, i32 0, i32 0
  %t632 = load ptr, ptr %t631, !tbaa !29
  store ptr %t632, ptr %l340, !tbaa !29
  %t633 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t633, ptr %l341, !tbaa !27
  %t634 = load i64, ptr %l37, !tbaa !24
  %t636 = getelementptr { i64, ptr }, ptr %l341, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = getelementptr i64, ptr %t637, i64 %t634
  %t639 = load i64, ptr %t638, !tbaa !34
  %t641 = trunc i64 %t639 to i32
  %t643 = load ptr, ptr %l340, !tbaa !29
  %t644 = call ptr @__olang_scope_of(ptr %t643, ptr null)
  %t645 = ptrtoint ptr %t644 to i64
  %t647 = inttoptr i64 %t645 to ptr
  %t648 = load ptr, ptr %l340, !tbaa !29
  %t650 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t647, ptr %s31, ptr %t648, i32 %t641)
  store { i64, ptr } %t650, ptr %l347
  br label %bb165
bb164:
  br label %bb167
bb165:
  %t651 = load { i64, ptr }, ptr %l347, !tbaa !27
  %t652 = extractvalue { i64, ptr } %t651, 1
  %t653 = extractvalue { i64, ptr } %t651, 0
  %t654 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t656 = add i64 %t653, %t655
  %t657 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t656)
  call void @olang_textcopy(ptr %t657, ptr %t652, i64 %t653)
  %t658 = getelementptr i8, ptr %t657, i64 %t653
  call void @olang_textcopy(ptr %t658, ptr %t654, i64 %t655)
  %t659 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t657, 1
  %t662 = extractvalue { i64, ptr } %t660, 0
  %t663 = extractvalue { i64, ptr } %t660, 1
  %t664 = mul i64 %t662, 1
  %t665 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t664)
  call void @llvm.memcpy.p0.p0.i64(ptr %t665, ptr %t663, i64 %t664, i1 false)
  %t666 = insertvalue { i64, ptr } undef, i64 %t662, 0
  %t667 = insertvalue { i64, ptr } %t666, ptr %t665, 1
  %t668 = load ptr, ptr %l338, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s31, ptr %t668, { i64, ptr } %t667)
  br label %bb166
bb166:
  call void @__olang_scope_close(ptr %s31)
  br label %bb167
bb167:
  store ptr %l25, ptr %l350, !tbaa !29
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t671, ptr %l352, !tbaa !27
  %t672 = load i64, ptr %l37, !tbaa !24
  %t674 = getelementptr { i64, ptr }, ptr %l352, i32 0, i32 1
  %t675 = load ptr, ptr %t674, !tbaa !27
  %t676 = getelementptr i32, ptr %t675, i64 %t672
  %t677 = load i32, ptr %t676, !tbaa !33
  %t680 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s29, ptr %t670, i32 %t677, i1 true, i1 true, i1 false)
  store { i64, ptr } %t680, ptr %l355
  br label %bb168
bb168:
  %t681 = load { i64, ptr }, ptr %l355, !tbaa !27
  %t682 = extractvalue { i64, ptr } %t681, 0
  %t683 = extractvalue { i64, ptr } %t681, 1
  %t684 = mul i64 %t682, 1
  %t685 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t684)
  call void @llvm.memcpy.p0.p0.i64(ptr %t685, ptr %t683, i64 %t684, i1 false)
  %t686 = insertvalue { i64, ptr } undef, i64 %t682, 0
  %t687 = insertvalue { i64, ptr } %t686, ptr %t685, 1
  %t688 = load ptr, ptr %l350, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s29, ptr %t688, { i64, ptr } %t687)
  br label %bb169
bb169:
  call void @__olang_scope_close(ptr %s29)
  br label %bb170
bb170:
  %t690 = load i64, ptr %l36, !tbaa !24
  %t692 = add i64 %t690, 1
  store i64 %t692, ptr %l36, !tbaa !24
  br label %bb155
bb171:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s25, ptr %l25, i8 41)
  br label %bb172
bb172:
  %t695 = load ptr, ptr %l5, !tbaa !29
  %t696 = load i32, ptr %l26, !tbaa !23
  %t699 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t695, i32 %t696)
  store i32 %t699, ptr %l362
  br label %bb173
bb173:
  %t700 = load i32, ptr %l362, !range !{i32 0, i32 33}
  %t702 = trunc i64 22 to i32
  %t703 = icmp eq i32 %t700, %t702
  br i1 %t703, label %bb174, label %bb175
bb174:
  %t705 = load ptr, ptr %l5, !tbaa !29
  store ptr %t705, ptr %l365, !tbaa !29
  %t706 = load ptr, ptr %l5, !tbaa !29
  %t707 = load i32, ptr %l26, !tbaa !23
  %t710 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t706, i32 %t707)
  store i32 %t710, ptr %l368
  br label %bb176
bb175:
  %t711 = load i32, ptr %l26, !tbaa !23
  %t712 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t715 = icmp ne i32 %t711, %t712
  br i1 %t715, label %bb195, label %bb196
bb176:
  %t717 = load ptr, ptr %l365, !tbaa !29
  %t718 = load i32, ptr %l368, !tbaa !23
  %t719 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t717, i32 %t718)
  store { i64, ptr } %t719, ptr %l369
  br label %bb177
bb177:
  %t720 = load { i64, ptr }, ptr %l369, !tbaa !27
  store { i64, ptr } %t720, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t721 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t723 = extractvalue { i64, ptr } %t721, 0
  store i64 %t723, ptr %l40, !tbaa !24
  store i64 1, ptr %l41, !tbaa !24
  %t725 = load i64, ptr %l40, !tbaa !24
  %t726 = load i64, ptr %l39, !tbaa !24
  %t729 = icmp sgt i64 %t725, %t726
  br i1 %t729, label %bb178, label %bb179
bb178:
  %t731 = load i64, ptr %l41, !tbaa !24
  %t733 = icmp sgt i64 %t731, 0
  br i1 %t733, label %bb180, label %bb181
bb179:
  store i64 0, ptr %l375, !tbaa !24
  br label %bb183
bb180:
  %t735 = load i64, ptr %l40, !tbaa !24
  %t736 = load i64, ptr %l39, !tbaa !24
  %t739 = sub i64 %t735, %t736
  %t740 = load i64, ptr %l41, !tbaa !24
  %t743 = add i64 %t739, %t740
  %t745 = sub i64 %t743, 1
  %t746 = load i64, ptr %l41, !tbaa !24
  %t749 = sdiv i64 %t745, %t746
  store i64 %t749, ptr %l378, !tbaa !24
  br label %bb182
bb181:
  store i64 0, ptr %l378, !tbaa !24
  br label %bb182
bb182:
  %t751 = load i64, ptr %l378, !tbaa !24
  store i64 %t751, ptr %l375, !tbaa !24
  br label %bb183
bb183:
  %t752 = load i64, ptr %l375, !tbaa !24
  store i64 %t752, ptr %l42, !tbaa !24
  store i64 0, ptr %l43, !tbaa !24
  br label %bb184
bb184:
  store %olang.scope zeroinitializer, ptr %s36
  %t753 = load i64, ptr %l43, !tbaa !24
  %t754 = load i64, ptr %l42, !tbaa !24
  %t757 = icmp slt i64 %t753, %t754
  %t759 = xor i1 %t757, true
  br i1 %t759, label %bb185, label %bb186
bb185:
  call void @__olang_scope_close(ptr %s36)
  br label %bb194
bb186:
  br label %bb187
bb187:
  %t761 = load i64, ptr %l39, !tbaa !24
  %t762 = load i64, ptr %l43, !tbaa !24
  %t763 = load i64, ptr %l41, !tbaa !24
  %t766 = mul i64 %t762, %t763
  %t769 = add i64 %t761, %t766
  store i64 %t769, ptr %l44, !tbaa !24
  store ptr %l25, ptr %l396, !tbaa !29
  %t771 = load i64, ptr %l44, !tbaa !24
  %t773 = icmp sgt i64 %t771, 0
  br i1 %t773, label %bb188, label %bb189
bb188:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l399, !tbaa !27
  br label %bb190
bb189:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l399, !tbaa !27
  br label %bb190
bb190:
  %t775 = load ptr, ptr %l0, !tbaa !29
  %t776 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t776, ptr %l401, !tbaa !27
  %t777 = load i64, ptr %l44, !tbaa !24
  %t779 = getelementptr { i64, ptr }, ptr %l401, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !27
  %t781 = getelementptr i32, ptr %t780, i64 %t777
  %t782 = load i32, ptr %t781, !tbaa !33
  %t785 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s36, ptr %t775, i32 %t782, i1 true, i1 true, i1 false)
  store { i64, ptr } %t785, ptr %l404
  br label %bb191
bb191:
  %t786 = load { i64, ptr }, ptr %l399, !tbaa !27
  %t787 = extractvalue { i64, ptr } %t786, 1
  %t788 = extractvalue { i64, ptr } %t786, 0
  %t789 = load { i64, ptr }, ptr %l404, !tbaa !27
  %t790 = extractvalue { i64, ptr } %t789, 1
  %t791 = extractvalue { i64, ptr } %t789, 0
  %t792 = add i64 %t788, %t791
  %t793 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t792)
  call void @olang_textcopy(ptr %t793, ptr %t787, i64 %t788)
  %t794 = getelementptr i8, ptr %t793, i64 %t788
  call void @olang_textcopy(ptr %t794, ptr %t790, i64 %t791)
  %t795 = insertvalue { i64, ptr } undef, i64 %t792, 0
  %t796 = insertvalue { i64, ptr } %t795, ptr %t793, 1
  %t798 = extractvalue { i64, ptr } %t796, 0
  %t799 = extractvalue { i64, ptr } %t796, 1
  %t800 = mul i64 %t798, 1
  %t801 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t800)
  call void @llvm.memcpy.p0.p0.i64(ptr %t801, ptr %t799, i64 %t800, i1 false)
  %t802 = insertvalue { i64, ptr } undef, i64 %t798, 0
  %t803 = insertvalue { i64, ptr } %t802, ptr %t801, 1
  %t804 = load ptr, ptr %l396, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s36, ptr %t804, { i64, ptr } %t803)
  br label %bb192
bb192:
  call void @__olang_scope_close(ptr %s36)
  br label %bb193
bb193:
  %t806 = load i64, ptr %l43, !tbaa !24
  %t808 = add i64 %t806, 1
  store i64 %t808, ptr %l43, !tbaa !24
  br label %bb184
bb194:
  br label %bb213
bb195:
  store %olang.scope zeroinitializer, ptr %s40
  %t810 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t812 = extractvalue { i64, ptr } %t810, 0
  %t814 = icmp sgt i64 %t812, 0
  br i1 %t814, label %bb197, label %bb198
bb196:
  br label %bb212
bb197:
  %t816 = load ptr, ptr %l5, !tbaa !29
  %t817 = load i32, ptr %l26, !tbaa !23
  %t820 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t816, i32 %t817)
  store i32 %t820, ptr %l418
  br label %bb199
bb198:
  store i1 false, ptr %l415, !tbaa !21
  br label %bb200
bb199:
  %t821 = load i32, ptr %l418, !range !{i32 0, i32 33}
  %t823 = trunc i64 21 to i32
  %t824 = icmp eq i32 %t821, %t823
  store i1 %t824, ptr %l415, !tbaa !21
  br label %bb200
bb200:
  %t826 = load i1, ptr %l415, !tbaa !21
  br i1 %t826, label %bb201, label %bb202
bb201:
  %t827 = load ptr, ptr %l5, !tbaa !29
  store ptr %t827, ptr %l422, !tbaa !29
  %t828 = load ptr, ptr %l5, !tbaa !29
  %t829 = load i32, ptr %l26, !tbaa !23
  %t832 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t828, i32 %t829)
  store i32 %t832, ptr %l425
  br label %bb203
bb202:
  store i1 false, ptr %l421, !tbaa !21
  br label %bb205
bb203:
  %t833 = load ptr, ptr %l422, !tbaa !29
  %t834 = load i32, ptr %l425, !tbaa !23
  %t835 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s40, ptr %t833, i32 %t834)
  store { i64, ptr } %t835, ptr %l426
  br label %bb204
bb204:
  %t836 = load { i64, ptr }, ptr %l426, !tbaa !27
  %t837 = extractvalue { i64, ptr } %t836, 0
  %t839 = icmp eq i64 %t837, 0
  store i1 %t839, ptr %l421, !tbaa !21
  br label %bb205
bb205:
  %t841 = load i1, ptr %l421, !tbaa !21
  br i1 %t841, label %bb206, label %bb207
bb206:
  %t842 = load ptr, ptr %l5, !tbaa !29
  %t843 = load i32, ptr %l26, !tbaa !23
  %t846 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t842, i32 %t843)
  store i64 %t846, ptr %l432
  br label %bb208
bb207:
  store i1 false, ptr %l429, !tbaa !21
  br label %bb209
bb208:
  %t847 = load i64, ptr %l432, !tbaa !24
  %t848 = icmp eq i64 %t847, 0
  store i1 %t848, ptr %l429, !tbaa !21
  br label %bb209
bb209:
  %t850 = load i1, ptr %l429, !tbaa !21
  store ptr %l25, ptr %l434, !tbaa !29
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t852 = load i32, ptr %l26, !tbaa !23
  %t857 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s40, ptr %t851, i32 %t852, i1 true, i1 true, i1 %t850)
  store { i64, ptr } %t857, ptr %l438
  br label %bb210
bb210:
  %t858 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t859 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t860 = load { i64, ptr }, ptr %l438, !tbaa !27
  %t861 = extractvalue { i64, ptr } %t860, 1
  %t862 = extractvalue { i64, ptr } %t860, 0
  %t863 = add i64 %t859, %t862
  %t864 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t863)
  call void @olang_textcopy(ptr %t864, ptr %t858, i64 %t859)
  %t865 = getelementptr i8, ptr %t864, i64 %t859
  call void @olang_textcopy(ptr %t865, ptr %t861, i64 %t862)
  %t866 = insertvalue { i64, ptr } undef, i64 %t863, 0
  %t867 = insertvalue { i64, ptr } %t866, ptr %t864, 1
  %t869 = extractvalue { i64, ptr } %t867, 0
  %t870 = extractvalue { i64, ptr } %t867, 1
  %t871 = mul i64 %t869, 1
  %t872 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t871)
  call void @llvm.memcpy.p0.p0.i64(ptr %t872, ptr %t870, i64 %t871, i1 false)
  %t873 = insertvalue { i64, ptr } undef, i64 %t869, 0
  %t874 = insertvalue { i64, ptr } %t873, ptr %t872, 1
  %t875 = load ptr, ptr %l434, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s40, ptr %t875, { i64, ptr } %t874)
  br label %bb211
bb211:
  call void @__olang_scope_close(ptr %s40)
  br label %bb212
bb212:
  br label %bb213
bb213:
  %t877 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t879 = extractvalue { i64, ptr } %t877, 0
  %t881 = icmp sgt i64 %t879, 0
  br i1 %t881, label %bb214, label %bb215
bb214:
  store %olang.scope zeroinitializer, ptr %s42
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s42, ptr %l25, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb216
bb215:
  br label %bb235
bb216:
  store i64 0, ptr %l46, !tbaa !24
  %t884 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t886 = extractvalue { i64, ptr } %t884, 0
  store i64 %t886, ptr %l47, !tbaa !24
  store i64 1, ptr %l48, !tbaa !24
  %t888 = load i64, ptr %l47, !tbaa !24
  %t889 = load i64, ptr %l46, !tbaa !24
  %t892 = icmp sgt i64 %t888, %t889
  br i1 %t892, label %bb217, label %bb218
bb217:
  %t894 = load i64, ptr %l48, !tbaa !24
  %t896 = icmp sgt i64 %t894, 0
  br i1 %t896, label %bb219, label %bb220
bb218:
  store i64 0, ptr %l450, !tbaa !24
  br label %bb222
bb219:
  %t898 = load i64, ptr %l47, !tbaa !24
  %t899 = load i64, ptr %l46, !tbaa !24
  %t902 = sub i64 %t898, %t899
  %t903 = load i64, ptr %l48, !tbaa !24
  %t906 = add i64 %t902, %t903
  %t908 = sub i64 %t906, 1
  %t909 = load i64, ptr %l48, !tbaa !24
  %t912 = sdiv i64 %t908, %t909
  store i64 %t912, ptr %l453, !tbaa !24
  br label %bb221
bb220:
  store i64 0, ptr %l453, !tbaa !24
  br label %bb221
bb221:
  %t914 = load i64, ptr %l453, !tbaa !24
  store i64 %t914, ptr %l450, !tbaa !24
  br label %bb222
bb222:
  %t915 = load i64, ptr %l450, !tbaa !24
  store i64 %t915, ptr %l49, !tbaa !24
  store i64 0, ptr %l50, !tbaa !24
  br label %bb223
bb223:
  store %olang.scope zeroinitializer, ptr %s44
  %t916 = load i64, ptr %l50, !tbaa !24
  %t917 = load i64, ptr %l49, !tbaa !24
  %t920 = icmp slt i64 %t916, %t917
  %t922 = xor i1 %t920, true
  br i1 %t922, label %bb224, label %bb225
bb224:
  call void @__olang_scope_close(ptr %s44)
  br label %bb234
bb225:
  br label %bb226
bb226:
  %t924 = load i64, ptr %l46, !tbaa !24
  %t925 = load i64, ptr %l50, !tbaa !24
  %t926 = load i64, ptr %l48, !tbaa !24
  %t929 = mul i64 %t925, %t926
  %t932 = add i64 %t924, %t929
  store i64 %t932, ptr %l51, !tbaa !24
  store ptr %l25, ptr %l471, !tbaa !29
  %t934 = load i64, ptr %l51, !tbaa !24
  %t936 = icmp sgt i64 %t934, 0
  br i1 %t936, label %bb227, label %bb228
bb227:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l474, !tbaa !27
  br label %bb229
bb228:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l474, !tbaa !27
  br label %bb229
bb229:
  %t938 = load ptr, ptr %l0, !tbaa !29
  store ptr %t938, ptr %l475, !tbaa !29
  %t939 = load ptr, ptr %l5, !tbaa !29
  %t940 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t940, ptr %l477, !tbaa !27
  %t941 = load i64, ptr %l51, !tbaa !24
  %t943 = getelementptr { i64, ptr }, ptr %l477, i32 0, i32 1
  %t944 = load ptr, ptr %t943, !tbaa !27
  %t945 = getelementptr i32, ptr %t944, i64 %t941
  %t946 = load i32, ptr %t945, !tbaa !33
  %t949 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t939, i32 %t946)
  store i32 %t949, ptr %l480
  br label %bb230
bb230:
  %t950 = load ptr, ptr %l475, !tbaa !29
  %t951 = load i32, ptr %l480, !tbaa !23
  %t952 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s44, ptr %t950, i32 %t951, i1 true, i1 false, i1 false)
  store { i64, ptr } %t952, ptr %l481
  br label %bb231
bb231:
  %t953 = load { i64, ptr }, ptr %l474, !tbaa !27
  %t954 = extractvalue { i64, ptr } %t953, 1
  %t955 = extractvalue { i64, ptr } %t953, 0
  %t956 = load { i64, ptr }, ptr %l481, !tbaa !27
  %t957 = extractvalue { i64, ptr } %t956, 1
  %t958 = extractvalue { i64, ptr } %t956, 0
  %t959 = add i64 %t955, %t958
  %t960 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t959)
  call void @olang_textcopy(ptr %t960, ptr %t954, i64 %t955)
  %t961 = getelementptr i8, ptr %t960, i64 %t955
  call void @olang_textcopy(ptr %t961, ptr %t957, i64 %t958)
  %t962 = insertvalue { i64, ptr } undef, i64 %t959, 0
  %t963 = insertvalue { i64, ptr } %t962, ptr %t960, 1
  %t965 = extractvalue { i64, ptr } %t963, 0
  %t966 = extractvalue { i64, ptr } %t963, 1
  %t967 = mul i64 %t965, 1
  %t968 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t967)
  call void @llvm.memcpy.p0.p0.i64(ptr %t968, ptr %t966, i64 %t967, i1 false)
  %t969 = insertvalue { i64, ptr } undef, i64 %t965, 0
  %t970 = insertvalue { i64, ptr } %t969, ptr %t968, 1
  %t971 = load ptr, ptr %l471, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s44, ptr %t971, { i64, ptr } %t970)
  br label %bb232
bb232:
  call void @__olang_scope_close(ptr %s44)
  br label %bb233
bb233:
  %t973 = load i64, ptr %l50, !tbaa !24
  %t975 = add i64 %t973, 1
  store i64 %t975, ptr %l50, !tbaa !24
  br label %bb223
bb234:
  call void @__olang_scope_close(ptr %s42)
  br label %bb235
bb235:
  store ptr %l25, ptr %l486, !tbaa !29
  %t977 = load ptr, ptr %l5, !tbaa !29
  %t978 = load i32, ptr %l1, !tbaa !23
  %t980 = inttoptr i64 0 to ptr
  %t983 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %s25, ptr %t980, ptr %t977, i32 %t978)
  store { i64, ptr } %t983, ptr %l490
  br label %bb236
bb236:
  %t984 = load { i64, ptr }, ptr %l490, !tbaa !27
  %t985 = extractvalue { i64, ptr } %t984, 0
  %t986 = extractvalue { i64, ptr } %t984, 1
  %t987 = mul i64 %t985, 1
  %t988 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t987)
  call void @llvm.memcpy.p0.p0.i64(ptr %t988, ptr %t986, i64 %t987, i1 false)
  %t989 = insertvalue { i64, ptr } undef, i64 %t985, 0
  %t990 = insertvalue { i64, ptr } %t989, ptr %t988, 1
  %t991 = load ptr, ptr %l486, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s25, ptr %s25, ptr %t991, { i64, ptr } %t990)
  br label %bb237
bb237:
  %t993 = load i1, ptr %l29, !tbaa !21
  br i1 %t993, label %bb238, label %bb239
bb238:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s25, ptr %l25, i8 41)
  br label %bb240
bb239:
  br label %bb241
bb240:
  br label %bb241
bb241:
  %t997 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s25, ptr %v1, ptr %l25)
  store { i64, ptr } %t997, ptr %l495
  br label %bb242
bb242:
  call void @__olang_scope_close(ptr %s25)
  %t998 = load { i64, ptr }, ptr %l495, !tbaa !27
  store { i64, ptr } %t998, ptr %rv
  br label %ret
bb243:
  %t999 = load ptr, ptr %l5, !tbaa !29
  %t1000 = load i32, ptr %l1, !tbaa !23
  %t1002 = inttoptr i64 0 to ptr
  %t1005 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %t1002, ptr %t999, i32 %t1000)
  store { i64, ptr } %t1005, ptr %l499
  br label %bb244
bb244:
  %t1006 = load { i64, ptr }, ptr %l499, !tbaa !27
  store { i64, ptr } %t1006, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l46 = alloca i1
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l63 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 8
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 16
  store i1 %t26, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l16, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 18}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l20, !tbaa !21
  br i1 %t36, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb56
bb18:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t38 = load ptr, ptr %l23, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb19, label %bb20
bb19:
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 6
  store i1 %t44, ptr %l24, !tbaa !21
  br label %bb20
bb20:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb56
bb24:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb25, label %bb26
bb25:
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 2
  store i1 %t53, ptr %l28, !tbaa !21
  br label %bb26
bb26:
  %t54 = load i1, ptr %l28, !tbaa !21
  br i1 %t54, label %bb27, label %bb28
bb27:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l2, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t65 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %t61, ptr %t62)
  store i1 %t65, ptr %l35
  br label %bb30
bb30:
  %t66 = load i1, ptr %l35, !tbaa !21
  store i1 %t66, ptr %l6, !tbaa !21
  br label %bb56
bb31:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t68 = load ptr, ptr %l36, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb32, label %bb33
bb32:
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 18}
  %t74 = icmp eq i64 %t72, 9
  store i1 %t74, ptr %l37, !tbaa !21
  br label %bb33
bb33:
  %t75 = load i1, ptr %l37, !tbaa !21
  br i1 %t75, label %bb34, label %bb35
bb34:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t78, i32 0, i32 2
  %t80 = load i32, ptr %t79, !range !{i32 0, i32 52}
  store i32 %t80, ptr %l3
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [5 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t84, i32 0, i32 4
  %t86 = load { i64, ptr }, ptr %t85
  store { i64, ptr } %t86, ptr %l4, !tbaa !27
  br label %bb36
bb35:
  br label %bb44
bb36:
  %t88 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t90 = trunc i64 20 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb37, label %bb38
bb37:
  %t93 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = icmp eq i64 %t95, 1
  store i1 %t97, ptr %l46, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb39
bb39:
  %t99 = load i1, ptr %l46, !tbaa !21
  br i1 %t99, label %bb40, label %bb41
bb40:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l52, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr ptr, ptr %t103, i64 0
  %t105 = load ptr, ptr %t104, !tbaa !39
  %t108 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableMade(ptr %v0, ptr %v1, ptr %t100, ptr %t105)
  store i1 %t108, ptr %l54
  br label %bb42
bb41:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb43
bb42:
  %t109 = load i1, ptr %l54, !tbaa !21
  store i1 %t109, ptr %l50, !tbaa !21
  br label %bb43
bb43:
  %t110 = load i1, ptr %l50, !tbaa !21
  store i1 %t110, ptr %l6, !tbaa !21
  br label %bb56
bb44:
  %t111 = load ptr, ptr %l1, !tbaa !29
  store ptr %t111, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t112 = load ptr, ptr %l55, !tbaa !29
  %t113 = icmp ne ptr %t112, null
  br i1 %t113, label %bb45, label %bb46
bb45:
  %t115 = load ptr, ptr %l55, !tbaa !29
  %t116 = load i64, ptr %t115, !range !{i64 0, i64 18}
  %t118 = icmp eq i64 %t116, 17
  store i1 %t118, ptr %l56, !tbaa !21
  br label %bb46
bb46:
  %t119 = load i1, ptr %l56, !tbaa !21
  br i1 %t119, label %bb47, label %bb48
bb47:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l5, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l5, !tbaa !29
  %t130 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableMade(ptr %v0, ptr %v1, ptr %t126, ptr %t127)
  store i1 %t130, ptr %l63
  br label %bb50
bb50:
  %t131 = load i1, ptr %l63, !tbaa !21
  store i1 %t131, ptr %l6, !tbaa !21
  br label %bb56
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_a75b87f7fc6585db_9c37e910f1cfbc0f)
  unreachable
bb56:
  %t132 = load i1, ptr %l6, !tbaa !21
  store i1 %t132, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 3
  %t9 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %t3, i32 %a1, %"compiler/source:Span" %a2)
  store i32 %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etry(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca %"compiler/lower:tryCtx"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i32
  %l22 = alloca i1
  %l29 = alloca i32
  %l35 = alloca i64
  %l42 = alloca %"compiler/lower:tryCtx"
  %l52 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l63 = alloca %"compiler/lower:tryCtx"
  %l65 = alloca %"compiler/lower:tryCtx"
  %l69 = alloca { i64, [4 x i64] }
  %l70 = alloca %"compiler/lower:tryCtx"
  %l73 = alloca %"compiler/lower:tryCtx"
  %l74 = alloca i32
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i1
  %l84 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l91 = alloca %"compiler/mir:Lvalue"
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca ptr
  %l102 = alloca i64
  %l106 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l111 = alloca %"compiler/lower:relPath"
  %l113 = alloca %"compiler/lower:relPath"
  %l134 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t125 = alloca { i64, [4 x i64] }, align 8
  %t160 = alloca { i64, [15 x i64] }, align 8
  %t166 = alloca { i64, [21 x i64] }, align 8
  %t254 = alloca { i64, [4 x i64] }, align 8
  %t261 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %a1)
  store i32 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i32, ptr %l17, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t5 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t11 = icmp ne i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t17 = icmp ne i32 %t13, %t14
  store i1 %t17, ptr %l22, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l22, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l4, !tbaa !23
  %t22 = load %"compiler/source:Span", ptr %l3
  %t26 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t20, i32 %t21, %"compiler/source:Span" %t22)
  store i32 %t26, ptr %l29
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t27 = load i32, ptr %l29, !tbaa !23
  store i32 %t27, ptr %l5, !tbaa !23
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 38
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lower:lowering", ptr %t33, i32 0, i32 38
  store i64 -1, ptr %t35, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 12
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l35
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Try", ptr %t41, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Try", ptr %t45, i32 0, i32 2
  %t48 = load i1, ptr %t47, !tbaa !21
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Try", ptr %t49, i32 0, i32 3
  %t52 = load i1, ptr %t51, !tbaa !21
  %t53 = load i64, ptr %l35, !tbaa !24
  %t57 = call %"compiler/lower:tryCtx" @compiler_2flower_3atryCtx_2ector(ptr %v2, ptr %v0, i64 %t53, { i64, ptr } %t44, i1 %t48, i1 %t52)
  store %"compiler/lower:tryCtx" %t57, ptr %l42
  br label %bb10
bb10:
  %t58 = load %"compiler/lower:tryCtx", ptr %l42
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/lower:tryCtx" %t58, ptr %t59
  store ptr %t59, ptr %l7, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Try", ptr %t61, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t70 = load i64, ptr %l9, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t78 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t78, ptr %l52, !tbaa !27
  %t79 = load i64, ptr %l9, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr ptr, ptr %t82, i64 %t79
  %t84 = load ptr, ptr %t83, !tbaa !39
  store ptr %t84, ptr %l11, !tbaa !29
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/lower:tryCtx", ptr %t86, i32 0, i32 4
  %t89 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t88, i32 %t89)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t92 = load i64, ptr %l9, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l9, !tbaa !24
  br label %bb11
bb17:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/lower:lowering", ptr %t96, i32 0, i32 18
  store ptr %t98, ptr %l61, !tbaa !29
  %t99 = load ptr, ptr %l7, !tbaa !29
  %t101 = load %"compiler/lower:tryCtx", ptr %t99
  store %"compiler/lower:tryCtx" %t101, ptr %l63
  %t103 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %l63)
  store %"compiler/lower:tryCtx" %t103, ptr %l65
  br label %bb18
bb18:
  %t104 = load ptr, ptr %l61, !tbaa !29
  %t105 = load %"compiler/lower:tryCtx", ptr %l65
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t104, %"compiler/lower:tryCtx" %t105)
  br label %bb19
bb19:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Try", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t113 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v2, ptr %t106, ptr %t110)
  store { i64, [4 x i64] } %t113, ptr %l69
  br label %bb20
bb20:
  %t114 = load { i64, [4 x i64] }, ptr %l69
  store { i64, [4 x i64] } %t114, ptr %l12
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/lower:lowering", ptr %t115, i32 0, i32 18
  %t119 = call { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t117)
  %t120 = extractvalue { i32, %"compiler/lower:tryCtx" } %t119, 1
  %t121 = extractvalue { i32, %"compiler/lower:tryCtx" } %t119, 0
  store i32 %t121, ptr %l74
  %t122 = icmp ne i32 %t121, 0
  br i1 %t122, label %bb22, label %ok.123, !prof !99
ok.123:
  store %"compiler/lower:tryCtx" %t120, ptr %l73
  br label %bb21
bb21:
  %t124 = load %"compiler/lower:tryCtx", ptr %l73
  store %"compiler/lower:tryCtx" %t124, ptr %l70
  br label %bb24
bb22:
  br label %bb23
bb23:
  store { i64, [4 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 0
  store i64 0, ptr %t126
  %t127 = load { i64, [4 x i64] }, ptr %t125
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t127, ptr %rv
  br label %ret
bb24:
  %t129 = load %"compiler/lower:tryCtx", ptr %l70
  store %"compiler/lower:tryCtx" %t129, ptr %l13
  %t130 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l76
  br label %bb25
bb25:
  %t131 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l14
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/lower:lowering", ptr %t132, i32 0, i32 10
  %t135 = load i1, ptr %t134, !tbaa !21
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb26, label %bb27
bb26:
  %t139 = load i32, ptr %l5, !tbaa !23
  %t140 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t143 = icmp ne i32 %t139, %t140
  store i1 %t143, ptr %l80, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb28
bb28:
  %t145 = load i1, ptr %l80, !tbaa !21
  br i1 %t145, label %bb29, label %bb30
bb29:
  %t146 = load { i64, [4 x i64] }, ptr %l12
  %t148 = extractvalue { i64, [4 x i64] } %t146, 0
  %t149 = icmp eq i64 %t148, 0
  %t151 = xor i1 %t149, true
  store i1 %t151, ptr %l84, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb31
bb31:
  %t153 = load i1, ptr %l84, !tbaa !21
  br i1 %t153, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l88, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t155, ptr %l89
  %t156 = load i32, ptr %l5, !tbaa !23
  %t158 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t156)
  store %"compiler/mir:Lvalue" %t158, ptr %l91
  br label %bb34
bb33:
  br label %bb51
bb34:
  %t159 = load { i64, [4 x i64] }, ptr %l12
  store { i64, [15 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [15 x i64] }, ptr %t160, i32 0, i32 0
  store i64 0, ptr %t161
  %t163 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t159, 0
  %t164 = getelementptr { i64, [15 x i64] }, ptr %t160, i32 0, i32 1
  store { { i64, [4 x i64] } } %t163, ptr %t164
  %t165 = load { i64, [15 x i64] }, ptr %t160
  store { i64, [21 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [21 x i64] }, ptr %t166, i32 0, i32 0
  store i64 0, ptr %t167
  %t168 = load %"compiler/source:Span", ptr %l89
  %t169 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t168, 0
  %t170 = load %"compiler/mir:Lvalue", ptr %l91
  %t171 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t169, %"compiler/mir:Lvalue" %t170, 1
  %t173 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t171, { i64, [15 x i64] } %t165, 2
  %t174 = getelementptr { i64, [21 x i64] }, ptr %t166, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t173, ptr %t174
  %t175 = load { i64, [21 x i64] }, ptr %t166
  %t177 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 176, i64 8)
  store { i64, [21 x i64] } %t175, ptr %t177
  %t178 = load ptr, ptr %l88, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s6, ptr %t178, ptr %t177)
  br label %bb35
bb35:
  %t180 = load i64, ptr %l6, !tbaa !24
  %t182 = icmp sge i64 %t180, 0
  br i1 %t182, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t184 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l98
  br label %bb38
bb37:
  br label %bb50
bb38:
  %t185 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %l15
  store ptr %l15, ptr %l99, !tbaa !29
  %t186 = load i64, ptr %l6, !tbaa !24
  %t188 = ashr i64 %t186, 1
  %t190 = sub i64 %t188, 1
  store i64 %t190, ptr %l102, !tbaa !24
  %t191 = load i64, ptr %l6, !tbaa !24
  %t193 = and i64 %t191, 1
  %t195 = icmp eq i64 %t193, 1
  br i1 %t195, label %bb39, label %bb40
bb39:
  %t197 = mul i64 1, 8
  %t198 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 1, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  store { i64, ptr } %t200, ptr %l107, !tbaa !27
  %t201 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i64, ptr %t202, i64 0
  store i64 0, ptr %t203, !tbaa !34
  %t204 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t204, ptr %l106, !tbaa !27
  br label %bb45
bb40:
  %t205 = icmp sge i64 0, 0
  br i1 %t205, label %bb41, label %bb42
bb41:
  %t207 = icmp sle i64 0, 1152921504606846975
  br i1 %t207, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_2157f043f9fed58b_cfe589e7cd689437)
  unreachable
bb43:
  %t209 = mul i64 0, 8
  %t210 = insertvalue { i64, ptr } undef, i64 0, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t211, ptr %l106, !tbaa !27
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_2157f043f9fed58b_cfe589e7cd689437)
  unreachable
bb45:
  %t213 = load i64, ptr %l102, !tbaa !24
  %t214 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t215 = call %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %s7, i64 %t213, { i64, ptr } %t214)
  store %"compiler/lower:relPath" %t215, ptr %l111
  br label %bb46
bb46:
  %t217 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s7, ptr %l111)
  store %"compiler/lower:relPath" %t217, ptr %l113
  br label %bb47
bb47:
  %t218 = load ptr, ptr %l99, !tbaa !29
  %t219 = load %"compiler/lower:relPath", ptr %l113
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %s7, ptr %s7, ptr %t218, %"compiler/lower:relPath" %t219)
  br label %bb48
bb48:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l5, !tbaa !23
  %t222 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %s7, ptr %t220, i32 %t221, ptr %l15, %"compiler/source:Span" %t222)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s6)
  br label %bb51
bb51:
  %t227 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t227, ptr %l14)
  br label %bb52
bb52:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load %"compiler/lower:tryCtx", ptr %l13
  %t232 = load ptr, ptr %l2, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Try", ptr %t232, i32 0, i32 1
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  %t236 = load i32, ptr %l5, !tbaa !23
  %t237 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eclauses(ptr %v0, ptr %s0, ptr %v2, ptr %s0, ptr %t230, %"compiler/lower:tryCtx" %t231, { i64, ptr } %t235, i32 %t236, i32 %t237, ptr %l14)
  br label %bb53
bb53:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t244, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245)
  br label %bb54
bb54:
  %t248 = load i32, ptr %l5, !tbaa !23
  %t249 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t252 = icmp eq i32 %t248, %t249
  br i1 %t252, label %bb55, label %bb56
bb55:
  store { i64, [4 x i64] } zeroinitializer, ptr %t254
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t254, i32 0, i32 0
  store i64 0, ptr %t255
  %t256 = load { i64, [4 x i64] }, ptr %t254
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t256, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t258 = load i32, ptr %l5, !tbaa !23
  %t260 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t258)
  store %"compiler/mir:Lvalue" %t260, ptr %l134
  br label %bb58
bb58:
  store { i64, [4 x i64] } zeroinitializer, ptr %t261
  %t262 = getelementptr { i64, [4 x i64] }, ptr %t261, i32 0, i32 0
  store i64 1, ptr %t262
  %t263 = load %"compiler/mir:Lvalue", ptr %l134
  %t264 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t263, 0
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t261, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t264, ptr %t265
  %t266 = load { i64, [4 x i64] }, ptr %t261
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t266, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopyAt(ptr %v0, ptr %a0, i32 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [1 x i64] }
  %l6 = alloca i1
  %l9 = alloca i1
  %l18 = alloca { i64, ptr }
  %l24 = alloca { i64, [1 x i64] }
  %l30 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
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
  br label %bb3
bb2:
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = icmp slt i32 %t8, 0
  store i1 %t10, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
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
  store i1 %t25, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l9, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t28, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:lowering", ptr %t30, i32 0, i32 30
  %t33 = getelementptr %"compiler/typed:Plan", ptr %t32, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l18, !tbaa !27
  %t35 = load i32, ptr %l1, !tbaa !23
  %t37 = sext i32 %t35 to i64
  %t39 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i64 %t37
  %t42 = load { i64, [2 x i64] }, ptr %t41
  %t44 = extractvalue { i64, [2 x i64] } %t42, 0
  %t45 = icmp eq i64 %t44, 0
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t47, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t49 = load { i64, [1 x i64] }, ptr %l2
  %t51 = extractvalue { i64, [1 x i64] } %t49, 0
  %t52 = icmp eq i64 %t51, 4
  br i1 %t52, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t54 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t54, ptr %l24
  br label %bb22
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l1, !tbaa !23
  %t60 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t56, i32 %t57)
  store { i64, [1 x i64] } %t60, ptr %l30
  br label %bb20
bb20:
  %t61 = load { i64, [1 x i64] }, ptr %l30
  store { i64, [1 x i64] } %t61, ptr %l24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bb1504b15760d782_b7e8158da83f39e)
  unreachable
bb22:
  %t62 = load { i64, [1 x i64] }, ptr %l24
  store { i64, [1 x i64] } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eviewLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l41 = alloca i1
  %l45 = alloca i1
  %l50 = alloca i1
  %l54 = alloca ptr
  %l57 = alloca i1
  %l59 = alloca ptr
  %l64 = alloca %"compiler/typed:Local"
  %l66 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i64
  %l76 = alloca ptr
  %l78 = alloca i64
  %l83 = alloca %"compiler/typed:Local"
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l91 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l100 = alloca ptr
  %l105 = alloca %"compiler/typed:Local"
  %l111 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i64
  %l124 = alloca ptr
  %l126 = alloca i64
  %l131 = alloca %"compiler/typed:Local"
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l137 = alloca { i64, ptr }
  %l145 = alloca ptr
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i64, ptr %l13, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l20, !tbaa !24
  store i64 %t36, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l17, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb60
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 44
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t58, i64 %t59)
  store i1 %t62, ptr %l41
  br label %bb12
bb12:
  %t63 = load i1, ptr %l41, !tbaa !21
  br i1 %t63, label %bb13, label %bb14
bb13:
  br label %bb59
bb14:
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t66 = load i64, ptr %l7, !tbaa !24
  %t70 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCand(ptr %v0, ptr %v1, ptr %t64, ptr %t65, i64 %t66)
  store i1 %t70, ptr %l45
  br label %bb16
bb16:
  %t71 = load i1, ptr %l45, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/lower:lowering", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/lower:Lowerer", ptr %t77, i32 0, i32 32
  %t80 = load i1, ptr %t79, !tbaa !21
  br i1 %t80, label %bb19, label %bb20
bb18:
  br label %bb37
bb19:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:LocalUses", ptr %t82, i32 0, i32 9
  %t85 = load i64, ptr %l7, !tbaa !24
  %t88 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %s4, ptr %t84, i64 %t85)
  store ptr %t88, ptr %l54
  br label %bb21
bb20:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb22
bb21:
  %t89 = load ptr, ptr %l54, !tbaa !29
  %t90 = icmp eq ptr %t89, null
  %t92 = xor i1 %t90, true
  store i1 %t92, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t94 = load i1, ptr %l50, !tbaa !21
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/lower:lowering", ptr %t95, i32 0, i32 2
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l59, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lower:lowering", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Body", ptr %t102, i32 0, i32 7
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t104, i64 %t105)
  store %"compiler/typed:Local" %t108, ptr %l64
  br label %bb25
bb24:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb27
bb25:
  %t109 = getelementptr %"compiler/typed:Local", ptr %l64, i32 0, i32 2
  %t110 = load i32, ptr %t109, !tbaa !23
  %t111 = load ptr, ptr %l59, !tbaa !29
  %t113 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %t111, i32 %t110)
  store i1 %t113, ptr %l66
  br label %bb26
bb26:
  %t114 = load i1, ptr %l66, !tbaa !21
  store i1 %t114, ptr %l57, !tbaa !21
  br label %bb27
bb27:
  %t115 = load i1, ptr %l57, !tbaa !21
  br i1 %t115, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/lower:lowering", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/lower:Lowerer", ptr %t119, i32 0, i32 33
  store ptr %t121, ptr %l69, !tbaa !29
  %t122 = ptrtoint ptr %v0 to i64
  store i64 %t122, ptr %l70, !tbaa !24
  %t123 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t123, label %bb30, label %bb31
bb29:
  br label %bb36
bb30:
  %t125 = call ptr @__olang_region_make(ptr %v0)
  %t126 = ptrtoint ptr %t125 to i64
  store i64 %t126, ptr %l70, !tbaa !24
  br label %bb31
bb31:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 0
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/lower:Lowerer", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 0
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/load:Loader", ptr %t136, i32 0, i32 4
  %t139 = load ptr, ptr %t138, !tbaa !29
  store ptr %t139, ptr %l76, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/lower:lowering", ptr %t140, i32 0, i32 7
  %t143 = load i64, ptr %t142, !tbaa !24
  store i64 %t143, ptr %l78, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/lower:lowering", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t147, i32 0, i32 7
  %t150 = load i64, ptr %l7, !tbaa !24
  %t153 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t149, i64 %t150)
  store %"compiler/typed:Local" %t153, ptr %l83
  br label %bb32
bb32:
  %t154 = getelementptr %"compiler/typed:Local", ptr %l83, i32 0, i32 1
  %t155 = getelementptr %"compiler/source:Span", ptr %t154, i32 0, i32 0
  %t156 = load i32, ptr %t155, !tbaa !23
  %t158 = sext i32 %t156 to i64
  %t159 = load ptr, ptr %l76, !tbaa !29
  %t160 = load i64, ptr %l78, !tbaa !24
  %t162 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s5, ptr %t159, i64 %t160, i64 %t158)
  store { i64, ptr } %t162, ptr %l86
  br label %bb33
bb33:
  %t163 = load i64, ptr %l7, !tbaa !24
  store i64 %t163, ptr %l87, !tbaa !24
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t166 = load i64, ptr %l7, !tbaa !24
  %t170 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ewhyNot(ptr %v0, ptr %v1, ptr %s5, ptr %t164, ptr %t165, i64 %t166)
  store { i64, ptr } %t170, ptr %l91
  br label %bb34
bb34:
  %t171 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t177 = load i64, ptr %l87, !tbaa !24
  %t178 = call i64 @__olang_fmt_i64(ptr null, i64 %t177)
  %t179 = add i64 %t176, %t178
  %t180 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = add i64 %t182, %t185
  %t187 = load i64, ptr %l70
  %t188 = inttoptr i64 %t187 to ptr
  %t189 = call ptr @__olang_scope_alloc(ptr %t188, i64 %t186)
  call void @olang_textcopy(ptr %t189, ptr %t172, i64 %t173)
  %t190 = getelementptr i8, ptr %t189, i64 %t173
  call void @olang_textcopy(ptr %t190, ptr %t174, i64 %t175)
  %t191 = getelementptr i8, ptr %t190, i64 %t175
  %t192 = call i64 @__olang_fmt_i64(ptr %t191, i64 %t177)
  %t193 = getelementptr i8, ptr %t191, i64 %t178
  call void @olang_textcopy(ptr %t193, ptr %t180, i64 %t181)
  %t194 = getelementptr i8, ptr %t193, i64 %t181
  call void @olang_textcopy(ptr %t194, ptr %t184, i64 %t185)
  %t195 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t189, 1
  %t198 = load i64, ptr %l70
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = extractvalue { i64, ptr } %t196, 0
  %t201 = extractvalue { i64, ptr } %t196, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %t199, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  %t206 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t206, { i64, ptr } %t205)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb37:
  %t208 = load ptr, ptr %l1, !tbaa !29
  %t210 = getelementptr %"compiler/typed:LocalUses", ptr %t208, i32 0, i32 9
  %t211 = load i64, ptr %l7, !tbaa !24
  %t214 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %v1, ptr %t210, i64 %t211)
  store ptr %t214, ptr %l97
  br label %bb38
bb38:
  %t215 = load ptr, ptr %l97, !tbaa !29
  store ptr %t215, ptr %l8, !tbaa !29
  %t216 = load ptr, ptr %l8, !tbaa !29
  %t218 = icmp eq ptr %t216, null
  br i1 %t218, label %bb39, label %bb40
bb39:
  br label %bb59
bb40:
  br label %bb41
bb41:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l100, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/lower:lowering", ptr %t221, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Body", ptr %t224, i32 0, i32 7
  %t227 = load i64, ptr %l7, !tbaa !24
  %t230 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t226, i64 %t227)
  store %"compiler/typed:Local" %t230, ptr %l105
  br label %bb42
bb42:
  %t231 = getelementptr %"compiler/typed:Local", ptr %l105, i32 0, i32 3
  %t232 = load i32, ptr %t231, !tbaa !23
  %t234 = load ptr, ptr %l100, !tbaa !29
  %t235 = getelementptr %"compiler/lower:lowering", ptr %t234, i32 0, i32 53
  store i32 %t232, ptr %t235, !tbaa !23
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t238 = load ptr, ptr %l8, !tbaa !29
  %t239 = load i64, ptr %l7, !tbaa !24
  %t244 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewInit(ptr %v0, ptr %v1, ptr %v1, ptr %t236, ptr %t237, ptr %t238, i64 %t239)
  store i1 %t244, ptr %l111
  br label %bb43
bb43:
  %t245 = load i1, ptr %l111, !tbaa !21
  store i1 %t245, ptr %l9, !tbaa !21
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/lower:lowering", ptr %t246, i32 0, i32 0
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/lower:Lowerer", ptr %t249, i32 0, i32 32
  %t252 = load i1, ptr %t251, !tbaa !21
  br i1 %t252, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/lower:lowering", ptr %t254, i32 0, i32 0
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/lower:Lowerer", ptr %t257, i32 0, i32 33
  store ptr %t259, ptr %l117, !tbaa !29
  %t260 = ptrtoint ptr %v0 to i64
  store i64 %t260, ptr %l118, !tbaa !24
  %t261 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t261, label %bb46, label %bb47
bb45:
  br label %bb54
bb46:
  %t263 = call ptr @__olang_region_make(ptr %v0)
  %t264 = ptrtoint ptr %t263 to i64
  store i64 %t264, ptr %l118, !tbaa !24
  br label %bb47
bb47:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/lower:lowering", ptr %t265, i32 0, i32 0
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/lower:Lowerer", ptr %t268, i32 0, i32 0
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/generic:Program", ptr %t271, i32 0, i32 0
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = getelementptr %"compiler/load:Loader", ptr %t274, i32 0, i32 4
  %t277 = load ptr, ptr %t276, !tbaa !29
  store ptr %t277, ptr %l124, !tbaa !29
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/lower:lowering", ptr %t278, i32 0, i32 7
  %t281 = load i64, ptr %t280, !tbaa !24
  store i64 %t281, ptr %l126, !tbaa !24
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/lower:lowering", ptr %t282, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Body", ptr %t285, i32 0, i32 7
  %t288 = load i64, ptr %l7, !tbaa !24
  %t291 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t287, i64 %t288)
  store %"compiler/typed:Local" %t291, ptr %l131
  br label %bb48
bb48:
  %t292 = getelementptr %"compiler/typed:Local", ptr %l131, i32 0, i32 1
  %t293 = getelementptr %"compiler/source:Span", ptr %t292, i32 0, i32 0
  %t294 = load i32, ptr %t293, !tbaa !23
  %t296 = sext i32 %t294 to i64
  %t297 = load ptr, ptr %l124, !tbaa !29
  %t298 = load i64, ptr %l126, !tbaa !24
  %t300 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s8, ptr %t297, i64 %t298, i64 %t296)
  store { i64, ptr } %t300, ptr %l134
  br label %bb49
bb49:
  %t301 = load i64, ptr %l7, !tbaa !24
  store i64 %t301, ptr %l135, !tbaa !24
  %t302 = load i1, ptr %l9, !tbaa !21
  br i1 %t302, label %bb50, label %bb51
bb50:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l137, !tbaa !27
  br label %bb52
bb51:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l137, !tbaa !27
  br label %bb52
bb52:
  %t304 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t308 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t309 = add i64 %t306, %t308
  %t310 = load i64, ptr %l135, !tbaa !24
  %t311 = call i64 @__olang_fmt_i64(ptr null, i64 %t310)
  %t312 = add i64 %t309, %t311
  %t313 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  %t316 = add i64 %t312, %t315
  %t317 = load i64, ptr %l118
  %t318 = inttoptr i64 %t317 to ptr
  %t319 = call ptr @__olang_scope_alloc(ptr %t318, i64 %t316)
  call void @olang_textcopy(ptr %t319, ptr %t305, i64 %t306)
  %t320 = getelementptr i8, ptr %t319, i64 %t306
  call void @olang_textcopy(ptr %t320, ptr %t307, i64 %t308)
  %t321 = getelementptr i8, ptr %t320, i64 %t308
  %t322 = call i64 @__olang_fmt_i64(ptr %t321, i64 %t310)
  %t323 = getelementptr i8, ptr %t321, i64 %t311
  call void @olang_textcopy(ptr %t323, ptr %t314, i64 %t315)
  %t324 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t319, 1
  %t327 = load i64, ptr %l118
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = extractvalue { i64, ptr } %t325, 0
  %t330 = extractvalue { i64, ptr } %t325, 1
  %t331 = mul i64 %t329, 1
  %t332 = call ptr @__olang_scope_alloc(ptr %t328, i64 %t331)
  call void @llvm.memcpy.p0.p0.i64(ptr %t332, ptr %t330, i64 %t331, i1 false)
  %t333 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  %t335 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t335, { i64, ptr } %t334)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s8)
  br label %bb54
bb54:
  %t337 = load i1, ptr %l9, !tbaa !21
  br i1 %t337, label %bb55, label %bb56
bb55:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/lower:lowering", ptr %t339, i32 0, i32 45
  %t342 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t341, i64 %t342, i1 true)
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/lower:lowering", ptr %t345, i32 0, i32 0
  %t348 = load ptr, ptr %t347, !tbaa !29
  store ptr %t348, ptr %l145, !tbaa !29
  %t349 = load ptr, ptr %l145, !tbaa !29
  %t350 = getelementptr %"compiler/lower:Lowerer", ptr %t349, i32 0, i32 26
  %t351 = load i64, ptr %t350, !tbaa !24
  %t353 = add i64 %t351, 1
  %t355 = load ptr, ptr %l145, !tbaa !29
  %t356 = getelementptr %"compiler/lower:Lowerer", ptr %t355, i32 0, i32 26
  store i64 %t353, ptr %t356, !tbaa !24
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t357 = load i64, ptr %l6, !tbaa !24
  %t359 = add i64 %t357, 1
  store i64 %t359, ptr %l6, !tbaa !24
  br label %bb8
bb60:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewaits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l27 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eholderOf(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store ptr %a2, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l6, !tbaa !24
  store i64 %t14, ptr %l16, !tbaa !24
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l18
  br label %bb6
bb6:
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = load i64, ptr %l18, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %bb28
bb8:
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t24, i64 %t25)
  store i64 %t28, ptr %l23
  br label %bb10
bb10:
  %t29 = load i64, ptr %l23, !tbaa !24
  store i64 %t29, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = icmp eq i64 %t30, %t31
  br i1 %t34, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb14
bb12:
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v2, ptr %a3, i64 %t37)
  store i1 %t40, ptr %l30
  br label %bb13
bb13:
  %t41 = load i1, ptr %l30, !tbaa !21
  store i1 %t41, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l27, !tbaa !21
  br i1 %t42, label %bb15, label %bb16
bb15:
  br label %bb27
bb16:
  br label %bb17
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eholderOf(ptr %v0, ptr %t43, i64 %t44)
  store i64 %t47, ptr %l33
  br label %bb18
bb18:
  %t48 = load i64, ptr %l33, !tbaa !24
  store i64 %t48, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp sge i64 %t49, 0
  br i1 %t51, label %bb19, label %bb20
bb19:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eholds(ptr %v0, ptr %v0, ptr %t53)
  store ptr %t55, ptr %l38
  br label %bb21
bb20:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb23
bb21:
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load ptr, ptr %l38, !tbaa !29
  %t61 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %v0, ptr %t58, i64 %t56, i64 %t57)
  store i1 %t61, ptr %l41
  br label %bb22
bb22:
  %t62 = load i1, ptr %l41, !tbaa !21
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t63 = load i1, ptr %l36, !tbaa !21
  br i1 %t63, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t65 = load i64, ptr %l6, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l6, !tbaa !24
  br label %bb5
bb28:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eweakPlace(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca i64
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca i64
  %l17 = alloca { i64, [1 x i64] }
  %l25 = alloca ptr
  %l27 = alloca ptr
  %l32 = alloca i32
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 1
  %t3 = load i32, ptr %t2, !tbaa !23
  %t5 = sext i32 %t3 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 3
  %t15 = getelementptr %"compiler/mir:Fn", ptr %t14, i32 0, i32 10
  %t16 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t17 = getelementptr %"compiler/mir:Range", ptr %t16, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t29 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t15, i64 %t26)
  store { i64, [1 x i64] } %t29, ptr %l17
  br label %bb4
bb4:
  %t30 = load { i64, [1 x i64] }, ptr %l17
  store { i64, [1 x i64] } %t30, ptr %l3
  %t31 = load { i64, [1 x i64] }, ptr %l3
  %t33 = extractvalue { i64, [1 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 0
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t40 = getelementptr { i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  store i64 %t41, ptr %l4, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t46)
  store ptr %t48, ptr %l25
  br label %bb8
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lower:lowering", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l27, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/mir:Lvalue", ptr %l1
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = sub i64 %t55, 1
  %t61 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %t53, %"compiler/mir:Lvalue" %t54, i64 %t57)
  store i32 %t61, ptr %l32
  br label %bb9
bb9:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load ptr, ptr %l25, !tbaa !29
  %t64 = load ptr, ptr %l27, !tbaa !29
  %t65 = load i32, ptr %l32, !tbaa !23
  %t67 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t63, ptr %t64, i32 %t65, i64 %t62)
  store i1 %t67, ptr %l34
  br label %bb10
bb10:
  %t68 = load i1, ptr %l34, !tbaa !21
  store i1 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [15 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eweakWords(ptr %v0, ptr %a0, { i64, [15 x i64] } %a1, i1 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [15 x i64] }
  %l6 = alloca i64
  %l7 = alloca %"compiler/mir:Range"
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca %"compiler/mir:Range"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l31 = alloca i1
  %l38 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca %"compiler/mir:Range"
  %l49 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l79 = alloca i64
  %l82 = alloca %"compiler/mir:Range"
  %l87 = alloca { i64, [4 x i64] }
  %l92 = alloca i1
  %l95 = alloca ptr
  %l100 = alloca i1
  %l102 = alloca i64
  %l110 = alloca { i64, [4 x i64] }
  %l114 = alloca { i64, [15 x i64] }
  %l115 = alloca i32
  %l116 = alloca i64
  %l120 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [15 x i64] }
  %t17 = alloca { i64, [15 x i64] }, align 8
  %t207 = alloca { i64, [15 x i64] }, align 8
  %t241 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load { i64, [15 x i64] }, ptr %l1
  %t5 = extractvalue { i64, [15 x i64] } %t3, 0
  %t6 = icmp eq i64 %t5, 0
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  %t10 = load { i64, [15 x i64] }, ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store { i64, [15 x i64] } %t10, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t13 = getelementptr { { i64, [4 x i64] } }, ptr %t12, i32 0, i32 0
  %t14 = load { i64, [4 x i64] }, ptr %t13
  store { i64, [15 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [15 x i64] }, ptr %t17, i32 0, i32 0
  store i64 22, ptr %t18
  %t20 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t14, 0
  %t21 = getelementptr { i64, [15 x i64] }, ptr %t17, i32 0, i32 1
  store { { i64, [4 x i64] } } %t20, ptr %t21
  %t22 = load { i64, [15 x i64] }, ptr %t17
  call void @__olang_scope_close(ptr %s0)
  store { i64, [15 x i64] } %t22, ptr %rv
  br label %ret
bb6:
  %t24 = load { i64, [15 x i64] }, ptr %l1
  %t26 = extractvalue { i64, [15 x i64] } %t24, 0
  %t27 = icmp eq i64 %t26, 6
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb10
bb8:
  %t31 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t32 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32
  %t35 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t35, i32 0, i32 1
  %t37 = load i64, ptr %t36
  store i64 %t37, ptr %l6, !tbaa !24
  %t39 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t40 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t39, i32 0, i32 2
  %t41 = load %"compiler/mir:Range", ptr %t40
  store %"compiler/mir:Range" %t41, ptr %l7
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t43, i32 0, i32 2
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t50 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t46, i32 %t33)
  store i1 %t50, ptr %l38
  br label %bb9
bb9:
  %t51 = load i1, ptr %l38, !tbaa !21
  %t52 = xor i1 %t51, true
  store i1 %t52, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t55 = load { i64, [15 x i64] }, ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store { i64, [15 x i64] } %t55, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t57 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t58 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t57, i32 0, i32 0
  %t59 = load i32, ptr %t58
  store i32 %t59, ptr %l8, !tbaa !23
  %t61 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t62 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t61, i32 0, i32 1
  %t63 = load i64, ptr %t62
  store i64 %t63, ptr %l9, !tbaa !24
  %t65 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t66 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t65, i32 0, i32 2
  %t67 = load %"compiler/mir:Range", ptr %t66
  store %"compiler/mir:Range" %t67, ptr %l10
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l8, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t69, i32 %t70)
  store { i64, ptr } %t73, ptr %l46
  br label %bb14
bb14:
  %t74 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t74, ptr %l11, !tbaa !27
  %t75 = load %"compiler/mir:Range", ptr %l10
  store %"compiler/mir:Range" %t75, ptr %l47
  %t76 = getelementptr %"compiler/mir:Range", ptr %l47, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  store i64 %t79, ptr %l49, !tbaa !24
  %t80 = load i64, ptr %l49, !tbaa !24
  %t81 = icmp sge i64 %t80, 0
  br i1 %t81, label %bb15, label %bb16
bb15:
  %t83 = load i64, ptr %l49, !tbaa !24
  %t84 = icmp sle i64 %t83, 230584300921369395
  br i1 %t84, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_6c482c7ec97e38b7_62c9b82b542e8403)
  unreachable
bb17:
  %t86 = load i64, ptr %l49, !tbaa !24
  %t87 = mul i64 %t86, 40
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l12, !tbaa !27
  store i1 false, ptr %l13, !tbaa !21
  store i64 0, ptr %l14, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t96 = load i64, ptr %l15, !tbaa !24
  %t97 = load i64, ptr %l14, !tbaa !24
  %t100 = icmp sgt i64 %t96, %t97
  br i1 %t100, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_6c482c7ec97e38b7_62c9b82b542e8403)
  unreachable
bb19:
  %t102 = load i64, ptr %l16, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb24
bb21:
  %t106 = load i64, ptr %l15, !tbaa !24
  %t107 = load i64, ptr %l14, !tbaa !24
  %t110 = sub i64 %t106, %t107
  %t111 = load i64, ptr %l16, !tbaa !24
  %t114 = add i64 %t110, %t111
  %t116 = sub i64 %t114, 1
  %t117 = load i64, ptr %l16, !tbaa !24
  %t120 = sdiv i64 %t116, %t117
  store i64 %t120, ptr %l61, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb23
bb23:
  %t122 = load i64, ptr %l61, !tbaa !24
  store i64 %t122, ptr %l58, !tbaa !24
  br label %bb24
bb24:
  %t123 = load i64, ptr %l58, !tbaa !24
  store i64 %t123, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb25
bb25:
  %t124 = load i64, ptr %l18, !tbaa !24
  %t125 = load i64, ptr %l17, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb26, label %bb27
bb26:
  br label %bb40
bb27:
  br label %bb28
bb28:
  %t132 = load i64, ptr %l14, !tbaa !24
  %t133 = load i64, ptr %l18, !tbaa !24
  %t134 = load i64, ptr %l16, !tbaa !24
  %t137 = mul i64 %t133, %t134
  %t140 = add i64 %t132, %t137
  store i64 %t140, ptr %l19, !tbaa !24
  %t142 = load i64, ptr %l19, !tbaa !24
  store i64 %t142, ptr %l79, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/lower:lowering", ptr %t143, i32 0, i32 3
  %t146 = getelementptr %"compiler/mir:Fn", ptr %t145, i32 0, i32 11
  %t147 = load %"compiler/mir:Range", ptr %l10
  store %"compiler/mir:Range" %t147, ptr %l82
  %t148 = getelementptr %"compiler/mir:Range", ptr %l82, i32 0, i32 0
  %t149 = load i32, ptr %t148, !tbaa !23
  %t151 = sext i32 %t149 to i64
  %t152 = load i64, ptr %l19, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t158 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t146, i64 %t155)
  store { i64, [4 x i64] } %t158, ptr %l87
  br label %bb29
bb29:
  %t159 = load { i64, [4 x i64] }, ptr %l87
  %t160 = load i64, ptr %l79, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t162, i64 %t160
  store { i64, [4 x i64] } %t159, ptr %t163
  %t164 = load i64, ptr %l19, !tbaa !24
  %t165 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t170 = icmp sge i64 %t164, %t167
  br i1 %t170, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb34
bb31:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/lower:lowering", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t175)
  store ptr %t177, ptr %l95
  br label %bb32
bb32:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/lower:lowering", ptr %t178, i32 0, i32 2
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t182 = load i32, ptr %l8, !tbaa !23
  %t183 = load i64, ptr %l19, !tbaa !24
  %t184 = load ptr, ptr %l95, !tbaa !29
  %t188 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t184, ptr %t181, i32 %t182, i64 %t183)
  store i1 %t188, ptr %l100
  br label %bb33
bb33:
  %t189 = load i1, ptr %l100, !tbaa !21
  %t190 = xor i1 %t189, true
  store i1 %t190, ptr %l92, !tbaa !21
  br label %bb34
bb34:
  %t192 = load i1, ptr %l92, !tbaa !21
  br i1 %t192, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  br label %bb37
bb37:
  store i1 true, ptr %l13, !tbaa !21
  %t193 = load i64, ptr %l19, !tbaa !24
  store i64 %t193, ptr %l102, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i64, ptr %l19, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr i32, ptr %t198, i64 %t195
  %t200 = load i32, ptr %t199, !tbaa !33
  %t201 = load i64, ptr %l19, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t204, i64 %t201
  %t206 = load { i64, [4 x i64] }, ptr %t205
  store { i64, [15 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [15 x i64] }, ptr %t207, i32 0, i32 0
  store i64 22, ptr %t208
  %t210 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t206, 0
  %t211 = getelementptr { i64, [15 x i64] }, ptr %t207, i32 0, i32 1
  store { { i64, [4 x i64] } } %t210, ptr %t211
  %t212 = load { i64, [15 x i64] }, ptr %t207
  %t218 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t194, i32 %t200, { i64, [15 x i64] } %t212, %"compiler/source:Span" %a3)
  store { i64, [4 x i64] } %t218, ptr %l110
  br label %bb38
bb38:
  %t219 = load { i64, [4 x i64] }, ptr %l110
  %t220 = load i64, ptr %l102, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t222, i64 %t220
  store { i64, [4 x i64] } %t219, ptr %t223
  br label %bb39
bb39:
  %t224 = load i64, ptr %l18, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l18, !tbaa !24
  br label %bb25
bb40:
  %t228 = load i1, ptr %l13, !tbaa !21
  br i1 %t228, label %bb41, label %bb42
bb41:
  %t230 = load i32, ptr %l8, !tbaa !23
  store i32 %t230, ptr %l115, !tbaa !23
  %t231 = load i64, ptr %l9, !tbaa !24
  store i64 %t231, ptr %l116, !tbaa !24
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/lower:lowering", ptr %t232, i32 0, i32 3
  %t235 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t238 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t234, { i64, ptr } %t235)
  store %"compiler/mir:Range" %t238, ptr %l120
  br label %bb43
bb42:
  %t239 = load { i64, [15 x i64] }, ptr %l1
  store { i64, [15 x i64] } %t239, ptr %l114
  br label %bb44
bb43:
  store { i64, [15 x i64] } zeroinitializer, ptr %t241
  %t242 = getelementptr { i64, [15 x i64] }, ptr %t241, i32 0, i32 0
  store i64 6, ptr %t242
  %t243 = load i32, ptr %l115, !tbaa !23
  %t244 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t243, 0
  %t245 = load i64, ptr %l116, !tbaa !24
  %t246 = insertvalue { i32, i64, %"compiler/mir:Range" } %t244, i64 %t245, 1
  %t247 = load %"compiler/mir:Range", ptr %l120
  %t248 = insertvalue { i32, i64, %"compiler/mir:Range" } %t246, %"compiler/mir:Range" %t247, 2
  %t249 = getelementptr { i64, [15 x i64] }, ptr %t241, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t248, ptr %t249
  %t250 = load { i64, [15 x i64] }, ptr %t241
  store { i64, [15 x i64] } %t250, ptr %l114
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t252 = load { i64, [15 x i64] }, ptr %l114
  store { i64, [15 x i64] } %t252, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [15 x i64] }, ptr %rv
  ret { i64, [15 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i1
  %l14 = alloca i32
  %l15 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i32
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t11, i32 %a1)
  store i32 %t15, ptr %l14
  br label %bb4
bb4:
  %t16 = load i32, ptr %l14, !tbaa !23
  store i32 %t16, ptr %l4, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 50
  %t20 = load i32, ptr %l4, !tbaa !23
  %t22 = sext i32 %t20 to i64
  %t25 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19, i64 %t22)
  %t26 = extractvalue { i32, i1 } %t25, 1
  %t27 = extractvalue { i32, i1 } %t25, 0
  store i32 %t27, ptr %l21
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb6, label %ok.29, !prof !99
ok.29:
  store i1 %t26, ptr %l20
  br label %bb5
bb5:
  %t30 = load i1, ptr %l20, !tbaa !21
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 50
  %t34 = load i32, ptr %l4, !tbaa !23
  %t36 = sext i32 %t34 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t33, i64 %t36, i1 false)
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l4, !tbaa !23
  %t41 = load i64, ptr %l2, !tbaa !24
  %t45 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesOf(ptr %v0, ptr %t39, i32 %t40, i64 %t41)
  store i1 %t45, ptr %l29
  br label %bb9
bb9:
  %t46 = load i1, ptr %l29, !tbaa !21
  store i1 %t46, ptr %l5, !tbaa !21
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 50
  %t50 = load i32, ptr %l4, !tbaa !23
  %t52 = sext i32 %t50 to i64
  %t53 = load i1, ptr %l5, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t49, i64 %t52, i1 %t53)
  br label %bb10
bb10:
  %t57 = load i1, ptr %l5, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
bb11:
  %t59 = load i1, ptr %l15, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2flower_2econvertArg(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca { i64, ptr }
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
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 4
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l1, !tbaa !27
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr ptr, ptr %t18, i64 0
  %t20 = load ptr, ptr %t19, !tbaa !39
  store ptr %t20, ptr %l2, !tbaa !29
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e6acc166178563a1_2a0e2f77fd7658ed)
  unreachable
bb11:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2flower_2edroppedArg(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l21 = alloca ptr
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
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 52}
  store i32 %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 4
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t22 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t24 = trunc i64 30 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
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
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t34, ptr %l19, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 0
  %t38 = load ptr, ptr %t37, !tbaa !39
  %t40 = call ptr @compiler_2flower_2eborrowedPlace(ptr %v0, ptr %v1, ptr %t38)
  store ptr %t40, ptr %l21
  br label %bb11
bb10:
  store ptr null, ptr %l18, !tbaa !29
  br label %bb12
bb11:
  %t41 = load ptr, ptr %l21, !tbaa !29
  store ptr %t41, ptr %l18, !tbaa !29
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l18, !tbaa !29
  store ptr %t42, ptr %l3, !tbaa !29
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
  call void @__olang_check_failed(ptr @olang_loc_8fc413f00e35f08_a157d97aff01aa1c)
  unreachable
bb18:
  %t43 = load ptr, ptr %l3, !tbaa !29
  store ptr %t43, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i1
  %l53 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Block", ptr %t1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = icmp eq i32 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Block", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb5, label %bb6
bb5:
  br label %bb35
bb6:
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t30, ptr %l23, !tbaa !27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  store ptr %t36, ptr %l5, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  store ptr %t38, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t39 = load ptr, ptr %l27, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l27, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 17}
  %t45 = icmp eq i64 %t43, 11
  store i1 %t45, ptr %l28, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l28, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l6, !tbaa !29
  br label %bb16
bb11:
  %t53 = load ptr, ptr %l5, !tbaa !29
  store ptr %t53, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l33, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 17}
  %t60 = icmp eq i64 %t58, 4
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb13
bb13:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l6, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = call ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v1, ptr %t68, i32 %t69)
  store ptr %t72, ptr %l41
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l41, !tbaa !29
  store ptr %t73, ptr %l26, !tbaa !29
  br label %bb30
bb18:
  %t74 = load ptr, ptr %l5, !tbaa !29
  store ptr %t74, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb19, label %bb20
bb19:
  %t78 = load ptr, ptr %l42, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 17}
  %t81 = icmp eq i64 %t79, 3
  store i1 %t81, ptr %l43, !tbaa !21
  br label %bb20
bb20:
  %t82 = load i1, ptr %l43, !tbaa !21
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr { i64, [3 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", ptr }, ptr %t85, i32 0, i32 1
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l7, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t91 = getelementptr %"compiler/typed:If", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = getelementptr %"compiler/typed:If", ptr %t93, i32 0, i32 2
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i32, ptr %l1, !tbaa !23
  %t101 = call ptr @compiler_2flower_2efindIn(ptr %v0, ptr %v0, ptr %v1, ptr %t92, ptr %t96, i32 %t97)
  store ptr %t101, ptr %l53
  br label %bb24
bb24:
  %t102 = load ptr, ptr %l53, !tbaa !29
  store ptr %t102, ptr %l26, !tbaa !29
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store ptr null, ptr %l26, !tbaa !29
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_3762df0b7916f10e_cd67f341de4e403a)
  unreachable
bb30:
  %t103 = load ptr, ptr %l26, !tbaa !29
  store ptr %t103, ptr %l8, !tbaa !29
  %t104 = load ptr, ptr %l8, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb31, label %bb32
bb31:
  %t110 = load ptr, ptr %l8, !tbaa !29
  store ptr %t110, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t113 = load i64, ptr %l3, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l3, !tbaa !24
  br label %bb4
bb35:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2flower_2etempViewCall(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l25 = alloca ptr
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
  %t8 = icmp eq i64 %t6, 3
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
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l1, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = call ptr @compiler_2flower_2etempRoot(ptr %v0, ptr %v1, ptr %t31)
  store ptr %t33, ptr %l17
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l17, !tbaa !29
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb23
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l18, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 17
  store i1 %t42, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l19, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call ptr @compiler_2flower_2etempViewCall(ptr %v0, ptr %v1, ptr %t50)
  store ptr %t52, ptr %l25
  br label %bb17
bb17:
  %t53 = load ptr, ptr %l25, !tbaa !29
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store ptr null, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_45fce2847dc3b097_fb8f06ed07981043)
  unreachable
bb23:
  %t54 = load ptr, ptr %l3, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2) #0 {
entry:
  %rv = alloca %"compiler/lower:level"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/lower:level" undef, i32 %a0, 0
  %t10 = insertvalue %"compiler/lower:level" %t8, i32 %a1, 1
  %t12 = insertvalue %"compiler/lower:level" %t10, i32 %a2, 2
  store %"compiler/lower:level" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:level", ptr %rv
  ret %"compiler/lower:level" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"T13d " }>, align 8
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
@.d1 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d2 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3alowering(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:lowering"
  %l3 = alloca %"compiler/mir:Fn"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"compiler/typed:Plan"
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca %"compiler/typed:DropHolding"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l53 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %t3 = alloca %"compiler/mir:Fn", align 8
  %t62 = alloca %"compiler/typed:Plan", align 8
  %t96 = alloca %"compiler/typed:DropHolding", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 3272, i1 false)
  %t2 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 3
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aFn(ptr %t3, ptr %v0, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t3, i64 800, i1 false)
  br label %bb1
bb1:
  %t5 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l3, i64 800, i1 false)
  %t6 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 12
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  br label %bb2
bb2:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t10 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %t10
  %t11 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 13
  %t13 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t11)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t13, ptr %l7
  br label %bb3
bb3:
  %t14 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  %t15 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %t15
  %t16 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 14
  %t18 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t16)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t18, ptr %l9
  br label %bb4
bb4:
  %t19 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  %t20 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t19, ptr %t20
  %t21 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 15
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l11
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t25 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %t25
  %t26 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 16
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l13
  br label %bb6
bb6:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t30 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %t30
  %t31 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 17
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l15
  br label %bb7
bb7:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t35 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %t35
  %t36 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 18
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l17
  br label %bb8
bb8:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t40 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %t40
  %t41 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 19
  %t43 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e(ptr %v0, ptr %t41)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l19
  br label %bb9
bb9:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t45 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %t45
  %t46 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 20
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %t46)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l21
  br label %bb10
bb10:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t50 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %t50
  %t51 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 21
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t51)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l23
  br label %bb11
bb11:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t55 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %t55
  %t56 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 22
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t56)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l25
  br label %bb12
bb12:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t60 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %t60
  %t61 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 30
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t62, ptr %v0, ptr %t61)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t62, i64 536, i1 false)
  br label %bb13
bb13:
  %t64 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 30
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %l27, i64 536, i1 false)
  %t65 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 32
  %t67 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t65)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t67, ptr %l29
  br label %bb14
bb14:
  %t68 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  %t69 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t68, ptr %t69
  %t70 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 33
  %t72 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t70)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t72, ptr %l31
  br label %bb15
bb15:
  %t73 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  %t74 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t73, ptr %t74
  %t75 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 34
  %t77 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t75)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t77, ptr %l33
  br label %bb16
bb16:
  %t78 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  %t79 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t78, ptr %t79
  %t80 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 35
  %t82 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t80)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l35
  br label %bb17
bb17:
  %t83 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t84 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t83, ptr %t84
  %t85 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 36
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t85)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l37
  br label %bb18
bb18:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t89 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %t89
  %t90 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 40
  %t92 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t90)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t92, ptr %l39
  br label %bb19
bb19:
  %t93 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  %t94 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t93, ptr %t94
  %t95 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 41
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aDropHolding(ptr %t96, ptr %v0, ptr %t95)
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %t96, i64 224, i1 false)
  br label %bb20
bb20:
  %t98 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 41
  call void @llvm.memmove.p0.p0.i64(ptr %t98, ptr %l41, i64 224, i1 false)
  %t99 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 44
  %t101 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t99)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t101, ptr %l43
  br label %bb21
bb21:
  %t102 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  %t103 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t102, ptr %t103
  %t104 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 45
  %t106 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t104)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t106, ptr %l45
  br label %bb22
bb22:
  %t107 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  %t108 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t107, ptr %t108
  %t109 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 46
  %t111 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t109)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t111, ptr %l47
  br label %bb23
bb23:
  %t112 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  %t113 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t112, ptr %t113
  %t114 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 47
  %t116 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t114)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t116, ptr %l49
  br label %bb24
bb24:
  %t117 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  %t118 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 47
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t117, ptr %t118
  %t119 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 50
  %t121 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t119)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t121, ptr %l51
  br label %bb25
bb25:
  %t122 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l51
  %t123 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t122, ptr %t123
  %t124 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 51
  %t126 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t124)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t126, ptr %l53
  br label %bb26
bb26:
  %t127 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l53
  %t128 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 51
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t127, ptr %t128
  %t129 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 52
  %t131 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t129)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t131, ptr %l55
  br label %bb27
bb27:
  %t132 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55
  %t133 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 52
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t132, ptr %t133
  %t134 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 54
  %t136 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t134)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l57
  br label %bb28
bb28:
  %t137 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  %t138 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %t138
  %t139 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 55
  %t141 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t139)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l59
  br label %bb29
bb29:
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t143 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %t143
  %t144 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 56
  %t146 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t144)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t146, ptr %l61
  br label %bb30
bb30:
  %t147 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  %t148 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t147, ptr %t148
  %t149 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 58
  %t151 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t149)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t151, ptr %l63
  br label %bb31
bb31:
  %t152 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  %t153 = getelementptr %"compiler/lower:lowering", ptr %l1, i32 0, i32 58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t152, ptr %t153
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 3272, i1 false)
  br label %ret
ret:
  ret void
}

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

@olang_2esole_2ecompiler_2ftyped_3aPlan_2e2 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e15 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e16 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e2 = weak hidden constant i1 false
@.d3 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
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

declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"any " }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn?&" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn&" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ?" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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

@__olang_empty_array = external constant [16 x i64]
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

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d28 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c": local L" }>, align 8
@.d29 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" no candidate" }>, align 8
@.d30 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" holds views" }>, align 8
@.d31 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" copies" }>, align 8
@.d32 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c": local L" }>, align 8
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 12
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 12
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2flower_3atryCtx_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2flower_3apl_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aDropHolding(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:DropHolding"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 224, i1 false)
  %t2 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 1
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 2
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 3
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 4
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 5
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 6
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:DropHolding", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 224, i1 false)
  br label %ret
ret:
  ret void
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/lower:loopCtx"
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
  %t4 = mul i64 %t3, 88
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
  %t15 = getelementptr %"compiler/lower:loopCtx", ptr %t14, i64 %t12
  %t17 = call %"compiler/lower:loopCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aloopCtx(ptr %v0, ptr %t15)
  store %"compiler/lower:loopCtx" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/lower:loopCtx", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/lower:loopCtx", ptr %t22, i64 %t20
  store %"compiler/lower:loopCtx" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2flower_3atryCtx_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/lower:tryCtx"
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
  %t4 = mul i64 %t3, 64
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
  %t15 = getelementptr %"compiler/lower:tryCtx", ptr %t14, i64 %t12
  %t17 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %t15)
  store %"compiler/lower:tryCtx" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/lower:tryCtx", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/lower:tryCtx", ptr %t22, i64 %t20
  store %"compiler/lower:tryCtx" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2flower_3apl_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/lower:pl"
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
  %t15 = getelementptr %"compiler/lower:pl", ptr %t14, i64 %t12
  %t17 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %t15)
  store %"compiler/lower:pl" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/lower:pl", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/lower:pl", ptr %t22, i64 %t20
  store %"compiler/lower:pl" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"compiler/lower:loopCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aloopCtx(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:loopCtx"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:loopCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:loopCtx", ptr %a0
  store %"compiler/lower:loopCtx" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 3
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 4
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/lower:loopCtx", ptr %l1
  store %"compiler/lower:loopCtx" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:loopCtx", ptr %rv
  ret %"compiler/lower:loopCtx" %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t15)
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

@olang_loc_e95d68e3d7cba01a_696ee7b39c9f410e = external constant [0 x i8]
@olang_loc_76ec7e11cc604d77_65dfbe8f138a0f63 = external constant [0 x i8]
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLower(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelper(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eadapterFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ecopiedFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2einitFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eanyRender(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_3c213ca88cac8ac4_ee776128d38d19e0 = external constant [0 x i8]
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2edeclName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2egenValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare { i32, { i64, ptr } } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare void @compiler_2flower_3alowering_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
@olang_loc_f4868819b96b4ee8_1edd2b51c7badbd4 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFrees(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erun(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_8a5ba3d76fdc22ed_b870bfe3eff73029 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elaidApart(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emethodBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eElidedCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_4e2a31381b56322a_5197c6e7cb15ae56 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadDtor(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, [1 x i64] } %a5)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidens(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
@olang_loc_bfe26d98742a613d_748d632e2c99f8e9 = external constant [0 x i8]
declare ptr @compiler_2flower_2ereadLocalPlace(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2flower_2edroppedPlace(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fmir_2eGuardType(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_64d900b05c2c7f2b_3f776bda77e5f7cf = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %v0, i64 %a0, i32 %a1)
@olang_loc_f77986af895aed4f_f84e497584b75763 = external constant [0 x i8]
@olang_loc_4d7f91a5420115fa_db913b05a0de57ee = external constant [0 x i8]
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b2a01b2e57b362d2_f7d1a82b4b6250e6 = external constant [0 x i8]
declare ptr @compiler_2flower_2ecollectOf(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecollect(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyInPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i32, { i64, [4 x i64] } } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedFill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_43c562ec71e00848_102dc0f053e29474 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadOut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2flower_2ederefOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_6682c02b2252cda2_fe6a13f6dabd3e9e = external constant [0 x i8]
@olang_loc_19eccda8bcaeeea3_66c9148e2869a91f = external constant [0 x i8]
@olang_loc_27799137553e39c8_8803419b6a8ab6e4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eErrValSpelling(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2establePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a75b87f7fc6585db_9c37e910f1cfbc0f = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:tryCtx" @compiler_2flower_3atryCtx_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i1 %a2, i1 %a3)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:tryCtx" %a1)
declare { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_2157f043f9fed58b_cfe589e7cd689437 = external constant [0 x i8]
declare %"compiler/lower:relPath" @compiler_2flower_3arelPath_2ector(ptr %v0, i64 %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:relPath" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/lower:tryCtx" %a1, { i64, ptr } %a2, i32 %a3, i32 %a4, ptr %a5)
@olang_loc_bb1504b15760d782_b7e8158da83f39e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCand(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ewhyNot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewInit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eholderOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eholds(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_6c482c7ec97e38b7_62c9b82b542e8403 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e6acc166178563a1_2a0e2f77fd7658ed = external constant [0 x i8]
@olang_loc_8fc413f00e35f08_a157d97aff01aa1c = external constant [0 x i8]
declare ptr @compiler_2flower_2efindIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_3762df0b7916f10e_cd67f341de4e403a = external constant [0 x i8]
declare ptr @compiler_2flower_2etempRoot(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_45fce2847dc3b097_fb8f06ed07981043 = external constant [0 x i8]

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
