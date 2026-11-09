source_filename = "compiler_lower-7.quick.ll"
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
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/lower:loopCtx" = type { i32, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/lower:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2flower_2ecollectOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca ptr
  %l28 = alloca ptr
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
  %t8 = icmp eq i64 %t6, 8
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
  store ptr %t16, ptr %l3, !tbaa !29
  br label %bb24
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 12
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l13, !tbaa !21
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
  %t36 = getelementptr %"compiler/typed:Seq", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Seq", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb14, label %bb15
bb13:
  store ptr null, ptr %l22, !tbaa !29
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b33a0661a011e178_dcd63aec50757664)
  unreachable
bb15:
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Seq", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call ptr @compiler_2flower_2ecollectOf(ptr %v0, ptr %v1, ptr %t53)
  store ptr %t55, ptr %l28
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l28, !tbaa !29
  store ptr %t56, ptr %l22, !tbaa !29
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l22, !tbaa !29
  store ptr %t57, ptr %l3, !tbaa !29
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store ptr null, ptr %l3, !tbaa !29
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_ad272ff31dc381ae_4a185251f7060aca)
  unreachable
bb24:
  %t58 = load ptr, ptr %l3, !tbaa !29
  store ptr %t58, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCodeOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l4 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t10 = alloca { i64, [2 x i64] }, align 8
  %t18 = alloca { i64, [2 x i64] }, align 8
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %t2)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 0
  store i64 2, ptr %t11
  %t13 = insertvalue { i32 } undef, i32 %t9, 0
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  store { i32 } %t13, ptr %t14
  %t15 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t15, ptr %l6
  br label %bb4
bb3:
  %t17 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [2 x i64] }, ptr %t18, i32 0, i32 0
  store i64 0, ptr %t19
  %t21 = insertvalue { i32 } undef, i32 %t17, 0
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t18, i32 0, i32 1
  store { i32 } %t21, ptr %t22
  %t23 = load { i64, [2 x i64] }, ptr %t18
  store { i64, [2 x i64] } %t23, ptr %l6
  br label %bb4
bb4:
  %t25 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDecideDerived(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l48 = alloca %"compiler/typed:Plan"
  %l50 = alloca %"compiler/typed:Plan"
  %l52 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t76 = alloca %"compiler/typed:Plan", align 8
  %t79 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2ederivedFact(ptr %v0, ptr %s2, ptr %t53, i64 %t54)
  store { i64, ptr } %t57, ptr %l37
  br label %bb12
bb12:
  %t58 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t58, ptr %l7, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t59, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t61, ptr %l39
  br label %bb13
bb13:
  %t62 = load i1, ptr %l39, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lower:Lowerer", ptr %t65, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 3
  store ptr %t70, ptr %l43, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t71, ptr %l44, !tbaa !27
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/lower:Lowerer", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t76, ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t76, i64 536, i1 false)
  br label %bb16
bb15:
  br label %bb20
bb16:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t79, ptr %v0, ptr %l48)
  call void @llvm.memmove.p0.p0.i64(ptr %l50, ptr %t79, i64 536, i1 false)
  br label %bb17
bb17:
  %t81 = getelementptr %"compiler/typed:Plan", ptr %l50, i32 0, i32 15
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l52
  br label %bb18
bb18:
  %t84 = load i64, ptr %l52, !tbaa !24
  %t85 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t86 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t85)
  %t87 = call i64 @__olang_fmt_i64(ptr %t86, i64 %t84)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t86, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l43, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l44, !tbaa !27
  call void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %s2, ptr %s3, ptr %t97, { i64, ptr } %t98, { i64, ptr } %t96, i1 false)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l5, !tbaa !24
  br label %bb8
bb22:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3aLowerer_2eInitModules(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca ptr
  %l52 = alloca i1
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:Lowerer", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l14
  br label %bb2
bb2:
  %t11 = load i64, ptr %l14, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:Lowerer", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t66 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t61, i64 %t56)
  store ptr %t66, ptr %l43
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l43, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 1
  %t70 = load { i64, [2 x i64] }, ptr %t69
  store { i64, [2 x i64] } %t70, ptr %l8
  %t72 = load { i64, [2 x i64] }, ptr %l8
  %t74 = extractvalue { i64, [2 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 6
  br i1 %t75, label %bb14, label %bb15
bb14:
  %t77 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t78 = getelementptr { i64, i32 }, ptr %t77, i32 0, i32 0
  %t79 = load i64, ptr %t78
  store i64 %t79, ptr %l9, !tbaa !24
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = load ptr, ptr %lp1
  %t87 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t83, i64 %t81)
  store i1 %t87, ptr %l52
  br label %bb17
bb17:
  %t88 = load i1, ptr %l52, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb18, label %bb19
bb18:
  %t91 = load ptr, ptr %lp1
  %t92 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t91, i64 %t92)
  br label %bb20
bb19:
  br label %bb21
bb20:
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
  call void @__olang_check_failed(ptr @olang_loc_e3721461a855ef35_c24433bc0ae5f641)
  unreachable
bb27:
  br label %bb28
bb28:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l6, !tbaa !24
  br label %bb9
bb29:
  %t99 = load ptr, ptr %lp1
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l11 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i1
  %l18 = alloca i64
  %l21 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %l50 = alloca i64
  %l51 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = sext i32 %t7 to i64
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:Lowerer", ptr %t10, i32 0, i32 2
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l14
  br label %bb3
bb3:
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l14, !tbaa !24
  %t17 = icmp sge i64 %t15, %t16
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  %t20 = load i32, ptr %l1, !tbaa !23
  %t22 = sext i32 %t20 to i64
  store i64 %t22, ptr %l18, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lower:Lowerer", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l21
  br label %bb7
bb7:
  %t29 = load i64, ptr %l18, !tbaa !24
  %t30 = load i64, ptr %l21, !tbaa !24
  %t31 = icmp sge i64 %t29, %t30
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i64 0, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:Lowerer", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t45 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t38, i64 %t42)
  store ptr %t45, ptr %l29
  br label %bb12
bb12:
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t46, i32 0, i32 1
  %t49 = load { i64, [2 x i64] }, ptr %t48
  store { i64, [2 x i64] } %t49, ptr %l2
  %t51 = load { i64, [2 x i64] }, ptr %l2
  %t53 = extractvalue { i64, [2 x i64] } %t51, 0
  %t54 = icmp eq i64 %t53, 0
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t57 = getelementptr { i64 }, ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57
  store i64 %t58, ptr %l3, !tbaa !24
  br label %bb15
bb14:
  br label %bb20
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:Lowerer", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/load:Loader", ptr %t66, i32 0, i32 6
  %t69 = load i64, ptr %l3, !tbaa !24
  %t72 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t68, i64 %t69)
  %t73 = extractvalue { i32, i64 } %t72, 1
  %t74 = extractvalue { i32, i64 } %t72, 0
  store i32 %t74, ptr %l43
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb17, label %ok.76, !prof !99
ok.76:
  store i64 %t73, ptr %l42
  br label %bb16
bb16:
  %t77 = load i64, ptr %l42, !tbaa !24
  store i64 %t77, ptr %l36, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb19
bb19:
  %t78 = load i64, ptr %l36, !tbaa !24
  store i64 %t78, ptr %l32, !tbaa !24
  br label %bb36
bb20:
  %t79 = load { i64, [2 x i64] }, ptr %l2
  %t81 = extractvalue { i64, [2 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 1
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t85 = getelementptr { i32, i32 }, ptr %t84, i32 0, i32 0
  %t86 = load i32, ptr %t85
  store i32 %t86, ptr %l4, !tbaa !23
  %t88 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t89 = getelementptr { i32, i32 }, ptr %t88, i32 0, i32 1
  %t90 = load i32, ptr %t89
  store i32 %t90, ptr %l5, !tbaa !23
  br label %bb23
bb22:
  br label %bb31
bb23:
  %t92 = load i32, ptr %l5, !tbaa !23
  %t94 = icmp eq i32 %t92, 0
  br i1 %t94, label %bb24, label %bb25
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/lower:Lowerer", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 0
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/load:Loader", ptr %t102, i32 0, i32 7
  %t105 = load i32, ptr %l4, !tbaa !23
  %t107 = sext i32 %t105 to i64
  %t110 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t104, i64 %t107)
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l59
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb27, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l58
  br label %bb26
bb25:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb30
bb26:
  %t115 = load i64, ptr %l58, !tbaa !24
  store i64 %t115, ptr %l51, !tbaa !24
  br label %bb29
bb27:
  br label %bb28
bb28:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb29
bb29:
  %t116 = load i64, ptr %l51, !tbaa !24
  store i64 %t116, ptr %l50, !tbaa !24
  br label %bb30
bb30:
  %t117 = load i64, ptr %l50, !tbaa !24
  store i64 %t117, ptr %l32, !tbaa !24
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_585470ea6701dfed_8ee4dec4923e1081)
  unreachable
bb36:
  %t118 = load i64, ptr %l32, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %l22 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i32
  %l31 = alloca ptr
  %l35 = alloca ptr
  %l37 = alloca i1
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
  %t23 = load i64, ptr %l1, !tbaa !24
  %t25 = mul i64 %t23, 64
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t25, %t26
  store i64 %t29, ptr %l3, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:Lowerer", ptr %t31, i32 0, i32 30
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t33, i64 %t34)
  %t38 = extractvalue { i32, i1 } %t37, 1
  %t39 = extractvalue { i32, i1 } %t37, 0
  store i32 %t39, ptr %l27
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb12, label %ok.41, !prof !99
ok.41:
  store i1 %t38, ptr %l26
  br label %bb11
bb11:
  %t42 = load i1, ptr %l26, !tbaa !21
  store i1 %t42, ptr %l22, !tbaa !21
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/lower:Lowerer", ptr %t43, i32 0, i32 30
  %t46 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t45, i64 %t46, i1 false)
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l31, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:Lowerer", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  %t57 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t53, i64 %t54)
  store ptr %t57, ptr %l35
  br label %bb15
bb15:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = load ptr, ptr %l35, !tbaa !29
  %t62 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2enoRefKept(ptr %v0, ptr %v0, ptr %t59, ptr %t60, i64 %t58)
  store i1 %t62, ptr %l37
  br label %bb16
bb16:
  %t63 = load i1, ptr %l37, !tbaa !21
  store i1 %t63, ptr %l4, !tbaa !21
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 30
  %t67 = load i64, ptr %l3, !tbaa !24
  %t68 = load i1, ptr %l4, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t66, i64 %t67, i1 %t68)
  br label %bb17
bb17:
  %t72 = load i1, ptr %l4, !tbaa !21
  store i1 %t72, ptr %rv
  br label %ret
bb18:
  %t74 = load i1, ptr %l22, !tbaa !21
  store i1 %t74, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t10 = load i32, ptr %l7, !tbaa !23
  %t12 = icmp eq i32 %t10, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load { i64, [4 x i64] }, ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t14, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t18 = load { i64, [4 x i64] }, ptr %l1
  %t19 = mul i64 1, 40
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 1, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i64 0
  store { i64, [4 x i64] } %t18, ptr %t26
  %t31 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t33 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t16, i32 20, i32 %t17, { i64, ptr } %t31, %"compiler/source:Span" %a3)
  store { i64, [4 x i64] } %t33, ptr %l17
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, [4 x i64] }, ptr %l17
  store { i64, [4 x i64] } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l27 = alloca i1
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l37 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l41 = alloca i32
  %l42 = alloca i1
  %l43 = alloca i1
  %l45 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l73 = alloca i1
  %l74 = alloca ptr
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l91 = alloca i1
  %l92 = alloca ptr
  %l98 = alloca i1
  %l99 = alloca i1
  %l103 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l112 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l121 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb88
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t11 = load ptr, ptr %l15, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l15, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 9
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l16, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l2, !tbaa !23
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28, !range !{i32 0, i32 52}
  store i32 %t29, ptr %l3
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t33, i32 0, i32 4
  %t35 = load { i64, ptr }, ptr %t34
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  br label %bb11
bb10:
  br label %bb32
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t39 = trunc i64 20 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = icmp eq i64 %t44, 1
  store i1 %t46, ptr %l27, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t49, ptr %l32, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 0
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = call ptr @compiler_2flower_2ederefOf(ptr %v1, ptr %s2, ptr %t53)
  store ptr %t55, ptr %l34
  br label %bb17
bb16:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb31
bb17:
  %t56 = load ptr, ptr %l34, !tbaa !29
  %t57 = icmp eq ptr %t56, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb26
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l38, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t62, ptr %l39, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr ptr, ptr %t64, i64 0
  %t66 = load ptr, ptr %t65, !tbaa !39
  %t68 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t66)
  store i32 %t68, ptr %l41
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l38, !tbaa !29
  %t70 = load i32, ptr %l41, !tbaa !23
  %t71 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t71, ptr %l42
  br label %bb21
bb21:
  %t72 = load i1, ptr %l42, !tbaa !21
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t74, ptr %l45, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr ptr, ptr %t76, i64 0
  %t78 = load ptr, ptr %t77, !tbaa !39
  %t81 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t73, ptr %t78)
  store i1 %t81, ptr %l47
  br label %bb24
bb23:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb25
bb24:
  %t82 = load i1, ptr %l47, !tbaa !21
  store i1 %t82, ptr %l43, !tbaa !21
  br label %bb25
bb25:
  %t83 = load i1, ptr %l43, !tbaa !21
  store i1 %t83, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t84 = load i1, ptr %l37, !tbaa !21
  br i1 %t84, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb30
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t88 = load i32, ptr %l2, !tbaa !23
  %t93 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %t85, i32 %t86, { i64, ptr } %t87, i32 %t88)
  store i1 %t93, ptr %l53
  br label %bb29
bb29:
  %t94 = load i1, ptr %l53, !tbaa !21
  store i1 %t94, ptr %l48, !tbaa !21
  br label %bb30
bb30:
  %t95 = load i1, ptr %l48, !tbaa !21
  store i1 %t95, ptr %l31, !tbaa !21
  br label %bb31
bb31:
  %t96 = load i1, ptr %l31, !tbaa !21
  store i1 %t96, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb32:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t98 = load ptr, ptr %l54, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb33, label %bb34
bb33:
  %t101 = load ptr, ptr %l54, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 18}
  %t104 = icmp eq i64 %t102, 17
  store i1 %t104, ptr %l55, !tbaa !21
  br label %bb34
bb34:
  %t105 = load i1, ptr %l55, !tbaa !21
  br i1 %t105, label %bb35, label %bb36
bb35:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t108, i32 0, i32 2
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l5, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l5, !tbaa !29
  %t116 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
  store i1 %t116, ptr %l62
  br label %bb38
bb38:
  %t117 = load i1, ptr %l62, !tbaa !21
  store i1 %t117, ptr %l10, !tbaa !21
  br label %bb88
bb39:
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t119 = load ptr, ptr %l63, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb40, label %bb41
bb40:
  %t122 = load ptr, ptr %l63, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 18}
  %t125 = icmp eq i64 %t123, 12
  store i1 %t125, ptr %l64, !tbaa !21
  br label %bb41
bb41:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb42, label %bb43
bb42:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l6, !tbaa !29
  br label %bb44
bb43:
  br label %bb52
bb44:
  %t133 = load ptr, ptr %l6, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Seq", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = icmp eq ptr %t136, null
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb45, label %bb46
bb45:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l74, !tbaa !29
  %t143 = load ptr, ptr %l6, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Seq", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  br i1 %t148, label %bb47, label %bb48
bb46:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb51
bb47:
  call void @__olang_check_failed(ptr @olang_loc_755da8ec4c9a9682_903a5def85eef08e)
  unreachable
bb48:
  br label %bb49
bb49:
  %t150 = load ptr, ptr %l6, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Seq", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = load ptr, ptr %l74, !tbaa !29
  %t156 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t154, ptr %t153)
  store i1 %t156, ptr %l80
  br label %bb50
bb50:
  %t157 = load i1, ptr %l80, !tbaa !21
  store i1 %t157, ptr %l73, !tbaa !21
  br label %bb51
bb51:
  %t158 = load i1, ptr %l73, !tbaa !21
  store i1 %t158, ptr %l10, !tbaa !21
  br label %bb88
bb52:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t160 = load ptr, ptr %l81, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb53, label %bb54
bb53:
  %t163 = load ptr, ptr %l81, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 18}
  %t166 = icmp eq i64 %t164, 11
  store i1 %t166, ptr %l82, !tbaa !21
  br label %bb54
bb54:
  %t167 = load i1, ptr %l82, !tbaa !21
  br i1 %t167, label %bb55, label %bb56
bb55:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [5 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l7, !tbaa !29
  br label %bb57
bb56:
  br label %bb69
bb57:
  %t174 = load ptr, ptr %l7, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Cond", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = icmp eq ptr %t177, null
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb58, label %bb59
bb58:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l92, !tbaa !29
  %t184 = load ptr, ptr %l7, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Cond", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = icmp eq ptr %t187, null
  br i1 %t189, label %bb60, label %bb61
bb59:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb64
bb60:
  call void @__olang_check_failed(ptr @olang_loc_cd5f024afedc1d69_a0cc122b0d762c35)
  unreachable
bb61:
  br label %bb62
bb62:
  %t191 = load ptr, ptr %l7, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Cond", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t195 = load ptr, ptr %l92, !tbaa !29
  %t197 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t195, ptr %t194)
  store i1 %t197, ptr %l98
  br label %bb63
bb63:
  %t198 = load i1, ptr %l98, !tbaa !21
  store i1 %t198, ptr %l91, !tbaa !21
  br label %bb64
bb64:
  %t199 = load i1, ptr %l91, !tbaa !21
  br i1 %t199, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb68
bb66:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l7, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Cond", ptr %t201, i32 0, i32 2
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t207 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t200, ptr %t204)
  store i1 %t207, ptr %l103
  br label %bb67
bb67:
  %t208 = load i1, ptr %l103, !tbaa !21
  store i1 %t208, ptr %l99, !tbaa !21
  br label %bb68
bb68:
  %t209 = load i1, ptr %l99, !tbaa !21
  store i1 %t209, ptr %l10, !tbaa !21
  br label %bb88
bb69:
  %t210 = load ptr, ptr %l1, !tbaa !29
  store ptr %t210, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t211 = load ptr, ptr %l104, !tbaa !29
  %t212 = icmp ne ptr %t211, null
  br i1 %t212, label %bb70, label %bb71
bb70:
  %t214 = load ptr, ptr %l104, !tbaa !29
  %t215 = load i64, ptr %t214, !range !{i64 0, i64 18}
  %t217 = icmp eq i64 %t215, 13
  store i1 %t217, ptr %l105, !tbaa !21
  br label %bb71
bb71:
  %t218 = load i1, ptr %l105, !tbaa !21
  br i1 %t218, label %bb72, label %bb73
bb72:
  %t219 = load ptr, ptr %l1, !tbaa !29
  %t221 = getelementptr { i64, [5 x i64] }, ptr %t219, i32 0, i32 1
  %t222 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t221, i32 0, i32 2
  %t223 = load ptr, ptr %t222
  store ptr %t223, ptr %l8, !tbaa !29
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l8, !tbaa !29
  %t229 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ematchCopies(ptr %v0, ptr %v1, ptr %t225, ptr %t226)
  store i1 %t229, ptr %l112
  br label %bb75
bb75:
  %t230 = load i1, ptr %l112, !tbaa !21
  store i1 %t230, ptr %l10, !tbaa !21
  br label %bb88
bb76:
  %t231 = load ptr, ptr %l1, !tbaa !29
  store ptr %t231, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t232 = load ptr, ptr %l113, !tbaa !29
  %t233 = icmp ne ptr %t232, null
  br i1 %t233, label %bb77, label %bb78
bb77:
  %t235 = load ptr, ptr %l113, !tbaa !29
  %t236 = load i64, ptr %t235, !range !{i64 0, i64 18}
  %t238 = icmp eq i64 %t236, 14
  store i1 %t238, ptr %l114, !tbaa !21
  br label %bb78
bb78:
  %t239 = load i1, ptr %l114, !tbaa !21
  br i1 %t239, label %bb79, label %bb80
bb79:
  %t240 = load ptr, ptr %l1, !tbaa !29
  %t242 = getelementptr { i64, [5 x i64] }, ptr %t240, i32 0, i32 1
  %t243 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t242, i32 0, i32 2
  %t244 = load ptr, ptr %t243
  store ptr %t244, ptr %l9, !tbaa !29
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l9, !tbaa !29
  %t250 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etryCopies(ptr %v0, ptr %v1, ptr %t246, ptr %t247)
  store i1 %t250, ptr %l121
  br label %bb82
bb82:
  %t251 = load i1, ptr %l121, !tbaa !21
  store i1 %t251, ptr %l10, !tbaa !21
  br label %bb88
bb83:
  br i1 true, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb87
bb86:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_9d7bd0ecfcbf809b_94241bedce5fc567)
  unreachable
bb88:
  %t252 = load i1, ptr %l10, !tbaa !21
  store i1 %t252, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca %"compiler/lower:pl"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l27 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca %"compiler/lower:pl"
  %l34 = alloca %"compiler/lower:pl"
  %l35 = alloca %"compiler/mir:Lvalue"
  %l39 = alloca { i64, [4 x i64] }
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca %"compiler/lower:pl"
  %l49 = alloca %"compiler/lower:pl"
  %l53 = alloca { i64, [4 x i64] }
  %l56 = alloca i32
  %l59 = alloca i32
  %l62 = alloca i1
  %l65 = alloca i32
  %l69 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca %"compiler/lower:pl"
  %l75 = alloca %"compiler/lower:pl"
  %l76 = alloca %"compiler/mir:Lvalue"
  %l81 = alloca { i64, [4 x i64] }
  %l84 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca i32
  %l87 = alloca ptr
  %l88 = alloca %"compiler/lower:pl"
  %l90 = alloca %"compiler/lower:pl"
  %l93 = alloca { i64, [4 x i64] }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca { i64, [4 x i64] }
  %l102 = alloca i32
  %l103 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i32
  %l106 = alloca ptr
  %l107 = alloca %"compiler/lower:pl"
  %l109 = alloca %"compiler/lower:pl"
  %l110 = alloca %"compiler/mir:Lvalue"
  %l112 = alloca { i64, ptr }
  %l114 = alloca { i64, [4 x i64] }
  %l118 = alloca i32
  %l119 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l122 = alloca %"compiler/mir:Lvalue"
  %l130 = alloca ptr
  %l131 = alloca { i64, [4 x i64] }
  %l132 = alloca %"compiler/source:Span"
  %l133 = alloca ptr
  %l134 = alloca %"compiler/lower:pl"
  %l136 = alloca %"compiler/lower:pl"
  %l143 = alloca %"compiler/mir:Lvalue"
  %l147 = alloca ptr
  %l148 = alloca i32
  %l149 = alloca i32
  %l150 = alloca ptr
  %l151 = alloca %"compiler/lower:pl"
  %l153 = alloca %"compiler/lower:pl"
  %l156 = alloca { i64, [4 x i64] }
  %l157 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l162 = alloca { i64, [4 x i64] }
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca i32
  %l166 = alloca ptr
  %l167 = alloca %"compiler/lower:pl"
  %l169 = alloca %"compiler/lower:pl"
  %l170 = alloca %"compiler/mir:Lvalue"
  %l174 = alloca { i64, [4 x i64] }
  %l177 = alloca i32
  %l180 = alloca %"compiler/lower:pl"
  %l184 = alloca i1
  %l187 = alloca { i64, ptr }
  %l193 = alloca i64
  %l196 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca ptr
  %l216 = alloca %"compiler/lower:pl"
  %l218 = alloca %"compiler/lower:pl"
  %l221 = alloca %"compiler/lower:pl"
  %l231 = alloca i1
  %l232 = alloca ptr
  %l233 = alloca i32
  %l234 = alloca ptr
  %l235 = alloca %"compiler/lower:pl"
  %l237 = alloca %"compiler/lower:pl"
  %l238 = alloca %"compiler/mir:Lvalue"
  %l241 = alloca { i64, [4 x i64] }
  %l242 = alloca ptr
  %l245 = alloca { i64, ptr }
  %l246 = alloca { i64, ptr }
  %l247 = alloca { i64, [4 x i64] }
  %l248 = alloca %"compiler/source:Span"
  %l249 = alloca ptr
  %l250 = alloca %"compiler/lower:pl"
  %l252 = alloca %"compiler/lower:pl"
  %l258 = alloca i32
  %l263 = alloca i32
  %l264 = alloca ptr
  %l265 = alloca ptr
  %l266 = alloca ptr
  %l269 = alloca i32
  %l270 = alloca i64
  %l271 = alloca { i64, [4 x i64] }
  %l272 = alloca %"compiler/source:Span"
  %l273 = alloca ptr
  %l274 = alloca %"compiler/lower:pl"
  %l276 = alloca %"compiler/lower:pl"
  %l284 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t23 = alloca { i64, [4 x i64] }, align 8
  %t29 = alloca { i64, [15 x i64] }, align 8
  %t108 = alloca { i64, [4 x i64] }, align 8
  %t184 = alloca { i64, [4 x i64] }, align 8
  %t222 = alloca { i64, [4 x i64] }, align 8
  %t225 = alloca { i64, [15 x i64] }, align 8
  %t237 = alloca { i64, [21 x i64] }, align 8
  %t291 = alloca { i64, [4 x i64] }, align 8
  %t353 = alloca { i64, [4 x i64] }, align 8
  %t359 = alloca { i64, [15 x i64] }, align 8
  %t380 = alloca { i64, [2 x i64] }, align 8
  %t468 = alloca { i64, [1 x i64] }, align 8
  %t510 = alloca { i64, [15 x i64] }, align 8
  %t546 = alloca { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, align 8
  %t629 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l27
  br label %bb1
bb1:
  %t11 = load i1, ptr %l27, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l29, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  store i32 %t15, ptr %l30, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l31, !tbaa !29
  %t17 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t17, ptr %l32
  %t19 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l32)
  store %"compiler/lower:pl" %t19, ptr %l34
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t20 = load ptr, ptr %l31, !tbaa !29
  %t21 = load %"compiler/lower:pl", ptr %l34
  %t22 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t20, %"compiler/lower:pl" %t21)
  store %"compiler/mir:Lvalue" %t22, ptr %l35
  br label %bb5
bb5:
  store { i64, [4 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 0
  store i64 1, ptr %t24
  %t25 = load %"compiler/mir:Lvalue", ptr %l35
  %t26 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t25, 0
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t26, ptr %t27
  %t28 = load { i64, [4 x i64] }, ptr %t23
  store { i64, [15 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [15 x i64] }, ptr %t29, i32 0, i32 0
  store i64 0, ptr %t30
  %t32 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t28, 0
  %t33 = getelementptr { i64, [15 x i64] }, ptr %t29, i32 0, i32 1
  store { { i64, [4 x i64] } } %t32, ptr %t33
  %t34 = load { i64, [15 x i64] }, ptr %t29
  %t35 = load %"compiler/source:Span", ptr %l4
  %t36 = load ptr, ptr %l29, !tbaa !29
  %t37 = load i32, ptr %l30, !tbaa !23
  %t40 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t36, i32 %t37, { i64, [15 x i64] } %t34, %"compiler/source:Span" %t35)
  store { i64, [4 x i64] } %t40, ptr %l39
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i64, [4 x i64] }, ptr %l39
  store { i64, [4 x i64] } %t41, ptr %rv
  br label %ret
bb7:
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l42
  br label %bb8
bb8:
  %t47 = load i1, ptr %l42, !tbaa !21
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t50 = xor i1 %a6, true
  store i1 %t50, ptr %l43, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb11
bb11:
  %t52 = load i1, ptr %l43, !tbaa !21
  br i1 %t52, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l46, !tbaa !29
  %t54 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t54, ptr %l47
  %t56 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l47)
  store %"compiler/lower:pl" %t56, ptr %l49
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t57 = load i32, ptr %l2, !tbaa !23
  %t58 = load { i64, [1 x i64] }, ptr %l3
  %t59 = load %"compiler/source:Span", ptr %l4
  %t60 = load ptr, ptr %l46, !tbaa !29
  %t61 = load %"compiler/lower:pl", ptr %l49
  %t65 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edeclaredCopy(ptr %v0, ptr %s2, ptr %t60, %"compiler/lower:pl" %t61, i32 %t57, { i64, [1 x i64] } %t58, %"compiler/source:Span" %t59)
  store { i64, [4 x i64] } %t65, ptr %l53
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t66 = load { i64, [4 x i64] }, ptr %l53
  store { i64, [4 x i64] } %t66, ptr %rv
  br label %ret
bb16:
  %t67 = load ptr, ptr %l7, !tbaa !29
  %t68 = load i32, ptr %l2, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l56
  br label %bb17
bb17:
  %t72 = load i32, ptr %l56, !tbaa !23
  store i32 %t72, ptr %l8, !tbaa !23
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t74 = load i32, ptr %l8, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l59
  br label %bb18
bb18:
  %t78 = load i32, ptr %l59, !range !{i32 0, i32 33}
  %t80 = trunc i64 19 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb19, label %bb20
bb19:
  %t83 = load ptr, ptr %l7, !tbaa !29
  %t84 = load i32, ptr %l8, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l65
  br label %bb21
bb20:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb22
bb21:
  %t88 = load i32, ptr %l65, !tbaa !23
  %t89 = icmp eq i32 %t88, 0
  store i1 %t89, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t91 = load i1, ptr %l62, !tbaa !21
  br i1 %t91, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t92 = load ptr, ptr %l7, !tbaa !29
  %t93 = load i32, ptr %l2, !tbaa !23
  %t96 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t92, i32 %t93)
  store i1 %t96, ptr %l69
  br label %bb25
bb24:
  br label %bb48
bb25:
  %t97 = load i1, ptr %l69, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l71, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l72, !tbaa !29
  %t102 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t102, ptr %l73
  %t104 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s4, ptr %l73)
  store %"compiler/lower:pl" %t104, ptr %l75
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t105 = load ptr, ptr %l72, !tbaa !29
  %t106 = load %"compiler/lower:pl", ptr %l75
  %t107 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s4, ptr %t105, %"compiler/lower:pl" %t106)
  store %"compiler/mir:Lvalue" %t107, ptr %l76
  br label %bb29
bb29:
  store { i64, [4 x i64] } zeroinitializer, ptr %t108
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 0
  store i64 1, ptr %t109
  %t110 = load %"compiler/mir:Lvalue", ptr %l76
  %t111 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t110, 0
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t111, ptr %t112
  %t113 = load { i64, [4 x i64] }, ptr %t108
  %t114 = load i32, ptr %l2, !tbaa !23
  %t115 = load %"compiler/source:Span", ptr %l4
  %t116 = load { i64, [1 x i64] }, ptr %l3
  %t117 = load ptr, ptr %l71, !tbaa !29
  %t122 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t117, { i64, [4 x i64] } %t113, i32 %t114, %"compiler/source:Span" %t115, { i64, [1 x i64] } %t116, i1 false)
  store { i64, [4 x i64] } %t122, ptr %l81
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t123 = load { i64, [4 x i64] }, ptr %l81
  store { i64, [4 x i64] } %t123, ptr %rv
  br label %ret
bb31:
  %t124 = load i1, ptr %l5, !tbaa !21
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l84, !tbaa !29
  store i32 4, ptr %l85
  %t129 = load i32, ptr %l2, !tbaa !23
  store i32 %t129, ptr %l86, !tbaa !23
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l87, !tbaa !29
  %t131 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t131, ptr %l88
  %t133 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s5, ptr %l88)
  store %"compiler/lower:pl" %t133, ptr %l90
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t134 = load i32, ptr %l2, !tbaa !23
  %t135 = load %"compiler/source:Span", ptr %l4
  %t136 = load ptr, ptr %l87, !tbaa !29
  %t137 = load %"compiler/lower:pl", ptr %l90
  %t140 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s5, ptr %t136, %"compiler/lower:pl" %t137, i32 %t134, %"compiler/source:Span" %t135)
  store { i64, [4 x i64] } %t140, ptr %l93
  br label %bb35
bb35:
  %t141 = mul i64 1, 40
  %t142 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 1, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l94, !tbaa !27
  %t145 = load { i64, [4 x i64] }, ptr %l93
  %t146 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t147, i64 0
  store { i64, [4 x i64] } %t145, ptr %t148
  %t149 = load { i64, [1 x i64] }, ptr %l3
  %t150 = mul i64 1, 16
  %t151 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 1, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l96, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr { i64, [1 x i64] }, ptr %t156, i64 0
  store { i64, [1 x i64] } %t149, ptr %t157
  %t158 = load i32, ptr %l2, !tbaa !23
  %t159 = load %"compiler/source:Span", ptr %l4
  %t160 = load ptr, ptr %l84, !tbaa !29
  %t161 = load i32, ptr %l85, !range !{i32 0, i32 8}
  %t162 = load i32, ptr %l86, !tbaa !23
  %t163 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t167 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s5, ptr %s5, ptr %t160, i32 %t161, i32 %t162, { i64, ptr } %t163, { i64, ptr } %t164, i32 %t158, %"compiler/source:Span" %t159)
  store { i64, [4 x i64] } %t167, ptr %l99
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t168 = load { i64, [4 x i64] }, ptr %l99
  store { i64, [4 x i64] } %t168, ptr %rv
  br label %ret
bb37:
  %t169 = load ptr, ptr %l7, !tbaa !29
  %t170 = load i32, ptr %l8, !tbaa !23
  %t173 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t169, i32 %t170)
  store i32 %t173, ptr %l102
  br label %bb38
bb38:
  %t174 = load i32, ptr %l102, !tbaa !23
  store i32 %t174, ptr %l9, !tbaa !23
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l103, !tbaa !29
  store i32 22, ptr %l104
  %t176 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t176, ptr %l105, !tbaa !23
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l106, !tbaa !29
  %t178 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t178, ptr %l107
  %t180 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l107)
  store %"compiler/lower:pl" %t180, ptr %l109
  br label %bb39
bb39:
  %t181 = load ptr, ptr %l106, !tbaa !29
  %t182 = load %"compiler/lower:pl", ptr %l109
  %t183 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t181, %"compiler/lower:pl" %t182)
  store %"compiler/mir:Lvalue" %t183, ptr %l110
  br label %bb40
bb40:
  store { i64, [4 x i64] } zeroinitializer, ptr %t184
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 0
  store i64 1, ptr %t185
  %t186 = load %"compiler/mir:Lvalue", ptr %l110
  %t187 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t186, 0
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t187, ptr %t188
  %t189 = load { i64, [4 x i64] }, ptr %t184
  %t190 = mul i64 1, 40
  %t191 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 1, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l112, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t196, i64 0
  store { i64, [4 x i64] } %t189, ptr %t197
  %t198 = load %"compiler/source:Span", ptr %l4
  %t199 = load ptr, ptr %l103, !tbaa !29
  %t200 = load i32, ptr %l104, !range !{i32 0, i32 52}
  %t201 = load i32, ptr %l105, !tbaa !23
  %t202 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t204 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s3, ptr %t199, i32 %t200, i32 %t201, { i64, ptr } %t202, %"compiler/source:Span" %t198)
  store { i64, [4 x i64] } %t204, ptr %l114
  br label %bb41
bb41:
  %t205 = load { i64, [4 x i64] }, ptr %l114
  store { i64, [4 x i64] } %t205, ptr %l10
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i32, ptr %l2, !tbaa !23
  %t208 = load %"compiler/source:Span", ptr %l4
  %t212 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t206, i32 %t207, %"compiler/source:Span" %t208)
  store i32 %t212, ptr %l118
  br label %bb42
