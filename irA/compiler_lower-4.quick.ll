source_filename = "compiler_lower-4.quick.ll"
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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/lower:tryCtx" = type { i64, { i64, ptr }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/lower:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/lower:relPath" = type { i64, { i64, ptr } }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/lower:collectCtx" = type { i32, i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eErrValSpelling(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l25 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l44 = alloca %"std/prelude/text:StringBuilder"
  %l56 = alloca { i64, ptr }
  %l61 = alloca i32
  %l62 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca i32
  %l75 = alloca { i64, ptr }
  %l79 = alloca i32
  %l91 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l101 = alloca i64
  %l104 = alloca i64
  %l124 = alloca i1
  %l127 = alloca i64
  %l128 = alloca i64
  %l135 = alloca ptr
  %l137 = alloca ptr
  %l140 = alloca i32
  %l141 = alloca i1
  %l142 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l149 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l25
  br label %bb1
bb1:
  %t13 = load i32, ptr %l25, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t16 = icmp sge i32 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %s1, ptr %t18, i32 %t19)
  store { i64, ptr } %t22, ptr %l30
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/types:Table", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l32, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l35
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l32, !tbaa !29
  %t33 = call ptr @__olang_scope_of(ptr %t32, ptr null)
  %t34 = ptrtoint ptr %t33 to i64
  %t36 = inttoptr i64 %t34 to ptr
  %t37 = load ptr, ptr %l32, !tbaa !29
  %t38 = load i32, ptr %l35, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t36, ptr %s1, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l37
  br label %bb6
bb6:
  %t40 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = add i64 %t42, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = getelementptr i8, ptr %t47, i64 %t42
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb7:
  %t52 = load ptr, ptr %l2, !tbaa !29
  store ptr %t52, ptr %l39, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t54 = load i32, ptr %l1, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l42
  br label %bb8
bb8:
  %t58 = load ptr, ptr %l39, !tbaa !29
  %t59 = load i32, ptr %l42, !tbaa !23
  %t60 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t58, i32 %t59)
  store { i64, ptr } %t60, ptr %l43
  br label %bb9
bb9:
  %t61 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t61, ptr %l4, !tbaa !27
  %t62 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t62, ptr %l44
  br label %bb10
bb10:
  %t63 = load %"std/prelude/text:StringBuilder", ptr %l44
  store %"std/prelude/text:StringBuilder" %t63, ptr %l5
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t68 = icmp ne i64 %t66, 1
  br i1 %t68, label %bb11, label %bb12
bb11:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 123)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l6, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t71, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb67
bb17:
  br label %bb18
bb18:
  %t85 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t85, ptr %l56, !tbaa !27
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i32, ptr %t89, i64 %t86
  %t91 = load i32, ptr %t90, !tbaa !33
  store i32 %t91, ptr %l10, !tbaa !23
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t94 = load i32, ptr %l10, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l61
  br label %bb19
bb19:
  %t98 = load i32, ptr %l61, !tbaa !23
  store i32 %t98, ptr %l11, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l62, !tbaa !29
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t101 = load i32, ptr %l11, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l65
  br label %bb20
bb20:
  %t105 = load ptr, ptr %l62, !tbaa !29
  %t106 = load i32, ptr %l65, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %s5, ptr %t105, i32 %t106)
  store { i64, ptr } %t107, ptr %l66
  br label %bb21
bb21:
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = getelementptr %"compiler/types:Table", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  store ptr %t111, ptr %l68, !tbaa !29
  %t112 = load ptr, ptr %l2, !tbaa !29
  store ptr %t112, ptr %l69, !tbaa !29
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t114 = load i32, ptr %l11, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l72
  br label %bb22
bb22:
  %t118 = load ptr, ptr %l69, !tbaa !29
  %t119 = load i32, ptr %l72, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t120, ptr %l73
  br label %bb23
bb23:
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t122 = call ptr @__olang_scope_of(ptr %t121, ptr null)
  %t123 = ptrtoint ptr %t122 to i64
  %t125 = inttoptr i64 %t123 to ptr
  %t126 = load ptr, ptr %l68, !tbaa !29
  %t127 = load i32, ptr %l73, !tbaa !23
  %t128 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t125, ptr %s5, ptr %t126, i32 %t127)
  store { i64, ptr } %t128, ptr %l75
  br label %bb24
bb24:
  %t129 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = add i64 %t131, %t134
  %t136 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t130, i64 %t131)
  %t137 = getelementptr i8, ptr %t136, i64 %t131
  call void @olang_textcopy(ptr %t137, ptr %t133, i64 %t134)
  %t138 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t136, 1
  store { i64, ptr } %t139, ptr %l12, !tbaa !27
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t142 = load i32, ptr %l10, !tbaa !23
  %t145 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t141, i32 %t142)
  store i32 %t145, ptr %l79
  br label %bb25
bb25:
  %t146 = load i32, ptr %l79, !range !{i32 0, i32 33}
  %t148 = trunc i64 28 to i32
  %t149 = icmp eq i32 %t146, %t148
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb26, label %bb27
bb26:
  %t153 = load i64, ptr %l6, !tbaa !24
  %t155 = icmp sgt i64 %t153, 0
  br i1 %t155, label %bb28, label %bb29
bb27:
  br label %bb33
bb28:
  store %olang.scope zeroinitializer, ptr %s8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s8)
  br label %bb31
bb31:
  %t158 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l5, { i64, ptr } %t158)
  br label %bb32
bb32:
  %t161 = load i64, ptr %l6, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb66
bb33:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/lower:Lowerer", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  store ptr %t168, ptr %l91, !tbaa !29
  %t169 = load ptr, ptr %l2, !tbaa !29
  %t170 = load i32, ptr %l11, !tbaa !23
  %t173 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t169, i32 %t170)
  store i32 %t173, ptr %l94
  br label %bb34
bb34:
  %t174 = load ptr, ptr %l91, !tbaa !29
  %t175 = load i32, ptr %l94, !tbaa !23
  %t176 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s5, ptr %t174, i32 %t175)
  store { i64, ptr } %t176, ptr %l95
  br label %bb35
bb35:
  %t177 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t177, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  store i64 %t180, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t182 = load i64, ptr %l15, !tbaa !24
  %t183 = load i64, ptr %l14, !tbaa !24
  %t186 = icmp sgt i64 %t182, %t183
  br i1 %t186, label %bb36, label %bb37
bb36:
  %t188 = load i64, ptr %l16, !tbaa !24
  %t190 = icmp sgt i64 %t188, 0
  br i1 %t190, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb41
bb38:
  %t192 = load i64, ptr %l15, !tbaa !24
  %t193 = load i64, ptr %l14, !tbaa !24
  %t196 = sub i64 %t192, %t193
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = add i64 %t196, %t197
  %t202 = sub i64 %t200, 1
  %t203 = load i64, ptr %l16, !tbaa !24
  %t206 = sdiv i64 %t202, %t203
  store i64 %t206, ptr %l104, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb40
bb40:
  %t208 = load i64, ptr %l104, !tbaa !24
  store i64 %t208, ptr %l101, !tbaa !24
  br label %bb41
bb41:
  %t209 = load i64, ptr %l101, !tbaa !24
  store i64 %t209, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb42
bb42:
  %t210 = load i64, ptr %l18, !tbaa !24
  %t211 = load i64, ptr %l17, !tbaa !24
  %t214 = icmp slt i64 %t210, %t211
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb43, label %bb44
bb43:
  br label %bb65
bb44:
  br label %bb45
bb45:
  %t218 = load i64, ptr %l14, !tbaa !24
  %t219 = load i64, ptr %l18, !tbaa !24
  %t220 = load i64, ptr %l16, !tbaa !24
  %t223 = mul i64 %t219, %t220
  %t226 = add i64 %t218, %t223
  store i64 %t226, ptr %l19, !tbaa !24
  %t228 = load i64, ptr %l19, !tbaa !24
  %t230 = icmp slt i64 %t228, 64
  br i1 %t230, label %bb46, label %bb47
bb46:
  %t232 = load ptr, ptr %l2, !tbaa !29
  %t233 = load i32, ptr %l10, !tbaa !23
  %t236 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t232, i32 %t233)
  store i64 %t236, ptr %l127
  br label %bb48
bb47:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb49
bb48:
  %t237 = load i64, ptr %l19, !tbaa !24
  store i64 %t237, ptr %l128, !tbaa !24
  %t238 = load i64, ptr %l128, !tbaa !24
  %t239 = load i64, ptr %l128, !tbaa !24
  %t240 = shl i64 1, %t239
  %t241 = load i64, ptr %l127, !tbaa !65
  %t243 = and i64 %t241, %t240
  %t245 = icmp ne i64 %t243, 0
  store i1 %t245, ptr %l124, !tbaa !21
  br label %bb49
bb49:
  %t247 = load i1, ptr %l124, !tbaa !21
  br i1 %t247, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s11
  %t248 = load i64, ptr %l6, !tbaa !24
  %t250 = icmp sgt i64 %t248, 0
  br i1 %t250, label %bb52, label %bb53
bb51:
  br label %bb63
bb52:
  store %olang.scope zeroinitializer, ptr %s12
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s12)
  br label %bb55
bb55:
  store ptr %l5, ptr %l135, !tbaa !29
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/lower:Lowerer", ptr %t253, i32 0, i32 0
  %t256 = load ptr, ptr %t255, !tbaa !29
  store ptr %t256, ptr %l137, !tbaa !29
  %t257 = load ptr, ptr %l2, !tbaa !29
  %t258 = load i32, ptr %l11, !tbaa !23
  %t261 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t257, i32 %t258)
  store i32 %t261, ptr %l140
  br label %bb56
bb56:
  %t262 = load ptr, ptr %l137, !tbaa !29
  %t263 = load i32, ptr %l140, !tbaa !23
  %t264 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t262, i32 %t263)
  store i1 %t264, ptr %l141
  br label %bb57
bb57:
  %t265 = load i1, ptr %l141, !tbaa !21
  br i1 %t265, label %bb58, label %bb59
bb58:
  %t266 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t266, 1
  %t269 = extractvalue { i64, ptr } %t266, 0
  %t270 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t269)
  call void @olang_textcopy(ptr %t270, ptr %t268, i64 %t269)
  %t271 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t275 = extractvalue { i64, ptr } %t272, 1
  %t276 = mul i64 %t274, 1
  %t277 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t276)
  call void @llvm.memcpy.p0.p0.i64(ptr %t277, ptr %t275, i64 %t276, i1 false)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t277, 1
  store { i64, ptr } %t279, ptr %l142, !tbaa !27
  br label %bb61
bb59:
  %t281 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t281, ptr %l146, !tbaa !27
  %t282 = load ptr, ptr %l2, !tbaa !29
  %t284 = getelementptr %"compiler/types:Table", ptr %t282, i32 0, i32 0
  %t285 = load ptr, ptr %t284, !tbaa !29
  store ptr %t285, ptr %l148, !tbaa !29
  %t286 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t286, ptr %l149, !tbaa !27
  %t287 = load i64, ptr %l19, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr i32, ptr %t290, i64 %t287
  %t292 = load i32, ptr %t291, !tbaa !33
  %t293 = load ptr, ptr %l148, !tbaa !29
  %t294 = call ptr @__olang_scope_of(ptr %t293, ptr null)
  %t295 = ptrtoint ptr %t294 to i64
  %t297 = inttoptr i64 %t295 to ptr
  %t298 = load ptr, ptr %l148, !tbaa !29
  %t300 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t297, ptr %s11, ptr %t298, i32 %t292)
  store { i64, ptr } %t300, ptr %l153
  br label %bb60
bb60:
  %t301 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t306 = add i64 %t303, %t305
  %t307 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 1
  %t309 = extractvalue { i64, ptr } %t307, 0
  %t310 = add i64 %t306, %t309
  %t311 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t310)
  call void @olang_textcopy(ptr %t311, ptr %t302, i64 %t303)
  %t312 = getelementptr i8, ptr %t311, i64 %t303
  call void @olang_textcopy(ptr %t312, ptr %t304, i64 %t305)
  %t313 = getelementptr i8, ptr %t312, i64 %t305
  call void @olang_textcopy(ptr %t313, ptr %t308, i64 %t309)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t311, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = extractvalue { i64, ptr } %t315, 1
  %t319 = mul i64 %t317, 1
  %t320 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t319)
  call void @llvm.memcpy.p0.p0.i64(ptr %t320, ptr %t318, i64 %t319, i1 false)
  %t321 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  store { i64, ptr } %t322, ptr %l142, !tbaa !27
  br label %bb61
bb61:
  %t324 = load ptr, ptr %l135, !tbaa !29
  %t325 = load { i64, ptr }, ptr %l142, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t324, { i64, ptr } %t325)
  br label %bb62
bb62:
  %t326 = load i64, ptr %l6, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s11)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t330 = load i64, ptr %l18, !tbaa !24
  %t332 = add i64 %t330, 1
  store i64 %t332, ptr %l18, !tbaa !24
  br label %bb42
bb65:
  call void @__olang_scope_close(ptr %s5)
  br label %bb66
bb66:
  %t334 = load i64, ptr %l8, !tbaa !24
  %t336 = add i64 %t334, 1
  store i64 %t336, ptr %l8, !tbaa !24
  br label %bb15
bb67:
  %t338 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t338, 0
  %t342 = icmp ne i64 %t340, 1
  br i1 %t342, label %bb68, label %bb69
bb68:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l5, i8 125)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  %t346 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l5)
  store { i64, ptr } %t346, ptr %l167
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t347 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t347, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eadapterFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %lp12 = alloca ptr
  %lp13 = alloca ptr
  %l19 = alloca ptr
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l33 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l64 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l77 = alloca i32
  %l82 = alloca i32
  %l87 = alloca i32
  %l88 = alloca i32
  %l90 = alloca %"compiler/typed:Body"
  %l91 = alloca ptr
  %l92 = alloca ptr
  %l95 = alloca ptr
  %l100 = alloca %"compiler/mir:Fn"
  %l102 = alloca %"compiler/lower:lowering"
  %l106 = alloca { i64, ptr }
  %l110 = alloca %"compiler/mir:Fn"
  %l112 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t166 = alloca %"compiler/typed:Body", align 8
  %t180 = alloca { i64, [2 x i64] }, align 8
  %t187 = alloca %"compiler/mir:Fn", align 8
  %t192 = alloca %"compiler/lower:lowering", align 8
  %t220 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t11 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t4, i64 %t8)
  store ptr %t11, ptr %l19
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l19, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %t14, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:Lowerer", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l24, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lower:Lowerer", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l29
  br label %bb2
bb2:
  %t33 = load ptr, ptr %l24, !tbaa !29
  %t34 = load i32, ptr %l29, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t33, i32 %t34)
  store { i64, ptr } %t35, ptr %l30
  br label %bb3
bb3:
  %t36 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = sub i64 %t39, 1
  store i64 %t41, ptr %l33, !tbaa !24
  %t42 = load i64, ptr %l33, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb4, label %bb5
bb4:
  %t45 = load i64, ptr %l33, !tbaa !24
  %t46 = icmp sle i64 %t45, 2305843009213693951
  br i1 %t46, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_4e4c17ebfaf5d7b6_624a73934957b6f2)
  unreachable
bb6:
  %t48 = load i64, ptr %l33, !tbaa !24
  %t49 = mul i64 %t48, 4
  %t50 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = icmp sgt i64 %t58, %t59
  br i1 %t62, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_4e4c17ebfaf5d7b6_624a73934957b6f2)
  unreachable
bb8:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb10:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = add i64 %t72, %t73
  %t78 = sub i64 %t76, 1
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = sdiv i64 %t78, %t79
  store i64 %t82, ptr %l45, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb12
bb12:
  %t84 = load i64, ptr %l45, !tbaa !24
  store i64 %t84, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t85 = load i64, ptr %l42, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t94 = load i64, ptr %l5, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = mul i64 %t95, %t96
  %t102 = add i64 %t94, %t99
  store i64 %t102, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t105, ptr %l64, !tbaa !27
  %t106 = load i64, ptr %l10, !tbaa !24
  %t108 = add i64 %t106, 1
  %t110 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 %t108
  %t113 = load i32, ptr %t112, !tbaa !33
  %t116 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i32, ptr %t117, i64 %t104
  store i32 %t113, ptr %t118, !tbaa !33
  br label %bb18
bb18:
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l9, !tbaa !24
  br label %bb14
bb19:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/lower:Lowerer", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  store ptr %t128, ptr %l72, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/lower:Lowerer", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t134, { i64, ptr } %t135)
  store i32 %t138, ptr %l77
  br label %bb20
bb20:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/lower:Lowerer", ptr %t139, i32 0, i32 0
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l2, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l82
  br label %bb21
bb21:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/lower:Lowerer", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l2, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l87
  br label %bb22
bb22:
  %t159 = load ptr, ptr %l72, !tbaa !29
  %t160 = load i32, ptr %l77, !tbaa !23
  %t161 = load i32, ptr %l82, !tbaa !23
  %t162 = load i32, ptr %l87, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t159, i32 %t160, i32 %t161, i32 %t162, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t163, ptr %l88
  br label %bb23
bb23:
  %t164 = load i32, ptr %l88, !tbaa !23
  store i32 %t164, ptr %l11, !tbaa !23
  %t165 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2estandIn(ptr %t166, ptr %v1, i32 %t165)
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %t166, i64 408, i1 false)
  br label %bb24
bb24:
  %t168 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 408, i64 8)
  store ptr %t168, ptr %lp12
  %t169 = load ptr, ptr %lp12
  call void @llvm.memmove.p0.p0.i64(ptr %t169, ptr %l90, i64 408, i1 false)
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l91, !tbaa !29
  %t171 = load ptr, ptr %lp12
  store ptr %t171, ptr %l92, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/lower:Lowerer", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/generic:Program", ptr %t175, i32 0, i32 2
  store ptr %t177, ptr %l95, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t180
  %t181 = getelementptr { i64, [2 x i64] }, ptr %t180, i32 0, i32 0
  store i64 1, ptr %t181
  %t183 = insertvalue { i32 } undef, i32 %t179, 0
  %t184 = getelementptr { i64, [2 x i64] }, ptr %t180, i32 0, i32 1
  store { i32 } %t183, ptr %t184
  %t185 = load { i64, [2 x i64] }, ptr %t180
  %t186 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %t187, ptr %v0, ptr %v1, ptr %t178, { i64, [2 x i64] } %t185, i32 %t186)
  call void @llvm.memmove.p0.p0.i64(ptr %l100, ptr %t187, i64 800, i1 false)
  br label %bb25
bb25:
  %t191 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t191, ptr %l100, i64 800, i1 false)
  %t193 = load ptr, ptr %l91, !tbaa !29
  %t194 = load ptr, ptr %l92, !tbaa !29
  %t195 = load ptr, ptr %l95, !tbaa !29
  call void @compiler_2flower_3alowering_2ector(ptr %t192, ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t193, ptr %t194, ptr %t195, ptr %t191)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t192, i64 3272, i1 false)
  br label %bb26
bb26:
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3272, i64 8)
  store ptr %t197, ptr %lp13
  %t198 = load ptr, ptr %lp13
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %l102, i64 3272, i1 false)
  %t199 = load ptr, ptr %lp13
  %t200 = load i32, ptr %l1, !tbaa !23
  %t201 = load i32, ptr %l2, !tbaa !23
  %t202 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t202, ptr %l106, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr i32, ptr %t204, i64 0
  %t206 = load i32, ptr %t205, !tbaa !33
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterBody(ptr %v1, ptr %t199, i32 %t200, i32 %t201, i32 %t206)
  br label %bb27
bb27:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %lp13
  %t213 = getelementptr %"compiler/lower:lowering", ptr %t212, i32 0, i32 11
  %t214 = load i1, ptr %t213, !tbaa !21
  %t217 = getelementptr %"compiler/lower:Lowerer", ptr %t211, i32 0, i32 7
  store i1 %t214, ptr %t217, !tbaa !21
  %t218 = load ptr, ptr %lp13
  %t219 = getelementptr %"compiler/lower:lowering", ptr %t218, i32 0, i32 3
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %t219, i64 800, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aFn(ptr %t220, ptr %v1, ptr %l110)
  call void @llvm.memmove.p0.p0.i64(ptr %l112, ptr %t220, i64 800, i1 false)
  br label %bb28
bb28:
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %l112, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l110, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @compiler_2flower_2ecompiler_2flower_3aLowerer_2efailure(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l60 = alloca i32
  %l65 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l77 = alloca i64
  %l80 = alloca i64
  %l100 = alloca ptr
  %l101 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l107 = alloca i1
  %l123 = alloca i32
  %l127 = alloca i64
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 18
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i64, ptr %l22, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 0, ptr %l2, !tbaa !24
  %t9 = load [6 x { i64, ptr }], ptr @G_2ecompiler_2flower_2eFailIds
  store i64 6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb4, label %bb5
bb3:
  br label %bb41
bb4:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb9
bb6:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l32, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l32, !tbaa !24
  store i64 %t38, ptr %l29, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l29, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb11, label %bb12
bb11:
  br label %bb40
bb12:
  br label %bb13
bb13:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr [6 x { i64, ptr }], ptr @G_2ecompiler_2flower_2eFailIds, i64 0, i64 %t58
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !37
  %t63 = load i64, ptr %l7, !tbaa !24
  %t65 = getelementptr [6 x { i64, ptr }], ptr @G_2ecompiler_2flower_2eFailTypes, i64 0, i64 %t63
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !37
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = getelementptr [6 x { i64, ptr }], ptr @G_2ecompiler_2flower_2eFailWords, i64 0, i64 %t68
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !37
  store { i64, ptr } %t71, ptr %l10, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lower:Lowerer", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t79 = load ptr, ptr @__olang_prog_scope
  %t80 = load ptr, ptr @__olang_prog_scope
  %t84 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %t79, ptr %t80, ptr %t76, { i64, ptr } %t61, { i64, ptr } %t66)
  store i32 %t84, ptr %l60
  br label %bb14
bb14:
  %t85 = load i32, ptr %l60, !tbaa !23
  store i32 %t85, ptr %l11, !tbaa !23
  store i64 65536, ptr %l12, !tbaa !24
  %t86 = load i32, ptr %l11, !tbaa !23
  %t87 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t90 = icmp ne i32 %t86, %t87
  br i1 %t90, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:Lowerer", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  store ptr %t95, ptr %l65, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/lower:Lowerer", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l11, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l70
  br label %bb17
bb16:
  br label %bb36
bb17:
  %t106 = load ptr, ptr %l65, !tbaa !29
  %t107 = load i32, ptr %l70, !tbaa !23
  %t108 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s4, ptr %t106, i32 %t107)
  store { i64, ptr } %t108, ptr %l71
  br label %bb18
bb18:
  %t109 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t109, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  store i64 %t112, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t114 = load i64, ptr %l15, !tbaa !24
  %t115 = load i64, ptr %l14, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb19, label %bb20
bb19:
  %t120 = load i64, ptr %l16, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb24
bb21:
  %t124 = load i64, ptr %l15, !tbaa !24
  %t125 = load i64, ptr %l14, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l16, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l16, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l80, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb23
bb23:
  %t140 = load i64, ptr %l80, !tbaa !24
  store i64 %t140, ptr %l77, !tbaa !24
  br label %bb24
bb24:
  %t141 = load i64, ptr %l77, !tbaa !24
  store i64 %t141, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t142 = load i64, ptr %l18, !tbaa !24
  %t143 = load i64, ptr %l17, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb27:
  br label %bb28
bb28:
  %t150 = load i64, ptr %l14, !tbaa !24
  %t151 = load i64, ptr %l18, !tbaa !24
  %t152 = load i64, ptr %l16, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l19, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lower:Lowerer", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  %t166 = getelementptr %"compiler/types:Table", ptr %t165, i32 0, i32 0
  %t167 = load ptr, ptr %t166, !tbaa !29
  store ptr %t167, ptr %l100, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t168, ptr %l101, !tbaa !27
  %t169 = load i64, ptr %l19, !tbaa !24
  %t171 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i32, ptr %t172, i64 %t169
  %t174 = load i32, ptr %t173, !tbaa !33
  %t175 = load ptr, ptr %l100, !tbaa !29
  %t176 = call ptr @__olang_scope_of(ptr %t175, ptr null)
  %t177 = ptrtoint ptr %t176 to i64
  %t179 = inttoptr i64 %t177 to ptr
  %t180 = load ptr, ptr %l100, !tbaa !29
  %t182 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t179, ptr %s6, ptr %t180, i32 %t174)
  store { i64, ptr } %t182, ptr %l105
  br label %bb29
bb29:
  %t183 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t184 = load ptr, ptr @__olang_prog_scope
  %t185 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %t184, { i64, ptr } %t185, { i64, ptr } %t183)
  store i1 %t187, ptr %l107
  br label %bb30
bb30:
  %t188 = load i1, ptr %l107, !tbaa !21
  br i1 %t188, label %bb31, label %bb32
bb31:
  %t189 = load i64, ptr %l19, !tbaa !24
  %t191 = or i64 65536, %t189
  store i64 %t191, ptr %l12, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  %t193 = load i64, ptr %l18, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l18, !tbaa !24
  br label %bb25
bb35:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb36:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/lower:Lowerer", ptr %t197, i32 0, i32 18
  %t200 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t199, i32 %t200)
  br label %bb37
bb37:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/lower:Lowerer", ptr %t203, i32 0, i32 19
  %t206 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t205, i64 %t206)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t209 = load i64, ptr %l6, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l6, !tbaa !24
  br label %bb10
bb40:
  br label %bb41
bb41:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/lower:Lowerer", ptr %t213, i32 0, i32 18
  %t216 = load i64, ptr %l1, !tbaa !24
  %t219 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t215, i64 %t216)
  store i32 %t219, ptr %l123
  br label %bb42
bb42:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/lower:Lowerer", ptr %t220, i32 0, i32 19
  %t223 = load i64, ptr %l1, !tbaa !24
  %t226 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t222, i64 %t223)
  store i64 %t226, ptr %l127
  br label %bb43
bb43:
  %t227 = load i32, ptr %l123, !tbaa !23
  %t228 = insertvalue { i32, i64 } undef, i32 %t227, 0
  %t229 = load i64, ptr %l127, !tbaa !24
  %t230 = insertvalue { i32, i64 } %t228, i64 %t229, 1
  store { i32, i64 } %t230, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca ptr
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
  %l21 = alloca %"compiler/typed:Local"
  %l24 = alloca i1
  %l27 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i1
  %l49 = alloca i1
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l82 = alloca i64
  %l85 = alloca i1
  %l86 = alloca ptr
  %l90 = alloca i64
  %l94 = alloca i64
  %l95 = alloca i1
  %l102 = alloca i64
  %l106 = alloca i64
  %l109 = alloca i64
  %l130 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t3, i64 %t4)
  store %"compiler/typed:Local" %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load %"compiler/typed:Local", ptr %l21
  store %"compiler/typed:Local" %t8, ptr %l4
  %t9 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t10 = load i32, ptr %t9, !range !{i32 0, i32 7}
  %t12 = trunc i64 0 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb4
bb3:
  %t15 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t16 = load i32, ptr %t15, !range !{i32 0, i32 7}
  %t18 = trunc i64 5 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l24, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l24, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb8
bb6:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/typed:LocalUses", ptr %t22, i32 0, i32 5
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t24, i64 %t25)
  store i1 %t28, ptr %l31
  br label %bb7
bb7:
  %t29 = load i1, ptr %l31, !tbaa !21
  store i1 %t29, ptr %l27, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l27, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb12
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/typed:LocalUses", ptr %t31, i32 0, i32 4
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t33, i64 %t34)
  store i1 %t37, ptr %l36
  br label %bb11
bb11:
  %t38 = load i1, ptr %l36, !tbaa !21
  store i1 %t38, ptr %l32, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/typed:LocalUses", ptr %t41, i32 0, i32 9
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v2, ptr %v2, ptr %t43, i64 %t44)
  store ptr %t47, ptr %l41
  br label %bb16
bb16:
  %t48 = load ptr, ptr %l41, !tbaa !29
  store ptr %t48, ptr %l5, !tbaa !29
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  br i1 %t51, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb20
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t61 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t53, ptr %t54, ptr %t55, ptr %t56)
  store i1 %t61, ptr %l49
  br label %bb19
bb19:
  %t62 = load i1, ptr %l49, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l44, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l44, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l6, !tbaa !24
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/typed:LocalUses", ptr %t67, i32 0, i32 12
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t69)
  store i64 %t71, ptr %l54
  br label %bb24
bb24:
  %t72 = load i64, ptr %l54, !tbaa !24
  store i64 %t72, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb25, label %bb26
bb25:
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb30
bb27:
  %t83 = load i64, ptr %l7, !tbaa !24
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l61, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb29
bb29:
  %t99 = load i64, ptr %l61, !tbaa !24
  store i64 %t99, ptr %l58, !tbaa !24
  br label %bb30
bb30:
  %t100 = load i64, ptr %l58, !tbaa !24
  store i64 %t100, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb32, label %bb33
bb32:
  br label %bb46
bb33:
  br label %bb34
bb34:
  %t109 = load i64, ptr %l6, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t111 = load i64, ptr %l8, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l11, !tbaa !24
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = getelementptr %"compiler/typed:LocalUses", ptr %t119, i32 0, i32 12
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t121, i64 %t122)
  store i64 %t125, ptr %l82
  br label %bb35
bb35:
  %t126 = load i64, ptr %l3, !tbaa !24
  %t127 = load i64, ptr %l82, !tbaa !24
  %t129 = icmp eq i64 %t127, %t126
  br i1 %t129, label %bb36, label %bb37
bb36:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l86, !tbaa !29
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t134 = getelementptr %"compiler/typed:LocalUses", ptr %t132, i32 0, i32 13
  %t135 = load i64, ptr %l11, !tbaa !24
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t134, i64 %t135)
  store i64 %t138, ptr %l90
  br label %bb38
bb37:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb41
bb38:
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr %"compiler/typed:LocalUses", ptr %t139, i32 0, i32 14
  %t142 = load i64, ptr %l11, !tbaa !24
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t141, i64 %t142)
  store i64 %t145, ptr %l94
  br label %bb39
bb39:
  %t146 = load ptr, ptr %l86, !tbaa !29
  %t147 = load i64, ptr %l90, !tbaa !24
  %t148 = load i64, ptr %l94, !tbaa !24
  %t149 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshParam(ptr %v0, ptr %t146, i64 %t147, i64 %t148)
  store i1 %t149, ptr %l95
  br label %bb40
bb40:
  %t150 = load i1, ptr %l95, !tbaa !21
  %t151 = xor i1 %t150, true
  store i1 %t151, ptr %l85, !tbaa !21
  br label %bb41
bb41:
  %t153 = load i1, ptr %l85, !tbaa !21
  br i1 %t153, label %bb42, label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l10, !tbaa !24
  br label %bb31
bb46:
  store i64 0, ptr %l12, !tbaa !24
  %t159 = load ptr, ptr %l2, !tbaa !29
  %t161 = getelementptr %"compiler/typed:LocalUses", ptr %t159, i32 0, i32 8
  %t163 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t161)
  store i64 %t163, ptr %l102
  br label %bb47
bb47:
  %t164 = load i64, ptr %l102, !tbaa !24
  store i64 %t164, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t165 = load i64, ptr %l13, !tbaa !24
  %t166 = load i64, ptr %l12, !tbaa !24
  %t169 = icmp sgt i64 %t165, %t166
  br i1 %t169, label %bb48, label %bb49
bb48:
  %t171 = load i64, ptr %l14, !tbaa !24
  %t173 = icmp sgt i64 %t171, 0
  br i1 %t173, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb53
bb50:
  %t175 = load i64, ptr %l13, !tbaa !24
  %t176 = load i64, ptr %l12, !tbaa !24
  %t179 = sub i64 %t175, %t176
  %t180 = load i64, ptr %l14, !tbaa !24
  %t183 = add i64 %t179, %t180
  %t185 = sub i64 %t183, 1
  %t186 = load i64, ptr %l14, !tbaa !24
  %t189 = sdiv i64 %t185, %t186
  store i64 %t189, ptr %l109, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb52
bb52:
  %t191 = load i64, ptr %l109, !tbaa !24
  store i64 %t191, ptr %l106, !tbaa !24
  br label %bb53
bb53:
  %t192 = load i64, ptr %l106, !tbaa !24
  store i64 %t192, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb54
bb54:
  %t193 = load i64, ptr %l16, !tbaa !24
  %t194 = load i64, ptr %l15, !tbaa !24
  %t197 = icmp slt i64 %t193, %t194
  %t199 = xor i1 %t197, true
  br i1 %t199, label %bb55, label %bb56
bb55:
  br label %bb63
bb56:
  br label %bb57
bb57:
  %t201 = load i64, ptr %l12, !tbaa !24
  %t202 = load i64, ptr %l16, !tbaa !24
  %t203 = load i64, ptr %l14, !tbaa !24
  %t206 = mul i64 %t202, %t203
  %t209 = add i64 %t201, %t206
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t213 = getelementptr %"compiler/typed:LocalUses", ptr %t211, i32 0, i32 8
  %t217 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t213, i64 %t209)
  store i64 %t217, ptr %l130
  br label %bb58
bb58:
  %t218 = load i64, ptr %l3, !tbaa !24
  %t219 = load i64, ptr %l130, !tbaa !24
  %t221 = icmp eq i64 %t219, %t218
  br i1 %t221, label %bb59, label %bb60
bb59:
  store i1 false, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t224 = load i64, ptr %l16, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l16, !tbaa !24
  br label %bb54
bb63:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshResult(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i32
  %l25 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
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
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:Lowerer", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l11
  br label %bb3
bb3:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l11, !tbaa !24
  %t14 = icmp sge i64 %t12, %t13
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = sub i64 -1, %t18
  store i64 %t20, ptr %l2, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:Lowerer", ptr %t22, i32 0, i32 29
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, i1 } %t28, 1
  %t30 = extractvalue { i32, i1 } %t28, 0
  store i32 %t30, ptr %l21
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb9, label %ok.32, !prof !99
ok.32:
  store i1 %t29, ptr %l20
  br label %bb8
bb8:
  %t33 = load i1, ptr %l20, !tbaa !21
  store i1 %t33, ptr %l16, !tbaa !21
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:Lowerer", ptr %t34, i32 0, i32 29
  %t37 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t36, i64 %t37, i1 false)
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l25, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:Lowerer", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t44, i64 %t45)
  store ptr %t48, ptr %l29
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l25, !tbaa !29
  %t50 = load ptr, ptr %l29, !tbaa !29
  %t51 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eallFresh(ptr %v0, ptr %v0, ptr %t49, ptr %t50)
  store i1 %t51, ptr %l30
  br label %bb13
bb13:
  %t52 = load i1, ptr %l30, !tbaa !21
  store i1 %t52, ptr %l3, !tbaa !21
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:Lowerer", ptr %t53, i32 0, i32 29
  %t56 = load i64, ptr %l2, !tbaa !24
  %t57 = load i1, ptr %l3, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t55, i64 %t56, i1 %t57)
  br label %bb14
bb14:
  %t61 = load i1, ptr %l3, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
bb15:
  %t63 = load i1, ptr %l16, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %l40 = alloca { i64, ptr }
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l65 = alloca i1
  %l66 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l76 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l88 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t2 = load ptr, ptr %l12, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Promote", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshMade(ptr %v0, ptr %v3, ptr %t16, ptr %t20)
  store i1 %t23, ptr %l21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l21, !tbaa !21
  store i1 %t24, ptr %l11, !tbaa !21
  br label %bb63
bb7:
  %t25 = load ptr, ptr %l3, !tbaa !29
  store ptr %t25, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t26 = load ptr, ptr %l22, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l22, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 9
  store i1 %t32, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l23, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 52}
  store i32 %t38, ptr %l5
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t42, i32 0, i32 4
  %t44 = load { i64, ptr }, ptr %t43
  store { i64, ptr } %t44, ptr %l6, !tbaa !27
  br label %bb12
bb11:
  br label %bb20
bb12:
  %t46 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t48 = trunc i64 20 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t55 = icmp eq i64 %t53, 1
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l32, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t61, ptr %l40, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 0
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t70 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t58, ptr %t59, ptr %t60, ptr %t65)
  store i1 %t70, ptr %l42
  br label %bb18
bb17:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb19
bb18:
  %t71 = load i1, ptr %l42, !tbaa !21
  store i1 %t71, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l36, !tbaa !21
  store i1 %t72, ptr %l11, !tbaa !21
  br label %bb63
bb20:
  %t73 = load ptr, ptr %l3, !tbaa !29
  store ptr %t73, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t74 = load ptr, ptr %l43, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l43, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 18}
  %t80 = icmp eq i64 %t78, 17
  store i1 %t80, ptr %l44, !tbaa !21
  br label %bb22
bb22:
  %t81 = load i1, ptr %l44, !tbaa !21
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t84 = getelementptr { i64, [5 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t84, i32 0, i32 2
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t96 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t88, ptr %t89, ptr %t90, ptr %t91)
  store i1 %t96, ptr %l53
  br label %bb26
bb26:
  %t97 = load i1, ptr %l53, !tbaa !21
  store i1 %t97, ptr %l11, !tbaa !21
  br label %bb63
bb27:
  %t98 = load ptr, ptr %l3, !tbaa !29
  store ptr %t98, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t99 = load ptr, ptr %l54, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb28, label %bb29
bb28:
  %t102 = load ptr, ptr %l54, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 18}
  %t105 = icmp eq i64 %t103, 6
  store i1 %t105, ptr %l55, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l55, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l3, !tbaa !29
  %t109 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l8, !tbaa !29
  br label %bb32
bb31:
  br label %bb40
bb32:
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Call", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t117 = load ptr, ptr %l61, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb33, label %bb34
bb33:
  %t120 = load ptr, ptr %l61, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 5}
  %t123 = icmp eq i64 %t121, 0
  store i1 %t123, ptr %l62, !tbaa !21
  br label %bb34
bb34:
  %t124 = load i1, ptr %l62, !tbaa !21
  br i1 %t124, label %bb35, label %bb36
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l66, !tbaa !29
  %t126 = load ptr, ptr %l8, !tbaa !29
  %t128 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v3, ptr %t126)
  store i64 %t128, ptr %l68
  br label %bb37
bb36:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb39
bb37:
  %t129 = load ptr, ptr %l66, !tbaa !29
  %t130 = load i64, ptr %l68, !tbaa !24
  %t131 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshResult(ptr %v0, ptr %t129, i64 %t130)
  store i1 %t131, ptr %l69
  br label %bb38
bb38:
  %t132 = load i1, ptr %l69, !tbaa !21
  store i1 %t132, ptr %l65, !tbaa !21
  br label %bb39
bb39:
  %t133 = load i1, ptr %l65, !tbaa !21
  store i1 %t133, ptr %l11, !tbaa !21
  br label %bb63
bb40:
  %t134 = load ptr, ptr %l3, !tbaa !29
  store ptr %t134, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t135 = load ptr, ptr %l70, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb41, label %bb42
bb41:
  %t138 = load ptr, ptr %l70, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 18}
  %t141 = icmp eq i64 %t139, 2
  store i1 %t141, ptr %l71, !tbaa !21
  br label %bb42
bb42:
  %t142 = load i1, ptr %l71, !tbaa !21
  br i1 %t142, label %bb43, label %bb44
bb43:
  %t143 = load ptr, ptr %l3, !tbaa !29
  %t145 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t145, i32 0, i32 2
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l9, !tbaa !29
  br label %bb45
bb44:
  br label %bb58
bb45:
  %t149 = load ptr, ptr %l9, !tbaa !29
  store ptr %t149, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t150 = load ptr, ptr %l77, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb46, label %bb47
bb46:
  %t153 = load ptr, ptr %l77, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 8}
  %t156 = icmp eq i64 %t154, 0
  store i1 %t156, ptr %l78, !tbaa !21
  br label %bb47
bb47:
  %t157 = load i1, ptr %l78, !tbaa !21
  br i1 %t157, label %bb48, label %bb49
bb48:
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t160, i32 0, i32 2
  %t162 = load i32, ptr %t161
  store i32 %t162, ptr %l10, !tbaa !23
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t166 = load ptr, ptr %l2, !tbaa !29
  %t167 = load i32, ptr %l10, !tbaa !23
  %t169 = sext i32 %t167 to i64
  %t174 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t164, ptr %t165, ptr %t166, i64 %t169)
  store i1 %t174, ptr %l88
  br label %bb51
bb51:
  %t175 = load i1, ptr %l88, !tbaa !21
  store i1 %t175, ptr %l76, !tbaa !21
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_7e98ebbcfc7ae681_fbeaec9fd6de6485)
  unreachable
bb57:
  %t176 = load i1, ptr %l76, !tbaa !21
  store i1 %t176, ptr %l11, !tbaa !21
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_80862e2151cf42f0_7c300e18841fcdd4)
  unreachable
bb63:
  %t177 = load i1, ptr %l11, !tbaa !21
  store i1 %t177, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eindex(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l45 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 17
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:Lowerer", ptr %t6, i32 0, i32 17
  store i1 true, ptr %t8, !tbaa !21
  store i64 0, ptr %l1, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l16
  br label %bb4
bb4:
  %t15 = load i64, ptr %l16, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb10
bb7:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l23, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb12, label %bb13
bb12:
  br label %bb35
bb13:
  br label %bb14
bb14:
  %t52 = load i64, ptr %l1, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l6, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:Lowerer", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t65, i64 %t67)
  store ptr %t70, ptr %l45
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l45, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Body", ptr %t71, i32 0, i32 1
  %t74 = load { i64, [2 x i64] }, ptr %t73
  store { i64, [2 x i64] } %t74, ptr %l7
  %t76 = load { i64, [2 x i64] }, ptr %l7
  %t78 = extractvalue { i64, [2 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 1
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t82 = getelementptr { i32, i32 }, ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82
  store i32 %t83, ptr %l8, !tbaa !23
  %t85 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t86 = getelementptr { i32, i32 }, ptr %t85, i32 0, i32 1
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l9, !tbaa !23
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t89 = load i32, ptr %l9, !tbaa !23
  %t91 = icmp eq i32 %t89, 0
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:Lowerer", ptr %t93, i32 0, i32 13
  %t96 = load i32, ptr %l8, !tbaa !23
  %t97 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t95, i32 %t96, i64 %t97)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %bb33
bb23:
  %t101 = load { i64, [2 x i64] }, ptr %l7
  %t103 = extractvalue { i64, [2 x i64] } %t101, 0
  %t104 = icmp eq i64 %t103, 3
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t107 = getelementptr { i32 }, ptr %t106, i32 0, i32 0
  %t108 = load i32, ptr %t107
  store i32 %t108, ptr %l10, !tbaa !23
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/lower:Lowerer", ptr %t110, i32 0, i32 16
  %t113 = load i32, ptr %l10, !tbaa !23
  %t114 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t112, i32 %t113, i64 %t114)
  br label %bb27
bb27:
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
  call void @__olang_check_failed(ptr @olang_loc_3aca88f8a70b165c_61af268fc3dc2410)
  unreachable
bb33:
  br label %bb34
bb34:
  %t118 = load i64, ptr %l5, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l5, !tbaa !24
  br label %bb11
bb35:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eadapter(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3, i32 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca { i64, [4 x i64] }
  %l10 = alloca { i64, [4 x i64] }
  %l18 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca { i64, [2 x i64] }
  %l22 = alloca i32
  %l25 = alloca { i64, [1 x i64] }
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"compiler/mir:Range"
  %l33 = alloca %"compiler/mir:Range"
  %l36 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t13 = alloca { i64, [4 x i64] }, align 8
  %t22 = alloca { i64, [2 x i64] }, align 8
  %t33 = alloca { i64, [2 x i64] }, align 8
  %t65 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t1, ptr %a2)
  store { i64, [4 x i64] } %t6, ptr %l10
  br label %bb1
bb1:
  %t7 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t7, ptr %l6
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 10
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store { i64, [4 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t13, i32 0, i32 0
  store i64 0, ptr %t14
  %t15 = load { i64, [4 x i64] }, ptr %t13
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 0
  store i64 1, ptr %t23
  %t25 = insertvalue { i32 } undef, i32 %t21, 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  store { i32 } %t25, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t22
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %t20, { i64, [2 x i64] } %t27)
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load i32, ptr %l4, !tbaa !23
  store i32 %t31, ptr %l19, !tbaa !23
  %t32 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 0
  store i64 1, ptr %t34
  %t36 = insertvalue { i32 } undef, i32 %t32, 0
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 1
  store { i32 } %t36, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t33
  store { i64, [2 x i64] } %t38, ptr %l21
  %t39 = load i32, ptr %l4, !tbaa !23
  store i32 %t39, ptr %l22, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  %t44 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t40, i32 %t41)
  store { i64, [1 x i64] } %t44, ptr %l25
  br label %bb6
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 3
  %t48 = load { i64, [4 x i64] }, ptr %l6
  %t49 = mul i64 1, 40
  %t50 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 1, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l29, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t55, i64 0
  store { i64, [4 x i64] } %t48, ptr %t56
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t59 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t58)
  store %"compiler/mir:Range" %t59, ptr %l30
  br label %bb7
bb7:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l3, !tbaa !23
  %t64 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2ecapScopes(ptr %v0, ptr %t60, i32 %t61)
  store %"compiler/mir:Range" %t64, ptr %l33
  br label %bb8
bb8:
  store { i64, [15 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [15 x i64] }, ptr %t65, i32 0, i32 0
  store i64 10, ptr %t66
  %t67 = load { i64, [2 x i64] }, ptr %l21
  %t68 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } undef, { i64, [2 x i64] } %t67, 0
  %t69 = load i32, ptr %l22, !tbaa !23
  %t70 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t68, i32 %t69, 1
  %t71 = load { i64, [1 x i64] }, ptr %l25
  %t72 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t70, { i64, [1 x i64] } %t71, 2
  %t73 = load %"compiler/mir:Range", ptr %l30
  %t74 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t72, %"compiler/mir:Range" %t73, 3
  %t75 = load %"compiler/mir:Range", ptr %l33
  %t76 = insertvalue { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t74, %"compiler/mir:Range" %t75, 4
  %t77 = getelementptr { i64, [15 x i64] }, ptr %t65, i32 0, i32 1
  store { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" } %t76, ptr %t77
  %t78 = load { i64, [15 x i64] }, ptr %t65
  %t80 = load ptr, ptr %l18, !tbaa !29
  %t81 = load i32, ptr %l19, !tbaa !23
  %t84 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t80, i32 %t81, { i64, [15 x i64] } %t78, %"compiler/source:Span" %a5)
  store { i64, [4 x i64] } %t84, ptr %l36
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, [4 x i64] }, ptr %l36
  store { i64, [4 x i64] } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eassemble(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca { i64, [1 x i64] }
  %l23 = alloca i1
  %l24 = alloca i32
  %l27 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %l38 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i32
  %l49 = alloca i64
  %l51 = alloca i1
  %l58 = alloca ptr
  %l61 = alloca i32
  %l64 = alloca { i64, [4 x i64] }
  %l73 = alloca i64
  %l79 = alloca i64
  %l83 = alloca i64
  %l86 = alloca i64
  %l104 = alloca i64
  %l108 = alloca i32
  %l111 = alloca %"compiler/mir:Lvalue"
  %l115 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca i32
  %l121 = alloca %"compiler/mir:Range"
  %l125 = alloca { i64, [4 x i64] }
  %l130 = alloca { i64, [1 x i64] }
  %l139 = alloca { i64, [4 x i64] }
  %l142 = alloca i32
  %l145 = alloca i1
  %l148 = alloca i1
  %l149 = alloca i1
  %l152 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t103 = alloca { i64, [8 x i64] }, align 8
  %t194 = alloca { i64, [4 x i64] }, align 8
  %t219 = alloca { i64, [15 x i64] }, align 8
  %t253 = alloca { i64, [15 x i64] }, align 8
  %t305 = alloca { i64, [21 x i64] }, align 8
  %t329 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l23
  br label %bb1
bb1:
  %t16 = load i1, ptr %l23, !tbaa !21
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l27
  br label %bb4
bb3:
  %t22 = load i32, ptr %l1, !tbaa !23
  store i32 %t22, ptr %l24, !tbaa !23
  br label %bb5
bb4:
  %t24 = load i32, ptr %l27, !tbaa !23
  store i32 %t24, ptr %l24, !tbaa !23
  br label %bb5
bb5:
  %t25 = load i32, ptr %l24, !tbaa !23
  store i32 %t25, ptr %l4, !tbaa !23
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load i32, ptr %l4, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l31
  br label %bb6
bb6:
  %t31 = load i32, ptr %l31, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l34
  br label %bb7
bb7:
  %t37 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t39 = trunc i64 18 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l3, !tbaa !29
  store ptr %t42, ptr %l38, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t44 = load i32, ptr %l5, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l41
  br label %bb10
bb9:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb12
bb10:
  %t48 = load ptr, ptr %l38, !tbaa !29
  %t49 = load i32, ptr %l41, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t50, ptr %l42
  br label %bb11
bb11:
  %t51 = load i32, ptr %l42, !range !{i32 0, i32 6}
  %t53 = trunc i64 0 to i32
  %t54 = icmp eq i32 %t51, %t53
  store i1 %t54, ptr %l37, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l37, !tbaa !21
  %t59 = xor i1 %t56, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Body", ptr %t61, i32 0, i32 10
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l49
  br label %bb15
bb14:
  br label %bb27
bb15:
  %t66 = load i64, ptr %l49, !tbaa !24
  %t67 = icmp ne i64 %t66, 1
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb18
bb17:
  %t69 = load i32, ptr %l4, !tbaa !23
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = icmp ne i32 %t69, %t70
  store i1 %t73, ptr %l51, !tbaa !21
  br label %bb18
bb18:
  %t75 = load i1, ptr %l51, !tbaa !21
  br i1 %t75, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Body", ptr %t77, i32 0, i32 4
  %t80 = load %"compiler/source:Span", ptr %t79
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s2, ptr %t76, %"compiler/source:Span" %t80, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l58, !tbaa !29
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Body", ptr %t84, i32 0, i32 10
  %t88 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t86, i64 0)
  store i32 %t88, ptr %l61
  br label %bb23
bb23:
  %t89 = load i32, ptr %l61, !tbaa !23
  %t91 = load ptr, ptr %l58, !tbaa !29
  %t93 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyLocal(ptr %v0, ptr %t91, i32 %t89)
  store { i64, [4 x i64] } %t93, ptr %l64
  br label %bb24
bb24:
  %t94 = load { i64, [4 x i64] }, ptr %l64
  store { i64, [4 x i64] } %t94, ptr %l7
  %t95 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t95, i64 0)
  br label %bb25
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 4
  %t101 = load %"compiler/source:Span", ptr %t100
  %t102 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [8 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [8 x i64] }, ptr %t103, i32 0, i32 0
  store i64 5, ptr %t104
  %t106 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t101, 0
  %t108 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t106, { i64, [4 x i64] } %t102, 1
  %t109 = getelementptr { i64, [8 x i64] }, ptr %t103, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t108, ptr %t109
  %t110 = load { i64, [8 x i64] }, ptr %t103
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t97, { i64, [8 x i64] } %t110)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Body", ptr %t113, i32 0, i32 10
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l73
  br label %bb28
bb28:
  %t118 = load i64, ptr %l73, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb29, label %bb30
bb29:
  %t121 = load i64, ptr %l73, !tbaa !24
  %t122 = icmp sle i64 %t121, 230584300921369395
  br i1 %t122, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_b4f44bfc4c4e49f2_17d18a81dcc1f1de)
  unreachable
bb31:
  %t124 = load i64, ptr %l73, !tbaa !24
  %t125 = mul i64 %t124, 40
  %t126 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Body", ptr %t130, i32 0, i32 10
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t132)
  store i64 %t134, ptr %l79
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_b4f44bfc4c4e49f2_17d18a81dcc1f1de)
  unreachable
bb33:
  %t135 = load i64, ptr %l79, !tbaa !24
  store i64 %t135, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l9, !tbaa !24
  %t140 = icmp sgt i64 %t136, %t137
  br i1 %t140, label %bb34, label %bb35
bb34:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t144 = icmp sgt i64 %t142, 0
  br i1 %t144, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb39
bb36:
  %t146 = load i64, ptr %l10, !tbaa !24
  %t147 = load i64, ptr %l9, !tbaa !24
  %t150 = sub i64 %t146, %t147
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = add i64 %t150, %t151
  %t156 = sub i64 %t154, 1
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = sdiv i64 %t156, %t157
  store i64 %t160, ptr %l86, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb38
bb38:
  %t162 = load i64, ptr %l86, !tbaa !24
  store i64 %t162, ptr %l83, !tbaa !24
  br label %bb39
bb39:
  %t163 = load i64, ptr %l83, !tbaa !24
  store i64 %t163, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb40
bb40:
  %t164 = load i64, ptr %l13, !tbaa !24
  %t165 = load i64, ptr %l12, !tbaa !24
  %t168 = icmp slt i64 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb41, label %bb42
bb41:
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t172 = load i64, ptr %l9, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l11, !tbaa !24
  %t177 = mul i64 %t173, %t174
  %t180 = add i64 %t172, %t177
  store i64 %t180, ptr %l14, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  store i64 %t182, ptr %l104, !tbaa !24
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Body", ptr %t183, i32 0, i32 10
  %t186 = load i64, ptr %l14, !tbaa !24
  %t189 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t185, i64 %t186)
  store i32 %t189, ptr %l108
  br label %bb44
bb44:
  %t190 = load i32, ptr %l108, !tbaa !23
  %t193 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t190)
  store %"compiler/mir:Lvalue" %t193, ptr %l111
  br label %bb45
bb45:
  store { i64, [4 x i64] } zeroinitializer, ptr %t194
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t194, i32 0, i32 0
  store i64 1, ptr %t195
  %t196 = load %"compiler/mir:Lvalue", ptr %l111
  %t197 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t196, 0
  %t198 = getelementptr { i64, [4 x i64] }, ptr %t194, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t197, ptr %t198
  %t199 = load { i64, [4 x i64] }, ptr %t194
  %t201 = load i64, ptr %l104, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr { i64, [4 x i64] }, ptr %t203, i64 %t201
  store { i64, [4 x i64] } %t199, ptr %t204
  br label %bb46
bb46:
  %t205 = load i64, ptr %l13, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l13, !tbaa !24
  br label %bb40
bb47:
  %t209 = load ptr, ptr %l0, !tbaa !29
  store ptr %t209, ptr %l115, !tbaa !29
  %t210 = load i32, ptr %l4, !tbaa !23
  store i32 %t210, ptr %l116, !tbaa !23
  %t211 = load i32, ptr %l4, !tbaa !23
  store i32 %t211, ptr %l117, !tbaa !23
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/lower:lowering", ptr %t212, i32 0, i32 3
  %t215 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t218 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t214, { i64, ptr } %t215)
  store %"compiler/mir:Range" %t218, ptr %l121
  br label %bb48
bb48:
  store { i64, [15 x i64] } zeroinitializer, ptr %t219
  %t220 = getelementptr { i64, [15 x i64] }, ptr %t219, i32 0, i32 0
  store i64 6, ptr %t220
  %t221 = load i32, ptr %l117, !tbaa !23
  %t222 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t221, 0
  %t223 = insertvalue { i32, i64, %"compiler/mir:Range" } %t222, i64 0, 1
  %t224 = load %"compiler/mir:Range", ptr %l121
  %t225 = insertvalue { i32, i64, %"compiler/mir:Range" } %t223, %"compiler/mir:Range" %t224, 2
  %t226 = getelementptr { i64, [15 x i64] }, ptr %t219, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t225, ptr %t226
  %t227 = load { i64, [15 x i64] }, ptr %t219
  %t228 = load ptr, ptr %l2, !tbaa !29
  %t230 = getelementptr %"compiler/typed:Body", ptr %t228, i32 0, i32 4
  %t231 = load %"compiler/source:Span", ptr %t230
  %t232 = load ptr, ptr %l115, !tbaa !29
  %t233 = load i32, ptr %l116, !tbaa !23
  %t236 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t232, i32 %t233, { i64, [15 x i64] } %t227, %"compiler/source:Span" %t231)
  store { i64, [4 x i64] } %t236, ptr %l125
  br label %bb49
bb49:
  %t237 = load { i64, [4 x i64] }, ptr %l125
  store { i64, [4 x i64] } %t237, ptr %l15
  %t238 = load i32, ptr %l4, !tbaa !23
  %t239 = load i32, ptr %l1, !tbaa !23
  %t242 = icmp ne i32 %t238, %t239
  br i1 %t242, label %bb50, label %bb51
bb50:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einstance(ptr %v0, ptr %t244)
  store { i64, [1 x i64] } %t246, ptr %l130
  br label %bb52
bb51:
  br label %bb67
bb52:
  %t247 = load { i64, [1 x i64] }, ptr %l130
  store { i64, [1 x i64] } %t247, ptr %l16
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load i32, ptr %l1, !tbaa !23
  %t250 = load { i64, [1 x i64] }, ptr %l16
  %t251 = load { i64, [4 x i64] }, ptr %l15
  %t252 = load i32, ptr %l1, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [15 x i64] }, ptr %t253, i32 0, i32 0
  store i64 7, ptr %t254
  %t256 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t250, 0
  %t258 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t256, { i64, [4 x i64] } %t251, 1
  %t260 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t258, i32 %t252, 2
  %t261 = getelementptr { i64, [15 x i64] }, ptr %t253, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t260, ptr %t261
  %t262 = load { i64, [15 x i64] }, ptr %t253
  %t263 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr %"compiler/typed:Body", ptr %t263, i32 0, i32 4
  %t266 = load %"compiler/source:Span", ptr %t265
  %t271 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t248, i32 %t249, { i64, [15 x i64] } %t262, %"compiler/source:Span" %t266)
  store { i64, [4 x i64] } %t271, ptr %l139
  br label %bb53
bb53:
  %t272 = load { i64, [4 x i64] }, ptr %l139
  store { i64, [4 x i64] } %t272, ptr %l15
  %t273 = load ptr, ptr %l3, !tbaa !29
  %t274 = load i32, ptr %l5, !tbaa !23
  %t277 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t273, i32 %t274)
  store i32 %t277, ptr %l142
  br label %bb54
bb54:
  %t278 = load i32, ptr %l142, !range !{i32 0, i32 33}
  %t280 = trunc i64 18 to i32
  %t281 = icmp eq i32 %t278, %t280
  br i1 %t281, label %bb55, label %bb56
bb55:
  %t283 = load ptr, ptr %l3, !tbaa !29
  %t284 = load i32, ptr %l5, !tbaa !23
  %t287 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t283, i32 %t284)
  store i1 %t287, ptr %l148
  br label %bb57
bb56:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb58
bb57:
  %t288 = load i1, ptr %l148, !tbaa !21
  store i1 %t288, ptr %l145, !tbaa !21
  br label %bb58
bb58:
  %t289 = load i1, ptr %l145, !tbaa !21
  br i1 %t289, label %bb59, label %bb60
bb59:
  %t290 = load ptr, ptr %l3, !tbaa !29
  %t291 = load i32, ptr %l5, !tbaa !23
  %t294 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t290, i32 %t291)
  store i1 %t294, ptr %l152
  br label %bb61
bb60:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb62
bb61:
  %t295 = load i1, ptr %l152, !tbaa !21
  store i1 %t295, ptr %l149, !tbaa !21
  br label %bb62
bb62:
  %t296 = load i1, ptr %l149, !tbaa !21
  br i1 %t296, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s7
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load ptr, ptr %l2, !tbaa !29
  %t300 = getelementptr %"compiler/typed:Body", ptr %t298, i32 0, i32 4
  %t301 = load %"compiler/source:Span", ptr %t300
  %t302 = load { i64, [1 x i64] }, ptr %l16
  %t303 = load i32, ptr %l4, !tbaa !23
  %t304 = load { i64, [4 x i64] }, ptr %l15
  store { i64, [21 x i64] } zeroinitializer, ptr %t305
  %t306 = getelementptr { i64, [21 x i64] }, ptr %t305, i32 0, i32 0
  store i64 5, ptr %t306
  %t308 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t301, 0
  %t310 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t308, { i64, [1 x i64] } %t302, 1
  %t312 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t310, i32 %t303, 2
  %t314 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t312, { i64, [4 x i64] } %t304, 3
  %t315 = getelementptr { i64, [21 x i64] }, ptr %t305, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t314, ptr %t315
  %t316 = load { i64, [21 x i64] }, ptr %t305
  %t318 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t316, ptr %t318
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t297, ptr %t318)
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s7)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t321 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t321, i64 0)
  br label %bb68
bb68:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load ptr, ptr %l2, !tbaa !29
  %t326 = getelementptr %"compiler/typed:Body", ptr %t324, i32 0, i32 4
  %t327 = load %"compiler/source:Span", ptr %t326
  %t328 = load { i64, [4 x i64] }, ptr %l15
  store { i64, [8 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [8 x i64] }, ptr %t329, i32 0, i32 0
  store i64 5, ptr %t330
  %t332 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t327, 0
  %t334 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t332, { i64, [4 x i64] } %t328, 1
  %t335 = getelementptr { i64, [8 x i64] }, ptr %t329, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t334, ptr %t335
  %t336 = load { i64, [8 x i64] }, ptr %t329
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t323, { i64, [8 x i64] } %t336)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eaway(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l12 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 7
  store i64 %a1, ptr %t10, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t16 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t11, ptr %a2)
  store { i64, [4 x i64] } %t16, ptr %l12
  br label %bb1
bb1:
  %t17 = load { i64, [4 x i64] }, ptr %l12
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 7
  store i64 %t19, ptr %t22, !tbaa !24
  store { i64, [4 x i64] } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i32
  %l9 = alloca ptr
  %rv = alloca { { i64, [7 x i64] }, i32 }
  %t21 = alloca { i64, [2 x i64] }, align 8
  %t28 = alloca { i64, [7 x i64] }, align 8
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %t11)
  store ptr %t14, ptr %l9
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %t17, !tbaa !23
  store i32 %t18, ptr %l2, !tbaa !23
  %t20 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t24 = insertvalue { i32 } undef, i32 %t20, 0
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  store { i32 } %t24, ptr %t25
  %t26 = load { i64, [2 x i64] }, ptr %t21
  %t27 = load i32, ptr %l2, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [7 x i64] }, ptr %t28, i32 0, i32 0
  store i64 0, ptr %t29
  %t31 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t26, 0
  %t33 = insertvalue { { i64, [2 x i64] }, i32 } %t31, i32 %t27, 1
  %t34 = getelementptr { i64, [7 x i64] }, ptr %t28, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t33, ptr %t34
  %t35 = load { i64, [7 x i64] }, ptr %t28
  %t36 = load i32, ptr %l2, !tbaa !23
  %t38 = insertvalue { { i64, [7 x i64] }, i32 } undef, { i64, [7 x i64] } %t35, 0
  %t40 = insertvalue { { i64, [7 x i64] }, i32 } %t38, i32 %t36, 1
  store { { i64, [7 x i64] }, i32 } %t40, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, [7 x i64] }, i32 }, ptr %rv
  ret { { i64, [7 x i64] }, i32 } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyLocal(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/mir:Lvalue"
  %rv = alloca { i64, [4 x i64] }
  %t4 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a1)
  store %"compiler/mir:Lvalue" %t3, ptr %l3
  br label %bb1
bb1:
  store { i64, [4 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [4 x i64] }, ptr %t4, i32 0, i32 0
  store i64 1, ptr %t5
  %t6 = load %"compiler/mir:Lvalue", ptr %l3
  %t7 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t6, 0
  %t8 = getelementptr { i64, [4 x i64] }, ptr %t4, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t7, ptr %t8
  %t9 = load { i64, [4 x i64] }, ptr %t4
  store { i64, [4 x i64] } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, [4 x i64] }
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %l17 = alloca { i64, [4 x i64] }
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca %"compiler/lower:pl"
  %l23 = alloca %"compiler/lower:pl"
  %l24 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t33 = alloca { i64, [15 x i64] }, align 8
  %t39 = alloca { i64, [21 x i64] }, align 8
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
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l10, !tbaa !29
  %t10 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t10, ptr %l11
  %t12 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l11)
  store %"compiler/lower:pl" %t12, ptr %l13
  br label %bb5
bb5:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t15 = load %"compiler/source:Span", ptr %l4
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t17 = load %"compiler/lower:pl", ptr %l13
  %t21 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %s0, ptr %t16, %"compiler/lower:pl" %t17, i32 %t13, { i64, [1 x i64] } %a3, %"compiler/source:Span" %t15, i1 false, i1 false)
  store { i64, [4 x i64] } %t21, ptr %l17
  br label %bb6
bb6:
  %t22 = load { i64, [4 x i64] }, ptr %l17
  store { i64, [4 x i64] } %t22, ptr %l5
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t24, ptr %l19
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l20, !tbaa !29
  %t26 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t26, ptr %l21
  %t28 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l21)
  store %"compiler/lower:pl" %t28, ptr %l23
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = load %"compiler/lower:pl", ptr %l23
  %t31 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t29, %"compiler/lower:pl" %t30)
  store %"compiler/mir:Lvalue" %t31, ptr %l24
  br label %bb8
bb8:
  %t32 = load { i64, [4 x i64] }, ptr %l5
  store { i64, [15 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [15 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t36 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t32, 0
  %t37 = getelementptr { i64, [15 x i64] }, ptr %t33, i32 0, i32 1
  store { { i64, [4 x i64] } } %t36, ptr %t37
  %t38 = load { i64, [15 x i64] }, ptr %t33
  store { i64, [21 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [21 x i64] }, ptr %t39, i32 0, i32 0
  store i64 0, ptr %t40
  %t41 = load %"compiler/source:Span", ptr %l19
  %t42 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t41, 0
  %t43 = load %"compiler/mir:Lvalue", ptr %l24
  %t44 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t42, %"compiler/mir:Lvalue" %t43, 1
  %t46 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t44, { i64, [15 x i64] } %t38, 2
  %t47 = getelementptr { i64, [21 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t46, ptr %t47
  %t48 = load { i64, [21 x i64] }, ptr %t39
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t48, ptr %t50
  %t51 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t51, ptr %t50)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Local"
  %l6 = alloca %"compiler/mir:Local"
  %l9 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca i32
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/mir:Fn", ptr %t3, i32 0, i32 7
  %t8 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t4, i64 %a1)
  store %"compiler/mir:Local" %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load %"compiler/mir:Local", ptr %l6
  store %"compiler/mir:Local" %t9, ptr %l2
  %t10 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 3
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 4}
  %t13 = trunc i64 2 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l11, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 2
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 2
  %t25 = load i32, ptr %t24, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %t25)
  store i32 %t28, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t29 = load ptr, ptr %l11, !tbaa !29
  %t30 = load i32, ptr %l15, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t31, ptr %l16
  br label %bb5
bb5:
  %t32 = load i1, ptr %l16, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l9, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/mir:Local", ptr %l2, i32 0, i32 2
  %t38 = load i32, ptr %t37, !tbaa !23
  %t41 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t36, i32 %t38)
  store i1 %t41, ptr %l21
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t42 = load i1, ptr %l21, !tbaa !21
  store i1 %t42, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l18, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2edispatch(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca %"compiler/typed:Item"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca { i64, [4 x i64] }
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i1
  %l44 = alloca { i64, ptr }
  %l46 = alloca i64
  %l53 = alloca i64
  %l61 = alloca %"compiler/lower:tryCtx"
  %l68 = alloca i64
  %l71 = alloca i64
  %l91 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l114 = alloca i64
  %l117 = alloca i64
  %l137 = alloca i1
  %l138 = alloca ptr
  %l140 = alloca { i64, ptr }
  %l143 = alloca i32
  %l146 = alloca i32
  %l147 = alloca i1
  %l155 = alloca i1
  %l171 = alloca { i64, ptr }
  %l173 = alloca { i64, [4 x i64] }
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, [4 x i64] }
  %l197 = alloca { i64, ptr }
  %l199 = alloca { i64, [4 x i64] }
  %l202 = alloca { i64, [4 x i64] }
  %l209 = alloca { i64, ptr }
  %l211 = alloca { i64, [4 x i64] }
  %l216 = alloca i1
  %l220 = alloca i1
  %l230 = alloca i32
  %l233 = alloca i32
  %l253 = alloca ptr
  %l269 = alloca ptr
  %l280 = alloca i32
  %l288 = alloca i64
  %l294 = alloca i32
  %l304 = alloca ptr
  %l306 = alloca %"compiler/mir:Lvalue"
  %l313 = alloca { i64, ptr }
  %l316 = alloca i1
  %l319 = alloca i64
  %l326 = alloca ptr
  %l327 = alloca %"compiler/source:Span"
  %l335 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %t115 = alloca { i64, [4 x i64] }, align 8
  %t263 = alloca { i64, [4 x i64] }, align 8
  %t276 = alloca { i64, [4 x i64] }, align 8
  %t313 = alloca { i64, [4 x i64] }, align 8
  %t353 = alloca { i64, [4 x i64] }, align 8
  %t461 = alloca { i64, [8 x i64] }, align 8
  %t511 = alloca { i64, [21 x i64] }, align 8
  %t620 = alloca { i64, [4 x i64] }, align 8
  %t654 = alloca { i64, [4 x i64] }, align 8
  %t657 = alloca { i64, [8 x i64] }, align 8
  %t676 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
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
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %t7)
  store { i64, ptr } %t10, ptr %l44
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t11, ptr %l6, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l46, !tbaa !24
  %t15 = load i64, ptr %l46, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l46, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l7, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l8, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 18
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l53
  br label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_b0c77cc00353838c_f9addae603786cc8)
  unreachable
bb4:
  %t33 = load i64, ptr %l53, !tbaa !24
  %t34 = sub i64 %t33, 1
  store i64 %t34, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load i64, ptr %l9, !tbaa !24
  %t38 = icmp sge i64 %t36, 0
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb7:
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 18
  %t45 = load i64, ptr %l9, !tbaa !24
  %t48 = call %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t44, i64 %t45)
  store %"compiler/lower:tryCtx" %t48, ptr %l61
  br label %bb9
bb9:
  %t49 = getelementptr %"compiler/lower:tryCtx", ptr %l61, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t56 = load i64, ptr %l12, !tbaa !24
  %t57 = load i64, ptr %l11, !tbaa !24
  %t60 = icmp sgt i64 %t56, %t57
  br i1 %t60, label %bb10, label %bb11
bb10:
  %t62 = load i64, ptr %l13, !tbaa !24
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb15
bb12:
  %t66 = load i64, ptr %l12, !tbaa !24
  %t67 = load i64, ptr %l11, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load i64, ptr %l13, !tbaa !24
  %t74 = add i64 %t70, %t71
  %t76 = sub i64 %t74, 1
  %t77 = load i64, ptr %l13, !tbaa !24
  %t80 = sdiv i64 %t76, %t77
  store i64 %t80, ptr %l71, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb14
bb14:
  %t82 = load i64, ptr %l71, !tbaa !24
  store i64 %t82, ptr %l68, !tbaa !24
  br label %bb15
bb15:
  %t83 = load i64, ptr %l68, !tbaa !24
  store i64 %t83, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb16
bb16:
  %t84 = load i64, ptr %l15, !tbaa !24
  %t85 = load i64, ptr %l14, !tbaa !24
  %t88 = icmp slt i64 %t84, %t85
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb17, label %bb18
bb17:
  br label %bb92
bb18:
  br label %bb19
bb19:
  %t92 = load i64, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l15, !tbaa !24
  %t94 = load i64, ptr %l13, !tbaa !24
  %t97 = mul i64 %t93, %t94
  %t100 = add i64 %t92, %t97
  store i64 %t100, ptr %l16, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 10
  %t105 = load i1, ptr %t104, !tbaa !21
  br i1 %t105, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  br label %bb22
bb22:
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t107, ptr %l91, !tbaa !27
  %t108 = load i64, ptr %l16, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr ptr, ptr %t111, i64 %t108
  %t113 = load ptr, ptr %t112, !tbaa !39
  store ptr %t113, ptr %l17, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t117 = load { i64, [4 x i64] }, ptr %t115
  store { i64, [4 x i64] } %t117, ptr %l18
  %t119 = load ptr, ptr %l17, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Clause", ptr %t119, i32 0, i32 2
  %t122 = load i1, ptr %t121, !tbaa !21
  store i1 %t122, ptr %l19, !tbaa !21
  %t124 = load ptr, ptr %l17, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Clause", ptr %t124, i32 0, i32 1
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  store { i64, ptr } %t127, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l22, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t133 = load i64, ptr %l21, !tbaa !24
  %t134 = load i64, ptr %l22, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb25:
  br label %bb26
bb26:
  %t141 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t141, ptr %l105, !tbaa !27
  %t142 = load i64, ptr %l21, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr %"compiler/typed:Item", ptr %t145, i64 %t142
  %t147 = load %"compiler/typed:Item", ptr %t146
  store %"compiler/typed:Item" %t147, ptr %l23
  %t149 = load i1, ptr %l19, !tbaa !21
  br i1 %t149, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb28:
  br label %bb29
bb29:
  store i64 -1, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t151, 0
  store i64 %t153, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t155 = load i64, ptr %l26, !tbaa !24
  %t156 = load i64, ptr %l25, !tbaa !24
  %t159 = icmp sgt i64 %t155, %t156
  br i1 %t159, label %bb30, label %bb31
bb30:
  %t161 = load i64, ptr %l27, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb35
bb32:
  %t165 = load i64, ptr %l26, !tbaa !24
  %t166 = load i64, ptr %l25, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l27, !tbaa !24
  %t173 = add i64 %t169, %t170
  %t175 = sub i64 %t173, 1
  %t176 = load i64, ptr %l27, !tbaa !24
  %t179 = sdiv i64 %t175, %t176
  store i64 %t179, ptr %l117, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb34
bb34:
  %t181 = load i64, ptr %l117, !tbaa !24
  store i64 %t181, ptr %l114, !tbaa !24
  br label %bb35
bb35:
  %t182 = load i64, ptr %l114, !tbaa !24
  store i64 %t182, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb36
bb36:
  %t183 = load i64, ptr %l29, !tbaa !24
  %t184 = load i64, ptr %l28, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb37, label %bb38
bb37:
  br label %bb50
bb38:
  br label %bb39
bb39:
  %t191 = load i64, ptr %l25, !tbaa !24
  %t192 = load i64, ptr %l29, !tbaa !24
  %t193 = load i64, ptr %l27, !tbaa !24
  %t196 = mul i64 %t192, %t193
  %t199 = add i64 %t191, %t196
  store i64 %t199, ptr %l30, !tbaa !24
  %t201 = load i64, ptr %l24, !tbaa !24
  %t203 = icmp slt i64 %t201, 0
  br i1 %t203, label %bb40, label %bb41
bb40:
  %t205 = load ptr, ptr %l5, !tbaa !29
  store ptr %t205, ptr %l138, !tbaa !29
  %t206 = load ptr, ptr %l5, !tbaa !29
  %t207 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t207, ptr %l140, !tbaa !27
  %t208 = load i64, ptr %l30, !tbaa !24
  %t210 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr i32, ptr %t211, i64 %t208
  %t213 = load i32, ptr %t212, !tbaa !33
  %t216 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t206, i32 %t213)
  store i32 %t216, ptr %l143
  br label %bb42
bb41:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb45
bb42:
  %t217 = load ptr, ptr %l5, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 0
  %t219 = load i32, ptr %t218, !tbaa !23
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t217, i32 %t219)
  store i32 %t222, ptr %l146
  br label %bb43
bb43:
  %t223 = load ptr, ptr %l138, !tbaa !29
  %t224 = load i32, ptr %l143, !tbaa !23
  %t225 = load i32, ptr %l146, !tbaa !23
  %t226 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t223, i32 %t224, i32 %t225)
  store i1 %t226, ptr %l147
  br label %bb44
bb44:
  %t227 = load i1, ptr %l147, !tbaa !21
  store i1 %t227, ptr %l137, !tbaa !21
  br label %bb45
bb45:
  %t228 = load i1, ptr %l137, !tbaa !21
  br i1 %t228, label %bb46, label %bb47
bb46:
  %t229 = load i64, ptr %l30, !tbaa !24
  store i64 %t229, ptr %l24, !tbaa !24
  br label %bb48
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t231 = load i64, ptr %l29, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l29, !tbaa !24
  br label %bb36
bb50:
  %t235 = load i64, ptr %l24, !tbaa !24
  %t237 = icmp slt i64 %t235, 0
  br i1 %t237, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s7)
  br label %bb70
bb52:
  br label %bb53
bb53:
  %t239 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 1
  %t240 = load i64, ptr %t239, !tbaa !24
  %t242 = icmp slt i64 %t240, 0
  br i1 %t242, label %bb54, label %bb55
bb54:
  %t244 = load i64, ptr %l24, !tbaa !24
  %t246 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !27
  %t248 = getelementptr i1, ptr %t247, i64 %t244
  %t249 = load i1, ptr %t248, !tbaa !31
  %t251 = xor i1 %t249, true
  store i1 %t251, ptr %l155, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb56
bb56:
  %t253 = load i1, ptr %l155, !tbaa !21
  br i1 %t253, label %bb57, label %bb58
bb57:
  %t254 = load i64, ptr %l24, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr i1, ptr %t257, i64 %t254
  store i1 true, ptr %t258, !tbaa !31
  %t259 = load i64, ptr %l8, !tbaa !24
  %t261 = sub i64 %t259, 1
  store i64 %t261, ptr %l8, !tbaa !24
  br label %bb59
bb58:
  br label %bb59
bb59:
  store { i64, [4 x i64] } zeroinitializer, ptr %t263
  %t264 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 0
  store i64 0, ptr %t264
  %t265 = load { i64, [4 x i64] }, ptr %t263
  store { i64, [4 x i64] } %t265, ptr %l31
  %t267 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 1
  %t268 = load i64, ptr %t267, !tbaa !24
  %t270 = icmp slt i64 %t268, 0
  br i1 %t270, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s15
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t274 = load { i64, [4 x i64] }, ptr %l1
  %t275 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t276
  %t277 = getelementptr { i64, [4 x i64] }, ptr %t276, i32 0, i32 0
  store i64 2, ptr %t277
  %t279 = insertvalue { i32, i64 } undef, i32 %t275, 0
  %t280 = insertvalue { i32, i64 } %t279, i64 16, 1
  %t281 = getelementptr { i64, [4 x i64] }, ptr %t276, i32 0, i32 1
  store { i32, i64 } %t280, ptr %t281
  %t282 = load { i64, [4 x i64] }, ptr %t276
  %t283 = mul i64 2, 40
  %t284 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t283)
  %t285 = insertvalue { i64, ptr } undef, i64 2, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  store { i64, ptr } %t286, ptr %l171, !tbaa !27
  %t288 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t289, i64 0
  store { i64, [4 x i64] } %t274, ptr %t290
  %t292 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr { i64, [4 x i64] }, ptr %t293, i64 1
  store { i64, [4 x i64] } %t282, ptr %t294
  %t295 = load %"compiler/source:Span", ptr %l3
  %t299 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t301 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s15, ptr %t272, i32 9, i32 %t273, { i64, ptr } %t299, %"compiler/source:Span" %t295)
  store { i64, [4 x i64] } %t301, ptr %l173
  br label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s16
  %t302 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t303 = load i64, ptr %l24, !tbaa !24
  %t305 = add i64 %t303, 1
  %t307 = shl i64 %t305, 16
  %t308 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 1
  %t309 = load i64, ptr %t308, !tbaa !24
  %t312 = or i64 %t307, %t309
  store { i64, [4 x i64] } zeroinitializer, ptr %t313
  %t314 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 0
  store i64 2, ptr %t314
  %t316 = insertvalue { i32, i64 } undef, i32 %t302, 0
  %t318 = insertvalue { i32, i64 } %t316, i64 %t312, 1
  %t319 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  store { i32, i64 } %t318, ptr %t319
  %t320 = load { i64, [4 x i64] }, ptr %t313
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t324 = load { i64, [4 x i64] }, ptr %l1
  %t326 = mul i64 2, 40
  %t327 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t326)
  %t328 = insertvalue { i64, ptr } undef, i64 2, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t327, 1
  store { i64, ptr } %t329, ptr %l197, !tbaa !27
  %t331 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr { i64, [4 x i64] }, ptr %t332, i64 0
  store { i64, [4 x i64] } %t324, ptr %t333
  %t335 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr { i64, [4 x i64] }, ptr %t336, i64 1
  store { i64, [4 x i64] } %t320, ptr %t337
  %t338 = load %"compiler/source:Span", ptr %l3
  %t342 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t344 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s16, ptr %t322, i32 13, i32 %t323, { i64, ptr } %t342, %"compiler/source:Span" %t338)
  store { i64, [4 x i64] } %t344, ptr %l199
  br label %bb64
bb62:
  %t345 = load { i64, [4 x i64] }, ptr %l173
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t349 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t350 = load i64, ptr %l24, !tbaa !24
  %t352 = add i64 %t350, 1
  store { i64, [4 x i64] } zeroinitializer, ptr %t353
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t353, i32 0, i32 0
  store i64 2, ptr %t354
  %t356 = insertvalue { i32, i64 } undef, i32 %t349, 0
  %t358 = insertvalue { i32, i64 } %t356, i64 %t352, 1
  %t359 = getelementptr { i64, [4 x i64] }, ptr %t353, i32 0, i32 1
  store { i32, i64 } %t358, ptr %t359
  %t360 = load { i64, [4 x i64] }, ptr %t353
  %t361 = mul i64 2, 40
  %t362 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t361)
  %t363 = insertvalue { i64, ptr } undef, i64 2, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  store { i64, ptr } %t364, ptr %l182, !tbaa !27
  %t366 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr { i64, [4 x i64] }, ptr %t367, i64 0
  store { i64, [4 x i64] } %t345, ptr %t368
  %t370 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr { i64, [4 x i64] }, ptr %t371, i64 1
  store { i64, [4 x i64] } %t360, ptr %t372
  %t373 = load %"compiler/source:Span", ptr %l3
  %t377 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t379 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s15, ptr %t346, i32 13, i32 %t347, { i64, ptr } %t377, %"compiler/source:Span" %t373)
  store { i64, [4 x i64] } %t379, ptr %l184
  br label %bb63
bb63:
  %t380 = load { i64, [4 x i64] }, ptr %l184
  store { i64, [4 x i64] } %t380, ptr %l31
  call void @__olang_scope_close(ptr %s15)
  br label %bb65
bb64:
  %t381 = load { i64, [4 x i64] }, ptr %l199
  store { i64, [4 x i64] } %t381, ptr %l31
  call void @__olang_scope_close(ptr %s16)
  br label %bb65
bb65:
  %t382 = load { i64, [4 x i64] }, ptr %l18
  %t384 = extractvalue { i64, [4 x i64] } %t382, 0
  %t385 = icmp eq i64 %t384, 0
  br i1 %t385, label %bb66, label %bb67
bb66:
  %t387 = load { i64, [4 x i64] }, ptr %l31
  store { i64, [4 x i64] } %t387, ptr %l202
  br label %bb69
bb67:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t391 = load { i64, [4 x i64] }, ptr %l18
  %t392 = load { i64, [4 x i64] }, ptr %l31
  %t393 = mul i64 2, 40
  %t394 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t393)
  %t395 = insertvalue { i64, ptr } undef, i64 2, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t394, 1
  store { i64, ptr } %t396, ptr %l209, !tbaa !27
  %t398 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t399, i64 0
  store { i64, [4 x i64] } %t391, ptr %t400
  %t402 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !27
  %t404 = getelementptr { i64, [4 x i64] }, ptr %t403, i64 1
  store { i64, [4 x i64] } %t392, ptr %t404
  %t405 = load %"compiler/source:Span", ptr %l3
  %t409 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t411 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t389, i32 11, i32 %t390, { i64, ptr } %t409, %"compiler/source:Span" %t405)
  store { i64, [4 x i64] } %t411, ptr %l211
  br label %bb68
bb68:
  %t412 = load { i64, [4 x i64] }, ptr %l211
  store { i64, [4 x i64] } %t412, ptr %l202
  br label %bb69
bb69:
  %t413 = load { i64, [4 x i64] }, ptr %l202
  store { i64, [4 x i64] } %t413, ptr %l18
  call void @__olang_scope_close(ptr %s7)
  br label %bb70
bb70:
  %t414 = load i64, ptr %l21, !tbaa !24
  %t416 = add i64 %t414, 1
  store i64 %t416, ptr %l21, !tbaa !24
  br label %bb23
bb71:
  %t418 = load i1, ptr %l19, !tbaa !21
  %t420 = xor i1 %t418, true
  br i1 %t420, label %bb72, label %bb73
bb72:
  %t422 = load { i64, [4 x i64] }, ptr %l18
  %t424 = extractvalue { i64, [4 x i64] } %t422, 0
  %t425 = icmp eq i64 %t424, 0
  store i1 %t425, ptr %l216, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb74
bb74:
  %t427 = load i1, ptr %l216, !tbaa !21
  br i1 %t427, label %bb75, label %bb76
bb75:
  br label %bb91
bb76:
  br label %bb77
bb77:
  %t428 = load i1, ptr %l19, !tbaa !21
  br i1 %t428, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l220, !tbaa !21
  br label %bb80
bb79:
  %t430 = load i64, ptr %l8, !tbaa !24
  %t432 = icmp eq i64 %t430, 0
  store i1 %t432, ptr %l220, !tbaa !21
  br label %bb80
bb80:
  %t434 = load i1, ptr %l220, !tbaa !21
  br i1 %t434, label %bb81, label %bb82
bb81:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t436 = load i64, ptr %l9, !tbaa !24
  %t437 = load i64, ptr %l16, !tbaa !24
  %t438 = load { i64, [4 x i64] }, ptr %l1
  %t439 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %t435, i64 %t436, i64 %t437, { i64, [4 x i64] } %t438, i32 %t439)
  br label %bb83
bb82:
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb84:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/lower:lowering", ptr %t445, i32 0, i32 3
  %t449 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t447)
  store i32 %t449, ptr %l230
  br label %bb85
bb85:
  %t450 = load i32, ptr %l230, !tbaa !23
  store i32 %t450, ptr %l34, !tbaa !23
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/lower:lowering", ptr %t451, i32 0, i32 3
  %t455 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t453)
  store i32 %t455, ptr %l233
  br label %bb86
bb86:
  %t456 = load i32, ptr %l233, !tbaa !23
  store i32 %t456, ptr %l35, !tbaa !23
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load { i64, [4 x i64] }, ptr %l18
  %t459 = load i32, ptr %l34, !tbaa !23
  %t460 = load i32, ptr %l35, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t461
  %t462 = getelementptr { i64, [8 x i64] }, ptr %t461, i32 0, i32 0
  store i64 2, ptr %t462
  %t464 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t458, 0
  %t466 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t464, i32 %t459, 1
  %t468 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t466, i32 %t460, 2
  %t469 = getelementptr { i64, [8 x i64] }, ptr %t461, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t468, ptr %t469
  %t470 = load { i64, [8 x i64] }, ptr %t461
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t457, { i64, [8 x i64] } %t470)
  br label %bb87
bb87:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t473, i32 %t474)
  br label %bb88
bb88:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i64, ptr %l9, !tbaa !24
  %t479 = load i64, ptr %l16, !tbaa !24
  %t480 = load { i64, [4 x i64] }, ptr %l1
  %t481 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %t477, i64 %t478, i64 %t479, { i64, [4 x i64] } %t480, i32 %t481)
  br label %bb89
bb89:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load i32, ptr %l35, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t487, i32 %t488)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t491 = load i64, ptr %l15, !tbaa !24
  %t493 = add i64 %t491, 1
  store i64 %t493, ptr %l15, !tbaa !24
  br label %bb16
bb92:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/lower:lowering", ptr %t495, i32 0, i32 18
  %t498 = load i64, ptr %l9, !tbaa !24
  %t501 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %s2, ptr %t497, i64 %t498)
  store ptr %t501, ptr %l253
  br label %bb93
bb93:
  %t502 = load ptr, ptr %l253, !tbaa !29
  %t504 = getelementptr %"compiler/lower:tryCtx", ptr %t502, i32 0, i32 2
  %t505 = load i1, ptr %t504, !tbaa !21
  br i1 %t505, label %bb94, label %bb95
bb94:
  br i1 %a4, label %bb96, label %bb97
bb95:
  br label %bb101
bb96:
  store %olang.scope zeroinitializer, ptr %s22
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load %"compiler/source:Span", ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t511
  %t512 = getelementptr { i64, [21 x i64] }, ptr %t511, i32 0, i32 0
  store i64 11, ptr %t512
  %t514 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t510, 0
  %t515 = getelementptr { i64, [21 x i64] }, ptr %t511, i32 0, i32 1
  store { %"compiler/source:Span" } %t514, ptr %t515
  %t516 = load { i64, [21 x i64] }, ptr %t511
  %t518 = call ptr @__olang_scope_alloc_a(ptr %s22, i64 176, i64 8)
  store { i64, [21 x i64] } %t516, ptr %t518
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s22, ptr %t509, ptr %t518)
  br label %bb98
bb97:
  br label %bb99
bb98:
  call void @__olang_scope_close(ptr %s22)
  br label %bb99
bb99:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load { i64, [4 x i64] }, ptr %l1
  %t523 = load i32, ptr %l2, !tbaa !23
  %t524 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %t521, { i64, [4 x i64] } %t522, i32 %t523, %"compiler/source:Span" %t524, i32 14, i1 false)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb101:
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t532 = getelementptr %"compiler/lower:lowering", ptr %t530, i32 0, i32 18
  %t533 = load i64, ptr %l9, !tbaa !24
  %t536 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %s2, ptr %t532, i64 %t533)
  store ptr %t536, ptr %l269
  br label %bb102
bb102:
  %t537 = load ptr, ptr %l269, !tbaa !29
  %t539 = getelementptr %"compiler/lower:tryCtx", ptr %t537, i32 0, i32 3
  %t540 = load i1, ptr %t539, !tbaa !21
  %t542 = xor i1 %t540, true
  br i1 %t542, label %bb103, label %bb104
bb103:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb104:
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s2)
  br label %bb106
bb106:
  %t544 = load i64, ptr %l9, !tbaa !24
  %t546 = sub i64 %t544, 1
  store i64 %t546, ptr %l9, !tbaa !24
  br label %bb5
bb107:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t550 = getelementptr %"compiler/lower:lowering", ptr %t548, i32 0, i32 2
  %t551 = load ptr, ptr %t550, !tbaa !29
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t554 = getelementptr %"compiler/lower:lowering", ptr %t552, i32 0, i32 1
  %t555 = load ptr, ptr %t554, !tbaa !29
  %t557 = getelementptr %"compiler/typed:Body", ptr %t555, i32 0, i32 2
  %t558 = load i32, ptr %t557, !tbaa !23
  %t561 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t551, i32 %t558)
  store i32 %t561, ptr %l280
  br label %bb108
bb108:
  %t562 = load i32, ptr %l280, !tbaa !23
  store i32 %t562, ptr %l36, !tbaa !23
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t565 = getelementptr %"compiler/lower:lowering", ptr %t563, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !29
  %t568 = getelementptr %"compiler/typed:Body", ptr %t566, i32 0, i32 1
  %t569 = load { i64, [2 x i64] }, ptr %t568
  %t573 = extractvalue { i64, [2 x i64] } %t569, 0
  %t574 = icmp eq i64 %t573, 5
  br i1 %t574, label %bb109, label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb123
bb111:
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t578 = getelementptr %"compiler/lower:lowering", ptr %t576, i32 0, i32 18
  %t580 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t578)
  store i64 %t580, ptr %l288
  br label %bb112
bb112:
  %t581 = load i64, ptr %l288, !tbaa !24
  %t582 = icmp sgt i64 %t581, 0
  br i1 %t582, label %bb113, label %bb114
bb113:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load { i64, [4 x i64] }, ptr %l1
  %t586 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t587 = load %"compiler/source:Span", ptr %l3
  %t592 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t584, { i64, [4 x i64] } %t585, i32 %t586, %"compiler/source:Span" %t587)
  store i32 %t592, ptr %l294
  br label %bb115
bb114:
  br label %bb122
bb115:
  %t593 = load i32, ptr %l294, !tbaa !23
  store i32 %t593, ptr %l38, !tbaa !23
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = getelementptr %"compiler/lower:lowering", ptr %t594, i32 0, i32 23
  %t597 = load i1, ptr %t596, !tbaa !21
  store i1 %t597, ptr %l39, !tbaa !21
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t601 = getelementptr %"compiler/lower:lowering", ptr %t599, i32 0, i32 23
  store i1 true, ptr %t601, !tbaa !21
  %t602 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t602, i64 0)
  br label %bb116
bb116:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load i1, ptr %l39, !tbaa !21
  %t608 = getelementptr %"compiler/lower:lowering", ptr %t604, i32 0, i32 23
  store i1 %t605, ptr %t608, !tbaa !21
  %t609 = load ptr, ptr %l0, !tbaa !29
  %t611 = getelementptr %"compiler/lower:lowering", ptr %t609, i32 0, i32 10
  %t612 = load i1, ptr %t611, !tbaa !21
  %t614 = xor i1 %t612, true
  br i1 %t614, label %bb117, label %bb118
bb117:
  %t616 = load ptr, ptr %l0, !tbaa !29
  store ptr %t616, ptr %l304, !tbaa !29
  %t617 = load i32, ptr %l38, !tbaa !23
  %t619 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t617)
  store %"compiler/mir:Lvalue" %t619, ptr %l306
  br label %bb119
bb118:
  br label %bb121
bb119:
  store { i64, [4 x i64] } zeroinitializer, ptr %t620
  %t621 = getelementptr { i64, [4 x i64] }, ptr %t620, i32 0, i32 0
  store i64 1, ptr %t621
  %t622 = load %"compiler/mir:Lvalue", ptr %l306
  %t623 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t622, 0
  %t624 = getelementptr { i64, [4 x i64] }, ptr %t620, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t623, ptr %t624
  %t625 = load { i64, [4 x i64] }, ptr %t620
  %t626 = load i32, ptr %l2, !tbaa !23
  %t627 = load %"compiler/source:Span", ptr %l3
  %t628 = load ptr, ptr %l304, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %t628, { i64, [4 x i64] } %t625, i32 %t626, %"compiler/source:Span" %t627, i32 15, i1 true)
  br label %bb120
bb120:
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb122:
  br label %bb128
bb123:
  br i1 true, label %bb124, label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_1378acbf535452a2_3a9100f5c9d7e1f6)
  unreachable
bb128:
  %t633 = load ptr, ptr %l5, !tbaa !29
  %t634 = load i32, ptr %l36, !tbaa !23
  %t637 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t633, i32 %t634)
  store { i64, ptr } %t637, ptr %l313
  br label %bb129
bb129:
  %t638 = load { i64, ptr }, ptr %l313, !tbaa !27
  %t639 = extractvalue { i64, ptr } %t638, 0
  %t641 = icmp eq i64 %t639, 0
  br i1 %t641, label %bb130, label %bb131
bb130:
  store i1 true, ptr %l316, !tbaa !21
  br label %bb133
bb131:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t645 = getelementptr %"compiler/lower:lowering", ptr %t643, i32 0, i32 18
  %t647 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t645)
  store i64 %t647, ptr %l319
  br label %bb132
bb132:
  %t648 = load i64, ptr %l319, !tbaa !24
  %t649 = icmp eq i64 %t648, 0
  store i1 %t649, ptr %l316, !tbaa !21
  br label %bb133
bb133:
  %t651 = load i1, ptr %l316, !tbaa !21
  br i1 %t651, label %bb134, label %bb135
bb134:
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t653 = load %"compiler/source:Span", ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t654
  %t655 = getelementptr { i64, [4 x i64] }, ptr %t654, i32 0, i32 0
  store i64 0, ptr %t655
  %t656 = load { i64, [4 x i64] }, ptr %t654
  store { i64, [8 x i64] } zeroinitializer, ptr %t657
  %t658 = getelementptr { i64, [8 x i64] }, ptr %t657, i32 0, i32 0
  store i64 9, ptr %t658
  %t660 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t653, 0
  %t662 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t660, i32 3, 1
  %t664 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t662, { i64, [4 x i64] } %t656, 2
  %t665 = getelementptr { i64, [8 x i64] }, ptr %t657, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t664, ptr %t665
  %t666 = load { i64, [8 x i64] }, ptr %t657
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t652, { i64, [8 x i64] } %t666)
  br label %bb136
bb135:
  br label %bb137
bb136:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb137:
  %t669 = load ptr, ptr %l0, !tbaa !29
  store ptr %t669, ptr %l326, !tbaa !29
  %t670 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t670, ptr %l327
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t673 = load { i64, [4 x i64] }, ptr %l1
  %t674 = load i32, ptr %l2, !tbaa !23
  %t675 = load i32, ptr %l36, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t676
  %t677 = getelementptr { i64, [15 x i64] }, ptr %t676, i32 0, i32 0
  store i64 11, ptr %t677
  %t679 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t673, 0
  %t681 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t679, i32 %t674, 1
  %t683 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t681, i32 %t675, 2
  %t684 = getelementptr { i64, [15 x i64] }, ptr %t676, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t683, ptr %t684
  %t685 = load { i64, [15 x i64] }, ptr %t676
  %t686 = load %"compiler/source:Span", ptr %l3
  %t691 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t671, i32 %t672, { i64, [15 x i64] } %t685, %"compiler/source:Span" %t686)
  store { i64, [4 x i64] } %t691, ptr %l335
  br label %bb138
bb138:
  %t692 = load ptr, ptr %l326, !tbaa !29
  %t693 = load %"compiler/source:Span", ptr %l327
  %t694 = load { i64, [4 x i64] }, ptr %l335
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %t692, %"compiler/source:Span" %t693, { i64, [4 x i64] } %t694, i1 true)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2efails(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l9 = alloca i1
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
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
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t8 = trunc i64 0 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l9, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t15 = mul i64 1, 40
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 1, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l16, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t21, i64 0
  store { i64, [4 x i64] } %a1, ptr %t22
  %t23 = load %"compiler/source:Span", ptr %l5
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t12, i32 2, i32 %t13, { i64, ptr } %t27, %"compiler/source:Span" %t23)
  store { i64, [4 x i64] } %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = load { i64, [4 x i64] }, ptr %l18
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t36 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t31, { i64, [4 x i64] } %t30, i32 %t33, i32 %a3, i64 %a4, %"compiler/source:Span" %t36)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i1
  %l12 = alloca i1
  %l18 = alloca ptr
  %l29 = alloca i1
  %l35 = alloca i1
  %l55 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l63 = alloca i64
  %l68 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t127 = alloca { ptr, ptr }, align 8
  %t136 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i64, ptr %l5, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 24
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp slt i64 %t12, 0
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
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/lower:Lowerer", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t25)
  store ptr %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 1
  %t32 = load { i64, [2 x i64] }, ptr %t31
  %t34 = extractvalue { i64, [2 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 1
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t39 = load i1, ptr %l12, !tbaa !21
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l3, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t48 = load i64, ptr %l2, !tbaa !24
  %t52 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emovedViews(ptr %v0, ptr %v1, ptr %t46, ptr %t47, i64 %t48)
  store i1 %t52, ptr %l29
  br label %bb12
bb12:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/lower:Lowerer", ptr %t55, i32 0, i32 5
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 5
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb18, label %bb19
bb17:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb21
bb18:
  call void @__olang_check_failed(ptr @olang_loc_6a3744415739a386_9143a8e3ed3639a2)
  unreachable
bb19:
  br label %bb20
bb20:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = getelementptr %"compiler/lower:Lowerer", ptr %t71, i32 0, i32 5
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/free:Free", ptr %t74, i32 0, i32 78
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l35, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l35, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = getelementptr %"compiler/lower:Lowerer", ptr %t81, i32 0, i32 5
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb24, label %bb25
bb23:
  br label %bb28
bb24:
  call void @__olang_check_failed(ptr @olang_loc_6a3744415739a386_9143a8e3ed3639a2)
  unreachable
bb25:
  br label %bb26
bb26:
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = getelementptr %"compiler/lower:Lowerer", ptr %t88, i32 0, i32 5
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:lowering", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Body", ptr %t95, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t100 = sext i32 %t98 to i64
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Call", ptr %t101, i32 0, i32 2
  %t104 = load i32, ptr %t103, !tbaa !23
  %t106 = sext i32 %t104 to i64
  %t110 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFreshCtorAt(ptr %v0, ptr %t91, i64 %t100, i64 %t106)
  store i1 %t110, ptr %l55
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load i1, ptr %l55, !tbaa !21
  store i1 %t111, ptr %rv
  br label %ret
bb28:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/lower:lowering", ptr %t112, i32 0, i32 30
  store ptr %t114, ptr %l57, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  store ptr %t115, ptr %l58, !tbaa !29
  %t116 = load ptr, ptr %l3, !tbaa !29
  %t117 = load i64, ptr %l2, !tbaa !24
  %t119 = trunc i64 %t117 to i32
  %t123 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t116, i32 %t119)
  store i64 %t123, ptr %l63
  br label %bb29
bb29:
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t125 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t126 = ptrtoint ptr %t125 to i64
  %t128 = getelementptr { ptr, ptr }, ptr %t127, i32 0, i32 0
  store ptr %t124, ptr %t128, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t130 = getelementptr { ptr, ptr }, ptr %t127, i32 0, i32 1
  store ptr %v0, ptr %t130, !tbaa !28
  %t131 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t132 = insertvalue { ptr, ptr } %t131, ptr %t127, 1
  %t133 = load ptr, ptr %l3, !tbaa !29
  %t134 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t135 = ptrtoint ptr %t134 to i64
  %t137 = getelementptr { ptr, ptr }, ptr %t136, i32 0, i32 0
  store ptr %t133, ptr %t137, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t139 = getelementptr { ptr, ptr }, ptr %t136, i32 0, i32 1
  store ptr %v0, ptr %t139, !tbaa !28
  %t140 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t141 = insertvalue { ptr, ptr } %t140, ptr %t136, 1
  %t142 = load ptr, ptr %l57, !tbaa !29
  %t143 = load ptr, ptr %l58, !tbaa !29
  %t144 = load i64, ptr %l63, !tbaa !24
  %t146 = extractvalue { ptr, ptr } %t132, 0
  %t147 = extractvalue { ptr, ptr } %t132, 1
  %t149 = extractvalue { ptr, ptr } %t141, 0
  %t150 = extractvalue { ptr, ptr } %t141, 1
  %t151 = call i1 @compiler_2ftyped_2eFreshViews(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t142, ptr %t143, i64 %t144, ptr %t146, ptr %t147, ptr %t149, ptr %t150)
  store i1 %t151, ptr %l68
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t152 = load i1, ptr %l68, !tbaa !21
  store i1 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i64
  %l17 = alloca %"compiler/lower:Gap"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 11
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/lower:Lowerer", ptr %t11, i32 0, i32 6
  store ptr %t13, ptr %l8, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 7
  %t17 = load i64, ptr %t16, !tbaa !24
  store i64 %t17, ptr %l10, !tbaa !24
  store %"compiler/source:Span" %a1, ptr %l11
  %t19 = ptrtoint ptr %v0 to i64
  store i64 %t19, ptr %l12, !tbaa !24
  %t20 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aGap_2e2
  br i1 %t20, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t22 = call ptr @__olang_region_make(ptr %v0)
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t26 = extractvalue { i64, ptr } %a2, 1
  %t27 = extractvalue { i64, ptr } %a2, 0
  %t28 = load i64, ptr %l12
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call ptr @__olang_scope_alloc(ptr %t29, i64 %t27)
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t27)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t34 = load i64, ptr %l12
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = extractvalue { i64, ptr } %t32, 0
  %t37 = extractvalue { i64, ptr } %t32, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %t35, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load %"compiler/source:Span", ptr %l11
  %t45 = call %"compiler/lower:Gap" @compiler_2flower_3aGap_2ector(ptr %v0, ptr %v0, i64 %t42, %"compiler/source:Span" %t43, { i64, ptr } %t41)
  store %"compiler/lower:Gap" %t45, ptr %l17
  br label %bb5
bb5:
  %t46 = load ptr, ptr %l8, !tbaa !29
  %t47 = load %"compiler/lower:Gap", ptr %l17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ePush_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v0, ptr %t46, %"compiler/lower:Gap" %t47)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 11
  store i1 true, ptr %t50, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eguarded(ptr %v0, ptr %a0, i32 %a1, i64 %a2, { i64, [15 x i64] } %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, [15 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l12 = alloca %"compiler/mir:Lvalue"
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l19 = alloca %"compiler/mir:Lvalue"
  %l27 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t11 = alloca { i64, [21 x i64] }, align 8
  %t31 = alloca { i64, [15 x i64] }, align 8
  %t37 = alloca { i64, [21 x i64] }, align 8
  %t65 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, [15 x i64] } %a3, ptr %l3
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t6, ptr %l10
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t7)
  store %"compiler/mir:Lvalue" %t9, ptr %l12
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load { i64, [15 x i64] }, ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t11, i32 0, i32 0
  store i64 0, ptr %t12
  %t13 = load %"compiler/source:Span", ptr %l10
  %t14 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t13, 0
  %t15 = load %"compiler/mir:Lvalue", ptr %l12
  %t16 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t14, %"compiler/mir:Lvalue" %t15, 1
  %t18 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t16, { i64, [15 x i64] } %t10, 2
  %t19 = getelementptr { i64, [21 x i64] }, ptr %t11, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t18, ptr %t19
  %t20 = load { i64, [21 x i64] }, ptr %t11
  %t22 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 176, i64 8)
  store { i64, [21 x i64] } %t20, ptr %t22
  %t23 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s1, ptr %t23, ptr %t22)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t26, ptr %l17
  %t27 = load i32, ptr %l1, !tbaa !23
  %t29 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t27)
  store %"compiler/mir:Lvalue" %t29, ptr %l19
  br label %bb6
bb6:
  store { i64, [15 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [15 x i64] }, ptr %t31, i32 0, i32 0
  store i64 18, ptr %t32
  %t34 = insertvalue { { i64, [1 x i64] } } undef, { i64, [1 x i64] } %a4, 0
  %t35 = getelementptr { i64, [15 x i64] }, ptr %t31, i32 0, i32 1
  store { { i64, [1 x i64] } } %t34, ptr %t35
  %t36 = load { i64, [15 x i64] }, ptr %t31
  store { i64, [21 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [21 x i64] }, ptr %t37, i32 0, i32 0
  store i64 0, ptr %t38
  %t39 = load %"compiler/source:Span", ptr %l17
  %t40 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t39, 0
  %t41 = load %"compiler/mir:Lvalue", ptr %l19
  %t42 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t40, %"compiler/mir:Lvalue" %t41, 1
  %t44 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t42, { i64, [15 x i64] } %t36, 2
  %t45 = getelementptr { i64, [21 x i64] }, ptr %t37, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t44, ptr %t45
  %t46 = load { i64, [21 x i64] }, ptr %t37
  %t48 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t46, ptr %t48
  %t49 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t49, ptr %t48)
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l2, !tbaa !24
  %t53 = load %"compiler/source:Span", ptr %l5
  %t57 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %t51, i64 %t52, i1 true, %"compiler/source:Span" %t53)
  store i32 %t57, ptr %l27
  br label %bb8
bb8:
  %t58 = load i32, ptr %l27, !tbaa !23
  store i32 %t58, ptr %l6, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l28, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t60, ptr %l29
  %t61 = load i32, ptr %l1, !tbaa !23
  %t63 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t61)
  store %"compiler/mir:Lvalue" %t63, ptr %l31
  br label %bb9
bb9:
  %t64 = load { i64, [15 x i64] }, ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [21 x i64] }, ptr %t65, i32 0, i32 0
  store i64 0, ptr %t66
  %t67 = load %"compiler/source:Span", ptr %l29
  %t68 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t67, 0
  %t69 = load %"compiler/mir:Lvalue", ptr %l31
  %t70 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t68, %"compiler/mir:Lvalue" %t69, 1
  %t72 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t70, { i64, [15 x i64] } %t64, 2
  %t73 = getelementptr { i64, [21 x i64] }, ptr %t65, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t72, ptr %t73
  %t74 = load { i64, [21 x i64] }, ptr %t65
  %t76 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t74, ptr %t76
  %t77 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t77, ptr %t76)
  br label %bb10
bb10:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %t79, i32 %t80)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashErr(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, [4 x i64] }
  %l25 = alloca i32
  %l36 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i32
  %l43 = alloca { i64, [4 x i64] }
  %l46 = alloca { i64, [4 x i64] }
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i32
  %l53 = alloca { i64, [4 x i64] }
  %l55 = alloca { i64, [4 x i64] }
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, [4 x i64] }
  %l59 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca i32
  %l62 = alloca { i64, [4 x i64] }
  %l64 = alloca { i64, [4 x i64] }
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, [4 x i64] }
  %l71 = alloca i32
  %l72 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/mir:Lvalue"
  %l76 = alloca ptr
  %l78 = alloca { i64, [4 x i64] }
  %l80 = alloca { i64, [4 x i64] }
  %l86 = alloca i32
  %l87 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca { i64, ptr }
  %l97 = alloca i64
  %l100 = alloca i64
  %l118 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l123 = alloca i32
  %l124 = alloca i32
  %l127 = alloca ptr
  %l130 = alloca i64
  %l131 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l135 = alloca ptr
  %l138 = alloca i32
  %l140 = alloca { i64, ptr }
  %l143 = alloca i64
  %l144 = alloca ptr
  %l145 = alloca i32
  %l146 = alloca i32
  %l147 = alloca { i64, [4 x i64] }
  %l151 = alloca { i64, [4 x i64] }
  %l152 = alloca { i64, ptr }
  %l154 = alloca { i64, [4 x i64] }
  %l157 = alloca i32
  %l160 = alloca i32
  %l168 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca i32
  %l171 = alloca i32
  %l174 = alloca { i64, [4 x i64] }
  %l176 = alloca { i64, ptr }
  %l178 = alloca { i64, [4 x i64] }
  %l180 = alloca { i64, [4 x i64] }
  %l181 = alloca ptr
  %l182 = alloca %"compiler/source:Span"
  %l184 = alloca %"compiler/mir:Lvalue"
  %l189 = alloca ptr
  %l191 = alloca { i64, ptr }
  %l194 = alloca i32
  %l195 = alloca i32
  %l199 = alloca ptr
  %l202 = alloca %"compiler/lower:pl"
  %l206 = alloca i64
  %l208 = alloca %"compiler/lower:pl"
  %l209 = alloca ptr
  %l210 = alloca i32
  %l215 = alloca { i64, [4 x i64] }
  %l228 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t34 = alloca { i64, [15 x i64] }, align 8
  %t128 = alloca { i64, [15 x i64] }, align 8
  %t134 = alloca { i64, [21 x i64] }, align 8
  %t336 = alloca { i64, [8 x i64] }, align 8
  %t392 = alloca { i64, [15 x i64] }, align 8
  %t398 = alloca { i64, [21 x i64] }, align 8
  %t436 = alloca { i64, [2 x i64] }, align 8
  %t451 = alloca { i64, [1 x i64] }, align 8
  %t501 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l5, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load %"compiler/source:Span", ptr %l3
  %t22 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t14, { i64, [4 x i64] } %a1, i32 %t16, %"compiler/source:Span" %t17)
  store i32 %t22, ptr %l36
  br label %bb1
bb1:
  %t23 = load i32, ptr %l36, !tbaa !23
  store i32 %t23, ptr %l6, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l37, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l38, !tbaa !29
  %t26 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t26, ptr %l39, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l6, !tbaa !23
  %t29 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %t27, i32 %t28, i32 %t29)
  store { i64, [4 x i64] } %t33, ptr %l43
  br label %bb2
bb2:
  store { i64, [15 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [15 x i64] }, ptr %t34, i32 0, i32 0
  store i64 0, ptr %t35
  %t36 = load { i64, [4 x i64] }, ptr %l43
  %t37 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t36, 0
  %t38 = getelementptr { i64, [15 x i64] }, ptr %t34, i32 0, i32 1
  store { { i64, [4 x i64] } } %t37, ptr %t38
  %t39 = load { i64, [15 x i64] }, ptr %t34
  %t40 = load %"compiler/source:Span", ptr %l3
  %t41 = load ptr, ptr %l38, !tbaa !29
  %t42 = load i32, ptr %l39, !tbaa !23
  %t45 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t41, i32 %t42, { i64, [15 x i64] } %t39, %"compiler/source:Span" %t40)
  store { i64, [4 x i64] } %t45, ptr %l46
  br label %bb3
bb3:
  %t46 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t47 = load %"compiler/source:Span", ptr %l3
  %t48 = load ptr, ptr %l37, !tbaa !29
  %t49 = load { i64, [4 x i64] }, ptr %l46
  %t52 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t48, { i64, [4 x i64] } %t49, i32 %t46, %"compiler/source:Span" %t47)
  store { i64, [4 x i64] } %t52, ptr %l49
  br label %bb4
bb4:
  %t53 = load { i64, [4 x i64] }, ptr %l49
  store { i64, [4 x i64] } %t53, ptr %l7
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l50, !tbaa !29
  store i32 9, ptr %l51
  %t55 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t55, ptr %l52, !tbaa !23
  %t56 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t56, ptr %l53
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t57, i64 16)
  store { i64, [4 x i64] } %t59, ptr %l55
  br label %bb5
bb5:
  %t60 = mul i64 2, 40
  %t61 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 2, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l56, !tbaa !27
  %t64 = load { i64, [4 x i64] }, ptr %l53
  %t65 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t66, i64 0
  store { i64, [4 x i64] } %t64, ptr %t67
  %t68 = load { i64, [4 x i64] }, ptr %l55
  %t69 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t70, i64 1
  store { i64, [4 x i64] } %t68, ptr %t71
  %t72 = load %"compiler/source:Span", ptr %l3
  %t73 = load ptr, ptr %l50, !tbaa !29
  %t74 = load i32, ptr %l51, !range !{i32 0, i32 52}
  %t75 = load i32, ptr %l52, !tbaa !23
  %t76 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t78 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t73, i32 %t74, i32 %t75, { i64, ptr } %t76, %"compiler/source:Span" %t72)
  store { i64, [4 x i64] } %t78, ptr %l58
  br label %bb6
bb6:
  %t79 = load { i64, [4 x i64] }, ptr %l58
  store { i64, [4 x i64] } %t79, ptr %l8
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l59, !tbaa !29
  store i32 10, ptr %l60
  %t81 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t81, ptr %l61, !tbaa !23
  %t82 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t82, ptr %l62
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t83, i64 65535)
  store { i64, [4 x i64] } %t85, ptr %l64
  br label %bb7
bb7:
  %t86 = mul i64 2, 40
  %t87 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 2, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l65, !tbaa !27
  %t90 = load { i64, [4 x i64] }, ptr %l62
  %t91 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t92, i64 0
  store { i64, [4 x i64] } %t90, ptr %t93
  %t94 = load { i64, [4 x i64] }, ptr %l64
  %t95 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t96, i64 1
  store { i64, [4 x i64] } %t94, ptr %t97
  %t98 = load %"compiler/source:Span", ptr %l3
  %t99 = load ptr, ptr %l59, !tbaa !29
  %t100 = load i32, ptr %l60, !range !{i32 0, i32 52}
  %t101 = load i32, ptr %l61, !tbaa !23
  %t102 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t104 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t99, i32 %t100, i32 %t101, { i64, ptr } %t102, %"compiler/source:Span" %t98)
  store { i64, [4 x i64] } %t104, ptr %l67
  br label %bb8
bb8:
  %t105 = load { i64, [4 x i64] }, ptr %l67
  store { i64, [4 x i64] } %t105, ptr %l9
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t108 = load %"compiler/source:Span", ptr %l3
  %t112 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t106, i32 %t107, %"compiler/source:Span" %t108)
  store i32 %t112, ptr %l71
  br label %bb9
bb9:
  %t113 = load i32, ptr %l71, !tbaa !23
  store i32 %t113, ptr %l10, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l72, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t115, ptr %l73
  %t116 = load i32, ptr %l10, !tbaa !23
  %t118 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t116)
  store %"compiler/mir:Lvalue" %t118, ptr %l75
  br label %bb10
bb10:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l76, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t120, i64 0)
  store { i64, [4 x i64] } %t122, ptr %l78
  br label %bb11
bb11:
  %t123 = load %"compiler/source:Span", ptr %l3
  %t124 = load ptr, ptr %l76, !tbaa !29
  %t125 = load { i64, [4 x i64] }, ptr %l78
  %t127 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %t124, { i64, [4 x i64] } %t125, %"compiler/source:Span" %t123)
  store { i64, [4 x i64] } %t127, ptr %l80
  br label %bb12
bb12:
  store { i64, [15 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [15 x i64] }, ptr %t128, i32 0, i32 0
  store i64 0, ptr %t129
  %t130 = load { i64, [4 x i64] }, ptr %l80
  %t131 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t130, 0
  %t132 = getelementptr { i64, [15 x i64] }, ptr %t128, i32 0, i32 1
  store { { i64, [4 x i64] } } %t131, ptr %t132
  %t133 = load { i64, [15 x i64] }, ptr %t128
  store { i64, [21 x i64] } zeroinitializer, ptr %t134
  %t135 = getelementptr { i64, [21 x i64] }, ptr %t134, i32 0, i32 0
  store i64 0, ptr %t135
  %t136 = load %"compiler/source:Span", ptr %l73
  %t137 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t136, 0
  %t138 = load %"compiler/mir:Lvalue", ptr %l75
  %t139 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t137, %"compiler/mir:Lvalue" %t138, 1
  %t141 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t139, { i64, [15 x i64] } %t133, 2
  %t142 = getelementptr { i64, [21 x i64] }, ptr %t134, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t141, ptr %t142
  %t143 = load { i64, [21 x i64] }, ptr %t134
  %t145 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t143, ptr %t145
  %t146 = load ptr, ptr %l72, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t146, ptr %t145)
  br label %bb13
bb13:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/lower:lowering", ptr %t148, i32 0, i32 3
  %t152 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t150)
  store i32 %t152, ptr %l86
  br label %bb14
bb14:
  %t153 = load i32, ptr %l86, !tbaa !23
  store i32 %t153, ptr %l11, !tbaa !23
  %t154 = load ptr, ptr %l4, !tbaa !29
  store ptr %t154, ptr %l87, !tbaa !29
  %t155 = load ptr, ptr %l4, !tbaa !29
  %t156 = load i32, ptr %l2, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l90
  br label %bb15
bb15:
  %t160 = load ptr, ptr %l87, !tbaa !29
  %t161 = load i32, ptr %l90, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t160, i32 %t161)
  store { i64, ptr } %t162, ptr %l91
  br label %bb16
bb16:
  %t163 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t163, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  store i64 %t166, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t168 = load i64, ptr %l14, !tbaa !24
  %t169 = load i64, ptr %l13, !tbaa !24
  %t172 = icmp sgt i64 %t168, %t169
  br i1 %t172, label %bb17, label %bb18
bb17:
  %t174 = load i64, ptr %l15, !tbaa !24
  %t176 = icmp sgt i64 %t174, 0
  br i1 %t176, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb22
bb19:
  %t178 = load i64, ptr %l14, !tbaa !24
  %t179 = load i64, ptr %l13, !tbaa !24
  %t182 = sub i64 %t178, %t179
  %t183 = load i64, ptr %l15, !tbaa !24
  %t186 = add i64 %t182, %t183
  %t188 = sub i64 %t186, 1
  %t189 = load i64, ptr %l15, !tbaa !24
  %t192 = sdiv i64 %t188, %t189
  store i64 %t192, ptr %l100, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb21
bb21:
  %t194 = load i64, ptr %l100, !tbaa !24
  store i64 %t194, ptr %l97, !tbaa !24
  br label %bb22
bb22:
  %t195 = load i64, ptr %l97, !tbaa !24
  store i64 %t195, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s2
  %t196 = load i64, ptr %l17, !tbaa !24
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = icmp slt i64 %t196, %t197
  %t202 = xor i1 %t200, true
  br i1 %t202, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb58
bb25:
  br label %bb26
bb26:
  %t204 = load i64, ptr %l13, !tbaa !24
  %t205 = load i64, ptr %l17, !tbaa !24
  %t206 = load i64, ptr %l15, !tbaa !24
  %t209 = mul i64 %t205, %t206
  %t212 = add i64 %t204, %t209
  store i64 %t212, ptr %l18, !tbaa !24
  %t214 = load ptr, ptr %l4, !tbaa !29
  store ptr %t214, ptr %l118, !tbaa !29
  %t215 = load ptr, ptr %l4, !tbaa !29
  %t216 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t216, ptr %l120, !tbaa !27
  %t217 = load i64, ptr %l18, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr i32, ptr %t220, i64 %t217
  %t222 = load i32, ptr %t221, !tbaa !33
  %t225 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t215, i32 %t222)
  store i32 %t225, ptr %l123
  br label %bb27
bb27:
  %t226 = load ptr, ptr %l118, !tbaa !29
  %t227 = load i32, ptr %l123, !tbaa !23
  %t228 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t228, ptr %l124
  br label %bb28
bb28:
  %t229 = load i32, ptr %l124, !tbaa !23
  store i32 %t229, ptr %l19, !tbaa !23
  %t230 = load ptr, ptr %l5, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 0
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = getelementptr %"compiler/load:Loader", ptr %t233, i32 0, i32 10
  store ptr %t235, ptr %l127, !tbaa !29
  %t236 = load ptr, ptr %l4, !tbaa !29
  %t237 = load i32, ptr %l19, !tbaa !23
  %t240 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t236, i32 %t237)
  store i64 %t240, ptr %l130
  br label %bb29
bb29:
  %t241 = load ptr, ptr %l127, !tbaa !29
  %t242 = load i64, ptr %l130, !tbaa !24
  %t243 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t241, i64 %t242)
  store ptr %t243, ptr %l131
  br label %bb30
bb30:
  %t244 = load ptr, ptr %l131, !tbaa !29
  %t246 = getelementptr %"compiler/load:Module", ptr %t244, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l133, !tbaa !27
  %t248 = load ptr, ptr %l4, !tbaa !29
  %t250 = getelementptr %"compiler/types:Table", ptr %t248, i32 0, i32 0
  %t251 = load ptr, ptr %t250, !tbaa !29
  store ptr %t251, ptr %l135, !tbaa !29
  %t252 = load ptr, ptr %l4, !tbaa !29
  %t253 = load i32, ptr %l19, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t252, i32 %t253)
  store i32 %t256, ptr %l138
  br label %bb31
bb31:
  %t257 = load ptr, ptr %l135, !tbaa !29
  %t258 = call ptr @__olang_scope_of(ptr %t257, ptr null)
  %t259 = ptrtoint ptr %t258 to i64
  %t261 = inttoptr i64 %t259 to ptr
  %t262 = load ptr, ptr %l135, !tbaa !29
  %t263 = load i32, ptr %l138, !tbaa !23
  %t264 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t261, ptr %s2, ptr %t262, i32 %t263)
  store { i64, ptr } %t264, ptr %l140
  br label %bb32
bb32:
  %t265 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t271 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 1
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t274 = add i64 %t270, %t273
  %t275 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t274)
  call void @olang_textcopy(ptr %t275, ptr %t266, i64 %t267)
  %t276 = getelementptr i8, ptr %t275, i64 %t267
  call void @olang_textcopy(ptr %t276, ptr %t268, i64 %t269)
  %t277 = getelementptr i8, ptr %t276, i64 %t269
  call void @olang_textcopy(ptr %t277, ptr %t272, i64 %t273)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t275, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = extractvalue { i64, ptr } %t279, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t288 = call i64 @compiler_2flower_2estableKey(ptr %s2, { i64, ptr } %t286)
  store i64 %t288, ptr %l143
  br label %bb33
bb33:
  %t289 = load i64, ptr %l143, !tbaa !24
  store i64 %t289, ptr %l20, !tbaa !24
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l144, !tbaa !29
  store i32 13, ptr %l145
  %t291 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t291, ptr %l146, !tbaa !23
  %t292 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } %t292, ptr %l147
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i64, ptr %l18, !tbaa !24
  %t296 = add i64 %t294, 1
  %t299 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t293, i64 %t296)
  store { i64, [4 x i64] } %t299, ptr %l151
  br label %bb34
bb34:
  %t300 = mul i64 2, 40
  %t301 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t300)
  %t302 = insertvalue { i64, ptr } undef, i64 2, 0
  %t303 = insertvalue { i64, ptr } %t302, ptr %t301, 1
  store { i64, ptr } %t303, ptr %l152, !tbaa !27
  %t304 = load { i64, [4 x i64] }, ptr %l147
  %t305 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr { i64, [4 x i64] }, ptr %t306, i64 0
  store { i64, [4 x i64] } %t304, ptr %t307
  %t308 = load { i64, [4 x i64] }, ptr %l151
  %t309 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr { i64, [4 x i64] }, ptr %t310, i64 1
  store { i64, [4 x i64] } %t308, ptr %t311
  %t312 = load %"compiler/source:Span", ptr %l3
  %t313 = load ptr, ptr %l144, !tbaa !29
  %t314 = load i32, ptr %l145, !range !{i32 0, i32 52}
  %t315 = load i32, ptr %l146, !tbaa !23
  %t316 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t318 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t313, i32 %t314, i32 %t315, { i64, ptr } %t316, %"compiler/source:Span" %t312)
  store { i64, [4 x i64] } %t318, ptr %l154
  br label %bb35
bb35:
  %t319 = load { i64, [4 x i64] }, ptr %l154
  store { i64, [4 x i64] } %t319, ptr %l21
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/lower:lowering", ptr %t320, i32 0, i32 3
  %t324 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t322)
  store i32 %t324, ptr %l157
  br label %bb36
bb36:
  %t325 = load i32, ptr %l157, !tbaa !23
  store i32 %t325, ptr %l22, !tbaa !23
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/lower:lowering", ptr %t326, i32 0, i32 3
  %t330 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t328)
  store i32 %t330, ptr %l160
  br label %bb37
bb37:
  %t331 = load i32, ptr %l160, !tbaa !23
  store i32 %t331, ptr %l23, !tbaa !23
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load { i64, [4 x i64] }, ptr %l21
  %t334 = load i32, ptr %l22, !tbaa !23
  %t335 = load i32, ptr %l23, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t336
  %t337 = getelementptr { i64, [8 x i64] }, ptr %t336, i32 0, i32 0
  store i64 2, ptr %t337
  %t339 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t333, 0
  %t341 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t339, i32 %t334, 1
  %t343 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t341, i32 %t335, 2
  %t344 = getelementptr { i64, [8 x i64] }, ptr %t336, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t343, ptr %t344
  %t345 = load { i64, [8 x i64] }, ptr %t336
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t332, { i64, [8 x i64] } %t345)
  br label %bb38
bb38:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t348, i32 %t349)
  br label %bb39
bb39:
  %t352 = load ptr, ptr %l0, !tbaa !29
  store ptr %t352, ptr %l168, !tbaa !29
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l169, !tbaa !29
  store i32 12, ptr %l170
  %t354 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t354, ptr %l171, !tbaa !23
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i64, ptr %l20, !tbaa !24
  %t359 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t355, i64 %t356)
  store { i64, [4 x i64] } %t359, ptr %l174
  br label %bb40
bb40:
  %t360 = load { i64, [4 x i64] }, ptr %l9
  %t361 = mul i64 2, 40
  %t362 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t361)
  %t363 = insertvalue { i64, ptr } undef, i64 2, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  store { i64, ptr } %t364, ptr %l176, !tbaa !27
  %t365 = load { i64, [4 x i64] }, ptr %l174
  %t366 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr { i64, [4 x i64] }, ptr %t367, i64 0
  store { i64, [4 x i64] } %t365, ptr %t368
  %t370 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr { i64, [4 x i64] }, ptr %t371, i64 1
  store { i64, [4 x i64] } %t360, ptr %t372
  %t373 = load %"compiler/source:Span", ptr %l3
  %t374 = load ptr, ptr %l169, !tbaa !29
  %t375 = load i32, ptr %l170, !range !{i32 0, i32 52}
  %t376 = load i32, ptr %l171, !tbaa !23
  %t377 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t379 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t374, i32 %t375, i32 %t376, { i64, ptr } %t377, %"compiler/source:Span" %t373)
  store { i64, [4 x i64] } %t379, ptr %l178
  br label %bb41
bb41:
  %t380 = load %"compiler/source:Span", ptr %l3
  %t381 = load ptr, ptr %l168, !tbaa !29
  %t382 = load { i64, [4 x i64] }, ptr %l178
  %t384 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %t381, { i64, [4 x i64] } %t382, %"compiler/source:Span" %t380)
  store { i64, [4 x i64] } %t384, ptr %l180
  br label %bb42
bb42:
  %t385 = load { i64, [4 x i64] }, ptr %l180
  store { i64, [4 x i64] } %t385, ptr %l24
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l181, !tbaa !29
  %t387 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t387, ptr %l182
  %t388 = load i32, ptr %l10, !tbaa !23
  %t390 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t388)
  store %"compiler/mir:Lvalue" %t390, ptr %l184
  br label %bb43
bb43:
  %t391 = load { i64, [4 x i64] }, ptr %l24
  store { i64, [15 x i64] } zeroinitializer, ptr %t392
  %t393 = getelementptr { i64, [15 x i64] }, ptr %t392, i32 0, i32 0
  store i64 0, ptr %t393
  %t395 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t391, 0
  %t396 = getelementptr { i64, [15 x i64] }, ptr %t392, i32 0, i32 1
  store { { i64, [4 x i64] } } %t395, ptr %t396
  %t397 = load { i64, [15 x i64] }, ptr %t392
  store { i64, [21 x i64] } zeroinitializer, ptr %t398
  %t399 = getelementptr { i64, [21 x i64] }, ptr %t398, i32 0, i32 0
  store i64 0, ptr %t399
  %t400 = load %"compiler/source:Span", ptr %l182
  %t401 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t400, 0
  %t402 = load %"compiler/mir:Lvalue", ptr %l184
  %t403 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t401, %"compiler/mir:Lvalue" %t402, 1
  %t405 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t403, { i64, [15 x i64] } %t397, 2
  %t406 = getelementptr { i64, [21 x i64] }, ptr %t398, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t405, ptr %t406
  %t407 = load { i64, [21 x i64] }, ptr %t398
  %t409 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t407, ptr %t409
  %t410 = load ptr, ptr %l181, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t410, ptr %t409)
  br label %bb44
bb44:
  %t412 = load ptr, ptr %l5, !tbaa !29
  store ptr %t412, ptr %l189, !tbaa !29
  %t413 = load ptr, ptr %l4, !tbaa !29
  %t414 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t414, ptr %l191, !tbaa !27
  %t415 = load i64, ptr %l18, !tbaa !24
  %t417 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = getelementptr i32, ptr %t418, i64 %t415
  %t420 = load i32, ptr %t419, !tbaa !33
  %t423 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t413, i32 %t420)
  store i32 %t423, ptr %l194
  br label %bb45
bb45:
  %t424 = load ptr, ptr %l189, !tbaa !29
  %t425 = load i32, ptr %l194, !tbaa !23
  %t426 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t424, i32 %t425)
  store i32 %t426, ptr %l195
  br label %bb46
bb46:
  %t427 = load i32, ptr %l195, !tbaa !23
  store i32 %t427, ptr %l25, !tbaa !23
  %t428 = load i32, ptr %l25, !tbaa !23
  %t429 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t432 = icmp ne i32 %t428, %t429
  br i1 %t432, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s4
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l199, !tbaa !29
  %t435 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t436
  %t437 = getelementptr { i64, [2 x i64] }, ptr %t436, i32 0, i32 0
  store i64 1, ptr %t437
  %t439 = insertvalue { i32 } undef, i32 %t435, 0
  %t440 = getelementptr { i64, [2 x i64] }, ptr %t436, i32 0, i32 1
  store { i32 } %t439, ptr %t440
  %t441 = load { i64, [2 x i64] }, ptr %t436
  %t443 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s4, { i64, [2 x i64] } %t441)
  store %"compiler/lower:pl" %t443, ptr %l202
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t444 = load ptr, ptr %l5, !tbaa !29
  %t445 = load i32, ptr %l2, !tbaa !23
  %t446 = load i64, ptr %l18, !tbaa !24
  %t450 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t444, i32 %t445, i64 %t446)
  store i64 %t450, ptr %l206
  br label %bb50
bb50:
  store { i64, [1 x i64] } zeroinitializer, ptr %t451
  %t452 = getelementptr { i64, [1 x i64] }, ptr %t451, i32 0, i32 0
  store i64 0, ptr %t452
  %t453 = load i64, ptr %l206, !tbaa !24
  %t454 = insertvalue { i64 } undef, i64 %t453, 0
  %t455 = getelementptr { i64, [1 x i64] }, ptr %t451, i32 0, i32 1
  store { i64 } %t454, ptr %t455
  %t456 = load { i64, [1 x i64] }, ptr %t451
  %t457 = load ptr, ptr %l199, !tbaa !29
  %t458 = load %"compiler/lower:pl", ptr %l202
  %t460 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s4, ptr %s4, ptr %t457, %"compiler/lower:pl" %t458, { i64, [1 x i64] } %t456)
  store %"compiler/lower:pl" %t460, ptr %l208
  br label %bb51
bb51:
  %t461 = load %"compiler/lower:pl", ptr %l208
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l209, !tbaa !29
  %t463 = load i32, ptr %l10, !tbaa !23
  store i32 %t463, ptr %l210, !tbaa !23
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = load i32, ptr %l25, !tbaa !23
  %t467 = load %"compiler/source:Span", ptr %l3
  %t472 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %s4, ptr %t464, %"compiler/lower:pl" %t461, i32 %t466, %"compiler/source:Span" %t467, i1 false)
  store { i64, [4 x i64] } %t472, ptr %l215
  br label %bb52
bb52:
  %t473 = load %"compiler/source:Span", ptr %l3
  %t474 = load ptr, ptr %l209, !tbaa !29
  %t475 = load i32, ptr %l210, !tbaa !23
  %t476 = load { i64, [4 x i64] }, ptr %l215
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %v0, ptr %t474, i32 %t475, { i64, [4 x i64] } %t476, %"compiler/source:Span" %t473)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb54:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t478, i32 %t479)
  br label %bb55
bb55:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t482, i32 %t483)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb57:
  %t486 = load i64, ptr %l17, !tbaa !24
  %t488 = add i64 %t486, 1
  store i64 %t488, ptr %l17, !tbaa !24
  br label %bb23
bb58:
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t491 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t490, i32 %t491)
  br label %bb59
bb59:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t494, i32 %t495)
  br label %bb60
bb60:
  %t498 = load i32, ptr %l10, !tbaa !23
  %t500 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t498)
  store %"compiler/mir:Lvalue" %t500, ptr %l228
  br label %bb61
bb61:
  store { i64, [4 x i64] } zeroinitializer, ptr %t501
  %t502 = getelementptr { i64, [4 x i64] }, ptr %t501, i32 0, i32 0
  store i64 1, ptr %t502
  %t503 = load %"compiler/mir:Lvalue", ptr %l228
  %t504 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t503, 0
  %t505 = getelementptr { i64, [4 x i64] }, ptr %t501, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t504, ptr %t505
  %t506 = load { i64, [4 x i64] }, ptr %t501
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t506, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldMadeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l41 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
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
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 10
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 1
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t28, ptr %t29, ptr %t30)
  store i1 %t34, ptr %l21
  br label %bb14
bb14:
  %t35 = load i1, ptr %l21, !tbaa !21
  store i1 %t35, ptr %l5, !tbaa !21
  br label %bb33
bb15:
  %t36 = load ptr, ptr %l2, !tbaa !29
  store ptr %t36, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t37 = load ptr, ptr %l22, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 9
  store i1 %t43, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb18, label %bb19
bb18:
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t47, i32 0, i32 2
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 52}
  store i32 %t49, ptr %l3
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr { i64, [5 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t53, i32 0, i32 4
  %t55 = load { i64, ptr }, ptr %t54
  store { i64, ptr } %t55, ptr %l4, !tbaa !27
  br label %bb20
bb19:
  br label %bb28
bb20:
  %t57 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t59 = trunc i64 20 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l32, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb23
bb23:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb24, label %bb25
bb24:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t71, ptr %l39, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 0
  %t75 = load ptr, ptr %t74, !tbaa !39
  %t79 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldMadeOf(ptr %v0, ptr %v1, ptr %v2, ptr %t69, ptr %t70, ptr %t75)
  store i1 %t79, ptr %l41
  br label %bb26
bb25:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb27
bb26:
  %t80 = load i1, ptr %l41, !tbaa !21
  store i1 %t80, ptr %l36, !tbaa !21
  br label %bb27
bb27:
  %t81 = load i1, ptr %l36, !tbaa !21
  store i1 %t81, ptr %l5, !tbaa !21
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_48d1beea25ddfa94_a3fe957274d91168)
  unreachable
bb33:
  %t82 = load i1, ptr %l5, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisChar(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i1
  %l46 = alloca i32
  %l49 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i32
  %l57 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i32
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
  store i32 %a1, ptr %l3, !tbaa !23
  store i64 0, ptr %l4, !tbaa !24
  store i64 16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l6, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l19, !tbaa !24
  store i64 %t34, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l16, !tbaa !24
  store i64 %t35, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb31
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l9, !tbaa !24
  %t54 = load ptr, ptr %l2, !tbaa !29
  store ptr %t54, ptr %l37, !tbaa !29
  %t55 = load i32, ptr %l3, !tbaa !23
  store i32 %t55, ptr %l38, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2echar(ptr %v0, ptr %t59)
  store i32 %t61, ptr %l41
  br label %bb11
bb11:
  %t62 = load ptr, ptr %l37, !tbaa !29
  %t63 = load i32, ptr %l38, !tbaa !23
  %t64 = load i32, ptr %l41, !tbaa !23
  %t65 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t62, i32 %t63, i32 %t64)
  store i1 %t65, ptr %l42
  br label %bb12
bb12:
  %t66 = load i1, ptr %l42, !tbaa !21
  br i1 %t66, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t69 = load i32, ptr %l3, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l46
  br label %bb16
bb16:
  %t73 = load i32, ptr %l46, !range !{i32 0, i32 33}
  %t75 = trunc i64 18 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb17, label %bb18
bb17:
  %t78 = load ptr, ptr %l2, !tbaa !29
  store ptr %t78, ptr %l50, !tbaa !29
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t80 = load i32, ptr %l3, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l53
  br label %bb19
bb18:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb21
bb19:
  %t84 = load ptr, ptr %l50, !tbaa !29
  %t85 = load i32, ptr %l53, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t86, ptr %l54
  br label %bb20
bb20:
  %t87 = load i32, ptr %l54, !range !{i32 0, i32 6}
  %t89 = trunc i64 4 to i32
  %t90 = icmp eq i32 %t87, %t89
  store i1 %t90, ptr %l49, !tbaa !21
  br label %bb21
bb21:
  %t92 = load i1, ptr %l49, !tbaa !21
  br i1 %t92, label %bb22, label %bb23
bb22:
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t94 = load i32, ptr %l3, !tbaa !23
  %t97 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t93, i32 %t94)
  store i1 %t97, ptr %l60
  br label %bb24
bb23:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb25
bb24:
  %t98 = load i1, ptr %l60, !tbaa !21
  store i1 %t98, ptr %l57, !tbaa !21
  br label %bb25
bb25:
  %t99 = load i1, ptr %l57, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb26, label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t104 = load i32, ptr %l3, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l65
  br label %bb29
bb29:
  %t108 = load i32, ptr %l65, !tbaa !23
  store i32 %t108, ptr %l3, !tbaa !23
  br label %bb30
bb30:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l8, !tbaa !24
  br label %bb7
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisMain(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l1, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 1
  %t15 = load { i64, [2 x i64] }, ptr %t14
  store { i64, [2 x i64] } %t15, ptr %l2
  %t17 = load { i64, [2 x i64] }, ptr %l2
  %t19 = extractvalue { i64, [2 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 0
  br i1 %t20, label %bb1, label %bb2
bb1:
  %t22 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t23 = getelementptr { i64 }, ptr %t22, i32 0, i32 0
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l13, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t27, i64 %t28)
  store i64 %t31, ptr %l16
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l13, !tbaa !29
  %t33 = load i64, ptr %l16, !tbaa !24
  %t34 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %t32, i64 %t33)
  store i1 %t34, ptr %l17
  br label %bb5
bb5:
  %t35 = load i1, ptr %l17, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_563c1466c1100e02_3d75491115d3396)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinFailed(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca %"compiler/lower:level"
  %l26 = alloca %"compiler/lower:level"
  %l27 = alloca i32
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca i64
  %l41 = alloca %"compiler/lower:tryCtx"
  %l46 = alloca ptr
  %l47 = alloca %"compiler/lower:tryCtx"
  %l50 = alloca %"compiler/lower:tryCtx"
  %l51 = alloca i32
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l82 = alloca i32
  %l86 = alloca ptr
  %l90 = alloca %"compiler/lower:tryCtx"
  %l92 = alloca %"compiler/lower:tryCtx"
  %l103 = alloca ptr
  %l104 = alloca i64
  %l105 = alloca %"compiler/lower:tryCtx"
  %l108 = alloca %"compiler/lower:tryCtx"
  %l109 = alloca i32
  %l111 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca %"compiler/lower:tryCtx"
  %l118 = alloca %"compiler/lower:tryCtx"
  %l119 = alloca i32
  %l121 = alloca i64
  %l125 = alloca ptr
  %l126 = alloca %"compiler/lower:level"
  %l128 = alloca %"compiler/lower:level"
  %l129 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  br label %bb2
bb2:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/lower:lowering", ptr %t3, i32 0, i32 12
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l18
  br label %bb3
bb3:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = load i64, ptr %l18, !tbaa !24
  %t11 = icmp sgt i64 %t9, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  store ptr %l6, ptr %l22, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 12
  %t19 = call { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t17)
  %t20 = extractvalue { i32, %"compiler/lower:level" } %t19, 1
  %t21 = extractvalue { i32, %"compiler/lower:level" } %t19, 0
  store i32 %t21, ptr %l27
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb8, label %ok.23, !prof !99
ok.23:
  store %"compiler/lower:level" %t20, ptr %l26
  br label %bb7
bb7:
  %t24 = load %"compiler/lower:level", ptr %l26
  store %"compiler/lower:level" %t24, ptr %l23
  br label %bb10
bb8:
  br label %bb9
bb9:
  call void @__olang_check_failed(ptr @olang_loc_ef20f52c973b68a_c1ac21606c61e00e)
  unreachable
bb10:
  %t25 = load ptr, ptr %l22, !tbaa !29
  %t26 = load %"compiler/lower:level", ptr %l23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %s0, ptr %t25, %"compiler/lower:level" %t26)
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb2
bb13:
  %t27 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l28
  br label %bb14
bb14:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %t29
  store ptr %t29, ptr %l7, !tbaa !29
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 18
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l32
  br label %bb16
bb16:
  %t36 = load i64, ptr %l32, !tbaa !24
  %t37 = icmp sgt i64 %t36, 0
  br i1 %t37, label %bb17, label %bb18
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 18
  store ptr %t41, ptr %l36, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 18
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l39
  br label %bb19
bb18:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb21
bb19:
  %t47 = load i64, ptr %l39, !tbaa !24
  %t48 = sub i64 %t47, 1
  %t49 = load ptr, ptr %l36, !tbaa !29
  %t51 = call %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %s3, ptr %t49, i64 %t48)
  store %"compiler/lower:tryCtx" %t51, ptr %l41
  br label %bb20
bb20:
  %t52 = getelementptr %"compiler/lower:tryCtx", ptr %l41, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = load i64, ptr %l1, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  store i1 %t57, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t59 = load i1, ptr %l34, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t62 = load ptr, ptr %l7, !tbaa !29
  store ptr %t62, ptr %l46, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t63, i32 0, i32 18
  %t67 = call { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t65)
  %t68 = extractvalue { i32, %"compiler/lower:tryCtx" } %t67, 1
  %t69 = extractvalue { i32, %"compiler/lower:tryCtx" } %t67, 0
  store i32 %t69, ptr %l51
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb26, label %ok.71, !prof !99
ok.71:
  store %"compiler/lower:tryCtx" %t68, ptr %l50
  br label %bb25
bb25:
  %t72 = load %"compiler/lower:tryCtx", ptr %l50
  store %"compiler/lower:tryCtx" %t72, ptr %l47
  br label %bb28
bb26:
  br label %bb27
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4cb37aee5d59facb_f2ca314d8498104f)
  unreachable
bb28:
  %t73 = load ptr, ptr %l46, !tbaa !29
  %t74 = load %"compiler/lower:tryCtx", ptr %l47
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t73, %"compiler/lower:tryCtx" %t74)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb30:
  br label %bb15
bb31:
  store i64 -1, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:lowering", ptr %t75, i32 0, i32 22
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t77)
  store i64 %t79, ptr %l54
  br label %bb32
bb32:
  %t80 = load i64, ptr %l54, !tbaa !24
  store i64 %t80, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb33, label %bb34
bb33:
  %t87 = load i64, ptr %l11, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb38
bb35:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l61, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb37
bb37:
  %t107 = load i64, ptr %l61, !tbaa !24
  store i64 %t107, ptr %l58, !tbaa !24
  br label %bb38
bb38:
  %t108 = load i64, ptr %l58, !tbaa !24
  store i64 %t108, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb39
bb39:
  %t109 = load i64, ptr %l13, !tbaa !24
  %t110 = load i64, ptr %l12, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb40, label %bb41
bb40:
  br label %bb51
bb41:
  br label %bb42
bb42:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l14, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 22
  %t130 = load i64, ptr %l14, !tbaa !24
  %t133 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t129, i64 %t130)
  store i32 %t133, ptr %l82
  br label %bb43
bb43:
  %t135 = load i32, ptr %l82, !tbaa !23
  %t137 = icmp eq i32 %t135, %a2
  br i1 %t137, label %bb44, label %bb45
bb44:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/lower:lowering", ptr %t139, i32 0, i32 18
  store ptr %t141, ptr %l86, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/lower:lowering", ptr %t142, i32 0, i32 21
  %t145 = load i64, ptr %l14, !tbaa !24
  %t148 = call %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t144, i64 %t145)
  store %"compiler/lower:tryCtx" %t148, ptr %l90
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t150 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %l90)
  store %"compiler/lower:tryCtx" %t150, ptr %l92
  br label %bb47
bb47:
  %t151 = load ptr, ptr %l86, !tbaa !29
  %t152 = load %"compiler/lower:tryCtx", ptr %l92
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t151, %"compiler/lower:tryCtx" %t152)
  br label %bb48
bb48:
  %t153 = load i64, ptr %l14, !tbaa !24
  store i64 %t153, ptr %l8, !tbaa !24
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t155 = load i64, ptr %l13, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l13, !tbaa !24
  br label %bb39
bb51:
  %t159 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edispatch(ptr %v0, ptr %t159, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/source:Span" %a5, i1 false)
  br label %bb52
bb52:
  %t167 = load i64, ptr %l8, !tbaa !24
  %t169 = icmp sge i64 %t167, 0
  br i1 %t169, label %bb53, label %bb54
bb53:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/lower:lowering", ptr %t171, i32 0, i32 21
  store ptr %t173, ptr %l103, !tbaa !29
  %t174 = load i64, ptr %l8, !tbaa !24
  store i64 %t174, ptr %l104, !tbaa !24
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/lower:lowering", ptr %t175, i32 0, i32 18
  %t179 = call { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t177)
  %t180 = extractvalue { i32, %"compiler/lower:tryCtx" } %t179, 1
  %t181 = extractvalue { i32, %"compiler/lower:tryCtx" } %t179, 0
  store i32 %t181, ptr %l109
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb56, label %ok.183, !prof !99
ok.183:
  store %"compiler/lower:tryCtx" %t180, ptr %l108
  br label %bb55
bb54:
  br label %bb60
bb55:
  %t184 = load %"compiler/lower:tryCtx", ptr %l108
  store %"compiler/lower:tryCtx" %t184, ptr %l105
  br label %bb58
bb56:
  br label %bb57
bb57:
  call void @__olang_check_failed(ptr @olang_loc_d999208a3f1ad790_f453fe23535d6e14)
  unreachable
bb58:
  %t185 = load ptr, ptr %l103, !tbaa !29
  %t186 = load i64, ptr %l104, !tbaa !24
  %t187 = load %"compiler/lower:tryCtx", ptr %l105
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eSetAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t185, i64 %t186, %"compiler/lower:tryCtx" %t187)
  br label %bb59
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t188 = load ptr, ptr %l7, !tbaa !29
  %t190 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t188)
  store i64 %t190, ptr %l111
  br label %bb62
bb62:
  %t191 = load i64, ptr %l111, !tbaa !24
  %t192 = icmp sgt i64 %t191, 0
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb63, label %bb64
bb63:
  br label %bb72
bb64:
  br label %bb65
bb65:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/lower:lowering", ptr %t196, i32 0, i32 18
  store ptr %t198, ptr %l115, !tbaa !29
  %t199 = load ptr, ptr %l7, !tbaa !29
  %t201 = call { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t199)
  %t202 = extractvalue { i32, %"compiler/lower:tryCtx" } %t201, 1
  %t203 = extractvalue { i32, %"compiler/lower:tryCtx" } %t201, 0
  store i32 %t203, ptr %l119
  %t204 = icmp ne i32 %t203, 0
  br i1 %t204, label %bb67, label %ok.205, !prof !99
ok.205:
  store %"compiler/lower:tryCtx" %t202, ptr %l118
  br label %bb66
bb66:
  %t206 = load %"compiler/lower:tryCtx", ptr %l118
  store %"compiler/lower:tryCtx" %t206, ptr %l116
  br label %bb69
bb67:
  br label %bb68
bb68:
  call void @__olang_check_failed(ptr @olang_loc_25181308607ed221_2244024027539ec5)
  unreachable
bb69:
  %t207 = load ptr, ptr %l115, !tbaa !29
  %t208 = load %"compiler/lower:tryCtx", ptr %l116
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t207, %"compiler/lower:tryCtx" %t208)
  br label %bb70
bb70:
  br label %bb71
bb71:
  br label %bb61
bb72:
  br label %bb73
bb73:
  %t210 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %s0, ptr %l6)
  store i64 %t210, ptr %l121
  br label %bb74
bb74:
  %t211 = load i64, ptr %l121, !tbaa !24
  %t212 = icmp sgt i64 %t211, 0
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb75, label %bb76
bb75:
  br label %bb84
bb76:
  br label %bb77
bb77:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/lower:lowering", ptr %t216, i32 0, i32 12
  store ptr %t218, ptr %l125, !tbaa !29
  %t220 = call { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %s0, ptr %l6)
  %t221 = extractvalue { i32, %"compiler/lower:level" } %t220, 1
  %t222 = extractvalue { i32, %"compiler/lower:level" } %t220, 0
  store i32 %t222, ptr %l129
  %t223 = icmp ne i32 %t222, 0
  br i1 %t223, label %bb79, label %ok.224, !prof !99
ok.224:
  store %"compiler/lower:level" %t221, ptr %l128
  br label %bb78
bb78:
  %t225 = load %"compiler/lower:level", ptr %l128
  store %"compiler/lower:level" %t225, ptr %l126
  br label %bb81
bb79:
  br label %bb80
bb80:
  call void @__olang_check_failed(ptr @olang_loc_178c6682d84dabc6_c363cd3d6310fdb2)
  unreachable
bb81:
  %t226 = load ptr, ptr %l125, !tbaa !29
  %t227 = load %"compiler/lower:level", ptr %l126
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t226, %"compiler/lower:level" %t227)
  br label %bb82
bb82:
  br label %bb83
bb83:
  br label %bb73
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkWalk(ptr %v0, ptr %a0, i32 %a1, { i64, [7 x i64] } %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [7 x i64] }
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, [1 x i64] }
  %l13 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i1
  %l23 = alloca { i64, ptr }
  %l29 = alloca i64
  %l32 = alloca i64
  %l54 = alloca i1
  %l65 = alloca { i64, [1 x i64] }
  %l73 = alloca %"compiler/mir:ScopeInfo"
  %l77 = alloca i1
  %l80 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a2, ptr %l2
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [7 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  %t10 = extractvalue { i64, [2 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 0
  store i1 %t11, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_54c4e502471f1575_5d803130ca2c9231)
  unreachable
bb12:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t17, i32 %a3)
  store { i64, ptr } %t21, ptr %l23
  br label %bb13
bb13:
  %t22 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t22, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t27 = load i64, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb19
bb16:
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l32, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb18
bb18:
  %t53 = load i64, ptr %l32, !tbaa !24
  store i64 %t53, ptr %l29, !tbaa !24
  br label %bb19
bb19:
  %t54 = load i64, ptr %l29, !tbaa !24
  store i64 %t54, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t55 = load i64, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb21, label %bb22
bb21:
  br label %bb53
bb22:
  br label %bb23
bb23:
  %t63 = load i64, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l10, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l11, !tbaa !24
  %t73 = load i64, ptr %l11, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i64, ptr %t76, i64 %t73
  %t78 = load i64, ptr %t77, !tbaa !34
  %t79 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t82 = icmp ne i64 %t78, %t79
  br i1 %t82, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb26
bb25:
  %t84 = load i64, ptr %l11, !tbaa !24
  %t85 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t91 = icmp sge i64 %t84, %t88
  store i1 %t91, ptr %l54, !tbaa !21
  br label %bb26
bb26:
  %t93 = load i1, ptr %l54, !tbaa !21
  br i1 %t93, label %bb27, label %bb28
bb27:
  br label %bb52
bb28:
  br label %bb29
bb29:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 3
  %t97 = getelementptr %"compiler/mir:Fn", ptr %t96, i32 0, i32 12
  %t98 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = sext i32 %t99 to i64
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t108 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t97, i64 %t105)
  store { i64, [1 x i64] } %t108, ptr %l65
  br label %bb30
bb30:
  %t109 = load { i64, [1 x i64] }, ptr %l65
  store { i64, [1 x i64] } %t109, ptr %l12
  %t110 = load { i64, [1 x i64] }, ptr %l12
  %t112 = extractvalue { i64, [1 x i64] } %t110, 0
  %t113 = icmp eq i64 %t112, 0
  br i1 %t113, label %bb31, label %bb32
bb31:
  %t115 = getelementptr { i64, [1 x i64] }, ptr %l12, i32 0, i32 1
  %t116 = getelementptr { i32 }, ptr %t115, i32 0, i32 0
  %t117 = load i32, ptr %t116
  store i32 %t117, ptr %l13, !tbaa !23
  br label %bb33
bb32:
  br label %bb46
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lower:lowering", ptr %t119, i32 0, i32 3
  %t122 = getelementptr %"compiler/mir:Fn", ptr %t121, i32 0, i32 8
  %t123 = load i32, ptr %l13, !tbaa !23
  %t125 = sext i32 %t123 to i64
  %t128 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t122, i64 %t125)
  store %"compiler/mir:ScopeInfo" %t128, ptr %l73
  br label %bb34
bb34:
  %t129 = getelementptr %"compiler/mir:ScopeInfo", ptr %l73, i32 0, i32 0
  %t130 = load i32, ptr %t129, !range !{i32 0, i32 7}
  store i32 %t130, ptr %l14
  %t132 = load i32, ptr %l14, !range !{i32 0, i32 7}
  %t134 = trunc i64 1 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb37
bb36:
  %t137 = load i32, ptr %l14, !range !{i32 0, i32 7}
  %t139 = trunc i64 2 to i32
  %t140 = icmp eq i32 %t137, %t139
  store i1 %t140, ptr %l77, !tbaa !21
  br label %bb37
bb37:
  %t142 = load i1, ptr %l77, !tbaa !21
  br i1 %t142, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb40
bb39:
  %t143 = load i32, ptr %l14, !range !{i32 0, i32 7}
  %t145 = trunc i64 0 to i32
  %t146 = icmp eq i32 %t143, %t145
  store i1 %t146, ptr %l80, !tbaa !21
  br label %bb40
bb40:
  %t148 = load i1, ptr %l80, !tbaa !21
  br i1 %t148, label %bb41, label %bb42
bb41:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/lower:lowering", ptr %t149, i32 0, i32 3
  %t152 = getelementptr %"compiler/mir:Fn", ptr %t151, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t152, i32 %a1)
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/lower:lowering", ptr %t156, i32 0, i32 3
  %t159 = getelementptr %"compiler/mir:Fn", ptr %t158, i32 0, i32 28
  %t160 = load i32, ptr %l13, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t159, i32 %t160)
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_237828d44636a984_bc321bec2b6d0e20)
  unreachable
bb51:
  br label %bb52
bb52:
  %t163 = load i64, ptr %l10, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l10, !tbaa !24
  br label %bb20
bb53:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca %"compiler/source:Span"
  %l22 = alloca %"compiler/lower:pl"
  %l30 = alloca %"compiler/lower:pl"
  %l31 = alloca %"compiler/lower:pl"
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca %"compiler/lower:pl"
  %l43 = alloca ptr
  %l44 = alloca i1
  %l57 = alloca %"compiler/lower:pl"
  %l58 = alloca ptr
  %l59 = alloca i1
  %l69 = alloca %"compiler/lower:pl"
  %l70 = alloca ptr
  %l71 = alloca i1
  %l78 = alloca ptr
  %l82 = alloca %"compiler/lower:pl"
  %l84 = alloca %"compiler/lower:pl"
  %l86 = alloca i32
  %l88 = alloca %"compiler/lower:pl"
  %l89 = alloca ptr
  %l90 = alloca i1
  %l100 = alloca %"compiler/lower:pl"
  %l101 = alloca ptr
  %l102 = alloca i1
  %l112 = alloca %"compiler/lower:pl"
  %l113 = alloca ptr
  %l114 = alloca i1
  %l130 = alloca i32
  %l132 = alloca %"compiler/lower:pl"
  %l133 = alloca ptr
  %l134 = alloca i1
  %l141 = alloca %"compiler/lower:pl"
  %l143 = alloca %"compiler/lower:pl"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t6 = alloca { i64, [2 x i64] }, align 8
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t50 = alloca { i64, [2 x i64] }, align 8
  %t89 = alloca { i64, [2 x i64] }, align 8
  %t273 = alloca { i64, [2 x i64] }, align 8
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
  store { i64, [2 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [2 x i64] }, ptr %t6, i32 0, i32 0
  store i64 0, ptr %t7
  %t8 = load { i64, [2 x i64] }, ptr %t6
  %t10 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t8)
  store %"compiler/lower:pl" %t10, ptr %l22
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t11 = load %"compiler/lower:pl", ptr %l22
  store %"compiler/lower:pl" %t11, ptr %rv
  br label %ret
bb4:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 4
  %t23 = load %"compiler/source:Span", ptr %t22
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s2, ptr %t16, %"compiler/source:Span" %t23, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb7
bb6:
  br label %bb9
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 0, ptr %t27
  %t28 = load { i64, [2 x i64] }, ptr %t26
  %t30 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t28)
  store %"compiler/lower:pl" %t30, ptr %l30
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  %t31 = load %"compiler/lower:pl", ptr %l30
  store %"compiler/lower:pl" %t31, ptr %rv
  br label %ret
bb9:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t33 = load ptr, ptr %l32, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l32, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 8}
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l33, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t43, i32 0, i32 2
  %t45 = load i32, ptr %t44
  store i32 %t45, ptr %l2, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t47 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 1, ptr %t51
  %t53 = insertvalue { i32 } undef, i32 %t47, 0
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  store { i32 } %t53, ptr %t54
  %t55 = load { i64, [2 x i64] }, ptr %t50
  %t57 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t55)
  store %"compiler/lower:pl" %t57, ptr %l42
  br label %bb15
bb15:
  %t58 = load %"compiler/lower:pl", ptr %l42
  store %"compiler/lower:pl" %t58, ptr %l31
  br label %bb71
bb16:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t60 = load ptr, ptr %l43, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t63 = load ptr, ptr %l43, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t67 = load i1, ptr %l44, !tbaa !21
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l3, !tbaa !23
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 2
  %t78 = load i64, ptr %t77
  store i64 %t78, ptr %l4, !tbaa !24
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t82, i32 0, i32 3
  %t84 = load i32, ptr %t83
  store i32 %t84, ptr %l5, !tbaa !23
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i32, ptr %l5, !tbaa !23
  %t88 = load i32, ptr %l3, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [2 x i64] }, ptr %t89, i32 0, i32 0
  store i64 2, ptr %t90
  %t92 = insertvalue { i64, i32, i32 } undef, i64 %t86, 0
  %t94 = insertvalue { i64, i32, i32 } %t92, i32 %t87, 1
  %t96 = insertvalue { i64, i32, i32 } %t94, i32 %t88, 2
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t89, i32 0, i32 1
  store { i64, i32, i32 } %t96, ptr %t97
  %t98 = load { i64, [2 x i64] }, ptr %t89
  %t100 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t98)
  store %"compiler/lower:pl" %t100, ptr %l57
  br label %bb22
bb22:
  %t101 = load %"compiler/lower:pl", ptr %l57
  store %"compiler/lower:pl" %t101, ptr %l31
  br label %bb71
bb23:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t103 = load ptr, ptr %l58, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = load ptr, ptr %l58, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 2
  store i1 %t109, ptr %l59, !tbaa !21
  br label %bb25
bb25:
  %t110 = load i1, ptr %l59, !tbaa !21
  br i1 %t110, label %bb26, label %bb27
bb26:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t113, i32 0, i32 0
  %t115 = load %"compiler/source:Span", ptr %t114
  store %"compiler/source:Span" %t115, ptr %l6
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t119, i32 0, i32 2
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l7, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l7, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l6
  %t129 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ederef(ptr %v0, ptr %v1, ptr %v2, ptr %t123, ptr %t124, %"compiler/source:Span" %t125)
  store %"compiler/lower:pl" %t129, ptr %l69
  br label %bb29
bb29:
  %t130 = load %"compiler/lower:pl", ptr %l69
  store %"compiler/lower:pl" %t130, ptr %l31
  br label %bb71
bb30:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t132 = load ptr, ptr %l70, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb31, label %bb32
bb31:
  %t135 = load ptr, ptr %l70, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 8}
  %t138 = icmp eq i64 %t136, 3
  store i1 %t138, ptr %l71, !tbaa !21
  br label %bb32
bb32:
  %t139 = load i1, ptr %l71, !tbaa !21
  br i1 %t139, label %bb33, label %bb34
bb33:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t142, i32 0, i32 2
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l8, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t148, i32 0, i32 3
  %t150 = load i64, ptr %t149
  store i64 %t150, ptr %l9, !tbaa !24
  br label %bb35
bb34:
  br label %bb40
bb35:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l78, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l8, !tbaa !29
  %t158 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t153, ptr %t154)
  store %"compiler/lower:pl" %t158, ptr %l82
  br label %bb36
bb36:
  %t160 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l82)
  store %"compiler/lower:pl" %t160, ptr %l84
  br label %bb37
bb37:
  %t161 = load ptr, ptr %l8, !tbaa !29
  %t163 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t161)
  store i32 %t163, ptr %l86
  br label %bb38
bb38:
  %t164 = load i64, ptr %l9, !tbaa !24
  %t165 = load ptr, ptr %l78, !tbaa !29
  %t166 = load %"compiler/lower:pl", ptr %l84
  %t167 = load i32, ptr %l86, !tbaa !23
  %t169 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epackedField(ptr %v0, ptr %v0, ptr %v2, ptr %t165, %"compiler/lower:pl" %t166, i32 %t167, i64 %t164)
  store %"compiler/lower:pl" %t169, ptr %l88
  br label %bb39
bb39:
  %t170 = load %"compiler/lower:pl", ptr %l88
  store %"compiler/lower:pl" %t170, ptr %l31
  br label %bb71
bb40:
  %t171 = load ptr, ptr %l1, !tbaa !29
  store ptr %t171, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t172 = load ptr, ptr %l89, !tbaa !29
  %t173 = icmp ne ptr %t172, null
  br i1 %t173, label %bb41, label %bb42
bb41:
  %t175 = load ptr, ptr %l89, !tbaa !29
  %t176 = load i64, ptr %t175, !range !{i64 0, i64 8}
  %t178 = icmp eq i64 %t176, 4
  store i1 %t178, ptr %l90, !tbaa !21
  br label %bb42
bb42:
  %t179 = load i1, ptr %l90, !tbaa !21
  br i1 %t179, label %bb43, label %bb44
bb43:
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t182, i32 0, i32 0
  %t184 = load %"compiler/source:Span", ptr %t183
  store %"compiler/source:Span" %t184, ptr %l10
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t188, i32 0, i32 2
  %t190 = load ptr, ptr %t189
  store ptr %t190, ptr %l11, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load ptr, ptr %l11, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l10
  %t198 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eelem(ptr %v0, ptr %v1, ptr %v2, ptr %t192, ptr %t193, %"compiler/source:Span" %t194)
  store %"compiler/lower:pl" %t198, ptr %l100
  br label %bb46
bb46:
  %t199 = load %"compiler/lower:pl", ptr %l100
  store %"compiler/lower:pl" %t199, ptr %l31
  br label %bb71
bb47:
  %t200 = load ptr, ptr %l1, !tbaa !29
  store ptr %t200, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t201 = load ptr, ptr %l101, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb48, label %bb49
bb48:
  %t204 = load ptr, ptr %l101, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 8}
  %t207 = icmp eq i64 %t205, 5
  store i1 %t207, ptr %l102, !tbaa !21
  br label %bb49
bb49:
  %t208 = load i1, ptr %l102, !tbaa !21
  br i1 %t208, label %bb50, label %bb51
bb50:
  %t209 = load ptr, ptr %l1, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t211, i32 0, i32 0
  %t213 = load %"compiler/source:Span", ptr %t212
  store %"compiler/source:Span" %t213, ptr %l12
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t217, i32 0, i32 2
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l13, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l13, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l12
  %t227 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %t221, ptr %t222, %"compiler/source:Span" %t223)
  store %"compiler/lower:pl" %t227, ptr %l112
  br label %bb53
bb53:
  %t228 = load %"compiler/lower:pl", ptr %l112
  store %"compiler/lower:pl" %t228, ptr %l31
  br label %bb71
bb54:
  %t229 = load ptr, ptr %l1, !tbaa !29
  store ptr %t229, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t230 = load ptr, ptr %l113, !tbaa !29
  %t231 = icmp ne ptr %t230, null
  br i1 %t231, label %bb55, label %bb56
bb55:
  %t233 = load ptr, ptr %l113, !tbaa !29
  %t234 = load i64, ptr %t233, !range !{i64 0, i64 8}
  %t236 = icmp eq i64 %t234, 6
  store i1 %t236, ptr %l114, !tbaa !21
  br label %bb56
bb56:
  %t237 = load i1, ptr %l114, !tbaa !21
  br i1 %t237, label %bb57, label %bb58
bb57:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t240, i32 0, i32 0
  %t242 = load %"compiler/source:Span", ptr %t241
  store %"compiler/source:Span" %t242, ptr %l14
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t246 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t246, i32 0, i32 1
  %t248 = load i32, ptr %t247
  store i32 %t248, ptr %l15, !tbaa !23
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t252, i32 0, i32 2
  %t254 = load ptr, ptr %t253
  store ptr %t254, ptr %l16, !tbaa !29
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t258, i32 0, i32 3
  %t260 = load i32, ptr %t259
  store i32 %t260, ptr %l17, !tbaa !23
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l16, !tbaa !29
  %t264 = load i32, ptr %l15, !tbaa !23
  %t265 = load %"compiler/source:Span", ptr %l14
  %t266 = load i32, ptr %l17, !tbaa !23
  %t272 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etempLocal(ptr %v0, ptr %v1, ptr %t262, ptr %t263, i32 %t264, %"compiler/source:Span" %t265, i32 %t266)
  store i32 %t272, ptr %l130
  br label %bb60
bb60:
  store { i64, [2 x i64] } zeroinitializer, ptr %t273
  %t274 = getelementptr { i64, [2 x i64] }, ptr %t273, i32 0, i32 0
  store i64 1, ptr %t274
  %t275 = load i32, ptr %l130, !tbaa !23
  %t276 = insertvalue { i32 } undef, i32 %t275, 0
  %t277 = getelementptr { i64, [2 x i64] }, ptr %t273, i32 0, i32 1
  store { i32 } %t276, ptr %t277
  %t278 = load { i64, [2 x i64] }, ptr %t273
  %t280 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v2, { i64, [2 x i64] } %t278)
  store %"compiler/lower:pl" %t280, ptr %l132
  br label %bb61
bb61:
  %t281 = load %"compiler/lower:pl", ptr %l132
  store %"compiler/lower:pl" %t281, ptr %l31
  br label %bb71
bb62:
  %t282 = load ptr, ptr %l1, !tbaa !29
  store ptr %t282, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t283 = load ptr, ptr %l133, !tbaa !29
  %t284 = icmp ne ptr %t283, null
  br i1 %t284, label %bb63, label %bb64
bb63:
  %t286 = load ptr, ptr %l133, !tbaa !29
  %t287 = load i64, ptr %t286, !range !{i64 0, i64 8}
  %t289 = icmp eq i64 %t287, 7
  store i1 %t289, ptr %l134, !tbaa !21
  br label %bb64
bb64:
  %t290 = load i1, ptr %l134, !tbaa !21
  br i1 %t290, label %bb65, label %bb66
bb65:
  %t291 = load ptr, ptr %l1, !tbaa !29
  %t293 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  %t294 = getelementptr { %"compiler/source:Span", i32 }, ptr %t293, i32 0, i32 0
  %t295 = load %"compiler/source:Span", ptr %t294
  store %"compiler/source:Span" %t295, ptr %l18
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load %"compiler/source:Span", ptr %l18
  %t301 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2etarget(ptr %v0, ptr %v2, ptr %t297, %"compiler/source:Span" %t298)
  store %"compiler/lower:pl" %t301, ptr %l141
  br label %bb68
bb68:
  %t303 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l141)
  store %"compiler/lower:pl" %t303, ptr %l143
  br label %bb69
bb69:
  %t304 = load %"compiler/lower:pl", ptr %l143
  store %"compiler/lower:pl" %t304, ptr %l31
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_25aa1fca937793b6_1bfa8a59c48f3aa2)
  unreachable
bb71:
  %t305 = load %"compiler/lower:pl", ptr %l31
  store %"compiler/lower:pl" %t305, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local { i32, { i64, [4 x i64] } } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedFill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca { i64, [1 x i64] }
  %l38 = alloca ptr
  %l39 = alloca i1
  %l43 = alloca i1
  %l57 = alloca i1
  %l71 = alloca i1
  %l84 = alloca i32
  %l98 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca i1
  %l115 = alloca i32
  %l120 = alloca i1
  %l125 = alloca i1
  %l126 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca i1
  %l131 = alloca i1
  %l135 = alloca i1
  %l138 = alloca i64
  %l144 = alloca { i64, [1 x i64] }
  %l148 = alloca { i64, [4 x i64] }
  %l154 = alloca { i64, [4 x i64] }
  %l160 = alloca { i64, [4 x i64] }
  %rv = alloca { i32, { i64, [4 x i64] } }
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
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Promote", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t11 = load ptr, ptr %l6, !tbaa !29
  store ptr %t11, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t12 = load ptr, ptr %l38, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l38, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 18}
  %t18 = icmp eq i64 %t16, 9
  store i1 %t18, ptr %l39, !tbaa !21
  br label %bb2
bb2:
  %t19 = load i1, ptr %l39, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb5
bb4:
  %t22 = load ptr, ptr %l6, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l7
  %t28 = load ptr, ptr %l6, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l8, !tbaa !23
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 52}
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t42, i32 0, i32 3
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 3}
  store i32 %t44, ptr %l10
  %t46 = load ptr, ptr %l6, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t48, i32 0, i32 4
  %t50 = load { i64, ptr }, ptr %t49
  store { i64, ptr } %t50, ptr %l11, !tbaa !27
  %t54 = trunc i64 20 to i32
  %t55 = icmp eq i32 %t38, %t54
  %t57 = xor i1 %t55, true
  store i1 %t57, ptr %l43, !tbaa !21
  br label %bb5
bb5:
  %t59 = load i1, ptr %l43, !tbaa !21
  br i1 %t59, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb8
bb7:
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t62, i32 0, i32 0
  %t64 = load %"compiler/source:Span", ptr %t63
  store %"compiler/source:Span" %t64, ptr %l12
  %t66 = load ptr, ptr %l6, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t68, i32 0, i32 1
  %t70 = load i32, ptr %t69
  store i32 %t70, ptr %l13, !tbaa !23
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t74, i32 0, i32 2
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 52}
  store i32 %t76, ptr %l14
  %t78 = load ptr, ptr %l6, !tbaa !29
  %t80 = getelementptr { i64, [5 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t80, i32 0, i32 3
  %t82 = load i32, ptr %t81, !range !{i32 0, i32 3}
  store i32 %t82, ptr %l15
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t86, i32 0, i32 4
  %t88 = load { i64, ptr }, ptr %t87
  %t92 = extractvalue { i64, ptr } %t88, 0
  %t94 = icmp ne i64 %t92, 1
  store i1 %t94, ptr %l57, !tbaa !21
  br label %bb8
bb8:
  %t96 = load i1, ptr %l57, !tbaa !21
  br i1 %t96, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb12
bb10:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t99, i32 0, i32 0
  %t101 = load %"compiler/source:Span", ptr %t100
  store %"compiler/source:Span" %t101, ptr %l17
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t105, i32 0, i32 1
  %t107 = load i32, ptr %t106
  store i32 %t107, ptr %l18, !tbaa !23
  %t109 = load ptr, ptr %l6, !tbaa !29
  %t111 = getelementptr { i64, [5 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t111, i32 0, i32 2
  %t113 = load i32, ptr %t112, !range !{i32 0, i32 52}
  store i32 %t113, ptr %l19
  %t115 = load ptr, ptr %l6, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t117, i32 0, i32 3
  %t119 = load i32, ptr %t118, !range !{i32 0, i32 3}
  store i32 %t119, ptr %l20
  %t121 = load ptr, ptr %l6, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t123, i32 0, i32 4
  %t125 = load { i64, ptr }, ptr %t124
  store { i64, ptr } %t125, ptr %l21, !tbaa !27
  %t127 = load ptr, ptr %l5, !tbaa !29
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t127, i32 %a4)
  store i32 %t131, ptr %l84
  br label %bb11
bb11:
  %t132 = load i32, ptr %l84, !tbaa !23
  %t133 = icmp ne i32 %t132, 0
  store i1 %t133, ptr %l71, !tbaa !21
  br label %bb12
bb12:
  %t135 = load i1, ptr %l71, !tbaa !21
  br i1 %t135, label %bb13, label %bb14
bb13:
  %t137 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [4 x i64] } } %t137, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t138 = load ptr, ptr %l6, !tbaa !29
  %t140 = getelementptr { i64, [5 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l22
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t146 = getelementptr { i64, [5 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t146, i32 0, i32 1
  %t148 = load i32, ptr %t147
  store i32 %t148, ptr %l23, !tbaa !23
  %t150 = load ptr, ptr %l6, !tbaa !29
  %t152 = getelementptr { i64, [5 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t152, i32 0, i32 2
  %t154 = load i32, ptr %t153, !range !{i32 0, i32 52}
  store i32 %t154, ptr %l24
  %t156 = load ptr, ptr %l6, !tbaa !29
  %t158 = getelementptr { i64, [5 x i64] }, ptr %t156, i32 0, i32 1
  %t159 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t158, i32 0, i32 3
  %t160 = load i32, ptr %t159, !range !{i32 0, i32 3}
  store i32 %t160, ptr %l25
  %t162 = load ptr, ptr %l6, !tbaa !29
  %t164 = getelementptr { i64, [5 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t164, i32 0, i32 4
  %t166 = load { i64, ptr }, ptr %t165
  store { i64, ptr } %t166, ptr %l98, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr ptr, ptr %t171, i64 0
  %t173 = load ptr, ptr %t172, !tbaa !39
  store ptr %t173, ptr %l27, !tbaa !29
  %t175 = load ptr, ptr %l27, !tbaa !29
  store ptr %t175, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t176 = load ptr, ptr %l100, !tbaa !29
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %bb16, label %bb17
bb16:
  %t179 = load ptr, ptr %l100, !tbaa !29
  %t180 = load i64, ptr %t179, !range !{i64 0, i64 18}
  %t182 = icmp eq i64 %t180, 7
  store i1 %t182, ptr %l101, !tbaa !21
  br label %bb17
bb17:
  %t183 = load i1, ptr %l101, !tbaa !21
  %t184 = xor i1 %t183, true
  br i1 %t184, label %bb18, label %bb19
bb18:
  %t187 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [4 x i64] } } %t187, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t188 = load ptr, ptr %l27, !tbaa !29
  %t190 = getelementptr { i64, [5 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t190, i32 0, i32 0
  %t192 = load %"compiler/source:Span", ptr %t191
  store %"compiler/source:Span" %t192, ptr %l28
  %t194 = load ptr, ptr %l27, !tbaa !29
  %t196 = getelementptr { i64, [5 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t196, i32 0, i32 1
  %t198 = load i32, ptr %t197
  store i32 %t198, ptr %l29, !tbaa !23
  %t200 = load ptr, ptr %l27, !tbaa !29
  %t202 = getelementptr { i64, [5 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t202, i32 0, i32 2
  %t204 = load ptr, ptr %t203
  store ptr %t204, ptr %l31, !tbaa !29
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l29, !tbaa !23
  %t212 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l115
  br label %bb21
bb21:
  %t213 = load i32, ptr %l115, !tbaa !23
  store i32 %t213, ptr %l32, !tbaa !23
  %t214 = load ptr, ptr %l31, !tbaa !29
  %t216 = getelementptr %"compiler/typed:Make", ptr %t214, i32 0, i32 0
  %t217 = load i32, ptr %t216, !range !{i32 0, i32 5}
  %t219 = trunc i64 3 to i32
  %t220 = icmp eq i32 %t217, %t219
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb22, label %bb23
bb22:
  %t224 = load ptr, ptr %l31, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Make", ptr %t224, i32 0, i32 0
  %t227 = load i32, ptr %t226, !range !{i32 0, i32 5}
  %t229 = trunc i64 2 to i32
  %t230 = icmp eq i32 %t227, %t229
  %t232 = xor i1 %t230, true
  store i1 %t232, ptr %l120, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb24
bb24:
  %t234 = load i1, ptr %l120, !tbaa !21
  br i1 %t234, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb29
bb26:
  %t235 = load ptr, ptr %l5, !tbaa !29
  store ptr %t235, ptr %l126, !tbaa !29
  %t236 = load ptr, ptr %l5, !tbaa !29
  %t237 = load i32, ptr %l29, !tbaa !23
  %t240 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t236, i32 %t237)
  store i32 %t240, ptr %l129
  br label %bb27
bb27:
  %t241 = load ptr, ptr %l126, !tbaa !29
  %t242 = load i32, ptr %l129, !tbaa !23
  %t243 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t241, i32 %t242)
  store i1 %t243, ptr %l130
  br label %bb28
bb28:
  %t244 = load i1, ptr %l130, !tbaa !21
  store i1 %t244, ptr %l125, !tbaa !21
  br label %bb29
bb29:
  %t245 = load i1, ptr %l125, !tbaa !21
  br i1 %t245, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb32
bb31:
  %t246 = load i32, ptr %l32, !tbaa !23
  %t247 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t250 = icmp eq i32 %t246, %t247
  store i1 %t250, ptr %l131, !tbaa !21
  br label %bb32
bb32:
  %t252 = load i1, ptr %l131, !tbaa !21
  br i1 %t252, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb36
bb34:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load i32, ptr %l32, !tbaa !23
  %t257 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t253, i32 %t254)
  store i64 %t257, ptr %l138
  br label %bb35
bb35:
  %t258 = load i64, ptr %l138, !tbaa !24
  %t259 = icmp slt i64 %t258, 0
  store i1 %t259, ptr %l135, !tbaa !21
  br label %bb36
bb36:
  %t261 = load i1, ptr %l135, !tbaa !21
  br i1 %t261, label %bb37, label %bb38
bb37:
  %t263 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [4 x i64] } } %t263, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load ptr, ptr %l1, !tbaa !29
  %t267 = getelementptr %"compiler/typed:Promote", ptr %t265, i32 0, i32 1
  %t268 = load i32, ptr %t267, !tbaa !23
  %t271 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t264, i32 %t268)
  store { i64, [1 x i64] } %t271, ptr %l144
  br label %bb40
bb40:
  %t272 = load { i64, [1 x i64] }, ptr %l144
  store { i64, [1 x i64] } %t272, ptr %l33
  %t273 = load ptr, ptr %l31, !tbaa !29
  %t275 = getelementptr %"compiler/typed:Make", ptr %t273, i32 0, i32 0
  %t276 = load i32, ptr %t275, !range !{i32 0, i32 5}
  %t278 = trunc i64 3 to i32
  %t279 = icmp eq i32 %t276, %t278
  br i1 %t279, label %bb41, label %bb42
bb41:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l31, !tbaa !29
  %t283 = load i32, ptr %l2, !tbaa !23
  %t284 = load %"compiler/source:Span", ptr %l3
  %t285 = load { i64, [1 x i64] }, ptr %l33
  %t291 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %t281, ptr %t282, i32 %t283, %"compiler/source:Span" %t284, i1 true, { i64, [1 x i64] } %t285)
  store { i64, [4 x i64] } %t291, ptr %l154
  br label %bb43
bb42:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l31, !tbaa !29
  %t294 = load i32, ptr %l2, !tbaa !23
  %t295 = load %"compiler/source:Span", ptr %l3
  %t296 = load { i64, [1 x i64] }, ptr %l33
  %t302 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %t292, ptr %t293, i32 %t294, %"compiler/source:Span" %t295, i1 true, { i64, [1 x i64] } %t296)
  store { i64, [4 x i64] } %t302, ptr %l160
  br label %bb44
bb43:
  %t303 = load { i64, [4 x i64] }, ptr %l154
  store { i64, [4 x i64] } %t303, ptr %l148
  br label %bb45
bb44:
  %t304 = load { i64, [4 x i64] }, ptr %l160
  store { i64, [4 x i64] } %t304, ptr %l148
  br label %bb45
bb45:
  %t305 = load { i64, [4 x i64] }, ptr %l148
  %t306 = insertvalue { i32, { i64, [4 x i64] } } zeroinitializer, { i64, [4 x i64] } %t305, 1
  store { i32, { i64, [4 x i64] } } %t306, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [4 x i64] } }, ptr %rv
  ret { i32, { i64, [4 x i64] } } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erelease(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i64
  %l56 = alloca i32
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l12
  br label %bb2
bb2:
  %t4 = load i64, ptr %l12, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb8
bb5:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l7, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l19, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l19, !tbaa !24
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb8
bb8:
  %t32 = load i64, ptr %l16, !tbaa !24
  store i64 %t32, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l10, !tbaa !24
  store ptr %a0, ptr %l37, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t53 = load i64, ptr %l10, !tbaa !24
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l40
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t59 = load ptr, ptr %l37, !tbaa !29
  %t60 = load i64, ptr %l40, !tbaa !24
  %t63 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewaits(ptr %v0, ptr %v2, ptr %v3, ptr %t59, i64 %t60, ptr %a2, ptr %t58)
  store i1 %t63, ptr %l43
  br label %bb14
bb14:
  %t64 = load i1, ptr %l43, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = load i64, ptr %l10, !tbaa !24
  store i64 %t67, ptr %l4, !tbaa !24
  br label %bb19
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l9, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l9, !tbaa !24
  br label %bb9
bb19:
  %t73 = load i64, ptr %l4, !tbaa !24
  %t75 = icmp slt i64 %t73, 0
  br i1 %t75, label %bb20, label %bb21
bb20:
  br label %ret
bb21:
  br label %bb22
bb22:
  %t77 = load ptr, ptr %l3, !tbaa !29
  store ptr %t77, ptr %l50, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t79 = load i64, ptr %l4, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t78, i64 %t79)
  store i64 %t82, ptr %l53
  br label %bb23
bb23:
  %t83 = load ptr, ptr %l50, !tbaa !29
  %t84 = load i64, ptr %l53, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v3, ptr %t83, i64 %t84)
  br label %bb24
bb24:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t86 = load i64, ptr %l4, !tbaa !24
  %t89 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v1, ptr %t85, i64 %t86)
  store i32 %t89, ptr %l56
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb26, label %ok.91, !prof !99
ok.91:
  br label %bb25
bb25:
  br label %bb33
bb26:
  %t92 = load i32, ptr %l56, !tbaa !23
  %t93 = icmp eq i32 %t92, 65536
  br i1 %t93, label %bb27, label %bb28
bb27:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a61cfa4a479d7a25_9400c4278bb1e539)
  unreachable
bb28:
  %t95 = load i32, ptr %l56, !tbaa !23
  %t96 = icmp eq i32 %t95, 65537
  br i1 %t96, label %bb29, label %bb30
bb29:
  call void @__olang_bang_failed_plain(ptr @olang_loc_57b94e28dfb9b502_11fd69472c69d516)
  unreachable
bb30:
  %t98 = load i32, ptr %l56, !tbaa !23
  %t99 = icmp eq i32 %t98, 65538
  br i1 %t99, label %bb31, label %bb32
bb31:
  call void @__olang_bang_failed_plain(ptr @olang_loc_76519f2a5446c8c2_195fd4b9f9cd3b36)
  unreachable
bb32:
  call void @__olang_bang_failed_plain(ptr @olang_loc_babafd94d84db46c_e9d5138a9339dba0)
  unreachable
bb33:
  br label %bb34
bb34:
  br label %bb1
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/lower:relPath"
  %l7 = alloca i32
  %l8 = alloca %"compiler/lower:pl"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca %"compiler/lower:relPath"
  %l23 = alloca %"compiler/lower:relPath"
  %l28 = alloca i32
  %l32 = alloca i32
  %l36 = alloca %"compiler/lower:pl"
  %l44 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca %"compiler/lower:pl"
  %l50 = alloca %"compiler/lower:pl"
  %l53 = alloca %"compiler/lower:pl"
  %l56 = alloca ptr
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca ptr
  %l59 = alloca %"compiler/lower:pl"
  %l61 = alloca %"compiler/lower:pl"
  %l62 = alloca %"compiler/mir:Lvalue"
  %s2 = alloca %olang.scope
  %t44 = alloca { i64, [2 x i64] }, align 8
  %t81 = alloca { i64, [1 x i64] }, align 8
  %t105 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l5, !tbaa !24
  store i64 %t3, ptr %l14, !tbaa !24
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l16
  br label %bb2
bb2:
  %t7 = load i64, ptr %l14, !tbaa !24
  %t8 = load i64, ptr %l16, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = call %"compiler/lower:relPath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eAt_3ccompiler_2flower_3arelPath_3e(ptr %v1, ptr %v1, ptr %t13, i64 %t14)
  store %"compiler/lower:relPath" %t17, ptr %l21
  br label %bb6
bb6:
  %t19 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s2, ptr %l21)
  store %"compiler/lower:relPath" %t19, ptr %l23
  br label %bb7
bb7:
  %t20 = load %"compiler/lower:relPath", ptr %l23
  store %"compiler/lower:relPath" %t20, ptr %l6
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 10
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t26 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t29 = icmp sge i64 %t27, 0
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load %"compiler/source:Span", ptr %l3
  %t38 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %t31, i64 %t33, i1 true, %"compiler/source:Span" %t34)
  store i32 %t38, ptr %l32
  br label %bb13
bb12:
  %t39 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t39, ptr %l28, !tbaa !23
  br label %bb14
bb13:
  %t41 = load i32, ptr %l32, !tbaa !23
  store i32 %t41, ptr %l28, !tbaa !23
  br label %bb14
bb14:
  %t42 = load i32, ptr %l28, !tbaa !23
  store i32 %t42, ptr %l7, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [2 x i64] }, ptr %t44, i32 0, i32 0
  store i64 1, ptr %t45
  %t47 = insertvalue { i32 } undef, i32 %a1, 0
  %t48 = getelementptr { i64, [2 x i64] }, ptr %t44, i32 0, i32 1
  store { i32 } %t47, ptr %t48
  %t49 = load { i64, [2 x i64] }, ptr %t44
  %t51 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s2, { i64, [2 x i64] } %t49)
  store %"compiler/lower:pl" %t51, ptr %l36
  br label %bb15
bb15:
  %t52 = load %"compiler/lower:pl", ptr %l36
  store %"compiler/lower:pl" %t52, ptr %l8
  %t53 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i64, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l11, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t68, ptr %l44, !tbaa !27
  %t69 = load i64, ptr %l10, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i64, ptr %t72, i64 %t69
  %t74 = load i64, ptr %t73, !tbaa !34
  store i64 %t74, ptr %l12, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l47, !tbaa !29
  %t77 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t77, ptr %l48
  %t79 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l48)
  store %"compiler/lower:pl" %t79, ptr %l50
  br label %bb20
bb20:
  %t80 = load i64, ptr %l12, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [1 x i64] }, ptr %t81, i32 0, i32 0
  store i64 0, ptr %t82
  %t84 = insertvalue { i64 } undef, i64 %t80, 0
  %t85 = getelementptr { i64, [1 x i64] }, ptr %t81, i32 0, i32 1
  store { i64 } %t84, ptr %t85
  %t86 = load { i64, [1 x i64] }, ptr %t81
  %t87 = load ptr, ptr %l47, !tbaa !29
  %t88 = load %"compiler/lower:pl", ptr %l50
  %t90 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s2, ptr %s2, ptr %t87, %"compiler/lower:pl" %t88, { i64, [1 x i64] } %t86)
  store %"compiler/lower:pl" %t90, ptr %l53
  br label %bb21
bb21:
  %t91 = load %"compiler/lower:pl", ptr %l53
  store %"compiler/lower:pl" %t91, ptr %l8
  br label %bb22
bb22:
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l10, !tbaa !24
  br label %bb16
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l56, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t97, ptr %l57
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l58, !tbaa !29
  %t99 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t99, ptr %l59
  %t101 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l59)
  store %"compiler/lower:pl" %t101, ptr %l61
  br label %bb24
bb24:
  %t102 = load ptr, ptr %l58, !tbaa !29
  %t103 = load %"compiler/lower:pl", ptr %l61
  %t104 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t102, %"compiler/lower:pl" %t103)
  store %"compiler/mir:Lvalue" %t104, ptr %l62
  br label %bb25
bb25:
  store { i64, [21 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [21 x i64] }, ptr %t105, i32 0, i32 0
  store i64 6, ptr %t106
  %t107 = load %"compiler/source:Span", ptr %l57
  %t108 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } undef, %"compiler/source:Span" %t107, 0
  %t109 = load %"compiler/mir:Lvalue", ptr %l62
  %t110 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t108, %"compiler/mir:Lvalue" %t109, 1
  %t111 = getelementptr { i64, [21 x i64] }, ptr %t105, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t110, ptr %t111
  %t112 = load { i64, [21 x i64] }, ptr %t105
  %t114 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t112, ptr %t114
  %t115 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t115, ptr %t114)
  br label %bb26
bb26:
  %t117 = load i32, ptr %l7, !tbaa !23
  %t118 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t121 = icmp ne i32 %t117, %t118
  br i1 %t121, label %bb27, label %bb28
bb27:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %t123, i32 %t124)
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb31:
  %t127 = load i64, ptr %l5, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l5, !tbaa !24
  br label %bb1
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i32
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca { i64, [4 x i64] }
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca { i64, [4 x i64] }
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca { i64, [1 x i64] }
  %l66 = alloca ptr
  %l67 = alloca %"compiler/lower:pl"
  %l69 = alloca %"compiler/lower:pl"
  %l70 = alloca %"compiler/mir:Lvalue"
  %l75 = alloca ptr
  %l76 = alloca %"compiler/lower:pl"
  %l78 = alloca %"compiler/lower:pl"
  %l82 = alloca i1
  %l85 = alloca i32
  %l88 = alloca ptr
  %l89 = alloca { i64, [1 x i64] }
  %l90 = alloca ptr
  %l91 = alloca %"compiler/lower:pl"
  %l93 = alloca %"compiler/lower:pl"
  %l94 = alloca %"compiler/mir:Lvalue"
  %l100 = alloca i32
  %l103 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca ptr
  %l106 = alloca %"compiler/lower:pl"
  %l108 = alloca %"compiler/lower:pl"
  %l109 = alloca %"compiler/mir:Lvalue"
  %l113 = alloca i32
  %l116 = alloca i32
  %l119 = alloca i32
  %l122 = alloca i1
  %l123 = alloca i1
  %l126 = alloca i1
  %l132 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i32
  %l135 = alloca i32
  %l137 = alloca %"compiler/mir:Lvalue"
  %l141 = alloca { i64, ptr }
  %l143 = alloca { i64, [4 x i64] }
  %l146 = alloca i32
  %l159 = alloca ptr
  %l160 = alloca i32
  %l161 = alloca i32
  %l163 = alloca %"compiler/mir:Lvalue"
  %l167 = alloca { i64, ptr }
  %l169 = alloca { i64, [4 x i64] }
  %l172 = alloca i32
  %l189 = alloca i32
  %l192 = alloca i32
  %l195 = alloca i1
  %l196 = alloca ptr
  %l199 = alloca i32
  %l200 = alloca i32
  %l203 = alloca ptr
  %l204 = alloca { i64, [1 x i64] }
  %l207 = alloca ptr
  %l208 = alloca ptr
  %l211 = alloca i32
  %l212 = alloca i32
  %l214 = alloca { i64, ptr }
  %l221 = alloca { i64, [4 x i64] }
  %l222 = alloca ptr
  %l223 = alloca i32
  %l224 = alloca i32
  %l225 = alloca { i64, [4 x i64] }
  %l227 = alloca { i64, [4 x i64] }
  %l228 = alloca { i64, ptr }
  %l230 = alloca { i64, [4 x i64] }
  %l233 = alloca i32
  %l236 = alloca i32
  %l253 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca i32
  %l256 = alloca i32
  %l257 = alloca { i64, [4 x i64] }
  %l259 = alloca { i64, [4 x i64] }
  %l260 = alloca { i64, ptr }
  %l262 = alloca { i64, [4 x i64] }
  %l263 = alloca ptr
  %l266 = alloca %"compiler/lower:pl"
  %l269 = alloca i32
  %l280 = alloca i32
  %l283 = alloca ptr
  %l284 = alloca ptr
  %l285 = alloca %"compiler/lower:pl"
  %l287 = alloca %"compiler/lower:pl"
  %l288 = alloca %"compiler/mir:Lvalue"
  %l292 = alloca i32
  %l293 = alloca ptr
  %l294 = alloca i32
  %l295 = alloca i32
  %l297 = alloca %"compiler/mir:Lvalue"
  %l301 = alloca { i64, ptr }
  %l303 = alloca { i64, [4 x i64] }
  %l306 = alloca i32
  %l309 = alloca i32
  %l312 = alloca i32
  %l327 = alloca ptr
  %l328 = alloca { i64, [1 x i64] }
  %l329 = alloca ptr
  %l331 = alloca ptr
  %l335 = alloca i32
  %l336 = alloca i32
  %l339 = alloca { i64, ptr }
  %l348 = alloca ptr
  %l349 = alloca i32
  %l350 = alloca i32
  %l351 = alloca ptr
  %l352 = alloca %"compiler/lower:pl"
  %l354 = alloca %"compiler/lower:pl"
  %l357 = alloca { i64, [4 x i64] }
  %l359 = alloca { i64, [4 x i64] }
  %l360 = alloca { i64, ptr }
  %l362 = alloca { i64, ptr }
  %l365 = alloca { i64, [4 x i64] }
  %l368 = alloca { i64, ptr }
  %l372 = alloca i1
  %l375 = alloca { i64, ptr }
  %l379 = alloca i1
  %l383 = alloca i32
  %l386 = alloca ptr
  %l387 = alloca { i64, [1 x i64] }
  %l389 = alloca ptr
  %l392 = alloca i32
  %l393 = alloca { i64, ptr }
  %l396 = alloca ptr
  %l397 = alloca ptr
  %l400 = alloca i32
  %l401 = alloca i32
  %l403 = alloca { i64, ptr }
  %l415 = alloca i64
  %l418 = alloca i64
  %l441 = alloca ptr
  %l442 = alloca ptr
  %l443 = alloca %"compiler/lower:pl"
  %l445 = alloca %"compiler/lower:pl"
  %l449 = alloca %"compiler/lower:pl"
  %l462 = alloca i32
  %l465 = alloca { i64, ptr }
  %l468 = alloca { i64, ptr }
  %l471 = alloca { i64, ptr }
  %l472 = alloca ptr
  %l473 = alloca i32
  %l474 = alloca ptr
  %l475 = alloca %"compiler/lower:pl"
  %l477 = alloca %"compiler/lower:pl"
  %l478 = alloca %"compiler/mir:Lvalue"
  %l481 = alloca { i64, [4 x i64] }
  %l484 = alloca i32
  %l488 = alloca { i64, ptr }
  %l490 = alloca ptr
  %l493 = alloca i32
  %l494 = alloca { i64, ptr }
  %l497 = alloca ptr
  %l498 = alloca ptr
  %l501 = alloca i32
  %l502 = alloca i32
  %l504 = alloca { i64, ptr }
  %l509 = alloca i32
  %l511 = alloca i64
  %l512 = alloca %"compiler/mir:Case"
  %l514 = alloca %"compiler/mir:Case"
  %l519 = alloca i64
  %l528 = alloca i64
  %l531 = alloca i64
  %l549 = alloca i64
  %l552 = alloca i32
  %l553 = alloca i64
  %l557 = alloca %"compiler/mir:Case"
  %l560 = alloca ptr
  %l561 = alloca { i64, [4 x i64] }
  %l565 = alloca %"compiler/mir:Range"
  %l573 = alloca i64
  %l576 = alloca i64
  %l600 = alloca i1
  %l605 = alloca { i64, ptr }
  %l608 = alloca ptr
  %l609 = alloca { i64, ptr }
  %l613 = alloca { i64, ptr }
  %l627 = alloca ptr
  %l628 = alloca %"compiler/lower:pl"
  %l630 = alloca %"compiler/lower:pl"
  %l644 = alloca i32
  %l647 = alloca ptr
  %l650 = alloca i32
  %l651 = alloca i32
  %l652 = alloca ptr
  %l653 = alloca { i64, [1 x i64] }
  %l654 = alloca ptr
  %l657 = alloca i32
  %l658 = alloca { i64, ptr }
  %l662 = alloca ptr
  %l663 = alloca i32
  %l664 = alloca i32
  %l665 = alloca ptr
  %l666 = alloca %"compiler/lower:pl"
  %l668 = alloca %"compiler/lower:pl"
  %l669 = alloca %"compiler/mir:Lvalue"
  %l671 = alloca { i64, ptr }
  %l673 = alloca { i64, [4 x i64] }
  %l674 = alloca ptr
  %l675 = alloca { i64, [4 x i64] }
  %l676 = alloca %"compiler/source:Span"
  %l677 = alloca ptr
  %l678 = alloca %"compiler/source:Span"
  %l679 = alloca { i64, [1 x i64] }
  %l680 = alloca %"compiler/lower:pl"
  %l682 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %t25 = alloca { i64, [4 x i64] }, align 8
  %t73 = alloca { i64, [4 x i64] }, align 8
  %t106 = alloca { i64, [4 x i64] }, align 8
  %t167 = alloca { i64, [4 x i64] }, align 8
  %t174 = alloca { i64, [4 x i64] }, align 8
  %t211 = alloca { i64, [8 x i64] }, align 8
  %t237 = alloca { i64, [4 x i64] }, align 8
  %t244 = alloca { i64, [4 x i64] }, align 8
  %t281 = alloca { i64, [8 x i64] }, align 8
  %t427 = alloca { i64, [8 x i64] }, align 8
  %t540 = alloca { i64, [4 x i64] }, align 8
  %t559 = alloca { i64, [4 x i64] }, align 8
  %t566 = alloca { i64, [4 x i64] }, align 8
  %t615 = alloca { i64, [8 x i64] }, align 8
  %t986 = alloca { i64, [15 x i64] }, align 8
  %t1095 = alloca i64
  %t1212 = alloca { i64, [8 x i64] }, align 8
  %t1469 = alloca { i64, [4 x i64] }, align 8
  %t1503 = alloca { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, align 8
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
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l6, !tbaa !29
  store ptr %t6, ptr %l59, !tbaa !29
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l62
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l59, !tbaa !29
  %t13 = load i32, ptr %l62, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t14, ptr %l63
  br label %bb2
bb2:
  %t15 = load i1, ptr %l63, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l64, !tbaa !29
  %t17 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t17, ptr %l65
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l66, !tbaa !29
  %t19 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t19, ptr %l67
  %t21 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l67)
  store %"compiler/lower:pl" %t21, ptr %l69
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t22 = load ptr, ptr %l66, !tbaa !29
  %t23 = load %"compiler/lower:pl", ptr %l69
  %t24 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t22, %"compiler/lower:pl" %t23)
  store %"compiler/mir:Lvalue" %t24, ptr %l70
  br label %bb6
bb6:
  store { i64, [4 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 0
  store i64 1, ptr %t26
  %t27 = load %"compiler/mir:Lvalue", ptr %l70
  %t28 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t27, 0
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t28, ptr %t29
  %t30 = load { i64, [4 x i64] }, ptr %t25
  %t31 = load i32, ptr %l2, !tbaa !23
  %t32 = load i1, ptr %l5, !tbaa !21
  %t33 = load %"compiler/source:Span", ptr %l4
  %t34 = load ptr, ptr %l64, !tbaa !29
  %t35 = load { i64, [1 x i64] }, ptr %l65
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAny(ptr %v0, ptr %t34, { i64, [1 x i64] } %t35, { i64, [4 x i64] } %t30, i32 %t31, i1 %t32, %"compiler/source:Span" %t33)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l75, !tbaa !29
  %t41 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t41, ptr %l76
  %t43 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l76)
  store %"compiler/lower:pl" %t43, ptr %l78
  br label %bb9
bb9:
  %t44 = load i32, ptr %l2, !tbaa !23
  %t45 = load { i64, [1 x i64] }, ptr %l3
  %t46 = load %"compiler/source:Span", ptr %l4
  %t47 = load ptr, ptr %l75, !tbaa !29
  %t48 = load %"compiler/lower:pl", ptr %l78
  %t52 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erenderStr(ptr %v0, ptr %s0, ptr %t47, %"compiler/lower:pl" %t48, i32 %t44, { i64, [1 x i64] } %t45, %"compiler/source:Span" %t46)
  store i1 %t52, ptr %l82
  br label %bb10
bb10:
  %t53 = load i1, ptr %l82, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l85
  br label %bb14
bb14:
  %t59 = load i32, ptr %l85, !range !{i32 0, i32 33}
  %t61 = trunc i64 32 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l88, !tbaa !29
  %t65 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t65, ptr %l89
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l90, !tbaa !29
  %t67 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t67, ptr %l91
  %t69 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l91)
  store %"compiler/lower:pl" %t69, ptr %l93
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t70 = load ptr, ptr %l90, !tbaa !29
  %t71 = load %"compiler/lower:pl", ptr %l93
  %t72 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t70, %"compiler/lower:pl" %t71)
  store %"compiler/mir:Lvalue" %t72, ptr %l94
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 0
  store i64 1, ptr %t74
  %t75 = load %"compiler/mir:Lvalue", ptr %l94
  %t76 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t75, 0
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t76, ptr %t77
  %t78 = load { i64, [4 x i64] }, ptr %t73
  %t79 = load i32, ptr %l2, !tbaa !23
  %t80 = load %"compiler/source:Span", ptr %l4
  %t81 = load ptr, ptr %l88, !tbaa !29
  %t82 = load { i64, [1 x i64] }, ptr %l89
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %t81, { i64, [1 x i64] } %t82, { i64, [4 x i64] } %t78, i32 %t79, %"compiler/source:Span" %t80)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t87 = load i32, ptr %l2, !tbaa !23
  %t90 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t86, i32 %t87)
  store i32 %t90, ptr %l100
  br label %bb21
bb21:
  %t91 = load i32, ptr %l100, !tbaa !23
  store i32 %t91, ptr %l7, !tbaa !23
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t93 = load i32, ptr %l7, !tbaa !23
  %t96 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t92, i32 %t93)
  store i1 %t96, ptr %l103
  br label %bb22
bb22:
  %t97 = load i1, ptr %l103, !tbaa !21
  br i1 %t97, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l104, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l105, !tbaa !29
  %t100 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t100, ptr %l106
  %t102 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s4, ptr %l106)
  store %"compiler/lower:pl" %t102, ptr %l108
  br label %bb25
bb24:
  br label %bb91
bb25:
  %t103 = load ptr, ptr %l105, !tbaa !29
  %t104 = load %"compiler/lower:pl", ptr %l108
  %t105 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s4, ptr %t103, %"compiler/lower:pl" %t104)
  store %"compiler/mir:Lvalue" %t105, ptr %l109
  br label %bb26
bb26:
  store { i64, [4 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 0
  store i64 1, ptr %t107
  %t108 = load %"compiler/mir:Lvalue", ptr %l109
  %t109 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t108, 0
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t109, ptr %t110
  %t111 = load { i64, [4 x i64] }, ptr %t106
  %t112 = load i32, ptr %l2, !tbaa !23
  %t113 = load %"compiler/source:Span", ptr %l4
  %t114 = load ptr, ptr %l104, !tbaa !29
  %t118 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t114, { i64, [4 x i64] } %t111, i32 %t112, %"compiler/source:Span" %t113)
  store i32 %t118, ptr %l113
  br label %bb27
bb27:
  %t119 = load i32, ptr %l113, !tbaa !23
  store i32 %t119, ptr %l8, !tbaa !23
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/lower:lowering", ptr %t120, i32 0, i32 3
  %t124 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t122)
  store i32 %t124, ptr %l116
  br label %bb28
bb28:
  %t125 = load i32, ptr %l116, !tbaa !23
  store i32 %t125, ptr %l9, !tbaa !23
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/lower:lowering", ptr %t126, i32 0, i32 3
  %t130 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t128)
  store i32 %t130, ptr %l119
  br label %bb29
bb29:
  %t131 = load i32, ptr %l119, !tbaa !23
  store i32 %t131, ptr %l10, !tbaa !23
  %t132 = load ptr, ptr %l6, !tbaa !29
  %t133 = load i32, ptr %l7, !tbaa !23
  %t136 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t132, i32 %t133)
  store i1 %t136, ptr %l122
  br label %bb30
bb30:
  %t137 = load i1, ptr %l122, !tbaa !21
  br i1 %t137, label %bb31, label %bb32
bb31:
  %t138 = load ptr, ptr %l6, !tbaa !29
  %t139 = load i32, ptr %l7, !tbaa !23
  %t142 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t138, i32 %t139)
  store i1 %t142, ptr %l126
  br label %bb33
bb32:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb34
bb33:
  %t143 = load i1, ptr %l126, !tbaa !21
  %t144 = xor i1 %t143, true
  store i1 %t144, ptr %l123, !tbaa !21
  br label %bb34
bb34:
  %t146 = load i1, ptr %l123, !tbaa !21
  br i1 %t146, label %bb35, label %bb36
bb35:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t147, i32 %t148)
  br label %bb37
bb36:
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t152 = load i32, ptr %l7, !tbaa !23
  %t155 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t151, i32 %t152)
  store i1 %t155, ptr %l132
  br label %bb38
bb37:
  br label %bb56
bb38:
  %t156 = load i1, ptr %l132, !tbaa !21
  br i1 %t156, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s7
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l133, !tbaa !29
  store i32 19, ptr %l134
  %t158 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t158, ptr %l135, !tbaa !23
  %t159 = load i32, ptr %l8, !tbaa !23
  %t161 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t159)
  store %"compiler/mir:Lvalue" %t161, ptr %l137
  br label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s8
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l159, !tbaa !29
  store i32 14, ptr %l160
  %t163 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t163, ptr %l161, !tbaa !23
  %t164 = load i32, ptr %l8, !tbaa !23
  %t166 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t164)
  store %"compiler/mir:Lvalue" %t166, ptr %l163
  br label %bb48
bb41:
  store { i64, [4 x i64] } zeroinitializer, ptr %t167
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 0
  store i64 1, ptr %t168
  %t169 = load %"compiler/mir:Lvalue", ptr %l137
  %t170 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t169, 0
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t170, ptr %t171
  %t172 = load { i64, [4 x i64] }, ptr %t167
  %t173 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t174
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 0
  store i64 2, ptr %t175
  %t177 = insertvalue { i32, i64 } undef, i32 %t173, 0
  %t178 = insertvalue { i32, i64 } %t177, i64 -1, 1
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  store { i32, i64 } %t178, ptr %t179
  %t180 = load { i64, [4 x i64] }, ptr %t174
  %t181 = mul i64 2, 40
  %t182 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t181)
  %t183 = insertvalue { i64, ptr } undef, i64 2, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  store { i64, ptr } %t184, ptr %l141, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t187, i64 0
  store { i64, [4 x i64] } %t172, ptr %t188
  %t190 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t191, i64 1
  store { i64, [4 x i64] } %t180, ptr %t192
  %t193 = load %"compiler/source:Span", ptr %l4
  %t194 = load ptr, ptr %l133, !tbaa !29
  %t195 = load i32, ptr %l134, !range !{i32 0, i32 52}
  %t196 = load i32, ptr %l135, !tbaa !23
  %t197 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t199 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t194, i32 %t195, i32 %t196, { i64, ptr } %t197, %"compiler/source:Span" %t193)
  store { i64, [4 x i64] } %t199, ptr %l143
  br label %bb42
bb42:
  %t200 = load { i64, [4 x i64] }, ptr %l143
  store { i64, [4 x i64] } %t200, ptr %l11
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/lower:lowering", ptr %t201, i32 0, i32 3
  %t205 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t203)
  store i32 %t205, ptr %l146
  br label %bb43
bb43:
  %t206 = load i32, ptr %l146, !tbaa !23
  store i32 %t206, ptr %l12, !tbaa !23
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load { i64, [4 x i64] }, ptr %l11
  %t209 = load i32, ptr %l12, !tbaa !23
  %t210 = load i32, ptr %l9, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [8 x i64] }, ptr %t211, i32 0, i32 0
  store i64 2, ptr %t212
  %t214 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t208, 0
  %t216 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t214, i32 %t209, 1
  %t218 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t216, i32 %t210, 2
  %t219 = getelementptr { i64, [8 x i64] }, ptr %t211, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t218, ptr %t219
  %t220 = load { i64, [8 x i64] }, ptr %t211
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t207, { i64, [8 x i64] } %t220)
  br label %bb44
bb44:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t223, i32 %t224)
  br label %bb45
bb45:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load { i64, [1 x i64] }, ptr %l3
  %t229 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s7, ptr %t227, { i64, [1 x i64] } %t228, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, %"compiler/source:Span" %t229)
  br label %bb46
bb46:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t233, i32 %t234)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb48:
  store { i64, [4 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 0
  store i64 1, ptr %t238
  %t239 = load %"compiler/mir:Lvalue", ptr %l163
  %t240 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t239, 0
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t240, ptr %t241
  %t242 = load { i64, [4 x i64] }, ptr %t237
  %t243 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t244
  %t245 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 0
  store i64 2, ptr %t245
  %t247 = insertvalue { i32, i64 } undef, i32 %t243, 0
  %t248 = insertvalue { i32, i64 } %t247, i64 0, 1
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  store { i32, i64 } %t248, ptr %t249
  %t250 = load { i64, [4 x i64] }, ptr %t244
  %t251 = mul i64 2, 40
  %t252 = call ptr @__olang_scope_alloc_zeroed(ptr %s8, i64 %t251)
  %t253 = insertvalue { i64, ptr } undef, i64 2, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t252, 1
  store { i64, ptr } %t254, ptr %l167, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t257, i64 0
  store { i64, [4 x i64] } %t242, ptr %t258
  %t260 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr { i64, [4 x i64] }, ptr %t261, i64 1
  store { i64, [4 x i64] } %t250, ptr %t262
  %t263 = load %"compiler/source:Span", ptr %l4
  %t264 = load ptr, ptr %l159, !tbaa !29
  %t265 = load i32, ptr %l160, !range !{i32 0, i32 52}
  %t266 = load i32, ptr %l161, !tbaa !23
  %t267 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t269 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s8, ptr %t264, i32 %t265, i32 %t266, { i64, ptr } %t267, %"compiler/source:Span" %t263)
  store { i64, [4 x i64] } %t269, ptr %l169
  br label %bb49
bb49:
  %t270 = load { i64, [4 x i64] }, ptr %l169
  store { i64, [4 x i64] } %t270, ptr %l13
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/lower:lowering", ptr %t271, i32 0, i32 3
  %t275 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t273)
  store i32 %t275, ptr %l172
  br label %bb50
bb50:
  %t276 = load i32, ptr %l172, !tbaa !23
  store i32 %t276, ptr %l14, !tbaa !23
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load { i64, [4 x i64] }, ptr %l13
  %t279 = load i32, ptr %l9, !tbaa !23
  %t280 = load i32, ptr %l14, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t281
  %t282 = getelementptr { i64, [8 x i64] }, ptr %t281, i32 0, i32 0
  store i64 2, ptr %t282
  %t284 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t278, 0
  %t286 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t284, i32 %t279, 1
  %t288 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t286, i32 %t280, 2
  %t289 = getelementptr { i64, [8 x i64] }, ptr %t281, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t288, ptr %t289
  %t290 = load { i64, [8 x i64] }, ptr %t281
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t277, { i64, [8 x i64] } %t290)
  br label %bb51
bb51:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t293, i32 %t294)
  br label %bb52
bb52:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load { i64, [1 x i64] }, ptr %l3
  %t299 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s8, ptr %t297, { i64, [1 x i64] } %t298, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, %"compiler/source:Span" %t299)
  br label %bb53
bb53:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t303, i32 %t304)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s8)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t307, i32 %t308)
  br label %bb57
bb57:
  %t311 = load ptr, ptr %l6, !tbaa !29
  %t312 = load i32, ptr %l7, !tbaa !23
  %t315 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t311, i32 %t312)
  store i32 %t315, ptr %l189
  br label %bb58
bb58:
  %t316 = load i32, ptr %l189, !tbaa !23
  store i32 %t316, ptr %l15, !tbaa !23
  %t317 = load ptr, ptr %l6, !tbaa !29
  %t318 = load i32, ptr %l15, !tbaa !23
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t317, i32 %t318)
  store i32 %t321, ptr %l192
  br label %bb59
bb59:
  %t322 = load i32, ptr %l192, !range !{i32 0, i32 33}
  %t324 = trunc i64 18 to i32
  %t325 = icmp eq i32 %t322, %t324
  br i1 %t325, label %bb60, label %bb61
bb60:
  %t327 = load ptr, ptr %l6, !tbaa !29
  store ptr %t327, ptr %l196, !tbaa !29
  %t328 = load ptr, ptr %l6, !tbaa !29
  %t329 = load i32, ptr %l15, !tbaa !23
  %t332 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t328, i32 %t329)
  store i32 %t332, ptr %l199
  br label %bb62
bb61:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb64
bb62:
  %t333 = load ptr, ptr %l196, !tbaa !29
  %t334 = load i32, ptr %l199, !tbaa !23
  %t335 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t333, i32 %t334)
  store i32 %t335, ptr %l200
  br label %bb63
bb63:
  %t336 = load i32, ptr %l200, !range !{i32 0, i32 6}
  %t338 = trunc i64 5 to i32
  %t339 = icmp eq i32 %t336, %t338
  store i1 %t339, ptr %l195, !tbaa !21
  br label %bb64
bb64:
  %t341 = load i1, ptr %l195, !tbaa !21
  br i1 %t341, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s9
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l203, !tbaa !29
  %t343 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t343, ptr %l204
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/lower:lowering", ptr %t344, i32 0, i32 2
  %t347 = load ptr, ptr %t346, !tbaa !29
  %t349 = getelementptr %"compiler/types:Table", ptr %t347, i32 0, i32 0
  %t350 = load ptr, ptr %t349, !tbaa !29
  store ptr %t350, ptr %l207, !tbaa !29
  %t351 = load ptr, ptr %l6, !tbaa !29
  store ptr %t351, ptr %l208, !tbaa !29
  %t352 = load ptr, ptr %l6, !tbaa !29
  %t353 = load i32, ptr %l15, !tbaa !23
  %t356 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t352, i32 %t353)
  store i32 %t356, ptr %l211
  br label %bb67
bb66:
  br label %bb73
bb67:
  %t357 = load ptr, ptr %l208, !tbaa !29
  %t358 = load i32, ptr %l211, !tbaa !23
  %t359 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t357, i32 %t358)
  store i32 %t359, ptr %l212
  br label %bb68
bb68:
  %t360 = load ptr, ptr %l207, !tbaa !29
  %t361 = call ptr @__olang_scope_of(ptr %t360, ptr null)
  %t362 = ptrtoint ptr %t361 to i64
  %t364 = inttoptr i64 %t362 to ptr
  %t365 = load ptr, ptr %l207, !tbaa !29
  %t366 = load i32, ptr %l212, !tbaa !23
  %t367 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t364, ptr %s9, ptr %t365, i32 %t366)
  store { i64, ptr } %t367, ptr %l214
  br label %bb69
bb69:
  %t368 = load %"compiler/source:Span", ptr %l4
  %t369 = load ptr, ptr %l203, !tbaa !29
  %t370 = load { i64, [1 x i64] }, ptr %l204
  %t371 = load { i64, ptr }, ptr %l214, !tbaa !27
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s9, ptr %t369, { i64, [1 x i64] } %t370, { i64, ptr } %t371, %"compiler/source:Span" %t368)
  br label %bb70
bb70:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t373, i32 %t374)
  br label %bb71
bb71:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t377, i32 %t378)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb73:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %t381)
  store { i64, [4 x i64] } %t383, ptr %l221
  br label %bb74
bb74:
  %t384 = load { i64, [4 x i64] }, ptr %l221
  store { i64, [4 x i64] } %t384, ptr %l16
  %t385 = load ptr, ptr %l0, !tbaa !29
  store ptr %t385, ptr %l222, !tbaa !29
  store i32 18, ptr %l223
  %t386 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t386, ptr %l224, !tbaa !23
  %t387 = load { i64, [4 x i64] }, ptr %l16
  store { i64, [4 x i64] } %t387, ptr %l225
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t388, i64 8)
  store { i64, [4 x i64] } %t390, ptr %l227
  br label %bb75
bb75:
  %t391 = mul i64 2, 40
  %t392 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t391)
  %t393 = insertvalue { i64, ptr } undef, i64 2, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  store { i64, ptr } %t394, ptr %l228, !tbaa !27
  %t395 = load { i64, [4 x i64] }, ptr %l225
  %t396 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr { i64, [4 x i64] }, ptr %t397, i64 0
  store { i64, [4 x i64] } %t395, ptr %t398
  %t399 = load { i64, [4 x i64] }, ptr %l227
  %t400 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr { i64, [4 x i64] }, ptr %t401, i64 1
  store { i64, [4 x i64] } %t399, ptr %t402
  %t403 = load %"compiler/source:Span", ptr %l4
  %t404 = load ptr, ptr %l222, !tbaa !29
  %t405 = load i32, ptr %l223, !range !{i32 0, i32 52}
  %t406 = load i32, ptr %l224, !tbaa !23
  %t407 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t409 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s4, ptr %t404, i32 %t405, i32 %t406, { i64, ptr } %t407, %"compiler/source:Span" %t403)
  store { i64, [4 x i64] } %t409, ptr %l230
  br label %bb76
bb76:
  %t410 = load { i64, [4 x i64] }, ptr %l230
  store { i64, [4 x i64] } %t410, ptr %l17
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/lower:lowering", ptr %t411, i32 0, i32 3
  %t415 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t413)
  store i32 %t415, ptr %l233
  br label %bb77
bb77:
  %t416 = load i32, ptr %l233, !tbaa !23
  store i32 %t416, ptr %l18, !tbaa !23
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/lower:lowering", ptr %t417, i32 0, i32 3
  %t421 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t419)
  store i32 %t421, ptr %l236
  br label %bb78
bb78:
  %t422 = load i32, ptr %l236, !tbaa !23
  store i32 %t422, ptr %l19, !tbaa !23
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load { i64, [4 x i64] }, ptr %l17
  %t425 = load i32, ptr %l18, !tbaa !23
  %t426 = load i32, ptr %l19, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t427
  %t428 = getelementptr { i64, [8 x i64] }, ptr %t427, i32 0, i32 0
  store i64 2, ptr %t428
  %t430 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t424, 0
  %t432 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t430, i32 %t425, 1
  %t434 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t432, i32 %t426, 2
  %t435 = getelementptr { i64, [8 x i64] }, ptr %t427, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t434, ptr %t435
  %t436 = load { i64, [8 x i64] }, ptr %t427
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t423, { i64, [8 x i64] } %t436)
  br label %bb79
bb79:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load i32, ptr %l18, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t439, i32 %t440)
  br label %bb80
bb80:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load { i64, [1 x i64] }, ptr %l3
  %t445 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s4, ptr %t443, { i64, [1 x i64] } %t444, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, %"compiler/source:Span" %t445)
  br label %bb81
bb81:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t449, i32 %t450)
  br label %bb82
bb82:
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t453, i32 %t454)
  br label %bb83
bb83:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/lower:lowering", ptr %t457, i32 0, i32 8
  %t460 = load { i64, [4 x i64] }, ptr %t459
  store { i64, [4 x i64] } %t460, ptr %l20
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l253, !tbaa !29
  %t463 = load ptr, ptr %l0, !tbaa !29
  store ptr %t463, ptr %l254, !tbaa !29
  store i32 3, ptr %l255
  %t464 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t464, ptr %l256, !tbaa !23
  %t465 = load { i64, [4 x i64] }, ptr %l16
  store { i64, [4 x i64] } %t465, ptr %l257
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t466, i64 1)
  store { i64, [4 x i64] } %t468, ptr %l259
  br label %bb84
bb84:
  %t469 = mul i64 2, 40
  %t470 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t469)
  %t471 = insertvalue { i64, ptr } undef, i64 2, 0
  %t472 = insertvalue { i64, ptr } %t471, ptr %t470, 1
  store { i64, ptr } %t472, ptr %l260, !tbaa !27
  %t473 = load { i64, [4 x i64] }, ptr %l257
  %t474 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !27
  %t476 = getelementptr { i64, [4 x i64] }, ptr %t475, i64 0
  store { i64, [4 x i64] } %t473, ptr %t476
  %t477 = load { i64, [4 x i64] }, ptr %l259
  %t478 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t479 = load ptr, ptr %t478, !tbaa !27
  %t480 = getelementptr { i64, [4 x i64] }, ptr %t479, i64 1
  store { i64, [4 x i64] } %t477, ptr %t480
  %t481 = load %"compiler/source:Span", ptr %l4
  %t482 = load ptr, ptr %l254, !tbaa !29
  %t483 = load i32, ptr %l255, !range !{i32 0, i32 52}
  %t484 = load i32, ptr %l256, !tbaa !23
  %t485 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t487 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s4, ptr %t482, i32 %t483, i32 %t484, { i64, ptr } %t485, %"compiler/source:Span" %t481)
  store { i64, [4 x i64] } %t487, ptr %l262
  br label %bb85
bb85:
  %t488 = load { i64, [4 x i64] }, ptr %l262
  %t489 = load ptr, ptr %l253, !tbaa !29
  %t490 = getelementptr %"compiler/lower:lowering", ptr %t489, i32 0, i32 8
  store { i64, [4 x i64] } %t488, ptr %t490
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l263, !tbaa !29
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load i32, ptr %l8, !tbaa !23
  %t496 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s4, ptr %t492, i32 %t493)
  store %"compiler/lower:pl" %t496, ptr %l266
  br label %bb86
bb86:
  %t497 = load ptr, ptr %l6, !tbaa !29
  %t498 = load i32, ptr %l7, !tbaa !23
  %t501 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t497, i32 %t498)
  store i32 %t501, ptr %l269
  br label %bb87
bb87:
  %t502 = load { i64, [1 x i64] }, ptr %l3
  %t503 = load %"compiler/source:Span", ptr %l4
  %t504 = load ptr, ptr %l263, !tbaa !29
  %t505 = load %"compiler/lower:pl", ptr %l266
  %t506 = load i32, ptr %l269, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %v0, ptr %s4, ptr %t504, %"compiler/lower:pl" %t505, i32 %t506, { i64, [1 x i64] } %t502, %"compiler/source:Span" %t503)
  br label %bb88
bb88:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load { i64, [4 x i64] }, ptr %l20
  %t513 = getelementptr %"compiler/lower:lowering", ptr %t509, i32 0, i32 8
  store { i64, [4 x i64] } %t510, ptr %t513
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t514, i32 %t515)
  br label %bb89
bb89:
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t518, i32 %t519)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb91:
  %t522 = load ptr, ptr %l6, !tbaa !29
  %t523 = load i32, ptr %l7, !tbaa !23
  %t526 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t522, i32 %t523)
  store i32 %t526, ptr %l280
  br label %bb92
bb92:
  %t527 = load i32, ptr %l280, !range !{i32 0, i32 33}
  %t529 = trunc i64 21 to i32
  %t530 = icmp eq i32 %t527, %t529
  br i1 %t530, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s10
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l283, !tbaa !29
  %t533 = load ptr, ptr %l0, !tbaa !29
  store ptr %t533, ptr %l284, !tbaa !29
  %t534 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t534, ptr %l285
  %t536 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s10, ptr %l285)
  store %"compiler/lower:pl" %t536, ptr %l287
  br label %bb95
bb94:
  br label %bb114
bb95:
  %t537 = load ptr, ptr %l284, !tbaa !29
  %t538 = load %"compiler/lower:pl", ptr %l287
  %t539 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s10, ptr %t537, %"compiler/lower:pl" %t538)
  store %"compiler/mir:Lvalue" %t539, ptr %l288
  br label %bb96
bb96:
  store { i64, [4 x i64] } zeroinitializer, ptr %t540
  %t541 = getelementptr { i64, [4 x i64] }, ptr %t540, i32 0, i32 0
  store i64 1, ptr %t541
  %t542 = load %"compiler/mir:Lvalue", ptr %l288
  %t543 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t542, 0
  %t544 = getelementptr { i64, [4 x i64] }, ptr %t540, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t543, ptr %t544
  %t545 = load { i64, [4 x i64] }, ptr %t540
  %t546 = load i32, ptr %l2, !tbaa !23
  %t547 = load %"compiler/source:Span", ptr %l4
  %t548 = load ptr, ptr %l283, !tbaa !29
  %t552 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t548, { i64, [4 x i64] } %t545, i32 %t546, %"compiler/source:Span" %t547)
  store i32 %t552, ptr %l292
  br label %bb97
bb97:
  %t553 = load i32, ptr %l292, !tbaa !23
  %t554 = load ptr, ptr %l0, !tbaa !29
  store ptr %t554, ptr %l293, !tbaa !29
  store i32 14, ptr %l294
  %t555 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t555, ptr %l295, !tbaa !23
  %t558 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t553)
  store %"compiler/mir:Lvalue" %t558, ptr %l297
  br label %bb98
bb98:
  store { i64, [4 x i64] } zeroinitializer, ptr %t559
  %t560 = getelementptr { i64, [4 x i64] }, ptr %t559, i32 0, i32 0
  store i64 1, ptr %t560
  %t561 = load %"compiler/mir:Lvalue", ptr %l297
  %t562 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t561, 0
  %t563 = getelementptr { i64, [4 x i64] }, ptr %t559, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t562, ptr %t563
  %t564 = load { i64, [4 x i64] }, ptr %t559
  %t565 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t566
  %t567 = getelementptr { i64, [4 x i64] }, ptr %t566, i32 0, i32 0
  store i64 2, ptr %t567
  %t569 = insertvalue { i32, i64 } undef, i32 %t565, 0
  %t570 = insertvalue { i32, i64 } %t569, i64 0, 1
  %t571 = getelementptr { i64, [4 x i64] }, ptr %t566, i32 0, i32 1
  store { i32, i64 } %t570, ptr %t571
  %t572 = load { i64, [4 x i64] }, ptr %t566
  %t573 = mul i64 2, 40
  %t574 = call ptr @__olang_scope_alloc_zeroed(ptr %s10, i64 %t573)
  %t575 = insertvalue { i64, ptr } undef, i64 2, 0
  %t576 = insertvalue { i64, ptr } %t575, ptr %t574, 1
  store { i64, ptr } %t576, ptr %l301, !tbaa !27
  %t578 = getelementptr { i64, ptr }, ptr %l301, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr { i64, [4 x i64] }, ptr %t579, i64 0
  store { i64, [4 x i64] } %t564, ptr %t580
  %t582 = getelementptr { i64, ptr }, ptr %l301, i32 0, i32 1
  %t583 = load ptr, ptr %t582, !tbaa !27
  %t584 = getelementptr { i64, [4 x i64] }, ptr %t583, i64 1
  store { i64, [4 x i64] } %t572, ptr %t584
  %t585 = load %"compiler/source:Span", ptr %l4
  %t586 = load ptr, ptr %l293, !tbaa !29
  %t587 = load i32, ptr %l294, !range !{i32 0, i32 52}
  %t588 = load i32, ptr %l295, !tbaa !23
  %t589 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t591 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s10, ptr %t586, i32 %t587, i32 %t588, { i64, ptr } %t589, %"compiler/source:Span" %t585)
  store { i64, [4 x i64] } %t591, ptr %l303
  br label %bb99
bb99:
  %t592 = load { i64, [4 x i64] }, ptr %l303
  store { i64, [4 x i64] } %t592, ptr %l22
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = getelementptr %"compiler/lower:lowering", ptr %t593, i32 0, i32 3
  %t597 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t595)
  store i32 %t597, ptr %l306
  br label %bb100
bb100:
  %t598 = load i32, ptr %l306, !tbaa !23
  store i32 %t598, ptr %l23, !tbaa !23
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t601 = getelementptr %"compiler/lower:lowering", ptr %t599, i32 0, i32 3
  %t603 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t601)
  store i32 %t603, ptr %l309
  br label %bb101
bb101:
  %t604 = load i32, ptr %l309, !tbaa !23
  store i32 %t604, ptr %l24, !tbaa !23
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/lower:lowering", ptr %t605, i32 0, i32 3
  %t609 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t607)
  store i32 %t609, ptr %l312
  br label %bb102
bb102:
  %t610 = load i32, ptr %l312, !tbaa !23
  store i32 %t610, ptr %l25, !tbaa !23
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t612 = load { i64, [4 x i64] }, ptr %l22
  %t613 = load i32, ptr %l23, !tbaa !23
  %t614 = load i32, ptr %l24, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t615
  %t616 = getelementptr { i64, [8 x i64] }, ptr %t615, i32 0, i32 0
  store i64 2, ptr %t616
  %t618 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t612, 0
  %t620 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t618, i32 %t613, 1
  %t622 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t620, i32 %t614, 2
  %t623 = getelementptr { i64, [8 x i64] }, ptr %t615, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t622, ptr %t623
  %t624 = load { i64, [8 x i64] }, ptr %t615
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t611, { i64, [8 x i64] } %t624)
  br label %bb103
bb103:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t627, i32 %t628)
  br label %bb104
bb104:
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t632 = load { i64, [1 x i64] }, ptr %l3
  %t633 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s10, ptr %t631, { i64, [1 x i64] } %t632, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, %"compiler/source:Span" %t633)
  br label %bb105
bb105:
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t638 = load i32, ptr %l25, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t637, i32 %t638)
  br label %bb106
bb106:
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t642 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t641, i32 %t642)
  br label %bb107
bb107:
  %t645 = load ptr, ptr %l0, !tbaa !29
  store ptr %t645, ptr %l327, !tbaa !29
  %t646 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t646, ptr %l328
  %t647 = load ptr, ptr %l0, !tbaa !29
  store ptr %t647, ptr %l329, !tbaa !29
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t650 = getelementptr %"compiler/lower:lowering", ptr %t648, i32 0, i32 2
  %t651 = load ptr, ptr %t650, !tbaa !29
  store ptr %t651, ptr %l331, !tbaa !29
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t654 = getelementptr %"compiler/lower:lowering", ptr %t652, i32 0, i32 2
  %t655 = load ptr, ptr %t654, !tbaa !29
  %t656 = load i32, ptr %l2, !tbaa !23
  %t659 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t655, i32 %t656)
  store i32 %t659, ptr %l335
  br label %bb108
bb108:
  %t660 = load ptr, ptr %l331, !tbaa !29
  %t661 = load i32, ptr %l335, !tbaa !23
  %t662 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %t660, i32 %t661)
  store i32 %t662, ptr %l336
  br label %bb109
bb109:
  %t663 = load i1, ptr %l5, !tbaa !21
  %t665 = xor i1 %t663, true
  %t666 = load ptr, ptr %l329, !tbaa !29
  %t667 = load i32, ptr %l336, !tbaa !23
  %t669 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s10, ptr %t666, i32 %t667, i1 true, i1 %t665, i1 false)
  store { i64, ptr } %t669, ptr %l339
  br label %bb110
bb110:
  %t670 = load { i64, ptr }, ptr %l339, !tbaa !27
  %t671 = extractvalue { i64, ptr } %t670, 0
  %t672 = extractvalue { i64, ptr } %t670, 1
  %t673 = mul i64 %t671, 1
  %t674 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t673)
  call void @llvm.memcpy.p0.p0.i64(ptr %t674, ptr %t672, i64 %t673, i1 false)
  %t675 = insertvalue { i64, ptr } undef, i64 %t671, 0
  %t676 = insertvalue { i64, ptr } %t675, ptr %t674, 1
  %t677 = load %"compiler/source:Span", ptr %l4
  %t678 = load ptr, ptr %l327, !tbaa !29
  %t679 = load { i64, [1 x i64] }, ptr %l328
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s10, ptr %t678, { i64, [1 x i64] } %t679, { i64, ptr } %t676, %"compiler/source:Span" %t677)
  br label %bb111
bb111:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t683 = load i32, ptr %l25, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t682, i32 %t683)
  br label %bb112
bb112:
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t687 = load i32, ptr %l25, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t686, i32 %t687)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb114:
  %t690 = load i1, ptr %l5, !tbaa !21
  %t692 = xor i1 %t690, true
  br i1 %t692, label %bb115, label %bb116
bb115:
  store %olang.scope zeroinitializer, ptr %s11
  %t694 = load ptr, ptr %l0, !tbaa !29
  store ptr %t694, ptr %l348, !tbaa !29
  store i32 0, ptr %l349
  %t695 = load i32, ptr %l2, !tbaa !23
  store i32 %t695, ptr %l350, !tbaa !23
  %t696 = load ptr, ptr %l0, !tbaa !29
  store ptr %t696, ptr %l351, !tbaa !29
  %t697 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t697, ptr %l352
  %t699 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s11, ptr %l352)
  store %"compiler/lower:pl" %t699, ptr %l354
  br label %bb117
bb116:
  br label %bb121
bb117:
  %t700 = load i32, ptr %l2, !tbaa !23
  %t701 = load %"compiler/source:Span", ptr %l4
  %t702 = load ptr, ptr %l351, !tbaa !29
  %t703 = load %"compiler/lower:pl", ptr %l354
  %t706 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s11, ptr %t702, %"compiler/lower:pl" %t703, i32 %t700, %"compiler/source:Span" %t701)
  store { i64, [4 x i64] } %t706, ptr %l357
  br label %bb118
bb118:
  %t707 = load ptr, ptr %l0, !tbaa !29
  %t709 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %t707)
  store { i64, [4 x i64] } %t709, ptr %l359
  br label %bb119
bb119:
  %t710 = mul i64 2, 40
  %t711 = call ptr @__olang_scope_alloc_zeroed(ptr %s11, i64 %t710)
  %t712 = insertvalue { i64, ptr } undef, i64 2, 0
  %t713 = insertvalue { i64, ptr } %t712, ptr %t711, 1
  store { i64, ptr } %t713, ptr %l360, !tbaa !27
  %t714 = load { i64, [4 x i64] }, ptr %l357
  %t715 = getelementptr { i64, ptr }, ptr %l360, i32 0, i32 1
  %t716 = load ptr, ptr %t715, !tbaa !27
  %t717 = getelementptr { i64, [4 x i64] }, ptr %t716, i64 0
  store { i64, [4 x i64] } %t714, ptr %t717
  %t718 = load { i64, [4 x i64] }, ptr %l359
  %t719 = getelementptr { i64, ptr }, ptr %l360, i32 0, i32 1
  %t720 = load ptr, ptr %t719, !tbaa !27
  %t721 = getelementptr { i64, [4 x i64] }, ptr %t720, i64 1
  store { i64, [4 x i64] } %t718, ptr %t721
  %t722 = load { i64, [1 x i64] }, ptr %l3
  %t723 = mul i64 1, 16
  %t724 = call ptr @__olang_scope_alloc_zeroed(ptr %s11, i64 %t723)
  %t725 = insertvalue { i64, ptr } undef, i64 1, 0
  %t726 = insertvalue { i64, ptr } %t725, ptr %t724, 1
  store { i64, ptr } %t726, ptr %l362, !tbaa !27
  %t728 = getelementptr { i64, ptr }, ptr %l362, i32 0, i32 1
  %t729 = load ptr, ptr %t728, !tbaa !27
  %t730 = getelementptr { i64, [1 x i64] }, ptr %t729, i64 0
  store { i64, [1 x i64] } %t722, ptr %t730
  %t731 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t732 = load %"compiler/source:Span", ptr %l4
  %t733 = load ptr, ptr %l348, !tbaa !29
  %t734 = load i32, ptr %l349, !range !{i32 0, i32 8}
  %t735 = load i32, ptr %l350, !tbaa !23
  %t736 = load { i64, ptr }, ptr %l360, !tbaa !27
  %t737 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t740 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s11, ptr %s11, ptr %t733, i32 %t734, i32 %t735, { i64, ptr } %t736, { i64, ptr } %t737, i32 %t731, %"compiler/source:Span" %t732)
  store { i64, [4 x i64] } %t740, ptr %l365
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb121:
  %t741 = load ptr, ptr %l0, !tbaa !29
  %t742 = load i32, ptr %l2, !tbaa !23
  %t745 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t741, i32 %t742)
  store { i64, ptr } %t745, ptr %l368
  br label %bb122
bb122:
  %t746 = load { i64, ptr }, ptr %l368, !tbaa !27
  store { i64, ptr } %t746, ptr %l26, !tbaa !27
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t749 = getelementptr %"compiler/lower:lowering", ptr %t747, i32 0, i32 2
  %t750 = load ptr, ptr %t749, !tbaa !29
  %t751 = load i32, ptr %l2, !tbaa !23
  %t754 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t750, i32 %t751)
  store i1 %t754, ptr %l372
  br label %bb123
bb123:
  %t755 = load i1, ptr %l372, !tbaa !21
  store i1 %t755, ptr %l27, !tbaa !21
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t757 = load i32, ptr %l2, !tbaa !23
  %t760 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %s0, ptr %t756, i32 %t757)
  store { i64, ptr } %t760, ptr %l375
  br label %bb124
bb124:
  %t761 = load { i64, ptr }, ptr %l375, !tbaa !27
  store { i64, ptr } %t761, ptr %l28, !tbaa !27
  %t762 = load ptr, ptr %l0, !tbaa !29
  %t764 = getelementptr %"compiler/lower:lowering", ptr %t762, i32 0, i32 2
  %t765 = load ptr, ptr %t764, !tbaa !29
  %t766 = load i32, ptr %l2, !tbaa !23
  %t769 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t765, i32 %t766)
  store i1 %t769, ptr %l379
  br label %bb125
bb125:
  %t770 = load i1, ptr %l379, !tbaa !21
  store i1 %t770, ptr %l29, !tbaa !21
  %t771 = load i1, ptr %l27, !tbaa !21
  br i1 %t771, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s12
  %t773 = load ptr, ptr %l6, !tbaa !29
  %t774 = load i32, ptr %l7, !tbaa !23
  %t777 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t773, i32 %t774)
  store i32 %t777, ptr %l383
  br label %bb128
bb127:
  %t778 = load i1, ptr %l29, !tbaa !21
  br i1 %t778, label %bb159, label %bb160
bb128:
  %t780 = load i32, ptr %l383, !range !{i32 0, i32 33}
  %t782 = trunc i64 18 to i32
  %t783 = icmp eq i32 %t780, %t782
  br i1 %t783, label %bb129, label %bb130
bb129:
  store %olang.scope zeroinitializer, ptr %s13
  %t785 = load ptr, ptr %l0, !tbaa !29
  store ptr %t785, ptr %l386, !tbaa !29
  %t786 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t786, ptr %l387
  %t787 = load ptr, ptr %l0, !tbaa !29
  %t789 = getelementptr %"compiler/lower:lowering", ptr %t787, i32 0, i32 0
  %t790 = load ptr, ptr %t789, !tbaa !29
  store ptr %t790, ptr %l389, !tbaa !29
  %t791 = load ptr, ptr %l6, !tbaa !29
  %t792 = load i32, ptr %l7, !tbaa !23
  %t795 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t791, i32 %t792)
  store i32 %t795, ptr %l392
  br label %bb131
bb130:
  br label %bb137
bb131:
  %t796 = load ptr, ptr %l389, !tbaa !29
  %t797 = load i32, ptr %l392, !tbaa !23
  %t798 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %s13, ptr %t796, i32 %t797)
  store { i64, ptr } %t798, ptr %l393
  br label %bb132
bb132:
  %t799 = load ptr, ptr %l0, !tbaa !29
  %t801 = getelementptr %"compiler/lower:lowering", ptr %t799, i32 0, i32 2
  %t802 = load ptr, ptr %t801, !tbaa !29
  %t804 = getelementptr %"compiler/types:Table", ptr %t802, i32 0, i32 0
  %t805 = load ptr, ptr %t804, !tbaa !29
  store ptr %t805, ptr %l396, !tbaa !29
  %t806 = load ptr, ptr %l6, !tbaa !29
  store ptr %t806, ptr %l397, !tbaa !29
  %t807 = load ptr, ptr %l6, !tbaa !29
  %t808 = load i32, ptr %l7, !tbaa !23
  %t811 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t807, i32 %t808)
  store i32 %t811, ptr %l400
  br label %bb133
bb133:
  %t812 = load ptr, ptr %l397, !tbaa !29
  %t813 = load i32, ptr %l400, !tbaa !23
  %t814 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t812, i32 %t813)
  store i32 %t814, ptr %l401
  br label %bb134
bb134:
  %t815 = load ptr, ptr %l396, !tbaa !29
  %t816 = call ptr @__olang_scope_of(ptr %t815, ptr null)
  %t817 = ptrtoint ptr %t816 to i64
  %t819 = inttoptr i64 %t817 to ptr
  %t820 = load ptr, ptr %l396, !tbaa !29
  %t821 = load i32, ptr %l401, !tbaa !23
  %t822 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t819, ptr %s13, ptr %t820, i32 %t821)
  store { i64, ptr } %t822, ptr %l403
  br label %bb135
bb135:
  %t823 = load { i64, ptr }, ptr %l393, !tbaa !27
  %t824 = extractvalue { i64, ptr } %t823, 1
  %t825 = extractvalue { i64, ptr } %t823, 0
  %t826 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t827 = extractvalue { i64, ptr } %t826, 1
  %t828 = extractvalue { i64, ptr } %t826, 0
  %t829 = add i64 %t825, %t828
  %t830 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t829)
  call void @olang_textcopy(ptr %t830, ptr %t824, i64 %t825)
  %t831 = getelementptr i8, ptr %t830, i64 %t825
  call void @olang_textcopy(ptr %t831, ptr %t827, i64 %t828)
  %t832 = insertvalue { i64, ptr } undef, i64 %t829, 0
  %t833 = insertvalue { i64, ptr } %t832, ptr %t830, 1
  %t835 = extractvalue { i64, ptr } %t833, 0
  %t836 = extractvalue { i64, ptr } %t833, 1
  %t837 = mul i64 %t835, 1
  %t838 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t837)
  call void @llvm.memcpy.p0.p0.i64(ptr %t838, ptr %t836, i64 %t837, i1 false)
  %t839 = insertvalue { i64, ptr } undef, i64 %t835, 0
  %t840 = insertvalue { i64, ptr } %t839, ptr %t838, 1
  %t841 = load %"compiler/source:Span", ptr %l4
  %t842 = load ptr, ptr %l386, !tbaa !29
  %t843 = load { i64, [1 x i64] }, ptr %l387
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s13, ptr %t842, { i64, [1 x i64] } %t843, { i64, ptr } %t840, %"compiler/source:Span" %t841)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s13)
  br label %bb137
bb137:
  %t846 = load ptr, ptr %l0, !tbaa !29
  %t847 = load { i64, [1 x i64] }, ptr %l3
  %t848 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s12, ptr %t846, { i64, [1 x i64] } %t847, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, %"compiler/source:Span" %t848)
  br label %bb138
bb138:
  store i64 0, ptr %l30, !tbaa !24
  %t852 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t854 = extractvalue { i64, ptr } %t852, 0
  store i64 %t854, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t856 = load i64, ptr %l31, !tbaa !24
  %t857 = load i64, ptr %l30, !tbaa !24
  %t860 = icmp sgt i64 %t856, %t857
  br i1 %t860, label %bb139, label %bb140
bb139:
  %t862 = load i64, ptr %l32, !tbaa !24
  %t864 = icmp sgt i64 %t862, 0
  br i1 %t864, label %bb141, label %bb142
bb140:
  store i64 0, ptr %l415, !tbaa !24
  br label %bb144
bb141:
  %t866 = load i64, ptr %l31, !tbaa !24
  %t867 = load i64, ptr %l30, !tbaa !24
  %t870 = sub i64 %t866, %t867
  %t871 = load i64, ptr %l32, !tbaa !24
  %t874 = add i64 %t870, %t871
  %t876 = sub i64 %t874, 1
  %t877 = load i64, ptr %l32, !tbaa !24
  %t880 = sdiv i64 %t876, %t877
  store i64 %t880, ptr %l418, !tbaa !24
  br label %bb143
bb142:
  store i64 0, ptr %l418, !tbaa !24
  br label %bb143
bb143:
  %t882 = load i64, ptr %l418, !tbaa !24
  store i64 %t882, ptr %l415, !tbaa !24
  br label %bb144
bb144:
  %t883 = load i64, ptr %l415, !tbaa !24
  store i64 %t883, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb145
bb145:
  store %olang.scope zeroinitializer, ptr %s16
  %t884 = load i64, ptr %l34, !tbaa !24
  %t885 = load i64, ptr %l33, !tbaa !24
  %t888 = icmp slt i64 %t884, %t885
  %t890 = xor i1 %t888, true
  br i1 %t890, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s16)
  br label %bb157
bb147:
  br label %bb148
bb148:
  %t892 = load i64, ptr %l30, !tbaa !24
  %t893 = load i64, ptr %l34, !tbaa !24
  %t894 = load i64, ptr %l32, !tbaa !24
  %t897 = mul i64 %t893, %t894
  %t900 = add i64 %t892, %t897
  store i64 %t900, ptr %l35, !tbaa !24
  %t902 = load i64, ptr %l35, !tbaa !24
  %t904 = icmp sgt i64 %t902, 0
  br i1 %t904, label %bb149, label %bb150
bb149:
  store %olang.scope zeroinitializer, ptr %s17
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t907 = load { i64, [1 x i64] }, ptr %l3
  %t908 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s17, ptr %t906, { i64, [1 x i64] } %t907, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, %"compiler/source:Span" %t908)
  br label %bb151
bb150:
  br label %bb152
bb151:
  call void @__olang_scope_close(ptr %s17)
  br label %bb152
bb152:
  %t912 = load ptr, ptr %l0, !tbaa !29
  store ptr %t912, ptr %l441, !tbaa !29
  %t913 = load ptr, ptr %l0, !tbaa !29
  store ptr %t913, ptr %l442, !tbaa !29
  %t914 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t914, ptr %l443
  %t916 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s16, ptr %l443)
  store %"compiler/lower:pl" %t916, ptr %l445
  br label %bb153
bb153:
  %t917 = load i32, ptr %l2, !tbaa !23
  %t918 = load i64, ptr %l35, !tbaa !24
  %t919 = load %"compiler/source:Span", ptr %l4
  %t920 = load ptr, ptr %l442, !tbaa !29
  %t921 = load %"compiler/lower:pl", ptr %l445
  %t925 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %s16, ptr %s16, ptr %t920, %"compiler/lower:pl" %t921, i32 %t917, i64 %t918, %"compiler/source:Span" %t919)
  store %"compiler/lower:pl" %t925, ptr %l449
  br label %bb154
bb154:
  %t926 = load i64, ptr %l35, !tbaa !24
  %t928 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t929 = load ptr, ptr %t928, !tbaa !27
  %t930 = getelementptr i32, ptr %t929, i64 %t926
  %t931 = load i32, ptr %t930, !tbaa !33
  %t932 = load { i64, [1 x i64] }, ptr %l3
  %t933 = load %"compiler/source:Span", ptr %l4
  %t934 = load ptr, ptr %l441, !tbaa !29
  %t935 = load %"compiler/lower:pl", ptr %l449
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %v0, ptr %s16, ptr %t934, %"compiler/lower:pl" %t935, i32 %t931, { i64, [1 x i64] } %t932, %"compiler/source:Span" %t933)
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s16)
  br label %bb156
bb156:
  %t939 = load i64, ptr %l34, !tbaa !24
  %t941 = add i64 %t939, 1
  store i64 %t941, ptr %l34, !tbaa !24
  br label %bb145
bb157:
  %t943 = load ptr, ptr %l0, !tbaa !29
  %t944 = load { i64, [1 x i64] }, ptr %l3
  %t945 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s12, ptr %t943, { i64, [1 x i64] } %t944, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, %"compiler/source:Span" %t945)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s12)
  br label %bb252
bb159:
  store %olang.scope zeroinitializer, ptr %s20
  %t949 = load ptr, ptr %l6, !tbaa !29
  %t950 = load i32, ptr %l7, !tbaa !23
  %t953 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t949, i32 %t950)
  store i32 %t953, ptr %l462
  br label %bb161
bb160:
  %t954 = load ptr, ptr %l0, !tbaa !29
  %t955 = load i32, ptr %l2, !tbaa !23
  %t958 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t954, i32 %t955)
  store i32 %t958, ptr %l644
  br label %bb235
bb161:
  %t959 = load i32, ptr %l462, !range !{i32 0, i32 33}
  %t961 = trunc i64 18 to i32
  %t962 = icmp eq i32 %t959, %t961
  br i1 %t962, label %bb162, label %bb163
bb162:
  %t964 = load ptr, ptr %l6, !tbaa !29
  %t965 = load i32, ptr %l7, !tbaa !23
  %t968 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s20, ptr %t964, i32 %t965)
  store { i64, ptr } %t968, ptr %l468
  br label %bb164
bb163:
  %t969 = load ptr, ptr %l6, !tbaa !29
  %t970 = load i32, ptr %l7, !tbaa !23
  %t973 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %s20, ptr %t969, i32 %t970)
  store { i64, ptr } %t973, ptr %l471
  br label %bb165
bb164:
  %t974 = load { i64, ptr }, ptr %l468, !tbaa !27
  store { i64, ptr } %t974, ptr %l465, !tbaa !27
  br label %bb166
bb165:
  %t975 = load { i64, ptr }, ptr %l471, !tbaa !27
  store { i64, ptr } %t975, ptr %l465, !tbaa !27
  br label %bb166
bb166:
  %t976 = load { i64, ptr }, ptr %l465, !tbaa !27
  store { i64, ptr } %t976, ptr %l36, !tbaa !27
  %t977 = load ptr, ptr %l0, !tbaa !29
  store ptr %t977, ptr %l472, !tbaa !29
  %t978 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t978, ptr %l473, !tbaa !23
  %t979 = load ptr, ptr %l0, !tbaa !29
  store ptr %t979, ptr %l474, !tbaa !29
  %t980 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t980, ptr %l475
  %t982 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s20, ptr %l475)
  store %"compiler/lower:pl" %t982, ptr %l477
  br label %bb167
bb167:
  %t983 = load ptr, ptr %l474, !tbaa !29
  %t984 = load %"compiler/lower:pl", ptr %l477
  %t985 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s20, ptr %t983, %"compiler/lower:pl" %t984)
  store %"compiler/mir:Lvalue" %t985, ptr %l478
  br label %bb168
bb168:
  store { i64, [15 x i64] } zeroinitializer, ptr %t986
  %t987 = getelementptr { i64, [15 x i64] }, ptr %t986, i32 0, i32 0
  store i64 5, ptr %t987
  %t988 = load %"compiler/mir:Lvalue", ptr %l478
  %t989 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t988, 0
  %t990 = getelementptr { i64, [15 x i64] }, ptr %t986, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t989, ptr %t990
  %t991 = load { i64, [15 x i64] }, ptr %t986
  %t992 = load %"compiler/source:Span", ptr %l4
  %t993 = load ptr, ptr %l472, !tbaa !29
  %t994 = load i32, ptr %l473, !tbaa !23
  %t997 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t993, i32 %t994, { i64, [15 x i64] } %t991, %"compiler/source:Span" %t992)
  store { i64, [4 x i64] } %t997, ptr %l481
  br label %bb169
bb169:
  %t998 = load { i64, [4 x i64] }, ptr %l481
  store { i64, [4 x i64] } %t998, ptr %l37
  %t999 = load ptr, ptr %l6, !tbaa !29
  %t1000 = load i32, ptr %l7, !tbaa !23
  %t1003 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t999, i32 %t1000)
  store i32 %t1003, ptr %l484
  br label %bb170
bb170:
  %t1004 = load i32, ptr %l484, !range !{i32 0, i32 33}
  %t1006 = trunc i64 18 to i32
  %t1007 = icmp eq i32 %t1004, %t1006
  %t1009 = xor i1 %t1007, true
  br i1 %t1009, label %bb171, label %bb172
bb171:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l488, !tbaa !27
  br label %bb178
bb172:
  %t1011 = load ptr, ptr %l0, !tbaa !29
  %t1013 = getelementptr %"compiler/lower:lowering", ptr %t1011, i32 0, i32 0
  %t1014 = load ptr, ptr %t1013, !tbaa !29
  store ptr %t1014, ptr %l490, !tbaa !29
  %t1015 = load ptr, ptr %l6, !tbaa !29
  %t1016 = load i32, ptr %l7, !tbaa !23
  %t1019 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t1015, i32 %t1016)
  store i32 %t1019, ptr %l493
  br label %bb173
bb173:
  %t1020 = load ptr, ptr %l490, !tbaa !29
  %t1021 = load i32, ptr %l493, !tbaa !23
  %t1022 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %s20, ptr %t1020, i32 %t1021)
  store { i64, ptr } %t1022, ptr %l494
  br label %bb174
bb174:
  %t1023 = load ptr, ptr %l0, !tbaa !29
  %t1025 = getelementptr %"compiler/lower:lowering", ptr %t1023, i32 0, i32 2
  %t1026 = load ptr, ptr %t1025, !tbaa !29
  %t1028 = getelementptr %"compiler/types:Table", ptr %t1026, i32 0, i32 0
  %t1029 = load ptr, ptr %t1028, !tbaa !29
  store ptr %t1029, ptr %l497, !tbaa !29
  %t1030 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1030, ptr %l498, !tbaa !29
  %t1031 = load ptr, ptr %l6, !tbaa !29
  %t1032 = load i32, ptr %l7, !tbaa !23
  %t1035 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t1031, i32 %t1032)
  store i32 %t1035, ptr %l501
  br label %bb175
bb175:
  %t1036 = load ptr, ptr %l498, !tbaa !29
  %t1037 = load i32, ptr %l501, !tbaa !23
  %t1038 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t1036, i32 %t1037)
  store i32 %t1038, ptr %l502
  br label %bb176
bb176:
  %t1039 = load ptr, ptr %l497, !tbaa !29
  %t1040 = call ptr @__olang_scope_of(ptr %t1039, ptr null)
  %t1041 = ptrtoint ptr %t1040 to i64
  %t1043 = inttoptr i64 %t1041 to ptr
  %t1044 = load ptr, ptr %l497, !tbaa !29
  %t1045 = load i32, ptr %l502, !tbaa !23
  %t1046 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t1043, ptr %s20, ptr %t1044, i32 %t1045)
  store { i64, ptr } %t1046, ptr %l504
  br label %bb177
bb177:
  %t1047 = load { i64, ptr }, ptr %l494, !tbaa !27
  %t1048 = extractvalue { i64, ptr } %t1047, 1
  %t1049 = extractvalue { i64, ptr } %t1047, 0
  %t1050 = load { i64, ptr }, ptr %l504, !tbaa !27
  %t1051 = extractvalue { i64, ptr } %t1050, 1
  %t1052 = extractvalue { i64, ptr } %t1050, 0
  %t1053 = add i64 %t1049, %t1052
  %t1054 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t1055 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t1056 = add i64 %t1053, %t1055
  %t1057 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t1056)
  call void @olang_textcopy(ptr %t1057, ptr %t1048, i64 %t1049)
  %t1058 = getelementptr i8, ptr %t1057, i64 %t1049
  call void @olang_textcopy(ptr %t1058, ptr %t1051, i64 %t1052)
  %t1059 = getelementptr i8, ptr %t1058, i64 %t1052
  call void @olang_textcopy(ptr %t1059, ptr %t1054, i64 %t1055)
  %t1060 = insertvalue { i64, ptr } undef, i64 %t1056, 0
  %t1061 = insertvalue { i64, ptr } %t1060, ptr %t1057, 1
  %t1063 = extractvalue { i64, ptr } %t1061, 0
  %t1064 = extractvalue { i64, ptr } %t1061, 1
  %t1065 = mul i64 %t1063, 1
  %t1066 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t1065)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1066, ptr %t1064, i64 %t1065, i1 false)
  %t1067 = insertvalue { i64, ptr } undef, i64 %t1063, 0
  %t1068 = insertvalue { i64, ptr } %t1067, ptr %t1066, 1
  store { i64, ptr } %t1068, ptr %l488, !tbaa !27
  br label %bb178
bb178:
  %t1070 = load { i64, ptr }, ptr %l488, !tbaa !27
  store { i64, ptr } %t1070, ptr %l38, !tbaa !27
  %t1071 = load ptr, ptr %l0, !tbaa !29
  %t1073 = getelementptr %"compiler/lower:lowering", ptr %t1071, i32 0, i32 3
  %t1075 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t1073)
  store i32 %t1075, ptr %l509
  br label %bb179
bb179:
  %t1076 = load i32, ptr %l509, !tbaa !23
  store i32 %t1076, ptr %l39, !tbaa !23
  %t1077 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t1079 = extractvalue { i64, ptr } %t1077, 0
  store i64 %t1079, ptr %l511, !tbaa !24
  store %"compiler/mir:Case" zeroinitializer, ptr %l512
  %t1080 = load i64, ptr %l511, !tbaa !24
  %t1081 = icmp sgt i64 %t1080, 0
  br i1 %t1081, label %bb180, label %bb181
bb180:
  %t1083 = call %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %s20, i64 0, i32 0)
  store %"compiler/mir:Case" %t1083, ptr %l514
  br label %bb182
bb181:
  %t1084 = load i64, ptr %l511, !tbaa !24
  %t1085 = icmp sge i64 %t1084, 0
  br i1 %t1085, label %bb183, label %bb184
bb182:
  %t1087 = load %"compiler/mir:Case", ptr %l514
  store %"compiler/mir:Case" %t1087, ptr %l512
  br label %bb181
bb183:
  %t1088 = load i64, ptr %l511, !tbaa !24
  %t1089 = icmp sle i64 %t1088, 576460752303423487
  br i1 %t1089, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_7adf76f2408b5bdd_bd99dd0034e41651)
  unreachable
bb185:
  %t1091 = load i64, ptr %l511, !tbaa !24
  %t1092 = mul i64 %t1091, 16
  %t1093 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t1092)
  %t1094 = load %"compiler/mir:Case", ptr %l512
  store i64 0, ptr %t1095
  br label %fill.1096
fill.1096:
  %t1099 = load i64, ptr %t1095
  %t1100 = icmp slt i64 %t1099, %t1091
  br i1 %t1100, label %fillb.1097, label %filld.1098
fillb.1097:
  %t1101 = getelementptr %"compiler/mir:Case", ptr %t1093, i64 %t1099
  store %"compiler/mir:Case" %t1094, ptr %t1101
  %t1102 = add i64 %t1099, 1
  store i64 %t1102, ptr %t1095
  br label %fill.1096
filld.1098:
  %t1103 = insertvalue { i64, ptr } undef, i64 %t1091, 0
  %t1104 = insertvalue { i64, ptr } %t1103, ptr %t1093, 1
  store { i64, ptr } %t1104, ptr %l40, !tbaa !27
  %t1106 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t1108 = extractvalue { i64, ptr } %t1106, 0
  store i64 %t1108, ptr %l519, !tbaa !24
  %t1109 = load i64, ptr %l519, !tbaa !24
  %t1110 = icmp sge i64 %t1109, 0
  br i1 %t1110, label %bb187, label %bb188
bb186:
  call void @__olang_check_failed(ptr @olang_loc_7adf76f2408b5bdd_bd99dd0034e41651)
  unreachable
bb187:
  %t1112 = load i64, ptr %l519, !tbaa !24
  %t1113 = icmp sle i64 %t1112, 2305843009213693951
  br i1 %t1113, label %bb189, label %bb190
bb188:
  call void @__olang_check_failed(ptr @olang_loc_4257ffd395d48830_792957a97ae844)
  unreachable
bb189:
  %t1115 = load i64, ptr %l519, !tbaa !24
  %t1116 = mul i64 %t1115, 4
  %t1117 = call ptr @__olang_scope_alloc_zeroed(ptr %s20, i64 %t1116)
  %t1118 = insertvalue { i64, ptr } undef, i64 %t1115, 0
  %t1119 = insertvalue { i64, ptr } %t1118, ptr %t1117, 1
  store { i64, ptr } %t1119, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t1121 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t1123 = extractvalue { i64, ptr } %t1121, 0
  store i64 %t1123, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t1125 = load i64, ptr %l43, !tbaa !24
  %t1126 = load i64, ptr %l42, !tbaa !24
  %t1129 = icmp sgt i64 %t1125, %t1126
  br i1 %t1129, label %bb191, label %bb192
bb190:
  call void @__olang_check_failed(ptr @olang_loc_4257ffd395d48830_792957a97ae844)
  unreachable
bb191:
  %t1131 = load i64, ptr %l44, !tbaa !24
  %t1133 = icmp sgt i64 %t1131, 0
  br i1 %t1133, label %bb193, label %bb194
bb192:
  store i64 0, ptr %l528, !tbaa !24
  br label %bb196
bb193:
  %t1135 = load i64, ptr %l43, !tbaa !24
  %t1136 = load i64, ptr %l42, !tbaa !24
  %t1139 = sub i64 %t1135, %t1136
  %t1140 = load i64, ptr %l44, !tbaa !24
  %t1143 = add i64 %t1139, %t1140
  %t1145 = sub i64 %t1143, 1
  %t1146 = load i64, ptr %l44, !tbaa !24
  %t1149 = sdiv i64 %t1145, %t1146
  store i64 %t1149, ptr %l531, !tbaa !24
  br label %bb195
bb194:
  store i64 0, ptr %l531, !tbaa !24
  br label %bb195
bb195:
  %t1151 = load i64, ptr %l531, !tbaa !24
  store i64 %t1151, ptr %l528, !tbaa !24
  br label %bb196
bb196:
  %t1152 = load i64, ptr %l528, !tbaa !24
  store i64 %t1152, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb197
bb197:
  store %olang.scope zeroinitializer, ptr %s23
  %t1153 = load i64, ptr %l46, !tbaa !24
  %t1154 = load i64, ptr %l45, !tbaa !24
  %t1157 = icmp slt i64 %t1153, %t1154
  %t1159 = xor i1 %t1157, true
  br i1 %t1159, label %bb198, label %bb199
bb198:
  call void @__olang_scope_close(ptr %s23)
  br label %bb204
bb199:
  br label %bb200
bb200:
  %t1161 = load i64, ptr %l42, !tbaa !24
  %t1162 = load i64, ptr %l46, !tbaa !24
  %t1163 = load i64, ptr %l44, !tbaa !24
  %t1166 = mul i64 %t1162, %t1163
  %t1169 = add i64 %t1161, %t1166
  store i64 %t1169, ptr %l47, !tbaa !24
  %t1171 = load i64, ptr %l47, !tbaa !24
  store i64 %t1171, ptr %l549, !tbaa !24
  %t1172 = load ptr, ptr %l0, !tbaa !29
  %t1174 = getelementptr %"compiler/lower:lowering", ptr %t1172, i32 0, i32 3
  %t1176 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t1174)
  store i32 %t1176, ptr %l552
  br label %bb201
bb201:
  %t1177 = load i32, ptr %l552, !tbaa !23
  %t1178 = load i64, ptr %l549, !tbaa !24
  %t1179 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t1180 = load ptr, ptr %t1179, !tbaa !27
  %t1181 = getelementptr i32, ptr %t1180, i64 %t1178
  store i32 %t1177, ptr %t1181, !tbaa !33
  %t1182 = load i64, ptr %l47, !tbaa !24
  store i64 %t1182, ptr %l553, !tbaa !24
  %t1183 = load i64, ptr %l47, !tbaa !24
  %t1184 = load i64, ptr %l47, !tbaa !24
  %t1186 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t1187 = load ptr, ptr %t1186, !tbaa !27
  %t1188 = getelementptr i32, ptr %t1187, i64 %t1184
  %t1189 = load i32, ptr %t1188, !tbaa !33
  %t1192 = call %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %s23, i64 %t1183, i32 %t1189)
  store %"compiler/mir:Case" %t1192, ptr %l557
  br label %bb202
bb202:
  %t1193 = load %"compiler/mir:Case", ptr %l557
  %t1194 = load i64, ptr %l553, !tbaa !24
  %t1195 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t1196 = load ptr, ptr %t1195, !tbaa !27
  %t1197 = getelementptr %"compiler/mir:Case", ptr %t1196, i64 %t1194
  store %"compiler/mir:Case" %t1193, ptr %t1197
  call void @__olang_scope_close(ptr %s23)
  br label %bb203
bb203:
  %t1198 = load i64, ptr %l46, !tbaa !24
  %t1200 = add i64 %t1198, 1
  store i64 %t1200, ptr %l46, !tbaa !24
  br label %bb197
bb204:
  %t1202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1202, ptr %l560, !tbaa !29
  %t1203 = load { i64, [4 x i64] }, ptr %l37
  store { i64, [4 x i64] } %t1203, ptr %l561
  %t1204 = load ptr, ptr %l0, !tbaa !29
  %t1206 = getelementptr %"compiler/lower:lowering", ptr %t1204, i32 0, i32 3
  %t1207 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t1210 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %s20, ptr %t1206, { i64, ptr } %t1207)
  store %"compiler/mir:Range" %t1210, ptr %l565
  br label %bb205
bb205:
  %t1211 = load i32, ptr %l39, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t1212
  %t1213 = getelementptr { i64, [8 x i64] }, ptr %t1212, i32 0, i32 0
  store i64 3, ptr %t1213
  %t1214 = load { i64, [4 x i64] }, ptr %l561
  %t1215 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } undef, { i64, [4 x i64] } %t1214, 0
  %t1216 = load %"compiler/mir:Range", ptr %l565
  %t1217 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t1215, %"compiler/mir:Range" %t1216, 1
  %t1219 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t1217, i32 %t1211, 2
  %t1220 = getelementptr { i64, [8 x i64] }, ptr %t1212, i32 0, i32 1
  store { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t1219, ptr %t1220
  %t1221 = load { i64, [8 x i64] }, ptr %t1212
  %t1222 = load ptr, ptr %l560, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t1222, { i64, [8 x i64] } %t1221)
  br label %bb206
bb206:
  store i64 0, ptr %l48, !tbaa !24
  %t1224 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t1226 = extractvalue { i64, ptr } %t1224, 0
  store i64 %t1226, ptr %l49, !tbaa !24
  store i64 1, ptr %l50, !tbaa !24
  %t1228 = load i64, ptr %l49, !tbaa !24
  %t1229 = load i64, ptr %l48, !tbaa !24
  %t1232 = icmp sgt i64 %t1228, %t1229
  br i1 %t1232, label %bb207, label %bb208
bb207:
  %t1234 = load i64, ptr %l50, !tbaa !24
  %t1236 = icmp sgt i64 %t1234, 0
  br i1 %t1236, label %bb209, label %bb210
bb208:
  store i64 0, ptr %l573, !tbaa !24
  br label %bb212
bb209:
  %t1238 = load i64, ptr %l49, !tbaa !24
  %t1239 = load i64, ptr %l48, !tbaa !24
  %t1242 = sub i64 %t1238, %t1239
  %t1243 = load i64, ptr %l50, !tbaa !24
  %t1246 = add i64 %t1242, %t1243
  %t1248 = sub i64 %t1246, 1
  %t1249 = load i64, ptr %l50, !tbaa !24
  %t1252 = sdiv i64 %t1248, %t1249
  store i64 %t1252, ptr %l576, !tbaa !24
  br label %bb211
bb210:
  store i64 0, ptr %l576, !tbaa !24
  br label %bb211
bb211:
  %t1254 = load i64, ptr %l576, !tbaa !24
  store i64 %t1254, ptr %l573, !tbaa !24
  br label %bb212
bb212:
  %t1255 = load i64, ptr %l573, !tbaa !24
  store i64 %t1255, ptr %l51, !tbaa !24
  store i64 0, ptr %l52, !tbaa !24
  br label %bb213
bb213:
  store %olang.scope zeroinitializer, ptr %s26
  %t1256 = load i64, ptr %l52, !tbaa !24
  %t1257 = load i64, ptr %l51, !tbaa !24
  %t1260 = icmp slt i64 %t1256, %t1257
  %t1262 = xor i1 %t1260, true
  br i1 %t1262, label %bb214, label %bb215
bb214:
  call void @__olang_scope_close(ptr %s26)
  br label %bb233
bb215:
  br label %bb216
bb216:
  %t1264 = load i64, ptr %l48, !tbaa !24
  %t1265 = load i64, ptr %l52, !tbaa !24
  %t1266 = load i64, ptr %l50, !tbaa !24
  %t1269 = mul i64 %t1265, %t1266
  %t1272 = add i64 %t1264, %t1269
  store i64 %t1272, ptr %l53, !tbaa !24
  %t1274 = load ptr, ptr %l0, !tbaa !29
  %t1275 = load i64, ptr %l53, !tbaa !24
  %t1277 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t1278 = load ptr, ptr %t1277, !tbaa !27
  %t1279 = getelementptr i32, ptr %t1278, i64 %t1275
  %t1280 = load i32, ptr %t1279, !tbaa !33
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t1274, i32 %t1280)
  br label %bb217
bb217:
  %t1283 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1285 = extractvalue { i64, ptr } %t1283, 0
  %t1287 = icmp sgt i64 %t1285, 0
  br i1 %t1287, label %bb218, label %bb219
bb218:
  %t1289 = load i64, ptr %l53, !tbaa !24
  %t1290 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1292 = extractvalue { i64, ptr } %t1290, 0
  %t1295 = icmp slt i64 %t1289, %t1292
  store i1 %t1295, ptr %l600, !tbaa !21
  br label %bb220
bb219:
  store i1 false, ptr %l600, !tbaa !21
  br label %bb220
bb220:
  %t1297 = load i1, ptr %l600, !tbaa !21
  br i1 %t1297, label %bb221, label %bb222
bb221:
  %t1298 = load ptr, ptr %l0, !tbaa !29
  %t1300 = getelementptr %"compiler/lower:lowering", ptr %t1298, i32 0, i32 2
  %t1301 = load ptr, ptr %t1300, !tbaa !29
  %t1303 = getelementptr %"compiler/types:Table", ptr %t1301, i32 0, i32 0
  %t1304 = load ptr, ptr %t1303, !tbaa !29
  store ptr %t1304, ptr %l608, !tbaa !29
  %t1305 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1305, ptr %l609, !tbaa !27
  %t1306 = load i64, ptr %l53, !tbaa !24
  %t1308 = getelementptr { i64, ptr }, ptr %l609, i32 0, i32 1
  %t1309 = load ptr, ptr %t1308, !tbaa !27
  %t1310 = getelementptr i32, ptr %t1309, i64 %t1306
  %t1311 = load i32, ptr %t1310, !tbaa !33
  %t1312 = load ptr, ptr %l608, !tbaa !29
  %t1313 = call ptr @__olang_scope_of(ptr %t1312, ptr null)
  %t1314 = ptrtoint ptr %t1313 to i64
  %t1316 = inttoptr i64 %t1314 to ptr
  %t1317 = load ptr, ptr %l608, !tbaa !29
  %t1319 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t1316, ptr %s26, ptr %t1317, i32 %t1311)
  store { i64, ptr } %t1319, ptr %l613
  br label %bb223
bb222:
  %t1320 = load i64, ptr %l53, !tbaa !24
  %t1322 = call i64 @__olang_fmt_i64(ptr null, i64 %t1320)
  %t1323 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1322)
  %t1324 = call i64 @__olang_fmt_i64(ptr %t1323, i64 %t1320)
  %t1325 = insertvalue { i64, ptr } undef, i64 %t1322, 0
  %t1326 = insertvalue { i64, ptr } %t1325, ptr %t1323, 1
  %t1328 = extractvalue { i64, ptr } %t1326, 0
  %t1329 = extractvalue { i64, ptr } %t1326, 1
  %t1330 = mul i64 %t1328, 1
  %t1331 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1330)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1331, ptr %t1329, i64 %t1330, i1 false)
  %t1332 = insertvalue { i64, ptr } undef, i64 %t1328, 0
  %t1333 = insertvalue { i64, ptr } %t1332, ptr %t1331, 1
  store { i64, ptr } %t1333, ptr %l605, !tbaa !27
  br label %bb224
bb223:
  %t1335 = load { i64, ptr }, ptr %l613, !tbaa !27
  store { i64, ptr } %t1335, ptr %l605, !tbaa !27
  br label %bb224
bb224:
  %t1336 = load { i64, ptr }, ptr %l605, !tbaa !27
  %t1337 = load ptr, ptr %l0, !tbaa !29
  %t1338 = load { i64, [1 x i64] }, ptr %l3
  %t1339 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t1342 = extractvalue { i64, ptr } %t1339, 1
  %t1343 = extractvalue { i64, ptr } %t1339, 0
  %t1345 = extractvalue { i64, ptr } %t1336, 1
  %t1346 = extractvalue { i64, ptr } %t1336, 0
  %t1347 = add i64 %t1343, %t1346
  %t1348 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1347)
  call void @olang_textcopy(ptr %t1348, ptr %t1342, i64 %t1343)
  %t1349 = getelementptr i8, ptr %t1348, i64 %t1343
  call void @olang_textcopy(ptr %t1349, ptr %t1345, i64 %t1346)
  %t1350 = insertvalue { i64, ptr } undef, i64 %t1347, 0
  %t1351 = insertvalue { i64, ptr } %t1350, ptr %t1348, 1
  %t1353 = extractvalue { i64, ptr } %t1351, 0
  %t1354 = extractvalue { i64, ptr } %t1351, 1
  %t1355 = mul i64 %t1353, 1
  %t1356 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t1355)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1356, ptr %t1354, i64 %t1355, i1 false)
  %t1357 = insertvalue { i64, ptr } undef, i64 %t1353, 0
  %t1358 = insertvalue { i64, ptr } %t1357, ptr %t1356, 1
  %t1359 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s26, ptr %t1337, { i64, [1 x i64] } %t1338, { i64, ptr } %t1358, %"compiler/source:Span" %t1359)
  br label %bb225
bb225:
  %t1364 = load i64, ptr %l53, !tbaa !24
  %t1366 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t1367 = load ptr, ptr %t1366, !tbaa !27
  %t1368 = getelementptr i32, ptr %t1367, i64 %t1364
  %t1369 = load i32, ptr %t1368, !tbaa !33
  %t1371 = icmp ne i32 %t1369, 0
  br i1 %t1371, label %bb226, label %bb227
bb226:
  store %olang.scope zeroinitializer, ptr %s29
  %t1373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1373, ptr %l627, !tbaa !29
  %t1374 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t1374, ptr %l628
  %t1376 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s29, ptr %l628)
  store %"compiler/lower:pl" %t1376, ptr %l630
  br label %bb228
bb227:
  br label %bb230
bb228:
  %t1377 = load i64, ptr %l53, !tbaa !24
  %t1378 = load i64, ptr %l53, !tbaa !24
  %t1380 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t1381 = load ptr, ptr %t1380, !tbaa !27
  %t1382 = getelementptr i32, ptr %t1381, i64 %t1378
  %t1383 = load i32, ptr %t1382, !tbaa !33
  %t1384 = load { i64, [1 x i64] }, ptr %l3
  %t1385 = load %"compiler/source:Span", ptr %l4
  %t1386 = load ptr, ptr %l627, !tbaa !29
  %t1387 = load %"compiler/lower:pl", ptr %l630
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %s29, ptr %t1386, %"compiler/lower:pl" %t1387, i64 %t1377, i32 %t1383, { i64, [1 x i64] } %t1384, %"compiler/source:Span" %t1385)
  br label %bb229
bb229:
  call void @__olang_scope_close(ptr %s29)
  br label %bb230
bb230:
  %t1392 = load ptr, ptr %l0, !tbaa !29
  %t1393 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t1392, i32 %t1393)
  br label %bb231
bb231:
  call void @__olang_scope_close(ptr %s26)
  br label %bb232
bb232:
  %t1396 = load i64, ptr %l52, !tbaa !24
  %t1398 = add i64 %t1396, 1
  store i64 %t1398, ptr %l52, !tbaa !24
  br label %bb213
bb233:
  %t1400 = load ptr, ptr %l0, !tbaa !29
  %t1401 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t1400, i32 %t1401)
  br label %bb234
bb234:
  call void @__olang_scope_close(ptr %s20)
  br label %bb251
bb235:
  %t1404 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1405 = load i32, ptr %l644, !tbaa !23
  %t1407 = icmp ne i32 %t1405, %t1404
  br i1 %t1407, label %bb236, label %bb237
bb236:
  store %olang.scope zeroinitializer, ptr %s32
  %t1409 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1409, ptr %l647, !tbaa !29
  %t1410 = load ptr, ptr %l0, !tbaa !29
  %t1411 = load i32, ptr %l2, !tbaa !23
  %t1414 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t1410, i32 %t1411)
  store i32 %t1414, ptr %l650
  br label %bb238
bb237:
  store %olang.scope zeroinitializer, ptr %s34
  %t1415 = load ptr, ptr %l0, !tbaa !29
  %t1416 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s34, ptr %t1415, %"compiler/source:Span" %t1416, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb249
bb238:
  %t1419 = load ptr, ptr %l647, !tbaa !29
  %t1420 = load i32, ptr %l650, !tbaa !23
  %t1421 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1419, i32 %t1420)
  store i32 %t1421, ptr %l651
  br label %bb239
bb239:
  %t1422 = load i32, ptr %l651, !tbaa !23
  store i32 %t1422, ptr %l55, !tbaa !23
  %t1423 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1423, ptr %l652, !tbaa !29
  %t1424 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t1424, ptr %l653
  %t1425 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1425, ptr %l654, !tbaa !29
  %t1426 = load ptr, ptr %l0, !tbaa !29
  %t1427 = load i32, ptr %l55, !tbaa !23
  %t1430 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ereadOnly(ptr %v0, ptr %t1426, i32 %t1427)
  store i32 %t1430, ptr %l657
  br label %bb240
bb240:
  %t1431 = load ptr, ptr %l654, !tbaa !29
  %t1432 = load i32, ptr %l657, !tbaa !23
  %t1433 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %s32, ptr %t1431, i32 %t1432, i1 true, i1 true, i1 false)
  store { i64, ptr } %t1433, ptr %l658
  br label %bb241
bb241:
  %t1434 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t1435 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t1436 = load { i64, ptr }, ptr %l658, !tbaa !27
  %t1437 = extractvalue { i64, ptr } %t1436, 1
  %t1438 = extractvalue { i64, ptr } %t1436, 0
  %t1439 = add i64 %t1435, %t1438
  %t1440 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t1441 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t1442 = add i64 %t1439, %t1441
  %t1443 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t1442)
  call void @olang_textcopy(ptr %t1443, ptr %t1434, i64 %t1435)
  %t1444 = getelementptr i8, ptr %t1443, i64 %t1435
  call void @olang_textcopy(ptr %t1444, ptr %t1437, i64 %t1438)
  %t1445 = getelementptr i8, ptr %t1444, i64 %t1438
  call void @olang_textcopy(ptr %t1445, ptr %t1440, i64 %t1441)
  %t1446 = insertvalue { i64, ptr } undef, i64 %t1442, 0
  %t1447 = insertvalue { i64, ptr } %t1446, ptr %t1443, 1
  %t1449 = extractvalue { i64, ptr } %t1447, 0
  %t1450 = extractvalue { i64, ptr } %t1447, 1
  %t1451 = mul i64 %t1449, 1
  %t1452 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t1451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1452, ptr %t1450, i64 %t1451, i1 false)
  %t1453 = insertvalue { i64, ptr } undef, i64 %t1449, 0
  %t1454 = insertvalue { i64, ptr } %t1453, ptr %t1452, 1
  %t1455 = load %"compiler/source:Span", ptr %l4
  %t1456 = load ptr, ptr %l652, !tbaa !29
  %t1457 = load { i64, [1 x i64] }, ptr %l653
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s32, ptr %t1456, { i64, [1 x i64] } %t1457, { i64, ptr } %t1454, %"compiler/source:Span" %t1455)
  br label %bb242
bb242:
  %t1460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1460, ptr %l662, !tbaa !29
  store i32 22, ptr %l663
  %t1461 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t1461, ptr %l664, !tbaa !23
  %t1462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1462, ptr %l665, !tbaa !29
  %t1463 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t1463, ptr %l666
  %t1465 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s32, ptr %l666)
  store %"compiler/lower:pl" %t1465, ptr %l668
  br label %bb243
bb243:
  %t1466 = load ptr, ptr %l665, !tbaa !29
  %t1467 = load %"compiler/lower:pl", ptr %l668
  %t1468 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s32, ptr %t1466, %"compiler/lower:pl" %t1467)
  store %"compiler/mir:Lvalue" %t1468, ptr %l669
  br label %bb244
bb244:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1469
  %t1470 = getelementptr { i64, [4 x i64] }, ptr %t1469, i32 0, i32 0
  store i64 1, ptr %t1470
  %t1471 = load %"compiler/mir:Lvalue", ptr %l669
  %t1472 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t1471, 0
  %t1473 = getelementptr { i64, [4 x i64] }, ptr %t1469, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t1472, ptr %t1473
  %t1474 = load { i64, [4 x i64] }, ptr %t1469
  %t1475 = mul i64 1, 40
  %t1476 = call ptr @__olang_scope_alloc_zeroed(ptr %s32, i64 %t1475)
  %t1477 = insertvalue { i64, ptr } undef, i64 1, 0
  %t1478 = insertvalue { i64, ptr } %t1477, ptr %t1476, 1
  store { i64, ptr } %t1478, ptr %l671, !tbaa !27
  %t1480 = getelementptr { i64, ptr }, ptr %l671, i32 0, i32 1
  %t1481 = load ptr, ptr %t1480, !tbaa !27
  %t1482 = getelementptr { i64, [4 x i64] }, ptr %t1481, i64 0
  store { i64, [4 x i64] } %t1474, ptr %t1482
  %t1483 = load %"compiler/source:Span", ptr %l4
  %t1484 = load ptr, ptr %l662, !tbaa !29
  %t1485 = load i32, ptr %l663, !range !{i32 0, i32 52}
  %t1486 = load i32, ptr %l664, !tbaa !23
  %t1487 = load { i64, ptr }, ptr %l671, !tbaa !27
  %t1489 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s32, ptr %t1484, i32 %t1485, i32 %t1486, { i64, ptr } %t1487, %"compiler/source:Span" %t1483)
  store { i64, [4 x i64] } %t1489, ptr %l673
  br label %bb245
bb245:
  %t1490 = load { i64, [4 x i64] }, ptr %l673
  %t1491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1491, ptr %l674, !tbaa !29
  store { i64, [4 x i64] } %t1490, ptr %l675
  %t1493 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t1493, ptr %l676
  %t1494 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1494, ptr %l677, !tbaa !29
  %t1495 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t1495, ptr %l678
  %t1496 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t1496, ptr %l679
  %t1497 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t1497, ptr %l680
  %t1499 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l680)
  store %"compiler/lower:pl" %t1499, ptr %l682
  br label %bb246
bb246:
  %t1500 = load i32, ptr %l55, !tbaa !23
  %t1501 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr null, i32 1
  %t1502 = ptrtoint ptr %t1501 to i64
  %t1504 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 0
  %t1505 = load ptr, ptr %l677, !tbaa !29
  store ptr %t1505, ptr %t1504, !tbaa !28
  %t1506 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 1
  %t1507 = load %"compiler/source:Span", ptr %l678
  store %"compiler/source:Span" %t1507, ptr %t1506, !tbaa !28
  %t1508 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 2
  %t1509 = load { i64, [1 x i64] }, ptr %l679
  store { i64, [1 x i64] } %t1509, ptr %t1508, !tbaa !28
  %t1510 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 3
  %t1511 = load %"compiler/lower:pl", ptr %l682
  store %"compiler/lower:pl" %t1511, ptr %t1510, !tbaa !28
  %t1512 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 4
  store i32 %t1500, ptr %t1512, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t1514 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 5
  store ptr %v0, ptr %t1514, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t1515 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %t1503, i32 0, i32 6
  store ptr %v1, ptr %t1515, !tbaa !28
  %t1516 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_20, 0
  %t1517 = insertvalue { ptr, ptr } %t1516, ptr %t1503, 1
  %t1518 = load ptr, ptr %l674, !tbaa !29
  %t1519 = load { i64, [4 x i64] }, ptr %l675
  %t1520 = load %"compiler/source:Span", ptr %l676
  %t1522 = extractvalue { ptr, ptr } %t1517, 0
  %t1523 = extractvalue { ptr, ptr } %t1517, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s32, ptr %t1518, { i64, [4 x i64] } %t1519, %"compiler/source:Span" %t1520, ptr %t1522, ptr %t1523)
  br label %bb247
bb247:
  %t1524 = load ptr, ptr %l0, !tbaa !29
  %t1525 = load { i64, [1 x i64] }, ptr %l3
  %t1526 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s32, ptr %t1524, { i64, [1 x i64] } %t1525, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, %"compiler/source:Span" %t1526)
  br label %bb248
bb248:
  call void @__olang_scope_close(ptr %s32)
  br label %bb250
bb249:
  call void @__olang_scope_close(ptr %s34)
  br label %bb250
bb250:
  br label %bb251
bb251:
  br label %bb252
bb252:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2esplitParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, { i64, [1 x i64] } %a5, { i64, [1 x i64] } %a6, %"compiler/source:Span" %a7) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:pl"
  %l18 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca %"compiler/lower:pl"
  %l48 = alloca %"compiler/lower:pl"
  %l51 = alloca %"compiler/lower:pl"
  %l53 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca %"compiler/lower:pl"
  %l60 = alloca %"compiler/lower:pl"
  %l70 = alloca ptr
  %l71 = alloca %"compiler/lower:pl"
  %l73 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t62 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, [1 x i64] } %a5, ptr %l5
  store { i64, [1 x i64] } %a6, ptr %l6
  store %"compiler/source:Span" %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t1, i32 %a2)
  store { i64, ptr } %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t6, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t11 = load i64, ptr %l10, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l10, !tbaa !24
  %t22 = load i64, ptr %l9, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l11, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l11, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l27, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l27, !tbaa !24
  store i64 %t37, ptr %l24, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l24, !tbaa !24
  store i64 %t38, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load i64, ptr %l13, !tbaa !24
  %t40 = load i64, ptr %l12, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l13, !tbaa !24
  %t49 = load i64, ptr %l11, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l14, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l45, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l46
  %t60 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l46)
  store %"compiler/lower:pl" %t60, ptr %l48
  br label %bb12
bb12:
  %t61 = load i64, ptr %l14, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [1 x i64] }, ptr %t62, i32 0, i32 0
  store i64 0, ptr %t63
  %t65 = insertvalue { i64 } undef, i64 %t61, 0
  %t66 = getelementptr { i64, [1 x i64] }, ptr %t62, i32 0, i32 1
  store { i64 } %t65, ptr %t66
  %t67 = load { i64, [1 x i64] }, ptr %t62
  %t68 = load ptr, ptr %l45, !tbaa !29
  %t69 = load %"compiler/lower:pl", ptr %l48
  %t71 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s2, ptr %s2, ptr %t68, %"compiler/lower:pl" %t69, { i64, [1 x i64] } %t67)
  store %"compiler/lower:pl" %t71, ptr %l51
  br label %bb13
bb13:
  %t72 = load %"compiler/lower:pl", ptr %l51
  store %"compiler/lower:pl" %t72, ptr %l15
  %t73 = load i64, ptr %l14, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t74, ptr %l53, !tbaa !27
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t75
  %t80 = load i64, ptr %t79, !tbaa !34
  %t83 = icmp ne i64 %t73, %t80
  br i1 %t83, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l57, !tbaa !29
  %t86 = load %"compiler/lower:pl", ptr %l15
  store %"compiler/lower:pl" %t86, ptr %l58
  %t88 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l58)
  store %"compiler/lower:pl" %t88, ptr %l60
  br label %bb16
bb15:
  %t89 = load i64, ptr %l4, !tbaa !24
  %t91 = add i64 %t89, 1
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t97 = icmp eq i64 %t91, %t94
  br i1 %t97, label %bb18, label %bb19
bb16:
  %t99 = load i64, ptr %l14, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 %t99
  %t104 = load i32, ptr %t103, !tbaa !33
  %t105 = load { i64, [1 x i64] }, ptr %l6
  %t106 = load %"compiler/source:Span", ptr %l7
  %t107 = load ptr, ptr %l57, !tbaa !29
  %t108 = load %"compiler/lower:pl", ptr %l60
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %s3, ptr %t107, %"compiler/lower:pl" %t108, i32 %t104, { i64, [1 x i64] } %t105, %"compiler/source:Span" %t106)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l70, !tbaa !29
  %t113 = load %"compiler/lower:pl", ptr %l15
  store %"compiler/lower:pl" %t113, ptr %l71
  %t115 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s5, ptr %l71)
  store %"compiler/lower:pl" %t115, ptr %l73
  br label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/lower:pl", ptr %l15
  %t118 = load i64, ptr %l14, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i32, ptr %t121, i64 %t118
  %t123 = load i32, ptr %t122, !tbaa !33
  %t124 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = add i64 %t125, 1
  %t128 = load { i64, [1 x i64] }, ptr %l5
  %t129 = load { i64, [1 x i64] }, ptr %l6
  %t130 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2esplitParts(ptr %v0, ptr %s6, ptr %v2, ptr %t116, %"compiler/lower:pl" %t117, i32 %t123, { i64, ptr } %t124, i64 %t127, { i64, [1 x i64] } %t128, { i64, [1 x i64] } %t129, %"compiler/source:Span" %t130)
  br label %bb22
bb20:
  %t139 = load i64, ptr %l14, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 %t139
  %t144 = load i32, ptr %t143, !tbaa !33
  %t145 = load { i64, [1 x i64] }, ptr %l5
  %t146 = load %"compiler/source:Span", ptr %l7
  %t147 = load ptr, ptr %l70, !tbaa !29
  %t148 = load %"compiler/lower:pl", ptr %l73
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %s5, ptr %t147, %"compiler/lower:pl" %t148, i32 %t144, { i64, [1 x i64] } %t145, %"compiler/source:Span" %t146)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb23
bb22:
  call void @__olang_scope_close(ptr %s6)
  br label %bb23
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t152 = load i64, ptr %l13, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l13, !tbaa !24
  br label %bb8
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtSpawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i32
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca i64
  %l54 = alloca i64
  %l59 = alloca i32
  %l61 = alloca i1
  %l62 = alloca ptr
  %l65 = alloca i32
  %l68 = alloca i32
  %l69 = alloca i1
  %l74 = alloca ptr
  %l77 = alloca i32
  %l80 = alloca ptr
  %l81 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 17}
  %t13 = icmp eq i64 %t11, 14
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb41
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Spawn", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t28 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etaskType(ptr %v0, ptr %v1, ptr %t21, ptr %t25)
  store i32 %t28, ptr %l29
  br label %bb6
bb6:
  %t29 = load i32, ptr %l29, !tbaa !23
  store i32 %t29, ptr %l5, !tbaa !23
  %t30 = load i32, ptr %l5, !tbaa !23
  %t31 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = icmp eq i32 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l3, !tbaa !29
  store ptr %t36, ptr %l33, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l36
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l33, !tbaa !29
  %t43 = load i32, ptr %l36, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t42, i32 %t43)
  store { i64, ptr } %t44, ptr %l37
  br label %bb11
bb11:
  %t45 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  store i64 %t48, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb40
bb14:
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t58, ptr %l44, !tbaa !27
  %t59 = load i64, ptr %l7, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i32, ptr %t62, i64 %t59
  %t64 = load i32, ptr %t63, !tbaa !33
  store i32 %t64, ptr %l9, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t68 = load i32, ptr %l9, !tbaa !23
  %t72 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eclausesTake(ptr %v0, ptr %v1, ptr %t66, ptr %t67, i32 %t68)
  store i1 %t72, ptr %l50
  br label %bb16
bb16:
  %t73 = load i1, ptr %l50, !tbaa !21
  br i1 %t73, label %bb17, label %bb18
bb17:
  br label %bb39
bb18:
  br label %bb19
bb19:
  store i1 false, ptr %l10, !tbaa !21
  %t74 = load ptr, ptr %l2, !tbaa !29
  store ptr %t74, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb20
bb20:
  %t76 = load i64, ptr %l12, !tbaa !24
  store i64 %t76, ptr %l52, !tbaa !24
  %t77 = load ptr, ptr %l11, !tbaa !29
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t77)
  store i64 %t79, ptr %l54
  br label %bb21
bb21:
  %t80 = load i64, ptr %l52, !tbaa !24
  %t81 = load i64, ptr %l54, !tbaa !24
  %t82 = icmp slt i64 %t80, %t81
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb33
bb23:
  br label %bb24
bb24:
  %t86 = load ptr, ptr %l11, !tbaa !29
  %t87 = load i64, ptr %l12, !tbaa !24
  %t90 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t86, i64 %t87)
  store i32 %t90, ptr %l59
  br label %bb25
bb25:
  %t91 = load i32, ptr %l59, !tbaa !23
  store i32 %t91, ptr %l13, !tbaa !23
  %t92 = load i1, ptr %l10, !tbaa !21
  br i1 %t92, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb31
bb27:
  %t94 = load ptr, ptr %l3, !tbaa !29
  store ptr %t94, ptr %l62, !tbaa !29
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t96 = load i32, ptr %l13, !tbaa !23
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t95, i32 %t96)
  store i32 %t99, ptr %l65
  br label %bb28
bb28:
  %t100 = load ptr, ptr %l3, !tbaa !29
  %t101 = load i32, ptr %l9, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l68
  br label %bb29
bb29:
  %t105 = load ptr, ptr %l62, !tbaa !29
  %t106 = load i32, ptr %l65, !tbaa !23
  %t107 = load i32, ptr %l68, !tbaa !23
  %t108 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t105, i32 %t106, i32 %t107)
  store i1 %t108, ptr %l69
  br label %bb30
bb30:
  %t109 = load i1, ptr %l69, !tbaa !21
  store i1 %t109, ptr %l61, !tbaa !21
  br label %bb31
bb31:
  %t110 = load i1, ptr %l61, !tbaa !21
  store i1 %t110, ptr %l10, !tbaa !21
  br label %bb32
bb32:
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l12, !tbaa !24
  br label %bb20
bb33:
  %t115 = load i1, ptr %l10, !tbaa !21
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb34, label %bb35
bb34:
  %t119 = load ptr, ptr %l2, !tbaa !29
  store ptr %t119, ptr %l74, !tbaa !29
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t121 = load i32, ptr %l9, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l77
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t125 = load ptr, ptr %l74, !tbaa !29
  %t126 = load i32, ptr %l77, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t125, i32 %t126)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t127 = load i64, ptr %l7, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l7, !tbaa !24
  br label %bb12
bb40:
  br label %bb69
bb41:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t132 = load ptr, ptr %l80, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb42, label %bb43
bb42:
  %t135 = load ptr, ptr %l80, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 17}
  %t138 = icmp eq i64 %t136, 11
  store i1 %t138, ptr %l81, !tbaa !21
  br label %bb43
bb43:
  %t139 = load i1, ptr %l81, !tbaa !21
  br i1 %t139, label %bb44, label %bb45
bb44:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [3 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", ptr }, ptr %t142, i32 0, i32 1
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l14, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l14, !tbaa !29
  %t149 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %t146, ptr %t147, ptr %t149)
  br label %bb47
bb47:
  br label %bb69
bb48:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t154 = load ptr, ptr %l90, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb49, label %bb50
bb49:
  %t157 = load ptr, ptr %l90, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 17}
  %t160 = icmp eq i64 %t158, 3
  store i1 %t160, ptr %l91, !tbaa !21
  br label %bb50
bb50:
  %t161 = load i1, ptr %l91, !tbaa !21
  br i1 %t161, label %bb51, label %bb52
bb51:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr { i64, [3 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", ptr }, ptr %t164, i32 0, i32 1
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l15, !tbaa !29
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l15, !tbaa !29
  %t171 = getelementptr %"compiler/typed:If", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %t168, ptr %t172, ptr %t174)
  br label %bb54
bb54:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l15, !tbaa !29
  %t181 = getelementptr %"compiler/typed:If", ptr %t179, i32 0, i32 2
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t183 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %t178, ptr %t182, ptr %t183)
  br label %bb55
bb55:
  br label %bb69
bb56:
  %t187 = load ptr, ptr %l1, !tbaa !29
  store ptr %t187, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t188 = load ptr, ptr %l105, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb57, label %bb58
bb57:
  %t191 = load ptr, ptr %l105, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 17}
  %t194 = icmp eq i64 %t192, 4
  store i1 %t194, ptr %l106, !tbaa !21
  br label %bb58
bb58:
  %t195 = load i1, ptr %l106, !tbaa !21
  br i1 %t195, label %bb59, label %bb60
bb59:
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t198 = getelementptr { i64, [3 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t198, i32 0, i32 1
  %t200 = load ptr, ptr %t199
  store ptr %t200, ptr %l16, !tbaa !29
  %t202 = load ptr, ptr %l1, !tbaa !29
  %t204 = getelementptr { i64, [3 x i64] }, ptr %t202, i32 0, i32 1
  %t205 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t204, i32 0, i32 2
  %t206 = load ptr, ptr %t205
  store ptr %t206, ptr %l17, !tbaa !29
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load ptr, ptr %l16, !tbaa !29
  %t211 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %t208, ptr %t209, ptr %t211)
  br label %bb62
bb62:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l17, !tbaa !29
  %t217 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %t215, ptr %t216, ptr %t217)
  br label %bb63
bb63:
  br label %bb69
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_7b1a9423057e34c5_261f06cd9be6d659)
  unreachable
bb69:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2etail(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { { i64, [7 x i64] }, i32 }
  %l6 = alloca { i64, [7 x i64] }
  %l7 = alloca i32
  %l8 = alloca %"compiler/mir:Range"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca %"compiler/mir:Range"
  %l20 = alloca %"compiler/mir:Range"
  %l28 = alloca { { i64, [7 x i64] }, i32 }
  %l37 = alloca %"compiler/mir:Range"
  %l40 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l47 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l82 = alloca { i64, [4 x i64] }
  %l83 = alloca i64
  %l88 = alloca { i64, [4 x i64] }
  %l90 = alloca { i64, ptr }
  %l96 = alloca { i64, [4 x i64] }
  %l103 = alloca %"compiler/mir:Range"
  %l109 = alloca %"compiler/mir:Range"
  %l112 = alloca ptr
  %l120 = alloca %"compiler/mir:Call"
  %l121 = alloca i32
  %s0 = alloca %olang.scope
  %t153 = alloca { i64, [15 x i64] }, align 8
  %t225 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Call", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  %t15 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %t6, ptr %t10, %"compiler/source:Span" %t11, i32 -1)
  store { { i64, [7 x i64] }, i32 } %t15, ptr %l28
  br label %bb1
bb1:
  %t16 = load { { i64, [7 x i64] }, i32 }, ptr %l28
  store { { i64, [7 x i64] }, i32 } %t16, ptr %l5
  %t17 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l5, i32 0, i32 0
  %t18 = load { i64, [7 x i64] }, ptr %t17
  store { i64, [7 x i64] } %t18, ptr %l6
  %t20 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l5, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %l7, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lower:lowering", ptr %t23, i32 0, i32 10
  %t26 = load i1, ptr %t25, !tbaa !21
  br i1 %t26, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load { i64, [7 x i64] }, ptr %l6
  %t31 = load i32, ptr %l7, !tbaa !23
  %t36 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %t28, ptr %t29, { i64, [7 x i64] } %t30, i32 %t31)
  store %"compiler/mir:Range" %t36, ptr %l37
  br label %bb5
bb5:
  %t37 = load %"compiler/mir:Range", ptr %l37
  store %"compiler/mir:Range" %t37, ptr %l8
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 10
  %t41 = load i1, ptr %t40, !tbaa !21
  br i1 %t41, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t43 = load ptr, ptr %l4, !tbaa !29
  store ptr %t43, ptr %l40, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t45 = load i32, ptr %l7, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l43
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l40, !tbaa !29
  %t50 = load i32, ptr %l43, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t49, i32 %t50)
  store { i64, ptr } %t51, ptr %l44
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t52, ptr %l9, !tbaa !27
  %t53 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 1
  %t54 = load i32, ptr %t53, !tbaa !23
  %t56 = sext i32 %t54 to i64
  store i64 %t56, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l10, !tbaa !24
  store i64 %t58, ptr %l47, !tbaa !24
  %t59 = load i64, ptr %l47, !tbaa !24
  %t60 = icmp sge i64 %t59, 0
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t62 = load i64, ptr %l47, !tbaa !24
  %t63 = icmp sle i64 %t62, 230584300921369395
  br i1 %t63, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_16ceb3f79d83ba4c_75eb4aa6518e3548)
  unreachable
bb13:
  %t65 = load i64, ptr %l47, !tbaa !24
  %t66 = mul i64 %t65, 40
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  store i64 %t71, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t73 = load i64, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l12, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_16ceb3f79d83ba4c_75eb4aa6518e3548)
  unreachable
bb15:
  %t79 = load i64, ptr %l14, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb20
bb17:
  %t83 = load i64, ptr %l13, !tbaa !24
  %t84 = load i64, ptr %l12, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l14, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l14, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l58, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb19
bb19:
  %t99 = load i64, ptr %l58, !tbaa !24
  store i64 %t99, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t100 = load i64, ptr %l55, !tbaa !24
  store i64 %t100, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb21
bb21:
  %t101 = load i64, ptr %l16, !tbaa !24
  %t102 = load i64, ptr %l15, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t109 = load i64, ptr %l12, !tbaa !24
  %t110 = load i64, ptr %l16, !tbaa !24
  %t111 = load i64, ptr %l14, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l17, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lower:lowering", ptr %t119, i32 0, i32 3
  %t122 = getelementptr %"compiler/mir:Fn", ptr %t121, i32 0, i32 11
  %t123 = getelementptr %"compiler/mir:Range", ptr %l8, i32 0, i32 0
  %t124 = load i32, ptr %t123, !tbaa !23
  %t126 = sext i32 %t124 to i64
  %t127 = load i64, ptr %l17, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t133 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t122, i64 %t130)
  store { i64, [4 x i64] } %t133, ptr %l82
  br label %bb25
bb25:
  %t134 = load { i64, [4 x i64] }, ptr %l82
  store { i64, [4 x i64] } %t134, ptr %l18
  %t135 = load i64, ptr %l17, !tbaa !24
  store i64 %t135, ptr %l83, !tbaa !24
  %t136 = load i64, ptr %l17, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t142 = icmp slt i64 %t136, %t139
  br i1 %t142, label %bb26, label %bb27
bb26:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t145, ptr %l90, !tbaa !27
  %t146 = load i64, ptr %l17, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i32, ptr %t149, i64 %t146
  %t151 = load i32, ptr %t150, !tbaa !33
  %t152 = load { i64, [4 x i64] }, ptr %l18
  store { i64, [15 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [15 x i64] }, ptr %t153, i32 0, i32 0
  store i64 0, ptr %t154
  %t156 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t152, 0
  %t157 = getelementptr { i64, [15 x i64] }, ptr %t153, i32 0, i32 1
  store { { i64, [4 x i64] } } %t156, ptr %t157
  %t158 = load { i64, [15 x i64] }, ptr %t153
  %t159 = load %"compiler/source:Span", ptr %l1
  %t164 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t144, i32 %t151, { i64, [15 x i64] } %t158, %"compiler/source:Span" %t159)
  store { i64, [4 x i64] } %t164, ptr %l96
  br label %bb28
bb27:
  %t165 = load { i64, [4 x i64] }, ptr %l18
  store { i64, [4 x i64] } %t165, ptr %l88
  br label %bb29
bb28:
  %t167 = load { i64, [4 x i64] }, ptr %l96
  store { i64, [4 x i64] } %t167, ptr %l88
  br label %bb29
bb29:
  %t168 = load { i64, [4 x i64] }, ptr %l88
  %t169 = load i64, ptr %l83, !tbaa !24
  %t170 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t171, i64 %t169
  store { i64, [4 x i64] } %t168, ptr %t172
  br label %bb30
bb30:
  %t173 = load i64, ptr %l16, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l16, !tbaa !24
  br label %bb21
bb31:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/lower:lowering", ptr %t177, i32 0, i32 3
  %t180 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t183 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t179, { i64, ptr } %t180)
  store %"compiler/mir:Range" %t183, ptr %l103
  br label %bb32
bb32:
  %t184 = load %"compiler/mir:Range", ptr %l103
  store %"compiler/mir:Range" %t184, ptr %l19
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load { i64, [7 x i64] }, ptr %l6
  %t187 = load i32, ptr %l7, !tbaa !23
  %t188 = load ptr, ptr %l2, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Call", ptr %t188, i32 0, i32 2
  %t191 = load i32, ptr %t190, !tbaa !23
  %t196 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassedFor(ptr %v0, ptr %t185, { i64, [7 x i64] } %t186, i32 %t187, i32 %t191)
  store %"compiler/mir:Range" %t196, ptr %l109
  br label %bb33
bb33:
  %t197 = load %"compiler/mir:Range", ptr %l109
  store %"compiler/mir:Range" %t197, ptr %l20
  %t198 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t198, i64 0)
  br label %bb34
bb34:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/lower:lowering", ptr %t200, i32 0, i32 3
  store ptr %t202, ptr %l112, !tbaa !29
  %t203 = load { i64, [7 x i64] }, ptr %l6
  %t204 = load %"compiler/mir:Range", ptr %l19
  %t205 = load %"compiler/mir:Range", ptr %l20
  %t206 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  %t207 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t208 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t209 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t217 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t203, %"compiler/mir:Range" %t204, %"compiler/mir:Range" %t205, %"compiler/mir:Lvalue" %t206, i1 false, i32 %t207, i32 %t208, i32 %t209)
  store %"compiler/mir:Call" %t217, ptr %l120
  br label %bb35
bb35:
  %t218 = load ptr, ptr %l112, !tbaa !29
  %t219 = load %"compiler/mir:Call", ptr %l120
  %t220 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t218, %"compiler/mir:Call" %t219)
  store i32 %t220, ptr %l121
  br label %bb36
bb36:
  %t221 = load i32, ptr %l121, !tbaa !23
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l1
  store { i64, [8 x i64] } zeroinitializer, ptr %t225
  %t226 = getelementptr { i64, [8 x i64] }, ptr %t225, i32 0, i32 0
  store i64 6, ptr %t226
  %t228 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t223, 0
  %t230 = insertvalue { %"compiler/source:Span", i32 } %t228, i32 %t221, 1
  %t231 = getelementptr { i64, [8 x i64] }, ptr %t225, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t230, ptr %t231
  %t232 = load { i64, [8 x i64] }, ptr %t225
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t222, { i64, [8 x i64] } %t232)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2etargetCopies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l47 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca i1
  %l58 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i1
  %l64 = alloca i64
  %l67 = alloca { i64, [1 x i64] }
  %l73 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  %t73 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Spawn", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l13, !tbaa !24
  %t7 = load i64, ptr %l13, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp sle i64 %t10, 576460752303423487
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_209cd4bf2df26d92_8c8de602dc63ff9e)
  unreachable
bb3:
  %t13 = load i64, ptr %l13, !tbaa !24
  %t14 = mul i64 %t13, 16
  %t15 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Spawn", ptr %t19, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_209cd4bf2df26d92_8c8de602dc63ff9e)
  unreachable
bb5:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb7:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l26, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t52 = load i64, ptr %l26, !tbaa !24
  store i64 %t52, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l23, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb12, label %bb13
bb12:
  br label %bb30
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [1 x i64] }, ptr %t73, i32 0, i32 0
  store i64 3, ptr %t74
  %t75 = load { i64, [1 x i64] }, ptr %t73
  %t78 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, [1 x i64] }, ptr %t79, i64 %t72
  store { i64, [1 x i64] } %t75, ptr %t80
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Spawn", ptr %t81, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l47, !tbaa !27
  %t85 = load i64, ptr %l9, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 %t85
  %t90 = load ptr, ptr %t89, !tbaa !39
  store ptr %t90, ptr %l10, !tbaa !29
  %t92 = load ptr, ptr %l10, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb15, label %bb16
bb15:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l54, !tbaa !29
  %t99 = load ptr, ptr %l10, !tbaa !29
  %t101 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t99)
  store i32 %t101, ptr %l56
  br label %bb17
bb16:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb19
bb17:
  %t102 = load ptr, ptr %l54, !tbaa !29
  %t103 = load i32, ptr %l56, !tbaa !23
  %t104 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t104, ptr %l57
  br label %bb18
bb18:
  %t105 = load i1, ptr %l57, !tbaa !21
  store i1 %t105, ptr %l53, !tbaa !21
  br label %bb19
bb19:
  %t106 = load i1, ptr %l53, !tbaa !21
  br i1 %t106, label %bb20, label %bb21
bb20:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l59, !tbaa !29
  store ptr %a2, ptr %l60, !tbaa !29
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t111 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t109)
  store i32 %t111, ptr %l62
  br label %bb22
bb21:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb24
bb22:
  %t112 = load ptr, ptr %l59, !tbaa !29
  %t113 = load ptr, ptr %l60, !tbaa !29
  %t114 = load i32, ptr %l62, !tbaa !23
  %t115 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v2, ptr %t112, ptr %t113, i32 %t114)
  store i1 %t115, ptr %l63
  br label %bb23
bb23:
  %t116 = load i1, ptr %l63, !tbaa !21
  store i1 %t116, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t117 = load i1, ptr %l58, !tbaa !21
  br i1 %t117, label %bb25, label %bb26
bb25:
  %t118 = load i64, ptr %l9, !tbaa !24
  store i64 %t118, ptr %l64, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l10, !tbaa !29
  %t123 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceStorage(ptr %v0, ptr %v1, ptr %t119, ptr %t120)
  store { i64, [1 x i64] } %t123, ptr %l67
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t124 = load { i64, [1 x i64] }, ptr %l67
  %t125 = load i64, ptr %l64, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr { i64, [1 x i64] }, ptr %t127, i64 %t125
  store { i64, [1 x i64] } %t124, ptr %t128
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb11
bb30:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/lower:lowering", ptr %t133, i32 0, i32 3
  %t136 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t139 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t135, { i64, ptr } %t136)
  store %"compiler/mir:Range" %t139, ptr %l73
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t140 = load %"compiler/mir:Range", ptr %l73
  store %"compiler/mir:Range" %t140, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etext(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { { i64, [4 x i64] }, i32 }
  %l16 = alloca i32
  %l17 = alloca { i64, [1 x i64] }
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, [4 x i64] }
  %l34 = alloca i64
  %l40 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l72 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l76 = alloca i1
  %l88 = alloca { { i64, [4 x i64] }, i32 }
  %l99 = alloca ptr
  %l100 = alloca i32
  %l102 = alloca ptr
  %l106 = alloca i32
  %l115 = alloca i32
  %l116 = alloca ptr
  %l119 = alloca i32
  %l121 = alloca i32
  %l128 = alloca i64
  %l131 = alloca i64
  %l150 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca i1
  %l164 = alloca i32
  %l177 = alloca ptr
  %l178 = alloca i1
  %l190 = alloca ptr
  %l191 = alloca i32
  %l192 = alloca { i64, [1 x i64] }
  %l196 = alloca { i64, [1 x i64] }
  %l200 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t162 = alloca { i64, [4 x i64] }, align 8
  %t186 = alloca { i64, [21 x i64] }, align 8
  %t199 = alloca { i64, [1 x i64] }, align 8
  %t305 = alloca { i64, [2 x i64] }, align 8
  %t327 = alloca { i64, [4 x i64] }, align 8
  %t339 = alloca { i64, [21 x i64] }, align 8
  %t400 = alloca { i64, [15 x i64] }, align 8
  %t420 = alloca { i64, [21 x i64] }, align 8
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
  %t8 = getelementptr %"compiler/typed:Text", ptr %t6, i32 0, i32 0
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l34, !tbaa !24
  %t12 = load i64, ptr %l34, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l34, !tbaa !24
  %t16 = icmp sle i64 %t15, 230584300921369395
  br i1 %t16, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_77939bd7b34e0fa3_983f89b6cb89307)
  unreachable
bb3:
  %t18 = load i64, ptr %l34, !tbaa !24
  %t19 = mul i64 %t18, 40
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l5, !tbaa !27
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Text", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l40, !tbaa !24
  %t30 = load i64, ptr %l40, !tbaa !24
  %t31 = icmp sge i64 %t30, 0
  br i1 %t31, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_77939bd7b34e0fa3_983f89b6cb89307)
  unreachable
bb5:
  %t33 = load i64, ptr %l40, !tbaa !24
  %t34 = icmp sle i64 %t33, 2305843009213693951
  br i1 %t34, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cbdf5e9a9cabb32e_3680da0cabce8c12)
  unreachable
bb7:
  %t36 = load i64, ptr %l40, !tbaa !24
  %t37 = mul i64 %t36, 4
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Text", ptr %t42, i32 0, i32 0
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp sgt i64 %t49, %t50
  br i1 %t53, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_cbdf5e9a9cabb32e_3680da0cabce8c12)
  unreachable
bb9:
  %t55 = load i64, ptr %l9, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb14
bb11:
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sub i64 %t59, %t60
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = add i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = sdiv i64 %t69, %t70
  store i64 %t73, ptr %l53, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb13
bb13:
  %t75 = load i64, ptr %l53, !tbaa !24
  store i64 %t75, ptr %l50, !tbaa !24
  br label %bb14
bb14:
  %t76 = load i64, ptr %l50, !tbaa !24
  store i64 %t76, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  %t77 = load i64, ptr %l11, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb16, label %bb17
bb16:
  br label %bb34
bb17:
  br label %bb18
bb18:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = mul i64 %t86, %t87
  %t93 = add i64 %t85, %t90
  store i64 %t93, ptr %l12, !tbaa !24
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Text", ptr %t95, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l72, !tbaa !27
  %t99 = load i64, ptr %l12, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr ptr, ptr %t102, i64 %t99
  %t104 = load ptr, ptr %t103, !tbaa !39
  store ptr %t104, ptr %l13, !tbaa !29
  %t106 = load ptr, ptr %l13, !tbaa !29
  store ptr %t106, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t107 = load ptr, ptr %l75, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb19, label %bb20
bb19:
  %t110 = load ptr, ptr %l75, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 2}
  %t113 = icmp eq i64 %t111, 1
  store i1 %t113, ptr %l76, !tbaa !21
  br label %bb20
bb20:
  %t114 = load i1, ptr %l76, !tbaa !21
  br i1 %t114, label %bb21, label %bb22
bb21:
  %t115 = load ptr, ptr %l13, !tbaa !29
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { ptr }, ptr %t117, i32 0, i32 0
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l14, !tbaa !29
  br label %bb23
bb22:
  br label %bb27
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %s3, ptr %s3, ptr %t121, ptr %t122, ptr null, ptr null)
  br label %bb24
bb24:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epieceView(ptr %v0, ptr %v1, ptr %t125, ptr %t126)
  br label %bb25
bb25:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l14, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l3
  %t135 = call { { i64, [4 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2epiece(ptr %v0, ptr %v1, ptr %t129, ptr %t130, %"compiler/source:Span" %t131)
  store { { i64, [4 x i64] }, i32 } %t135, ptr %l88
  br label %bb26
bb26:
  %t136 = load { { i64, [4 x i64] }, i32 }, ptr %l88
  store { { i64, [4 x i64] }, i32 } %t136, ptr %l15
  %t137 = load i64, ptr %l12, !tbaa !24
  %t138 = getelementptr { { i64, [4 x i64] }, i32 }, ptr %l15, i32 0, i32 0
  %t139 = load { i64, [4 x i64] }, ptr %t138
  %t142 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t143, i64 %t137
  store { i64, [4 x i64] } %t139, ptr %t144
  %t145 = load i64, ptr %l12, !tbaa !24
  %t146 = getelementptr { { i64, [4 x i64] }, i32 }, ptr %l15, i32 0, i32 1
  %t147 = load i32, ptr %t146, !tbaa !23
  %t150 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t145
  store i32 %t147, ptr %t152, !tbaa !33
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_459157e65df33c7e_1dfbf278634bff4a)
  unreachable
bb32:
  br label %bb33
bb33:
  %t153 = load i64, ptr %l11, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l11, !tbaa !24
  br label %bb15
bb34:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/lower:lowering", ptr %t157, i32 0, i32 10
  %t160 = load i1, ptr %t159, !tbaa !21
  br i1 %t160, label %bb35, label %bb36
bb35:
  store { i64, [4 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 0
  store i64 0, ptr %t163
  %t164 = load { i64, [4 x i64] }, ptr %t162
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t164, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/lower:lowering", ptr %t166, i32 0, i32 3
  store ptr %t168, ptr %l99, !tbaa !29
  store i32 6, ptr %l100
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t169)
  store ptr %t171, ptr %l102
  br label %bb38
bb38:
  %t172 = load ptr, ptr %l102, !tbaa !29
  %t174 = getelementptr %"compiler/lower:level", ptr %t172, i32 0, i32 0
  %t175 = load i32, ptr %t174, !tbaa !23
  %t176 = load %"compiler/source:Span", ptr %l3
  %t177 = load ptr, ptr %l99, !tbaa !29
  %t178 = load i32, ptr %l100, !range !{i32 0, i32 7}
  %t181 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t177, i32 %t178, i32 %t175, i32 -1, %"compiler/source:Span" %t176, i32 0)
  store i32 %t181, ptr %l106
  br label %bb39
bb39:
  %t182 = load i32, ptr %l106, !tbaa !23
  store i32 %t182, ptr %l16, !tbaa !23
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l3
  %t185 = load i32, ptr %l16, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t186
  %t187 = getelementptr { i64, [21 x i64] }, ptr %t186, i32 0, i32 0
  store i64 3, ptr %t187
  %t189 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t184, 0
  %t191 = insertvalue { %"compiler/source:Span", i32 } %t189, i32 %t185, 1
  %t192 = getelementptr { i64, [21 x i64] }, ptr %t186, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t191, ptr %t192
  %t193 = load { i64, [21 x i64] }, ptr %t186
  %t195 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t193, ptr %t195
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t183, ptr %t195)
  br label %bb40
bb40:
  %t198 = load i32, ptr %l16, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [1 x i64] }, ptr %t199, i32 0, i32 0
  store i64 0, ptr %t200
  %t202 = insertvalue { i32 } undef, i32 %t198, 0
  %t203 = getelementptr { i64, [1 x i64] }, ptr %t199, i32 0, i32 1
  store { i32 } %t202, ptr %t203
  %t204 = load { i64, [1 x i64] }, ptr %t199
  store { i64, [1 x i64] } %t204, ptr %l17
  %t206 = load ptr, ptr %l4, !tbaa !29
  %t208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t206, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i32 %t208, ptr %l115
  br label %bb41
bb41:
  %t209 = load i32, ptr %l115, !tbaa !23
  %t210 = load ptr, ptr %l4, !tbaa !29
  store ptr %t210, ptr %l116, !tbaa !29
  %t211 = load ptr, ptr %l4, !tbaa !29
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t211, i32 %t209, i32 0)
  store i32 %t215, ptr %l119
  br label %bb42
bb42:
  %t216 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t217 = load ptr, ptr %l116, !tbaa !29
  %t218 = load i32, ptr %l119, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t217, i32 %t218, i64 %t216)
  store i32 %t220, ptr %l121
  br label %bb43
bb43:
  %t221 = load i32, ptr %l121, !tbaa !23
  store i32 %t221, ptr %l19, !tbaa !23
  store i64 0, ptr %l20, !tbaa !24
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Text", ptr %t222, i32 0, i32 0
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  store i64 %t227, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t229 = load i64, ptr %l21, !tbaa !24
  %t230 = load i64, ptr %l20, !tbaa !24
  %t233 = icmp sgt i64 %t229, %t230
  br i1 %t233, label %bb44, label %bb45
bb44:
  %t235 = load i64, ptr %l22, !tbaa !24
  %t237 = icmp sgt i64 %t235, 0
  br i1 %t237, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb49
bb46:
  %t239 = load i64, ptr %l21, !tbaa !24
  %t240 = load i64, ptr %l20, !tbaa !24
  %t243 = sub i64 %t239, %t240
  %t244 = load i64, ptr %l22, !tbaa !24
  %t247 = add i64 %t243, %t244
  %t249 = sub i64 %t247, 1
  %t250 = load i64, ptr %l22, !tbaa !24
  %t253 = sdiv i64 %t249, %t250
  store i64 %t253, ptr %l131, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb48
bb48:
  %t255 = load i64, ptr %l131, !tbaa !24
  store i64 %t255, ptr %l128, !tbaa !24
  br label %bb49
bb49:
  %t256 = load i64, ptr %l128, !tbaa !24
  store i64 %t256, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb50
bb50:
  %t257 = load i64, ptr %l24, !tbaa !24
  %t258 = load i64, ptr %l23, !tbaa !24
  %t261 = icmp slt i64 %t257, %t258
  %t263 = xor i1 %t261, true
  br i1 %t263, label %bb51, label %bb52
bb51:
  br label %bb71
bb52:
  br label %bb53
bb53:
  %t265 = load i64, ptr %l20, !tbaa !24
  %t266 = load i64, ptr %l24, !tbaa !24
  %t267 = load i64, ptr %l22, !tbaa !24
  %t270 = mul i64 %t266, %t267
  %t273 = add i64 %t265, %t270
  store i64 %t273, ptr %l25, !tbaa !24
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr %"compiler/typed:Text", ptr %t275, i32 0, i32 0
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  store { i64, ptr } %t278, ptr %l150, !tbaa !27
  %t279 = load i64, ptr %l25, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr ptr, ptr %t282, i64 %t279
  %t284 = load ptr, ptr %t283, !tbaa !39
  store ptr %t284, ptr %l26, !tbaa !29
  %t286 = load ptr, ptr %l26, !tbaa !29
  store ptr %t286, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t287 = load ptr, ptr %l153, !tbaa !29
  %t288 = icmp ne ptr %t287, null
  br i1 %t288, label %bb54, label %bb55
bb54:
  %t290 = load ptr, ptr %l153, !tbaa !29
  %t291 = load i64, ptr %t290, !range !{i64 0, i64 2}
  %t293 = icmp eq i64 %t291, 0
  store i1 %t293, ptr %l154, !tbaa !21
  br label %bb55
bb55:
  %t294 = load i1, ptr %l154, !tbaa !21
  br i1 %t294, label %bb56, label %bb57
bb56:
  %t295 = load ptr, ptr %l26, !tbaa !29
  %t297 = getelementptr { i64, [2 x i64] }, ptr %t295, i32 0, i32 1
  %t298 = getelementptr { { i64, ptr } }, ptr %t297, i32 0, i32 0
  %t299 = load { i64, ptr }, ptr %t298
  store { i64, ptr } %t299, ptr %l27, !tbaa !27
  br label %bb58
bb57:
  br label %bb61
bb58:
  store %olang.scope zeroinitializer, ptr %s9
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/lower:lowering", ptr %t301, i32 0, i32 3
  %t304 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t305
  %t306 = getelementptr { i64, [2 x i64] }, ptr %t305, i32 0, i32 0
  store i64 1, ptr %t306
  %t308 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t304, 0
  %t309 = getelementptr { i64, [2 x i64] }, ptr %t305, i32 0, i32 1
  store { { i64, ptr } } %t308, ptr %t309
  %t310 = load { i64, [2 x i64] }, ptr %t305
  %t312 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 24, i64 8)
  store { i64, [2 x i64] } %t310, ptr %t312
  %t315 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %s9, ptr %t303, ptr %t312)
  store i32 %t315, ptr %l164
  br label %bb59
bb59:
  %t316 = load i32, ptr %l164, !tbaa !23
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load %"compiler/source:Span", ptr %l3
  %t319 = load { i64, [1 x i64] }, ptr %l17
  %t320 = load i32, ptr %l19, !tbaa !23
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/lower:lowering", ptr %t322, i32 0, i32 7
  %t325 = load i64, ptr %t324, !tbaa !24
  %t326 = load %"compiler/source:Span", ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t327
  %t328 = getelementptr { i64, [4 x i64] }, ptr %t327, i32 0, i32 0
  store i64 3, ptr %t328
  %t330 = insertvalue { i32, i32, i64, %"compiler/source:Span" } undef, i32 %t320, 0
  %t332 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t330, i32 %t316, 1
  %t334 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t332, i64 %t325, 2
  %t336 = insertvalue { i32, i32, i64, %"compiler/source:Span" } %t334, %"compiler/source:Span" %t326, 3
  %t337 = getelementptr { i64, [4 x i64] }, ptr %t327, i32 0, i32 1
  store { i32, i32, i64, %"compiler/source:Span" } %t336, ptr %t337
  %t338 = load { i64, [4 x i64] }, ptr %t327
  store { i64, [21 x i64] } zeroinitializer, ptr %t339
  %t340 = getelementptr { i64, [21 x i64] }, ptr %t339, i32 0, i32 0
  store i64 8, ptr %t340
  %t342 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t318, 0
  %t344 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t342, { i64, [1 x i64] } %t319, 1
  %t346 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t344, i32 0, 2
  %t348 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t346, { i64, [4 x i64] } %t338, 3
  %t349 = getelementptr { i64, [21 x i64] }, ptr %t339, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t348, ptr %t349
  %t350 = load { i64, [21 x i64] }, ptr %t339
  %t352 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 176, i64 8)
  store { i64, [21 x i64] } %t350, ptr %t352
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s9, ptr %t317, ptr %t352)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb61:
  %t355 = load ptr, ptr %l26, !tbaa !29
  store ptr %t355, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t356 = load ptr, ptr %l177, !tbaa !29
  %t357 = icmp ne ptr %t356, null
  br i1 %t357, label %bb62, label %bb63
bb62:
  %t359 = load ptr, ptr %l177, !tbaa !29
  %t360 = load i64, ptr %t359, !range !{i64 0, i64 2}
  %t362 = icmp eq i64 %t360, 1
  store i1 %t362, ptr %l178, !tbaa !21
  br label %bb63
bb63:
  %t363 = load i1, ptr %l178, !tbaa !21
  br i1 %t363, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load { i64, [1 x i64] }, ptr %l17
  %t366 = load i64, ptr %l25, !tbaa !24
  %t368 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = getelementptr { i64, [4 x i64] }, ptr %t369, i64 %t366
  %t371 = load { i64, [4 x i64] }, ptr %t370
  %t372 = load i64, ptr %l25, !tbaa !24
  %t374 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !27
  %t376 = getelementptr i32, ptr %t375, i64 %t372
  %t377 = load i32, ptr %t376, !tbaa !33
  %t378 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2erender(ptr %v0, ptr %t364, { i64, [1 x i64] } %t365, { i64, [4 x i64] } %t371, i32 %t377, %"compiler/source:Span" %t378)
  br label %bb67
bb67:
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_3db4c7c32145727f_d6a525f06b7a698b)
  unreachable
bb69:
  br label %bb70
bb70:
  %t384 = load i64, ptr %l24, !tbaa !24
  %t386 = add i64 %t384, 1
  store i64 %t386, ptr %l24, !tbaa !24
  br label %bb50
bb71:
  %t388 = load ptr, ptr %l0, !tbaa !29
  store ptr %t388, ptr %l190, !tbaa !29
  %t389 = load i32, ptr %l2, !tbaa !23
  store i32 %t389, ptr %l191, !tbaa !23
  %t390 = load { i64, [1 x i64] }, ptr %l17
  store { i64, [1 x i64] } %t390, ptr %l192
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load ptr, ptr %l1, !tbaa !29
  %t394 = getelementptr %"compiler/typed:Text", ptr %t392, i32 0, i32 1
  %t395 = load i32, ptr %t394, !tbaa !23
  %t398 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t391, i32 %t395)
  store { i64, [1 x i64] } %t398, ptr %l196
  br label %bb72
bb72:
  %t399 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t400
  %t401 = getelementptr { i64, [15 x i64] }, ptr %t400, i32 0, i32 0
  store i64 12, ptr %t401
  %t402 = load { i64, [1 x i64] }, ptr %l192
  %t403 = insertvalue { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } undef, { i64, [1 x i64] } %t402, 0
  %t404 = load { i64, [1 x i64] }, ptr %l196
  %t405 = insertvalue { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } %t403, { i64, [1 x i64] } %t404, 1
  %t407 = insertvalue { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } %t405, i32 %t399, 2
  %t408 = getelementptr { i64, [15 x i64] }, ptr %t400, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 } %t407, ptr %t408
  %t409 = load { i64, [15 x i64] }, ptr %t400
  %t410 = load %"compiler/source:Span", ptr %l3
  %t411 = load ptr, ptr %l190, !tbaa !29
  %t412 = load i32, ptr %l191, !tbaa !23
  %t415 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t411, i32 %t412, { i64, [15 x i64] } %t409, %"compiler/source:Span" %t410)
  store { i64, [4 x i64] } %t415, ptr %l200
  br label %bb73
bb73:
  %t416 = load { i64, [4 x i64] }, ptr %l200
  store { i64, [4 x i64] } %t416, ptr %l29
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load %"compiler/source:Span", ptr %l3
  %t419 = load i32, ptr %l16, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t420
  %t421 = getelementptr { i64, [21 x i64] }, ptr %t420, i32 0, i32 0
  store i64 4, ptr %t421
  %t423 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t418, 0
  %t425 = insertvalue { %"compiler/source:Span", i32 } %t423, i32 %t419, 1
  %t426 = getelementptr { i64, [21 x i64] }, ptr %t420, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t425, ptr %t426
  %t427 = load { i64, [21 x i64] }, ptr %t420
  %t429 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t427, ptr %t429
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t417, ptr %t429)
  br label %bb74
bb74:
  %t432 = load { i64, [4 x i64] }, ptr %l29
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t432, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca { i64, [4 x i64] }
  %l7 = alloca i1
  %l13 = alloca i64
  %l16 = alloca i1
  %l20 = alloca i1
  %l23 = alloca { i64, [4 x i64] }
  %l26 = alloca { i64, [1 x i64] }
  %l29 = alloca { i64, [4 x i64] }
  %l33 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca { i64, [1 x i64] }
  %l42 = alloca { i64, [4 x i64] }
  %l44 = alloca i32
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t11 = alloca { i64, [4 x i64] }, align 8
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
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  store { i64, [4 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 0
  store i64 0, ptr %t12
  %t13 = load { i64, [4 x i64] }, ptr %t11
  store { i64, [4 x i64] } %t13, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t19 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eregionSite(ptr %v0, ptr %v1, ptr %t15, ptr %t16)
  store i64 %t19, ptr %l13
  br label %bb7
bb7:
  %t20 = load i64, ptr %l13, !tbaa !24
  store i64 %t20, ptr %l2, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb11
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 46
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l20
  br label %bb10
bb10:
  %t32 = load i1, ptr %l20, !tbaa !21
  store i1 %t32, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t38 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2evalue(ptr %v0, ptr %v1, ptr %t34, ptr %t35)
  store { i64, [4 x i64] } %t38, ptr %l23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t39 = load { i64, [4 x i64] }, ptr %l23
  store { i64, [4 x i64] } %t39, ptr %rv
  br label %ret
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l2, !tbaa !24
  %t44 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %t40, i64 %t41)
  store { i64, [1 x i64] } %t44, ptr %l26
  br label %bb16
bb16:
  %t45 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t45, ptr %l3
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t50 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2evalue(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store { i64, [4 x i64] } %t50, ptr %l29
  br label %bb17
bb17:
  %t51 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t51, ptr %l4
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:lowering", ptr %t52, i32 0, i32 34
  %t55 = load i64, ptr %l2, !tbaa !24
  %t58 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t54, i64 %t55)
  store i1 %t58, ptr %l33
  br label %bb18
bb18:
  %t59 = load i1, ptr %l33, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 32
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_Hf0fb0e232c68e27195d0770621b0035a(ptr %v0, ptr %t64, i64 %t65)
  store i1 %t68, ptr %l38
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load i64, ptr %l2, !tbaa !24
  store i64 %t70, ptr %l40, !tbaa !24
  %t71 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t71, ptr %l41
  %t72 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [4 x i64] } %t72, ptr %l42
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t73)
  store i32 %t75, ptr %l44
  br label %bb23
bb23:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l46
  br label %bb24
bb24:
  %t79 = load ptr, ptr %l39, !tbaa !29
  %t80 = load i64, ptr %l40, !tbaa !24
  %t81 = load { i64, [1 x i64] }, ptr %l41
  %t82 = load { i64, [4 x i64] }, ptr %l42
  %t83 = load i32, ptr %l44, !tbaa !23
  %t84 = load %"compiler/source:Span", ptr %l46
  %t85 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esettled(ptr %v0, ptr %t79, i64 %t80, { i64, [1 x i64] } %t81, { i64, [4 x i64] } %t82, i32 %t83, %"compiler/source:Span" %t84)
  store { i64, [4 x i64] } %t85, ptr %l47
  br label %bb25
bb25:
  %t86 = load { i64, [4 x i64] }, ptr %l47
  store { i64, [4 x i64] } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2erunArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 19 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  %t22 = load i32, ptr %l14, !tbaa !23
  %t23 = icmp eq i32 %t22, 0
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l11, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flower_2etupleItems(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 0 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb7:
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
  call void @__olang_check_failed(ptr @olang_loc_9199c0a93cf9da48_dd64f3db35db750c)
  unreachable
bb14:
  %t29 = icmp sge i64 0, 0
  br i1 %t29, label %bb15, label %bb16
bb15:
  %t31 = icmp sle i64 0, 1152921504606846975
  br i1 %t31, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_9332d5fa6ed1089a_91d46adad91ba686)
  unreachable
bb17:
  %t33 = mul i64 0, 8
  %t34 = insertvalue { i64, ptr } undef, i64 0, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9332d5fa6ed1089a_91d46adad91ba686)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/lower:collectCtx" @compiler_2flower_3acollectCtx_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4, i1 %a5, i1 %a6) #0 {
entry:
  %rv = alloca %"compiler/lower:collectCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/lower:collectCtx" undef, i32 %a0, 0
  %t18 = insertvalue %"compiler/lower:collectCtx" %t16, i32 %a1, 1
  %t20 = insertvalue %"compiler/lower:collectCtx" %t18, i32 %a2, 2
  %t22 = insertvalue %"compiler/lower:collectCtx" %t20, i32 %a3, 3
  %t24 = insertvalue %"compiler/lower:collectCtx" %t22, { i64, [1 x i64] } %a4, 4
  %t26 = insertvalue %"compiler/lower:collectCtx" %t24, i1 %a5, 5
  %t28 = insertvalue %"compiler/lower:collectCtx" %t26, i1 %a6, 6
  store %"compiler/lower:collectCtx" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:collectCtx", ptr %rv
  ret %"compiler/lower:collectCtx" %rr
}

declare ptr @__olang_scope_of(ptr, ptr) noinline
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d3 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a constructor of a type that is no struct" }>, align 8
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
define internal i64 @olang_lambda_4(ptr %env, i32 %a0) #0 {
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

define internal { i64, ptr } @olang_lambda_5(ptr %env, ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/lower:Lowerer", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = sext i32 %a0 to i64
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %vc0, ptr %vc0, ptr %t10, i64 %t14)
  store ptr %t17, ptr %l10
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l10, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %vc0, ptr %v0, ptr %t22, i32 %t21)
  store { i64, ptr } %t24, ptr %l13
  br label %bb2
bb2:
  %t25 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@olang_2esole_2ecompiler_2flower_3aGap_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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

@.d7 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a place that is none" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
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

@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d17 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"a Render helper for a type with no rendering" }>, align 8
@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">[" }>, align 8
define internal void @olang_lambda_20(ptr %env, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, [1 x i64] }
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca %"compiler/mir:Lvalue"
  %l14 = alloca { i64, [4 x i64] }
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l25 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca %"compiler/lower:pl"
  %l44 = alloca %"compiler/lower:pl"
  %l47 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %t6 = alloca { i64, [4 x i64] }, align 8
  %t51 = alloca { i64, [8 x i64] }, align 8
  %t87 = alloca { i64, [1 x i64] }, align 8
  store i32 %a0, ptr %l0
  %cp0 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/source:Span", ptr %cp1, !tbaa !28
  store %"compiler/source:Span" %cv1, ptr %l2
  %cp2 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load { i64, [1 x i64] }, ptr %cp2, !tbaa !28
  store { i64, [1 x i64] } %cv2, ptr %l6
  %cp3 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load %"compiler/lower:pl", ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load i32, ptr %cp4, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 5
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/source:Span", { i64, [1 x i64] }, %"compiler/lower:pl", i32, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i32 13, ptr %l10
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t2, ptr %l11, !tbaa !23
  %t3 = load i32, ptr %l0, !tbaa !23
  %t5 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t3)
  store %"compiler/mir:Lvalue" %t5, ptr %l13
  br label %bb1
bb1:
  store { i64, [4 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [4 x i64] }, ptr %t6, i32 0, i32 0
  store i64 1, ptr %t7
  %t8 = load %"compiler/mir:Lvalue", ptr %l13
  %t9 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t8, 0
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t6, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t9, ptr %t10
  %t11 = load { i64, [4 x i64] }, ptr %t6
  store { i64, [4 x i64] } %t11, ptr %l14
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %vc0, ptr %t12, i64 0)
  store { i64, [4 x i64] } %t14, ptr %l16
  br label %bb2
bb2:
  %t15 = mul i64 2, 40
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 2, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = load { i64, [4 x i64] }, ptr %l14
  %t20 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t21, i64 0
  store { i64, [4 x i64] } %t19, ptr %t22
  %t23 = load { i64, [4 x i64] }, ptr %l16
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i64 1
  store { i64, [4 x i64] } %t23, ptr %t26
  %t27 = load %"compiler/source:Span", ptr %l2
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = load i32, ptr %l10, !range !{i32 0, i32 52}
  %t30 = load i32, ptr %l11, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t33 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %vc0, ptr %s0, ptr %t28, i32 %t29, i32 %t30, { i64, ptr } %t31, %"compiler/source:Span" %t27)
  store { i64, [4 x i64] } %t33, ptr %l19
  br label %bb3
bb3:
  %t34 = load { i64, [4 x i64] }, ptr %l19
  store { i64, [4 x i64] } %t34, ptr %l3
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 3
  %t39 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %vc0, ptr %t37)
  store i32 %t39, ptr %l22
  br label %bb4
bb4:
  %t40 = load i32, ptr %l22, !tbaa !23
  store i32 %t40, ptr %l4, !tbaa !23
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 3
  %t45 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %vc0, ptr %t43)
  store i32 %t45, ptr %l25
  br label %bb5
bb5:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l5, !tbaa !23
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t48 = load { i64, [4 x i64] }, ptr %l3
  %t49 = load i32, ptr %l5, !tbaa !23
  %t50 = load i32, ptr %l4, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [8 x i64] }, ptr %t51, i32 0, i32 0
  store i64 2, ptr %t52
  %t54 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t48, 0
  %t56 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t54, i32 %t49, 1
  %t58 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t56, i32 %t50, 2
  %t59 = getelementptr { i64, [8 x i64] }, ptr %t51, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t58, ptr %t59
  %t60 = load { i64, [8 x i64] }, ptr %t51
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %vc0, ptr %t47, { i64, [8 x i64] } %t60)
  br label %bb6
bb6:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t64 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %vc0, ptr %t63, i32 %t64)
  br label %bb7
bb7:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t68 = load { i64, [1 x i64] }, ptr %l6
  %t69 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %vc0, ptr %s0, ptr %t67, { i64, [1 x i64] } %t68, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, %"compiler/source:Span" %t69)
  br label %bb8
bb8:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t74 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %vc0, ptr %t73, i32 %t74)
  br label %bb9
bb9:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t78 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %vc0, ptr %t77, i32 %t78)
  br label %bb10
bb10:
  %t81 = load ptr, ptr %l1, !tbaa !29
  store ptr %t81, ptr %l40, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l41, !tbaa !29
  store %"compiler/lower:pl" %cv3, ptr %l42
  %t85 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l42)
  store %"compiler/lower:pl" %t85, ptr %l44
  br label %bb11
bb11:
  %t86 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [1 x i64] }, ptr %t87, i32 0, i32 0
  store i64 1, ptr %t88
  %t90 = insertvalue { i32 } undef, i32 %t86, 0
  %t91 = getelementptr { i64, [1 x i64] }, ptr %t87, i32 0, i32 1
  store { i32 } %t90, ptr %t91
  %t92 = load { i64, [1 x i64] }, ptr %t87
  %t93 = load ptr, ptr %l41, !tbaa !29
  %t94 = load %"compiler/lower:pl", ptr %l44
  %t96 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t93, %"compiler/lower:pl" %t94, { i64, [1 x i64] } %t92)
  store %"compiler/lower:pl" %t96, ptr %l47
  br label %bb12
bb12:
  %t98 = load { i64, [1 x i64] }, ptr %l6
  %t99 = load %"compiler/source:Span", ptr %l2
  %t100 = load ptr, ptr %l40, !tbaa !29
  %t101 = load %"compiler/lower:pl", ptr %l47
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %vc0, ptr %s0, ptr %t100, %"compiler/lower:pl" %t101, i32 %cv4, { i64, [1 x i64] } %t98, %"compiler/source:Span" %t99)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@__olang_empty_array = external constant [16 x i64]
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
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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

declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eerrQualifier(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4e4c17ebfaf5d7b6_624a73934957b6f2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2flower_2estandIn(ptr %out, ptr %v0, i32 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %out, ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare void @compiler_2flower_3alowering_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2flower_2eFailIds = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
@G_2ecompiler_2flower_2eFailTypes = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
@G_2ecompiler_2flower_2eFailWords = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshParam(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eallFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
@olang_loc_7e98ebbcfc7ae681_fbeaec9fd6de6485 = external constant [0 x i8]
@olang_loc_80862e2151cf42f0_7c300e18841fcdd4 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_3aca88f8a70b165c_61af268fc3dc2410 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2ecapScopes(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
@olang_loc_b4f44bfc4c4e49f2_17d18a81dcc1f1de = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einstance(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, i1 %a6)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %a0)
@olang_loc_b0c77cc00353838c_f9addae603786cc8 = external constant [0 x i8]
declare %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4, i1 %a5)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_1378acbf535452a2_3a9100f5c9d7e1f6 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, { i64, [4 x i64] } %a2, i1 %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emovedViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_6a3744415739a386_9143a8e3ed3639a2 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFreshCtorAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eFreshViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e)
declare %"compiler/lower:Gap" @compiler_2flower_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ePush_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:Gap" %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %a0, i64 %a1, i1 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2emix(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2flower_2estableKey(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehashAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_48d1beea25ddfa94_a3fe957274d91168 = external constant [0 x i8]
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2echar(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_563c1466c1100e02_3d75491115d3396 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
@olang_loc_ef20f52c973b68a_c1ac21606c61e00e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, %"compiler/lower:level" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ector(ptr %v0, i64 %a0)
declare { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_4cb37aee5d59facb_f2ca314d8498104f = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:tryCtx" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d999208a3f1ad790_f453fe23535d6e14 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eSetAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/lower:tryCtx" %a2)
@olang_loc_25181308607ed221_2244024027539ec5 = external constant [0 x i8]
@olang_loc_178c6682d84dabc6_c363cd3d6310fdb2 = external constant [0 x i8]
@olang_loc_54c4e502471f1575_5d803130ca2c9231 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_237828d44636a984_bc321bec2b6d0e20 = external constant [0 x i8]
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ederef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epackedField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eelem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etempLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2etarget(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_25aa1fca937793b6_1bfa8a59c48f3aa2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewaits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a61cfa4a479d7a25_9400c4278bb1e539 = external constant [0 x i8]
@olang_loc_57b94e28dfb9b502_11fd69472c69d516 = external constant [0 x i8]
@olang_loc_76519f2a5446c8c2_195fd4b9f9cd3b36 = external constant [0 x i8]
@olang_loc_babafd94d84db46c_e9d5138a9339dba0 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:relPath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eAt_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAny(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, i1 %a4, %"compiler/source:Span" %a5)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erenderStr(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2einner(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2espell(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2, i1 %a3, i1 %a4)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epartAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %v0, i64 %a0, i32 %a1)
@olang_loc_7adf76f2408b5bdd_bd99dd0034e41651 = external constant [0 x i8]
@olang_loc_4257ffd395d48830_792957a97ae844 = external constant [0 x i8]
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i64 %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ereadOnly(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etaskType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eclausesTake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2espawnErrors(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_7b1a9423057e34c5_261f06cd9be6d659 = external constant [0 x i8]
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [7 x i64] } %a2, i32 %a3)
@olang_loc_16ceb3f79d83ba4c_75eb4aa6518e3548 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassedFor(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2, i32 %a3)
@G_2ecompiler_2fmir_2eNoPlace = available_externally constant <{ [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 32
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
@olang_loc_209cd4bf2df26d92_8c8de602dc63ff9e = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_77939bd7b34e0fa3_983f89b6cb89307 = external constant [0 x i8]
@olang_loc_cbdf5e9a9cabb32e_3680da0cabce8c12 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epieceView(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { { i64, [4 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2epiece(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
@olang_loc_459157e65df33c7e_1dfbf278634bff4a = external constant [0 x i8]
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erender(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4)
@olang_loc_3db4c7c32145727f_d6a525f06b7a698b = external constant [0 x i8]
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eregionSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2evalue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_Hf0fb0e232c68e27195d0770621b0035a(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esettled(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/source:Span" %a5)
@olang_loc_9199c0a93cf9da48_dd64f3db35db750c = external constant [0 x i8]
@olang_loc_9332d5fa6ed1089a_91d46adad91ba686 = external constant [0 x i8]

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