bb42:
  %t213 = load i32, ptr %l118, !tbaa !23
  store i32 %t213, ptr %l11, !tbaa !23
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l119, !tbaa !29
  %t215 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t215, ptr %l120
  %t216 = load i32, ptr %l11, !tbaa !23
  %t218 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t216)
  store %"compiler/mir:Lvalue" %t218, ptr %l122
  br label %bb43
bb43:
  %t219 = load { i64, [1 x i64] }, ptr %l3
  %t220 = load i32, ptr %l2, !tbaa !23
  %t221 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 0
  store i64 0, ptr %t223
  %t224 = load { i64, [4 x i64] }, ptr %t222
  store { i64, [15 x i64] } zeroinitializer, ptr %t225
  %t226 = getelementptr { i64, [15 x i64] }, ptr %t225, i32 0, i32 0
  store i64 8, ptr %t226
  %t228 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t219, 0
  %t230 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t228, i32 %t220, 1
  %t232 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t230, { i64, [4 x i64] } %t221, 2
  %t234 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t232, { i64, [4 x i64] } %t224, 3
  %t235 = getelementptr { i64, [15 x i64] }, ptr %t225, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t234, ptr %t235
  %t236 = load { i64, [15 x i64] }, ptr %t225
  store { i64, [21 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [21 x i64] }, ptr %t237, i32 0, i32 0
  store i64 0, ptr %t238
  %t239 = load %"compiler/source:Span", ptr %l120
  %t240 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t239, 0
  %t241 = load %"compiler/mir:Lvalue", ptr %l122
  %t242 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t240, %"compiler/mir:Lvalue" %t241, 1
  %t244 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t242, { i64, [15 x i64] } %t236, 2
  %t245 = getelementptr { i64, [21 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t244, ptr %t245
  %t246 = load { i64, [21 x i64] }, ptr %t237
  %t248 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 176, i64 8)
  store { i64, [21 x i64] } %t246, ptr %t248
  %t249 = load ptr, ptr %l119, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s3, ptr %t249, ptr %t248)
  br label %bb44
bb44:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l130, !tbaa !29
  %t252 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t252, ptr %l131
  %t253 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t253, ptr %l132
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l133, !tbaa !29
  %t255 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t255, ptr %l134
  %t257 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l134)
  store %"compiler/lower:pl" %t257, ptr %l136
  br label %bb45
bb45:
  %t258 = load i32, ptr %l9, !tbaa !23
  %t259 = load { i64, [1 x i64] }, ptr %l3
  %t260 = load %"compiler/source:Span", ptr %l4
  %t261 = load i32, ptr %l11, !tbaa !23
  %t262 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr null, i32 1
  %t263 = ptrtoint ptr %t262 to i64
  %t264 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t263, i64 8)
  %t265 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 0
  %t266 = load ptr, ptr %l133, !tbaa !29
  store ptr %t266, ptr %t265, !tbaa !28
  %t267 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 1
  %t268 = load %"compiler/lower:pl", ptr %l136
  store %"compiler/lower:pl" %t268, ptr %t267, !tbaa !28
  %t269 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 2
  store i32 %t258, ptr %t269, !tbaa !28
  %t271 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 3
  store { i64, [1 x i64] } %t259, ptr %t271, !tbaa !28
  %t273 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 4
  store %"compiler/source:Span" %t260, ptr %t273, !tbaa !28
  %t275 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 5
  store i32 %t261, ptr %t275, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t277 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 6
  store ptr %v0, ptr %t277, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t278 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t264, i32 0, i32 7
  store ptr %v1, ptr %t278, !tbaa !28
  %t279 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_1, 0
  %t280 = insertvalue { ptr, ptr } %t279, ptr %t264, 1
  %t281 = load ptr, ptr @__olang_prog_scope
  %t282 = load ptr, ptr %l130, !tbaa !29
  %t283 = load { i64, [4 x i64] }, ptr %l131
  %t284 = load %"compiler/source:Span", ptr %l132
  %t286 = extractvalue { ptr, ptr } %t280, 0
  %t287 = extractvalue { ptr, ptr } %t280, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %t281, ptr %t282, { i64, [4 x i64] } %t283, %"compiler/source:Span" %t284, ptr %t286, ptr %t287)
  br label %bb46
bb46:
  %t288 = load i32, ptr %l11, !tbaa !23
  %t290 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t288)
  store %"compiler/mir:Lvalue" %t290, ptr %l143
  br label %bb47
bb47:
  store { i64, [4 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 0
  store i64 1, ptr %t292
  %t293 = load %"compiler/mir:Lvalue", ptr %l143
  %t294 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t293, 0
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t294, ptr %t295
  %t296 = load { i64, [4 x i64] }, ptr %t291
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t296, ptr %rv
  br label %ret
bb48:
  %t298 = load i1, ptr %l5, !tbaa !21
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s6
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l147, !tbaa !29
  store i32 4, ptr %l148
  %t303 = load i32, ptr %l2, !tbaa !23
  store i32 %t303, ptr %l149, !tbaa !23
  %t304 = load ptr, ptr %l0, !tbaa !29
  store ptr %t304, ptr %l150, !tbaa !29
  %t305 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t305, ptr %l151
  %t307 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s6, ptr %l151)
  store %"compiler/lower:pl" %t307, ptr %l153
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t308 = load i32, ptr %l2, !tbaa !23
  %t309 = load %"compiler/source:Span", ptr %l4
  %t310 = load ptr, ptr %l150, !tbaa !29
  %t311 = load %"compiler/lower:pl", ptr %l153
  %t314 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s6, ptr %t310, %"compiler/lower:pl" %t311, i32 %t308, %"compiler/source:Span" %t309)
  store { i64, [4 x i64] } %t314, ptr %l156
  br label %bb52
bb52:
  %t315 = mul i64 1, 40
  %t316 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t315)
  %t317 = insertvalue { i64, ptr } undef, i64 1, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l157, !tbaa !27
  %t319 = load { i64, [4 x i64] }, ptr %l156
  %t320 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr { i64, [4 x i64] }, ptr %t321, i64 0
  store { i64, [4 x i64] } %t319, ptr %t322
  %t323 = load { i64, [1 x i64] }, ptr %l3
  %t324 = mul i64 1, 16
  %t325 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t324)
  %t326 = insertvalue { i64, ptr } undef, i64 1, 0
  %t327 = insertvalue { i64, ptr } %t326, ptr %t325, 1
  store { i64, ptr } %t327, ptr %l159, !tbaa !27
  %t329 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = getelementptr { i64, [1 x i64] }, ptr %t330, i64 0
  store { i64, [1 x i64] } %t323, ptr %t331
  %t332 = load i32, ptr %l2, !tbaa !23
  %t333 = load %"compiler/source:Span", ptr %l4
  %t334 = load ptr, ptr %l147, !tbaa !29
  %t335 = load i32, ptr %l148, !range !{i32 0, i32 8}
  %t336 = load i32, ptr %l149, !tbaa !23
  %t337 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t338 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t341 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s6, ptr %s6, ptr %t334, i32 %t335, i32 %t336, { i64, ptr } %t337, { i64, ptr } %t338, i32 %t332, %"compiler/source:Span" %t333)
  store { i64, [4 x i64] } %t341, ptr %l162
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t342 = load { i64, [4 x i64] }, ptr %l162
  store { i64, [4 x i64] } %t342, ptr %rv
  br label %ret
bb54:
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l163, !tbaa !29
  %t344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t344, ptr %l164, !tbaa !29
  %t345 = load i32, ptr %l2, !tbaa !23
  store i32 %t345, ptr %l165, !tbaa !23
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l166, !tbaa !29
  %t347 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t347, ptr %l167
  %t349 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l167)
  store %"compiler/lower:pl" %t349, ptr %l169
  br label %bb55
bb55:
  %t350 = load ptr, ptr %l166, !tbaa !29
  %t351 = load %"compiler/lower:pl", ptr %l169
  %t352 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t350, %"compiler/lower:pl" %t351)
  store %"compiler/mir:Lvalue" %t352, ptr %l170
  br label %bb56
bb56:
  store { i64, [4 x i64] } zeroinitializer, ptr %t353
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t353, i32 0, i32 0
  store i64 1, ptr %t354
  %t355 = load %"compiler/mir:Lvalue", ptr %l170
  %t356 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t355, 0
  %t357 = getelementptr { i64, [4 x i64] }, ptr %t353, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t356, ptr %t357
  %t358 = load { i64, [4 x i64] }, ptr %t353
  store { i64, [15 x i64] } zeroinitializer, ptr %t359
  %t360 = getelementptr { i64, [15 x i64] }, ptr %t359, i32 0, i32 0
  store i64 0, ptr %t360
  %t362 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t358, 0
  %t363 = getelementptr { i64, [15 x i64] }, ptr %t359, i32 0, i32 1
  store { { i64, [4 x i64] } } %t362, ptr %t363
  %t364 = load { i64, [15 x i64] }, ptr %t359
  %t365 = load %"compiler/source:Span", ptr %l4
  %t366 = load ptr, ptr %l164, !tbaa !29
  %t367 = load i32, ptr %l165, !tbaa !23
  %t370 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t366, i32 %t367, { i64, [15 x i64] } %t364, %"compiler/source:Span" %t365)
  store { i64, [4 x i64] } %t370, ptr %l174
  br label %bb57
bb57:
  %t371 = load i32, ptr %l2, !tbaa !23
  %t372 = load %"compiler/source:Span", ptr %l4
  %t373 = load ptr, ptr %l163, !tbaa !29
  %t374 = load { i64, [4 x i64] }, ptr %l174
  %t377 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t373, { i64, [4 x i64] } %t374, i32 %t371, %"compiler/source:Span" %t372)
  store i32 %t377, ptr %l177
  br label %bb58
bb58:
  %t378 = load i32, ptr %l177, !tbaa !23
  store i32 %t378, ptr %l12, !tbaa !23
  %t379 = load i32, ptr %l12, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t380
  %t381 = getelementptr { i64, [2 x i64] }, ptr %t380, i32 0, i32 0
  store i64 1, ptr %t381
  %t383 = insertvalue { i32 } undef, i32 %t379, 0
  %t384 = getelementptr { i64, [2 x i64] }, ptr %t380, i32 0, i32 1
  store { i32 } %t383, ptr %t384
  %t385 = load { i64, [2 x i64] }, ptr %t380
  %t387 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t385)
  store %"compiler/lower:pl" %t387, ptr %l180
  br label %bb59
bb59:
  %t388 = load %"compiler/lower:pl", ptr %l180
  store %"compiler/lower:pl" %t388, ptr %l13
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/lower:lowering", ptr %t389, i32 0, i32 2
  %t392 = load ptr, ptr %t391, !tbaa !29
  %t393 = load i32, ptr %l2, !tbaa !23
  %t396 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t392, i32 %t393)
  store i1 %t396, ptr %l184
  br label %bb60
bb60:
  %t397 = load i1, ptr %l184, !tbaa !21
  br i1 %t397, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s7
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load i32, ptr %l2, !tbaa !23
  %t402 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s7, ptr %t398, i32 %t399)
  store { i64, ptr } %t402, ptr %l187
  br label %bb63
bb62:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/lower:lowering", ptr %t403, i32 0, i32 2
  %t406 = load ptr, ptr %t405, !tbaa !29
  %t407 = load i32, ptr %l2, !tbaa !23
  %t410 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t406, i32 %t407)
  store i1 %t410, ptr %l231
  br label %bb79
bb63:
  %t411 = load { i64, ptr }, ptr %l187, !tbaa !27
  store { i64, ptr } %t411, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t412 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t414 = extractvalue { i64, ptr } %t412, 0
  store i64 %t414, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t416 = load i64, ptr %l16, !tbaa !24
  %t417 = load i64, ptr %l15, !tbaa !24
  %t420 = icmp sgt i64 %t416, %t417
  br i1 %t420, label %bb64, label %bb65
bb64:
  %t422 = load i64, ptr %l17, !tbaa !24
  %t424 = icmp sgt i64 %t422, 0
  br i1 %t424, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l193, !tbaa !24
  br label %bb69
bb66:
  %t426 = load i64, ptr %l16, !tbaa !24
  %t427 = load i64, ptr %l15, !tbaa !24
  %t430 = sub i64 %t426, %t427
  %t431 = load i64, ptr %l17, !tbaa !24
  %t434 = add i64 %t430, %t431
  %t436 = sub i64 %t434, 1
  %t437 = load i64, ptr %l17, !tbaa !24
  %t440 = sdiv i64 %t436, %t437
  store i64 %t440, ptr %l196, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb68
bb68:
  %t442 = load i64, ptr %l196, !tbaa !24
  store i64 %t442, ptr %l193, !tbaa !24
  br label %bb69
bb69:
  %t443 = load i64, ptr %l193, !tbaa !24
  store i64 %t443, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb70
bb70:
  store %olang.scope zeroinitializer, ptr %s9
  %t444 = load i64, ptr %l19, !tbaa !24
  %t445 = load i64, ptr %l18, !tbaa !24
  %t448 = icmp slt i64 %t444, %t445
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s9)
  br label %bb78
bb72:
  br label %bb73
bb73:
  %t452 = load i64, ptr %l15, !tbaa !24
  %t453 = load i64, ptr %l19, !tbaa !24
  %t454 = load i64, ptr %l17, !tbaa !24
  %t457 = mul i64 %t453, %t454
  %t460 = add i64 %t452, %t457
  store i64 %t460, ptr %l20, !tbaa !24
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l214, !tbaa !29
  %t463 = load ptr, ptr %l0, !tbaa !29
  store ptr %t463, ptr %l215, !tbaa !29
  %t464 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t464, ptr %l216
  %t466 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s9, ptr %l216)
  store %"compiler/lower:pl" %t466, ptr %l218
  br label %bb74
bb74:
  %t467 = load i64, ptr %l20, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t468
  %t469 = getelementptr { i64, [1 x i64] }, ptr %t468, i32 0, i32 0
  store i64 0, ptr %t469
  %t471 = insertvalue { i64 } undef, i64 %t467, 0
  %t472 = getelementptr { i64, [1 x i64] }, ptr %t468, i32 0, i32 1
  store { i64 } %t471, ptr %t472
  %t473 = load { i64, [1 x i64] }, ptr %t468
  %t474 = load ptr, ptr %l215, !tbaa !29
  %t475 = load %"compiler/lower:pl", ptr %l218
  %t477 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s9, ptr %s9, ptr %t474, %"compiler/lower:pl" %t475, { i64, [1 x i64] } %t473)
  store %"compiler/lower:pl" %t477, ptr %l221
  br label %bb75
bb75:
  %t478 = load i64, ptr %l20, !tbaa !24
  %t480 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !27
  %t482 = getelementptr i32, ptr %t481, i64 %t478
  %t483 = load i32, ptr %t482, !tbaa !33
  %t484 = load { i64, [1 x i64] }, ptr %l3
  %t485 = load %"compiler/source:Span", ptr %l4
  %t486 = load ptr, ptr %l214, !tbaa !29
  %t487 = load %"compiler/lower:pl", ptr %l221
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %s9, ptr %t486, %"compiler/lower:pl" %t487, i32 %t483, { i64, [1 x i64] } %t484, %"compiler/source:Span" %t485)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s9)
  br label %bb77
bb77:
  %t491 = load i64, ptr %l19, !tbaa !24
  %t493 = add i64 %t491, 1
  store i64 %t493, ptr %l19, !tbaa !24
  br label %bb70
bb78:
  call void @__olang_scope_close(ptr %s7)
  br label %bb100
bb79:
  %t495 = load i1, ptr %l231, !tbaa !21
  br i1 %t495, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s12
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l232, !tbaa !29
  %t497 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t497, ptr %l233, !tbaa !23
  %t498 = load ptr, ptr %l0, !tbaa !29
  store ptr %t498, ptr %l234, !tbaa !29
  %t499 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t499, ptr %l235
  %t501 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s12, ptr %l235)
  store %"compiler/lower:pl" %t501, ptr %l237
  br label %bb82
bb81:
  %t502 = load ptr, ptr %l7, !tbaa !29
  %t503 = load i32, ptr %l8, !tbaa !23
  %t506 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t502, i32 %t503)
  store i32 %t506, ptr %l258
  br label %bb88
bb82:
  %t507 = load ptr, ptr %l234, !tbaa !29
  %t508 = load %"compiler/lower:pl", ptr %l237
  %t509 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s12, ptr %t507, %"compiler/lower:pl" %t508)
  store %"compiler/mir:Lvalue" %t509, ptr %l238
  br label %bb83
bb83:
  store { i64, [15 x i64] } zeroinitializer, ptr %t510
  %t511 = getelementptr { i64, [15 x i64] }, ptr %t510, i32 0, i32 0
  store i64 5, ptr %t511
  %t512 = load %"compiler/mir:Lvalue", ptr %l238
  %t513 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t512, 0
  %t514 = getelementptr { i64, [15 x i64] }, ptr %t510, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t513, ptr %t514
  %t515 = load { i64, [15 x i64] }, ptr %t510
  %t516 = load %"compiler/source:Span", ptr %l4
  %t517 = load ptr, ptr %l232, !tbaa !29
  %t518 = load i32, ptr %l233, !tbaa !23
  %t521 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t517, i32 %t518, { i64, [15 x i64] } %t515, %"compiler/source:Span" %t516)
  store { i64, [4 x i64] } %t521, ptr %l241
  br label %bb84
bb84:
  %t522 = load { i64, [4 x i64] }, ptr %l241
  store { i64, [4 x i64] } %t522, ptr %l21
  %t523 = load ptr, ptr %l0, !tbaa !29
  store ptr %t523, ptr %l242, !tbaa !29
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i32, ptr %l2, !tbaa !23
  %t528 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %s12, ptr %t524, i32 %t525)
  store { i64, ptr } %t528, ptr %l245
  br label %bb85
bb85:
  %t529 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t529, 0
  %t531 = extractvalue { i64, ptr } %t529, 1
  %t532 = mul i64 %t530, 4
  %t533 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t532)
  call void @llvm.memcpy.p0.p0.i64(ptr %t533, ptr %t531, i64 %t532, i1 false)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  store { i64, ptr } %t535, ptr %l246, !tbaa !27
  %t536 = load { i64, [4 x i64] }, ptr %l21
  store { i64, [4 x i64] } %t536, ptr %l247
  %t537 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t537, ptr %l248
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l249, !tbaa !29
  %t539 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t539, ptr %l250
  %t541 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l250)
  store %"compiler/lower:pl" %t541, ptr %l252
  br label %bb86
bb86:
  %t542 = load { i64, [1 x i64] }, ptr %l3
  %t543 = load %"compiler/source:Span", ptr %l4
  %t544 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t545 = ptrtoint ptr %t544 to i64
  %t547 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 0
  %t548 = load ptr, ptr %l249, !tbaa !29
  store ptr %t548, ptr %t547, !tbaa !28
  %t549 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 1
  %t550 = load %"compiler/lower:pl", ptr %l252
  store %"compiler/lower:pl" %t550, ptr %t549, !tbaa !28
  %t551 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 2
  store { i64, [1 x i64] } %t542, ptr %t551, !tbaa !28
  %t553 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 3
  store %"compiler/source:Span" %t543, ptr %t553, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t555 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 4
  store ptr %v0, ptr %t555, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t556 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 5
  store ptr %s0, ptr %t556, !tbaa !28
  %t557 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_2, 0
  %t558 = insertvalue { ptr, ptr } %t557, ptr %t546, 1
  %t559 = load ptr, ptr %l242, !tbaa !29
  %t560 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t561 = load { i64, [4 x i64] }, ptr %l247
  %t562 = load %"compiler/source:Span", ptr %l248
  %t564 = extractvalue { ptr, ptr } %t558, 0
  %t565 = extractvalue { ptr, ptr } %t558, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %s12, ptr %s12, ptr %t559, { i64, ptr } %t560, { i64, [4 x i64] } %t561, %"compiler/source:Span" %t562, ptr %t564, ptr %t565)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s12)
  br label %bb99
bb88:
  %t566 = load i32, ptr %l258, !range !{i32 0, i32 33}
  %t568 = trunc i64 19 to i32
  %t569 = icmp eq i32 %t566, %t568
  br i1 %t569, label %bb89, label %bb90
bb89:
  %t571 = load ptr, ptr %l7, !tbaa !29
  %t572 = load i32, ptr %l8, !tbaa !23
  %t575 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t571, i32 %t572)
  store i32 %t575, ptr %l263
  br label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s15
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t577 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s15, ptr %t576, %"compiler/source:Span" %t577, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb97
bb91:
  %t580 = load i32, ptr %l263, !tbaa !23
  store i32 %t580, ptr %l22, !tbaa !23
  %t581 = load ptr, ptr %l0, !tbaa !29
  store ptr %t581, ptr %l264, !tbaa !29
  %t582 = load ptr, ptr %l0, !tbaa !29
  store ptr %t582, ptr %l265, !tbaa !29
  %t583 = load ptr, ptr %l7, !tbaa !29
  store ptr %t583, ptr %l266, !tbaa !29
  %t584 = load ptr, ptr %l7, !tbaa !29
  %t585 = load i32, ptr %l8, !tbaa !23
  %t588 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t584, i32 %t585)
  store i32 %t588, ptr %l269
  br label %bb92
bb92:
  %t589 = load ptr, ptr %l266, !tbaa !29
  %t590 = load i32, ptr %l269, !tbaa !23
  %t591 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t589, i32 %t590)
  store i64 %t591, ptr %l270
  br label %bb93
bb93:
  %t592 = load ptr, ptr %l265, !tbaa !29
  %t593 = load i64, ptr %l270, !tbaa !24
  %t594 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t592, i64 %t593)
  store { i64, [4 x i64] } %t594, ptr %l271
  br label %bb94
bb94:
  %t595 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t595, ptr %l272
  %t596 = load ptr, ptr %l0, !tbaa !29
  store ptr %t596, ptr %l273, !tbaa !29
  %t597 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t597, ptr %l274
  %t599 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l274)
  store %"compiler/lower:pl" %t599, ptr %l276
  br label %bb95
bb95:
  %t600 = load i32, ptr %l22, !tbaa !23
  %t601 = load { i64, [1 x i64] }, ptr %l3
  %t602 = load %"compiler/source:Span", ptr %l4
  %t603 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t604 = ptrtoint ptr %t603 to i64
  %t605 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t604, i64 8)
  %t606 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 0
  %t607 = load ptr, ptr %l273, !tbaa !29
  store ptr %t607, ptr %t606, !tbaa !28
  %t608 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 1
  %t609 = load %"compiler/lower:pl", ptr %l276
  store %"compiler/lower:pl" %t609, ptr %t608, !tbaa !28
  %t610 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 2
  store i32 %t600, ptr %t610, !tbaa !28
  %t612 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 3
  store { i64, [1 x i64] } %t601, ptr %t612, !tbaa !28
  %t614 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 4
  store %"compiler/source:Span" %t602, ptr %t614, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t616 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 5
  store ptr %v0, ptr %t616, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t617 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t605, i32 0, i32 6
  store ptr %s0, ptr %t617, !tbaa !28
  %t618 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t619 = insertvalue { ptr, ptr } %t618, ptr %t605, 1
  %t620 = load ptr, ptr %l264, !tbaa !29
  %t621 = load { i64, [4 x i64] }, ptr %l271
  %t622 = load %"compiler/source:Span", ptr %l272
  %t624 = extractvalue { ptr, ptr } %t619, 0
  %t625 = extractvalue { ptr, ptr } %t619, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s0, ptr %t620, { i64, [4 x i64] } %t621, %"compiler/source:Span" %t622, ptr %t624, ptr %t625)
  br label %bb96
bb96:
  br label %bb98
bb97:
  call void @__olang_scope_close(ptr %s15)
  br label %bb98
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t626 = load i32, ptr %l12, !tbaa !23
  %t628 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t626)
  store %"compiler/mir:Lvalue" %t628, ptr %l284
  br label %bb101
bb101:
  store { i64, [4 x i64] } zeroinitializer, ptr %t629
  %t630 = getelementptr { i64, [4 x i64] }, ptr %t629, i32 0, i32 0
  store i64 1, ptr %t630
  %t631 = load %"compiler/mir:Lvalue", ptr %l284
  %t632 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t631, 0
  %t633 = getelementptr { i64, [4 x i64] }, ptr %t629, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t632, ptr %t633
  %t634 = load { i64, [4 x i64] }, ptr %t629
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t634, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederivedRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca { i64, [1 x i64] }
  %l10 = alloca i64
  %l24 = alloca { i64, [1 x i64] }
  %l26 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t22 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 8
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 6
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l10
  br label %bb4
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l10, !tbaa !24
  %t21 = add i64 %t19, %t18
  store { i64, [1 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 0
  store i64 1, ptr %t23
  %t25 = insertvalue { i64 } undef, i64 %t21, 0
  %t26 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 1
  store { i64 } %t25, ptr %t26
  %t27 = load { i64, [1 x i64] }, ptr %t22
  store { i64, [1 x i64] } %t27, ptr %l3
  br label %bb22
bb5:
  %t29 = load { i64, [2 x i64] }, ptr %l1
  %t31 = extractvalue { i64, [2 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 1
  br i1 %t32, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  %t34 = load { i64, [2 x i64] }, ptr %l1
  %t36 = extractvalue { i64, [2 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 2
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  %t39 = load { i64, [2 x i64] }, ptr %l1
  %t41 = extractvalue { i64, [2 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 3
  br i1 %t42, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  %t44 = load { i64, [2 x i64] }, ptr %l1
  %t46 = extractvalue { i64, [2 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 7
  br i1 %t47, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l1
  %t53 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t49, { i64, [2 x i64] } %t50)
  store { i64, [1 x i64] } %t53, ptr %l24
  br label %bb15
bb15:
  %t54 = load { i64, [1 x i64] }, ptr %l24
  store { i64, [1 x i64] } %t54, ptr %l3
  br label %bb22
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enullScope(ptr %v0, ptr %t55)
  store { i64, [1 x i64] } %t57, ptr %l26
  br label %bb20
bb20:
  %t58 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t58, ptr %l3
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3a66230741c412ef_cf9b39cad1abd5db)
  unreachable
bb22:
  %t59 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l58 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Lvalue"
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/mir:Lvalue", ptr %l1
  %t5 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eprojsOf(ptr %v0, ptr %s0, ptr %t1, %"compiler/mir:Lvalue" %t2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = add i64 %t9, 1
  store i64 %t11, ptr %l16, !tbaa !24
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l16, !tbaa !24
  %t16 = icmp sle i64 %t15, 576460752303423487
  br i1 %t16, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f1bdf5287cd948f5_22d23fd045556b79)
  unreachable
bb4:
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = mul i64 %t18, 16
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f1bdf5287cd948f5_22d23fd045556b79)
  unreachable
bb6:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb11
bb8:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l28, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb10
bb10:
  %t54 = load i64, ptr %l28, !tbaa !24
  store i64 %t54, ptr %l25, !tbaa !24
  br label %bb11
bb11:
  %t55 = load i64, ptr %l25, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l10, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, [1 x i64] }, ptr %t78, i64 %t75
  %t80 = load { i64, [1 x i64] }, ptr %t79
  %t83 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, [1 x i64] }, ptr %t84, i64 %t74
  store { i64, [1 x i64] } %t80, ptr %t85
  br label %bb16
bb16:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l9, !tbaa !24
  br label %bb12
bb17:
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t96 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, [1 x i64] }, ptr %t97, i64 %t92
  store { i64, [1 x i64] } %a2, ptr %t98
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lower:lowering", ptr %t99, i32 0, i32 3
  %t102 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t103 = load { i64, [2 x i64] }, ptr %t102
  %t104 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t108 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t101, { i64, [2 x i64] } %t103, { i64, ptr } %t104)
  store %"compiler/mir:Lvalue" %t108, ptr %l58
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t109 = load %"compiler/mir:Lvalue", ptr %l58
  store %"compiler/mir:Lvalue" %t109, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i32
  %l21 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t12 = icmp eq i32 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l13
  br label %bb4
bb4:
  %t22 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t24 = trunc i64 26 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l9, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 2
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t34, i32 %t35)
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

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardHolder(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 9
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Block", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = icmp ne i64 %t16, 1
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Block", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l15, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 0
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l3, !tbaa !29
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 17}
  %t37 = icmp eq i64 %t35, 3
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l4, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardIf(ptr %v0, ptr %v1, ptr %t45, %"compiler/source:Span" %a1, ptr %t47)
  br label %bb12
bb12:
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_59bbbec53ff2140a_aa19bd361a96e2fe)
  unreachable
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldRefPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca ptr
  %l18 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 7
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t25, i64 %t28)
  store %"compiler/typed:Local" %t31, ptr %l18
  br label %bb6
bb6:
  %t32 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 2
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = load ptr, ptr %l12, !tbaa !29
  %t36 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t34, i32 %t33)
  store i1 %t36, ptr %l20
  br label %bb7
bb7:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t40 = load i32, ptr %l3, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t46 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldReferent(ptr %v0, ptr %v1, ptr %t38, ptr %t39, i64 %t42)
  store i1 %t46, ptr %l26
  br label %bb10
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t55 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldLocal(ptr %v0, ptr %v1, ptr %t47, ptr %t48, i64 %t51)
  store i1 %t55, ptr %l31
  br label %bb11
bb10:
  %t56 = load i1, ptr %l26, !tbaa !21
  store i1 %t56, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t57 = load i1, ptr %l31, !tbaa !21
  store i1 %t57, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t58 = load i1, ptr %l21, !tbaa !21
  store i1 %t58, ptr %l4, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_7eb84e3ee2221218_b4c673b45eee5a74)
  unreachable
bb18:
  %t59 = load i1, ptr %l4, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldReferent(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/typed:Local"
  %l4 = alloca ptr
  %l9 = alloca %"compiler/typed:Local"
  %l11 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i1
  %l18 = alloca i1
  %l25 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l56 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca i1
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
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t19, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb2
bb2:
  %t25 = load ptr, ptr %l11, !tbaa !29
  %t26 = load i32, ptr %l15, !tbaa !23
  %t27 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t27, ptr %l16
  br label %bb3
bb3:
  %t28 = load i1, ptr %l16, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t32 = load i32, ptr %t31, !range !{i32 0, i32 7}
  %t34 = trunc i64 0 to i32
  %t35 = icmp eq i32 %t32, %t34
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lower:lowering", ptr %t40, i32 0, i32 45
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t42, i64 %t43)
  store i1 %t46, ptr %l25
  br label %bb9
bb8:
  br label %bb25
bb9:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/typed:LocalUses", ptr %t49, i32 0, i32 9
  %t52 = load i64, ptr %l2, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v1, ptr %v1, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l30
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l30, !tbaa !29
  store ptr %t56, ptr %l4, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t67 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCall(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i1 %t67, ptr %l37
  br label %bb16
bb15:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb17
bb16:
  %t68 = load i1, ptr %l37, !tbaa !21
  store i1 %t68, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t69 = load i1, ptr %l34, !tbaa !21
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load i64, ptr %l2, !tbaa !24
  %t76 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldUnchanged(ptr %v0, ptr %v1, ptr %t70, ptr %t71, i64 %t72)
  store i1 %t76, ptr %l42
  br label %bb20
bb19:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb21
bb20:
  %t77 = load i1, ptr %l42, !tbaa !21
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  store i1 true, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/typed:LocalUses", ptr %t80, i32 0, i32 4
  %t83 = load i64, ptr %l2, !tbaa !24
  %t86 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t82, i64 %t83)
  store i1 %t86, ptr %l47
  br label %bb26
bb26:
  %t87 = load i1, ptr %l47, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb27, label %bb28
bb27:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:LocalUses", ptr %t90, i32 0, i32 2
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t92, i64 %t93)
  store i1 %t96, ptr %l53
  br label %bb29
bb28:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb30
bb29:
  %t97 = load i1, ptr %l53, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb30
bb30:
  %t100 = load i1, ptr %l49, !tbaa !21
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l56, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 2
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t107 = load i32, ptr %t106, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t105, i32 %t107)
  store i32 %t110, ptr %l60
  br label %bb33
bb32:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb35
bb33:
  %t111 = load ptr, ptr %l56, !tbaa !29
  %t112 = load i32, ptr %l60, !tbaa !23
  %t113 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietLife(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t113, ptr %l61
  br label %bb34
bb34:
  %t114 = load i1, ptr %l61, !tbaa !21
  store i1 %t114, ptr %l55, !tbaa !21
  br label %bb35
bb35:
  %t115 = load i1, ptr %l55, !tbaa !21
  store i1 %t115, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca %"compiler/source:Span"
  %l10 = alloca { i64, [4 x i64] }
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca { i64, [21 x i64] }
  %s0 = alloca %olang.scope
  %t10 = alloca { i64, [4 x i64] }, align 8
  %t21 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lower:lowering", ptr %t4, i32 0, i32 9
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l7, !tbaa !23
  store %"compiler/source:Span" %a3, ptr %l8
  store { i64, [4 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 0
  store i64 1, ptr %t11
  %t13 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %a1, 0
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t13, ptr %t14
  %t15 = load { i64, [4 x i64] }, ptr %t10
  store { i64, [4 x i64] } %t15, ptr %l10
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t20 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t16, i64 %a2)
  store { i64, [4 x i64] } %t20, ptr %l13
  br label %bb1
bb1:
  store { i64, [21 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [21 x i64] }, ptr %t21, i32 0, i32 0
  store i64 14, ptr %t22
  %t23 = load %"compiler/source:Span", ptr %l8
  %t24 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t23, 0
  %t25 = load { i64, [4 x i64] }, ptr %l10
  %t26 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } %t24, { i64, [4 x i64] } %t25, 1
  %t27 = load { i64, [4 x i64] }, ptr %l13
  %t28 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } %t26, { i64, [4 x i64] } %t27, 2
  %t29 = getelementptr { i64, [21 x i64] }, ptr %t21, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } } %t28, ptr %t29
  %t30 = load { i64, [21 x i64] }, ptr %t21
  store { i64, [21 x i64] } %t30, ptr %l14
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t32 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s0, ptr %t31, i32 %t32, ptr %l14)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ei64(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l46 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l15, !tbaa !24
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = icmp sge i64 %t13, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l15, !tbaa !24
  %t17 = icmp sle i64 %t16, 2305843009213693951
  br i1 %t17, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_fe6f132f471090d8_e27fa787bcbe9484)
  unreachable
bb4:
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = mul i64 %t19, 4
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t24, ptr %lp3
  %t26 = load ptr, ptr %lp3
  store { i64, ptr } %t23, ptr %t26, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_fe6f132f471090d8_e27fa787bcbe9484)
  unreachable
bb6:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb11
bb8:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l27, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb10
bb10:
  %t57 = load i64, ptr %l27, !tbaa !24
  store i64 %t57, ptr %l24, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l24, !tbaa !24
  store i64 %t58, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t67 = load i64, ptr %l4, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l9, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t78, ptr %l46, !tbaa !27
  %t79 = load i64, ptr %l9, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i32, ptr %t82, i64 %t79
  %t84 = load i32, ptr %t83, !tbaa !33
  %t86 = load ptr, ptr %lp3
  %t88 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i32, ptr %t89, i64 %t77
  store i32 %t84, ptr %t90, !tbaa !33
  br label %bb16
bb16:
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l8, !tbaa !24
  br label %bb12
bb17:
  %t95 = load ptr, ptr %lp3
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinErrors(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %a1, ptr %l2)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 2
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l9, !tbaa !29
  %t14 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t14, ptr %l11
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t16 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } %t16)
  store i32 %t17, ptr %l12
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i32, ptr %l12, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ejump(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca ptr
  %l31 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 17
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eLen_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 17
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRef_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %s2, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l16
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l16, !tbaa !29
  %t24 = getelementptr %"compiler/lower:loopCtx", ptr %t22, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t29 = icmp eq i32 %t25, %a3
  br i1 %t29, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l21, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lower:lowering", ptr %t32, i32 0, i32 17
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRef_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %s3, ptr %t34, i64 %t35)
  store ptr %t38, ptr %l25
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t41 = getelementptr %"compiler/lower:loopCtx", ptr %t39, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t43, i64 %t42)
  br label %bb10
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 17
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v0, ptr %t47, i64 %t48)
  store ptr %t51, ptr %l31
  br label %bb11
bb11:
  %t52 = load ptr, ptr %l31, !tbaa !29
  store ptr %t52, ptr %l5, !tbaa !29
  %t55 = trunc i64 0 to i32
  %t56 = icmp eq i32 %a2, %t55
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = getelementptr %"compiler/lower:loopCtx", ptr %t59, i32 0, i32 3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v0, ptr %t58, ptr %t61)
  br label %bb14
bb13:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t67 = getelementptr %"compiler/lower:loopCtx", ptr %t65, i32 0, i32 4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v0, ptr %t64, ptr %t67)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = sub i64 %t70, 1
  store i64 %t72, ptr %l4, !tbaa !24
  br label %bb2
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s0, ptr %t74, %"compiler/source:Span" %a1, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d5, i32 0, i32 1) })
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sge i64 %t9, %a1
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eexitLevel(ptr %v0, ptr %t17, i64 %t18)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t21, 1
  store i64 %t23, ptr %l2, !tbaa !24
  br label %bb2
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
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
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:lowering", ptr %t7, i32 0, i32 9
  %t10 = load i32, ptr %t9, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v1, ptr %a1, i32 %t10)
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 10
  store i1 true, ptr %t15, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emadeAt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  %l13 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 28
  %t5 = load i32, ptr %t4, !tbaa !23
  %t8 = icmp eq i32 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l1, !tbaa !23
  %t12 = icmp sge i32 %t10, 0
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 29
  %t18 = load { i64, [1 x i64] }, ptr %t17
  store { i64, [1 x i64] } %t18, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t20, i32 %t21)
  store { i64, [1 x i64] } %t24, ptr %l13
  br label %bb7
bb7:
  %t25 = load { i64, [1 x i64] }, ptr %l13
  store { i64, [1 x i64] } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i32
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca i32
  %l32 = alloca i32
  %l41 = alloca { i64, ptr }
  %l54 = alloca i1
  %l58 = alloca i1
  %l65 = alloca i32
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca { i64, ptr }
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l91 = alloca i64
  %l112 = alloca { i64, ptr }
  %l119 = alloca { i64, [4 x i64] }
  %l124 = alloca i32
  %l127 = alloca i32
  %l143 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l148 = alloca i32
  %l153 = alloca { i64, [4 x i64] }
  %l170 = alloca ptr
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l181 = alloca { i64, [4 x i64] }
  %l187 = alloca i32
  %l190 = alloca i32
  %l214 = alloca ptr
  %l230 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t39 = alloca { i64, [4 x i64] }, align 8
  %t208 = alloca { i64, [8 x i64] }, align 8
  %t345 = alloca { i64, [8 x i64] }, align 8
  %t421 = alloca { i64, [4 x i64] }, align 8
  %t428 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t18, ptr %l41, !tbaa !27
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t26, ptr %t24)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l5, !tbaa !24
  br label %bb1
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 10
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  store { i64, [4 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 0
  store i64 0, ptr %t40
  %t41 = load { i64, [4 x i64] }, ptr %t39
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t41, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t43 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t43, ptr %l8, !tbaa !23
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Match", ptr %t45, i32 0, i32 3
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load i32, ptr %l2, !tbaa !23
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t54 = icmp ne i32 %t50, %t51
  store i1 %t54, ptr %l54, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb13
bb13:
  %t56 = load i1, ptr %l54, !tbaa !21
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t57 = load i32, ptr %l2, !tbaa !23
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t61 = icmp ne i32 %t57, %t58
  store i1 %t61, ptr %l58, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb16
bb16:
  %t63 = load i1, ptr %l58, !tbaa !21
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l2, !tbaa !23
  %t70 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t64, i32 %t65, %"compiler/source:Span" %a3)
  store i32 %t70, ptr %l65
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t71 = load i32, ptr %l65, !tbaa !23
  store i32 %t71, ptr %l8, !tbaa !23
  br label %bb20
bb20:
  %t72 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l66
  br label %bb21
bb21:
  %t73 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l9
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Match", ptr %t74, i32 0, i32 1
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l12, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s7
  %t83 = load i64, ptr %l11, !tbaa !24
  %t84 = load i64, ptr %l12, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb88
bb24:
  br label %bb25
bb25:
  %t91 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t91, ptr %l75, !tbaa !27
  %t92 = load i64, ptr %l11, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l13, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lower:lowering", ptr %t99, i32 0, i32 10
  %t102 = load i1, ptr %t101, !tbaa !21
  br i1 %t102, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s7)
  br label %bb88
bb27:
  br label %bb28
bb28:
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l80
  br label %bb29
bb29:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l14
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l81
  br label %bb30
bb30:
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l15
  store i64 0, ptr %l16, !tbaa !24
  %t108 = load ptr, ptr %l13, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Arm", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  store i64 %t113, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t115 = load i64, ptr %l17, !tbaa !24
  %t116 = load i64, ptr %l16, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb31, label %bb32
bb31:
  %t121 = load i64, ptr %l18, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb36
bb33:
  %t125 = load i64, ptr %l17, !tbaa !24
  %t126 = load i64, ptr %l16, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l18, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l18, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l91, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb35
bb35:
  %t141 = load i64, ptr %l91, !tbaa !24
  store i64 %t141, ptr %l88, !tbaa !24
  br label %bb36
bb36:
  %t142 = load i64, ptr %l88, !tbaa !24
  store i64 %t142, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb37
bb37:
  %t143 = load i64, ptr %l20, !tbaa !24
  %t144 = load i64, ptr %l19, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb38, label %bb39
bb38:
  br label %bb63
bb39:
  br label %bb40
bb40:
  %t151 = load i64, ptr %l16, !tbaa !24
  %t152 = load i64, ptr %l20, !tbaa !24
  %t153 = load i64, ptr %l18, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  store i64 %t159, ptr %l21, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/lower:lowering", ptr %t161, i32 0, i32 10
  %t164 = load i1, ptr %t163, !tbaa !21
  br i1 %t164, label %bb41, label %bb42
bb41:
  br label %bb63
bb42:
  br label %bb43
bb43:
  %t166 = load ptr, ptr %l13, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Arm", ptr %t166, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l112, !tbaa !27
  %t170 = load i64, ptr %l21, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 %t170
  %t175 = load ptr, ptr %t174, !tbaa !39
  store ptr %t175, ptr %l22, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l22, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Alt", ptr %t178, i32 0, i32 0
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t185 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t177, ptr %t181)
  store { i64, [4 x i64] } %t185, ptr %l119
  br label %bb44
bb44:
  %t186 = load { i64, [4 x i64] }, ptr %l119
  store { i64, [4 x i64] } %t186, ptr %l23
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/lower:lowering", ptr %t187, i32 0, i32 10
  %t190 = load i1, ptr %t189, !tbaa !21
  br i1 %t190, label %bb45, label %bb46
bb45:
  br label %bb63
bb46:
  br label %bb47
bb47:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/lower:lowering", ptr %t192, i32 0, i32 3
  %t196 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t194)
  store i32 %t196, ptr %l124
  br label %bb48
bb48:
  %t197 = load i32, ptr %l124, !tbaa !23
  store i32 %t197, ptr %l24, !tbaa !23
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/lower:lowering", ptr %t198, i32 0, i32 3
  %t202 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t200)
  store i32 %t202, ptr %l127
  br label %bb49
bb49:
  %t203 = load i32, ptr %l127, !tbaa !23
  store i32 %t203, ptr %l25, !tbaa !23
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load { i64, [4 x i64] }, ptr %l23
  %t206 = load i32, ptr %l24, !tbaa !23
  %t207 = load i32, ptr %l25, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t208
  %t209 = getelementptr { i64, [8 x i64] }, ptr %t208, i32 0, i32 0
  store i64 2, ptr %t209
  %t211 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t205, 0
  %t213 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t211, i32 %t206, 1
  %t215 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t213, i32 %t207, 2
  %t216 = getelementptr { i64, [8 x i64] }, ptr %t208, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t215, ptr %t216
  %t217 = load { i64, [8 x i64] }, ptr %t208
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t204, { i64, [8 x i64] } %t217)
  br label %bb50
bb50:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t220, i32 %t221)
  br label %bb51
bb51:
  %t224 = load ptr, ptr %l22, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Alt", ptr %t224, i32 0, i32 1
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  store { i64, ptr } %t227, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t229 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t229, 0
  store i64 %t231, ptr %l28, !tbaa !24
  br label %bb52
bb52:
  %t233 = load i64, ptr %l27, !tbaa !24
  %t234 = load i64, ptr %l28, !tbaa !24
  %t237 = icmp slt i64 %t233, %t234
  %t239 = xor i1 %t237, true
  br i1 %t239, label %bb53, label %bb54
bb53:
  br label %bb59
bb54:
  br label %bb55
bb55:
  %t241 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t241, ptr %l143, !tbaa !27
  %t242 = load i64, ptr %l27, !tbaa !24
  %t244 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr ptr, ptr %t245, i64 %t242
  %t247 = load ptr, ptr %t246, !tbaa !39
  store ptr %t247, ptr %l29, !tbaa !29
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l146, !tbaa !29
  %t250 = load ptr, ptr %l29, !tbaa !29
  %t252 = getelementptr %"compiler/typed:Bind", ptr %t250, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  store i32 %t253, ptr %l148, !tbaa !23
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l29, !tbaa !29
  %t257 = getelementptr %"compiler/typed:Bind", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t262 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t254, ptr %t258)
  store { i64, [4 x i64] } %t262, ptr %l153
  br label %bb56
bb56:
  %t263 = load ptr, ptr %l13, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Arm", ptr %t263, i32 0, i32 0
  %t266 = load %"compiler/source:Span", ptr %t265
  %t267 = load ptr, ptr %l146, !tbaa !29
  %t268 = load i32, ptr %l148, !tbaa !23
  %t269 = load { i64, [4 x i64] }, ptr %l153
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ebind(ptr %v0, ptr %t267, i32 %t268, { i64, [4 x i64] } %t269, %"compiler/source:Span" %t266)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t271 = load i64, ptr %l27, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l27, !tbaa !24
  br label %bb52
bb59:
  %t275 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s7, ptr %t275, ptr %l15)
  br label %bb60
bb60:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i32, ptr %l25, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t278, i32 %t279)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t282 = load i64, ptr %l20, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l20, !tbaa !24
  br label %bb37
bb63:
  %t286 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s7, ptr %t286, ptr %l14)
  br label %bb64
bb64:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s7, ptr %t289, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290)
  br label %bb65
bb65:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/lower:lowering", ptr %t293, i32 0, i32 10
  %t296 = load i1, ptr %t295, !tbaa !21
  br i1 %t296, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s17
  %t298 = load ptr, ptr %l0, !tbaa !29
  store ptr %t298, ptr %l170, !tbaa !29
  %t299 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t299, ptr %l171
  %t301 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %s17, ptr %l171)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t301, ptr %l173
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t302 = load ptr, ptr %l170, !tbaa !29
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s17, ptr %t302, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s7)
  br label %bb87
bb70:
  %t304 = load ptr, ptr %l13, !tbaa !29
  %t306 = getelementptr %"compiler/typed:Arm", ptr %t304, i32 0, i32 2
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t309 = icmp eq ptr %t307, null
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb71, label %bb72
bb71:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load ptr, ptr %l13, !tbaa !29
  %t316 = getelementptr %"compiler/typed:Arm", ptr %t314, i32 0, i32 2
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t320 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t313, ptr %t317)
  store { i64, [4 x i64] } %t320, ptr %l181
  br label %bb73
bb72:
  br label %bb83
bb73:
  %t321 = load { i64, [4 x i64] }, ptr %l181
  store { i64, [4 x i64] } %t321, ptr %l30
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/lower:lowering", ptr %t322, i32 0, i32 10
  %t325 = load i1, ptr %t324, !tbaa !21
  %t327 = xor i1 %t325, true
  br i1 %t327, label %bb74, label %bb75
bb74:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/lower:lowering", ptr %t329, i32 0, i32 3
  %t333 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t331)
  store i32 %t333, ptr %l187
  br label %bb76
bb75:
  br label %bb82
bb76:
  %t334 = load i32, ptr %l187, !tbaa !23
  store i32 %t334, ptr %l31, !tbaa !23
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/lower:lowering", ptr %t335, i32 0, i32 3
  %t339 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t337)
  store i32 %t339, ptr %l190
  br label %bb77
bb77:
  %t340 = load i32, ptr %l190, !tbaa !23
  store i32 %t340, ptr %l32, !tbaa !23
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load { i64, [4 x i64] }, ptr %l30
  %t343 = load i32, ptr %l31, !tbaa !23
  %t344 = load i32, ptr %l32, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t345
  %t346 = getelementptr { i64, [8 x i64] }, ptr %t345, i32 0, i32 0
  store i64 2, ptr %t346
  %t348 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t342, 0
  %t350 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t348, i32 %t343, 1
  %t352 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t350, i32 %t344, 2
  %t353 = getelementptr { i64, [8 x i64] }, ptr %t345, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t352, ptr %t353
  %t354 = load { i64, [8 x i64] }, ptr %t345
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t341, { i64, [8 x i64] } %t354)
  br label %bb78
bb78:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load i32, ptr %l32, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t357, i32 %t358)
  br label %bb79
bb79:
  %t361 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s7, ptr %t361, ptr %l14)
  br label %bb80
bb80:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load i32, ptr %l31, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t364, i32 %t365)
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load ptr, ptr %l13, !tbaa !29
  %t370 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2earm(ptr %v0, ptr %v1, ptr %t368, ptr %t369, i32 %t370)
  br label %bb84
bb84:
  %t374 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t374, ptr %l9)
  br label %bb85
bb85:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s7, ptr %t377, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t378)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s7)
  br label %bb87
bb87:
  %t381 = load i64, ptr %l11, !tbaa !24
  %t383 = add i64 %t381, 1
  store i64 %t383, ptr %l11, !tbaa !24
  br label %bb22
bb88:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/lower:lowering", ptr %t385, i32 0, i32 10
  %t388 = load i1, ptr %t387, !tbaa !21
  %t390 = xor i1 %t388, true
  br i1 %t390, label %bb89, label %bb90
bb89:
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l214, !tbaa !29
  %t393 = load ptr, ptr %l1, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Match", ptr %t393, i32 0, i32 2
  %t396 = load ptr, ptr %t395, !tbaa !29
  %t398 = icmp eq ptr %t396, null
  br i1 %t398, label %bb91, label %bb92
bb90:
  br label %bb96
bb91:
  call void @__olang_check_failed(ptr @olang_loc_820fb920c7f3fc9d_41590fa82c6def29)
  unreachable
bb92:
  br label %bb93
bb93:
  %t400 = load ptr, ptr %l1, !tbaa !29
  %t402 = getelementptr %"compiler/typed:Match", ptr %t400, i32 0, i32 2
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load i32, ptr %l8, !tbaa !23
  %t405 = load ptr, ptr %l214, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2earm(ptr %v0, ptr %v1, ptr %t405, ptr %t403, i32 %t404)
  br label %bb94
bb94:
  %t408 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %s0, ptr %t408, ptr %l9)
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %s0, ptr %t411, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t412)
  br label %bb97
bb97:
  %t415 = load i32, ptr %l8, !tbaa !23
  %t416 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t419 = icmp eq i32 %t415, %t416
  br i1 %t419, label %bb98, label %bb99
bb98:
  store { i64, [4 x i64] } zeroinitializer, ptr %t421
  %t422 = getelementptr { i64, [4 x i64] }, ptr %t421, i32 0, i32 0
  store i64 0, ptr %t422
  %t423 = load { i64, [4 x i64] }, ptr %t421
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t423, ptr %rv
  br label %ret
bb99:
  br label %bb100
bb100:
  %t425 = load i32, ptr %l8, !tbaa !23
  %t427 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t425)
  store %"compiler/mir:Lvalue" %t427, ptr %l230
  br label %bb101
bb101:
  store { i64, [4 x i64] } zeroinitializer, ptr %t428
  %t429 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 0
  store i64 1, ptr %t429
  %t430 = load %"compiler/mir:Lvalue", ptr %l230
  %t431 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t430, 0
  %t432 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t431, ptr %t432
  %t433 = load { i64, [4 x i64] }, ptr %t428
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t433, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, [1 x i64] }
  %l12 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l52 = alloca i32
  %l54 = alloca i64
  %l59 = alloca { i64, [1 x i64] }
  %l60 = alloca i32
  %l65 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l77 = alloca i32
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t5 = load i64, ptr %t4, !tbaa !24
  %t6 = load i64, ptr %l14, !tbaa !24
  %t8 = sub i64 %t6, %t5
  store i64 %t8, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = add i64 %t10, 1
  store i64 %t12, ptr %l18, !tbaa !24
  %t13 = load i64, ptr %l18, !tbaa !24
  %t14 = icmp sge i64 %t13, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l18, !tbaa !24
  %t17 = icmp sle i64 %t16, 2305843009213693951
  br i1 %t17, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_60304de857474a3b_ccf0225621d3461f)
  unreachable
bb4:
  %t19 = load i64, ptr %l18, !tbaa !24
  %t20 = mul i64 %t19, 4
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t24, ptr %lp3
  %t26 = load ptr, ptr %lp3
  store { i64, ptr } %t23, ptr %t26, !tbaa !27
  %t27 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 3
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = load ptr, ptr %lp3
  %t31 = getelementptr { i64, ptr }, ptr %t30, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 0
  store i32 %t28, ptr %t33, !tbaa !33
  store i64 0, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_60304de857474a3b_ccf0225621d3461f)
  unreachable
bb6:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb11
bb8:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l30, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb10
bb10:
  %t62 = load i64, ptr %l30, !tbaa !24
  store i64 %t62, ptr %l27, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l27, !tbaa !24
  store i64 %t63, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb13, label %bb14
bb13:
  br label %bb31
bb14:
  br label %bb15
bb15:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l9, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/lower:lowering", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load i64, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %lp3
  %t89 = getelementptr { i64, ptr }, ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i32, ptr %t90, i64 %t86
  %t92 = load i32, ptr %t91, !tbaa !33
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t85, i32 %t92)
  store i32 %t95, ptr %l52
  br label %bb16
bb16:
  %t96 = load i32, ptr %l52, !tbaa !23
  store i32 %t96, ptr %l10, !tbaa !23
  %t97 = load i64, ptr %l9, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l54, !tbaa !24
  %t100 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t101 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load i64, ptr %l9, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t109 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t100, i64 %t106)
  store { i64, [1 x i64] } %t109, ptr %l59
  br label %bb17
bb17:
  %t110 = load { i64, [1 x i64] }, ptr %l59
  store { i64, [1 x i64] } %t110, ptr %l11
  %t111 = load { i64, [1 x i64] }, ptr %l11
  %t113 = extractvalue { i64, [1 x i64] } %t111, 0
  %t114 = icmp eq i64 %t113, 0
  br i1 %t114, label %bb18, label %bb19
bb18:
  %t116 = getelementptr { i64, [1 x i64] }, ptr %l11, i32 0, i32 1
  %t117 = getelementptr { i64 }, ptr %t116, i32 0, i32 0
  %t118 = load i64, ptr %t117
  store i64 %t118, ptr %l12, !tbaa !24
  br label %bb20
bb19:
  br label %bb23
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/lower:lowering", ptr %t120, i32 0, i32 2
  %t123 = load ptr, ptr %t122, !tbaa !29
  store ptr %t123, ptr %l65, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/lower:lowering", ptr %t124, i32 0, i32 2
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load i32, ptr %l10, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l69
  br label %bb21
bb21:
  %t132 = load ptr, ptr %l65, !tbaa !29
  %t133 = load i32, ptr %l69, !tbaa !23
  %t134 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t132, i32 %t133)
  store { i64, ptr } %t134, ptr %l70
  br label %bb22
bb22:
  %t135 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t135, ptr %l71, !tbaa !27
  %t136 = load i64, ptr %l12, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i32, ptr %t139, i64 %t136
  %t141 = load i32, ptr %t140, !tbaa !33
  store i32 %t141, ptr %l60, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/lower:lowering", ptr %t143, i32 0, i32 2
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l10, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l77
  br label %bb27
bb27:
  %t151 = load i32, ptr %l77, !tbaa !23
  store i32 %t151, ptr %l60, !tbaa !23
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_1c96ed13cfc0c0dd_d1e1293130e6a149)
  unreachable
bb29:
  %t152 = load i32, ptr %l60, !tbaa !23
  %t153 = load ptr, ptr %lp3
  %t154 = load i64, ptr %l54, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t154
  store i32 %t152, ptr %t157, !tbaa !33
  br label %bb30
bb30:
  %t158 = load i64, ptr %l8, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l8, !tbaa !24
  br label %bb12
bb31:
  %t162 = load ptr, ptr %lp3
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epackedWrite(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i64
  %l8 = alloca { i64, [1 x i64] }
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca %"compiler/lower:pl"
  %l14 = alloca %"compiler/lower:pl"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca %"compiler/lower:pl"
  %l21 = alloca %"compiler/lower:pl"
  %l23 = alloca { i64, ptr }
  %l35 = alloca { i64, [1 x i64] }
  %l39 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca i32
  %l44 = alloca { i64, [4 x i64] }
  %l47 = alloca { i64, [4 x i64] }
  %l49 = alloca { i64, ptr }
  %l51 = alloca { i64, [4 x i64] }
  %l58 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l67 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca %"compiler/mir:Lvalue"
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l80 = alloca ptr
  %l81 = alloca { i64, [2 x i64] }
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i64
  %l91 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t135 = alloca { i64, [2 x i64] }, align 8
  %t155 = alloca { i64, [15 x i64] }, align 8
  %t161 = alloca { i64, [21 x i64] }, align 8
  %t178 = alloca { i64, [4 x i64] }, align 8
  %t225 = alloca { i64, [15 x i64] }, align 8
  %t231 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t2, ptr %l12
  %t4 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l12)
  store %"compiler/lower:pl" %t4, ptr %l14
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load %"compiler/lower:pl", ptr %l14
  %t7 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedTypes(ptr %v0, ptr %s0, ptr %s0, ptr %t5, %"compiler/lower:pl" %t6)
  store { i64, ptr } %t7, ptr %l15
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l16, !tbaa !24
  %t10 = load i64, ptr %l16, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l17, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l16, !tbaa !24
  %t20 = mul i64 %t19, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t21, ptr %l4, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  %t23 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t23, ptr %l19
  %t25 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l19)
  store %"compiler/lower:pl" %t25, ptr %l21
  br label %bb3
bb3:
  %t26 = load %"compiler/source:Span", ptr %l3
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = load %"compiler/lower:pl", ptr %l21
  %t30 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedChain(ptr %v0, ptr %s0, ptr %s0, ptr %t27, %"compiler/lower:pl" %t28, %"compiler/source:Span" %t26)
  store { i64, ptr } %t30, ptr %l23
  br label %bb4
bb4:
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t31, ptr %l5, !tbaa !27
  store { i64, [4 x i64] } %a2, ptr %l6
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t38 = sub i64 %t36, 2
  store i64 %t38, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp sge i64 %t40, 0
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb7:
  br label %bb8
bb8:
  %t46 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t47 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t55 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t46, i64 %t52)
  store { i64, [1 x i64] } %t55, ptr %l35
  br label %bb9
bb9:
  %t56 = load { i64, [1 x i64] }, ptr %l35
  store { i64, [1 x i64] } %t56, ptr %l8
  %t57 = load { i64, [1 x i64] }, ptr %l8
  %t59 = extractvalue { i64, [1 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 0
  br i1 %t60, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l39, !tbaa !29
  store i32 41, ptr %l40
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i32, ptr %t70, i64 %t67
  %t72 = load i32, ptr %t71, !tbaa !33
  store i32 %t72, ptr %l42, !tbaa !23
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t76, i64 %t73
  %t78 = load { i64, [4 x i64] }, ptr %t77
  store { i64, [4 x i64] } %t78, ptr %l44
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t83 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t79, i64 %t64)
  store { i64, [4 x i64] } %t83, ptr %l47
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t84 = load { i64, [4 x i64] }, ptr %l6
  %t85 = mul i64 3, 40
  %t86 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 3, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l49, !tbaa !27
  %t89 = load { i64, [4 x i64] }, ptr %l44
  %t90 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t91, i64 0
  store { i64, [4 x i64] } %t89, ptr %t92
  %t93 = load { i64, [4 x i64] }, ptr %l47
  %t94 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, [4 x i64] }, ptr %t95, i64 1
  store { i64, [4 x i64] } %t93, ptr %t96
  %t98 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t99, i64 2
  store { i64, [4 x i64] } %t84, ptr %t100
  %t101 = load %"compiler/source:Span", ptr %l3
  %t102 = load ptr, ptr %l39, !tbaa !29
  %t103 = load i32, ptr %l40, !range !{i32 0, i32 52}
  %t104 = load i32, ptr %l42, !tbaa !23
  %t105 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t107 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s3, ptr %t102, i32 %t103, i32 %t104, { i64, ptr } %t105, %"compiler/source:Span" %t101)
  store { i64, [4 x i64] } %t107, ptr %l51
  br label %bb13
bb13:
  %t108 = load { i64, [4 x i64] }, ptr %l51
  store { i64, [4 x i64] } %t108, ptr %l6
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb14:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l7, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t113, i64 %t110
  %t115 = load { i64, [4 x i64] }, ptr %t114
  %t116 = load i64, ptr %l7, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i32, ptr %t119, i64 %t116
  %t121 = load i32, ptr %t120, !tbaa !33
  %t122 = load %"compiler/source:Span", ptr %l3
  %t127 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t109, { i64, [4 x i64] } %t115, i32 %t121, %"compiler/source:Span" %t122)
  store i32 %t127, ptr %l58
  br label %bb15
bb15:
  %t128 = load i32, ptr %l58, !tbaa !23
  store i32 %t128, ptr %l10, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l59, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t130, ptr %l60
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/lower:lowering", ptr %t131, i32 0, i32 3
  %t134 = load i32, ptr %l10, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [2 x i64] }, ptr %t135, i32 0, i32 0
  store i64 1, ptr %t136
  %t138 = insertvalue { i32 } undef, i32 %t134, 0
  %t139 = getelementptr { i64, [2 x i64] }, ptr %t135, i32 0, i32 1
  store { i32 } %t138, ptr %t139
  %t140 = load { i64, [2 x i64] }, ptr %t135
  %t141 = load { i64, [1 x i64] }, ptr %l8
  %t142 = mul i64 1, 16
  %t143 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t142)
  %t144 = insertvalue { i64, ptr } undef, i64 1, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %l66, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr { i64, [1 x i64] }, ptr %t148, i64 0
  store { i64, [1 x i64] } %t141, ptr %t149
  %t152 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t153 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s2, ptr %t133, { i64, [2 x i64] } %t140, { i64, ptr } %t152)
  store %"compiler/mir:Lvalue" %t153, ptr %l67
  br label %bb16
bb16:
  %t154 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [15 x i64] } zeroinitializer, ptr %t155
  %t156 = getelementptr { i64, [15 x i64] }, ptr %t155, i32 0, i32 0
  store i64 0, ptr %t156
  %t158 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t154, 0
  %t159 = getelementptr { i64, [15 x i64] }, ptr %t155, i32 0, i32 1
  store { { i64, [4 x i64] } } %t158, ptr %t159
  %t160 = load { i64, [15 x i64] }, ptr %t155
  store { i64, [21 x i64] } zeroinitializer, ptr %t161
  %t162 = getelementptr { i64, [21 x i64] }, ptr %t161, i32 0, i32 0
  store i64 0, ptr %t162
  %t163 = load %"compiler/source:Span", ptr %l60
  %t164 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t163, 0
  %t165 = load %"compiler/mir:Lvalue", ptr %l67
  %t166 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t164, %"compiler/mir:Lvalue" %t165, 1
  %t168 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t166, { i64, [15 x i64] } %t160, 2
  %t169 = getelementptr { i64, [21 x i64] }, ptr %t161, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t168, ptr %t169
  %t170 = load { i64, [21 x i64] }, ptr %t161
  %t172 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t170, ptr %t172
  %t173 = load ptr, ptr %l59, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t173, ptr %t172)
  br label %bb17
bb17:
  %t175 = load i32, ptr %l10, !tbaa !23
  %t177 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t175)
  store %"compiler/mir:Lvalue" %t177, ptr %l73
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 0
  store i64 1, ptr %t179
  %t180 = load %"compiler/mir:Lvalue", ptr %l73
  %t181 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t180, 0
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t181, ptr %t182
  %t183 = load { i64, [4 x i64] }, ptr %t178
  store { i64, [4 x i64] } %t183, ptr %l6
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = sub i64 %t185, 1
  store i64 %t187, ptr %l7, !tbaa !24
  br label %bb5
bb20:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l77, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t190, ptr %l78
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/lower:lowering", ptr %t191, i32 0, i32 3
  store ptr %t193, ptr %l80, !tbaa !29
  %t194 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 0
  %t195 = load { i64, [2 x i64] }, ptr %t194
  store { i64, [2 x i64] } %t195, ptr %l81
  %t196 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t198 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %s0, ptr %s0, ptr %t196)
  store { i64, ptr } %t198, ptr %l83
  br label %bb21
bb21:
  %t199 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t199, ptr %l84, !tbaa !27
  %t200 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 2
  %t201 = load i64, ptr %t200, !tbaa !24
  store i64 %t201, ptr %l85, !tbaa !24
  %t202 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  store i64 %t203, ptr %l86, !tbaa !24
  %t204 = icmp sge i64 0, 0
  br i1 %t204, label %bb22, label %bb23
bb22:
  %t206 = load i64, ptr %l85, !tbaa !24
  %t207 = icmp sle i64 0, %t206
  br i1 %t207, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_a246188af393fdb5_b9fac7a209b878d9)
  unreachable
bb24:
  %t209 = load i64, ptr %l85, !tbaa !24
  %t210 = load i64, ptr %l86, !tbaa !24
  %t211 = icmp sle i64 %t209, %t210
  br i1 %t211, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_a246188af393fdb5_b9fac7a209b878d9)
  unreachable
bb26:
  %t213 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = load i64, ptr %l85, !tbaa !24
  %t216 = getelementptr { i64, [1 x i64] }, ptr %t214, i64 0
  %t217 = sub i64 %t215, 0
  %t218 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t216, 1
  %t220 = load ptr, ptr %l80, !tbaa !29
  %t221 = load { i64, [2 x i64] }, ptr %l81
  %t223 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s0, ptr %t220, { i64, [2 x i64] } %t221, { i64, ptr } %t219)
  store %"compiler/mir:Lvalue" %t223, ptr %l91
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_a246188af393fdb5_b9fac7a209b878d9)
  unreachable
bb28:
  %t224 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [15 x i64] } zeroinitializer, ptr %t225
  %t226 = getelementptr { i64, [15 x i64] }, ptr %t225, i32 0, i32 0
  store i64 0, ptr %t226
  %t228 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t224, 0
  %t229 = getelementptr { i64, [15 x i64] }, ptr %t225, i32 0, i32 1
  store { { i64, [4 x i64] } } %t228, ptr %t229
  %t230 = load { i64, [15 x i64] }, ptr %t225
  store { i64, [21 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [21 x i64] }, ptr %t231, i32 0, i32 0
  store i64 0, ptr %t232
  %t233 = load %"compiler/source:Span", ptr %l78
  %t234 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t233, 0
  %t235 = load %"compiler/mir:Lvalue", ptr %l91
  %t236 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t234, %"compiler/mir:Lvalue" %t235, 1
  %t238 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t236, { i64, [15 x i64] } %t230, 2
  %t239 = getelementptr { i64, [21 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t238, ptr %t239
  %t240 = load { i64, [21 x i64] }, ptr %t231
  %t242 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t240, ptr %t242
  %t243 = load ptr, ptr %l77, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t243, ptr %t242)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
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
  %t9 = call i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %t5, i32 %a1)
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

define dso_local %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l43 = alloca i1
  %l46 = alloca i1
  %l53 = alloca i64
  %l54 = alloca ptr
  %l59 = alloca { i64, [2 x i64] }
  %l60 = alloca { i64, [1 x i64] }
  %l66 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  %t63 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l10, !tbaa !24
  %t2 = load i64, ptr %l10, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l10, !tbaa !24
  %t6 = icmp sle i64 %t5, 576460752303423487
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_279896acdd8c6bde_4c10668047ad718a)
  unreachable
bb3:
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = mul i64 %t8, 16
  %t10 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_279896acdd8c6bde_4c10668047ad718a)
  unreachable
bb5:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l21, !tbaa !24
  store i64 %t42, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l18, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb12, label %bb13
bb12:
  br label %bb27
bb13:
  br label %bb14
bb14:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [1 x i64] }, ptr %t63, i32 0, i32 0
  store i64 2, ptr %t64
  %t65 = load { i64, [1 x i64] }, ptr %t63
  %t68 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, [1 x i64] }, ptr %t69, i64 %t62
  store { i64, [1 x i64] } %t65, ptr %t70
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/lower:lowering", ptr %t71, i32 0, i32 24
  %t74 = load i1, ptr %t73, !tbaa !21
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = load i32, ptr %l2, !tbaa !23
  %t78 = icmp sge i32 %t76, 0
  store i1 %t78, ptr %l43, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb17
bb17:
  %t80 = load i1, ptr %l43, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t81 = load i32, ptr %l2, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/lower:lowering", ptr %t84, i32 0, i32 30
  %t87 = getelementptr %"compiler/typed:Plan", ptr %t86, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t93 = icmp slt i64 %t83, %t90
  store i1 %t93, ptr %l46, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb20
bb20:
  %t95 = load i1, ptr %l46, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb21:
  %t96 = load i64, ptr %l9, !tbaa !24
  store i64 %t96, ptr %l53, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l54, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lower:lowering", ptr %t98, i32 0, i32 30
  %t101 = load i32, ptr %l2, !tbaa !23
  %t102 = load i64, ptr %l9, !tbaa !24
  %t106 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t100, i32 %t101, i64 %t102)
  store { i64, [2 x i64] } %t106, ptr %l59
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t107 = load ptr, ptr %l54, !tbaa !29
  %t108 = load { i64, [2 x i64] }, ptr %l59
  %t109 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t107, { i64, [2 x i64] } %t108)
  store { i64, [1 x i64] } %t109, ptr %l60
  br label %bb24
bb24:
  %t110 = load { i64, [1 x i64] }, ptr %l60
  %t111 = load i64, ptr %l53, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [1 x i64] }, ptr %t113, i64 %t111
  store { i64, [1 x i64] } %t110, ptr %t114
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l8, !tbaa !24
  br label %bb11
bb27:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lower:lowering", ptr %t119, i32 0, i32 3
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t121, { i64, ptr } %t122)
  store %"compiler/mir:Range" %t125, ptr %l66
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t126 = load %"compiler/mir:Range", ptr %l66
  store %"compiler/mir:Range" %t126, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equiet(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l9 = alloca i1
  %l15 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %l28 = alloca i64
  %l33 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 55
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emutStorage(ptr %v0, ptr %t11)
  store i1 %t13, ptr %l9
  br label %bb4
bb4:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 55
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = sub i64 %t20, 1
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t22)
  store i64 %t25, ptr %l15
  br label %bb9
bb9:
  %t26 = load i64, ptr %l15, !tbaa !24
  %t27 = icmp slt i64 %t26, 0
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 55
  store ptr %t31, ptr %l18, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l20, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 54
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = sub i64 %t39, 1
  %t44 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t38, i64 %t41)
  store ptr %t44, ptr %l26
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t45 = load ptr, ptr %l21, !tbaa !29
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietStmt(ptr %v0, ptr %v0, ptr %t45, ptr %t46)
  store i1 %t47, ptr %l27
  br label %bb13
bb13:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  store i64 1, ptr %l28, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb16
bb16:
  %t49 = load ptr, ptr %l18, !tbaa !29
  %t50 = load i64, ptr %l20, !tbaa !24
  %t51 = load i64, ptr %l28, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t49, i64 %t50, i64 %t51)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:lowering", ptr %t52, i32 0, i32 55
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = sub i64 %t55, 1
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t54, i64 %t57)
  store i64 %t60, ptr %l33
  br label %bb19
bb19:
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = icmp eq i64 %t61, 1
  store i1 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca i1
  %rv = alloca i1
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
  br label %bb10
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
  %t30 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietNested(ptr %v0, ptr %v1, ptr %a0, ptr %t24)
  store i1 %t30, ptr %l19
  br label %bb5
bb5:
  %t31 = load i1, ptr %l19, !tbaa !21
  %t32 = xor i1 %t31, true
  br i1 %t32, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l60 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l70 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 17}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l16, !tbaa !21
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
  store i1 %t36, ptr %l24
  br label %bb10
bb10:
  %t37 = load i1, ptr %l24, !tbaa !21
  store i1 %t37, ptr %l8, !tbaa !21
  br label %bb48
bb11:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 17}
  %t45 = icmp eq i64 %t43, 1
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l26, !tbaa !21
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
  br label %bb22
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t63 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %t59, ptr %t60)
  store i1 %t63, ptr %l35
  br label %bb17
bb17:
  %t64 = load i1, ptr %l35, !tbaa !21
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t70 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  store i1 %t70, ptr %l40
  br label %bb20
bb19:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb21
bb20:
  %t71 = load i1, ptr %l40, !tbaa !21
  store i1 %t71, ptr %l36, !tbaa !21
  br label %bb21
bb21:
  %t72 = load i1, ptr %l36, !tbaa !21
  store i1 %t72, ptr %l8, !tbaa !21
  br label %bb48
bb22:
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t74 = load ptr, ptr %l41, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t77 = load ptr, ptr %l41, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 17}
  %t80 = icmp eq i64 %t78, 3
  store i1 %t80, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l42, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [3 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", ptr }, ptr %t84, i32 0, i32 1
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l5, !tbaa !29
  %t91 = getelementptr %"compiler/typed:If", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t96 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t88, ptr %t92)
  store i1 %t96, ptr %l51
  br label %bb28
bb28:
  %t97 = load i1, ptr %l51, !tbaa !21
  store i1 %t97, ptr %l8, !tbaa !21
  br label %bb48
bb29:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t99 = load ptr, ptr %l52, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb30, label %bb31
bb30:
  %t102 = load ptr, ptr %l52, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 17}
  %t105 = icmp eq i64 %t103, 6
  store i1 %t105, ptr %l53, !tbaa !21
  br label %bb31
bb31:
  %t106 = load i1, ptr %l53, !tbaa !21
  br i1 %t106, label %bb32, label %bb33
bb32:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [3 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", ptr }, ptr %t109, i32 0, i32 1
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t117 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t113, ptr %t114)
  store i1 %t117, ptr %l60
  br label %bb35
bb35:
  %t118 = load i1, ptr %l60, !tbaa !21
  store i1 %t118, ptr %l8, !tbaa !21
  br label %bb48
bb36:
  %t119 = load ptr, ptr %l1, !tbaa !29
  store ptr %t119, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t120 = load ptr, ptr %l61, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb37, label %bb38
bb37:
  %t123 = load ptr, ptr %l61, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 17}
  %t126 = icmp eq i64 %t124, 10
  store i1 %t126, ptr %l62, !tbaa !21
  br label %bb38
bb38:
  %t127 = load i1, ptr %l62, !tbaa !21
  br i1 %t127, label %bb39, label %bb40
bb39:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t130, i32 0, i32 1
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l7, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l7, !tbaa !29
  %t139 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t134, ptr %t135)
  store i1 %t139, ptr %l70
  br label %bb42
bb42:
  %t140 = load i1, ptr %l70, !tbaa !21
  store i1 %t140, ptr %l8, !tbaa !21
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_28287f1f33def765_74d32538b56dd6f1)
  unreachable
bb48:
  %t141 = load i1, ptr %l8, !tbaa !21
  store i1 %t141, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadDtor(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i32
  %t48 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eindex(ptr %v0, ptr %t4)
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 16
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t15, i32 %a1)
  store i32 %t19, ptr %l12
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l8, !tbaa !29
  %t21 = load i32, ptr %l12, !tbaa !23
  %t22 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t20, i32 %t21)
  %t23 = extractvalue { i32, i64 } %t22, 1
  %t24 = extractvalue { i32, i64 } %t22, 0
  store i32 %t24, ptr %l14
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb4, label %ok.26, !prof !99
ok.26:
  store i64 %t23, ptr %l13
  br label %bb3
bb3:
  %t27 = load i64, ptr %l13, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l5, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp sge i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/lower:lowering", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:lowering", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Body", ptr %t40, i32 0, i32 3
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = trunc i64 %t44 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 0
  store i64 0, ptr %t49
  %t51 = insertvalue { i32 } undef, i32 %t46, 0
  %t52 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  store { i32 } %t51, ptr %t52
  %t53 = load { i64, [2 x i64] }, ptr %t48
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %t36, i64 %t43, { i64, [2 x i64] } %t53)
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

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eretArrays(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/mir:Lvalue"
  %l23 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca %"compiler/mir:Lvalue"
  %l32 = alloca { i64, [4 x i64] }
  %l33 = alloca i32
  %l34 = alloca %"compiler/source:Span"
  %l36 = alloca { i64, [1 x i64] }
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/mir:Lvalue"
  %l48 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca { i64, [4 x i64] }
  %l58 = alloca i32
  %l59 = alloca %"compiler/source:Span"
  %l61 = alloca { i64, [1 x i64] }
  %l62 = alloca { i64, [4 x i64] }
  %l63 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca i32
  %l76 = alloca i32
  %l80 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l92 = alloca i64
  %l95 = alloca i64
  %l114 = alloca { i64, ptr }
  %l117 = alloca i1
  %l119 = alloca i1
  %l121 = alloca { i64, ptr }
  %l124 = alloca i1
  %l129 = alloca i1
  %l134 = alloca i1
  %l136 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l143 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca ptr
  %l149 = alloca %"compiler/lower:pl"
  %l152 = alloca %"compiler/lower:pl"
  %l153 = alloca %"compiler/mir:Lvalue"
  %l154 = alloca ptr
  %l156 = alloca { i64, [4 x i64] }
  %l157 = alloca { i64, ptr }
  %l159 = alloca i32
  %l160 = alloca %"compiler/source:Span"
  %l162 = alloca { i64, [1 x i64] }
  %l163 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t25 = alloca { i64, [4 x i64] }, align 8
  %t49 = alloca { i64, [15 x i64] }, align 8
  %t55 = alloca { i64, [21 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t112 = alloca { i64, [15 x i64] }, align 8
  %t118 = alloca { i64, [21 x i64] }, align 8
  %t285 = alloca { i64, [2 x i64] }, align 8
  %t294 = alloca { i64, [1 x i64] }, align 8
  %t310 = alloca { i64, [4 x i64] }, align 8
  %t338 = alloca { i64, [15 x i64] }, align 8
  %t344 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  %t10 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l23
  br label %bb1
bb1:
  %t11 = load i1, ptr %l23, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t12, ptr %t13, i32 %t15)
  store i1 %t19, ptr %l28
  br label %bb4
bb3:
  br label %bb13
bb4:
  %t20 = load i1, ptr %l28, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l29, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t24 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t22)
  store %"compiler/mir:Lvalue" %t24, ptr %l31
  br label %bb7
bb6:
  br label %bb12
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 0
  store i64 1, ptr %t26
  %t27 = load %"compiler/mir:Lvalue", ptr %l31
  %t28 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t27, 0
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t28, ptr %t29
  %t30 = load { i64, [4 x i64] }, ptr %t25
  store { i64, [4 x i64] } %t30, ptr %l32
  %t31 = load i32, ptr %l2, !tbaa !23
  store i32 %t31, ptr %l33, !tbaa !23
  %t32 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t32, ptr %l34
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t33)
  store { i64, [1 x i64] } %t35, ptr %l36
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l29, !tbaa !29
  %t37 = load { i64, [4 x i64] }, ptr %l32
  %t38 = load i32, ptr %l33, !tbaa !23
  %t39 = load %"compiler/source:Span", ptr %l34
  %t40 = load { i64, [1 x i64] }, ptr %l36
  %t41 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t36, { i64, [4 x i64] } %t37, i32 %t38, %"compiler/source:Span" %t39, { i64, [1 x i64] } %t40, i1 false)
  store { i64, [4 x i64] } %t41, ptr %l37
  br label %bb9
bb9:
  %t42 = load { i64, [4 x i64] }, ptr %l37
  store { i64, [4 x i64] } %t42, ptr %l6
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l38, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t44, ptr %l39
  %t45 = load i32, ptr %l1, !tbaa !23
  %t47 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t45)
  store %"compiler/mir:Lvalue" %t47, ptr %l41
  br label %bb10
bb10:
  %t48 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [15 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [15 x i64] }, ptr %t49, i32 0, i32 0
  store i64 0, ptr %t50
  %t52 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t48, 0
  %t53 = getelementptr { i64, [15 x i64] }, ptr %t49, i32 0, i32 1
  store { { i64, [4 x i64] } } %t52, ptr %t53
  %t54 = load { i64, [15 x i64] }, ptr %t49
  store { i64, [21 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [21 x i64] }, ptr %t55, i32 0, i32 0
  store i64 0, ptr %t56
  %t57 = load %"compiler/source:Span", ptr %l39
  %t58 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t57, 0
  %t59 = load %"compiler/mir:Lvalue", ptr %l41
  %t60 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t58, %"compiler/mir:Lvalue" %t59, 1
  %t62 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t60, { i64, [15 x i64] } %t54, 2
  %t63 = getelementptr { i64, [21 x i64] }, ptr %t55, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t62, ptr %t63
  %t64 = load { i64, [21 x i64] }, ptr %t55
  %t66 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t64, ptr %t66
  %t67 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t67, ptr %t66)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l2, !tbaa !23
  %t73 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l48
  br label %bb14
bb14:
  %t74 = load i1, ptr %l48, !tbaa !21
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = load i32, ptr %l2, !tbaa !23
  %t82 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %t75, ptr %t76, i32 %t78)
  store i1 %t82, ptr %l53
  br label %bb17
bb16:
  br label %bb26
bb17:
  %t83 = load i1, ptr %l53, !tbaa !21
  br i1 %t83, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l54, !tbaa !29
  %t85 = load i32, ptr %l1, !tbaa !23
  %t87 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t85)
  store %"compiler/mir:Lvalue" %t87, ptr %l56
  br label %bb20
bb19:
  br label %bb25
bb20:
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 1, ptr %t89
  %t90 = load %"compiler/mir:Lvalue", ptr %l56
  %t91 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t90, 0
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t91, ptr %t92
  %t93 = load { i64, [4 x i64] }, ptr %t88
  store { i64, [4 x i64] } %t93, ptr %l57
  %t94 = load i32, ptr %l2, !tbaa !23
  store i32 %t94, ptr %l58, !tbaa !23
  %t95 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t95, ptr %l59
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t96)
  store { i64, [1 x i64] } %t98, ptr %l61
  br label %bb21
bb21:
  %t99 = load ptr, ptr %l54, !tbaa !29
  %t100 = load { i64, [4 x i64] }, ptr %l57
  %t101 = load i32, ptr %l58, !tbaa !23
  %t102 = load %"compiler/source:Span", ptr %l59
  %t103 = load { i64, [1 x i64] }, ptr %l61
  %t104 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t99, { i64, [4 x i64] } %t100, i32 %t101, %"compiler/source:Span" %t102, { i64, [1 x i64] } %t103, i1 false)
  store { i64, [4 x i64] } %t104, ptr %l62
  br label %bb22
bb22:
  %t105 = load { i64, [4 x i64] }, ptr %l62
  store { i64, [4 x i64] } %t105, ptr %l7
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l63, !tbaa !29
  %t107 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t107, ptr %l64
  %t108 = load i32, ptr %l1, !tbaa !23
  %t110 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t108)
  store %"compiler/mir:Lvalue" %t110, ptr %l66
  br label %bb23
bb23:
  %t111 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [15 x i64] } zeroinitializer, ptr %t112
  %t113 = getelementptr { i64, [15 x i64] }, ptr %t112, i32 0, i32 0
  store i64 0, ptr %t113
  %t115 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t111, 0
  %t116 = getelementptr { i64, [15 x i64] }, ptr %t112, i32 0, i32 1
  store { { i64, [4 x i64] } } %t115, ptr %t116
  %t117 = load { i64, [15 x i64] }, ptr %t112
  store { i64, [21 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [21 x i64] }, ptr %t118, i32 0, i32 0
  store i64 0, ptr %t119
  %t120 = load %"compiler/source:Span", ptr %l64
  %t121 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t120, 0
  %t122 = load %"compiler/mir:Lvalue", ptr %l66
  %t123 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t121, %"compiler/mir:Lvalue" %t122, 1
  %t125 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t123, { i64, [15 x i64] } %t117, 2
  %t126 = getelementptr { i64, [21 x i64] }, ptr %t118, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t125, ptr %t126
  %t127 = load { i64, [21 x i64] }, ptr %t118
  %t129 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 176, i64 8)
  store { i64, [21 x i64] } %t127, ptr %t129
  %t130 = load ptr, ptr %l63, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s4, ptr %t130, ptr %t129)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  %t132 = load ptr, ptr %l5, !tbaa !29
  %t133 = load i32, ptr %l2, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l73
  br label %bb27
bb27:
  %t137 = load i32, ptr %l73, !tbaa !23
  store i32 %t137, ptr %l8, !tbaa !23
  %t138 = load ptr, ptr %l5, !tbaa !29
  %t139 = load i32, ptr %l8, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l76
  br label %bb28
bb28:
  %t143 = load i32, ptr %l76, !range !{i32 0, i32 33}
  %t145 = trunc i64 22 to i32
  %t146 = icmp eq i32 %t143, %t145
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  %t150 = load ptr, ptr %l5, !tbaa !29
  store ptr %t150, ptr %l80, !tbaa !29
  %t151 = load ptr, ptr %l5, !tbaa !29
  %t152 = load i32, ptr %l8, !tbaa !23
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l83
  br label %bb32
bb32:
  %t156 = load ptr, ptr %l80, !tbaa !29
  %t157 = load i32, ptr %l83, !tbaa !23
  %t158 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t156, i32 %t157)
  store { i64, ptr } %t158, ptr %l84
  br label %bb33
bb33:
  %t159 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t159, ptr %l9, !tbaa !27
  %t160 = load ptr, ptr %l3, !tbaa !29
  %t162 = call { i64, ptr } @compiler_2flower_2etupleItems(ptr %v1, ptr %s0, ptr %t160)
  store { i64, ptr } %t162, ptr %l86
  br label %bb34
bb34:
  %t163 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t163, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  store i64 %t166, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t168 = load i64, ptr %l12, !tbaa !24
  %t169 = load i64, ptr %l11, !tbaa !24
  %t172 = icmp sgt i64 %t168, %t169
  br i1 %t172, label %bb35, label %bb36
bb35:
  %t174 = load i64, ptr %l13, !tbaa !24
  %t176 = icmp sgt i64 %t174, 0
  br i1 %t176, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb40
bb37:
  %t178 = load i64, ptr %l12, !tbaa !24
  %t179 = load i64, ptr %l11, !tbaa !24
  %t182 = sub i64 %t178, %t179
  %t183 = load i64, ptr %l13, !tbaa !24
  %t186 = add i64 %t182, %t183
  %t188 = sub i64 %t186, 1
  %t189 = load i64, ptr %l13, !tbaa !24
  %t192 = sdiv i64 %t188, %t189
  store i64 %t192, ptr %l95, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb39
bb39:
  %t194 = load i64, ptr %l95, !tbaa !24
  store i64 %t194, ptr %l92, !tbaa !24
  br label %bb40
bb40:
  %t195 = load i64, ptr %l92, !tbaa !24
  store i64 %t195, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  %t196 = load i64, ptr %l15, !tbaa !24
  %t197 = load i64, ptr %l14, !tbaa !24
  %t200 = icmp slt i64 %t196, %t197
  %t202 = xor i1 %t200, true
  br i1 %t202, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb70
bb43:
  br label %bb44
bb44:
  %t204 = load i64, ptr %l11, !tbaa !24
  %t205 = load i64, ptr %l15, !tbaa !24
  %t206 = load i64, ptr %l13, !tbaa !24
  %t209 = mul i64 %t205, %t206
  %t212 = add i64 %t204, %t209
  store i64 %t212, ptr %l16, !tbaa !24
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t215, ptr %l114, !tbaa !27
  %t216 = load i64, ptr %l16, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr i32, ptr %t219, i64 %t216
  %t221 = load i32, ptr %t220, !tbaa !33
  %t224 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t214, i32 %t221)
  store i1 %t224, ptr %l117
  br label %bb45
bb45:
  %t225 = load i1, ptr %l117, !tbaa !21
  %t226 = xor i1 %t225, true
  br i1 %t226, label %bb46, label %bb47
bb46:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t229, ptr %l121, !tbaa !27
  %t230 = load i64, ptr %l16, !tbaa !24
  %t232 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr i32, ptr %t233, i64 %t230
  %t235 = load i32, ptr %t234, !tbaa !33
  %t238 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %t228, i32 %t235)
  store i1 %t238, ptr %l124
  br label %bb48
bb47:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb49
bb48:
  %t239 = load i1, ptr %l124, !tbaa !21
  %t240 = xor i1 %t239, true
  store i1 %t240, ptr %l119, !tbaa !21
  br label %bb49
bb49:
  %t242 = load i1, ptr %l119, !tbaa !21
  br i1 %t242, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s7)
  br label %bb69
bb51:
  br label %bb52
bb52:
  %t243 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t243, 0
  %t247 = icmp sgt i64 %t245, 0
  br i1 %t247, label %bb53, label %bb54
bb53:
  %t249 = load i64, ptr %l16, !tbaa !24
  %t250 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t255 = icmp slt i64 %t249, %t252
  store i1 %t255, ptr %l129, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb55
bb55:
  %t257 = load i1, ptr %l129, !tbaa !21
  br i1 %t257, label %bb56, label %bb57
bb56:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t259, ptr %l136, !tbaa !27
  %t260 = load i64, ptr %l16, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr ptr, ptr %t263, i64 %t260
  %t265 = load ptr, ptr %t264, !tbaa !39
  %t267 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t267, ptr %l140, !tbaa !27
  %t268 = load i64, ptr %l16, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr i32, ptr %t271, i64 %t268
  %t273 = load i32, ptr %t272, !tbaa !33
  %t277 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %s0, ptr %t258, ptr %t265, i32 %t273)
  store i1 %t277, ptr %l143
  br label %bb58
bb57:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb59
bb58:
  %t278 = load i1, ptr %l143, !tbaa !21
  %t279 = xor i1 %t278, true
  store i1 %t279, ptr %l134, !tbaa !21
  br label %bb59
bb59:
  %t281 = load i1, ptr %l134, !tbaa !21
  br i1 %t281, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s7)
  br label %bb69
bb61:
  br label %bb62
bb62:
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l145, !tbaa !29
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l146, !tbaa !29
  %t284 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [2 x i64] }, ptr %t285, i32 0, i32 0
  store i64 1, ptr %t286
  %t288 = insertvalue { i32 } undef, i32 %t284, 0
  %t289 = getelementptr { i64, [2 x i64] }, ptr %t285, i32 0, i32 1
  store { i32 } %t288, ptr %t289
  %t290 = load { i64, [2 x i64] }, ptr %t285
  %t292 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s7, { i64, [2 x i64] } %t290)
  store %"compiler/lower:pl" %t292, ptr %l149
  br label %bb63
bb63:
  %t293 = load i64, ptr %l16, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t294
  %t295 = getelementptr { i64, [1 x i64] }, ptr %t294, i32 0, i32 0
  store i64 0, ptr %t295
  %t297 = insertvalue { i64 } undef, i64 %t293, 0
  %t298 = getelementptr { i64, [1 x i64] }, ptr %t294, i32 0, i32 1
  store { i64 } %t297, ptr %t298
  %t299 = load { i64, [1 x i64] }, ptr %t294
  %t300 = load ptr, ptr %l146, !tbaa !29
  %t301 = load %"compiler/lower:pl", ptr %l149
  %t303 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s7, ptr %s7, ptr %t300, %"compiler/lower:pl" %t301, { i64, [1 x i64] } %t299)
  store %"compiler/lower:pl" %t303, ptr %l152
  br label %bb64
bb64:
  %t304 = load ptr, ptr %l145, !tbaa !29
  %t305 = load %"compiler/lower:pl", ptr %l152
  %t306 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s7, ptr %t304, %"compiler/lower:pl" %t305)
  store %"compiler/mir:Lvalue" %t306, ptr %l153
  br label %bb65
bb65:
  %t307 = load %"compiler/mir:Lvalue", ptr %l153
  store %"compiler/mir:Lvalue" %t307, ptr %l17
  %t308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t308, ptr %l154, !tbaa !29
  %t309 = load %"compiler/mir:Lvalue", ptr %l17
  store { i64, [4 x i64] } zeroinitializer, ptr %t310
  %t311 = getelementptr { i64, [4 x i64] }, ptr %t310, i32 0, i32 0
  store i64 1, ptr %t311
  %t313 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t309, 0
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t310, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t313, ptr %t314
  %t315 = load { i64, [4 x i64] }, ptr %t310
  store { i64, [4 x i64] } %t315, ptr %l156
  %t316 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t316, ptr %l157, !tbaa !27
  %t317 = load i64, ptr %l16, !tbaa !24
  %t319 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = getelementptr i32, ptr %t320, i64 %t317
  %t322 = load i32, ptr %t321, !tbaa !33
  store i32 %t322, ptr %l159, !tbaa !23
  %t323 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t323, ptr %l160
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t324)
  store { i64, [1 x i64] } %t326, ptr %l162
  br label %bb66
bb66:
  %t327 = load ptr, ptr %l154, !tbaa !29
  %t328 = load { i64, [4 x i64] }, ptr %l156
  %t329 = load i32, ptr %l159, !tbaa !23
  %t330 = load %"compiler/source:Span", ptr %l160
  %t331 = load { i64, [1 x i64] }, ptr %l162
  %t332 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t327, { i64, [4 x i64] } %t328, i32 %t329, %"compiler/source:Span" %t330, { i64, [1 x i64] } %t331, i1 false)
  store { i64, [4 x i64] } %t332, ptr %l163
  br label %bb67
bb67:
  %t333 = load { i64, [4 x i64] }, ptr %l163
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load %"compiler/source:Span", ptr %l4
  %t336 = load %"compiler/mir:Lvalue", ptr %l17
  store { i64, [15 x i64] } zeroinitializer, ptr %t338
  %t339 = getelementptr { i64, [15 x i64] }, ptr %t338, i32 0, i32 0
  store i64 0, ptr %t339
  %t341 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t333, 0
  %t342 = getelementptr { i64, [15 x i64] }, ptr %t338, i32 0, i32 1
  store { { i64, [4 x i64] } } %t341, ptr %t342
  %t343 = load { i64, [15 x i64] }, ptr %t338
  store { i64, [21 x i64] } zeroinitializer, ptr %t344
  %t345 = getelementptr { i64, [21 x i64] }, ptr %t344, i32 0, i32 0
  store i64 0, ptr %t345
  %t347 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t335, 0
  %t349 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t347, %"compiler/mir:Lvalue" %t336, 1
  %t351 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t349, { i64, [15 x i64] } %t343, 2
  %t352 = getelementptr { i64, [21 x i64] }, ptr %t344, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t351, ptr %t352
  %t353 = load { i64, [21 x i64] }, ptr %t344
  %t355 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t353, ptr %t355
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t334, ptr %t355)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s7)
  br label %bb69
bb69:
  %t358 = load i64, ptr %l15, !tbaa !24
  %t360 = add i64 %t358, 1
  store i64 %t360, ptr %l15, !tbaa !24
  br label %bb41
bb70:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/typed:Local"
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca { i64, [1 x i64] }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca { i64, [1 x i64] }
  %l29 = alloca i32
  %l30 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l46 = alloca i32
  %l52 = alloca { i64, ptr }
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %l83 = alloca %"compiler/typed:Local"
  %l85 = alloca i32
  %l100 = alloca i1
  %l107 = alloca { i64, ptr }
  %l124 = alloca i1
  %l128 = alloca i1
  %l131 = alloca i1
  %l134 = alloca i1
  %l143 = alloca i1
  %l152 = alloca i1
  %l162 = alloca ptr
  %l168 = alloca %"compiler/mir:Local"
  %l169 = alloca i32
  %l174 = alloca i64
  %l176 = alloca i64
  %l181 = alloca i32
  %l183 = alloca ptr
  %l186 = alloca i32
  %l189 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l192 = alloca i64
  %l196 = alloca i64
  %l199 = alloca i64
  %l220 = alloca %"compiler/typed:Local"
  %l236 = alloca i64
  %l238 = alloca i64
  %l243 = alloca { i64, [1 x i64] }
  %l244 = alloca { i64, [1 x i64] }
  %l249 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l251 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l253 = alloca i64
  %l267 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l269 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca i64
  %l282 = alloca i64
  %l286 = alloca i64
  %l289 = alloca i64
  %l323 = alloca ptr
  %l328 = alloca %"compiler/lower:Gap"
  %l331 = alloca i32
  %l335 = alloca ptr
  %l336 = alloca i32
  %l337 = alloca i32
  %l345 = alloca i32
  %l353 = alloca ptr
  %l354 = alloca i32
  %l361 = alloca %"compiler/lower:level"
  %l376 = alloca { i64, ptr }
  %l387 = alloca i1
  %l393 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %t102 = alloca { i64, [1 x i64] }, align 8
  %t146 = alloca { i64, [1 x i64] }, align 8
  %t158 = alloca { i64, [1 x i64] }, align 8
  %t169 = alloca { i64, [1 x i64] }, align 8
  %t213 = alloca { i64, [1 x i64] }, align 8
  %t258 = alloca { i64, [1 x i64] }, align 8
  %t447 = alloca { i64, [1 x i64] }, align 8
  %t459 = alloca { i64, [1 x i64] }, align 8
  %t468 = alloca { i64, [1 x i64] }, align 8
  %t477 = alloca { i64, [1 x i64] }, align 8
  %t497 = alloca { i64, [1 x i64] }, align 8
  %t579 = alloca { i64, [1 x i64] }, align 8
  %t671 = alloca { i64, [21 x i64] }, align 8
  %t790 = alloca { i64, [4 x i64] }, align 8
  %t793 = alloca { i64, [8 x i64] }, align 8
  %t810 = alloca { i64, [4 x i64] }, align 8
  %t813 = alloca { i64, [8 x i64] }, align 8
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
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2estandInAway(ptr %v0, ptr %s0, ptr %t11)
  store { i64, ptr } %t13, ptr %l52
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 7
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l55
  br label %bb2
bb2:
  %t20 = load i64, ptr %l55, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l59, !tbaa !24
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
  store i64 %t45, ptr %l62, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l62, !tbaa !24
  store i64 %t47, ptr %l59, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l59, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb81
bb11:
  br label %bb12
bb12:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l9, !tbaa !24
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 7
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t69, i64 %t70)
  store %"compiler/typed:Local" %t73, ptr %l83
  br label %bb13
bb13:
  %t74 = load %"compiler/typed:Local", ptr %l83
  store %"compiler/typed:Local" %t74, ptr %l10
  %t75 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 4
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 7}
  store i32 %t76, ptr %l11
  %t78 = load i32, ptr %l11, !range !{i32 0, i32 7}
  %t80 = trunc i64 0 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i32 0, ptr %l85
  br label %bb26
bb17:
  %t84 = load i32, ptr %l11, !range !{i32 0, i32 7}
  %t86 = trunc i64 5 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i32 1, ptr %l85
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i32 2, ptr %l85
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_a41c6179c77e6584_47cab6c73a638ed0)
  unreachable
bb26:
  %t91 = load i32, ptr %l85, !range !{i32 0, i32 4}
  store i32 %t91, ptr %l12
  %t92 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 2
  %t93 = load i32, ptr %t92, !tbaa !23
  %t94 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t97 = icmp eq i32 %t93, %t94
  br i1 %t97, label %bb27, label %bb28
bb27:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/lower:lowering", ptr %t99, i32 0, i32 11
  store i1 true, ptr %t101, !tbaa !21
  br label %bb29
bb28:
  br label %bb29
bb29:
  store { i64, [1 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [1 x i64] }, ptr %t102, i32 0, i32 0
  store i64 3, ptr %t103
  %t104 = load { i64, [1 x i64] }, ptr %t102
  store { i64, [1 x i64] } %t104, ptr %l13
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/lower:lowering", ptr %t106, i32 0, i32 24
  %t109 = load i1, ptr %t108, !tbaa !21
  br i1 %t109, label %bb30, label %bb31
bb30:
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/lower:lowering", ptr %t112, i32 0, i32 30
  %t115 = getelementptr %"compiler/typed:Plan", ptr %t114, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  %t121 = icmp slt i64 %t111, %t118
  store i1 %t121, ptr %l100, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb32
bb32:
  %t123 = load i1, ptr %l100, !tbaa !21
  br i1 %t123, label %bb33, label %bb34
bb33:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/lower:lowering", ptr %t124, i32 0, i32 30
  %t127 = getelementptr %"compiler/typed:Plan", ptr %t126, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l107, !tbaa !27
  %t129 = load i64, ptr %l9, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i64 %t129
  %t134 = load { i64, [2 x i64] }, ptr %t133
  store { i64, [2 x i64] } %t134, ptr %l14
  %t136 = load { i64, [2 x i64] }, ptr %l14
  %t138 = extractvalue { i64, [2 x i64] } %t136, 0
  %t139 = icmp eq i64 %t138, 2
  br i1 %t139, label %bb35, label %bb36
bb34:
  br label %bb48
bb35:
  %t141 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t142 = getelementptr { i64 }, ptr %t141, i32 0, i32 0
  %t143 = load i64, ptr %t142
  store i64 %t143, ptr %l15, !tbaa !24
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t145 = load i64, ptr %l15, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [1 x i64] }, ptr %t146, i32 0, i32 0
  store i64 1, ptr %t147
  %t149 = insertvalue { i64 } undef, i64 %t145, 0
  %t150 = getelementptr { i64, [1 x i64] }, ptr %t146, i32 0, i32 1
  store { i64 } %t149, ptr %t150
  %t151 = load { i64, [1 x i64] }, ptr %t146
  store { i64, [1 x i64] } %t151, ptr %l13
  br label %bb47
bb38:
  %t153 = load { i64, [2 x i64] }, ptr %l14
  %t155 = extractvalue { i64, [2 x i64] } %t153, 0
  %t156 = icmp eq i64 %t155, 3
  br i1 %t156, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, [1 x i64] } zeroinitializer, ptr %t158
  %t159 = getelementptr { i64, [1 x i64] }, ptr %t158, i32 0, i32 0
  store i64 2, ptr %t159
  %t160 = load { i64, [1 x i64] }, ptr %t158
  store { i64, [1 x i64] } %t160, ptr %l13
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d5691da7c866d175_fd62f9716bce2461)
  unreachable
bb47:
  br label %bb48
bb48:
  %t162 = load i64, ptr %l9, !tbaa !24
  %t164 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr i1, ptr %t165, i64 %t162
  %t167 = load i1, ptr %t166, !tbaa !31
  br i1 %t167, label %bb49, label %bb50
bb49:
  store { i64, [1 x i64] } zeroinitializer, ptr %t169
  %t170 = getelementptr { i64, [1 x i64] }, ptr %t169, i32 0, i32 0
  store i64 2, ptr %t170
  %t171 = load { i64, [1 x i64] }, ptr %t169
  store { i64, [1 x i64] } %t171, ptr %l13
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t173 = load { i64, [1 x i64] }, ptr %l13
  %t175 = extractvalue { i64, [1 x i64] } %t173, 0
  %t176 = icmp eq i64 %t175, 3
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb52, label %bb53
bb52:
  %t180 = load i64, ptr %l9, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i1, ptr %t183, i64 %t180
  %t185 = load i1, ptr %t184, !tbaa !31
  %t187 = xor i1 %t185, true
  store i1 %t187, ptr %l124, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb54
bb54:
  %t189 = load i1, ptr %l124, !tbaa !21
  br i1 %t189, label %bb55, label %bb56
bb55:
  %t190 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 4
  %t191 = load i32, ptr %t190, !range !{i32 0, i32 7}
  %t193 = trunc i64 6 to i32
  %t194 = icmp eq i32 %t191, %t193
  store i1 %t194, ptr %l128, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb57
bb57:
  %t196 = load i1, ptr %l128, !tbaa !21
  br i1 %t196, label %bb58, label %bb59
bb58:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 2
  %t199 = load i32, ptr %t198, !tbaa !23
  %t202 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erunArrayLocal(ptr %v0, ptr %t197, i32 %t199)
  store i1 %t202, ptr %l134
  br label %bb60
bb59:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb61
bb60:
  %t203 = load i1, ptr %l134, !tbaa !21
  store i1 %t203, ptr %l131, !tbaa !21
  br label %bb61
bb61:
  %t204 = load i1, ptr %l131, !tbaa !21
  br i1 %t204, label %bb62, label %bb63
bb62:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/lower:lowering", ptr %t205, i32 0, i32 13
  %t208 = load i64, ptr %l9, !tbaa !24
  %t209 = load { i64, [1 x i64] }, ptr %l13
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Hfd0fb4fa500a8eead78ad1b6f9922652(ptr %v0, ptr %t207, i64 %t208, { i64, [1 x i64] } %t209)
  br label %bb64
bb63:
  br label %bb65
bb64:
  store { i64, [1 x i64] } zeroinitializer, ptr %t213
  %t214 = getelementptr { i64, [1 x i64] }, ptr %t213, i32 0, i32 0
  store i64 3, ptr %t214
  %t215 = load { i64, [1 x i64] }, ptr %t213
  store { i64, [1 x i64] } %t215, ptr %l13
  br label %bb65
bb65:
  %t217 = load { i64, [1 x i64] }, ptr %l13
  %t219 = extractvalue { i64, [1 x i64] } %t217, 0
  %t220 = icmp eq i64 %t219, 3
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb66, label %bb67
bb66:
  %t224 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 4
  %t225 = load i32, ptr %t224, !range !{i32 0, i32 7}
  %t227 = trunc i64 0 to i32
  %t228 = icmp eq i32 %t225, %t227
  store i1 %t228, ptr %l143, !tbaa !21
  br label %bb68
bb67:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb68
bb68:
  %t230 = load i1, ptr %l143, !tbaa !21
  br i1 %t230, label %bb69, label %bb70
bb69:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/lower:lowering", ptr %t231, i32 0, i32 13
  %t234 = load i64, ptr %l9, !tbaa !24
  %t235 = load { i64, [1 x i64] }, ptr %l13
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Hfd0fb4fa500a8eead78ad1b6f9922652(ptr %v0, ptr %t233, i64 %t234, { i64, [1 x i64] } %t235)
  br label %bb71
bb70:
  br label %bb77
bb71:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 2
  %t241 = load i32, ptr %t240, !tbaa !23
  %t244 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erunArrayLocal(ptr %v0, ptr %t239, i32 %t241)
  store i1 %t244, ptr %l152
  br label %bb72
bb72:
  %t245 = load i1, ptr %l152, !tbaa !21
  br i1 %t245, label %bb73, label %bb74
bb73:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/lower:lowering", ptr %t246, i32 0, i32 14
  %t249 = load i64, ptr %l9, !tbaa !24
  %t250 = load i64, ptr %l9, !tbaa !24
  %t252 = trunc i64 %t250 to i32
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %t248, i64 %t249, i32 %t252)
  br label %bb75
bb74:
  store i32 2, ptr %l12
  br label %bb76
bb75:
  store { i64, [1 x i64] } zeroinitializer, ptr %t258
  %t259 = getelementptr { i64, [1 x i64] }, ptr %t258, i32 0, i32 0
  store i64 3, ptr %t259
  %t260 = load { i64, [1 x i64] }, ptr %t258
  store { i64, [1 x i64] } %t260, ptr %l13
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/lower:lowering", ptr %t262, i32 0, i32 3
  store ptr %t264, ptr %l162, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 0
  %t266 = load i32, ptr %t265, !tbaa !23
  %t267 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 1
  %t268 = load %"compiler/source:Span", ptr %t267
  %t269 = getelementptr %"compiler/typed:Local", ptr %l10, i32 0, i32 2
  %t270 = load i32, ptr %t269, !tbaa !23
  %t271 = load i32, ptr %l12, !range !{i32 0, i32 4}
  %t272 = load { i64, [1 x i64] }, ptr %l13
  %t278 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s2, i32 %t266, %"compiler/source:Span" %t268, i32 %t270, i32 %t271, { i64, [1 x i64] } %t272)
  store %"compiler/mir:Local" %t278, ptr %l168
  br label %bb78
bb78:
  %t279 = load ptr, ptr %l162, !tbaa !29
  %t280 = load %"compiler/mir:Local", ptr %l168
  %t281 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %t279, %"compiler/mir:Local" %t280)
  store i32 %t281, ptr %l169
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s2)
  br label %bb80
bb80:
  %t282 = load i64, ptr %l8, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l8, !tbaa !24
  br label %bb9
bb81:
  %t286 = load ptr, ptr %l1, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Body", ptr %t286, i32 0, i32 5
  store ptr %t288, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb82
bb82:
  %t290 = load i64, ptr %l17, !tbaa !24
  store i64 %t290, ptr %l174, !tbaa !24
  %t291 = load ptr, ptr %l16, !tbaa !29
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t291)
  store i64 %t293, ptr %l176
  br label %bb83
bb83:
  %t294 = load i64, ptr %l174, !tbaa !24
  %t295 = load i64, ptr %l176, !tbaa !24
  %t296 = icmp slt i64 %t294, %t295
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb84, label %bb85
bb84:
  br label %bb91
bb85:
  br label %bb86
bb86:
  %t300 = load ptr, ptr %l16, !tbaa !29
  %t301 = load i64, ptr %l17, !tbaa !24
  %t304 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t300, i64 %t301)
  store i32 %t304, ptr %l181
  br label %bb87
bb87:
  %t305 = load i32, ptr %l181, !tbaa !23
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/lower:lowering", ptr %t306, i32 0, i32 3
  %t309 = getelementptr %"compiler/mir:Fn", ptr %t308, i32 0, i32 4
  store ptr %t309, ptr %l183, !tbaa !29
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t314 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamIn(ptr %v0, ptr %t310, i32 %t305)
  store i32 %t314, ptr %l186
  br label %bb88
bb88:
  %t315 = load ptr, ptr %l183, !tbaa !29
  %t316 = load i32, ptr %l186, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t315, i32 %t316)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t317 = load i64, ptr %l17, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l17, !tbaa !24
  br label %bb82
bb91:
  %t321 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t321, ptr %l189
  br label %bb92
bb92:
  %t322 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %l19
  store i64 0, ptr %l20, !tbaa !24
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr %"compiler/typed:Body", ptr %t323, i32 0, i32 7
  %t327 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t325)
  store i64 %t327, ptr %l192
  br label %bb93
bb93:
  %t328 = load i64, ptr %l192, !tbaa !24
  store i64 %t328, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t329 = load i64, ptr %l21, !tbaa !24
  %t330 = load i64, ptr %l20, !tbaa !24
  %t333 = icmp sgt i64 %t329, %t330
  br i1 %t333, label %bb94, label %bb95
bb94:
  %t335 = load i64, ptr %l22, !tbaa !24
  %t337 = icmp sgt i64 %t335, 0
  br i1 %t337, label %bb96, label %bb97
bb95:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb99
bb96:
  %t339 = load i64, ptr %l21, !tbaa !24
  %t340 = load i64, ptr %l20, !tbaa !24
  %t343 = sub i64 %t339, %t340
  %t344 = load i64, ptr %l22, !tbaa !24
  %t347 = add i64 %t343, %t344
  %t349 = sub i64 %t347, 1
  %t350 = load i64, ptr %l22, !tbaa !24
  %t353 = sdiv i64 %t349, %t350
  store i64 %t353, ptr %l199, !tbaa !24
  br label %bb98
bb97:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb98
bb98:
  %t355 = load i64, ptr %l199, !tbaa !24
  store i64 %t355, ptr %l196, !tbaa !24
  br label %bb99
bb99:
  %t356 = load i64, ptr %l196, !tbaa !24
  store i64 %t356, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb100
bb100:
  %t357 = load i64, ptr %l24, !tbaa !24
  %t358 = load i64, ptr %l23, !tbaa !24
  %t361 = icmp slt i64 %t357, %t358
  %t363 = xor i1 %t361, true
  br i1 %t363, label %bb101, label %bb102
bb101:
  br label %bb111
bb102:
  br label %bb103
bb103:
  %t365 = load i64, ptr %l20, !tbaa !24
  %t366 = load i64, ptr %l24, !tbaa !24
  %t367 = load i64, ptr %l22, !tbaa !24
  %t370 = mul i64 %t366, %t367
  %t373 = add i64 %t365, %t370
  store i64 %t373, ptr %l25, !tbaa !24
  %t375 = load ptr, ptr %l1, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Body", ptr %t375, i32 0, i32 7
  %t378 = load i64, ptr %l25, !tbaa !24
  %t381 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t377, i64 %t378)
  store %"compiler/typed:Local" %t381, ptr %l220
  br label %bb104
bb104:
  %t382 = getelementptr %"compiler/typed:Local", ptr %l220, i32 0, i32 4
  %t383 = load i32, ptr %t382, !range !{i32 0, i32 7}
  %t385 = trunc i64 5 to i32
  %t386 = icmp eq i32 %t383, %t385
  br i1 %t386, label %bb105, label %bb106
bb105:
  %t388 = load i64, ptr %l25, !tbaa !24
  %t390 = trunc i64 %t388 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l19, i32 %t390)
  br label %bb107
bb106:
  br label %bb109
bb107:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/lower:lowering", ptr %t394, i32 0, i32 3
  %t397 = getelementptr %"compiler/mir:Fn", ptr %t396, i32 0, i32 5
  %t398 = load i64, ptr %l25, !tbaa !24
  %t400 = trunc i64 %t398 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t397, i32 %t400)
  br label %bb108
bb108:
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t404 = load i64, ptr %l24, !tbaa !24
  %t406 = add i64 %t404, 1
  store i64 %t406, ptr %l24, !tbaa !24
  br label %bb100
bb111:
  %t408 = load ptr, ptr %l1, !tbaa !29
  %t410 = getelementptr %"compiler/typed:Body", ptr %t408, i32 0, i32 6
  store ptr %t410, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb112
bb112:
  %t412 = load i64, ptr %l27, !tbaa !24
  store i64 %t412, ptr %l236, !tbaa !24
  %t413 = load ptr, ptr %l26, !tbaa !29
  %t415 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t413)
  store i64 %t415, ptr %l238
  br label %bb113
bb113:
  %t416 = load i64, ptr %l236, !tbaa !24
  %t417 = load i64, ptr %l238, !tbaa !24
  %t418 = icmp slt i64 %t416, %t417
  %t420 = xor i1 %t418, true
  br i1 %t420, label %bb114, label %bb115
bb114:
  br label %bb145
bb115:
  br label %bb116
bb116:
  %t422 = load ptr, ptr %l26, !tbaa !29
  %t423 = load i64, ptr %l27, !tbaa !24
  %t426 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t422, i64 %t423)
  store { i64, [1 x i64] } %t426, ptr %l243
  br label %bb117
bb117:
  %t427 = load { i64, [1 x i64] }, ptr %l243
  store { i64, [1 x i64] } %t427, ptr %l28
  %t428 = load { i64, [1 x i64] }, ptr %l28
  %t430 = extractvalue { i64, [1 x i64] } %t428, 0
  %t431 = icmp eq i64 %t430, 0
  br i1 %t431, label %bb118, label %bb119
bb118:
  %t433 = getelementptr { i64, [1 x i64] }, ptr %l28, i32 0, i32 1
  %t434 = getelementptr { i32 }, ptr %t433, i32 0, i32 0
  %t435 = load i32, ptr %t434
  store i32 %t435, ptr %l29, !tbaa !23
  br label %bb120
bb119:
  br label %bb123
bb120:
  store %olang.scope zeroinitializer, ptr %s26
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t439 = getelementptr %"compiler/typed:Body", ptr %t437, i32 0, i32 5
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t439
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %l249
  %t442 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s26, ptr %l249)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t442, ptr %l251
  br label %bb121
bb121:
  %t443 = load i32, ptr %l29, !tbaa !23
  %t444 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l251
  %t446 = call i64 @compiler_2flower_2eindexOf(ptr %s26, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t444, i32 %t443)
  store i64 %t446, ptr %l253
  br label %bb122
bb122:
  store { i64, [1 x i64] } zeroinitializer, ptr %t447
  %t448 = getelementptr { i64, [1 x i64] }, ptr %t447, i32 0, i32 0
  store i64 0, ptr %t448
  %t449 = load i64, ptr %l253, !tbaa !24
  %t450 = insertvalue { i64 } undef, i64 %t449, 0
  %t451 = getelementptr { i64, [1 x i64] }, ptr %t447, i32 0, i32 1
  store { i64 } %t450, ptr %t451
  %t452 = load { i64, [1 x i64] }, ptr %t447
  store { i64, [1 x i64] } %t452, ptr %l244
  call void @__olang_scope_close(ptr %s26)
  br label %bb142
bb123:
  %t454 = load { i64, [1 x i64] }, ptr %l28
  %t456 = extractvalue { i64, [1 x i64] } %t454, 0
  %t457 = icmp eq i64 %t456, 1
  br i1 %t457, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb127
bb126:
  store { i64, [1 x i64] } zeroinitializer, ptr %t459
  %t460 = getelementptr { i64, [1 x i64] }, ptr %t459, i32 0, i32 0
  store i64 1, ptr %t460
  %t461 = load { i64, [1 x i64] }, ptr %t459
  store { i64, [1 x i64] } %t461, ptr %l244
  br label %bb142
bb127:
  %t463 = load { i64, [1 x i64] }, ptr %l28
  %t465 = extractvalue { i64, [1 x i64] } %t463, 0
  %t466 = icmp eq i64 %t465, 2
  br i1 %t466, label %bb128, label %bb129
bb128:
  br label %bb130
bb129:
  br label %bb131
bb130:
  store { i64, [1 x i64] } zeroinitializer, ptr %t468
  %t469 = getelementptr { i64, [1 x i64] }, ptr %t468, i32 0, i32 0
  store i64 2, ptr %t469
  %t470 = load { i64, [1 x i64] }, ptr %t468
  store { i64, [1 x i64] } %t470, ptr %l244
  br label %bb142
bb131:
  %t472 = load { i64, [1 x i64] }, ptr %l28
  %t474 = extractvalue { i64, [1 x i64] } %t472, 0
  %t475 = icmp eq i64 %t474, 3
  br i1 %t475, label %bb132, label %bb133
bb132:
  br label %bb134
bb133:
  br label %bb135
bb134:
  store { i64, [1 x i64] } zeroinitializer, ptr %t477
  %t478 = getelementptr { i64, [1 x i64] }, ptr %t477, i32 0, i32 0
  store i64 3, ptr %t478
  %t479 = load { i64, [1 x i64] }, ptr %t477
  store { i64, [1 x i64] } %t479, ptr %l244
  br label %bb142
bb135:
  %t481 = load { i64, [1 x i64] }, ptr %l28
  %t483 = extractvalue { i64, [1 x i64] } %t481, 0
  %t484 = icmp eq i64 %t483, 4
  br i1 %t484, label %bb136, label %bb137
bb136:
  %t486 = getelementptr { i64, [1 x i64] }, ptr %l28, i32 0, i32 1
  %t487 = getelementptr { i32 }, ptr %t486, i32 0, i32 0
  %t488 = load i32, ptr %t487
  store i32 %t488, ptr %l30, !tbaa !23
  br label %bb138
bb137:
  br label %bb141
bb138:
  store %olang.scope zeroinitializer, ptr %s30
  %t490 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t490, ptr %l267
  %t492 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s30, ptr %l267)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t492, ptr %l269
  br label %bb139
bb139:
  %t493 = load i32, ptr %l30, !tbaa !23
  %t494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269
  %t496 = call i64 @compiler_2flower_2eindexOf(ptr %s30, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, i32 %t493)
  store i64 %t496, ptr %l271
  br label %bb140
bb140:
  store { i64, [1 x i64] } zeroinitializer, ptr %t497
  %t498 = getelementptr { i64, [1 x i64] }, ptr %t497, i32 0, i32 0
  store i64 4, ptr %t498
  %t499 = load i64, ptr %l271, !tbaa !24
  %t500 = insertvalue { i64 } undef, i64 %t499, 0
  %t501 = getelementptr { i64, [1 x i64] }, ptr %t497, i32 0, i32 1
  store { i64 } %t500, ptr %t501
  %t502 = load { i64, [1 x i64] }, ptr %t497
  store { i64, [1 x i64] } %t502, ptr %l244
  call void @__olang_scope_close(ptr %s30)
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_9d64f8741da6e7be_5ae354e0f93b83ca)
  unreachable
bb142:
  %t504 = load { i64, [1 x i64] }, ptr %l244
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/lower:lowering", ptr %t505, i32 0, i32 3
  %t508 = getelementptr %"compiler/mir:Fn", ptr %t507, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t508, { i64, [1 x i64] } %t504)
  br label %bb143
bb143:
  br label %bb144
bb144:
  %t512 = load i64, ptr %l27, !tbaa !24
  %t514 = add i64 %t512, 1
  store i64 %t514, ptr %l27, !tbaa !24
  br label %bb112
bb145:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/lower:lowering", ptr %t516, i32 0, i32 24
  %t519 = load i1, ptr %t518, !tbaa !21
  br i1 %t519, label %bb146, label %bb147
bb146:
  store i64 0, ptr %l32, !tbaa !24
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/lower:lowering", ptr %t521, i32 0, i32 30
  %t524 = getelementptr %"compiler/typed:Plan", ptr %t523, i32 0, i32 15
  %t526 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t524)
  store i64 %t526, ptr %l282
  br label %bb148
bb147:
  br label %bb162
bb148:
  %t527 = load i64, ptr %l282, !tbaa !24
  store i64 %t527, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t528 = load i64, ptr %l33, !tbaa !24
  %t529 = load i64, ptr %l32, !tbaa !24
  %t532 = icmp sgt i64 %t528, %t529
  br i1 %t532, label %bb149, label %bb150
bb149:
  %t534 = load i64, ptr %l34, !tbaa !24
  %t536 = icmp sgt i64 %t534, 0
  br i1 %t536, label %bb151, label %bb152
bb150:
  store i64 0, ptr %l286, !tbaa !24
  br label %bb154
bb151:
  %t538 = load i64, ptr %l33, !tbaa !24
  %t539 = load i64, ptr %l32, !tbaa !24
  %t542 = sub i64 %t538, %t539
  %t543 = load i64, ptr %l34, !tbaa !24
  %t546 = add i64 %t542, %t543
  %t548 = sub i64 %t546, 1
  %t549 = load i64, ptr %l34, !tbaa !24
  %t552 = sdiv i64 %t548, %t549
  store i64 %t552, ptr %l289, !tbaa !24
  br label %bb153
bb152:
  store i64 0, ptr %l289, !tbaa !24
  br label %bb153
bb153:
  %t554 = load i64, ptr %l289, !tbaa !24
  store i64 %t554, ptr %l286, !tbaa !24
  br label %bb154
bb154:
  %t555 = load i64, ptr %l286, !tbaa !24
  store i64 %t555, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb155
bb155:
  %t556 = load i64, ptr %l36, !tbaa !24
  %t557 = load i64, ptr %l35, !tbaa !24
  %t560 = icmp slt i64 %t556, %t557
  %t562 = xor i1 %t560, true
  br i1 %t562, label %bb156, label %bb157
bb156:
  br label %bb161
bb157:
  br label %bb158
bb158:
  %t564 = load i64, ptr %l32, !tbaa !24
  %t565 = load i64, ptr %l36, !tbaa !24
  %t566 = load i64, ptr %l34, !tbaa !24
  %t569 = mul i64 %t565, %t566
  %t572 = add i64 %t564, %t569
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t576 = getelementptr %"compiler/lower:lowering", ptr %t574, i32 0, i32 3
  %t577 = getelementptr %"compiler/mir:Fn", ptr %t576, i32 0, i32 6
  store { i64, [1 x i64] } zeroinitializer, ptr %t579
  %t580 = getelementptr { i64, [1 x i64] }, ptr %t579, i32 0, i32 0
  store i64 5, ptr %t580
  %t582 = insertvalue { i64 } undef, i64 %t572, 0
  %t583 = getelementptr { i64, [1 x i64] }, ptr %t579, i32 0, i32 1
  store { i64 } %t582, ptr %t583
  %t584 = load { i64, [1 x i64] }, ptr %t579
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t577, { i64, [1 x i64] } %t584)
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t587 = load i64, ptr %l36, !tbaa !24
  %t589 = add i64 %t587, 1
  store i64 %t589, ptr %l36, !tbaa !24
  br label %bb155
bb161:
  br label %bb162
bb162:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t593 = getelementptr %"compiler/lower:lowering", ptr %t591, i32 0, i32 0
  %t594 = load ptr, ptr %t593, !tbaa !29
  %t595 = load ptr, ptr %l1, !tbaa !29
  %t597 = getelementptr %"compiler/typed:Body", ptr %t595, i32 0, i32 3
  %t598 = load i64, ptr %t597, !tbaa !24
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t601 = getelementptr %"compiler/lower:lowering", ptr %t599, i32 0, i32 3
  %t602 = getelementptr %"compiler/mir:Fn", ptr %t601, i32 0, i32 0
  %t603 = load { i64, [2 x i64] }, ptr %t602
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %t594, i64 %t598, { i64, [2 x i64] } %t603)
  br label %bb163
bb163:
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t609 = getelementptr %"compiler/lower:lowering", ptr %t607, i32 0, i32 11
  %t610 = load i1, ptr %t609, !tbaa !21
  br i1 %t610, label %bb164, label %bb165
bb164:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/lower:lowering", ptr %t612, i32 0, i32 0
  %t615 = load ptr, ptr %t614, !tbaa !29
  %t617 = getelementptr %"compiler/lower:Lowerer", ptr %t615, i32 0, i32 6
  store ptr %t617, ptr %l323, !tbaa !29
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/lower:lowering", ptr %t618, i32 0, i32 7
  %t621 = load i64, ptr %t620, !tbaa !24
  %t622 = load ptr, ptr %l1, !tbaa !29
  %t624 = getelementptr %"compiler/typed:Body", ptr %t622, i32 0, i32 4
  %t625 = load %"compiler/source:Span", ptr %t624
  %t628 = call %"compiler/lower:Gap" @compiler_2flower_3aGap_2ector(ptr %v0, ptr %v0, i64 %t621, %"compiler/source:Span" %t625, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store %"compiler/lower:Gap" %t628, ptr %l328
  br label %bb166
bb165:
  br label %bb168
bb166:
  %t629 = load ptr, ptr %l323, !tbaa !29
  %t630 = load %"compiler/lower:Gap", ptr %l328
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ePush_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v0, ptr %t629, %"compiler/lower:Gap" %t630)
  br label %bb167
bb167:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb168:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"compiler/lower:lowering", ptr %t631, i32 0, i32 3
  %t635 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t633)
  store i32 %t635, ptr %l331
  br label %bb169
bb169:
  %t636 = load ptr, ptr %l1, !tbaa !29
  %t638 = getelementptr %"compiler/typed:Body", ptr %t636, i32 0, i32 11
  %t639 = load ptr, ptr %t638, !tbaa !29
  store ptr %t639, ptr %l38, !tbaa !29
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t643 = getelementptr %"compiler/lower:lowering", ptr %t641, i32 0, i32 3
  store ptr %t643, ptr %l335, !tbaa !29
  store i32 0, ptr %l336
  %t644 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  store i32 %t644, ptr %l337, !tbaa !23
  %t645 = load ptr, ptr %l38, !tbaa !29
  %t647 = icmp eq ptr %t645, null
  br i1 %t647, label %bb170, label %bb171
bb170:
  call void @__olang_check_failed(ptr @olang_loc_cce264ade2665388_2fe88b7b285cb164)
  unreachable
bb171:
  br label %bb172
bb172:
  %t649 = load ptr, ptr %l38, !tbaa !29
  %t652 = getelementptr %"compiler/typed:Block", ptr %t649, i32 0, i32 0
  %t653 = load i32, ptr %t652, !tbaa !23
  %t654 = load ptr, ptr %l1, !tbaa !29
  %t656 = getelementptr %"compiler/typed:Body", ptr %t654, i32 0, i32 4
  %t657 = load %"compiler/source:Span", ptr %t656
  %t658 = load ptr, ptr %l335, !tbaa !29
  %t659 = load i32, ptr %l336, !range !{i32 0, i32 7}
  %t660 = load i32, ptr %l337, !tbaa !23
  %t663 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t658, i32 %t659, i32 %t660, i32 %t653, %"compiler/source:Span" %t657, i32 0)
  store i32 %t663, ptr %l345
  br label %bb173
bb173:
  %t664 = load i32, ptr %l345, !tbaa !23
  store i32 %t664, ptr %l39, !tbaa !23
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t666 = load ptr, ptr %l1, !tbaa !29
  %t668 = getelementptr %"compiler/typed:Body", ptr %t666, i32 0, i32 4
  %t669 = load %"compiler/source:Span", ptr %t668
  %t670 = load i32, ptr %l39, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t671
  %t672 = getelementptr { i64, [21 x i64] }, ptr %t671, i32 0, i32 0
  store i64 3, ptr %t672
  %t674 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t669, 0
  %t676 = insertvalue { %"compiler/source:Span", i32 } %t674, i32 %t670, 1
  %t677 = getelementptr { i64, [21 x i64] }, ptr %t671, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t676, ptr %t677
  %t678 = load { i64, [21 x i64] }, ptr %t671
  %t680 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t678, ptr %t680
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t665, ptr %t680)
  br label %bb174
bb174:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = getelementptr %"compiler/lower:lowering", ptr %t683, i32 0, i32 12
  store ptr %t685, ptr %l353, !tbaa !29
  %t686 = load i32, ptr %l39, !tbaa !23
  store i32 %t686, ptr %l354, !tbaa !23
  %t687 = load ptr, ptr %l38, !tbaa !29
  %t689 = icmp eq ptr %t687, null
  br i1 %t689, label %bb175, label %bb176
bb175:
  call void @__olang_check_failed(ptr @olang_loc_7968fd697afe6b41_fd4fb0e63a0f91b5)
  unreachable
bb176:
  br label %bb177
bb177:
  %t691 = load ptr, ptr %l38, !tbaa !29
  %t694 = getelementptr %"compiler/typed:Block", ptr %t691, i32 0, i32 0
  %t695 = load i32, ptr %t694, !tbaa !23
  %t696 = load i32, ptr %l354, !tbaa !23
  %t699 = call %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %s0, i32 %t696, i32 %t695, i32 0)
  store %"compiler/lower:level" %t699, ptr %l361
  br label %bb178
bb178:
  %t700 = load ptr, ptr %l353, !tbaa !29
  %t701 = load %"compiler/lower:level", ptr %l361
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t700, %"compiler/lower:level" %t701)
  br label %bb179
bb179:
  %t702 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyParams(ptr %v0, ptr %t702)
  br label %bb180
bb180:
  %t704 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdParams(ptr %v0, ptr %t704)
  br label %bb181
bb181:
  %t706 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2esettleViews(ptr %v0, ptr %t706)
  br label %bb182
bb182:
  %t708 = load ptr, ptr %l38, !tbaa !29
  %t710 = icmp eq ptr %t708, null
  br i1 %t710, label %bb183, label %bb184
bb183:
  call void @__olang_check_failed(ptr @olang_loc_796d2b5c84af77ba_ecbdfcaab288560e)
  unreachable
bb184:
  br label %bb185
bb185:
  %t712 = load ptr, ptr %l38, !tbaa !29
  %t715 = getelementptr %"compiler/typed:Block", ptr %t712, i32 0, i32 1
  %t716 = load { i64, ptr }, ptr %t715, !tbaa !27
  store { i64, ptr } %t716, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t718 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t720 = extractvalue { i64, ptr } %t718, 0
  store i64 %t720, ptr %l42, !tbaa !24
  br label %bb186
bb186:
  %t722 = load i64, ptr %l41, !tbaa !24
  %t723 = load i64, ptr %l42, !tbaa !24
  %t726 = icmp slt i64 %t722, %t723
  %t728 = xor i1 %t726, true
  br i1 %t728, label %bb187, label %bb188
bb187:
  br label %bb192
bb188:
  br label %bb189
bb189:
  %t730 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t730, ptr %l376, !tbaa !27
  %t731 = load i64, ptr %l41, !tbaa !24
  %t733 = getelementptr { i64, ptr }, ptr %l376, i32 0, i32 1
  %t734 = load ptr, ptr %t733, !tbaa !27
  %t735 = getelementptr ptr, ptr %t734, i64 %t731
  %t736 = load ptr, ptr %t735, !tbaa !39
  %t738 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v0, ptr %t738, ptr %t736)
  br label %bb190
bb190:
  br label %bb191
bb191:
  %t742 = load i64, ptr %l41, !tbaa !24
  %t744 = add i64 %t742, 1
  store i64 %t744, ptr %l41, !tbaa !24
  br label %bb186
bb192:
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t748 = getelementptr %"compiler/lower:lowering", ptr %t746, i32 0, i32 10
  %t749 = load i1, ptr %t748, !tbaa !21
  br i1 %t749, label %bb193, label %bb194
bb193:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb194:
  br label %bb195
bb195:
  %t751 = load ptr, ptr %l1, !tbaa !29
  %t753 = getelementptr %"compiler/typed:Body", ptr %t751, i32 0, i32 1
  %t754 = load { i64, [2 x i64] }, ptr %t753
  %t758 = extractvalue { i64, [2 x i64] } %t754, 0
  %t759 = icmp eq i64 %t758, 1
  br i1 %t759, label %bb196, label %bb197
bb196:
  br label %bb198
bb197:
  br label %bb199
bb198:
  store i1 true, ptr %l387, !tbaa !21
  br label %bb204
bb199:
  br i1 true, label %bb200, label %bb201
bb200:
  br label %bb202
bb201:
  br label %bb203
bb202:
  store i1 false, ptr %l387, !tbaa !21
  br label %bb204
bb203:
  call void @__olang_check_failed(ptr @olang_loc_6ad9ce9fa5f3c6a2_cb74a58b871c8f06)
  unreachable
bb204:
  %t761 = load i1, ptr %l387, !tbaa !21
  store i1 %t761, ptr %l45, !tbaa !21
  %t762 = load ptr, ptr %l2, !tbaa !29
  %t763 = load ptr, ptr %l1, !tbaa !29
  %t765 = getelementptr %"compiler/typed:Body", ptr %t763, i32 0, i32 2
  %t766 = load i32, ptr %t765, !tbaa !23
  %t769 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t762, i32 %t766)
  store i32 %t769, ptr %l393
  br label %bb205
bb205:
  %t770 = load i32, ptr %l393, !tbaa !23
  store i32 %t770, ptr %l46, !tbaa !23
  %t771 = load i1, ptr %l45, !tbaa !21
  br i1 %t771, label %bb206, label %bb207
bb206:
  %t773 = load ptr, ptr %l0, !tbaa !29
  %t774 = load i32, ptr %l46, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eassemble(ptr %v0, ptr %t773, i32 %t774)
  br label %bb208
bb207:
  %t777 = load i32, ptr %l46, !tbaa !23
  %t778 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t781 = icmp eq i32 %t777, %t778
  br i1 %t781, label %bb209, label %bb210
bb208:
  br label %bb215
bb209:
  %t783 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t783, i64 0)
  br label %bb211
bb210:
  %t785 = load ptr, ptr %l0, !tbaa !29
  %t786 = load ptr, ptr %l1, !tbaa !29
  %t788 = getelementptr %"compiler/typed:Body", ptr %t786, i32 0, i32 4
  %t789 = load %"compiler/source:Span", ptr %t788
  store { i64, [4 x i64] } zeroinitializer, ptr %t790
  %t791 = getelementptr { i64, [4 x i64] }, ptr %t790, i32 0, i32 0
  store i64 0, ptr %t791
  %t792 = load { i64, [4 x i64] }, ptr %t790
  store { i64, [8 x i64] } zeroinitializer, ptr %t793
  %t794 = getelementptr { i64, [8 x i64] }, ptr %t793, i32 0, i32 0
  store i64 9, ptr %t794
  %t796 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t789, 0
  %t798 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t796, i32 3, 1
  %t800 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t798, { i64, [4 x i64] } %t792, 2
  %t801 = getelementptr { i64, [8 x i64] }, ptr %t793, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t800, ptr %t801
  %t802 = load { i64, [8 x i64] }, ptr %t793
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t785, { i64, [8 x i64] } %t802)
  br label %bb213
bb211:
  %t805 = load ptr, ptr %l0, !tbaa !29
  %t806 = load ptr, ptr %l1, !tbaa !29
  %t808 = getelementptr %"compiler/typed:Body", ptr %t806, i32 0, i32 4
  %t809 = load %"compiler/source:Span", ptr %t808
  store { i64, [4 x i64] } zeroinitializer, ptr %t810
  %t811 = getelementptr { i64, [4 x i64] }, ptr %t810, i32 0, i32 0
  store i64 0, ptr %t811
  %t812 = load { i64, [4 x i64] }, ptr %t810
  store { i64, [8 x i64] } zeroinitializer, ptr %t813
  %t814 = getelementptr { i64, [8 x i64] }, ptr %t813, i32 0, i32 0
  store i64 5, ptr %t814
  %t816 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t809, 0
  %t818 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t816, { i64, [4 x i64] } %t812, 1
  %t819 = getelementptr { i64, [8 x i64] }, ptr %t813, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t818, ptr %t819
  %t820 = load { i64, [8 x i64] }, ptr %t813
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t805, { i64, [8 x i64] } %t820)
  br label %bb212
bb212:
  br label %bb214
bb213:
  br label %bb214
bb214:
  br label %bb215
bb215:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eseq(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l14 = alloca { i64, ptr }
  %l28 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t41 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Seq", ptr %t1, i32 0, i32 0
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
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t26, ptr %t24)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Seq", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb8, label %bb9
bb8:
  store { i64, [4 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 0
  store i64 0, ptr %t42
  %t43 = load { i64, [4 x i64] }, ptr %t41
  store { i64, [4 x i64] } %t43, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Seq", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t45, ptr %t49)
  store { i64, [4 x i64] } %t52, ptr %l28
  br label %bb11
bb11:
  %t53 = load { i64, [4 x i64] }, ptr %l28
  store { i64, [4 x i64] } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l17 = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtSpawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t28, ptr %a2)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l4, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableHolder(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
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
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Elem", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableHolder(ptr %v0, ptr %v1, ptr %t37, ptr %t41)
  store i1 %t44, ptr %l25
  br label %bb13
bb13:
  %t45 = load i1, ptr %l25, !tbaa !21
  store i1 %t45, ptr %l6, !tbaa !21
  br label %bb33
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l27, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Payload", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableHolder(ptr %v0, ptr %v1, ptr %t61, ptr %t65)
  store i1 %t68, ptr %l35
  br label %bb20
bb20:
  %t69 = load i1, ptr %l35, !tbaa !21
  store i1 %t69, ptr %l6, !tbaa !21
  br label %bb33
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l36, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l37, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t89 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
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
  call void @__olang_check_failed(ptr @olang_loc_27604e529e9a5bde_d86cf7c50ff5ec3a)
  unreachable
bb33:
  %t91 = load i1, ptr %l6, !tbaa !21
  store i1 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l11 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
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
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 54
  %t9 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 55
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t14, i64 -1)
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtIn(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 54
  %t24 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePop_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %s0, ptr %t22)
  %t25 = extractvalue { i32, ptr } %t24, 1
  %t26 = extractvalue { i32, ptr } %t24, 0
  store i32 %t26, ptr %l15
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb8, label %ok.28, !prof !99
ok.28:
  store ptr %t25, ptr %l14
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l14, !tbaa !29
  store ptr %t29, ptr %l11, !tbaa !29
  br label %bb15
bb8:
  %t30 = load i32, ptr %l15, !tbaa !23
  %t31 = icmp eq i32 %t30, 65536
  br i1 %t31, label %bb9, label %bb10
bb9:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a5b1a763b9bba10_ba6ba978893df9a4)
  unreachable
bb10:
  %t33 = load i32, ptr %l15, !tbaa !23
  %t34 = icmp eq i32 %t33, 65537
  br i1 %t34, label %bb11, label %bb12
bb11:
  call void @__olang_bang_failed_plain(ptr @olang_loc_eb3797cfa5f64105_1f3db8e929f64739)
  unreachable
bb12:
  %t36 = load i32, ptr %l15, !tbaa !23
  %t37 = icmp eq i32 %t36, 65538
  br i1 %t37, label %bb13, label %bb14
bb13:
  call void @__olang_bang_failed_plain(ptr @olang_loc_d2f375e5ba968b65_383d0166caeed659)
  unreachable
bb14:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e527201c6aa166ab_3a4acb23654914bf)
  unreachable
bb15:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 55
  %t43 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t41)
  %t44 = extractvalue { i32, i64 } %t43, 1
  %t45 = extractvalue { i32, i64 } %t43, 0
  store i32 %t45, ptr %l23
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb17, label %ok.47, !prof !99
ok.47:
  store i64 %t44, ptr %l22
  br label %bb16
bb16:
  %t48 = load i64, ptr %l22, !tbaa !24
  store i64 %t48, ptr %l19, !tbaa !24
  br label %bb24
bb17:
  %t49 = load i32, ptr %l23, !tbaa !23
  %t50 = icmp eq i32 %t49, 65536
  br i1 %t50, label %bb18, label %bb19
bb18:
  call void @__olang_bang_failed_plain(ptr @olang_loc_f20c72191c5bbaec_70ba5090fad608c8)
  unreachable
bb19:
  %t52 = load i32, ptr %l23, !tbaa !23
  %t53 = icmp eq i32 %t52, 65537
  br i1 %t53, label %bb20, label %bb21
bb20:
  call void @__olang_bang_failed_plain(ptr @olang_loc_9792dafd009dd231_d222868cd9c52d2d)
  unreachable
bb21:
  %t55 = load i32, ptr %l23, !tbaa !23
  %t56 = icmp eq i32 %t55, 65538
  br i1 %t56, label %bb22, label %bb23
bb22:
  call void @__olang_bang_failed_plain(ptr @olang_loc_5cf7683923427be1_eeed011b70fc7f3d)
  unreachable
bb23:
  call void @__olang_bang_failed_plain(ptr @olang_loc_35262608d5eaeb07_a04d120ff2489083)
  unreachable
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2etarget(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l9 = alloca %"compiler/lower:pl"
  %l11 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca %"compiler/lower:pl"
  %l18 = alloca %"compiler/lower:pl"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t13 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 20
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eLen_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s1, ptr %t9, %"compiler/source:Span" %a1, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb6
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 0
  store i64 0, ptr %t14
  %t15 = load { i64, [2 x i64] }, ptr %t13
  %t17 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v1, { i64, [2 x i64] } %t15)
  store %"compiler/lower:pl" %t17, ptr %l9
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  %t18 = load %"compiler/lower:pl", ptr %l9
  store %"compiler/lower:pl" %t18, ptr %rv
  br label %ret
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:lowering", ptr %t19, i32 0, i32 20
  store ptr %t21, ptr %l11, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 20
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eLen_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l14
  br label %bb7
bb7:
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = sub i64 %t27, 1
  %t29 = load ptr, ptr %l11, !tbaa !29
  %t31 = call %"compiler/lower:pl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eAt_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %t29, i64 %t28)
  store %"compiler/lower:pl" %t31, ptr %l16
  br label %bb8
bb8:
  %t33 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v1, ptr %l16)
  store %"compiler/lower:pl" %t33, ptr %l18
  br label %bb9
bb9:
  %t34 = load %"compiler/lower:pl", ptr %l18
  store %"compiler/lower:pl" %t34, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etextData(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l10 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca i32
  %l17 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t6 = alloca { i64, [2 x i64] }, align 8
  %t39 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  store { i64, [2 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [2 x i64] }, ptr %t6, i32 0, i32 0
  store i64 1, ptr %t7
  %t9 = insertvalue { { i64, ptr } } undef, { i64, ptr } %a1, 0
  %t10 = getelementptr { i64, [2 x i64] }, ptr %t6, i32 0, i32 1
  store { { i64, ptr } } %t9, ptr %t10
  %t11 = load { i64, [2 x i64] }, ptr %t6
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store { i64, [2 x i64] } %t11, ptr %t13
  %t16 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %s0, ptr %t3, ptr %t13)
  store i32 %t16, ptr %l10
  br label %bb1
bb1:
  %t17 = load i32, ptr %l10, !tbaa !23
  store i32 %t17, ptr %l3, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 2
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %t25)
  store i32 %t27, ptr %l15
  br label %bb2
bb2:
  %t28 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t29 = load ptr, ptr %l12, !tbaa !29
  %t30 = load i32, ptr %l15, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t29, i32 %t30, i64 %t28)
  store i32 %t32, ptr %l17
  br label %bb3
bb3:
  %t33 = load i32, ptr %l3, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 7
  %t37 = load i64, ptr %t36, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 0
  store i64 3, ptr %t40
  %t41 = load i32, ptr %l17, !tbaa !23
  %t42 = insertvalue { i32, i32, i64, %"compiler/source:Span" } undef, i32 %t41, 0
  %t44 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t42, i32 %t33, 1
  %t46 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t44, i64 %t37, 2
  %t48 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t46, %"compiler/source:Span" %a2, 3
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  store { i32, i32, i64, %"compiler/source:Span" } %t48, ptr %t49
  %t50 = load { i64, [4 x i64] }, ptr %t39
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewInit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %l22 = alloca ptr
  %l27 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca ptr
  %l47 = alloca i1
  %l49 = alloca ptr
  %l56 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca i1
  %l67 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l84 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  %t7 = load i64, ptr %l3, !tbaa !24
  %t10 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t6, i64 %t7)
  store %"compiler/typed:Local" %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 2
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l4, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l20
  br label %bb2
bb2:
  %t22 = load i1, ptr %l20, !tbaa !21
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = call ptr @compiler_2flower_2epromoted(ptr %v2, ptr %v2, ptr %t23)
  store ptr %t25, ptr %l22
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t26 = load ptr, ptr %l22, !tbaa !29
  store ptr %t26, ptr %l5, !tbaa !29
  %t27 = load ptr, ptr %l5, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t35 = call ptr @compiler_2flower_2eviewCallIn(ptr %v2, ptr %v2, ptr %t33)
  store ptr %t35, ptr %l27
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t36 = load ptr, ptr %l27, !tbaa !29
  store ptr %t36, ptr %l6, !tbaa !29
  %t37 = load ptr, ptr %l6, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t49 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %t43, ptr %t44, ptr %t45)
  store i1 %t49, ptr %l34
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t50 = load i1, ptr %l34, !tbaa !21
  store i1 %t50, ptr %rv
  br label %ret
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = call ptr @compiler_2flower_2eviewCallIn(ptr %v2, ptr %v2, ptr %t52)
  store ptr %t54, ptr %l37
  br label %bb14
bb14:
  %t55 = load ptr, ptr %l37, !tbaa !29
  store ptr %t55, ptr %l7, !tbaa !29
  %t56 = load ptr, ptr %l7, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t64 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldThroughTemps(ptr %v0, ptr %v1, ptr %v2, ptr %t62, ptr %t63, ptr %t64)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t74 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t68, ptr %t69, ptr %t70)
  store i1 %t74, ptr %l47
  br label %bb19
bb19:
  %t75 = load i1, ptr %l47, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
bb20:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = call ptr @compiler_2flower_2eviewCallIn(ptr %v2, ptr %v2, ptr %t76)
  store ptr %t78, ptr %l49
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l49, !tbaa !29
  store ptr %t79, ptr %l8, !tbaa !29
  %t80 = load ptr, ptr %l8, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t88 = load ptr, ptr %l8, !tbaa !29
  %t92 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %t86, ptr %t87, ptr %t88)
  store i1 %t92, ptr %l56
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t93 = load i1, ptr %l56, !tbaa !21
  store i1 %t93, ptr %rv
  br label %ret
bb25:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 2
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t101 = call ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v2, ptr %v2, ptr %t97, ptr %t98)
  store ptr %t101, ptr %l60
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l60, !tbaa !29
  store ptr %t102, ptr %l9, !tbaa !29
  %t103 = load ptr, ptr %l9, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb30
bb28:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t109 = load ptr, ptr %l9, !tbaa !29
  %t113 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t107, ptr %t108, ptr %t109)
  store i1 %t113, ptr %l67
  br label %bb29
bb29:
  %t114 = load i1, ptr %l67, !tbaa !21
  %t115 = xor i1 %t114, true
  store i1 %t115, ptr %l63, !tbaa !21
  br label %bb30
bb30:
  %t117 = load i1, ptr %l63, !tbaa !21
  br i1 %t117, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l2, !tbaa !29
  store ptr %t119, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t120 = load ptr, ptr %l70, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb34, label %bb35
bb34:
  %t123 = load ptr, ptr %l70, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 18}
  %t126 = icmp eq i64 %t124, 7
  store i1 %t126, ptr %l71, !tbaa !21
  br label %bb35
bb35:
  %t127 = load i1, ptr %l71, !tbaa !21
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t128 = load ptr, ptr %l2, !tbaa !29
  %t130 = getelementptr { i64, [5 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t130, i32 0, i32 2
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l10, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/lower:lowering", ptr %t134, i32 0, i32 46
  %t137 = load ptr, ptr %l10, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Make", ptr %t137, i32 0, i32 4
  %t140 = load i32, ptr %t139, !tbaa !23
  %t142 = sext i32 %t140 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t136, i64 %t142, i1 true)
  br label %bb39
bb39:
  br label %bb50
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb49
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l2, !tbaa !29
  %t147 = load i32, ptr %l4, !tbaa !23
  %t151 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v2, ptr %t145, ptr %t146, i32 %t147)
  store i1 %t151, ptr %l84
  br label %bb44
bb44:
  %t152 = load i1, ptr %l84, !tbaa !21
  br i1 %t152, label %bb45, label %bb46
bb45:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/lower:lowering", ptr %t153, i32 0, i32 51
  %t156 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t155, i64 %t156, i1 true)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb48
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_f886b4a7a2309fc_ac18d7305f75b0d8)
  unreachable
bb50:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewithPayload(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca { i64, [1 x i64] }
  %l19 = alloca i32
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l28 = alloca i64
  %l35 = alloca { i64, ptr }
  %l43 = alloca i1
  %l50 = alloca { i64, ptr }
  %l53 = alloca i32
  %l56 = alloca i32
  %l60 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca i32
  %l66 = alloca { i64, ptr }
  %l72 = alloca i32
  %l75 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca i32
  %l80 = alloca i32
  %l83 = alloca ptr
  %l87 = alloca i32
  %l95 = alloca ptr
  %l96 = alloca { i64, [1 x i64] }
  %l101 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l120 = alloca i32
  %l121 = alloca ptr
  %l127 = alloca { i64, [4 x i64] }
  %l130 = alloca i32
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l135 = alloca %"compiler/lower:pl"
  %l137 = alloca %"compiler/lower:pl"
  %l138 = alloca i64
  %l139 = alloca ptr
  %l142 = alloca i32
  %l143 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l152 = alloca i32
  %l153 = alloca { i64, [1 x i64] }
  %l154 = alloca { i64, [1 x i64] }
  %l157 = alloca i32
  %l160 = alloca { i64, [4 x i64] }
  %l166 = alloca ptr
  %l169 = alloca i32
  %l171 = alloca i32
  %l179 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t137 = alloca { i64, [21 x i64] }, align 8
  %t150 = alloca { i64, [1 x i64] }, align 8
  %t229 = alloca { i64, [15 x i64] }, align 8
  %t252 = alloca { i64, [2 x i64] }, align 8
  %t260 = alloca { i64, [1 x i64] }, align 8
  %t300 = alloca { i64, [1 x i64] }, align 8
  %t309 = alloca { i64, [15 x i64] }, align 8
  %t329 = alloca { i64, [21 x i64] }, align 8
  %t356 = alloca { i64, [1 x i64] }, align 8
  %t361 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store %"compiler/source:Span" %a4, ptr %l4
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
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l7, !tbaa !29
  %t14 = load { i64, [4 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [4 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 2
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t20 = getelementptr { i32, i64 }, ptr %t19, i32 0, i32 1
  %t21 = load i64, ptr %t20
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t23 = load i64, ptr %l8, !tbaa !24
  store i64 %t23, ptr %l28, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f82a3f3df9ef67f1_af23eb46fab62c25)
  unreachable
bb9:
  %t25 = load i64, ptr %l28, !tbaa !24
  store i64 %t25, ptr %l9, !tbaa !24
  %t26 = load ptr, ptr %l6, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %a3)
  store { i64, ptr } %t30, ptr %l35
  br label %bb10
bb10:
  %t31 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t31, ptr %l10, !tbaa !27
  %t32 = load i64, ptr %l9, !tbaa !24
  %t34 = ashr i64 %t32, 16
  %t36 = sub i64 %t34, 1
  store i64 %t36, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l9, !tbaa !24
  %t40 = and i64 %t38, 65535
  store i64 %t40, ptr %l12, !tbaa !24
  %t42 = load i64, ptr %l11, !tbaa !24
  %t44 = icmp slt i64 %t42, 0
  br i1 %t44, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb13
bb12:
  %t46 = load i64, ptr %l11, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t52 = icmp sge i64 %t46, %t49
  store i1 %t52, ptr %l43, !tbaa !21
  br label %bb13
bb13:
  %t54 = load i1, ptr %l43, !tbaa !21
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t55 = load { i64, [4 x i64] }, ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t55, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l6, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t58, ptr %l50, !tbaa !27
  %t59 = load i64, ptr %l11, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i32, ptr %t62, i64 %t59
  %t64 = load i32, ptr %t63, !tbaa !33
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t57, i32 %t64)
  store i32 %t67, ptr %l53
  br label %bb17
bb17:
  %t68 = load i32, ptr %l53, !tbaa !23
  store i32 %t68, ptr %l13, !tbaa !23
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t70 = load i32, ptr %l13, !tbaa !23
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l56
  br label %bb18
bb18:
  %t74 = load i32, ptr %l56, !tbaa !23
  store i32 %t74, ptr %l14, !tbaa !23
  %t75 = load i32, ptr %l14, !tbaa !23
  %t76 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t79 = icmp eq i32 %t75, %t76
  br i1 %t79, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb23
bb20:
  %t81 = load ptr, ptr %l7, !tbaa !29
  store ptr %t81, ptr %l61, !tbaa !29
  %t82 = load ptr, ptr %l6, !tbaa !29
  %t83 = load i32, ptr %l13, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l64
  br label %bb21
bb21:
  %t87 = load i64, ptr %l12, !tbaa !24
  %t88 = load ptr, ptr %l61, !tbaa !29
  %t89 = load i32, ptr %l64, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s0, ptr %t88, i32 %t89, i64 %t87)
  store { i64, ptr } %t91, ptr %l66
  br label %bb22
bb22:
  %t92 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  %t95 = icmp eq i64 %t93, 0
  store i1 %t95, ptr %l60, !tbaa !21
  br label %bb23
bb23:
  %t97 = load i1, ptr %l60, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t98 = load { i64, [4 x i64] }, ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t98, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t101 = load i32, ptr %l13, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l72
  br label %bb27
bb27:
  %t105 = load i32, ptr %l72, !tbaa !23
  store i32 %t105, ptr %l15, !tbaa !23
  %t106 = load ptr, ptr %l6, !tbaa !29
  %t107 = load i32, ptr %l15, !tbaa !23
  %t110 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t106, i32 %t107)
  store i64 %t110, ptr %l75
  br label %bb28
bb28:
  %t111 = load i64, ptr %l75, !tbaa !24
  store i64 %t111, ptr %l16, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/lower:lowering", ptr %t112, i32 0, i32 3
  store ptr %t114, ptr %l77, !tbaa !29
  store i32 6, ptr %l78
  br i1 %a5, label %bb29, label %bb30
bb29:
  %t117 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  store i32 %t117, ptr %l80, !tbaa !23
  br label %bb32
bb30:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t119)
  store ptr %t121, ptr %l83
  br label %bb31
bb31:
  %t122 = load ptr, ptr %l83, !tbaa !29
  %t124 = getelementptr %"compiler/lower:level", ptr %t122, i32 0, i32 0
  %t125 = load i32, ptr %t124, !tbaa !23
  store i32 %t125, ptr %l80, !tbaa !23
  br label %bb32
bb32:
  %t127 = load %"compiler/source:Span", ptr %l4
  %t128 = load ptr, ptr %l77, !tbaa !29
  %t129 = load i32, ptr %l78, !range !{i32 0, i32 7}
  %t130 = load i32, ptr %l80, !tbaa !23
  %t132 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t128, i32 %t129, i32 %t130, i32 -1, %"compiler/source:Span" %t127, i32 0)
  store i32 %t132, ptr %l87
  br label %bb33
bb33:
  %t133 = load i32, ptr %l87, !tbaa !23
  store i32 %t133, ptr %l17, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l4
  %t136 = load i32, ptr %l17, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t137
  %t138 = getelementptr { i64, [21 x i64] }, ptr %t137, i32 0, i32 0
  store i64 3, ptr %t138
  %t140 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t135, 0
  %t142 = insertvalue { %"compiler/source:Span", i32 } %t140, i32 %t136, 1
  %t143 = getelementptr { i64, [21 x i64] }, ptr %t137, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t142, ptr %t143
  %t144 = load { i64, [21 x i64] }, ptr %t137
  %t146 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t144, ptr %t146
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t134, ptr %t146)
  br label %bb34
bb34:
  %t149 = load i32, ptr %l17, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [1 x i64] }, ptr %t150, i32 0, i32 0
  store i64 0, ptr %t151
  %t153 = insertvalue { i32 } undef, i32 %t149, 0
  %t154 = getelementptr { i64, [1 x i64] }, ptr %t150, i32 0, i32 1
  store { i32 } %t153, ptr %t154
  %t155 = load { i64, [1 x i64] }, ptr %t150
  store { i64, [1 x i64] } %t155, ptr %l18
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l95, !tbaa !29
  %t158 = load { i64, [1 x i64] }, ptr %l18
  store { i64, [1 x i64] } %t158, ptr %l96
  %t159 = load ptr, ptr %l7, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 0
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = getelementptr %"compiler/load:Loader", ptr %t162, i32 0, i32 10
  %t165 = load i64, ptr %l16, !tbaa !24
  %t168 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t164, i64 %t165)
  store ptr %t168, ptr %l101
  br label %bb35
bb35:
  %t169 = load ptr, ptr %l101, !tbaa !29
  %t171 = getelementptr %"compiler/load:Module", ptr %t169, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t173 = load i64, ptr %l16, !tbaa !24
  %t174 = load ptr, ptr %l7, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 0
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/load:Loader", ptr %t177, i32 0, i32 12
  %t180 = load i64, ptr %t179, !tbaa !24
  %t183 = icmp eq i64 %t173, %t180
  %t186 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s0, { i64, ptr } %t172, i1 %t183)
  store { i64, ptr } %t186, ptr %l109
  br label %bb36
bb36:
  %t187 = load ptr, ptr %l7, !tbaa !29
  %t188 = load i32, ptr %l15, !tbaa !23
  %t189 = load i64, ptr %l12, !tbaa !24
  %t193 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s0, ptr %t187, i32 %t188, i64 %t189)
  store { i64, ptr } %t193, ptr %l113
  br label %bb37
bb37:
  %t194 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = add i64 %t196, %t199
  %t201 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t200)
  call void @olang_textcopy(ptr %t201, ptr %t195, i64 %t196)
  %t202 = getelementptr i8, ptr %t201, i64 %t196
  call void @olang_textcopy(ptr %t202, ptr %t198, i64 %t199)
  %t203 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t201, 1
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t207 = extractvalue { i64, ptr } %t204, 1
  %t208 = mul i64 %t206, 1
  %t209 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t209, ptr %t207, i64 %t208, i1 false)
  %t210 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t209, 1
  %t212 = load %"compiler/source:Span", ptr %l4
  %t213 = load ptr, ptr %l95, !tbaa !29
  %t214 = load { i64, [1 x i64] }, ptr %l96
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s0, ptr %t213, { i64, [1 x i64] } %t214, { i64, ptr } %t211, %"compiler/source:Span" %t212)
  br label %bb38
bb38:
  %t217 = load ptr, ptr %l6, !tbaa !29
  %t218 = load i32, ptr %l14, !tbaa !23
  %t219 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t217, i32 %t218, i64 %t219)
  store i32 %t223, ptr %l120
  br label %bb39
bb39:
  %t224 = load i32, ptr %l120, !tbaa !23
  store i32 %t224, ptr %l19, !tbaa !23
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l121, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i32, ptr %l19, !tbaa !23
  %t228 = load i32, ptr %l19, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [15 x i64] }, ptr %t229, i32 0, i32 0
  store i64 20, ptr %t230
  %t232 = insertvalue { i32 } undef, i32 %t228, 0
  %t233 = getelementptr { i64, [15 x i64] }, ptr %t229, i32 0, i32 1
  store { i32 } %t232, ptr %t233
  %t234 = load { i64, [15 x i64] }, ptr %t229
  %t235 = load %"compiler/source:Span", ptr %l4
  %t240 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t226, i32 %t227, { i64, [15 x i64] } %t234, %"compiler/source:Span" %t235)
  store { i64, [4 x i64] } %t240, ptr %l127
  br label %bb40
bb40:
  %t241 = load i32, ptr %l19, !tbaa !23
  %t242 = load %"compiler/source:Span", ptr %l4
  %t243 = load ptr, ptr %l121, !tbaa !29
  %t244 = load { i64, [4 x i64] }, ptr %l127
  %t247 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t243, { i64, [4 x i64] } %t244, i32 %t241, %"compiler/source:Span" %t242)
  store i32 %t247, ptr %l130
  br label %bb41
bb41:
  %t248 = load i32, ptr %l130, !tbaa !23
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l131, !tbaa !29
  %t250 = load ptr, ptr %l0, !tbaa !29
  store ptr %t250, ptr %l132, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t252
  %t253 = getelementptr { i64, [2 x i64] }, ptr %t252, i32 0, i32 0
  store i64 1, ptr %t253
  %t255 = insertvalue { i32 } undef, i32 %t248, 0
  %t256 = getelementptr { i64, [2 x i64] }, ptr %t252, i32 0, i32 1
  store { i32 } %t255, ptr %t256
  %t257 = load { i64, [2 x i64] }, ptr %t252
  %t259 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t257)
  store %"compiler/lower:pl" %t259, ptr %l135
  br label %bb42
bb42:
  store { i64, [1 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [1 x i64] }, ptr %t260, i32 0, i32 0
  store i64 3, ptr %t261
  %t262 = load { i64, [1 x i64] }, ptr %t260
  %t263 = load ptr, ptr %l132, !tbaa !29
  %t264 = load %"compiler/lower:pl", ptr %l135
  %t266 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t263, %"compiler/lower:pl" %t264, { i64, [1 x i64] } %t262)
  store %"compiler/lower:pl" %t266, ptr %l137
  br label %bb43
bb43:
  %t267 = load i64, ptr %l12, !tbaa !24
  store i64 %t267, ptr %l138, !tbaa !24
  %t268 = load ptr, ptr %l6, !tbaa !29
  store ptr %t268, ptr %l139, !tbaa !29
  %t269 = load ptr, ptr %l6, !tbaa !29
  %t270 = load i32, ptr %l14, !tbaa !23
  %t273 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t269, i32 %t270)
  store i32 %t273, ptr %l142
  br label %bb44
bb44:
  %t274 = load ptr, ptr %l139, !tbaa !29
  %t275 = load i32, ptr %l142, !tbaa !23
  %t276 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t274, i32 %t275)
  store { i64, ptr } %t276, ptr %l143
  br label %bb45
bb45:
  %t277 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t277, ptr %l144, !tbaa !27
  %t278 = load i64, ptr %l12, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr i32, ptr %t281, i64 %t278
  %t283 = load i32, ptr %t282, !tbaa !33
  %t284 = load { i64, [1 x i64] }, ptr %l18
  %t285 = load %"compiler/source:Span", ptr %l4
  %t286 = load ptr, ptr %l131, !tbaa !29
  %t287 = load %"compiler/lower:pl", ptr %l137
  %t288 = load i64, ptr %l138, !tbaa !24
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %s0, ptr %t286, %"compiler/lower:pl" %t287, i64 %t288, i32 %t283, { i64, [1 x i64] } %t284, %"compiler/source:Span" %t285)
  br label %bb46
bb46:
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l149, !tbaa !29
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/lower:lowering", ptr %t293, i32 0, i32 0
  %t296 = load ptr, ptr %t295, !tbaa !29
  %t298 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %t296)
  store i32 %t298, ptr %l152
  br label %bb47
bb47:
  %t299 = load { i64, [1 x i64] }, ptr %l18
  store { i64, [1 x i64] } %t299, ptr %l153
  store { i64, [1 x i64] } zeroinitializer, ptr %t300
  %t301 = getelementptr { i64, [1 x i64] }, ptr %t300, i32 0, i32 0
  store i64 2, ptr %t301
  %t302 = load { i64, [1 x i64] }, ptr %t300
  store { i64, [1 x i64] } %t302, ptr %l154
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/lower:lowering", ptr %t303, i32 0, i32 0
  %t306 = load ptr, ptr %t305, !tbaa !29
  %t308 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %t306)
  store i32 %t308, ptr %l157
  br label %bb48
bb48:
  store { i64, [15 x i64] } zeroinitializer, ptr %t309
  %t310 = getelementptr { i64, [15 x i64] }, ptr %t309, i32 0, i32 0
  store i64 12, ptr %t310
  %t311 = load { i64, [1 x i64] }, ptr %l153
  %t312 = insertvalue { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } undef, { i64, [1 x i64] } %t311, 0
  %t313 = load { i64, [1 x i64] }, ptr %l154
  %t314 = insertvalue { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } %t312, { i64, [1 x i64] } %t313, 1
  %t315 = load i32, ptr %l157, !tbaa !23
  %t316 = insertvalue { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } %t314, i32 %t315, 2
  %t317 = getelementptr { i64, [15 x i64] }, ptr %t309, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } %t316, ptr %t317
  %t318 = load { i64, [15 x i64] }, ptr %t309
  %t319 = load %"compiler/source:Span", ptr %l4
  %t320 = load ptr, ptr %l149, !tbaa !29
  %t321 = load i32, ptr %l152, !tbaa !23
  %t324 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t320, i32 %t321, { i64, [15 x i64] } %t318, %"compiler/source:Span" %t319)
  store { i64, [4 x i64] } %t324, ptr %l160
  br label %bb49
bb49:
  %t325 = load { i64, [4 x i64] }, ptr %l160
  store { i64, [4 x i64] } %t325, ptr %l21
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l4
  %t328 = load i32, ptr %l17, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [21 x i64] }, ptr %t329, i32 0, i32 0
  store i64 4, ptr %t330
  %t332 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t327, 0
  %t334 = insertvalue { %"compiler/source:Span", i32 } %t332, i32 %t328, 1
  %t335 = getelementptr { i64, [21 x i64] }, ptr %t329, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t334, ptr %t335
  %t336 = load { i64, [21 x i64] }, ptr %t329
  %t338 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t336, ptr %t338
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t326, ptr %t338)
  br label %bb50
bb50:
  %t341 = load ptr, ptr %l6, !tbaa !29
  store ptr %t341, ptr %l166, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/lower:lowering", ptr %t342, i32 0, i32 0
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t347 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %t345)
  store i32 %t347, ptr %l169
  br label %bb51
bb51:
  %t348 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t349 = load ptr, ptr %l166, !tbaa !29
  %t350 = load i32, ptr %l169, !tbaa !23
  %t352 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t349, i32 %t350, i64 %t348)
  store i32 %t352, ptr %l171
  br label %bb52
bb52:
  %t353 = load i32, ptr %l171, !tbaa !23
  store i32 %t353, ptr %l22, !tbaa !23
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load i32, ptr %l22, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t356
  %t357 = getelementptr { i64, [1 x i64] }, ptr %t356, i32 0, i32 0
  store i64 2, ptr %t357
  %t358 = load { i64, [1 x i64] }, ptr %t356
  %t359 = load { i64, [4 x i64] }, ptr %l21
  %t360 = load i32, ptr %l22, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t361
  %t362 = getelementptr { i64, [15 x i64] }, ptr %t361, i32 0, i32 0
  store i64 7, ptr %t362
  %t364 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t358, 0
  %t366 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t364, { i64, [4 x i64] } %t359, 1
  %t368 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t366, i32 %t360, 2
  %t369 = getelementptr { i64, [15 x i64] }, ptr %t361, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t368, ptr %t369
  %t370 = load { i64, [15 x i64] }, ptr %t361
  %t371 = load %"compiler/source:Span", ptr %l4
  %t376 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t354, i32 %t355, { i64, [15 x i64] } %t370, %"compiler/source:Span" %t371)
  store { i64, [4 x i64] } %t376, ptr %l179
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t377 = load { i64, [4 x i64] }, ptr %l179
  store { i64, [4 x i64] } %t377, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroOf(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { { i64, [7 x i64] }, i32 }
  %l8 = alloca { i64, [7 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l53 = alloca { { i64, [7 x i64] }, i32 }
  %l58 = alloca i32
  %l62 = alloca i32
  %l65 = alloca i32
  %l68 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l107 = alloca i64
  %l109 = alloca { i64, [1 x i64] }
  %l115 = alloca ptr
  %l116 = alloca { i64, [7 x i64] }
  %l117 = alloca %"compiler/mir:Range"
  %l121 = alloca %"compiler/mir:Range"
  %l123 = alloca %"compiler/mir:Lvalue"
  %l127 = alloca %"compiler/mir:Call"
  %l128 = alloca i32
  %l136 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t106 = alloca { i64, [4 x i64] }, align 8
  %t182 = alloca { i64, [1 x i64] }, align 8
  %t188 = alloca { i64, [1 x i64] }, align 8
  %t234 = alloca { i64, [8 x i64] }, align 8
  %t251 = alloca { i64, [4 x i64] }, align 8
  %t259 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eindex(ptr %v0, ptr %t6)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = getelementptr %"compiler/lower:Lowerer", ptr %t8, i32 0, i32 13
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t10, i32 %t11)
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l30
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb3, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l29
  br label %bb2
bb2:
  %t19 = load i64, ptr %l29, !tbaa !24
  store i64 %t19, ptr %l25, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l25, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l6, !tbaa !29
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l6, !tbaa !29
  store ptr %t30, ptr %l36, !tbaa !29
  %t31 = load ptr, ptr %l6, !tbaa !29
  store ptr %t31, ptr %l37, !tbaa !29
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/lower:Lowerer", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t35, i64 %t37)
  store ptr %t40, ptr %l42
  br label %bb8
bb7:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb11
bb8:
  %t41 = load ptr, ptr %l42, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %t43, !tbaa !23
  %t45 = load ptr, ptr %l37, !tbaa !29
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t45, i32 %t44)
  store i32 %t47, ptr %l45
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l36, !tbaa !29
  %t49 = load i32, ptr %l45, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t48, i32 %t49)
  store { i64, ptr } %t50, ptr %l46
  br label %bb10
bb10:
  %t51 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t54 = icmp eq i64 %t52, 0
  store i1 %t54, ptr %l35, !tbaa !21
  br label %bb11
bb11:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = trunc i64 %t58 to i32
  %t64 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %t57, i32 %t60)
  store { { i64, [7 x i64] }, i32 } %t64, ptr %l53
  br label %bb14
bb13:
  br label %bb50
bb14:
  %t65 = load { { i64, [7 x i64] }, i32 }, ptr %l53
  store { { i64, [7 x i64] }, i32 } %t65, ptr %l7
  %t66 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l7, i32 0, i32 0
  %t67 = load { i64, [7 x i64] }, ptr %t66
  store { i64, [7 x i64] } %t67, ptr %l8
  %t69 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l7, i32 0, i32 1
  %t70 = load i32, ptr %t69, !tbaa !23
  store i32 %t70, ptr %l9, !tbaa !23
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/lower:lowering", ptr %t72, i32 0, i32 3
  %t76 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t74)
  store i32 %t76, ptr %l58
  br label %bb15
bb15:
  %t77 = load i32, ptr %l58, !tbaa !23
  store i32 %t77, ptr %l10, !tbaa !23
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l1, !tbaa !23
  %t80 = load %"compiler/source:Span", ptr %l2
  %t84 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t78, i32 %t79, %"compiler/source:Span" %t80)
  store i32 %t84, ptr %l62
  br label %bb16
bb16:
  %t85 = load i32, ptr %l62, !tbaa !23
  store i32 %t85, ptr %l11, !tbaa !23
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t87 = load i32, ptr %l9, !tbaa !23
  %t90 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t86, i32 %t87)
  store i32 %t90, ptr %l65
  br label %bb17
bb17:
  %t91 = load i32, ptr %l65, !tbaa !23
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t96 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t92, i32 %t91)
  store { i64, ptr } %t96, ptr %l68
  br label %bb18
bb18:
  %t97 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t100 = icmp sgt i64 %t98, 0
  br i1 %t100, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s2, ptr %t102, %"compiler/source:Span" %t103, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 0
  store i64 0, ptr %t107
  %t108 = load { i64, [4 x i64] }, ptr %t106
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t108, ptr %rv
  br label %ret
bb22:
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t111 = load { i64, [7 x i64] }, ptr %l8
  %t112 = load i32, ptr %l9, !tbaa !23
  %t116 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t110, { i64, [7 x i64] } %t111, i32 %t112)
  store i64 %t116, ptr %l77
  br label %bb23
bb23:
  %t117 = load i64, ptr %l77, !tbaa !24
  store i64 %t117, ptr %l13, !tbaa !24
  %t118 = load i64, ptr %l13, !tbaa !24
  store i64 %t118, ptr %l78, !tbaa !24
  %t119 = load i64, ptr %l78, !tbaa !24
  %t120 = icmp sge i64 %t119, 0
  br i1 %t120, label %bb24, label %bb25
bb24:
  %t122 = load i64, ptr %l78, !tbaa !24
  %t123 = icmp sle i64 %t122, 576460752303423487
  br i1 %t123, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_fc0d1138e57259ff_a3fb1151381844db)
  unreachable
bb26:
  %t125 = load i64, ptr %l78, !tbaa !24
  %t126 = mul i64 %t125, 16
  %t127 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  store i64 %t131, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp sgt i64 %t133, %t134
  br i1 %t137, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_fc0d1138e57259ff_a3fb1151381844db)
  unreachable
bb28:
  %t139 = load i64, ptr %l17, !tbaa !24
  %t141 = icmp sgt i64 %t139, 0
  br i1 %t141, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb33
bb30:
  %t143 = load i64, ptr %l16, !tbaa !24
  %t144 = load i64, ptr %l15, !tbaa !24
  %t147 = sub i64 %t143, %t144
  %t148 = load i64, ptr %l17, !tbaa !24
  %t151 = add i64 %t147, %t148
  %t153 = sub i64 %t151, 1
  %t154 = load i64, ptr %l17, !tbaa !24
  %t157 = sdiv i64 %t153, %t154
  store i64 %t157, ptr %l89, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb32
bb32:
  %t159 = load i64, ptr %l89, !tbaa !24
  store i64 %t159, ptr %l86, !tbaa !24
  br label %bb33
bb33:
  %t160 = load i64, ptr %l86, !tbaa !24
  store i64 %t160, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb34
bb34:
  %t161 = load i64, ptr %l19, !tbaa !24
  %t162 = load i64, ptr %l18, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb35, label %bb36
bb35:
  br label %bb42
bb36:
  br label %bb37
bb37:
  %t169 = load i64, ptr %l15, !tbaa !24
  %t170 = load i64, ptr %l19, !tbaa !24
  %t171 = load i64, ptr %l17, !tbaa !24
  %t174 = mul i64 %t170, %t171
  %t177 = add i64 %t169, %t174
  store i64 %t177, ptr %l107, !tbaa !24
  br i1 %a3, label %bb38, label %bb39
bb38:
  store { i64, [1 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [1 x i64] }, ptr %t182, i32 0, i32 0
  store i64 1, ptr %t183
  %t184 = insertvalue { i64 } undef, i64 0, 0
  %t185 = getelementptr { i64, [1 x i64] }, ptr %t182, i32 0, i32 1
  store { i64 } %t184, ptr %t185
  %t186 = load { i64, [1 x i64] }, ptr %t182
  store { i64, [1 x i64] } %t186, ptr %l109
  br label %bb40
bb39:
  store { i64, [1 x i64] } zeroinitializer, ptr %t188
  %t189 = getelementptr { i64, [1 x i64] }, ptr %t188, i32 0, i32 0
  store i64 2, ptr %t189
  %t190 = load { i64, [1 x i64] }, ptr %t188
  store { i64, [1 x i64] } %t190, ptr %l109
  br label %bb40
bb40:
  %t192 = load { i64, [1 x i64] }, ptr %l109
  %t193 = load i64, ptr %l107, !tbaa !24
  %t194 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, [1 x i64] }, ptr %t195, i64 %t193
  store { i64, [1 x i64] } %t192, ptr %t196
  br label %bb41
bb41:
  %t197 = load i64, ptr %l19, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l19, !tbaa !24
  br label %bb34
bb42:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/lower:lowering", ptr %t201, i32 0, i32 3
  store ptr %t203, ptr %l115, !tbaa !29
  %t204 = load { i64, [7 x i64] }, ptr %l8
  store { i64, [7 x i64] } %t204, ptr %l116
  %t205 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t205, ptr %l117
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/lower:lowering", ptr %t206, i32 0, i32 3
  %t209 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t212 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s1, ptr %t208, { i64, ptr } %t209)
  store %"compiler/mir:Range" %t212, ptr %l121
  br label %bb43
bb43:
  %t213 = load i32, ptr %l11, !tbaa !23
  %t215 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t213)
  store %"compiler/mir:Lvalue" %t215, ptr %l123
  br label %bb44
bb44:
  %t216 = load i32, ptr %l10, !tbaa !23
  %t217 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t218 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t219 = load { i64, [7 x i64] }, ptr %l116
  %t220 = load %"compiler/mir:Range", ptr %l117
  %t221 = load %"compiler/mir:Range", ptr %l121
  %t222 = load %"compiler/mir:Lvalue", ptr %l123
  %t226 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s1, { i64, [7 x i64] } %t219, %"compiler/mir:Range" %t220, %"compiler/mir:Range" %t221, %"compiler/mir:Lvalue" %t222, i1 true, i32 %t216, i32 %t217, i32 %t218)
  store %"compiler/mir:Call" %t226, ptr %l127
  br label %bb45
bb45:
  %t227 = load ptr, ptr %l115, !tbaa !29
  %t228 = load %"compiler/mir:Call", ptr %l127
  %t229 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t227, %"compiler/mir:Call" %t228)
  store i32 %t229, ptr %l128
  br label %bb46
bb46:
  %t230 = load i32, ptr %l128, !tbaa !23
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load %"compiler/source:Span", ptr %l2
  store { i64, [8 x i64] } zeroinitializer, ptr %t234
  %t235 = getelementptr { i64, [8 x i64] }, ptr %t234, i32 0, i32 0
  store i64 4, ptr %t235
  %t237 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t232, 0
  %t239 = insertvalue { %"compiler/source:Span", i32 } %t237, i32 %t230, 1
  %t240 = getelementptr { i64, [8 x i64] }, ptr %t234, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t239, ptr %t240
  %t241 = load { i64, [8 x i64] }, ptr %t234
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t231, { i64, [8 x i64] } %t241)
  br label %bb47
bb47:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t244, i32 %t245)
  br label %bb48
bb48:
  %t248 = load i32, ptr %l11, !tbaa !23
  %t250 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t248)
  store %"compiler/mir:Lvalue" %t250, ptr %l136
  br label %bb49
bb49:
  store { i64, [4 x i64] } zeroinitializer, ptr %t251
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t251, i32 0, i32 0
  store i64 1, ptr %t252
  %t253 = load %"compiler/mir:Lvalue", ptr %l136
  %t254 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t253, 0
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t251, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t254, ptr %t255
  %t256 = load { i64, [4 x i64] }, ptr %t251
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t256, ptr %rv
  br label %ret
bb50:
  %t258 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 0
  store i64 2, ptr %t260
  %t262 = insertvalue { i32, i64 } undef, i32 %t258, 0
  %t263 = insertvalue { i32, i64 } %t262, i64 0, 1
  %t264 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 1
  store { i32, i64 } %t263, ptr %t264
  %t265 = load { i64, [4 x i64] }, ptr %t259
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t265, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local ptr @compiler_2flower_2ecopyMade(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l27 = alloca i1
  %l40 = alloca i1
  %l54 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i1
  %l74 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l2, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 52}
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t30, i32 0, i32 3
  %t32 = load i32, ptr %t31, !range !{i32 0, i32 3}
  store i32 %t32, ptr %l4
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t36, i32 0, i32 4
  %t38 = load { i64, ptr }, ptr %t37
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  %t42 = trunc i64 20 to i32
  %t43 = icmp eq i32 %t26, %t42
  store i1 %t43, ptr %l27, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t45 = load i1, ptr %l27, !tbaa !21
  br i1 %t45, label %bb6, label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t48, i32 0, i32 0
  %t50 = load %"compiler/source:Span", ptr %t49
  store %"compiler/source:Span" %t50, ptr %l6
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr { i64, [5 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t54, i32 0, i32 1
  %t56 = load i32, ptr %t55
  store i32 %t56, ptr %l7, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t60, i32 0, i32 2
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 52}
  store i32 %t62, ptr %l8
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t66, i32 0, i32 3
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 3}
  store i32 %t68, ptr %l9
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t72, i32 0, i32 4
  %t74 = load { i64, ptr }, ptr %t73
  %t78 = extractvalue { i64, ptr } %t74, 0
  %t80 = icmp eq i64 %t78, 1
  store i1 %t80, ptr %l40, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb8
bb8:
  %t82 = load i1, ptr %l40, !tbaa !21
  br i1 %t82, label %bb9, label %bb10
bb9:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t85, i32 0, i32 0
  %t87 = load %"compiler/source:Span", ptr %t86
  store %"compiler/source:Span" %t87, ptr %l11
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t91, i32 0, i32 1
  %t93 = load i32, ptr %t92
  store i32 %t93, ptr %l12, !tbaa !23
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t97, i32 0, i32 2
  %t99 = load i32, ptr %t98, !range !{i32 0, i32 52}
  store i32 %t99, ptr %l13
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr { i64, [5 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t103, i32 0, i32 3
  %t105 = load i32, ptr %t104, !range !{i32 0, i32 3}
  store i32 %t105, ptr %l14
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t109, i32 0, i32 4
  %t111 = load { i64, ptr }, ptr %t110
  store { i64, ptr } %t111, ptr %l66, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr ptr, ptr %t116, i64 0
  %t118 = load ptr, ptr %t117, !tbaa !39
  store ptr %t118, ptr %l54, !tbaa !29
  br label %bb11
bb10:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l54, !tbaa !29
  br label %bb11
bb11:
  %t122 = load ptr, ptr %l54, !tbaa !29
  store ptr %t122, ptr %l16, !tbaa !29
  %t123 = load ptr, ptr %l16, !tbaa !29
  store ptr %t123, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t124 = load ptr, ptr %l69, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb12, label %bb13
bb12:
  %t127 = load ptr, ptr %l69, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 18}
  %t130 = icmp eq i64 %t128, 7
  store i1 %t130, ptr %l70, !tbaa !21
  br label %bb13
bb13:
  %t131 = load i1, ptr %l70, !tbaa !21
  %t132 = xor i1 %t131, true
  br i1 %t132, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb16
bb15:
  %t134 = load ptr, ptr %l16, !tbaa !29
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l17
  %t140 = load ptr, ptr %l16, !tbaa !29
  %t142 = getelementptr { i64, [5 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l18, !tbaa !23
  %t146 = load ptr, ptr %l16, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  %t155 = getelementptr %"compiler/typed:Make", ptr %t150, i32 0, i32 0
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 5}
  %t158 = trunc i64 4 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  store i1 %t161, ptr %l74, !tbaa !21
  br label %bb16
bb16:
  %t163 = load i1, ptr %l74, !tbaa !21
  br i1 %t163, label %bb17, label %bb18
bb17:
  store ptr null, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t165 = load ptr, ptr %l16, !tbaa !29
  %t167 = getelementptr { i64, [5 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t167, i32 0, i32 0
  %t169 = load %"compiler/source:Span", ptr %t168
  store %"compiler/source:Span" %t169, ptr %l20
  %t171 = load ptr, ptr %l16, !tbaa !29
  %t173 = getelementptr { i64, [5 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t173, i32 0, i32 1
  %t175 = load i32, ptr %t174
  store i32 %t175, ptr %l21, !tbaa !23
  %t177 = load ptr, ptr %l16, !tbaa !29
  %t179 = getelementptr { i64, [5 x i64] }, ptr %t177, i32 0, i32 1
  %t180 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t179, i32 0, i32 2
  %t181 = load ptr, ptr %t180
  store ptr %t181, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2flower_2elowerText(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/cond:Consts"
  %l4 = alloca %"compiler/load:Loader"
  %l5 = alloca %"compiler/names:Resolver"
  %l6 = alloca %"compiler/generic:Program"
  %l7 = alloca %"compiler/check:Checker"
  %l8 = alloca %"compiler/lower:Lowerer"
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l24 = alloca { { i64, ptr }, { i64, ptr } }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l35 = alloca { i64, [2 x i64] }
  %l36 = alloca { { i64, ptr }, { i64, ptr } }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca %"compiler/lower:Gap"
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i32
  %l49 = alloca i1
  %l57 = alloca i32
  %l59 = alloca i1
  %l62 = alloca %"compiler/cond:Consts"
  %l64 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l77 = alloca %"compiler/fetch:Fetcher"
  %l78 = alloca ptr
  %l79 = alloca i64
  %l81 = alloca %"compiler/source:Names"
  %l82 = alloca ptr
  %l83 = alloca %"compiler/diag:Diagnostics"
  %l85 = alloca %"compiler/load:Loader"
  %l90 = alloca i64
  %l92 = alloca %"compiler/names:Resolver"
  %l96 = alloca %"compiler/generic:Program"
  %l98 = alloca %"compiler/check:Checker"
  %l102 = alloca %"compiler/lower:Lowerer"
  %l103 = alloca %"std/prelude/text:StringBuilder"
  %l104 = alloca %"std/prelude/text:StringBuilder"
  %l107 = alloca ptr
  %l111 = alloca i64
  %l115 = alloca i64
  %l118 = alloca i64
  %l138 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l145 = alloca i64
  %l146 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l157 = alloca i64
  %l158 = alloca ptr
  %l161 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l164 = alloca i64
  %l170 = alloca i1
  %l171 = alloca { i64, ptr }
  %l172 = alloca i64
  %l173 = alloca { i64, ptr }
  %l176 = alloca i1
  %l177 = alloca { { i64, ptr }, { i64, ptr } }
  %l181 = alloca { { i64, ptr }, { i64, ptr } }
  %l182 = alloca i32
  %l184 = alloca i1
  %l189 = alloca { i64, ptr }
  %l190 = alloca i64
  %l191 = alloca { i64, ptr }
  %l192 = alloca { i64, ptr }
  %l193 = alloca i64
  %l194 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l223 = alloca i64
  %l225 = alloca i64
  %l230 = alloca i64
  %l236 = alloca i64
  %l238 = alloca i64
  %l243 = alloca { i64, [2 x i64] }
  %l246 = alloca { { i64, ptr }, { i64, ptr } }
  %l249 = alloca { { i64, ptr }, { i64, ptr } }
  %l250 = alloca i32
  %l252 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca { i64, [2 x i64] }
  %l256 = alloca { i64, ptr }
  %l258 = alloca { i64, ptr }
  %l259 = alloca i64
  %l260 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l269 = alloca { i64, ptr }
  %l275 = alloca ptr
  %l276 = alloca { i64, [2 x i64] }
  %l277 = alloca { i64, ptr }
  %l279 = alloca { i64, ptr }
  %l284 = alloca i64
  %l286 = alloca i64
  %l291 = alloca %"compiler/lower:Gap"
  %l299 = alloca { i64, ptr }
  %l301 = alloca { i64, ptr }
  %l302 = alloca { { i64, ptr }, { i64, ptr } }
  %l304 = alloca i32
  %l306 = alloca i1
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.builder
  %s26room = alloca [64 x i8], align 8
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.builder
  %s30room = alloca [64 x i8], align 8
  %s33 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  %t51 = alloca %"compiler/cond:Consts", align 8
  %t120 = alloca %"compiler/fetch:Fetcher", align 8
  %t144 = alloca %"compiler/diag:Diagnostics", align 8
  %t146 = alloca %"compiler/load:Loader", align 8
  %t172 = alloca %"compiler/names:Resolver", align 8
  %t175 = alloca %"compiler/generic:Program", align 8
  %t178 = alloca %"compiler/check:Checker", align 8
  %t182 = alloca %"compiler/lower:Lowerer", align 8
  %t532 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l47
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l46
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t6, ptr %l45, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l47, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  store i1 %t10, ptr %l49, !tbaa !21
  %t11 = load i32, ptr %l47, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_check_failed(ptr @olang_loc_81127ece44b68b70_f66d78f9cc0faa8c)
  unreachable
bb6:
  %t16 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 1
  %t20 = extractvalue { i64, ptr } %t17, 0
  %t21 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t19, i64 %t20)
  %t25 = getelementptr i8, ptr %t24, i64 %t20
  call void @olang_textcopy(ptr %t25, ptr %t21, i64 %t22)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = extractvalue { i64, ptr } %t27, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  %t39 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v0, { i64, ptr } %t34, { i64, ptr } %a0)
  store i32 %t39, ptr %l57
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb8, label %ok.41, !prof !99
ok.41:
  br label %bb7
bb7:
  br label %bb12
bb8:
  %t42 = load i32, ptr %l57, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  store i1 %t45, ptr %l59, !tbaa !21
  %t46 = load i32, ptr %l57, !tbaa !23
  %t47 = ashr i32 %t46, 16
  %t49 = icmp eq i32 %t47, 1
  br i1 %t49, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  call void @compiler_2fcond_3aConsts_2ector(ptr %t51, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l62, ptr %t51, i64 224, i1 false)
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l62, i64 224, i1 false)
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
  br label %bb14
bb14:
  store ptr %l3, ptr %l64, !tbaa !29
  %t53 = ptrtoint ptr %s0 to i64
  store i64 %t53, ptr %l65, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e2
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = call ptr @__olang_region_make(ptr %s0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l65, !tbaa !24
  br label %bb16
bb16:
  %t58 = load i64, ptr %l65
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = ptrtoint ptr %t59 to i64
  store i64 %t60, ptr %l67, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = load i64, ptr %l65
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = call ptr @__olang_region_make(ptr %t64)
  %t66 = ptrtoint ptr %t65 to i64
  store i64 %t66, ptr %l67, !tbaa !24
  br label %bb18
bb18:
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = extractvalue { i64, ptr } %t67, 0
  %t71 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = load i64, ptr %l67
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call ptr @__olang_scope_alloc(ptr %t75, i64 %t73)
  call void @olang_textcopy(ptr %t76, ptr %t69, i64 %t70)
  %t77 = getelementptr i8, ptr %t76, i64 %t70
  call void @olang_textcopy(ptr %t77, ptr %t71, i64 %t72)
  %t78 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t76, 1
  %t81 = load i64, ptr %l67
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = extractvalue { i64, ptr } %t79, 0
  %t84 = extractvalue { i64, ptr } %t79, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l71, !tbaa !27
  %t89 = load i64, ptr %l65
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l72, !tbaa !24
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1
  br i1 %t92, label %bb19, label %bb20
bb19:
  %t94 = load i64, ptr %l65
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call ptr @__olang_region_make(ptr %t95)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l72, !tbaa !24
  br label %bb20
bb20:
  %t98 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = extractvalue { i64, ptr } %t98, 0
  %t102 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = load i64, ptr %l72
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = call ptr @__olang_scope_alloc(ptr %t106, i64 %t104)
  call void @olang_textcopy(ptr %t107, ptr %t100, i64 %t101)
  %t108 = getelementptr i8, ptr %t107, i64 %t101
  call void @olang_textcopy(ptr %t108, ptr %t102, i64 %t103)
  %t109 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  %t112 = load i64, ptr %l72
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = extractvalue { i64, ptr } %t110, 0
  %t115 = extractvalue { i64, ptr } %t110, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %t113, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t121 = load i64, ptr %l65
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = load i64, ptr %l65
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = load i64, ptr %l65
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = load { i64, ptr }, ptr %l71, !tbaa !27
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t120, ptr %t122, ptr %t124, ptr %s0, ptr %t126, { i64, ptr } %t127, { i64, ptr } %t119, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d17, i32 0, i32 1) }, i1 false, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t120, i64 184, i1 false)
  br label %bb21
bb21:
  %t129 = load i64, ptr %l65
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = call ptr @__olang_scope_alloc_a(ptr %t130, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %l77, i64 184, i1 false)
  store ptr %t131, ptr %l78, !tbaa !29
  %t132 = ptrtoint ptr %s0 to i64
  store i64 %t132, ptr %l79, !tbaa !24
  %t133 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t133, label %bb22, label %bb23
bb22:
  %t135 = call ptr @__olang_region_make(ptr %s0)
  %t136 = ptrtoint ptr %t135 to i64
  store i64 %t136, ptr %l79, !tbaa !24
  br label %bb23
bb23:
  %t137 = load i64, ptr %l79
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %t138)
  store %"compiler/source:Names" %t139, ptr %l81
  br label %bb24
bb24:
  %t140 = load %"compiler/source:Names", ptr %l81
  %t141 = load i64, ptr %l79
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = call ptr @__olang_scope_alloc_a(ptr %t142, i64 104, i64 8)
  store %"compiler/source:Names" %t140, ptr %t143
  store ptr %t143, ptr %l82, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t144, ptr %s0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l83, ptr %t144, i64 544, i1 false)
  br label %bb25
bb25:
  %t145 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t145, ptr %l83, i64 544, i1 false)
  %t147 = load ptr, ptr %l64, !tbaa !29
  %t148 = load ptr, ptr %l78, !tbaa !29
  %t149 = load ptr, ptr %l82, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t146, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %t147, ptr %t148, ptr %t149, ptr %t145)
  call void @llvm.memmove.p0.p0.i64(ptr %l85, ptr %t146, i64 680, i1 false)
  br label %bb26
bb26:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l85, i64 680, i1 false)
  %t151 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t151, 1
  %t154 = extractvalue { i64, ptr } %t151, 0
  %t155 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t158 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t153, i64 %t154)
  %t159 = getelementptr i8, ptr %t158, i64 %t154
  call void @olang_textcopy(ptr %t159, ptr %t155, i64 %t156)
  %t160 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t158, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = extractvalue { i64, ptr } %t161, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t171 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %s0, ptr %s0, ptr %l4, { i64, ptr } %t168)
  store i64 %t171, ptr %l90
  br label %bb27
bb27:
  call void @compiler_2fnames_3aResolver_2ector(ptr %t172, ptr %s0, ptr %s0, ptr %l4)
  call void @llvm.memmove.p0.p0.i64(ptr %l92, ptr %t172, i64 1072, i1 false)
  br label %bb28
bb28:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l92, i64 1072, i1 false)
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eResolve(ptr %s0, ptr %l5)
  br label %bb29
bb29:
  call void @compiler_2fgeneric_3aProgram_2ector(ptr %t175, ptr %s0, ptr %s0, ptr %s0, ptr %l4, ptr %l5)
  call void @llvm.memmove.p0.p0.i64(ptr %l96, ptr %t175, i64 5856, i1 false)
  br label %bb30
bb30:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l96, i64 5856, i1 false)
  call void @compiler_2fcheck_3aChecker_2ector(ptr %t178, ptr %s0, ptr %s0, ptr %l6, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l98, ptr %t178, i64 5248, i1 false)
  br label %bb31
bb31:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l98, i64 5248, i1 false)
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckProgram(ptr %s0, ptr %l7)
  br label %bb32
bb32:
  %t181 = getelementptr %"compiler/check:Checker", ptr %l7, i32 0, i32 14
  call void @compiler_2flower_3aLowerer_2ector(ptr %t182, ptr %s0, ptr %s0, ptr %s0, ptr %l6, ptr %t181)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t182, i64 1456, i1 false)
  br label %bb33
bb33:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l102, i64 1456, i1 false)
  %t185 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t185, ptr %l103
  br label %bb34
bb34:
  %t186 = load %"std/prelude/text:StringBuilder", ptr %l103
  store %"std/prelude/text:StringBuilder" %t186, ptr %l9
  %t187 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t187, ptr %l104
  br label %bb35
bb35:
  %t188 = load %"std/prelude/text:StringBuilder", ptr %l104
  store %"std/prelude/text:StringBuilder" %t188, ptr %l10
  %t189 = getelementptr %"compiler/load:Loader", ptr %l4, i32 0, i32 10
  %t190 = getelementptr %"compiler/load:Loader", ptr %l4, i32 0, i32 12
  %t191 = load i64, ptr %t190, !tbaa !24
  %t194 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %s0, ptr %s0, ptr %t189, i64 %t191)
  store ptr %t194, ptr %l107
  br label %bb36
bb36:
  %t195 = load ptr, ptr %l107, !tbaa !29
  %t197 = getelementptr %"compiler/load:Module", ptr %t195, i32 0, i32 4
  %t198 = load i64, ptr %t197, !tbaa !24
  store i64 %t198, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t200 = getelementptr %"compiler/check:Checker", ptr %l7, i32 0, i32 14
  %t202 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %s0, ptr %t200)
  store i64 %t202, ptr %l111
  br label %bb37
bb37:
  %t203 = load i64, ptr %l111, !tbaa !24
  store i64 %t203, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t204 = load i64, ptr %l13, !tbaa !24
  %t205 = load i64, ptr %l12, !tbaa !24
  %t208 = icmp sgt i64 %t204, %t205
  br i1 %t208, label %bb38, label %bb39
bb38:
  %t210 = load i64, ptr %l14, !tbaa !24
  %t212 = icmp sgt i64 %t210, 0
  br i1 %t212, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb43
bb40:
  %t214 = load i64, ptr %l13, !tbaa !24
  %t215 = load i64, ptr %l12, !tbaa !24
  %t218 = sub i64 %t214, %t215
  %t219 = load i64, ptr %l14, !tbaa !24
  %t222 = add i64 %t218, %t219
  %t224 = sub i64 %t222, 1
  %t225 = load i64, ptr %l14, !tbaa !24
  %t228 = sdiv i64 %t224, %t225
  store i64 %t228, ptr %l118, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb42
bb42:
  %t230 = load i64, ptr %l118, !tbaa !24
  store i64 %t230, ptr %l115, !tbaa !24
  br label %bb43
bb43:
  %t231 = load i64, ptr %l115, !tbaa !24
  store i64 %t231, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t232 = load i64, ptr %l16, !tbaa !24
  %t233 = load i64, ptr %l15, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s8)
  br label %bb90
bb46:
  br label %bb47
bb47:
  %t240 = load i64, ptr %l12, !tbaa !24
  %t241 = load i64, ptr %l16, !tbaa !24
  %t242 = load i64, ptr %l14, !tbaa !24
  %t245 = mul i64 %t241, %t242
  %t248 = add i64 %t240, %t245
  store i64 %t248, ptr %l17, !tbaa !24
  %t250 = load i64, ptr %l17, !tbaa !24
  %t253 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eHasCode(ptr %s0, ptr %l8, i64 %t250)
  store i1 %t253, ptr %l138
  br label %bb48
bb48:
  %t254 = load i1, ptr %l138, !tbaa !21
  %t255 = xor i1 %t254, true
  br i1 %t255, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb50:
  br label %bb51
bb51:
  %t257 = getelementptr %"compiler/check:Checker", ptr %l7, i32 0, i32 14
  %t258 = load i64, ptr %l17, !tbaa !24
  %t261 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %s0, ptr %s0, ptr %t257, i64 %t258)
  store ptr %t261, ptr %l142
  br label %bb52
bb52:
  %t262 = load ptr, ptr %l142, !tbaa !29
  store ptr %t262, ptr %l18, !tbaa !29
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l143, !tbaa !27
  %t263 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t263, ptr %l144, !tbaa !27
  %t264 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  store i64 %t265, ptr %l145, !tbaa !24
  %t266 = load i64, ptr %l145, !tbaa !24
  %t267 = mul i64 %t266, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t267)
  %t269 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  store { i64, ptr } %t270, ptr %l146, !tbaa !27
  %t271 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = load i64, ptr %l145, !tbaa !24
  %t276 = mul i64 %t275, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t272, ptr %t274, i64 %t276, i1 false)
  %t277 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t277, ptr %l19, !tbaa !27
  %t278 = load ptr, ptr %l18, !tbaa !29
  %t280 = getelementptr %"compiler/typed:Body", ptr %t278, i32 0, i32 1
  %t281 = load { i64, [2 x i64] }, ptr %t280
  store { i64, [2 x i64] } %t281, ptr %l20
  %t283 = load { i64, [2 x i64] }, ptr %l20
  %t285 = extractvalue { i64, [2 x i64] } %t283, 0
  %t286 = icmp eq i64 %t285, 0
  br i1 %t286, label %bb53, label %bb54
bb53:
  %t288 = getelementptr { i64, [2 x i64] }, ptr %l20, i32 0, i32 1
  %t289 = getelementptr { i64 }, ptr %t288, i32 0, i32 0
  %t290 = load i64, ptr %t289
  store i64 %t290, ptr %l21, !tbaa !24
  br label %bb55
bb54:
  br label %bb62
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t292 = getelementptr %"compiler/generic:Program", ptr %l6, i32 0, i32 0
  %t293 = load ptr, ptr %t292, !tbaa !29
  %t295 = getelementptr %"compiler/load:Loader", ptr %t293, i32 0, i32 3
  %t296 = load ptr, ptr %t295, !tbaa !29
  store ptr %t296, ptr %l153, !tbaa !29
  store ptr %l6, ptr %l154, !tbaa !29
  %t297 = load i64, ptr %l21, !tbaa !24
  %t300 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %s0, ptr %l6, i64 %t297)
  store i64 %t300, ptr %l157
  br label %bb56
bb56:
  %t301 = load ptr, ptr %l154, !tbaa !29
  %t302 = load i64, ptr %l157, !tbaa !24
  %t303 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %s0, ptr %s10, ptr %t301, i64 %t302)
  store ptr %t303, ptr %l158
  br label %bb57
bb57:
  %t304 = load ptr, ptr %l158, !tbaa !29
  %t306 = getelementptr %"compiler/ast:Func", ptr %t304, i32 0, i32 2
  %t307 = load i32, ptr %t306, !tbaa !23
  %t308 = load ptr, ptr %l153, !tbaa !29
  %t310 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %s0, ptr %s10, ptr %t308, i32 %t307)
  store { i64, ptr } %t310, ptr %l161
  br label %bb58
bb58:
  %t311 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t314 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t313)
  call void @olang_textcopy(ptr %t314, ptr %t312, i64 %t313)
  %t315 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  store { i64, ptr } %t316, ptr %l162, !tbaa !27
  %t317 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 0
  %t319 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t319, 0
  store i64 %t320, ptr %l164, !tbaa !24
  %t322 = load i64, ptr %l164, !tbaa !24
  %t323 = icmp eq i64 %t318, %t322
  br i1 %t323, label %bb59, label %bb60
bb59:
  %t325 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = load i64, ptr %l164, !tbaa !24
  %t330 = mul i64 %t329, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t326, ptr %t328, i64 %t330, i1 false)
  br label %bb61
bb60:
  %t331 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t331, ptr %l19, !tbaa !27
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s10)
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_7f253c69ef622f01_ac20b514bf3261bd)
  unreachable
bb67:
  %t332 = load ptr, ptr %l18, !tbaa !29
  %t334 = getelementptr %"compiler/typed:Body", ptr %t332, i32 0, i32 3
  %t335 = load i64, ptr %t334, !tbaa !24
  %t336 = load i64, ptr %l11, !tbaa !24
  %t339 = icmp eq i64 %t335, %t336
  br i1 %t339, label %bb68, label %bb69
bb68:
  %t341 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t341, ptr %l171, !tbaa !27
  %t342 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  store i64 %t343, ptr %l172, !tbaa !24
  %t344 = load i64, ptr %l172, !tbaa !24
  %t345 = mul i64 %t344, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t345)
  %t347 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  store { i64, ptr } %t348, ptr %l173, !tbaa !27
  %t349 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !27
  %t353 = load i64, ptr %l172, !tbaa !24
  %t354 = mul i64 %t353, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t350, ptr %t352, i64 %t354, i1 false)
  %t355 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t360 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v1, ptr %s8, { i64, ptr } %a1, { i64, ptr } %t355)
  store i1 %t360, ptr %l176
  br label %bb70
bb69:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb71
bb70:
  %t361 = load i1, ptr %l176, !tbaa !21
  store i1 %t361, ptr %l170, !tbaa !21
  br label %bb71
bb71:
  %t362 = load i1, ptr %l170, !tbaa !21
  %t363 = load i64, ptr %l17, !tbaa !24
  %t368 = call { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eVerified(ptr %s0, ptr %s8, ptr %l8, i64 %t363, i1 %t362)
  %t369 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t368, 1
  %t370 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t368, 0
  store i32 %t370, ptr %l182
  %t371 = icmp ne i32 %t370, 0
  br i1 %t371, label %bb73, label %ok.372, !prof !99
ok.372:
  store { { i64, ptr }, { i64, ptr } } %t369, ptr %l181
  br label %bb72
bb72:
  %t373 = load { { i64, ptr }, { i64, ptr } }, ptr %l181
  store { { i64, ptr }, { i64, ptr } } %t373, ptr %l177
  br label %bb76
bb73:
  %t374 = load i32, ptr %l182, !tbaa !23
  %t375 = ashr i32 %t374, 16
  %t377 = icmp eq i32 %t375, 1
  store i1 %t377, ptr %l184, !tbaa !21
  br label %bb74
bb74:
  store %olang.scope zeroinitializer, ptr %s13
  %t378 = load i64, ptr %l17, !tbaa !24
  %t379 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t380 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t382 = call i64 @__olang_fmt_i64(ptr null, i64 %t378)
  %t383 = add i64 %t380, %t382
  %t384 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t385 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t386 = add i64 %t383, %t385
  %t387 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t386)
  call void @olang_textcopy(ptr %t387, ptr %t379, i64 %t380)
  %t388 = getelementptr i8, ptr %t387, i64 %t380
  %t389 = call i64 @__olang_fmt_i64(ptr %t388, i64 %t378)
  %t390 = getelementptr i8, ptr %t388, i64 %t382
  call void @olang_textcopy(ptr %t390, ptr %t384, i64 %t385)
  %t391 = insertvalue { i64, ptr } undef, i64 %t386, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t387, 1
  %t394 = extractvalue { i64, ptr } %t392, 0
  %t395 = extractvalue { i64, ptr } %t392, 1
  %t396 = mul i64 %t394, 1
  %t397 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t396)
  call void @llvm.memcpy.p0.p0.i64(ptr %t397, ptr %t395, i64 %t396, i1 false)
  %t398 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t397, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l9, { i64, ptr } %t399)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb76:
  %t402 = load { { i64, ptr }, { i64, ptr } }, ptr %l177
  store { { i64, ptr }, { i64, ptr } } %t402, ptr %l24
  %t403 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l24, i32 0, i32 0
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l189, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 0
  store i64 %t406, ptr %l190, !tbaa !24
  %t407 = load i64, ptr %l190, !tbaa !24
  %t408 = mul i64 %t407, 1
  %t409 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t408)
  %t410 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t409, 1
  store { i64, ptr } %t411, ptr %l191, !tbaa !27
  %t412 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = load i64, ptr %l190, !tbaa !24
  %t417 = mul i64 %t416, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t413, ptr %t415, i64 %t417, i1 false)
  %t418 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t419 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l24, i32 0, i32 1
  %t420 = load { i64, ptr }, ptr %t419, !tbaa !27
  store { i64, ptr } %t420, ptr %l192, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 0
  store i64 %t422, ptr %l193, !tbaa !24
  %t423 = load i64, ptr %l193, !tbaa !24
  %t424 = mul i64 %t423, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t424)
  %t426 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  store { i64, ptr } %t427, ptr %l194, !tbaa !27
  %t428 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !27
  %t430 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = load i64, ptr %l193, !tbaa !24
  %t433 = mul i64 %t432, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t429, ptr %t431, i64 %t433, i1 false)
  %t434 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t434, ptr %l26, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s15
  %t437 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s8, ptr %s15, ptr %s15, { i64, ptr } %t418, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store { i64, ptr } %t437, ptr %l196
  br label %bb77
bb77:
  %t438 = load { i64, ptr }, ptr %l196, !tbaa !27
  store { i64, ptr } %t438, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t439 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t439, 0
  store i64 %t441, ptr %l29, !tbaa !24
  br label %bb78
bb78:
  %t443 = load i64, ptr %l28, !tbaa !24
  %t444 = load i64, ptr %l29, !tbaa !24
  %t447 = icmp slt i64 %t443, %t444
  %t449 = xor i1 %t447, true
  br i1 %t449, label %bb79, label %bb80
bb79:
  br label %bb87
bb80:
  br label %bb81
bb81:
  %t451 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t451, ptr %l203, !tbaa !27
  %t452 = load i64, ptr %l28, !tbaa !24
  %t454 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = getelementptr { i64, ptr }, ptr %t455, i64 %t452
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !37
  store { i64, ptr } %t457, ptr %l30, !tbaa !27
  %t459 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t463 = icmp sgt i64 %t461, 0
  br i1 %t463, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s17
  %t465 = load i64, ptr %l17, !tbaa !24
  %t466 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t467 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t470 = call i64 @__olang_fmt_i64(ptr null, i64 %t465)
  %t471 = add i64 %t468, %t470
  %t472 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t473 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t474 = add i64 %t471, %t473
  %t476 = extractvalue { i64, ptr } %t466, 1
  %t477 = extractvalue { i64, ptr } %t466, 0
  %t478 = add i64 %t474, %t477
  %t479 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t480 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t481 = add i64 %t478, %t480
  %t482 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t481)
  call void @olang_textcopy(ptr %t482, ptr %t467, i64 %t468)
  %t483 = getelementptr i8, ptr %t482, i64 %t468
  %t484 = call i64 @__olang_fmt_i64(ptr %t483, i64 %t465)
  %t485 = getelementptr i8, ptr %t483, i64 %t470
  call void @olang_textcopy(ptr %t485, ptr %t472, i64 %t473)
  %t486 = getelementptr i8, ptr %t485, i64 %t473
  call void @olang_textcopy(ptr %t486, ptr %t476, i64 %t477)
  %t487 = getelementptr i8, ptr %t486, i64 %t477
  call void @olang_textcopy(ptr %t487, ptr %t479, i64 %t480)
  %t488 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %t482, 1
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t492 = extractvalue { i64, ptr } %t489, 1
  %t493 = mul i64 %t491, 1
  %t494 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t493)
  call void @llvm.memcpy.p0.p0.i64(ptr %t494, ptr %t492, i64 %t493, i1 false)
  %t495 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t494, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %l9, { i64, ptr } %t496)
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_scope_close(ptr %s17)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t499 = load i64, ptr %l28, !tbaa !24
  %t501 = add i64 %t499, 1
  store i64 %t501, ptr %l28, !tbaa !24
  br label %bb78
bb87:
  call void @__olang_scope_close(ptr %s15)
  %t503 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l10, { i64, ptr } %t503)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb89:
  %t506 = load i64, ptr %l16, !tbaa !24
  %t508 = add i64 %t506, 1
  store i64 %t508, ptr %l16, !tbaa !24
  br label %bb44
bb90:
  store %olang.scope zeroinitializer, ptr %s21
  %t511 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3aLowerer_2eInitModules(ptr %s0, ptr %s21, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t511, ptr %l221
  br label %bb91
bb91:
  %t512 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  %t513 = call ptr @__olang_scope_alloc_a(ptr %s21, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t512, ptr %t513
  store ptr %t513, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb92
bb92:
  %t515 = load i64, ptr %l32, !tbaa !24
  store i64 %t515, ptr %l223, !tbaa !24
  %t516 = load ptr, ptr %l31, !tbaa !29
  %t518 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s21, ptr %t516)
  store i64 %t518, ptr %l225
  br label %bb93
bb93:
  %t519 = load i64, ptr %l223, !tbaa !24
  %t520 = load i64, ptr %l225, !tbaa !24
  %t521 = icmp slt i64 %t519, %t520
  %t523 = xor i1 %t521, true
  br i1 %t523, label %bb94, label %bb95
bb94:
  br label %bb100
bb95:
  br label %bb96
bb96:
  %t525 = load ptr, ptr %l31, !tbaa !29
  %t526 = load i64, ptr %l32, !tbaa !24
  %t529 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s21, ptr %t525, i64 %t526)
  store i64 %t529, ptr %l230
  br label %bb97
bb97:
  %t530 = load i64, ptr %l230, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t532
  %t533 = getelementptr { i64, [2 x i64] }, ptr %t532, i32 0, i32 0
  store i64 4, ptr %t533
  %t535 = insertvalue { i64 } undef, i64 %t530, 0
  %t536 = getelementptr { i64, [2 x i64] }, ptr %t532, i32 0, i32 1
  store { i64 } %t535, ptr %t536
  %t537 = load { i64, [2 x i64] }, ptr %t532
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %s0, ptr %l8, { i64, [2 x i64] } %t537)
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t540 = load i64, ptr %l32, !tbaa !24
  %t542 = add i64 %t540, 1
  store i64 %t542, ptr %l32, !tbaa !24
  br label %bb92
bb100:
  call void @__olang_scope_close(ptr %s21)
  store i64 0, ptr %l34, !tbaa !24
  br label %bb101
bb101:
  store %olang.scope zeroinitializer, ptr %s24
  %t544 = load i64, ptr %l34, !tbaa !24
  store i64 %t544, ptr %l236, !tbaa !24
  %t545 = getelementptr %"compiler/lower:Lowerer", ptr %l8, i32 0, i32 11
  %t547 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %t545)
  store i64 %t547, ptr %l238
  br label %bb102
bb102:
  %t548 = load i64, ptr %l236, !tbaa !24
  %t549 = load i64, ptr %l238, !tbaa !24
  %t550 = icmp slt i64 %t548, %t549
  %t552 = xor i1 %t550, true
  br i1 %t552, label %bb103, label %bb104
bb103:
  call void @__olang_scope_close(ptr %s24)
  br label %bb126
bb104:
  br label %bb105
bb105:
  %t554 = getelementptr %"compiler/lower:Lowerer", ptr %l8, i32 0, i32 11
  %t555 = load i64, ptr %l34, !tbaa !24
  %t558 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %s0, ptr %t554, i64 %t555)
  store { i64, [2 x i64] } %t558, ptr %l243
  br label %bb106
bb106:
  %t559 = load { i64, [2 x i64] }, ptr %l243
  store { i64, [2 x i64] } %t559, ptr %l35
  %t560 = load i64, ptr %l34, !tbaa !24
  %t562 = add i64 %t560, 1
  store i64 %t562, ptr %l34, !tbaa !24
  %t564 = load { i64, [2 x i64] }, ptr %l35
  %t567 = call { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eVerifiedKey(ptr %s0, ptr %s24, ptr %l8, { i64, [2 x i64] } %t564, i1 false)
  %t568 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t567, 1
  %t569 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t567, 0
  store i32 %t569, ptr %l250
  %t570 = icmp ne i32 %t569, 0
  br i1 %t570, label %bb108, label %ok.571, !prof !99
ok.571:
  store { { i64, ptr }, { i64, ptr } } %t568, ptr %l249
  br label %bb107
bb107:
  %t572 = load { { i64, ptr }, { i64, ptr } }, ptr %l249
  store { { i64, ptr }, { i64, ptr } } %t572, ptr %l246
  br label %bb112
bb108:
  %t573 = load i32, ptr %l250, !tbaa !23
  %t574 = ashr i32 %t573, 16
  %t576 = icmp eq i32 %t574, 1
  store i1 %t576, ptr %l252, !tbaa !21
  br label %bb109
bb109:
  store %olang.scope zeroinitializer, ptr %s25
  store ptr %l9, ptr %l253, !tbaa !29
  %t577 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t577, ptr %l254
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s26
  store ptr %s26room, ptr %s26
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aFnKey(ptr %s26, ptr %l254, i64 0)
  br label %bb110
bb110:
  %t579 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t580 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s26, ptr %t579, i64 %t580)
  %t581 = load ptr, ptr %s26
  %t582 = getelementptr %olang.builder, ptr %s26, i32 0, i32 1
  %t583 = load i64, ptr %t582
  %t584 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t583)
  call void @olang_textcopy(ptr %t584, ptr %t581, i64 %t583)
  %t585 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t584, 1
  store { i64, ptr } %t586, ptr %l256, !tbaa !27
  %t587 = getelementptr %olang.builder, ptr %s26, i32 0, i32 3
  %t588 = load ptr, ptr %t587
  %t589 = icmp ne ptr %t588, null
  br i1 %t589, label %sbgrew.590, label %sbdone.591
sbgrew.590:
  call void @__olang_sb_done(ptr %s26)
  br label %sbdone.591
sbdone.591:
  %t592 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t593 = extractvalue { i64, ptr } %t592, 0
  %t594 = extractvalue { i64, ptr } %t592, 1
  %t595 = mul i64 %t593, 1
  %t596 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t595)
  call void @llvm.memcpy.p0.p0.i64(ptr %t596, ptr %t594, i64 %t595, i1 false)
  %t597 = insertvalue { i64, ptr } undef, i64 %t593, 0
  %t598 = insertvalue { i64, ptr } %t597, ptr %t596, 1
  %t599 = load ptr, ptr %l253, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t599, { i64, ptr } %t598)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s24)
  br label %bb125
bb112:
  %t601 = load { { i64, ptr }, { i64, ptr } }, ptr %l246
  store { { i64, ptr }, { i64, ptr } } %t601, ptr %l36
  %t602 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l36, i32 0, i32 0
  %t603 = load { i64, ptr }, ptr %t602, !tbaa !27
  store { i64, ptr } %t603, ptr %l258, !tbaa !27
  %t604 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t604, 0
  store i64 %t605, ptr %l259, !tbaa !24
  %t606 = load i64, ptr %l259, !tbaa !24
  %t607 = mul i64 %t606, 1
  %t608 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t607)
  %t609 = insertvalue { i64, ptr } undef, i64 %t606, 0
  %t610 = insertvalue { i64, ptr } %t609, ptr %t608, 1
  store { i64, ptr } %t610, ptr %l260, !tbaa !27
  %t611 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t612 = load ptr, ptr %t611, !tbaa !27
  %t613 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !27
  %t615 = load i64, ptr %l259, !tbaa !24
  %t616 = mul i64 %t615, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t612, ptr %t614, i64 %t616, i1 false)
  %t617 = load { i64, ptr }, ptr %l260, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s27
  %t620 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s24, ptr %s27, ptr %s27, { i64, ptr } %t617, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store { i64, ptr } %t620, ptr %l262
  br label %bb113
bb113:
  %t621 = load { i64, ptr }, ptr %l262, !tbaa !27
  store { i64, ptr } %t621, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t622 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t624 = extractvalue { i64, ptr } %t622, 0
  store i64 %t624, ptr %l40, !tbaa !24
  br label %bb114
bb114:
  %t626 = load i64, ptr %l39, !tbaa !24
  %t627 = load i64, ptr %l40, !tbaa !24
  %t630 = icmp slt i64 %t626, %t627
  %t632 = xor i1 %t630, true
  br i1 %t632, label %bb115, label %bb116
bb115:
  br label %bb124
bb116:
  br label %bb117
bb117:
  %t634 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t634, ptr %l269, !tbaa !27
  %t635 = load i64, ptr %l39, !tbaa !24
  %t637 = getelementptr { i64, ptr }, ptr %l269, i32 0, i32 1
  %t638 = load ptr, ptr %t637, !tbaa !27
  %t639 = getelementptr { i64, ptr }, ptr %t638, i64 %t635
  %t640 = load { i64, ptr }, ptr %t639, !tbaa !37
  store { i64, ptr } %t640, ptr %l41, !tbaa !27
  %t642 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t644 = extractvalue { i64, ptr } %t642, 0
  %t646 = icmp sgt i64 %t644, 0
  br i1 %t646, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s29
  store ptr %l9, ptr %l275, !tbaa !29
  %t648 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t648, ptr %l276
  %t649 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t649, ptr %l277, !tbaa !27
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s30
  store ptr %s30room, ptr %s30
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aFnKey(ptr %s30, ptr %l276, i64 0)
  br label %bb120
bb119:
  br label %bb122
bb120:
  %t651 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t652 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s30, ptr %t651, i64 %t652)
  %t653 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t654 = extractvalue { i64, ptr } %t653, 1
  %t655 = extractvalue { i64, ptr } %t653, 0
  call void @__olang_sb_put(ptr %s30, ptr %t654, i64 %t655)
  %t656 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t657 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s30, ptr %t656, i64 %t657)
  %t658 = load ptr, ptr %s30
  %t659 = getelementptr %olang.builder, ptr %s30, i32 0, i32 1
  %t660 = load i64, ptr %t659
  %t661 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t660)
  call void @olang_textcopy(ptr %t661, ptr %t658, i64 %t660)
  %t662 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t661, 1
  store { i64, ptr } %t663, ptr %l279, !tbaa !27
  %t664 = getelementptr %olang.builder, ptr %s30, i32 0, i32 3
  %t665 = load ptr, ptr %t664
  %t666 = icmp ne ptr %t665, null
  br i1 %t666, label %sbgrew.667, label %sbdone.668
sbgrew.667:
  call void @__olang_sb_done(ptr %s30)
  br label %sbdone.668
sbdone.668:
  %t669 = load { i64, ptr }, ptr %l279, !tbaa !27
  %t670 = extractvalue { i64, ptr } %t669, 0
  %t671 = extractvalue { i64, ptr } %t669, 1
  %t672 = mul i64 %t670, 1
  %t673 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t672)
  call void @llvm.memcpy.p0.p0.i64(ptr %t673, ptr %t671, i64 %t672, i1 false)
  %t674 = insertvalue { i64, ptr } undef, i64 %t670, 0
  %t675 = insertvalue { i64, ptr } %t674, ptr %t673, 1
  %t676 = load ptr, ptr %l275, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s29, ptr %t676, { i64, ptr } %t675)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s29)
  br label %bb122
bb122:
  br label %bb123
bb123:
  %t678 = load i64, ptr %l39, !tbaa !24
  %t680 = add i64 %t678, 1
  store i64 %t680, ptr %l39, !tbaa !24
  br label %bb114
bb124:
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s24)
  br label %bb125
bb125:
  br label %bb101
bb126:
  %t682 = getelementptr %"compiler/lower:Lowerer", ptr %l8, i32 0, i32 6
  store ptr %t682, ptr %l42, !tbaa !29
  store i64 0, ptr %l43, !tbaa !24
  br label %bb127
bb127:
  store %olang.scope zeroinitializer, ptr %s33
  %t684 = load i64, ptr %l43, !tbaa !24
  store i64 %t684, ptr %l284, !tbaa !24
  %t685 = load ptr, ptr %l42, !tbaa !29
  %t687 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eLen_3ccompiler_2flower_3aGap_3e(ptr %s0, ptr %t685)
  store i64 %t687, ptr %l286
  br label %bb128
bb128:
  %t688 = load i64, ptr %l284, !tbaa !24
  %t689 = load i64, ptr %l286, !tbaa !24
  %t690 = icmp slt i64 %t688, %t689
  %t692 = xor i1 %t690, true
  br i1 %t692, label %bb129, label %bb130
bb129:
  call void @__olang_scope_close(ptr %s33)
  br label %bb135
bb130:
  br label %bb131
bb131:
  %t694 = load ptr, ptr %l42, !tbaa !29
  %t695 = load i64, ptr %l43, !tbaa !24
  %t698 = call %"compiler/lower:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eAt_3ccompiler_2flower_3aGap_3e(ptr %s0, ptr %s0, ptr %t694, i64 %t695)
  store %"compiler/lower:Gap" %t698, ptr %l291
  br label %bb132
bb132:
  %t699 = load %"compiler/lower:Gap", ptr %l291
  store %"compiler/lower:Gap" %t699, ptr %l44
  %t700 = getelementptr %"compiler/lower:Gap", ptr %l44, i32 0, i32 2
  %t701 = load { i64, ptr }, ptr %t700, !tbaa !27
  %t702 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t703 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t705 = extractvalue { i64, ptr } %t701, 1
  %t706 = extractvalue { i64, ptr } %t701, 0
  %t707 = add i64 %t703, %t706
  %t708 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t709 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t710 = add i64 %t707, %t709
  %t711 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t710)
  call void @olang_textcopy(ptr %t711, ptr %t702, i64 %t703)
  %t712 = getelementptr i8, ptr %t711, i64 %t703
  call void @olang_textcopy(ptr %t712, ptr %t705, i64 %t706)
  %t713 = getelementptr i8, ptr %t712, i64 %t706
  call void @olang_textcopy(ptr %t713, ptr %t708, i64 %t709)
  %t714 = insertvalue { i64, ptr } undef, i64 %t710, 0
  %t715 = insertvalue { i64, ptr } %t714, ptr %t711, 1
  %t717 = extractvalue { i64, ptr } %t715, 0
  %t718 = extractvalue { i64, ptr } %t715, 1
  %t719 = mul i64 %t717, 1
  %t720 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t719)
  call void @llvm.memcpy.p0.p0.i64(ptr %t720, ptr %t718, i64 %t719, i1 false)
  %t721 = insertvalue { i64, ptr } undef, i64 %t717, 0
  %t722 = insertvalue { i64, ptr } %t721, ptr %t720, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s33, ptr %l9, { i64, ptr } %t722)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s33)
  br label %bb134
bb134:
  %t725 = load i64, ptr %l43, !tbaa !24
  %t727 = add i64 %t725, 1
  store i64 %t727, ptr %l43, !tbaa !24
  br label %bb127
bb135:
  %t730 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l9)
  store { i64, ptr } %t730, ptr %l299
  br label %bb136
bb136:
  %t732 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l10)
  store { i64, ptr } %t732, ptr %l301
  br label %bb137
bb137:
  %t733 = load { i64, ptr }, ptr %l299, !tbaa !27
  %t734 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t733, 0
  %t735 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t736 = insertvalue { { i64, ptr }, { i64, ptr } } %t734, { i64, ptr } %t735, 1
  store { { i64, ptr }, { i64, ptr } } %t736, ptr %l302
  %t737 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t739 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t737)
  store i32 %t739, ptr %l304
  %t740 = icmp ne i32 %t739, 0
  br i1 %t740, label %bb139, label %ok.741, !prof !99
ok.741:
  br label %bb138
bb138:
  br label %bb143
bb139:
  %t742 = load i32, ptr %l304, !tbaa !23
  %t743 = ashr i32 %t742, 16
  %t745 = icmp eq i32 %t743, 1
  store i1 %t745, ptr %l306, !tbaa !21
  %t746 = load i32, ptr %l304, !tbaa !23
  %t747 = ashr i32 %t746, 16
  %t749 = icmp eq i32 %t747, 1
  br i1 %t749, label %bb140, label %bb141
bb140:
  call void @__olang_errpay_pop()
  br label %bb141
bb141:
  br label %bb142
bb142:
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s0)
  %t751 = load { { i64, ptr }, { i64, ptr } }, ptr %l302
  store { { i64, ptr }, { i64, ptr } } %t751, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local ptr @compiler_2flower_2ereadLocalPlace(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l2
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34
  store i32 %t35, ptr %l3, !tbaa !23
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t39, i32 0, i32 2
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l4, !tbaa !23
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l16, !tbaa !29
  br label %bb10
bb9:
  store ptr null, ptr %l16, !tbaa !29
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l16, !tbaa !29
  store ptr %t46, ptr %l5, !tbaa !29
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_88a52b04082b7f90_f09bd19366efa7b4)
  unreachable
bb16:
  %t47 = load ptr, ptr %l5, !tbaa !29
  store ptr %t47, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

declare i64 @__olang_fmt_i64(ptr, i64)
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
define internal void @olang_lambda_1(ptr %env, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, [4 x i64] }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca %"compiler/lower:pl"
  %l12 = alloca %"compiler/lower:pl"
  %l15 = alloca %"compiler/lower:pl"
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca %"compiler/lower:pl"
  %l29 = alloca %"compiler/lower:pl"
  %l30 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t7 = alloca { i64, [1 x i64] }, align 8
  %t32 = alloca { i64, [2 x i64] }, align 8
  %t41 = alloca { i64, [1 x i64] }, align 8
  %t55 = alloca { i64, [15 x i64] }, align 8
  %t61 = alloca { i64, [21 x i64] }, align 8
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
  store %"compiler/lower:pl" %cv1, ptr %l10
  %t5 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l10)
  store %"compiler/lower:pl" %t5, ptr %l12
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
  %t13 = load ptr, ptr %l9, !tbaa !29
  %t14 = load %"compiler/lower:pl", ptr %l12
  %t16 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t13, %"compiler/lower:pl" %t14, { i64, [1 x i64] } %t12)
  store %"compiler/lower:pl" %t16, ptr %l15
  br label %bb2
bb2:
  %t19 = load %"compiler/source:Span", ptr %l5
  %t20 = load ptr, ptr %l8, !tbaa !29
  %t21 = load %"compiler/lower:pl", ptr %l15
  %t25 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %vc0, ptr %s0, ptr %t20, %"compiler/lower:pl" %t21, i32 %cv2, { i64, [1 x i64] } %cv3, %"compiler/source:Span" %t19, i1 false, i1 false)
  store { i64, [4 x i64] } %t25, ptr %l19
  br label %bb3
bb3:
  %t26 = load { i64, [4 x i64] }, ptr %l19
  store { i64, [4 x i64] } %t26, ptr %l6
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l20, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t28, ptr %l21
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l23, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 1, ptr %t33
  %t35 = insertvalue { i32 } undef, i32 %cv5, 0
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 1
  store { i32 } %t35, ptr %t36
  %t37 = load { i64, [2 x i64] }, ptr %t32
  %t39 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t37)
  store %"compiler/lower:pl" %t39, ptr %l26
  br label %bb4
bb4:
  %t40 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [1 x i64] }, ptr %t41, i32 0, i32 0
  store i64 1, ptr %t42
  %t44 = insertvalue { i32 } undef, i32 %t40, 0
  %t45 = getelementptr { i64, [1 x i64] }, ptr %t41, i32 0, i32 1
  store { i32 } %t44, ptr %t45
  %t46 = load { i64, [1 x i64] }, ptr %t41
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = load %"compiler/lower:pl", ptr %l26
  %t50 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t47, %"compiler/lower:pl" %t48, { i64, [1 x i64] } %t46)
  store %"compiler/lower:pl" %t50, ptr %l29
  br label %bb5
bb5:
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t52 = load %"compiler/lower:pl", ptr %l29
  %t53 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %vc0, ptr %s0, ptr %t51, %"compiler/lower:pl" %t52)
  store %"compiler/mir:Lvalue" %t53, ptr %l30
  br label %bb6
bb6:
  %t54 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [15 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [15 x i64] }, ptr %t55, i32 0, i32 0
  store i64 0, ptr %t56
  %t58 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t54, 0
  %t59 = getelementptr { i64, [15 x i64] }, ptr %t55, i32 0, i32 1
  store { { i64, [4 x i64] } } %t58, ptr %t59
  %t60 = load { i64, [15 x i64] }, ptr %t55
  store { i64, [21 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [21 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load %"compiler/source:Span", ptr %l21
  %t64 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t63, 0
  %t65 = load %"compiler/mir:Lvalue", ptr %l30
  %t66 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t64, %"compiler/mir:Lvalue" %t65, 1
  %t68 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t66, { i64, [15 x i64] } %t60, 2
  %t69 = getelementptr { i64, [21 x i64] }, ptr %t61, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t68, ptr %t69
  %t70 = load { i64, [21 x i64] }, ptr %t61
  %t72 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t70, ptr %t72
  %t73 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %vc0, ptr %s0, ptr %t73, ptr %t72)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
define internal void @olang_lambda_2(ptr %env, i64 %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca %"compiler/lower:pl"
  %l50 = alloca %"compiler/lower:pl"
  %l53 = alloca %"compiler/lower:pl"
  %l56 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t71 = alloca { i64, [1 x i64] }, align 8
  %t82 = alloca { i64, [1 x i64] }, align 8
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
  br label %bb18
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
  %t65 = load ptr, ptr %l2, !tbaa !29
  store ptr %t65, ptr %l46, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %l47, !tbaa !29
  store %"compiler/lower:pl" %cv1, ptr %l48
  %t69 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l48)
  store %"compiler/lower:pl" %t69, ptr %l50
  br label %bb13
bb13:
  store { i64, [1 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [1 x i64] }, ptr %t71, i32 0, i32 0
  store i64 4, ptr %t72
  %t74 = insertvalue { i64 } undef, i64 %a0, 0
  %t75 = getelementptr { i64, [1 x i64] }, ptr %t71, i32 0, i32 1
  store { i64 } %t74, ptr %t75
  %t76 = load { i64, [1 x i64] }, ptr %t71
  %t77 = load ptr, ptr %l47, !tbaa !29
  %t78 = load %"compiler/lower:pl", ptr %l50
  %t80 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t77, %"compiler/lower:pl" %t78, { i64, [1 x i64] } %t76)
  store %"compiler/lower:pl" %t80, ptr %l53
  br label %bb14
bb14:
  %t81 = load i64, ptr %l9, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t82
  %t83 = getelementptr { i64, [1 x i64] }, ptr %t82, i32 0, i32 0
  store i64 0, ptr %t83
  %t85 = insertvalue { i64 } undef, i64 %t81, 0
  %t86 = getelementptr { i64, [1 x i64] }, ptr %t82, i32 0, i32 1
  store { i64 } %t85, ptr %t86
  %t87 = load { i64, [1 x i64] }, ptr %t82
  %t88 = load ptr, ptr %l46, !tbaa !29
  %t89 = load %"compiler/lower:pl", ptr %l53
  %t91 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t88, %"compiler/lower:pl" %t89, { i64, [1 x i64] } %t87)
  store %"compiler/lower:pl" %t91, ptr %l56
  br label %bb15
bb15:
  %t92 = load i64, ptr %l9, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i32, ptr %t95, i64 %t92
  %t97 = load i32, ptr %t96, !tbaa !33
  %t100 = load ptr, ptr %l45, !tbaa !29
  %t101 = load %"compiler/lower:pl", ptr %l56
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %vc0, ptr %s2, ptr %t100, %"compiler/lower:pl" %t101, i32 %t97, { i64, [1 x i64] } %cv2, %"compiler/source:Span" %cv3)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t105 = load i64, ptr %l8, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l8, !tbaa !24
  br label %bb9
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@.d3 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a Copy helper for a type with no parts" }>, align 8
define internal void @olang_lambda_4(ptr %env, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"compiler/lower:pl"
  %l10 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %t7 = alloca { i64, [1 x i64] }, align 8
  %cp0 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/lower:pl", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load i32, ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load { i64, [1 x i64] }, ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load %"compiler/source:Span", ptr %cp4, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 5
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 6
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2, ptr %l7, !tbaa !29
  store %"compiler/lower:pl" %cv1, ptr %l8
  %t5 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l8)
  store %"compiler/lower:pl" %t5, ptr %l10
  br label %bb1
bb1:
  store { i64, [1 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [1 x i64] }, ptr %t7, i32 0, i32 0
  store i64 1, ptr %t8
  %t10 = insertvalue { i32 } undef, i32 %a0, 0
  %t11 = getelementptr { i64, [1 x i64] }, ptr %t7, i32 0, i32 1
  store { i32 } %t10, ptr %t11
  %t12 = load { i64, [1 x i64] }, ptr %t7
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load %"compiler/lower:pl", ptr %l10
  %t16 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t13, %"compiler/lower:pl" %t14, { i64, [1 x i64] } %t12)
  store %"compiler/lower:pl" %t16, ptr %l13
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l6, !tbaa !29
  %t21 = load %"compiler/lower:pl", ptr %l13
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %vc0, ptr %s0, ptr %t20, %"compiler/lower:pl" %t21, i32 %cv2, { i64, [1 x i64] } %cv3, %"compiler/source:Span" %cv4)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@.d5 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a jump out of a loop not being lowered" }>, align 8
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

@.d6 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"an unknown type (a check error or gap): a local" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d7 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"a compound assignment's old value outside an assignment" }>, align 8
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
@.d8 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"a zero value whose constructor can fail" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d11 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0 = weak hidden constant i1 false
@.d15 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/olang.lock" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/cache" }>, align 8
@.d17 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d19 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c": gapped\0A" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aFnKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t8, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  %t13 = sext i32 %t11 to i64
  %t14 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t15 = call i64 @__olang_fmt_i64(ptr %t14, i64 %t13)
  call void @__olang_sb_add(ptr %v0, i64 %t15)
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t16, i64 %t17)
  br label %bb1
bb3:
  %t18 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i32, ptr %t24
  %t27 = sext i32 %t25 to i64
  %t28 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t29)
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t30, i64 %t31)
  br label %bb1
bb4:
  %t32 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t32, i64 %t33)
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t34, i64 %t35)
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 1
  %t38 = getelementptr { i32 }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  %t41 = sext i32 %t39 to i64
  %t42 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t41)
  call void @__olang_sb_add(ptr %v0, i64 %t43)
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t44, i64 %t45)
  br label %bb1
bb5:
  %t46 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t48, i64 %t49)
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i32, i32 }, ptr %t51, i32 0, i32 0
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %v0, ptr %t52, i64 %a1)
  br label %bb9
bb6:
  %t55 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 1
  %t61 = getelementptr { i64 }, ptr %t60, i32 0, i32 0
  %t62 = load i64, ptr %t61
  %t64 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t65 = call i64 @__olang_fmt_i64(ptr %t64, i64 %t62)
  call void @__olang_sb_add(ptr %v0, i64 %t65)
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t66, i64 %t67)
  br label %bb1
bb7:
  %t68 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr { i64, [2 x i64] }, ptr %t72, i32 0, i32 1
  %t74 = getelementptr { i64, i1 }, ptr %t73, i32 0, i32 0
  %t75 = load i64, ptr %t74
  %t77 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t78 = call i64 @__olang_fmt_i64(ptr %t77, i64 %t75)
  call void @__olang_sb_add(ptr %v0, i64 %t78)
  %t79 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 1
  %t83 = getelementptr { i64, i1 }, ptr %t82, i32 0, i32 1
  %t84 = load i1, ptr %t83
  %t86 = select i1 %t84, ptr @.c42, ptr @.c43
  %t87 = select i1 %t84, i64 4, i64 5
  call void @__olang_sb_put(ptr %v0, ptr %t86, i64 %t87)
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t88, i64 %t89)
  br label %bb1
bb8:
  %t90 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t90, i64 %t91)
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t92, i64 %t93)
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 1
  %t96 = getelementptr { i32, i64 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96
  %t99 = sext i32 %t97 to i64
  %t100 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t101 = call i64 @__olang_fmt_i64(ptr %t100, i64 %t99)
  call void @__olang_sb_add(ptr %v0, i64 %t101)
  %t102 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t102, i64 %t103)
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [2 x i64] }, ptr %t104, i32 0, i32 1
  %t106 = getelementptr { i32, i64 }, ptr %t105, i32 0, i32 1
  %t107 = load i64, ptr %t106
  %t109 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t110 = call i64 @__olang_fmt_i64(ptr %t109, i64 %t107)
  call void @__olang_sb_add(ptr %v0, i64 %t110)
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t111, i64 %t112)
  br label %bb1
bb9:
  %t113 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t113, i64 %t114)
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr { i64, [2 x i64] }, ptr %t115, i32 0, i32 1
  %t117 = getelementptr { i32, i32 }, ptr %t116, i32 0, i32 1
  %t118 = load i32, ptr %t117
  %t120 = sext i32 %t118 to i64
  %t121 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t122 = call i64 @__olang_fmt_i64(ptr %t121, i64 %t120)
  call void @__olang_sb_add(ptr %v0, i64 %t122)
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t123, i64 %t124)
  br label %bb1
ret:
  ret void
}

@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c": gapped\0A" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
declare void @__olang_sb_done(ptr)
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d29 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"gap " }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d33 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"mir.FnKey.Body" }>, align 8
@.d34 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
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
@.d35 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d36 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.FnKey.Adapter" }>, align 8
@.d37 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"mir.FnKey.Copied" }>, align 8
@.d38 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"mir.FnKey.Helper" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 8}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
ret:
  ret void
}

@.d39 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"mir.FnKey.Init" }>, align 8
@.d40 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.FnKey.AnyRender" }>, align 8
@.d41 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.c42 = private unnamed_addr constant [5 x i8] c"true\00"
@.c43 = private unnamed_addr constant [6 x i8] c"false\00"
@.d44 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"mir.FnKey.Twin" }>, align 8
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d45 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.HelperKind.Render" }>, align 8
@.d46 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Equal" }>, align 8
@.d47 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Hash" }>, align 8
@.d48 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Zero" }>, align 8
@.d49 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Copy" }>, align 8
@.d50 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Parts" }>, align 8
@.d51 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Drop" }>, align 8
@.d52 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Guard" }>, align 8
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

declare ptr @__olang_scope_mine_slow(ptr) noinline
@olang_loc_b33a0661a011e178_dcd63aec50757664 = external constant [0 x i8]
@olang_loc_ad272ff31dc381ae_4a185251f7060aca = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2ederivedFact(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e3721461a855ef35_c24433bc0ae5f641 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_585470ea6701dfed_8ee4dec4923e1081 = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2enoRefKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
declare ptr @compiler_2flower_2ederefOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
@olang_loc_755da8ec4c9a9682_903a5def85eef08e = external constant [0 x i8]
@olang_loc_cd5f024afedc1d69_a0cc122b0d762c35 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ematchCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2etryCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9d7bd0ecfcbf809b_94241bedce5fc567 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edeclaredCopy(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3, ptr %a4c, ptr %a4e)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enullScope(ptr %v0, ptr %a0)
@olang_loc_3a66230741c412ef_cf9b39cad1abd5db = external constant [0 x i8]
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eprojsOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_f1bdf5287cd948f5_22d23fd045556b79 = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardIf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_59bbbec53ff2140a_aa19bd361a96e2fe = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_7eb84e3ee2221218_b4c673b45eee5a74 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldUnchanged(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietLife(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_fe6f132f471090d8_e27fa787bcbe9484 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eLen_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRef_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eexitLevel(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ebind(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_820fb920c7f3fc9d_41590fa82c6def29 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0)
@olang_loc_60304de857474a3b_ccf0225621d3461f = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1c96ed13cfc0c0dd_d1e1293130e6a149 = external constant [0 x i8]
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedChain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a246188af393fdb5_b9fac7a209b878d9 = external constant [0 x i8]
declare i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_279896acdd8c6bde_4c10668047ad718a = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emutStorage(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietNested(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_28287f1f33def765_74d32538b56dd6f1 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eindex(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2etupleItems(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2estandInAway(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@olang_loc_a41c6179c77e6584_47cab6c73a638ed0 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_d5691da7c866d175_fd62f9716bce2461 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erunArrayLocal(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Hfd0fb4fa500a8eead78ad1b6f9922652(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamIn(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2flower_2eindexOf(ptr %v0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, i32 %a1)
@olang_loc_9d64f8741da6e7be_5ae354e0f93b83ca = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare %"compiler/lower:Gap" @compiler_2flower_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ePush_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:Gap" %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@olang_loc_cce264ade2665388_2fe88b7b285cb164 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
@olang_loc_7968fd697afe6b41_fd4fb0e63a0f91b5 = external constant [0 x i8]
declare %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, %"compiler/lower:level" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyParams(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdParams(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2esettleViews(ptr %v0, ptr %a0)
@olang_loc_796d2b5c84af77ba_ecbdfcaab288560e = external constant [0 x i8]
@olang_loc_6ad9ce9fa5f3c6a2_cb74a58b871c8f06 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eassemble(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtSpawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2estableRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_27604e529e9a5bde_d86cf7c50ff5ec3a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePop_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a5b1a763b9bba10_ba6ba978893df9a4 = external constant [0 x i8]
@olang_loc_eb3797cfa5f64105_1f3db8e929f64739 = external constant [0 x i8]
@olang_loc_d2f375e5ba968b65_383d0166caeed659 = external constant [0 x i8]
@olang_loc_e527201c6aa166ab_3a4acb23654914bf = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_f20c72191c5bbaec_70ba5090fad608c8 = external constant [0 x i8]
@olang_loc_9792dafd009dd231_d222868cd9c52d2d = external constant [0 x i8]
@olang_loc_5cf7683923427be1_eeed011b70fc7f3d = external constant [0 x i8]
@olang_loc_35262608d5eaeb07_a04d120ff2489083 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eLen_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:pl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eAt_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2flower_2epromoted(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2flower_2eviewCallIn(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldViews(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldThroughTemps(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare ptr @compiler_2ftyped_2eCopiedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_f886b4a7a2309fc_ac18d7305f75b0d8 = external constant [0 x i8]
@olang_loc_f82a3f3df9ef67f1_af23eb46fab62c25 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i64 %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
@olang_loc_fc0d1138e57259ff_a3fb1151381844db = external constant [0 x i8]
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_81127ece44b68b70_f66d78f9cc0faa8c = external constant [0 x i8]
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fnames_3aResolver_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eResolve(ptr %v0, ptr %a0)
declare void @compiler_2fgeneric_3aProgram_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_3aChecker_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckProgram(ptr %v0, ptr %a0)
declare void @compiler_2flower_3aLowerer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eHasCode(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_7f253c69ef622f01_ac20b514bf3261bd = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eVerified(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eVerifiedKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eLen_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eAt_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
@olang_loc_88a52b04082b7f90_f09bd19366efa7b4 = external constant [0 x i8]

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
