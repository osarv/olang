source_filename = "compiler_lower-2.quick.ll"
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
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:DerivedArg" = type { i64, i64, { i64, [2 x i64] } }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2edeclName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i1
  %l14 = alloca i64
  %l19 = alloca i64
  %l21 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = trunc i64 %t7 to i32
  %t13 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t6, i32 %t9)
  store i64 %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load i64, ptr %l10, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l14, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:Lowerer", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/load:Loader", ptr %t26, i32 0, i32 10
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l19
  br label %bb4
bb3:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = load i64, ptr %l19, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  store i1 %t33, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l13, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:Lowerer", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/load:Loader", ptr %t42, i32 0, i32 10
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t44, i64 %t45)
  store ptr %t48, ptr %l27
  br label %bb8
bb7:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l21, !tbaa !27
  br label %bb9
bb8:
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t51 = getelementptr %"compiler/load:Module", ptr %t49, i32 0, i32 2
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %l21, !tbaa !27
  br label %bb9
bb9:
  %t54 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t54, ptr %l30, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:Lowerer", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = getelementptr %"compiler/types:Table", ptr %t61, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i64, ptr %l1, !tbaa !24
  %t72 = trunc i64 %t70 to i32
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t69, i32 %t72)
  store i32 %t76, ptr %l40
  br label %bb10
bb10:
  %t77 = load ptr, ptr %l33, !tbaa !29
  %t78 = call ptr @__olang_scope_of(ptr %t77, ptr null)
  %t79 = ptrtoint ptr %t78 to i64
  %t81 = inttoptr i64 %t79 to ptr
  %t82 = load ptr, ptr %l33, !tbaa !29
  %t83 = load i32, ptr %l40, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t81, ptr %s0, ptr %t82, i32 %t83)
  store { i64, ptr } %t84, ptr %l42
  br label %bb11
bb11:
  %t85 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = add i64 %t90, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t86, i64 %t87)
  %t96 = getelementptr i8, ptr %t95, i64 %t87
  call void @olang_textcopy(ptr %t96, ptr %t88, i64 %t89)
  %t97 = getelementptr i8, ptr %t96, i64 %t89
  call void @olang_textcopy(ptr %t97, ptr %t92, i64 %t93)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t95, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l44 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l66 = alloca { i64, ptr }
  %l68 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l77 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 0 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l8, !tbaa !21
  br label %bb58
bb6:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 18}
  %t33 = icmp eq i64 %t31, 8
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 16
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l27, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 0
  store i1 %t51, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t52 = load i1, ptr %l28, !tbaa !21
  br i1 %t52, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb58
bb20:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t54 = load ptr, ptr %l31, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb21, label %bb22
bb21:
  %t57 = load ptr, ptr %l31, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 6
  store i1 %t60, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t61 = load i1, ptr %l32, !tbaa !21
  br i1 %t61, label %bb23, label %bb24
bb23:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 1
  %t66 = load i32, ptr %t65
  store i32 %t66, ptr %l3, !tbaa !23
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb33
bb25:
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Call", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  store ptr %t77, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb26, label %bb27
bb26:
  %t81 = load ptr, ptr %l40, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 5}
  %t84 = icmp eq i64 %t82, 0
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb27
bb27:
  %t85 = load i1, ptr %l41, !tbaa !21
  br i1 %t85, label %bb28, label %bb29
bb28:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v0, ptr %t86)
  store ptr %t88, ptr %l46
  br label %bb30
bb29:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb32
bb30:
  %t89 = load i32, ptr %l3, !tbaa !23
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t92 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t90, i32 %t89)
  store i1 %t92, ptr %l48
  br label %bb31
bb31:
  %t93 = load i1, ptr %l48, !tbaa !21
  %t94 = xor i1 %t93, true
  store i1 %t94, ptr %l44, !tbaa !21
  br label %bb32
bb32:
  %t96 = load i1, ptr %l44, !tbaa !21
  store i1 %t96, ptr %l8, !tbaa !21
  br label %bb58
bb33:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb34, label %bb35
bb34:
  %t101 = load ptr, ptr %l50, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 18}
  %t104 = icmp eq i64 %t102, 9
  store i1 %t104, ptr %l51, !tbaa !21
  br label %bb35
bb35:
  %t105 = load i1, ptr %l51, !tbaa !21
  br i1 %t105, label %bb36, label %bb37
bb36:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t108, i32 0, i32 2
  %t110 = load i32, ptr %t109, !range !{i32 0, i32 52}
  store i32 %t110, ptr %l5
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t114, i32 0, i32 4
  %t116 = load { i64, ptr }, ptr %t115
  store { i64, ptr } %t116, ptr %l6, !tbaa !27
  br label %bb38
bb37:
  br label %bb46
bb38:
  %t118 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t120 = trunc i64 20 to i32
  %t121 = icmp eq i32 %t118, %t120
  br i1 %t121, label %bb39, label %bb40
bb39:
  %t123 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t127 = icmp eq i64 %t125, 1
  store i1 %t127, ptr %l60, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb41
bb41:
  %t129 = load i1, ptr %l60, !tbaa !21
  br i1 %t129, label %bb42, label %bb43
bb42:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t131, ptr %l66, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr ptr, ptr %t133, i64 0
  %t135 = load ptr, ptr %t134, !tbaa !39
  %t138 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshMade(ptr %v0, ptr %v1, ptr %t130, ptr %t135)
  store i1 %t138, ptr %l68
  br label %bb44
bb43:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb45
bb44:
  %t139 = load i1, ptr %l68, !tbaa !21
  store i1 %t139, ptr %l64, !tbaa !21
  br label %bb45
bb45:
  %t140 = load i1, ptr %l64, !tbaa !21
  store i1 %t140, ptr %l8, !tbaa !21
  br label %bb58
bb46:
  %t141 = load ptr, ptr %l1, !tbaa !29
  store ptr %t141, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t142 = load ptr, ptr %l69, !tbaa !29
  %t143 = icmp ne ptr %t142, null
  br i1 %t143, label %bb47, label %bb48
bb47:
  %t145 = load ptr, ptr %l69, !tbaa !29
  %t146 = load i64, ptr %t145, !range !{i64 0, i64 18}
  %t148 = icmp eq i64 %t146, 17
  store i1 %t148, ptr %l70, !tbaa !21
  br label %bb48
bb48:
  %t149 = load i1, ptr %l70, !tbaa !21
  br i1 %t149, label %bb49, label %bb50
bb49:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [5 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t152, i32 0, i32 2
  %t154 = load ptr, ptr %t153
  store ptr %t154, ptr %l7, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l7, !tbaa !29
  %t160 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshMade(ptr %v0, ptr %v1, ptr %t156, ptr %t157)
  store i1 %t160, ptr %l77
  br label %bb52
bb52:
  %t161 = load i1, ptr %l77, !tbaa !21
  store i1 %t161, ptr %l8, !tbaa !21
  br label %bb58
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_fdef55e2919415e3_7c40141ab4e8627)
  unreachable
bb58:
  %t162 = load i1, ptr %l8, !tbaa !21
  store i1 %t162, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %t33 = getelementptr %"compiler/lower:Lowerer", ptr %t31, i32 0, i32 29
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
  %t45 = getelementptr %"compiler/lower:Lowerer", ptr %t43, i32 0, i32 29
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
  %t62 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsParts(ptr %v0, ptr %v0, ptr %t59, ptr %t60, i64 %t58)
  store i1 %t62, ptr %l37
  br label %bb16
bb16:
  %t63 = load i1, ptr %l37, !tbaa !21
  store i1 %t63, ptr %l4, !tbaa !21
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 29
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

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eanyMake(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca { i64, [1 x i64] }
  %l23 = alloca ptr
  %l24 = alloca { i64, [4 x i64] }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca i1
  %l58 = alloca i1
  %l70 = alloca i1
  %l77 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l82 = alloca i32
  %l83 = alloca i1
  %l93 = alloca { i64, [1 x i64] }
  %l96 = alloca { i64, ptr }
  %l101 = alloca { i64, [4 x i64] }
  %l109 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca { i64, [4 x i64] }
  %l114 = alloca i32
  %l117 = alloca { i64, [4 x i64] }
  %l118 = alloca ptr
  %l119 = alloca i32
  %l120 = alloca i32
  %l124 = alloca { i64, ptr }
  %l125 = alloca %"compiler/mir:Range"
  %l128 = alloca { i64, [4 x i64] }
  %l136 = alloca { i64, [4 x i64] }
  %l137 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca i32
  %l140 = alloca { i64, [4 x i64] }
  %l142 = alloca { i64, ptr }
  %l145 = alloca { i64, [4 x i64] }
  %l146 = alloca { i64, ptr }
  %l148 = alloca { i64, [4 x i64] }
  %l151 = alloca { i64, ptr }
  %l160 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t191 = alloca { i64, [4 x i64] }, align 8
  %t239 = alloca { i64, [15 x i64] }, align 8
  %t260 = alloca { i64, [15 x i64] }, align 8
  %t321 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l28, !tbaa !27
  %t2 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t3 = load ptr, ptr %t2, !tbaa !27
  %t4 = getelementptr ptr, ptr %t3, i64 0
  %t5 = load ptr, ptr %t4, !tbaa !39
  store ptr %t5, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  store ptr %t7, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t8 = load ptr, ptr %l30, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l30, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 18}
  %t14 = icmp eq i64 %t12, 5
  store i1 %t14, ptr %l31, !tbaa !21
  br label %bb2
bb2:
  %t15 = load i1, ptr %l31, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l5
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l8, !tbaa !29
  %t36 = load ptr, ptr %l8, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Promote", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  store ptr %t39, ptr %l9, !tbaa !29
  %t41 = load ptr, ptr %l9, !tbaa !29
  store ptr %t41, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t42 = load ptr, ptr %l43, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb5, label %bb6
bb4:
  br label %bb37
bb5:
  %t45 = load ptr, ptr %l43, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 18}
  %t48 = icmp eq i64 %t46, 7
  store i1 %t48, ptr %l44, !tbaa !21
  br label %bb6
bb6:
  %t49 = load i1, ptr %l44, !tbaa !21
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l9, !tbaa !29
  %t52 = getelementptr { i64, [5 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 0
  %t54 = load %"compiler/source:Span", ptr %t53
  store %"compiler/source:Span" %t54, ptr %l10
  %t56 = load ptr, ptr %l9, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 1
  %t60 = load i32, ptr %t59
  store i32 %t60, ptr %l11, !tbaa !23
  %t62 = load ptr, ptr %l9, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  %t71 = getelementptr %"compiler/typed:Make", ptr %t66, i32 0, i32 0
  %t72 = load i32, ptr %t71, !range !{i32 0, i32 5}
  %t74 = trunc i64 0 to i32
  %t75 = icmp eq i32 %t72, %t74
  store i1 %t75, ptr %l47, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb9
bb9:
  %t77 = load i1, ptr %l47, !tbaa !21
  br i1 %t77, label %bb10, label %bb11
bb10:
  %t78 = load ptr, ptr %l9, !tbaa !29
  %t80 = getelementptr { i64, [5 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t80, i32 0, i32 0
  %t82 = load %"compiler/source:Span", ptr %t81
  store %"compiler/source:Span" %t82, ptr %l13
  %t84 = load ptr, ptr %l9, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 1
  %t88 = load i32, ptr %t87
  store i32 %t88, ptr %l14, !tbaa !23
  %t90 = load ptr, ptr %l9, !tbaa !29
  %t92 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t92, i32 0, i32 2
  %t94 = load ptr, ptr %t93
  %t99 = getelementptr %"compiler/typed:Make", ptr %t94, i32 0, i32 2
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l58, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb12
bb12:
  %t106 = load i1, ptr %l58, !tbaa !21
  br i1 %t106, label %bb13, label %bb14
bb13:
  %t107 = load ptr, ptr %l9, !tbaa !29
  %t109 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t109, i32 0, i32 0
  %t111 = load %"compiler/source:Span", ptr %t110
  store %"compiler/source:Span" %t111, ptr %l16
  %t113 = load ptr, ptr %l9, !tbaa !29
  %t115 = getelementptr { i64, [5 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t115, i32 0, i32 1
  %t117 = load i32, ptr %t116
  store i32 %t117, ptr %l17, !tbaa !23
  %t119 = load ptr, ptr %l9, !tbaa !29
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t121, i32 0, i32 2
  %t123 = load ptr, ptr %t122
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l77, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Make", ptr %t123, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l80, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr ptr, ptr %t132, i64 0
  %t134 = load ptr, ptr %t133, !tbaa !39
  %t136 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t134)
  store i32 %t136, ptr %l82
  br label %bb15
bb14:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb17
bb15:
  %t137 = load ptr, ptr %l77, !tbaa !29
  %t138 = load i32, ptr %l82, !tbaa !23
  %t139 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t137, i32 %t138)
  store i1 %t139, ptr %l83
  br label %bb16
bb16:
  %t140 = load i1, ptr %l83, !tbaa !21
  store i1 %t140, ptr %l70, !tbaa !21
  br label %bb17
bb17:
  %t141 = load i1, ptr %l70, !tbaa !21
  br i1 %t141, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t142 = load ptr, ptr %l9, !tbaa !29
  %t144 = getelementptr { i64, [5 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t144, i32 0, i32 0
  %t146 = load %"compiler/source:Span", ptr %t145
  store %"compiler/source:Span" %t146, ptr %l19
  %t148 = load ptr, ptr %l9, !tbaa !29
  %t150 = getelementptr { i64, [5 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t150, i32 0, i32 1
  %t152 = load i32, ptr %t151
  store i32 %t152, ptr %l20, !tbaa !23
  %t154 = load ptr, ptr %l9, !tbaa !29
  %t156 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t156, i32 0, i32 2
  %t158 = load ptr, ptr %t157
  store ptr %t158, ptr %l21, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l8, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Promote", ptr %t161, i32 0, i32 1
  %t164 = load i32, ptr %t163, !tbaa !23
  %t167 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t160, i32 %t164)
  store { i64, [1 x i64] } %t167, ptr %l93
  br label %bb20
bb19:
  br label %bb36
bb20:
  %t168 = load { i64, [1 x i64] }, ptr %l93
  store { i64, [1 x i64] } %t168, ptr %l22
  %t169 = load ptr, ptr %l21, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Make", ptr %t169, i32 0, i32 2
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l96, !tbaa !27
  %t174 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr ptr, ptr %t175, i64 0
  %t177 = load ptr, ptr %t176, !tbaa !39
  store ptr %t177, ptr %l23, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l23, !tbaa !29
  %t184 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t179, ptr %t180)
  store { i64, [4 x i64] } %t184, ptr %l101
  br label %bb21
bb21:
  %t185 = load { i64, [4 x i64] }, ptr %l101
  store { i64, [4 x i64] } %t185, ptr %l24
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/lower:lowering", ptr %t186, i32 0, i32 10
  %t189 = load i1, ptr %t188, !tbaa !21
  br i1 %t189, label %bb22, label %bb23
bb22:
  store { i64, [4 x i64] } zeroinitializer, ptr %t191
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 0
  store i64 0, ptr %t192
  %t193 = load { i64, [4 x i64] }, ptr %t191
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t193, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/lower:lowering", ptr %t195, i32 0, i32 2
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load ptr, ptr %l23, !tbaa !29
  %t203 = call i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %t198, ptr %t199)
  store i1 %t203, ptr %l109
  br label %bb25
bb25:
  %t204 = load i1, ptr %l109, !tbaa !21
  %t205 = xor i1 %t204, true
  br i1 %t205, label %bb26, label %bb27
bb26:
  %t207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t207, ptr %l111, !tbaa !29
  %t208 = load { i64, [4 x i64] }, ptr %l24
  store { i64, [4 x i64] } %t208, ptr %l112
  %t209 = load ptr, ptr %l23, !tbaa !29
  %t211 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t209)
  store i32 %t211, ptr %l114
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t212 = load %"compiler/source:Span", ptr %l3
  %t213 = load { i64, [1 x i64] }, ptr %l22
  %t214 = load ptr, ptr %l111, !tbaa !29
  %t215 = load { i64, [4 x i64] }, ptr %l112
  %t216 = load i32, ptr %l114, !tbaa !23
  %t219 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t214, { i64, [4 x i64] } %t215, i32 %t216, %"compiler/source:Span" %t212, { i64, [1 x i64] } %t213, i1 false)
  store { i64, [4 x i64] } %t219, ptr %l117
  br label %bb29
bb29:
  %t220 = load { i64, [4 x i64] }, ptr %l117
  store { i64, [4 x i64] } %t220, ptr %l24
  br label %bb30
bb30:
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l118, !tbaa !29
  %t222 = load i32, ptr %l20, !tbaa !23
  store i32 %t222, ptr %l119, !tbaa !23
  %t223 = load i32, ptr %l20, !tbaa !23
  store i32 %t223, ptr %l120, !tbaa !23
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/lower:lowering", ptr %t224, i32 0, i32 3
  %t227 = load { i64, [4 x i64] }, ptr %l24
  %t228 = mul i64 1, 40
  %t229 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t228)
  %t230 = insertvalue { i64, ptr } undef, i64 1, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l124, !tbaa !27
  %t233 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t234, i64 0
  store { i64, [4 x i64] } %t227, ptr %t235
  %t237 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t238 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s2, ptr %t226, { i64, ptr } %t237)
  store %"compiler/mir:Range" %t238, ptr %l125
  br label %bb31
bb31:
  store { i64, [15 x i64] } zeroinitializer, ptr %t239
  %t240 = getelementptr { i64, [15 x i64] }, ptr %t239, i32 0, i32 0
  store i64 6, ptr %t240
  %t241 = load i32, ptr %l120, !tbaa !23
  %t242 = insertvalue { i32, i64, %"compiler/mir:Range" } undef, i32 %t241, 0
  %t243 = insertvalue { i32, i64, %"compiler/mir:Range" } %t242, i64 0, 1
  %t244 = load %"compiler/mir:Range", ptr %l125
  %t245 = insertvalue { i32, i64, %"compiler/mir:Range" } %t243, %"compiler/mir:Range" %t244, 2
  %t246 = getelementptr { i64, [15 x i64] }, ptr %t239, i32 0, i32 1
  store { i32, i64, %"compiler/mir:Range" } %t245, ptr %t246
  %t247 = load { i64, [15 x i64] }, ptr %t239
  %t248 = load %"compiler/source:Span", ptr %l19
  %t249 = load ptr, ptr %l118, !tbaa !29
  %t250 = load i32, ptr %l119, !tbaa !23
  %t253 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t249, i32 %t250, { i64, [15 x i64] } %t247, %"compiler/source:Span" %t248)
  store { i64, [4 x i64] } %t253, ptr %l128
  br label %bb32
bb32:
  %t254 = load { i64, [4 x i64] }, ptr %l128
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i32, ptr %l6, !tbaa !23
  %t257 = load { i64, [1 x i64] }, ptr %l22
  %t259 = load i32, ptr %l6, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t260
  %t261 = getelementptr { i64, [15 x i64] }, ptr %t260, i32 0, i32 0
  store i64 7, ptr %t261
  %t263 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t257, 0
  %t265 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t263, { i64, [4 x i64] } %t254, 1
  %t267 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t265, i32 %t259, 2
  %t268 = getelementptr { i64, [15 x i64] }, ptr %t260, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t267, ptr %t268
  %t269 = load { i64, [15 x i64] }, ptr %t260
  %t270 = load %"compiler/source:Span", ptr %l3
  %t275 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t255, i32 %t256, { i64, [15 x i64] } %t269, %"compiler/source:Span" %t270)
  store { i64, [4 x i64] } %t275, ptr %l136
  br label %bb33
bb33:
  %t276 = load { i64, [4 x i64] }, ptr %l136
  %t277 = load ptr, ptr %l0, !tbaa !29
  store ptr %t277, ptr %l137, !tbaa !29
  store i32 42, ptr %l138
  %t278 = load i32, ptr %l2, !tbaa !23
  store i32 %t278, ptr %l139, !tbaa !23
  store { i64, [4 x i64] } %t276, ptr %l140
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t281, ptr %l142, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr ptr, ptr %t283, i64 1
  %t285 = load ptr, ptr %t284, !tbaa !39
  %t289 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t280, ptr %t285)
  store { i64, [4 x i64] } %t289, ptr %l145
  br label %bb34
bb34:
  %t290 = mul i64 2, 40
  %t291 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t290)
  %t292 = insertvalue { i64, ptr } undef, i64 2, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  store { i64, ptr } %t293, ptr %l146, !tbaa !27
  %t294 = load { i64, [4 x i64] }, ptr %l140
  %t295 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr { i64, [4 x i64] }, ptr %t296, i64 0
  store { i64, [4 x i64] } %t294, ptr %t297
  %t298 = load { i64, [4 x i64] }, ptr %l145
  %t299 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr { i64, [4 x i64] }, ptr %t300, i64 1
  store { i64, [4 x i64] } %t298, ptr %t301
  %t302 = load %"compiler/source:Span", ptr %l3
  %t303 = load ptr, ptr %l137, !tbaa !29
  %t304 = load i32, ptr %l138, !range !{i32 0, i32 52}
  %t305 = load i32, ptr %l139, !tbaa !23
  %t306 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t308 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t303, i32 %t304, i32 %t305, { i64, ptr } %t306, %"compiler/source:Span" %t302)
  store { i64, [4 x i64] } %t308, ptr %l148
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t309 = load { i64, [4 x i64] }, ptr %l148
  store { i64, [4 x i64] } %t309, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t314 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %s0, ptr %t310, { i64, ptr } %t311)
  store { i64, ptr } %t314, ptr %l151
  br label %bb38
bb38:
  %t315 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t315, ptr %l27, !tbaa !27
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/lower:lowering", ptr %t316, i32 0, i32 10
  %t319 = load i1, ptr %t318, !tbaa !21
  br i1 %t319, label %bb39, label %bb40
bb39:
  store { i64, [4 x i64] } zeroinitializer, ptr %t321
  %t322 = getelementptr { i64, [4 x i64] }, ptr %t321, i32 0, i32 0
  store i64 0, ptr %t322
  %t323 = load { i64, [4 x i64] }, ptr %t321
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t323, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load i32, ptr %l2, !tbaa !23
  %t327 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t328 = load %"compiler/source:Span", ptr %l3
  %t334 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t325, i32 42, i32 %t326, { i64, ptr } %t327, %"compiler/source:Span" %t328)
  store { i64, [4 x i64] } %t334, ptr %l160
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t335 = load { i64, [4 x i64] }, ptr %l160
  store { i64, [4 x i64] } %t335, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l19 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l48 = alloca i32
  %l51 = alloca i32
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, [4 x i64] }
  %l69 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca i32
  %l73 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l83 = alloca { i64, [4 x i64] }
  %l89 = alloca ptr
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca i32
  %l94 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t105 = alloca { i64, [8 x i64] }, align 8
  %t151 = alloca { i64, [8 x i64] }, align 8
  %t179 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l3
  %t7 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ebangNames(ptr %v0, ptr %s0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store { i64, ptr } %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t8, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l8, !tbaa !24
  store i64 2, ptr %l9, !tbaa !24
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l9, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l9, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l28, !tbaa !24
  store i64 %t39, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l25, !tbaa !24
  store i64 %t40, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l11, !tbaa !24
  %t42 = load i64, ptr %l10, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l11, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l12, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t59, i32 0, i32 3
  %t63 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t61)
  store i32 %t63, ptr %l48
  br label %bb12
bb12:
  %t64 = load i32, ptr %l48, !tbaa !23
  store i32 %t64, ptr %l13, !tbaa !23
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lower:lowering", ptr %t65, i32 0, i32 3
  %t69 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t67)
  store i32 %t69, ptr %l51
  br label %bb13
bb13:
  %t70 = load i32, ptr %l51, !tbaa !23
  store i32 %t70, ptr %l14, !tbaa !23
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t74, ptr %l56, !tbaa !27
  %t75 = load i64, ptr %l12, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t78, i64 %t75
  %t80 = load { i64, [4 x i64] }, ptr %t79
  %t81 = mul i64 2, 40
  %t82 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 2, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l59, !tbaa !27
  %t86 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t87, i64 0
  store { i64, [4 x i64] } %a1, ptr %t88
  %t90 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t91, i64 1
  store { i64, [4 x i64] } %t80, ptr %t92
  %t93 = load %"compiler/source:Span", ptr %l3
  %t97 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t99 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t71, i32 13, i32 %t72, { i64, ptr } %t97, %"compiler/source:Span" %t93)
  store { i64, [4 x i64] } %t99, ptr %l61
  br label %bb14
bb14:
  %t100 = load { i64, [4 x i64] }, ptr %l61
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l13, !tbaa !23
  %t104 = load i32, ptr %l14, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [8 x i64] }, ptr %t105, i32 0, i32 0
  store i64 2, ptr %t106
  %t108 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t100, 0
  %t110 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t108, i32 %t103, 1
  %t112 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t110, i32 %t104, 2
  %t113 = getelementptr { i64, [8 x i64] }, ptr %t105, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t112, ptr %t113
  %t114 = load { i64, [8 x i64] }, ptr %t105
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t101, { i64, [8 x i64] } %t114)
  br label %bb15
bb15:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t117, i32 %t118)
  br label %bb16
bb16:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l69, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t122, ptr %l70
  %t123 = load i32, ptr %l4, !range !{i32 0, i32 16}
  store i32 %t123, ptr %l71
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t125, ptr %l73, !tbaa !27
  %t126 = load i64, ptr %l12, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t129, i64 %t126
  %t131 = load { i64, [4 x i64] }, ptr %t130
  %t132 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t132, ptr %l76, !tbaa !27
  %t133 = load i64, ptr %l12, !tbaa !24
  %t135 = add i64 %t133, 1
  %t137 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr { i64, [4 x i64] }, ptr %t138, i64 %t135
  %t140 = load { i64, [4 x i64] }, ptr %t139
  %t141 = load i32, ptr %l2, !tbaa !23
  %t142 = load %"compiler/source:Span", ptr %l3
  %t150 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewithPayload(ptr %v0, ptr %t124, { i64, [4 x i64] } %t131, { i64, [4 x i64] } %t140, i32 %t141, %"compiler/source:Span" %t142, i1 %a5)
  store { i64, [4 x i64] } %t150, ptr %l83
  br label %bb17
bb17:
  store { i64, [8 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [8 x i64] }, ptr %t151, i32 0, i32 0
  store i64 9, ptr %t152
  %t153 = load %"compiler/source:Span", ptr %l70
  %t154 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t153, 0
  %t155 = load i32, ptr %l71, !range !{i32 0, i32 16}
  %t156 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t154, i32 %t155, 1
  %t157 = load { i64, [4 x i64] }, ptr %l83
  %t158 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t156, { i64, [4 x i64] } %t157, 2
  %t159 = getelementptr { i64, [8 x i64] }, ptr %t151, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t158, ptr %t159
  %t160 = load { i64, [8 x i64] }, ptr %t151
  %t161 = load ptr, ptr %l69, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t161, { i64, [8 x i64] } %t160)
  br label %bb18
bb18:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t163, i32 %t164)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t167 = load i64, ptr %l11, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l11, !tbaa !24
  br label %bb8
bb21:
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l89, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t172, ptr %l90
  %t173 = load i32, ptr %l4, !range !{i32 0, i32 16}
  store i32 %t173, ptr %l91
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l3
  %t178 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etextData(ptr %v0, ptr %s0, ptr %t174, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d2, i32 0, i32 1) }, %"compiler/source:Span" %t175)
  store { i64, [4 x i64] } %t178, ptr %l94
  br label %bb22
bb22:
  store { i64, [8 x i64] } zeroinitializer, ptr %t179
  %t180 = getelementptr { i64, [8 x i64] }, ptr %t179, i32 0, i32 0
  store i64 9, ptr %t180
  %t181 = load %"compiler/source:Span", ptr %l90
  %t182 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t181, 0
  %t183 = load i32, ptr %l91, !range !{i32 0, i32 16}
  %t184 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t182, i32 %t183, 1
  %t185 = load { i64, [4 x i64] }, ptr %l94
  %t186 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t184, { i64, [4 x i64] } %t185, 2
  %t187 = getelementptr { i64, [8 x i64] }, ptr %t179, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t186, ptr %t187
  %t188 = load { i64, [8 x i64] }, ptr %t179
  %t189 = load ptr, ptr %l89, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t189, { i64, [8 x i64] } %t188)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eborrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/lower:pl"
  %l10 = alloca %"compiler/lower:pl"
  %l12 = alloca %"compiler/lower:pl"
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca %"compiler/lower:pl"
  %l24 = alloca %"compiler/lower:pl"
  %l25 = alloca %"compiler/mir:Lvalue"
  %l29 = alloca { i64, [4 x i64] }
  %l33 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca %"compiler/lower:pl"
  %l43 = alloca i32
  %l45 = alloca { i64, [4 x i64] }
  %l47 = alloca i32
  %l49 = alloca i32
  %l50 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t37 = alloca { i64, [15 x i64] }, align 8
  %t99 = alloca { i64, [15 x i64] }, align 8
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
  %t9 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %s0, ptr %t4, ptr %t5)
  store %"compiler/lower:pl" %t9, ptr %l10
  br label %bb1
bb1:
  %t11 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l10)
  store %"compiler/lower:pl" %t11, ptr %l12
  br label %bb2
bb2:
  %t12 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t12, ptr %l4
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 25
  store i1 false, ptr %t15, !tbaa !21
  %t16 = getelementptr %"compiler/lower:pl", ptr %l4, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = icmp slt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 10
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  store i32 %t28, ptr %l20, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l21, !tbaa !29
  %t30 = load %"compiler/lower:pl", ptr %l4
  store %"compiler/lower:pl" %t30, ptr %l22
  %t32 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l22)
  store %"compiler/lower:pl" %t32, ptr %l24
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = load %"compiler/lower:pl", ptr %l24
  %t35 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s1, ptr %t33, %"compiler/lower:pl" %t34)
  store %"compiler/mir:Lvalue" %t35, ptr %l25
  br label %bb9
bb9:
  %t36 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [15 x i64] }, ptr %t37, i32 0, i32 0
  store i64 1, ptr %t38
  %t39 = load %"compiler/mir:Lvalue", ptr %l25
  %t40 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t39, 0
  %t42 = insertvalue { %"compiler/mir:Lvalue", i32 } %t40, i32 %t36, 1
  %t43 = getelementptr { i64, [15 x i64] }, ptr %t37, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t42, ptr %t43
  %t44 = load { i64, [15 x i64] }, ptr %t37
  %t45 = load %"compiler/source:Span", ptr %l3
  %t46 = load ptr, ptr %l19, !tbaa !29
  %t47 = load i32, ptr %l20, !tbaa !23
  %t50 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t46, i32 %t47, { i64, [15 x i64] } %t44, %"compiler/source:Span" %t45)
  store { i64, [4 x i64] } %t50, ptr %l29
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t51 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t51, ptr %rv
  br label %ret
bb11:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:lowering", ptr %t52, i32 0, i32 2
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t55, i32 %t56)
  store i64 %t59, ptr %l33
  br label %bb12
bb12:
  %t60 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t61 = load i64, ptr %l33, !tbaa !24
  %t63 = and i64 %t61, %t60
  %t65 = icmp ne i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s2, ptr %t67, %"compiler/source:Span" %t68, { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l40, !tbaa !29
  %t73 = load %"compiler/lower:pl", ptr %l4
  store %"compiler/lower:pl" %t73, ptr %l41
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t74)
  store i32 %t76, ptr %l43
  br label %bb17
bb17:
  %t77 = load %"compiler/source:Span", ptr %l3
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = load %"compiler/lower:pl", ptr %l41
  %t80 = load i32, ptr %l43, !tbaa !23
  %t82 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %s0, ptr %t78, %"compiler/lower:pl" %t79, i32 %t80, %"compiler/source:Span" %t77)
  store { i64, [4 x i64] } %t82, ptr %l45
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t83)
  store i32 %t85, ptr %l47
  br label %bb19
bb19:
  %t86 = load %"compiler/source:Span", ptr %l3
  %t87 = load ptr, ptr %l39, !tbaa !29
  %t88 = load { i64, [4 x i64] }, ptr %l45
  %t89 = load i32, ptr %l47, !tbaa !23
  %t91 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t87, { i64, [4 x i64] } %t88, i32 %t89, %"compiler/source:Span" %t86)
  store i32 %t91, ptr %l49
  br label %bb20
bb20:
  %t92 = load i32, ptr %l49, !tbaa !23
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l50, !tbaa !29
  %t94 = load i32, ptr %l2, !tbaa !23
  store i32 %t94, ptr %l51, !tbaa !23
  %t97 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t92)
  store %"compiler/mir:Lvalue" %t97, ptr %l53
  br label %bb21
bb21:
  %t98 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t99
  %t100 = getelementptr { i64, [15 x i64] }, ptr %t99, i32 0, i32 0
  store i64 1, ptr %t100
  %t101 = load %"compiler/mir:Lvalue", ptr %l53
  %t102 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t101, 0
  %t104 = insertvalue { %"compiler/mir:Lvalue", i32 } %t102, i32 %t98, 1
  %t105 = getelementptr { i64, [15 x i64] }, ptr %t99, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t104, ptr %t105
  %t106 = load { i64, [15 x i64] }, ptr %t99
  %t107 = load %"compiler/source:Span", ptr %l3
  %t108 = load ptr, ptr %l50, !tbaa !29
  %t109 = load i32, ptr %l51, !tbaa !23
  %t112 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t108, i32 %t109, { i64, [15 x i64] } %t106, %"compiler/source:Span" %t107)
  store { i64, [4 x i64] } %t112, ptr %l57
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load { i64, [4 x i64] }, ptr %l57
  store { i64, [4 x i64] } %t113, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i1
  %l30 = alloca i64
  %l34 = alloca i64
  %l36 = alloca i1
  %l41 = alloca i1
  %l48 = alloca ptr
  %l60 = alloca { { i64, [7 x i64] }, i32 }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l71 = alloca i32
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca { { i64, [7 x i64] }, i32 }
  %l86 = alloca ptr
  %l87 = alloca i1
  %l97 = alloca { { i64, [7 x i64] }, i32 }
  %l98 = alloca ptr
  %l99 = alloca i1
  %rv = alloca { { i64, [7 x i64] }, i32 }
  %t81 = alloca { i64, [2 x i64] }, align 8
  %t90 = alloca { i64, [7 x i64] }, align 8
  %t139 = alloca { i64, [7 x i64] }, align 8
  %t224 = alloca { i64, [4 x i64] }, align 8
  %t229 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t2 = load ptr, ptr %l14, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l14, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l15, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l15, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb23
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 24
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 30
  %t27 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %t23, i32 %a3)
  store i64 %t27, ptr %l26
  br label %bb8
bb7:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb9
bb8:
  %t28 = load i64, ptr %l26, !tbaa !24
  store i64 %t28, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t29 = load i64, ptr %l22, !tbaa !24
  store i64 %t29, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp sge i64 %t30, 0
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l5, !tbaa !24
  store i64 %t34, ptr %l30, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/lower:Lowerer", ptr %t38, i32 0, i32 4
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l34
  br label %bb12
bb11:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb13
bb12:
  %t43 = load i64, ptr %l30, !tbaa !24
  %t44 = load i64, ptr %l34, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  store i1 %t45, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l29, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/lower:Lowerer", ptr %t51, i32 0, i32 4
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l41
  br label %bb16
bb15:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb17
bb16:
  %t58 = load i1, ptr %l41, !tbaa !21
  store i1 %t58, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l36, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:lowering", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/lower:Lowerer", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = load i32, ptr %l4, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t66, i64 %t70)
  store ptr %t73, ptr %l48
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t74 = load ptr, ptr %l48, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %t76, !tbaa !23
  store i32 %t77, ptr %l6, !tbaa !23
  %t79 = load i32, ptr %l4, !tbaa !23
  %t80 = load i64, ptr %l5, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 0
  store i64 6, ptr %t82
  %t84 = insertvalue { i32, i64 } undef, i32 %t79, 0
  %t86 = insertvalue { i32, i64 } %t84, i64 %t80, 1
  %t87 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 1
  store { i32, i64 } %t86, ptr %t87
  %t88 = load { i64, [2 x i64] }, ptr %t81
  %t89 = load i32, ptr %l6, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [7 x i64] }, ptr %t90, i32 0, i32 0
  store i64 0, ptr %t91
  %t93 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t88, 0
  %t95 = insertvalue { { i64, [2 x i64] }, i32 } %t93, i32 %t89, 1
  %t96 = getelementptr { i64, [7 x i64] }, ptr %t90, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t95, ptr %t96
  %t97 = load { i64, [7 x i64] }, ptr %t90
  %t98 = load i32, ptr %l6, !tbaa !23
  %t100 = insertvalue { { i64, [7 x i64] }, i32 } undef, { i64, [7 x i64] } %t97, 0
  %t102 = insertvalue { { i64, [7 x i64] }, i32 } %t100, i32 %t98, 1
  store { { i64, [7 x i64] }, i32 } %t102, ptr %rv
  br label %ret
bb21:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i32, ptr %l4, !tbaa !23
  %t108 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %t104, i32 %t105)
  store { { i64, [7 x i64] }, i32 } %t108, ptr %l60
  br label %bb22
bb22:
  %t109 = load { { i64, [7 x i64] }, i32 }, ptr %l60
  store { { i64, [7 x i64] }, i32 } %t109, ptr %rv
  br label %ret
bb23:
  %t110 = load ptr, ptr %l1, !tbaa !29
  store ptr %t110, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t111 = load ptr, ptr %l61, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb24, label %bb25
bb24:
  %t114 = load ptr, ptr %l61, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 5}
  %t117 = icmp eq i64 %t115, 1
  store i1 %t117, ptr %l62, !tbaa !21
  br label %bb25
bb25:
  %t118 = load i1, ptr %l62, !tbaa !21
  br i1 %t118, label %bb26, label %bb27
bb26:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { i64 }, ptr %t121, i32 0, i32 0
  %t123 = load i64, ptr %t122
  store i64 %t123, ptr %l7, !tbaa !24
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/lower:lowering", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/lower:Lowerer", ptr %t128, i32 0, i32 0
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i64, ptr %l7, !tbaa !24
  %t135 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t131, i64 %t132)
  store i32 %t135, ptr %l71
  br label %bb29
bb29:
  %t136 = load i32, ptr %l71, !tbaa !23
  store i32 %t136, ptr %l8, !tbaa !23
  %t137 = load i64, ptr %l7, !tbaa !24
  %t138 = load i32, ptr %l8, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [7 x i64] }, ptr %t139, i32 0, i32 0
  store i64 1, ptr %t140
  %t142 = insertvalue { i64, i32 } undef, i64 %t137, 0
  %t144 = insertvalue { i64, i32 } %t142, i32 %t138, 1
  %t145 = getelementptr { i64, [7 x i64] }, ptr %t139, i32 0, i32 1
  store { i64, i32 } %t144, ptr %t145
  %t146 = load { i64, [7 x i64] }, ptr %t139
  %t147 = load i32, ptr %l8, !tbaa !23
  %t149 = insertvalue { { i64, [7 x i64] }, i32 } undef, { i64, [7 x i64] } %t146, 0
  %t151 = insertvalue { { i64, [7 x i64] }, i32 } %t149, i32 %t147, 1
  store { { i64, [7 x i64] }, i32 } %t151, ptr %rv
  br label %ret
bb30:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t154 = load ptr, ptr %l77, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb31, label %bb32
bb31:
  %t157 = load ptr, ptr %l77, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 5}
  %t160 = icmp eq i64 %t158, 2
  store i1 %t160, ptr %l78, !tbaa !21
  br label %bb32
bb32:
  %t161 = load i1, ptr %l78, !tbaa !21
  br i1 %t161, label %bb33, label %bb34
bb33:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr { i64, [3 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { ptr }, ptr %t164, i32 0, i32 0
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l9, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t172 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2evalueCallee(ptr %v0, ptr %v1, ptr %t168, ptr %t169)
  store { { i64, [7 x i64] }, i32 } %t172, ptr %l85
  br label %bb36
bb36:
  %t173 = load { { i64, [7 x i64] }, i32 }, ptr %l85
  store { { i64, [7 x i64] }, i32 } %t173, ptr %rv
  br label %ret
bb37:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t175 = load ptr, ptr %l86, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb38, label %bb39
bb38:
  %t178 = load ptr, ptr %l86, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 5}
  %t181 = icmp eq i64 %t179, 4
  store i1 %t181, ptr %l87, !tbaa !21
  br label %bb39
bb39:
  %t182 = load i1, ptr %l87, !tbaa !21
  br i1 %t182, label %bb40, label %bb41
bb40:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { i32, i32 }, ptr %t185, i32 0, i32 0
  %t187 = load i32, ptr %t186, !range !{i32 0, i32 2}
  store i32 %t187, ptr %l10
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [3 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { i32, i32 }, ptr %t191, i32 0, i32 1
  %t193 = load i32, ptr %t192
  store i32 %t193, ptr %l11, !tbaa !23
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l10, !range !{i32 0, i32 2}
  %t197 = load i32, ptr %l11, !tbaa !23
  %t201 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCallee(ptr %v0, ptr %t195, i32 %t196, i32 %t197)
  store { { i64, [7 x i64] }, i32 } %t201, ptr %l97
  br label %bb43
bb43:
  %t202 = load { { i64, [7 x i64] }, i32 }, ptr %l97
  store { { i64, [7 x i64] }, i32 } %t202, ptr %rv
  br label %ret
bb44:
  %t203 = load ptr, ptr %l1, !tbaa !29
  store ptr %t203, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t204 = load ptr, ptr %l98, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb45, label %bb46
bb45:
  %t207 = load ptr, ptr %l98, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 5}
  %t210 = icmp eq i64 %t208, 3
  store i1 %t210, ptr %l99, !tbaa !21
  br label %bb46
bb46:
  %t211 = load i1, ptr %l99, !tbaa !21
  br i1 %t211, label %bb47, label %bb48
bb47:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr { i64, [3 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { i32, i64, i32 }, ptr %t214, i32 0, i32 1
  %t216 = load i64, ptr %t215
  store i64 %t216, ptr %l12, !tbaa !24
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [3 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { i32, i64, i32 }, ptr %t220, i32 0, i32 2
  %t222 = load i32, ptr %t221
  store i32 %t222, ptr %l13, !tbaa !23
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, [4 x i64] } zeroinitializer, ptr %t224
  %t225 = getelementptr { i64, [4 x i64] }, ptr %t224, i32 0, i32 0
  store i64 0, ptr %t225
  %t226 = load { i64, [4 x i64] }, ptr %t224
  %t227 = load i64, ptr %l12, !tbaa !24
  %t228 = load i32, ptr %l13, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [7 x i64] }, ptr %t229, i32 0, i32 0
  store i64 3, ptr %t230
  %t232 = insertvalue { { i64, [4 x i64] }, i64, i32 } undef, { i64, [4 x i64] } %t226, 0
  %t234 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t232, i64 %t227, 1
  %t236 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t234, i32 %t228, 2
  %t237 = getelementptr { i64, [7 x i64] }, ptr %t229, i32 0, i32 1
  store { { i64, [4 x i64] }, i64, i32 } %t236, ptr %t237
  %t238 = load { i64, [7 x i64] }, ptr %t229
  %t239 = load i32, ptr %l13, !tbaa !23
  %t241 = insertvalue { { i64, [7 x i64] }, i32 } undef, { i64, [7 x i64] } %t238, 0
  %t243 = insertvalue { { i64, [7 x i64] }, i32 } %t241, i32 %t239, 1
  store { { i64, [7 x i64] }, i32 } %t243, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_21e9da82ebd620c7_b6074e807b9f75fb)
  unreachable
ret:
  %rr = load { { i64, [7 x i64] }, i32 }, ptr %rv
  ret { { i64, [7 x i64] }, i32 } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiedBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i32
  %l40 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l58 = alloca i32
  %l63 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l78 = alloca { i64, [1 x i64] }
  %l86 = alloca i32
  %l92 = alloca i32
  %l99 = alloca ptr
  %l102 = alloca %"compiler/lower:level"
  %l105 = alloca i64
  %l111 = alloca i64
  %l115 = alloca i64
  %l118 = alloca i64
  %l136 = alloca i64
  %l140 = alloca i32
  %l141 = alloca %"compiler/mir:Lvalue"
  %l146 = alloca i64
  %l155 = alloca i64
  %l158 = alloca i64
  %l183 = alloca i32
  %l186 = alloca i32
  %l190 = alloca i32
  %l193 = alloca ptr
  %l196 = alloca i32
  %l197 = alloca { i64, ptr }
  %l203 = alloca i32
  %l206 = alloca i32
  %l208 = alloca ptr
  %l212 = alloca { i64, [7 x i64] }
  %l216 = alloca %"compiler/mir:Range"
  %l220 = alloca %"compiler/mir:Range"
  %l222 = alloca %"compiler/mir:Lvalue"
  %l226 = alloca %"compiler/mir:Call"
  %l227 = alloca i32
  %l238 = alloca ptr
  %l239 = alloca %"compiler/source:Span"
  %l241 = alloca %"compiler/mir:Lvalue"
  %l246 = alloca ptr
  %l247 = alloca ptr
  %l248 = alloca i32
  %l250 = alloca %"compiler/mir:Lvalue"
  %l254 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %t93 = alloca { i64, [1 x i64] }, align 8
  %t98 = alloca { i64, [1 x i64] }, align 8
  %t130 = alloca { i64, [21 x i64] }, align 8
  %t233 = alloca { i64, [4 x i64] }, align 8
  %t315 = alloca { i64, [1 x i64] }, align 8
  %t386 = alloca { i64, [2 x i64] }, align 8
  %t393 = alloca { i64, [7 x i64] }, align 8
  %t436 = alloca { i64, [8 x i64] }, align 8
  %t463 = alloca { i64, [4 x i64] }, align 8
  %t469 = alloca { i64, [8 x i64] }, align 8
  %t489 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
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
  %t14 = load ptr, ptr %l3, !tbaa !29
  store ptr %t14, ptr %l40, !tbaa !29
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l43
  br label %bb1
bb1:
  %t20 = load ptr, ptr %l40, !tbaa !29
  %t21 = load i32, ptr %l43, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t22, ptr %l44
  br label %bb2
bb2:
  %t23 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t23, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l7, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t36, ptr %l51, !tbaa !27
  %t37 = load i64, ptr %l6, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 %t37
  %t42 = load i32, ptr %t41, !tbaa !33
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 3
  %t47 = load %"compiler/source:Span", ptr %l4
  %t52 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %t46, i32 0, %"compiler/source:Span" %t47, i32 %t42)
  store i32 %t52, ptr %l58
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l6, !tbaa !24
  br label %bb3
bb9:
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t57, i32 %t58)
  store { i64, ptr } %t61, ptr %l63
  br label %bb10
bb10:
  %t62 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t62, ptr %l9, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t63, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l12, !tbaa !24
  br label %bb11
bb11:
  %t69 = load i64, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l12, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t77 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t77, ptr %l71, !tbaa !27
  %t78 = load i64, ptr %l11, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i64, ptr %t81, i64 %t78
  %t83 = load i64, ptr %t82, !tbaa !34
  store i64 %t83, ptr %l13, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lower:lowering", ptr %t85, i32 0, i32 3
  %t88 = getelementptr %"compiler/mir:Fn", ptr %t87, i32 0, i32 6
  store ptr %t88, ptr %l75, !tbaa !29
  %t89 = load i64, ptr %l13, !tbaa !24
  %t91 = icmp slt i64 %t89, 0
  br i1 %t91, label %bb15, label %bb16
bb15:
  store { i64, [1 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 0
  store i64 1, ptr %t94
  %t95 = load { i64, [1 x i64] }, ptr %t93
  store { i64, [1 x i64] } %t95, ptr %l78
  br label %bb17
bb16:
  %t97 = load i64, ptr %l13, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [1 x i64] }, ptr %t98, i32 0, i32 0
  store i64 0, ptr %t99
  %t101 = insertvalue { i64 } undef, i64 %t97, 0
  %t102 = getelementptr { i64, [1 x i64] }, ptr %t98, i32 0, i32 1
  store { i64 } %t101, ptr %t102
  %t103 = load { i64, [1 x i64] }, ptr %t98
  store { i64, [1 x i64] } %t103, ptr %l78
  br label %bb17
bb17:
  %t105 = load ptr, ptr %l75, !tbaa !29
  %t106 = load { i64, [1 x i64] }, ptr %l78
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t105, { i64, [1 x i64] } %t106)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t107 = load i64, ptr %l11, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l11, !tbaa !24
  br label %bb11
bb20:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/lower:lowering", ptr %t111, i32 0, i32 3
  %t115 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t113)
  store i32 %t115, ptr %l86
  br label %bb21
bb21:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/lower:lowering", ptr %t116, i32 0, i32 3
  %t119 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t120 = load %"compiler/source:Span", ptr %l4
  %t125 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %t118, i32 0, i32 %t119, i32 -1, %"compiler/source:Span" %t120, i32 0)
  store i32 %t125, ptr %l92
  br label %bb22
bb22:
  %t126 = load i32, ptr %l92, !tbaa !23
  store i32 %t126, ptr %l14, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l4
  %t129 = load i32, ptr %l14, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [21 x i64] }, ptr %t130, i32 0, i32 0
  store i64 3, ptr %t131
  %t133 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t128, 0
  %t135 = insertvalue { %"compiler/source:Span", i32 } %t133, i32 %t129, 1
  %t136 = getelementptr { i64, [21 x i64] }, ptr %t130, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t135, ptr %t136
  %t137 = load { i64, [21 x i64] }, ptr %t130
  %t139 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t137, ptr %t139
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t127, ptr %t139)
  br label %bb23
bb23:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/lower:lowering", ptr %t142, i32 0, i32 12
  store ptr %t144, ptr %l99, !tbaa !29
  %t145 = load i32, ptr %l14, !tbaa !23
  %t148 = call %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %s0, i32 %t145, i32 -1, i32 0)
  store %"compiler/lower:level" %t148, ptr %l102
  br label %bb24
bb24:
  %t149 = load ptr, ptr %l99, !tbaa !29
  %t150 = load %"compiler/lower:level", ptr %l102
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t149, %"compiler/lower:level" %t150)
  br label %bb25
bb25:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lower:lowering", ptr %t151, i32 0, i32 3
  %t154 = getelementptr %"compiler/mir:Fn", ptr %t153, i32 0, i32 4
  %t156 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t154)
  store i64 %t156, ptr %l105
  br label %bb26
bb26:
  %t157 = load i64, ptr %l105, !tbaa !24
  %t158 = icmp sge i64 %t157, 0
  br i1 %t158, label %bb27, label %bb28
bb27:
  %t160 = load i64, ptr %l105, !tbaa !24
  %t161 = icmp sle i64 %t160, 230584300921369395
  br i1 %t161, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f0e3ab530de58942_134f25d81f1c0b96)
  unreachable
bb29:
  %t163 = load i64, ptr %l105, !tbaa !24
  %t164 = mul i64 %t163, 40
  %t165 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t164)
  %t166 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/lower:lowering", ptr %t169, i32 0, i32 3
  %t172 = getelementptr %"compiler/mir:Fn", ptr %t171, i32 0, i32 4
  %t174 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t172)
  store i64 %t174, ptr %l111
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_f0e3ab530de58942_134f25d81f1c0b96)
  unreachable
bb31:
  %t175 = load i64, ptr %l111, !tbaa !24
  store i64 %t175, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t176 = load i64, ptr %l17, !tbaa !24
  %t177 = load i64, ptr %l16, !tbaa !24
  %t180 = icmp sgt i64 %t176, %t177
  br i1 %t180, label %bb32, label %bb33
bb32:
  %t182 = load i64, ptr %l18, !tbaa !24
  %t184 = icmp sgt i64 %t182, 0
  br i1 %t184, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb37
bb34:
  %t186 = load i64, ptr %l17, !tbaa !24
  %t187 = load i64, ptr %l16, !tbaa !24
  %t190 = sub i64 %t186, %t187
  %t191 = load i64, ptr %l18, !tbaa !24
  %t194 = add i64 %t190, %t191
  %t196 = sub i64 %t194, 1
  %t197 = load i64, ptr %l18, !tbaa !24
  %t200 = sdiv i64 %t196, %t197
  store i64 %t200, ptr %l118, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb36
bb36:
  %t202 = load i64, ptr %l118, !tbaa !24
  store i64 %t202, ptr %l115, !tbaa !24
  br label %bb37
bb37:
  %t203 = load i64, ptr %l115, !tbaa !24
  store i64 %t203, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb38
bb38:
  %t204 = load i64, ptr %l20, !tbaa !24
  %t205 = load i64, ptr %l19, !tbaa !24
  %t208 = icmp slt i64 %t204, %t205
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb39, label %bb40
bb39:
  br label %bb45
bb40:
  br label %bb41
bb41:
  %t212 = load i64, ptr %l16, !tbaa !24
  %t213 = load i64, ptr %l20, !tbaa !24
  %t214 = load i64, ptr %l18, !tbaa !24
  %t217 = mul i64 %t213, %t214
  %t220 = add i64 %t212, %t217
  store i64 %t220, ptr %l21, !tbaa !24
  %t222 = load i64, ptr %l21, !tbaa !24
  store i64 %t222, ptr %l136, !tbaa !24
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/lower:lowering", ptr %t223, i32 0, i32 3
  %t226 = getelementptr %"compiler/mir:Fn", ptr %t225, i32 0, i32 4
  %t227 = load i64, ptr %l21, !tbaa !24
  %t230 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t226, i64 %t227)
  store i32 %t230, ptr %l140
  br label %bb42
bb42:
  %t231 = load i32, ptr %l140, !tbaa !23
  %t232 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t231)
  store %"compiler/mir:Lvalue" %t232, ptr %l141
  br label %bb43
bb43:
  store { i64, [4 x i64] } zeroinitializer, ptr %t233
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 0
  store i64 1, ptr %t234
  %t235 = load %"compiler/mir:Lvalue", ptr %l141
  %t236 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t235, 0
  %t237 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t236, ptr %t237
  %t238 = load { i64, [4 x i64] }, ptr %t233
  %t240 = load i64, ptr %l136, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t242, i64 %t240
  store { i64, [4 x i64] } %t238, ptr %t243
  br label %bb44
bb44:
  %t244 = load i64, ptr %l20, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l20, !tbaa !24
  br label %bb38
bb45:
  %t248 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t248, 0
  store i64 %t250, ptr %l146, !tbaa !24
  %t251 = load i64, ptr %l146, !tbaa !24
  %t252 = icmp sge i64 %t251, 0
  br i1 %t252, label %bb46, label %bb47
bb46:
  %t254 = load i64, ptr %l146, !tbaa !24
  %t255 = icmp sle i64 %t254, 576460752303423487
  br i1 %t255, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_d0c953a1a1b280f7_b575c5e04bc1bbab)
  unreachable
bb48:
  %t257 = load i64, ptr %l146, !tbaa !24
  %t258 = mul i64 %t257, 16
  %t259 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t258)
  %t260 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  store { i64, ptr } %t261, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t263 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  store i64 %t265, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t267 = load i64, ptr %l24, !tbaa !24
  %t268 = load i64, ptr %l23, !tbaa !24
  %t271 = icmp sgt i64 %t267, %t268
  br i1 %t271, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_d0c953a1a1b280f7_b575c5e04bc1bbab)
  unreachable
bb50:
  %t273 = load i64, ptr %l25, !tbaa !24
  %t275 = icmp sgt i64 %t273, 0
  br i1 %t275, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb55
bb52:
  %t277 = load i64, ptr %l24, !tbaa !24
  %t278 = load i64, ptr %l23, !tbaa !24
  %t281 = sub i64 %t277, %t278
  %t282 = load i64, ptr %l25, !tbaa !24
  %t285 = add i64 %t281, %t282
  %t287 = sub i64 %t285, 1
  %t288 = load i64, ptr %l25, !tbaa !24
  %t291 = sdiv i64 %t287, %t288
  store i64 %t291, ptr %l158, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l158, !tbaa !24
  br label %bb54
bb54:
  %t293 = load i64, ptr %l158, !tbaa !24
  store i64 %t293, ptr %l155, !tbaa !24
  br label %bb55
bb55:
  %t294 = load i64, ptr %l155, !tbaa !24
  store i64 %t294, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb56
bb56:
  %t295 = load i64, ptr %l27, !tbaa !24
  %t296 = load i64, ptr %l26, !tbaa !24
  %t299 = icmp slt i64 %t295, %t296
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb57, label %bb58
bb57:
  br label %bb61
bb58:
  br label %bb59
bb59:
  %t303 = load i64, ptr %l23, !tbaa !24
  %t304 = load i64, ptr %l27, !tbaa !24
  %t305 = load i64, ptr %l25, !tbaa !24
  %t308 = mul i64 %t304, %t305
  %t311 = add i64 %t303, %t308
  store i64 %t311, ptr %l28, !tbaa !24
  %t313 = load i64, ptr %l28, !tbaa !24
  %t314 = load i64, ptr %l28, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t315
  %t316 = getelementptr { i64, [1 x i64] }, ptr %t315, i32 0, i32 0
  store i64 1, ptr %t316
  %t318 = insertvalue { i64 } undef, i64 %t314, 0
  %t319 = getelementptr { i64, [1 x i64] }, ptr %t315, i32 0, i32 1
  store { i64 } %t318, ptr %t319
  %t320 = load { i64, [1 x i64] }, ptr %t315
  %t323 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr { i64, [1 x i64] }, ptr %t324, i64 %t313
  store { i64, [1 x i64] } %t320, ptr %t325
  br label %bb60
bb60:
  %t326 = load i64, ptr %l27, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l27, !tbaa !24
  br label %bb56
bb61:
  %t330 = load ptr, ptr %l3, !tbaa !29
  %t331 = load i32, ptr %l2, !tbaa !23
  %t334 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t330, i32 %t331)
  store i32 %t334, ptr %l183
  br label %bb62
bb62:
  %t335 = load i32, ptr %l183, !tbaa !23
  store i32 %t335, ptr %l29, !tbaa !23
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/lower:lowering", ptr %t336, i32 0, i32 3
  %t340 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t338)
  store i32 %t340, ptr %l186
  br label %bb63
bb63:
  %t341 = load i32, ptr %l186, !tbaa !23
  store i32 %t341, ptr %l30, !tbaa !23
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load i32, ptr %l29, !tbaa !23
  %t344 = load %"compiler/source:Span", ptr %l4
  %t348 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t342, i32 %t343, %"compiler/source:Span" %t344)
  store i32 %t348, ptr %l190
  br label %bb64
bb64:
  %t349 = load i32, ptr %l190, !tbaa !23
  store i32 %t349, ptr %l31, !tbaa !23
  %t350 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t350, ptr %l32, !tbaa !23
  %t352 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t352, ptr %l33, !tbaa !23
  %t354 = load ptr, ptr %l3, !tbaa !29
  store ptr %t354, ptr %l193, !tbaa !29
  %t355 = load ptr, ptr %l3, !tbaa !29
  %t356 = load i32, ptr %l2, !tbaa !23
  %t359 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t355, i32 %t356)
  store i32 %t359, ptr %l196
  br label %bb65
bb65:
  %t360 = load ptr, ptr %l193, !tbaa !29
  %t361 = load i32, ptr %l196, !tbaa !23
  %t362 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t360, i32 %t361)
  store { i64, ptr } %t362, ptr %l197
  br label %bb66
bb66:
  %t363 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t363, 0
  %t366 = icmp sgt i64 %t364, 0
  br i1 %t366, label %bb67, label %bb68
bb67:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t370 = load %"compiler/source:Span", ptr %l4
  %t374 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t368, i32 %t369, %"compiler/source:Span" %t370)
  store i32 %t374, ptr %l203
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t375 = load i32, ptr %l203, !tbaa !23
  store i32 %t375, ptr %l32, !tbaa !23
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/lower:lowering", ptr %t376, i32 0, i32 3
  %t380 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t378)
  store i32 %t380, ptr %l206
  br label %bb70
bb70:
  %t381 = load i32, ptr %l206, !tbaa !23
  store i32 %t381, ptr %l33, !tbaa !23
  br label %bb71
bb71:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/lower:lowering", ptr %t382, i32 0, i32 3
  store ptr %t384, ptr %l208, !tbaa !29
  %t385 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t386
  %t387 = getelementptr { i64, [2 x i64] }, ptr %t386, i32 0, i32 0
  store i64 0, ptr %t387
  %t389 = insertvalue { i32 } undef, i32 %t385, 0
  %t390 = getelementptr { i64, [2 x i64] }, ptr %t386, i32 0, i32 1
  store { i32 } %t389, ptr %t390
  %t391 = load { i64, [2 x i64] }, ptr %t386
  %t392 = load i32, ptr %l2, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t393
  %t394 = getelementptr { i64, [7 x i64] }, ptr %t393, i32 0, i32 0
  store i64 0, ptr %t394
  %t396 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t391, 0
  %t398 = insertvalue { { i64, [2 x i64] }, i32 } %t396, i32 %t392, 1
  %t399 = getelementptr { i64, [7 x i64] }, ptr %t393, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t398, ptr %t399
  %t400 = load { i64, [7 x i64] }, ptr %t393
  store { i64, [7 x i64] } %t400, ptr %l212
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/lower:lowering", ptr %t401, i32 0, i32 3
  %t404 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t407 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t403, { i64, ptr } %t404)
  store %"compiler/mir:Range" %t407, ptr %l216
  br label %bb72
bb72:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/lower:lowering", ptr %t408, i32 0, i32 3
  %t411 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t414 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t410, { i64, ptr } %t411)
  store %"compiler/mir:Range" %t414, ptr %l220
  br label %bb73
bb73:
  %t415 = load i32, ptr %l31, !tbaa !23
  %t417 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t415)
  store %"compiler/mir:Lvalue" %t417, ptr %l222
  br label %bb74
bb74:
  %t418 = load i32, ptr %l30, !tbaa !23
  %t419 = load i32, ptr %l32, !tbaa !23
  %t420 = load i32, ptr %l33, !tbaa !23
  %t421 = load { i64, [7 x i64] }, ptr %l212
  %t422 = load %"compiler/mir:Range", ptr %l216
  %t423 = load %"compiler/mir:Range", ptr %l220
  %t424 = load %"compiler/mir:Lvalue", ptr %l222
  %t428 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t421, %"compiler/mir:Range" %t422, %"compiler/mir:Range" %t423, %"compiler/mir:Lvalue" %t424, i1 true, i32 %t418, i32 %t419, i32 %t420)
  store %"compiler/mir:Call" %t428, ptr %l226
  br label %bb75
bb75:
  %t429 = load ptr, ptr %l208, !tbaa !29
  %t430 = load %"compiler/mir:Call", ptr %l226
  %t431 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t429, %"compiler/mir:Call" %t430)
  store i32 %t431, ptr %l227
  br label %bb76
bb76:
  %t432 = load i32, ptr %l227, !tbaa !23
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load %"compiler/source:Span", ptr %l4
  store { i64, [8 x i64] } zeroinitializer, ptr %t436
  %t437 = getelementptr { i64, [8 x i64] }, ptr %t436, i32 0, i32 0
  store i64 4, ptr %t437
  %t439 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t434, 0
  %t441 = insertvalue { %"compiler/source:Span", i32 } %t439, i32 %t432, 1
  %t442 = getelementptr { i64, [8 x i64] }, ptr %t436, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t441, ptr %t442
  %t443 = load { i64, [8 x i64] }, ptr %t436
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t433, { i64, [8 x i64] } %t443)
  br label %bb77
bb77:
  %t446 = load i32, ptr %l33, !tbaa !23
  %t447 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t450 = icmp ne i32 %t446, %t447
  br i1 %t450, label %bb78, label %bb79
bb78:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i32, ptr %l33, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t452, i32 %t453)
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t456 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t456, i64 0)
  br label %bb81
bb81:
  %t458 = load ptr, ptr %l0, !tbaa !29
  store ptr %t458, ptr %l238, !tbaa !29
  %t459 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t459, ptr %l239
  %t460 = load i32, ptr %l32, !tbaa !23
  %t462 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t460)
  store %"compiler/mir:Lvalue" %t462, ptr %l241
  br label %bb82
bb82:
  store { i64, [4 x i64] } zeroinitializer, ptr %t463
  %t464 = getelementptr { i64, [4 x i64] }, ptr %t463, i32 0, i32 0
  store i64 1, ptr %t464
  %t465 = load %"compiler/mir:Lvalue", ptr %l241
  %t466 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t465, 0
  %t467 = getelementptr { i64, [4 x i64] }, ptr %t463, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t466, ptr %t467
  %t468 = load { i64, [4 x i64] }, ptr %t463
  store { i64, [8 x i64] } zeroinitializer, ptr %t469
  %t470 = getelementptr { i64, [8 x i64] }, ptr %t469, i32 0, i32 0
  store i64 7, ptr %t470
  %t471 = load %"compiler/source:Span", ptr %l239
  %t472 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t471, 0
  %t474 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t472, { i64, [4 x i64] } %t468, 1
  %t475 = getelementptr { i64, [8 x i64] }, ptr %t469, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t474, ptr %t475
  %t476 = load { i64, [8 x i64] }, ptr %t469
  %t477 = load ptr, ptr %l238, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t477, { i64, [8 x i64] } %t476)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i32, ptr %l30, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t479, i32 %t480)
  br label %bb85
bb85:
  %t483 = load ptr, ptr %l0, !tbaa !29
  store ptr %t483, ptr %l246, !tbaa !29
  %t484 = load ptr, ptr %l0, !tbaa !29
  store ptr %t484, ptr %l247, !tbaa !29
  %t485 = load i32, ptr %l1, !tbaa !23
  store i32 %t485, ptr %l248, !tbaa !23
  %t486 = load i32, ptr %l31, !tbaa !23
  %t488 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t486)
  store %"compiler/mir:Lvalue" %t488, ptr %l250
  br label %bb86
bb86:
  store { i64, [4 x i64] } zeroinitializer, ptr %t489
  %t490 = getelementptr { i64, [4 x i64] }, ptr %t489, i32 0, i32 0
  store i64 1, ptr %t490
  %t491 = load %"compiler/mir:Lvalue", ptr %l250
  %t492 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t491, 0
  %t493 = getelementptr { i64, [4 x i64] }, ptr %t489, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t492, ptr %t493
  %t494 = load { i64, [4 x i64] }, ptr %t489
  %t495 = load i32, ptr %l29, !tbaa !23
  %t496 = load %"compiler/source:Span", ptr %l4
  %t497 = load ptr, ptr %l247, !tbaa !29
  %t498 = load i32, ptr %l248, !tbaa !23
  %t502 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopied(ptr %v0, ptr %t497, i32 %t498, { i64, [4 x i64] } %t494, i32 %t495, %"compiler/source:Span" %t496)
  store { i64, [4 x i64] } %t502, ptr %l254
  br label %bb87
bb87:
  %t503 = load ptr, ptr %l246, !tbaa !29
  %t504 = load { i64, [4 x i64] }, ptr %l254
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %t503, { i64, [4 x i64] } %t504)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounted(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/mir:Lvalue"
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l36 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l61 = alloca ptr
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l73 = alloca i32
  %l74 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [21 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t18, i32 0, i32 1
  %t20 = load %"compiler/mir:Lvalue", ptr %t19
  store %"compiler/mir:Lvalue" %t20, ptr %l3
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [21 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, [15 x i64] }, ptr %t25
  store { i64, [15 x i64] } %t26, ptr %l4
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l2
  %t30 = load %"compiler/mir:Lvalue", ptr %l3
  %t31 = load { i64, [15 x i64] }, ptr %l4
  %t36 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedAssign(ptr %v0, ptr %t28, %"compiler/source:Span" %t29, %"compiler/mir:Lvalue" %t30, { i64, [15 x i64] } %t31)
  store i1 %t36, ptr %l24
  br label %bb6
bb6:
  %t37 = load i1, ptr %l24, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
bb7:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 16}
  %t45 = icmp eq i64 %t43, 1
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [21 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32 }, ptr %t49, i32 0, i32 0
  %t51 = load %"compiler/source:Span", ptr %t50
  store %"compiler/source:Span" %t51, ptr %l5
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [21 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32 }, ptr %t55, i32 0, i32 1
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l6, !tbaa !23
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l6, !tbaa !23
  %t62 = sext i32 %t60 to i64
  %t65 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedLocal(ptr %v0, ptr %t59, i64 %t62)
  store i1 %t65, ptr %l36
  br label %bb13
bb13:
  %t66 = load i1, ptr %l36, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lower:lowering", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lower:lowering", ptr %t73, i32 0, i32 9
  %t76 = load i32, ptr %t75, !tbaa !23
  %t77 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %t72, i32 %t76, ptr %t77)
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l6, !tbaa !23
  %t84 = sext i32 %t82 to i64
  %t85 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroLocal(ptr %v0, ptr %t81, i64 %t84, %"compiler/source:Span" %t85)
  br label %bb18
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb20, label %bb21
bb20:
  %t94 = load ptr, ptr %l49, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 16}
  %t97 = icmp eq i64 %t95, 9
  store i1 %t97, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t98 = load i1, ptr %l50, !tbaa !21
  br i1 %t98, label %bb22, label %bb23
bb22:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [21 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t101, i32 0, i32 0
  %t103 = load %"compiler/source:Span", ptr %t102
  store %"compiler/source:Span" %t103, ptr %l7
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr { i64, [21 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t107, i32 0, i32 1
  %t109 = load %"compiler/mir:Lvalue", ptr %t108
  store %"compiler/mir:Lvalue" %t109, ptr %l8
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [21 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t113, i32 0, i32 3
  %t115 = load { i64, [4 x i64] }, ptr %t114
  store { i64, [4 x i64] } %t115, ptr %l9
  br label %bb24
bb23:
  br label %bb35
bb24:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/lower:lowering", ptr %t117, i32 0, i32 0
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t120)
  store ptr %t122, ptr %l61
  br label %bb25
bb25:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/lower:lowering", ptr %t123, i32 0, i32 2
  %t126 = load ptr, ptr %t125, !tbaa !29
  store ptr %t126, ptr %l63, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 2
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l65, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l66, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/mir:Lvalue", ptr %l8
  %t134 = getelementptr %"compiler/mir:Lvalue", ptr %l8, i32 0, i32 1
  %t135 = getelementptr %"compiler/mir:Range", ptr %t134, i32 0, i32 1
  %t136 = load i32, ptr %t135, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t142 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %t132, %"compiler/mir:Lvalue" %t133, i64 %t138)
  store i32 %t142, ptr %l71
  br label %bb26
bb26:
  %t143 = load ptr, ptr %l66, !tbaa !29
  %t144 = load i32, ptr %l71, !tbaa !23
  %t145 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t145, ptr %l72
  br label %bb27
bb27:
  %t146 = load ptr, ptr %l65, !tbaa !29
  %t147 = load i32, ptr %l72, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t148, ptr %l73
  br label %bb28
bb28:
  %t149 = load ptr, ptr %l61, !tbaa !29
  %t150 = load ptr, ptr %l63, !tbaa !29
  %t151 = load i32, ptr %l73, !tbaa !23
  %t152 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t149, ptr %t150, i32 %t151)
  store i1 %t152, ptr %l74
  br label %bb29
bb29:
  %t153 = load i1, ptr %l74, !tbaa !21
  %t154 = xor i1 %t153, true
  br i1 %t154, label %bb30, label %bb31
bb30:
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/lower:lowering", ptr %t157, i32 0, i32 3
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lower:lowering", ptr %t160, i32 0, i32 9
  %t163 = load i32, ptr %t162, !tbaa !23
  %t164 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %t159, i32 %t163, ptr %t164)
  br label %bb33
bb33:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load { i64, [4 x i64] }, ptr %l9
  %t170 = load %"compiler/source:Span", ptr %l7
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/mir:Lvalue", ptr %l8
  %t173 = load %"compiler/source:Span", ptr %l7
  %t174 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr null, i32 1
  %t175 = ptrtoint ptr %t174 to i64
  %t176 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t175, i64 8)
  %t177 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %t176, i32 0, i32 0
  store ptr %t171, ptr %t177, !tbaa !28
  %t179 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %t176, i32 0, i32 1
  store %"compiler/mir:Lvalue" %t172, ptr %t179, !tbaa !28
  %t181 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %t176, i32 0, i32 2
  store %"compiler/source:Span" %t173, ptr %t181, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t183 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %t176, i32 0, i32 3
  store ptr %v0, ptr %t183, !tbaa !28
  %t184 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t185 = insertvalue { ptr, ptr } %t184, ptr %t176, 1
  %t190 = extractvalue { ptr, ptr } %t185, 0
  %t191 = extractvalue { ptr, ptr } %t185, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v0, ptr %t168, { i64, [4 x i64] } %t169, %"compiler/source:Span" %t170, ptr %t190, ptr %t191)
  br label %bb34
bb34:
  store i1 true, ptr %rv
  br label %ret
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i1 false, ptr %rv
  br label %ret
bb39:
  call void @__olang_check_failed(ptr @olang_loc_ef902e6f1f1cf371_1c67ccc72296fcd)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCaught(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca %"compiler/lower:pl"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l22 = alloca %"compiler/mir:Lvalue"
  %l29 = alloca i32
  %l33 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/mir:Lvalue"
  %l43 = alloca ptr
  %l44 = alloca i32
  %l48 = alloca { i64, [4 x i64] }
  %l51 = alloca { i64, [4 x i64] }
  %l54 = alloca %"compiler/lower:pl"
  %l55 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca %"compiler/lower:pl"
  %l61 = alloca %"compiler/lower:pl"
  %l63 = alloca %"compiler/lower:pl"
  %l64 = alloca %"compiler/mir:Lvalue"
  %l69 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca { i64, ptr }
  %l79 = alloca i64
  %l82 = alloca i64
  %l102 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l107 = alloca i32
  %l108 = alloca i32
  %l117 = alloca i64
  %l120 = alloca i32
  %l123 = alloca i32
  %l124 = alloca ptr
  %l129 = alloca { i64, [4 x i64] }
  %l138 = alloca i32
  %l139 = alloca ptr
  %l145 = alloca { i64, [4 x i64] }
  %l148 = alloca i32
  %l154 = alloca { i64, ptr }
  %l155 = alloca %"compiler/mir:Lvalue"
  %l156 = alloca ptr
  %l157 = alloca %"compiler/source:Span"
  %l158 = alloca ptr
  %l159 = alloca ptr
  %l160 = alloca %"compiler/lower:pl"
  %l162 = alloca %"compiler/lower:pl"
  %l165 = alloca %"compiler/lower:pl"
  %l166 = alloca %"compiler/mir:Lvalue"
  %l179 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t30 = alloca { i64, [4 x i64] }, align 8
  %t37 = alloca { i64, [15 x i64] }, align 8
  %t43 = alloca { i64, [21 x i64] }, align 8
  %t66 = alloca { i64, [15 x i64] }, align 8
  %t80 = alloca { i64, [2 x i64] }, align 8
  %t96 = alloca { i64, [1 x i64] }, align 8
  %t109 = alloca { i64, [15 x i64] }, align 8
  %t115 = alloca { i64, [21 x i64] }, align 8
  %t255 = alloca { i64, [8 x i64] }, align 8
  %t283 = alloca { i64, [15 x i64] }, align 8
  %t307 = alloca { i64, [2 x i64] }, align 8
  %t313 = alloca { i64, [1 x i64] }, align 8
  %t337 = alloca { i64, [1 x i64] }, align 8
  %t351 = alloca { i64, [4 x i64] }, align 8
  %t357 = alloca { i64, [15 x i64] }, align 8
  %t363 = alloca { i64, [21 x i64] }, align 8
  %t392 = alloca { i64, [4 x i64] }, align 8
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
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = load %"compiler/source:Span", ptr %l3
  %t14 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t6, { i64, [4 x i64] } %a1, i32 %t8, %"compiler/source:Span" %t9)
  store i32 %t14, ptr %l29
  br label %bb1
bb1:
  %t15 = load i32, ptr %l29, !tbaa !23
  store i32 %t15, ptr %l5, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t18 = load %"compiler/source:Span", ptr %l3
  %t22 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t16, i32 %t17, %"compiler/source:Span" %t18)
  store i32 %t22, ptr %l33
  br label %bb2
bb2:
  %t23 = load i32, ptr %l33, !tbaa !23
  store i32 %t23, ptr %l6, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l34, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t25, ptr %l35
  %t26 = load i32, ptr %l6, !tbaa !23
  %t28 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t26)
  store %"compiler/mir:Lvalue" %t28, ptr %l37
  br label %bb3
bb3:
  %t29 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 0
  store i64 2, ptr %t31
  %t33 = insertvalue { i32, i64 } undef, i32 %t29, 0
  %t34 = insertvalue { i32, i64 } %t33, i64 0, 1
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  store { i32, i64 } %t34, ptr %t35
  %t36 = load { i64, [4 x i64] }, ptr %t30
  store { i64, [15 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [15 x i64] }, ptr %t37, i32 0, i32 0
  store i64 0, ptr %t38
  %t40 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t36, 0
  %t41 = getelementptr { i64, [15 x i64] }, ptr %t37, i32 0, i32 1
  store { { i64, [4 x i64] } } %t40, ptr %t41
  %t42 = load { i64, [15 x i64] }, ptr %t37
  store { i64, [21 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [21 x i64] }, ptr %t43, i32 0, i32 0
  store i64 0, ptr %t44
  %t45 = load %"compiler/source:Span", ptr %l35
  %t46 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t45, 0
  %t47 = load %"compiler/mir:Lvalue", ptr %l37
  %t48 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t46, %"compiler/mir:Lvalue" %t47, 1
  %t50 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t48, { i64, [15 x i64] } %t42, 2
  %t51 = getelementptr { i64, [21 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t50, ptr %t51
  %t52 = load { i64, [21 x i64] }, ptr %t43
  %t54 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t52, ptr %t54
  %t55 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t55, ptr %t54)
  br label %bb4
bb4:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l43, !tbaa !29
  %t58 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t58, ptr %l44, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l5, !tbaa !23
  %t61 = load i32, ptr %l2, !tbaa !23
  %t65 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %t59, i32 %t60, i32 %t61)
  store { i64, [4 x i64] } %t65, ptr %l48
  br label %bb5
bb5:
  store { i64, [15 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [15 x i64] }, ptr %t66, i32 0, i32 0
  store i64 0, ptr %t67
  %t68 = load { i64, [4 x i64] }, ptr %l48
  %t69 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t68, 0
  %t70 = getelementptr { i64, [15 x i64] }, ptr %t66, i32 0, i32 1
  store { { i64, [4 x i64] } } %t69, ptr %t70
  %t71 = load { i64, [15 x i64] }, ptr %t66
  %t72 = load %"compiler/source:Span", ptr %l3
  %t73 = load ptr, ptr %l43, !tbaa !29
  %t74 = load i32, ptr %l44, !tbaa !23
  %t77 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t73, i32 %t74, { i64, [15 x i64] } %t71, %"compiler/source:Span" %t72)
  store { i64, [4 x i64] } %t77, ptr %l51
  br label %bb6
bb6:
  %t78 = load { i64, [4 x i64] }, ptr %l51
  store { i64, [4 x i64] } %t78, ptr %l7
  %t79 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 0
  store i64 1, ptr %t81
  %t83 = insertvalue { i32 } undef, i32 %t79, 0
  %t84 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 1
  store { i32 } %t83, ptr %t84
  %t85 = load { i64, [2 x i64] }, ptr %t80
  %t87 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t85)
  store %"compiler/lower:pl" %t87, ptr %l54
  br label %bb7
bb7:
  %t88 = load %"compiler/lower:pl", ptr %l54
  store %"compiler/lower:pl" %t88, ptr %l8
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l55, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t90, ptr %l56
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l57, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l58, !tbaa !29
  %t93 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t93, ptr %l59
  %t95 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l59)
  store %"compiler/lower:pl" %t95, ptr %l61
  br label %bb8
bb8:
  store { i64, [1 x i64] } zeroinitializer, ptr %t96
  %t97 = getelementptr { i64, [1 x i64] }, ptr %t96, i32 0, i32 0
  store i64 0, ptr %t97
  %t98 = insertvalue { i64 } undef, i64 0, 0
  %t99 = getelementptr { i64, [1 x i64] }, ptr %t96, i32 0, i32 1
  store { i64 } %t98, ptr %t99
  %t100 = load { i64, [1 x i64] }, ptr %t96
  %t101 = load ptr, ptr %l58, !tbaa !29
  %t102 = load %"compiler/lower:pl", ptr %l61
  %t104 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t101, %"compiler/lower:pl" %t102, { i64, [1 x i64] } %t100)
  store %"compiler/lower:pl" %t104, ptr %l63
  br label %bb9
bb9:
  %t105 = load ptr, ptr %l57, !tbaa !29
  %t106 = load %"compiler/lower:pl", ptr %l63
  %t107 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t105, %"compiler/lower:pl" %t106)
  store %"compiler/mir:Lvalue" %t107, ptr %l64
  br label %bb10
bb10:
  %t108 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [15 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [15 x i64] }, ptr %t109, i32 0, i32 0
  store i64 0, ptr %t110
  %t112 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t108, 0
  %t113 = getelementptr { i64, [15 x i64] }, ptr %t109, i32 0, i32 1
  store { { i64, [4 x i64] } } %t112, ptr %t113
  %t114 = load { i64, [15 x i64] }, ptr %t109
  store { i64, [21 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t117 = load %"compiler/source:Span", ptr %l56
  %t118 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t117, 0
  %t119 = load %"compiler/mir:Lvalue", ptr %l64
  %t120 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t118, %"compiler/mir:Lvalue" %t119, 1
  %t122 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t120, { i64, [15 x i64] } %t114, 2
  %t123 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t122, ptr %t123
  %t124 = load { i64, [21 x i64] }, ptr %t115
  %t126 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t124, ptr %t126
  %t127 = load ptr, ptr %l55, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t127, ptr %t126)
  br label %bb11
bb11:
  %t129 = load ptr, ptr %l4, !tbaa !29
  store ptr %t129, ptr %l69, !tbaa !29
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t131 = load i32, ptr %l2, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l72
  br label %bb12
bb12:
  %t135 = load ptr, ptr %l69, !tbaa !29
  %t136 = load i32, ptr %l72, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t137, ptr %l73
  br label %bb13
bb13:
  %t138 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t138, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  store i64 %t141, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t143 = load i64, ptr %l11, !tbaa !24
  %t144 = load i64, ptr %l10, !tbaa !24
  %t147 = icmp sgt i64 %t143, %t144
  br i1 %t147, label %bb14, label %bb15
bb14:
  %t149 = load i64, ptr %l12, !tbaa !24
  %t151 = icmp sgt i64 %t149, 0
  br i1 %t151, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb19
bb16:
  %t153 = load i64, ptr %l11, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t157 = sub i64 %t153, %t154
  %t158 = load i64, ptr %l12, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t163 = sub i64 %t161, 1
  %t164 = load i64, ptr %l12, !tbaa !24
  %t167 = sdiv i64 %t163, %t164
  store i64 %t167, ptr %l82, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb18
bb18:
  %t169 = load i64, ptr %l82, !tbaa !24
  store i64 %t169, ptr %l79, !tbaa !24
  br label %bb19
bb19:
  %t170 = load i64, ptr %l79, !tbaa !24
  store i64 %t170, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s2
  %t171 = load i64, ptr %l14, !tbaa !24
  %t172 = load i64, ptr %l13, !tbaa !24
  %t175 = icmp slt i64 %t171, %t172
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb46
bb22:
  br label %bb23
bb23:
  %t179 = load i64, ptr %l10, !tbaa !24
  %t180 = load i64, ptr %l14, !tbaa !24
  %t181 = load i64, ptr %l12, !tbaa !24
  %t184 = mul i64 %t180, %t181
  %t187 = add i64 %t179, %t184
  store i64 %t187, ptr %l15, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/lower:lowering", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/lower:Lowerer", ptr %t192, i32 0, i32 0
  %t195 = load ptr, ptr %t194, !tbaa !29
  store ptr %t195, ptr %l102, !tbaa !29
  %t196 = load ptr, ptr %l4, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t197, ptr %l104, !tbaa !27
  %t198 = load i64, ptr %l15, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr i32, ptr %t201, i64 %t198
  %t203 = load i32, ptr %t202, !tbaa !33
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t196, i32 %t203)
  store i32 %t206, ptr %l107
  br label %bb24
bb24:
  %t207 = load ptr, ptr %l102, !tbaa !29
  %t208 = load i32, ptr %l107, !tbaa !23
  %t209 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t209, ptr %l108
  br label %bb25
bb25:
  %t210 = load i32, ptr %l108, !tbaa !23
  store i32 %t210, ptr %l16, !tbaa !23
  %t211 = load i32, ptr %l16, !tbaa !23
  %t212 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t215 = icmp eq i32 %t211, %t212
  br i1 %t215, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb27:
  br label %bb28
bb28:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/lower:lowering", ptr %t217, i32 0, i32 0
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/lower:Lowerer", ptr %t220, i32 0, i32 0
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t224 = load i32, ptr %l2, !tbaa !23
  %t225 = load i64, ptr %l15, !tbaa !24
  %t229 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t223, i32 %t224, i64 %t225)
  store i64 %t229, ptr %l117
  br label %bb29
bb29:
  %t230 = load i64, ptr %l117, !tbaa !24
  store i64 %t230, ptr %l17, !tbaa !24
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/lower:lowering", ptr %t231, i32 0, i32 3
  %t235 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t233)
  store i32 %t235, ptr %l120
  br label %bb30
bb30:
  %t236 = load i32, ptr %l120, !tbaa !23
  store i32 %t236, ptr %l18, !tbaa !23
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/lower:lowering", ptr %t237, i32 0, i32 3
  %t241 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t239)
  store i32 %t241, ptr %l123
  br label %bb31
bb31:
  %t242 = load i32, ptr %l123, !tbaa !23
  store i32 %t242, ptr %l19, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l124, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load { i64, [4 x i64] }, ptr %l7
  %t246 = load i64, ptr %l15, !tbaa !24
  %t247 = load %"compiler/source:Span", ptr %l3
  %t252 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %t244, { i64, [4 x i64] } %t245, i64 %t246, %"compiler/source:Span" %t247)
  store { i64, [4 x i64] } %t252, ptr %l129
  br label %bb32
bb32:
  %t253 = load i32, ptr %l18, !tbaa !23
  %t254 = load i32, ptr %l19, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t255
  %t256 = getelementptr { i64, [8 x i64] }, ptr %t255, i32 0, i32 0
  store i64 2, ptr %t256
  %t257 = load { i64, [4 x i64] }, ptr %l129
  %t258 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t257, 0
  %t260 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t258, i32 %t253, 1
  %t262 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t260, i32 %t254, 2
  %t263 = getelementptr { i64, [8 x i64] }, ptr %t255, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t262, ptr %t263
  %t264 = load { i64, [8 x i64] }, ptr %t255
  %t265 = load ptr, ptr %l124, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t265, { i64, [8 x i64] } %t264)
  br label %bb33
bb33:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l18, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t267, i32 %t268)
  br label %bb34
bb34:
  %t271 = load ptr, ptr %l4, !tbaa !29
  %t272 = load i32, ptr %l16, !tbaa !23
  %t273 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t277 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t271, i32 %t272, i64 %t273)
  store i32 %t277, ptr %l138
  br label %bb35
bb35:
  %t278 = load i32, ptr %l138, !tbaa !23
  store i32 %t278, ptr %l20, !tbaa !23
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l139, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load i32, ptr %l20, !tbaa !23
  %t282 = load i32, ptr %l20, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t283
  %t284 = getelementptr { i64, [15 x i64] }, ptr %t283, i32 0, i32 0
  store i64 20, ptr %t284
  %t286 = insertvalue { i32 } undef, i32 %t282, 0
  %t287 = getelementptr { i64, [15 x i64] }, ptr %t283, i32 0, i32 1
  store { i32 } %t286, ptr %t287
  %t288 = load { i64, [15 x i64] }, ptr %t283
  %t289 = load %"compiler/source:Span", ptr %l3
  %t294 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t280, i32 %t281, { i64, [15 x i64] } %t288, %"compiler/source:Span" %t289)
  store { i64, [4 x i64] } %t294, ptr %l145
  br label %bb36
bb36:
  %t295 = load i32, ptr %l20, !tbaa !23
  %t296 = load %"compiler/source:Span", ptr %l3
  %t297 = load ptr, ptr %l139, !tbaa !29
  %t298 = load { i64, [4 x i64] }, ptr %l145
  %t301 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t297, { i64, [4 x i64] } %t298, i32 %t295, %"compiler/source:Span" %t296)
  store i32 %t301, ptr %l148
  br label %bb37
bb37:
  %t302 = load i32, ptr %l148, !tbaa !23
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/lower:lowering", ptr %t303, i32 0, i32 3
  store { i64, [2 x i64] } zeroinitializer, ptr %t307
  %t308 = getelementptr { i64, [2 x i64] }, ptr %t307, i32 0, i32 0
  store i64 1, ptr %t308
  %t310 = insertvalue { i32 } undef, i32 %t302, 0
  %t311 = getelementptr { i64, [2 x i64] }, ptr %t307, i32 0, i32 1
  store { i32 } %t310, ptr %t311
  %t312 = load { i64, [2 x i64] }, ptr %t307
  store { i64, [1 x i64] } zeroinitializer, ptr %t313
  %t314 = getelementptr { i64, [1 x i64] }, ptr %t313, i32 0, i32 0
  store i64 3, ptr %t314
  %t315 = load { i64, [1 x i64] }, ptr %t313
  %t316 = mul i64 1, 16
  %t317 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t316)
  %t318 = insertvalue { i64, ptr } undef, i64 1, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t317, 1
  store { i64, ptr } %t319, ptr %l154, !tbaa !27
  %t321 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr { i64, [1 x i64] }, ptr %t322, i64 0
  store { i64, [1 x i64] } %t315, ptr %t323
  %t326 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t327 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s2, ptr %t305, { i64, [2 x i64] } %t312, { i64, ptr } %t326)
  store %"compiler/mir:Lvalue" %t327, ptr %l155
  br label %bb38
bb38:
  %t328 = load %"compiler/mir:Lvalue", ptr %l155
  store %"compiler/mir:Lvalue" %t328, ptr %l22
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l156, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t330, ptr %l157
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l158, !tbaa !29
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l159, !tbaa !29
  %t333 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t333, ptr %l160
  %t335 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l160)
  store %"compiler/lower:pl" %t335, ptr %l162
  br label %bb39
bb39:
  %t336 = load i64, ptr %l17, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t337
  %t338 = getelementptr { i64, [1 x i64] }, ptr %t337, i32 0, i32 0
  store i64 0, ptr %t338
  %t340 = insertvalue { i64 } undef, i64 %t336, 0
  %t341 = getelementptr { i64, [1 x i64] }, ptr %t337, i32 0, i32 1
  store { i64 } %t340, ptr %t341
  %t342 = load { i64, [1 x i64] }, ptr %t337
  %t343 = load ptr, ptr %l159, !tbaa !29
  %t344 = load %"compiler/lower:pl", ptr %l162
  %t346 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s2, ptr %s2, ptr %t343, %"compiler/lower:pl" %t344, { i64, [1 x i64] } %t342)
  store %"compiler/lower:pl" %t346, ptr %l165
  br label %bb40
bb40:
  %t347 = load ptr, ptr %l158, !tbaa !29
  %t348 = load %"compiler/lower:pl", ptr %l165
  %t349 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t347, %"compiler/lower:pl" %t348)
  store %"compiler/mir:Lvalue" %t349, ptr %l166
  br label %bb41
bb41:
  %t350 = load %"compiler/mir:Lvalue", ptr %l22
  store { i64, [4 x i64] } zeroinitializer, ptr %t351
  %t352 = getelementptr { i64, [4 x i64] }, ptr %t351, i32 0, i32 0
  store i64 1, ptr %t352
  %t354 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t350, 0
  %t355 = getelementptr { i64, [4 x i64] }, ptr %t351, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t354, ptr %t355
  %t356 = load { i64, [4 x i64] }, ptr %t351
  store { i64, [15 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [15 x i64] }, ptr %t357, i32 0, i32 0
  store i64 0, ptr %t358
  %t360 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t356, 0
  %t361 = getelementptr { i64, [15 x i64] }, ptr %t357, i32 0, i32 1
  store { { i64, [4 x i64] } } %t360, ptr %t361
  %t362 = load { i64, [15 x i64] }, ptr %t357
  store { i64, [21 x i64] } zeroinitializer, ptr %t363
  %t364 = getelementptr { i64, [21 x i64] }, ptr %t363, i32 0, i32 0
  store i64 0, ptr %t364
  %t365 = load %"compiler/source:Span", ptr %l157
  %t366 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t365, 0
  %t367 = load %"compiler/mir:Lvalue", ptr %l166
  %t368 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t366, %"compiler/mir:Lvalue" %t367, 1
  %t370 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t368, { i64, [15 x i64] } %t362, 2
  %t371 = getelementptr { i64, [21 x i64] }, ptr %t363, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t370, ptr %t371
  %t372 = load { i64, [21 x i64] }, ptr %t363
  %t374 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t372, ptr %t374
  %t375 = load ptr, ptr %l156, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t375, ptr %t374)
  br label %bb42
bb42:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t377, i32 %t378)
  br label %bb43
bb43:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t381, i32 %t382)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb45:
  %t385 = load i64, ptr %l14, !tbaa !24
  %t387 = add i64 %t385, 1
  store i64 %t387, ptr %l14, !tbaa !24
  br label %bb20
bb46:
  %t389 = load i32, ptr %l6, !tbaa !23
  %t391 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t389)
  store %"compiler/mir:Lvalue" %t391, ptr %l179
  br label %bb47
bb47:
  store { i64, [4 x i64] } zeroinitializer, ptr %t392
  %t393 = getelementptr { i64, [4 x i64] }, ptr %t392, i32 0, i32 0
  store i64 1, ptr %t393
  %t394 = load %"compiler/mir:Lvalue", ptr %l179
  %t395 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t394, 0
  %t396 = getelementptr { i64, [4 x i64] }, ptr %t392, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t395, ptr %t396
  %t397 = load { i64, [4 x i64] }, ptr %t392
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t397, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrPush(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l16 = alloca %"compiler/mir:Lvalue"
  %l22 = alloca ptr
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l25 = alloca { i64, [1 x i64] }
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, [4 x i64] }
  %l35 = alloca i32
  %l43 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %t14 = alloca { i64, [15 x i64] }, align 8
  %t17 = alloca { i64, [21 x i64] }, align 8
  %t32 = alloca { i64, [1 x i64] }, align 8
  %t75 = alloca { i64, [15 x i64] }, align 8
  %t95 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t3 = load %"compiler/source:Span", ptr %l3
  %t7 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t3)
  store i32 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i32, ptr %l12, !tbaa !23
  store i32 %t8, ptr %l4, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l13, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t10, ptr %l14
  %t11 = load i32, ptr %l4, !tbaa !23
  %t13 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t11)
  store %"compiler/mir:Lvalue" %t13, ptr %l16
  br label %bb2
bb2:
  store { i64, [15 x i64] } zeroinitializer, ptr %t14
  %t15 = getelementptr { i64, [15 x i64] }, ptr %t14, i32 0, i32 0
  store i64 19, ptr %t15
  %t16 = load { i64, [15 x i64] }, ptr %t14
  store { i64, [21 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [21 x i64] }, ptr %t17, i32 0, i32 0
  store i64 0, ptr %t18
  %t19 = load %"compiler/source:Span", ptr %l14
  %t20 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t19, 0
  %t21 = load %"compiler/mir:Lvalue", ptr %l16
  %t22 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t20, %"compiler/mir:Lvalue" %t21, 1
  %t24 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t22, { i64, [15 x i64] } %t16, 2
  %t25 = getelementptr { i64, [21 x i64] }, ptr %t17, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t24, ptr %t25
  %t26 = load { i64, [21 x i64] }, ptr %t17
  %t28 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t26, ptr %t28
  %t29 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t29, ptr %t28)
  br label %bb3
bb3:
  %t31 = load i32, ptr %l4, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [1 x i64] }, ptr %t32, i32 0, i32 0
  store i64 4, ptr %t33
  %t35 = insertvalue { i32 } undef, i32 %t31, 0
  %t36 = getelementptr { i64, [1 x i64] }, ptr %t32, i32 0, i32 1
  store { i32 } %t35, ptr %t36
  %t37 = load { i64, [1 x i64] }, ptr %t32
  store { i64, [1 x i64] } %t37, ptr %l5
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l22, !tbaa !29
  store { i64, [4 x i64] } %a1, ptr %l23
  %t41 = load i32, ptr %l2, !tbaa !23
  store i32 %t41, ptr %l24, !tbaa !23
  %t42 = load { i64, [1 x i64] }, ptr %l5
  store { i64, [1 x i64] } %t42, ptr %l25
  %t43 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = add i32 %t44, 1
  %t47 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t48 = load i32, ptr %t47, !tbaa !23
  %t51 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t46, i32 %t48)
  store %"compiler/source:Span" %t51, ptr %l29
  br label %bb4
bb4:
  %t52 = load ptr, ptr %l22, !tbaa !29
  %t53 = load { i64, [4 x i64] }, ptr %l23
  %t54 = load i32, ptr %l24, !tbaa !23
  %t55 = load { i64, [1 x i64] }, ptr %l25
  %t56 = load %"compiler/source:Span", ptr %l29
  %t57 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t52, { i64, [4 x i64] } %t53, i32 %t54, { i64, [1 x i64] } %t55, %"compiler/source:Span" %t56, i1 false)
  store { i64, [4 x i64] } %t57, ptr %l30
  br label %bb5
bb5:
  %t58 = load { i64, [4 x i64] }, ptr %l30
  store { i64, [4 x i64] } %t58, ptr %l6
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t59, i32 0, i32 2
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i32, ptr %l2, !tbaa !23
  %t64 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t62, i32 %t63, i64 %t64)
  store i32 %t68, ptr %l35
  br label %bb6
bb6:
  %t69 = load i32, ptr %l35, !tbaa !23
  store i32 %t69, ptr %l7, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l7, !tbaa !23
  %t72 = load { i64, [1 x i64] }, ptr %l5
  %t73 = load { i64, [4 x i64] }, ptr %l6
  %t74 = load i32, ptr %l7, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [15 x i64] }, ptr %t75, i32 0, i32 0
  store i64 7, ptr %t76
  %t78 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } undef, { i64, [1 x i64] } %t72, 0
  %t80 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t78, { i64, [4 x i64] } %t73, 1
  %t82 = insertvalue { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t80, i32 %t74, 2
  %t83 = getelementptr { i64, [15 x i64] }, ptr %t75, i32 0, i32 1
  store { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 } %t82, ptr %t83
  %t84 = load { i64, [15 x i64] }, ptr %t75
  %t85 = load %"compiler/source:Span", ptr %l3
  %t90 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t70, i32 %t71, { i64, [15 x i64] } %t84, %"compiler/source:Span" %t85)
  store { i64, [4 x i64] } %t90, ptr %l43
  br label %bb7
bb7:
  %t91 = load { i64, [4 x i64] }, ptr %l43
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [21 x i64] }, ptr %t95, i32 0, i32 0
  store i64 12, ptr %t96
  %t98 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t93, 0
  %t100 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t98, { i64, [4 x i64] } %t91, 1
  %t101 = getelementptr { i64, [21 x i64] }, ptr %t95, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t100, ptr %t101
  %t102 = load { i64, [21 x i64] }, ptr %t95
  %t104 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t102, ptr %t104
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t92, ptr %t104)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eescWhy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca i1
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i1
  %l51 = alloca ptr
  %l55 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i1
  %l62 = alloca ptr
  %l66 = alloca i64
  %l70 = alloca i64
  %l76 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/typed:LocalUses", ptr %t3, i32 0, i32 6
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t5, i64 %t6)
  store i1 %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load i1, ptr %l14, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l3, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d5, i32 0, i32 1) })
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb6
bb6:
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/typed:LocalUses", ptr %t12, i32 0, i32 15
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t14)
  store i64 %t16, ptr %l18
  br label %bb7
bb7:
  %t17 = load i64, ptr %l18, !tbaa !24
  store i64 %t17, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb13
bb10:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l25, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb12
bb12:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l22, !tbaa !24
  br label %bb13
bb13:
  %t45 = load i64, ptr %l22, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb15, label %bb16
bb15:
  br label %bb32
bb16:
  br label %bb17
bb17:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/typed:LocalUses", ptr %t64, i32 0, i32 15
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l46
  br label %bb18
bb18:
  %t71 = load i64, ptr %l2, !tbaa !24
  %t72 = load i64, ptr %l46, !tbaa !24
  %t74 = icmp eq i64 %t72, %t71
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t78 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  store ptr %t79, ptr %l51, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/typed:LocalUses", ptr %t80, i32 0, i32 16
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t82, i64 %t83)
  store i64 %t86, ptr %l55
  br label %bb21
bb20:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb24
bb21:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/typed:LocalUses", ptr %t87, i32 0, i32 17
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t89, i64 %t90)
  store i64 %t93, ptr %l59
  br label %bb22
bb22:
  %t94 = load ptr, ptr %l51, !tbaa !29
  %t95 = load i64, ptr %l55, !tbaa !24
  %t96 = load i64, ptr %l59, !tbaa !24
  %t97 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %t94, i64 %t95, i64 %t96)
  store i1 %t97, ptr %l60
  br label %bb23
bb23:
  %t98 = load i1, ptr %l60, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l49, !tbaa !21
  br label %bb24
bb24:
  %t101 = load i1, ptr %l49, !tbaa !21
  br i1 %t101, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l3, ptr %l62, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/typed:LocalUses", ptr %t102, i32 0, i32 16
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t104, i64 %t105)
  store i64 %t108, ptr %l66
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/typed:LocalUses", ptr %t109, i32 0, i32 17
  %t112 = load i64, ptr %l9, !tbaa !24
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t111, i64 %t112)
  store i64 %t115, ptr %l70
  br label %bb28
bb28:
  %t116 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t118 = load i64, ptr %l66, !tbaa !24
  %t119 = call i64 @__olang_fmt_i64(ptr null, i64 %t118)
  %t120 = add i64 %t117, %t119
  %t121 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t122 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t123 = add i64 %t120, %t122
  %t124 = load i64, ptr %l70, !tbaa !24
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t124)
  %t126 = add i64 %t123, %t125
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t129 = add i64 %t126, %t128
  %t130 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t129)
  call void @olang_textcopy(ptr %t130, ptr %t116, i64 %t117)
  %t131 = getelementptr i8, ptr %t130, i64 %t117
  %t132 = call i64 @__olang_fmt_i64(ptr %t131, i64 %t118)
  %t133 = getelementptr i8, ptr %t131, i64 %t119
  call void @olang_textcopy(ptr %t133, ptr %t121, i64 %t122)
  %t134 = getelementptr i8, ptr %t133, i64 %t122
  %t135 = call i64 @__olang_fmt_i64(ptr %t134, i64 %t124)
  %t136 = getelementptr i8, ptr %t134, i64 %t125
  call void @olang_textcopy(ptr %t136, ptr %t127, i64 %t128)
  %t137 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t130, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l62, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t146, { i64, ptr } %t145)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t148 = load i64, ptr %l8, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l8, !tbaa !24
  br label %bb14
bb32:
  %t153 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t153, ptr %l76
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  %t154 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t154, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardAgain(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i32
  %l55 = alloca i1
  %l58 = alloca i1
  %l64 = alloca i64
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca i64
  %l70 = alloca ptr
  %l73 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i32
  %l82 = alloca ptr
  %l83 = alloca %"compiler/source:Span"
  %l85 = alloca ptr
  %l88 = alloca i64
  %l89 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 9
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t11)
  store ptr %t13, ptr %l18
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l18, !tbaa !29
  %t16 = getelementptr %"compiler/lower:level", ptr %t14, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %l2, !tbaa !23
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l21
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 15
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l24
  br label %bb6
bb6:
  %t26 = load i64, ptr %l24, !tbaa !24
  store i64 %t26, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb12
bb9:
  %t37 = load i64, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l31, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l31, !tbaa !24
  store i64 %t53, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l28, !tbaa !24
  store i64 %t54, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb14, label %bb15
bb14:
  br label %bb27
bb15:
  br label %bb16
bb16:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lower:lowering", ptr %t73, i32 0, i32 16
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t75, i64 %t76)
  store i32 %t79, ptr %l52
  br label %bb17
bb17:
  %t80 = load i32, ptr %l2, !tbaa !23
  %t81 = load i32, ptr %l52, !tbaa !23
  %t83 = icmp eq i32 %t81, %t80
  br i1 %t83, label %bb18, label %bb19
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %t85, i64 %t86)
  store i1 %t89, ptr %l58
  br label %bb20
bb19:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb21
bb20:
  %t90 = load i1, ptr %l58, !tbaa !21
  store i1 %t90, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t91 = load i1, ptr %l55, !tbaa !21
  br i1 %t91, label %bb22, label %bb23
bb22:
  %t92 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t92)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t95 = load i64, ptr %l8, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l8, !tbaa !24
  br label %bb13
bb27:
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t100, ptr %l64
  br label %bb28
bb28:
  %t101 = load i64, ptr %l64, !tbaa !24
  %t102 = icmp slt i64 %t101, 2
  br i1 %t102, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2erunOrder(ptr %v0, ptr %s0, ptr %s0, ptr %t104, ptr %l3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l68
  br label %bb32
bb32:
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l10
  store ptr %l10, ptr %l70, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/lower:lowering", ptr %t109, i32 0, i32 15
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t111)
  store i64 %t113, ptr %l73
  br label %bb33
bb33:
  %t114 = load i64, ptr %l73, !tbaa !24
  %t115 = sub i64 %t114, 1
  %t116 = load ptr, ptr %l70, !tbaa !29
  %t118 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %s0, ptr %t116, i64 %t115)
  %t119 = extractvalue { i32, i64 } %t118, 1
  %t120 = extractvalue { i32, i64 } %t118, 0
  store i32 %t120, ptr %l76
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb35, label %ok.122, !prof !99
ok.122:
  store i64 %t119, ptr %l75
  br label %bb34
bb34:
  %t123 = load i64, ptr %l75, !tbaa !24
  store i64 %t123, ptr %l69, !tbaa !24
  br label %bb37
bb35:
  br label %bb36
bb36:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb37
bb37:
  %t124 = load i64, ptr %l69, !tbaa !24
  %t127 = sub i64 %t124, 1
  store i64 %t127, ptr %l12, !tbaa !24
  br label %bb38
bb38:
  %t129 = load i64, ptr %l12, !tbaa !24
  %t131 = icmp sge i64 %t129, 0
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb39, label %bb40
bb39:
  br label %bb46
bb40:
  br label %bb41
bb41:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l82, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l83
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/lower:lowering", ptr %t137, i32 0, i32 15
  store ptr %t139, ptr %l85, !tbaa !29
  %t140 = load i64, ptr %l12, !tbaa !24
  %t143 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l10, i64 %t140)
  store i64 %t143, ptr %l88
  br label %bb42
bb42:
  %t144 = load ptr, ptr %l85, !tbaa !29
  %t145 = load i64, ptr %l88, !tbaa !24
  %t146 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v0, ptr %t144, i64 %t145)
  store ptr %t146, ptr %l89
  br label %bb43
bb43:
  %t147 = load ptr, ptr %l82, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l83
  %t149 = load ptr, ptr %l89, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardHolder(ptr %v0, ptr %v0, ptr %t147, %"compiler/source:Span" %t148, ptr %t149)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t150 = load i64, ptr %l12, !tbaa !24
  %t152 = sub i64 %t150, 1
  store i64 %t152, ptr %l12, !tbaa !24
  br label %bb38
bb46:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardBody(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/lower:pl"
  %l4 = alloca %"compiler/lower:pl"
  %l5 = alloca %"compiler/lower:pl"
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca %"compiler/lower:pl"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"compiler/lower:pl"
  %l14 = alloca %"compiler/lower:pl"
  %l16 = alloca %"compiler/lower:pl"
  %l18 = alloca %"compiler/lower:pl"
  %l19 = alloca ptr
  %l23 = alloca %"compiler/lower:pl"
  %l25 = alloca %"compiler/lower:pl"
  %l28 = alloca i32
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca %"compiler/lower:pl"
  %l36 = alloca %"compiler/lower:pl"
  %l37 = alloca %"compiler/mir:Lvalue"
  %l44 = alloca ptr
  %l45 = alloca %"compiler/lower:pl"
  %l49 = alloca i32
  %l50 = alloca { i64, [1 x i64] }
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t10 = alloca { i64, [1 x i64] }, align 8
  %t19 = alloca { i64, [1 x i64] }, align 8
  %t30 = alloca { i64, [1 x i64] }, align 8
  %t39 = alloca { i64, [1 x i64] }, align 8
  %t67 = alloca { i64, [4 x i64] }, align 8
  %t75 = alloca { i64, [8 x i64] }, align 8
  %t101 = alloca { i64, [1 x i64] }, align 8
  %t122 = alloca { i64, [4 x i64] }, align 8
  %t129 = alloca { i64, [15 x i64] }, align 8
  %t135 = alloca { i64, [21 x i64] }, align 8
  %t151 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %s0, ptr %t1, i32 0)
  store %"compiler/lower:pl" %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load %"compiler/lower:pl", ptr %l9
  store %"compiler/lower:pl" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l10, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l11, !tbaa !29
  %t7 = load %"compiler/lower:pl", ptr %l3
  store %"compiler/lower:pl" %t7, ptr %l12
  %t9 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l12)
  store %"compiler/lower:pl" %t9, ptr %l14
  br label %bb2
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [1 x i64] }, ptr %t10, i32 0, i32 0
  store i64 0, ptr %t11
  %t12 = insertvalue { i64 } undef, i64 0, 0
  %t13 = getelementptr { i64, [1 x i64] }, ptr %t10, i32 0, i32 1
  store { i64 } %t12, ptr %t13
  %t14 = load { i64, [1 x i64] }, ptr %t10
  %t15 = load ptr, ptr %l11, !tbaa !29
  %t16 = load %"compiler/lower:pl", ptr %l14
  %t18 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t15, %"compiler/lower:pl" %t16, { i64, [1 x i64] } %t14)
  store %"compiler/lower:pl" %t18, ptr %l16
  br label %bb3
bb3:
  store { i64, [1 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [1 x i64] }, ptr %t19, i32 0, i32 0
  store i64 3, ptr %t20
  %t21 = load { i64, [1 x i64] }, ptr %t19
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t23 = load %"compiler/lower:pl", ptr %l16
  %t25 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t22, %"compiler/lower:pl" %t23, { i64, [1 x i64] } %t21)
  store %"compiler/lower:pl" %t25, ptr %l18
  br label %bb4
bb4:
  %t26 = load %"compiler/lower:pl", ptr %l18
  store %"compiler/lower:pl" %t26, ptr %l4
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/lower:pl", ptr %l3
  store { i64, [1 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [1 x i64] }, ptr %t30, i32 0, i32 0
  store i64 0, ptr %t31
  %t32 = insertvalue { i64 } undef, i64 1, 0
  %t33 = getelementptr { i64, [1 x i64] }, ptr %t30, i32 0, i32 1
  store { i64 } %t32, ptr %t33
  %t34 = load { i64, [1 x i64] }, ptr %t30
  %t38 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t28, %"compiler/lower:pl" %t29, { i64, [1 x i64] } %t34)
  store %"compiler/lower:pl" %t38, ptr %l23
  br label %bb5
bb5:
  store { i64, [1 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [1 x i64] }, ptr %t39, i32 0, i32 0
  store i64 3, ptr %t40
  %t41 = load { i64, [1 x i64] }, ptr %t39
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = load %"compiler/lower:pl", ptr %l23
  %t45 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t42, %"compiler/lower:pl" %t43, { i64, [1 x i64] } %t41)
  store %"compiler/lower:pl" %t45, ptr %l25
  br label %bb6
bb6:
  %t46 = load %"compiler/lower:pl", ptr %l25
  store %"compiler/lower:pl" %t46, ptr %l5
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 3
  %t51 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t49)
  store i32 %t51, ptr %l28
  br label %bb7
bb7:
  %t52 = load i32, ptr %l28, !tbaa !23
  store i32 %t52, ptr %l6, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 3
  %t57 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t55)
  store i32 %t57, ptr %l31
  br label %bb8
bb8:
  %t58 = load i32, ptr %l31, !tbaa !23
  store i32 %t58, ptr %l7, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l32, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load %"compiler/lower:pl", ptr %l4
  store %"compiler/lower:pl" %t61, ptr %l34
  %t63 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l34)
  store %"compiler/lower:pl" %t63, ptr %l36
  br label %bb9
bb9:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = load %"compiler/lower:pl", ptr %l36
  %t66 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t64, %"compiler/lower:pl" %t65)
  store %"compiler/mir:Lvalue" %t66, ptr %l37
  br label %bb10
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 0
  store i64 1, ptr %t68
  %t69 = load %"compiler/mir:Lvalue", ptr %l37
  %t70 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t69, 0
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t70, ptr %t71
  %t72 = load { i64, [4 x i64] }, ptr %t67
  %t73 = load i32, ptr %l6, !tbaa !23
  %t74 = load i32, ptr %l7, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [8 x i64] }, ptr %t75, i32 0, i32 0
  store i64 2, ptr %t76
  %t78 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t72, 0
  %t80 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t78, i32 %t73, 1
  %t82 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t80, i32 %t74, 2
  %t83 = getelementptr { i64, [8 x i64] }, ptr %t75, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t82, ptr %t83
  %t84 = load { i64, [8 x i64] }, ptr %t75
  %t85 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t85, { i64, [8 x i64] } %t84)
  br label %bb11
bb11:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t87, i32 %t88)
  br label %bb12
bb12:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l44, !tbaa !29
  %t92 = load %"compiler/lower:pl", ptr %l5
  store %"compiler/lower:pl" %t92, ptr %l45
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 2
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t100 = call i32 @compiler_2fmir_2eGuardOf(ptr %v0, ptr %t96, i32 %a1)
  store i32 %t100, ptr %l49
  br label %bb13
bb13:
  store { i64, [1 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [1 x i64] }, ptr %t101, i32 0, i32 0
  store i64 1, ptr %t102
  %t103 = insertvalue { i64 } undef, i64 0, 0
  %t104 = getelementptr { i64, [1 x i64] }, ptr %t101, i32 0, i32 1
  store { i64 } %t103, ptr %t104
  %t105 = load { i64, [1 x i64] }, ptr %t101
  store { i64, [1 x i64] } %t105, ptr %l50
  %t106 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t106, ptr %l51
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l52
  br label %bb14
bb14:
  %t108 = load ptr, ptr %l44, !tbaa !29
  %t109 = load %"compiler/lower:pl", ptr %l45
  %t110 = load i32, ptr %l49, !tbaa !23
  %t111 = load { i64, [1 x i64] }, ptr %l50
  %t112 = load %"compiler/source:Span", ptr %l51
  %t113 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %s0, ptr %s0, ptr %t108, %"compiler/lower:pl" %t109, i32 %t110, { i64, [1 x i64] } %t111, %"compiler/source:Span" %t112, i1 false, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113)
  br label %bb15
bb15:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l53, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t115, ptr %l54
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/lower:pl", ptr %l4
  %t120 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t116, %"compiler/lower:pl" %t117)
  store %"compiler/mir:Lvalue" %t120, ptr %l57
  br label %bb16
bb16:
  %t121 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t122, i32 0, i32 0
  store i64 2, ptr %t123
  %t125 = insertvalue { i32, i64 } undef, i32 %t121, 0
  %t126 = insertvalue { i32, i64 } %t125, i64 0, 1
  %t127 = getelementptr { i64, [4 x i64] }, ptr %t122, i32 0, i32 1
  store { i32, i64 } %t126, ptr %t127
  %t128 = load { i64, [4 x i64] }, ptr %t122
  store { i64, [15 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [15 x i64] }, ptr %t129, i32 0, i32 0
  store i64 0, ptr %t130
  %t132 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t128, 0
  %t133 = getelementptr { i64, [15 x i64] }, ptr %t129, i32 0, i32 1
  store { { i64, [4 x i64] } } %t132, ptr %t133
  %t134 = load { i64, [15 x i64] }, ptr %t129
  store { i64, [21 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [21 x i64] }, ptr %t135, i32 0, i32 0
  store i64 0, ptr %t136
  %t137 = load %"compiler/source:Span", ptr %l54
  %t138 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t137, 0
  %t139 = load %"compiler/mir:Lvalue", ptr %l57
  %t140 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t138, %"compiler/mir:Lvalue" %t139, 1
  %t142 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t140, { i64, [15 x i64] } %t134, 2
  %t143 = getelementptr { i64, [21 x i64] }, ptr %t135, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t142, ptr %t143
  %t144 = load { i64, [21 x i64] }, ptr %t135
  %t146 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t144, ptr %t146
  %t147 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t147, ptr %t146)
  br label %bb17
bb17:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l7, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [8 x i64] }, ptr %t151, i32 0, i32 0
  store i64 1, ptr %t152
  %t154 = insertvalue { i32 } undef, i32 %t150, 0
  %t155 = getelementptr { i64, [8 x i64] }, ptr %t151, i32 0, i32 1
  store { i32 } %t154, ptr %t155
  %t156 = load { i64, [8 x i64] }, ptr %t151
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t149, { i64, [8 x i64] } %t156)
  br label %bb18
bb18:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t159, i32 %t160)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l65 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l75 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t24 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldLocal(ptr %v0, ptr %v1, ptr %t16, ptr %t17, i64 %t20)
  store i1 %t24, ptr %l21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l21, !tbaa !21
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb47
bb7:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t27 = load ptr, ptr %l22, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t37, i32 0, i32 2
  %t39 = load i64, ptr %t38
  store i64 %t39, ptr %l4, !tbaa !24
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t43, i32 0, i32 3
  %t45 = load i32, ptr %t44
  store i32 %t45, ptr %l5, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i32, ptr %l5, !tbaa !23
  %t53 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eimmutableGlobal(ptr %v0, ptr %t47, i64 %t48, i32 %t49)
  store i1 %t53, ptr %l33
  br label %bb13
bb13:
  %t54 = load i1, ptr %l33, !tbaa !21
  store i1 %t54, ptr %l10, !tbaa !21
  br label %bb47
bb14:
  %t55 = load ptr, ptr %l2, !tbaa !29
  store ptr %t55, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t56 = load ptr, ptr %l34, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t59 = load ptr, ptr %l34, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 3
  store i1 %t62, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t63 = load i1, ptr %l35, !tbaa !21
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l6, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t76 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t70, ptr %t71, ptr %t72)
  store i1 %t76, ptr %l43
  br label %bb20
bb20:
  %t77 = load i1, ptr %l43, !tbaa !21
  store i1 %t77, ptr %l10, !tbaa !21
  br label %bb47
bb21:
  %t78 = load ptr, ptr %l2, !tbaa !29
  store ptr %t78, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t79 = load ptr, ptr %l44, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l44, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 4
  store i1 %t85, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t86 = load i1, ptr %l45, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l7, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Elem", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t102 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t93, ptr %t94, ptr %t98)
  store i1 %t102, ptr %l54
  br label %bb27
bb27:
  %t103 = load i1, ptr %l54, !tbaa !21
  store i1 %t103, ptr %l10, !tbaa !21
  br label %bb47
bb28:
  %t104 = load ptr, ptr %l2, !tbaa !29
  store ptr %t104, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t105 = load ptr, ptr %l55, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t108 = load ptr, ptr %l55, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 8}
  %t111 = icmp eq i64 %t109, 5
  store i1 %t111, ptr %l56, !tbaa !21
  br label %bb30
bb30:
  %t112 = load i1, ptr %l56, !tbaa !21
  br i1 %t112, label %bb31, label %bb32
bb31:
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t115, i32 0, i32 2
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l8, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t121 = load ptr, ptr %l8, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Payload", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t128 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t119, ptr %t120, ptr %t124)
  store i1 %t128, ptr %l65
  br label %bb34
bb34:
  %t129 = load i1, ptr %l65, !tbaa !21
  store i1 %t129, ptr %l10, !tbaa !21
  br label %bb47
bb35:
  %t130 = load ptr, ptr %l2, !tbaa !29
  store ptr %t130, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t131 = load ptr, ptr %l66, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb36, label %bb37
bb36:
  %t134 = load ptr, ptr %l66, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 8}
  %t137 = icmp eq i64 %t135, 2
  store i1 %t137, ptr %l67, !tbaa !21
  br label %bb37
bb37:
  %t138 = load i1, ptr %l67, !tbaa !21
  br i1 %t138, label %bb38, label %bb39
bb38:
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t141, i32 0, i32 2
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l9, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t147 = load ptr, ptr %l9, !tbaa !29
  %t151 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %t145, ptr %t146, ptr %t147)
  store i1 %t151, ptr %l75
  br label %bb41
bb41:
  %t152 = load i1, ptr %l75, !tbaa !21
  store i1 %t152, ptr %l10, !tbaa !21
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_bfe20f6aa057d6f5_318d2eb3f782ecf9)
  unreachable
bb47:
  %t153 = load i1, ptr %l10, !tbaa !21
  store i1 %t153, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdResult(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Call"
  %l2 = alloca i64
  %l3 = alloca %"compiler/mir:Local"
  %l7 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca i64
  %l27 = alloca %"compiler/mir:Local"
  %l30 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l57 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca ptr
  %l67 = alloca i32
  %l70 = alloca %"compiler/source:Span"
  %l73 = alloca %"compiler/mir:Lvalue"
  %l77 = alloca { i64, [21 x i64] }
  %s0 = alloca %olang.scope
  %t151 = alloca { i64, [4 x i64] }, align 8
  %t157 = alloca { i64, [15 x i64] }, align 8
  %t163 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/mir:Call" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t2 = load %"compiler/mir:Lvalue", ptr %t1
  %t4 = call i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %t2)
  store i64 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i64, ptr %l7, !tbaa !24
  store i64 %t5, ptr %l2, !tbaa !24
  %t6 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 4
  %t7 = load i1, ptr %t6, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t11 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t12 = getelementptr %"compiler/mir:Lvalue", ptr %t11, i32 0, i32 1
  %t13 = getelementptr %"compiler/mir:Range", ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = icmp ne i32 %t14, 0
  store i1 %t16, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp slt i64 %t19, 0
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb12
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t27)
  store ptr %t29, ptr %l19
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t32 = getelementptr %"compiler/mir:GenInfo", ptr %t30, i32 0, i32 0
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l22
  br label %bb11
bb11:
  %t35 = load i64, ptr %l22, !tbaa !24
  %t36 = icmp eq i64 %t35, 0
  store i1 %t36, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l16, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 3
  %t42 = getelementptr %"compiler/mir:Fn", ptr %t41, i32 0, i32 7
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t42, i64 %t43)
  store %"compiler/mir:Local" %t46, ptr %l27
  br label %bb16
bb16:
  %t47 = load %"compiler/mir:Local", ptr %l27
  store %"compiler/mir:Local" %t47, ptr %l3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l2, !tbaa !24
  %t52 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedLocal(ptr %v0, ptr %t48, i64 %t49)
  store i1 %t52, ptr %l30
  br label %bb17
bb17:
  %t53 = load i1, ptr %l30, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = getelementptr %"compiler/mir:Local", ptr %l3, i32 0, i32 3
  %t57 = load i32, ptr %t56, !range !{i32 0, i32 4}
  %t59 = trunc i64 0 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb29
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 2
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l37, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/lower:lowering", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = getelementptr %"compiler/mir:Local", ptr %l3, i32 0, i32 2
  %t71 = load i32, ptr %t70, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t69, i32 %t71)
  store i32 %t74, ptr %l41
  br label %bb22
bb21:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb24
bb22:
  %t75 = load ptr, ptr %l37, !tbaa !29
  %t76 = load i32, ptr %l41, !tbaa !23
  %t77 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t75, i32 %t76)
  store i1 %t77, ptr %l42
  br label %bb23
bb23:
  %t78 = load i1, ptr %l42, !tbaa !21
  %t79 = xor i1 %t78, true
  store i1 %t79, ptr %l35, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l35, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/mir:Local", ptr %l3, i32 0, i32 2
  %t84 = load i32, ptr %t83, !tbaa !23
  %t87 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %t82, i32 %t84)
  store i1 %t87, ptr %l47
  br label %bb27
bb26:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb28
bb27:
  %t88 = load i1, ptr %l47, !tbaa !21
  store i1 %t88, ptr %l44, !tbaa !21
  br label %bb28
bb28:
  %t89 = load i1, ptr %l44, !tbaa !21
  %t90 = xor i1 %t89, true
  store i1 %t90, ptr %l32, !tbaa !21
  br label %bb29
bb29:
  %t92 = load i1, ptr %l32, !tbaa !21
  br i1 %t92, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t93 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 5
  %t94 = load i32, ptr %t93, !tbaa !23
  %t96 = load i64, ptr %l2, !tbaa !24
  %t98 = trunc i64 %t96 to i32
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/lower:lowering", ptr %t101, i32 0, i32 4
  store i32 %t94, ptr %t105, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lower:lowering", ptr %t106, i32 0, i32 5
  store i32 %t98, ptr %t110, !tbaa !23
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l57, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/mir:Local", ptr %l3, i32 0, i32 2
  %t114 = load i32, ptr %t113, !tbaa !23
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/lower:lowering", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Body", ptr %t118, i32 0, i32 4
  %t121 = load %"compiler/source:Span", ptr %t120
  %t125 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t112, i32 %t114, %"compiler/source:Span" %t121)
  store i32 %t125, ptr %l63
  br label %bb33
bb33:
  %t126 = load i32, ptr %l63, !tbaa !23
  %t127 = load ptr, ptr %l57, !tbaa !29
  %t128 = getelementptr %"compiler/lower:lowering", ptr %t127, i32 0, i32 6
  store i32 %t126, ptr %t128, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/lower:lowering", ptr %t129, i32 0, i32 3
  store ptr %t131, ptr %l65, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/lower:lowering", ptr %t132, i32 0, i32 9
  %t135 = load i32, ptr %t134, !tbaa !23
  store i32 %t135, ptr %l67, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lower:lowering", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Body", ptr %t139, i32 0, i32 4
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l70
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/lower:lowering", ptr %t143, i32 0, i32 6
  %t146 = load i32, ptr %t145, !tbaa !23
  %t148 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t146)
  store %"compiler/mir:Lvalue" %t148, ptr %l73
  br label %bb34
bb34:
  %t149 = getelementptr %"compiler/mir:Call", ptr %l1, i32 0, i32 3
  %t150 = load %"compiler/mir:Lvalue", ptr %t149
  store { i64, [4 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t151, i32 0, i32 0
  store i64 1, ptr %t152
  %t154 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t150, 0
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t151, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t154, ptr %t155
  %t156 = load { i64, [4 x i64] }, ptr %t151
  store { i64, [15 x i64] } zeroinitializer, ptr %t157
  %t158 = getelementptr { i64, [15 x i64] }, ptr %t157, i32 0, i32 0
  store i64 0, ptr %t158
  %t160 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t156, 0
  %t161 = getelementptr { i64, [15 x i64] }, ptr %t157, i32 0, i32 1
  store { { i64, [4 x i64] } } %t160, ptr %t161
  %t162 = load { i64, [15 x i64] }, ptr %t157
  store { i64, [21 x i64] } zeroinitializer, ptr %t163
  %t164 = getelementptr { i64, [21 x i64] }, ptr %t163, i32 0, i32 0
  store i64 0, ptr %t164
  %t165 = load %"compiler/source:Span", ptr %l70
  %t166 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t165, 0
  %t167 = load %"compiler/mir:Lvalue", ptr %l73
  %t168 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t166, %"compiler/mir:Lvalue" %t167, 1
  %t170 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t168, { i64, [15 x i64] } %t162, 2
  %t171 = getelementptr { i64, [21 x i64] }, ptr %t163, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t170, ptr %t171
  %t172 = load { i64, [21 x i64] }, ptr %t163
  store { i64, [21 x i64] } %t172, ptr %l77
  %t173 = load ptr, ptr %l65, !tbaa !29
  %t174 = load i32, ptr %l67, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %s0, ptr %t173, i32 %t174, ptr %l77)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l9 = alloca i64
  %l17 = alloca %"compiler/lower:level"
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l33 = alloca %"compiler/lower:level"
  %rv = alloca { i64, [1 x i64] }
  %t8 = alloca { i64, [1 x i64] }, align 8
  %t68 = alloca { i64, [1 x i64] }, align 8
  %t79 = alloca { i64, [1 x i64] }, align 8
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
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 12
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l9
  br label %bb4
bb4:
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = sub i64 %t17, 1
  store i64 %t18, ptr %l1, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l1, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %bb24
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 12
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t28, i64 %t29)
  store %"compiler/lower:level" %t32, ptr %l17
  br label %bb9
bb9:
  %t33 = getelementptr %"compiler/lower:level", ptr %l17, i32 0, i32 2
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 7}
  store i32 %t34, ptr %l2
  %t36 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t38 = trunc i64 1 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t43 = trunc i64 2 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l21, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb15
bb14:
  %t47 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t49 = trunc i64 3 to i32
  %t50 = icmp eq i32 %t47, %t49
  store i1 %t50, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l24, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb17:
  %t53 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t55 = trunc i64 0 to i32
  %t56 = icmp eq i32 %t53, %t55
  store i1 %t56, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l27, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t59, i32 0, i32 12
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t61, i64 %t62)
  store %"compiler/lower:level" %t65, ptr %l33
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t66 = getelementptr %"compiler/lower:level", ptr %l33, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [1 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t71 = insertvalue { i32 } undef, i32 %t67, 0
  %t72 = getelementptr { i64, [1 x i64] }, ptr %t68, i32 0, i32 1
  store { i32 } %t71, ptr %t72
  %t73 = load { i64, [1 x i64] }, ptr %t68
  store { i64, [1 x i64] } %t73, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t75 = load i64, ptr %l1, !tbaa !24
  %t77 = sub i64 %t75, 1
  store i64 %t77, ptr %l1, !tbaa !24
  br label %bb5
bb24:
  store { i64, [1 x i64] } zeroinitializer, ptr %t79
  %t80 = getelementptr { i64, [1 x i64] }, ptr %t79, i32 0, i32 0
  store i64 2, ptr %t80
  %t81 = load { i64, [1 x i64] }, ptr %t79
  store { i64, [1 x i64] } %t81, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elendsKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
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
  %l44 = alloca ptr
  %l48 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t3)
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
  br label %bb23
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/typed:LocalUses", ptr %t53, i32 0, i32 12
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l39
  br label %bb12
bb12:
  %t61 = load i64, ptr %l39, !tbaa !24
  %t63 = icmp eq i64 %t61, %a2
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t67 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l44, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/typed:LocalUses", ptr %t69, i32 0, i32 13
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t71, i64 %t72)
  store i64 %t75, ptr %l48
  br label %bb15
bb14:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb18
bb15:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/typed:LocalUses", ptr %t76, i32 0, i32 14
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t78, i64 %t79)
  store i64 %t82, ptr %l52
  br label %bb16
bb16:
  %t83 = load ptr, ptr %l44, !tbaa !29
  %t84 = load i64, ptr %l48, !tbaa !24
  %t85 = load i64, ptr %l52, !tbaa !24
  %t86 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %t83, i64 %t84, i64 %t85)
  store i1 %t86, ptr %l53
  br label %bb17
bb17:
  %t87 = load i1, ptr %l53, !tbaa !21
  %t88 = xor i1 %t87, true
  store i1 %t88, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t90 = load i1, ptr %l42, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l7, !tbaa !24
  br label %bb8
bb23:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l69 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l91 = alloca ptr
  %l92 = alloca i1
  %l109 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l132 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca i1
  %l161 = alloca i1
  %l167 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t6 = load ptr, ptr %l25, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l25, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 6
  store i1 %t12, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l26, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t24 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallRoots(ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l33
  br label %bb9
bb9:
  %t25 = load i64, ptr %l33, !tbaa !24
  %t26 = icmp sgt i64 %t25, 0
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 40
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Call", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = sext i32 %t34 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t30, i64 %t36, i1 true)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb94
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  store ptr %t39, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t40 = load ptr, ptr %l40, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l40, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 11
  store i1 %t46, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l41, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Cond", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t54, ptr %t55, ptr %t59)
  br label %bb20
bb20:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Cond", ptr %t65, i32 0, i32 2
  %t68 = load ptr, ptr %t67, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t63, ptr %t64, ptr %t68)
  br label %bb21
bb21:
  br label %bb94
bb22:
  %t73 = load ptr, ptr %l2, !tbaa !29
  store ptr %t73, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t74 = load ptr, ptr %l55, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t77 = load ptr, ptr %l55, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 18}
  %t80 = icmp eq i64 %t78, 13
  store i1 %t80, ptr %l56, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l56, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = getelementptr { i64, [5 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t84, i32 0, i32 2
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb42
bb27:
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Match", ptr %t88, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  store i64 %t95, ptr %l8, !tbaa !24
  br label %bb28
bb28:
  %t97 = load i64, ptr %l7, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t105 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t105, ptr %l69, !tbaa !27
  %t106 = load i64, ptr %l7, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr ptr, ptr %t109, i64 %t106
  %t111 = load ptr, ptr %t110, !tbaa !39
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Arm", ptr %t111, i32 0, i32 4
  %t118 = load ptr, ptr %t117, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t113, ptr %t114, ptr %t118)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l7, !tbaa !24
  br label %bb28
bb34:
  %t126 = load ptr, ptr %l5, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Match", ptr %t126, i32 0, i32 2
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = icmp eq ptr %t129, null
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb35, label %bb36
bb35:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l82, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  store ptr %t136, ptr %l83, !tbaa !29
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Match", ptr %t137, i32 0, i32 2
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb37, label %bb38
bb36:
  br label %bb41
bb37:
  call void @__olang_check_failed(ptr @olang_loc_2fdfc612472fa755_10281278e8bf3051)
  unreachable
bb38:
  br label %bb39
bb39:
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Match", ptr %t144, i32 0, i32 2
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Arm", ptr %t147, i32 0, i32 4
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t152 = load ptr, ptr %l82, !tbaa !29
  %t153 = load ptr, ptr %l83, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t152, ptr %t153, ptr %t151)
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb94
bb42:
  %t155 = load ptr, ptr %l2, !tbaa !29
  store ptr %t155, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t156 = load ptr, ptr %l91, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb43, label %bb44
bb43:
  %t159 = load ptr, ptr %l91, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 18}
  %t162 = icmp eq i64 %t160, 14
  store i1 %t162, ptr %l92, !tbaa !21
  br label %bb44
bb44:
  %t163 = load i1, ptr %l92, !tbaa !21
  br i1 %t163, label %bb45, label %bb46
bb45:
  %t164 = load ptr, ptr %l2, !tbaa !29
  %t166 = getelementptr { i64, [5 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 2
  %t168 = load ptr, ptr %t167
  store ptr %t168, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb62
bb47:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t172 = load ptr, ptr %l10, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Try", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t170, ptr %t171, ptr %t175)
  br label %bb48
bb48:
  %t179 = load ptr, ptr %l10, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Try", ptr %t179, i32 0, i32 1
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t184 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 0
  store i64 %t186, ptr %l13, !tbaa !24
  br label %bb49
bb49:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t189 = load i64, ptr %l13, !tbaa !24
  %t192 = icmp slt i64 %t188, %t189
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb50, label %bb51
bb50:
  br label %bb61
bb51:
  br label %bb52
bb52:
  %t196 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t196, ptr %l109, !tbaa !27
  %t197 = load i64, ptr %l12, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr ptr, ptr %t200, i64 %t197
  %t202 = load ptr, ptr %t201, !tbaa !39
  %t206 = getelementptr %"compiler/typed:Clause", ptr %t202, i32 0, i32 4
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  store i64 %t211, ptr %l17, !tbaa !24
  br label %bb53
bb53:
  %t213 = load i64, ptr %l16, !tbaa !24
  %t214 = load i64, ptr %l17, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t221 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t221, ptr %l120, !tbaa !27
  %t222 = load i64, ptr %l16, !tbaa !24
  %t224 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr ptr, ptr %t225, i64 %t222
  %t227 = load ptr, ptr %t226, !tbaa !39
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t229, ptr %t230, ptr %t227)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t236 = load i64, ptr %l16, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l16, !tbaa !24
  br label %bb53
bb59:
  br label %bb60
bb60:
  %t240 = load i64, ptr %l12, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l12, !tbaa !24
  br label %bb49
bb61:
  br label %bb94
bb62:
  %t244 = load ptr, ptr %l2, !tbaa !29
  store ptr %t244, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t245 = load ptr, ptr %l131, !tbaa !29
  %t246 = icmp ne ptr %t245, null
  br i1 %t246, label %bb63, label %bb64
bb63:
  %t248 = load ptr, ptr %l131, !tbaa !29
  %t249 = load i64, ptr %t248, !range !{i64 0, i64 18}
  %t251 = icmp eq i64 %t249, 12
  store i1 %t251, ptr %l132, !tbaa !21
  br label %bb64
bb64:
  %t252 = load i1, ptr %l132, !tbaa !21
  br i1 %t252, label %bb65, label %bb66
bb65:
  %t253 = load ptr, ptr %l2, !tbaa !29
  %t255 = getelementptr { i64, [5 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t255, i32 0, i32 2
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l19, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l1, !tbaa !29
  %t261 = load ptr, ptr %l19, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Seq", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t259, ptr %t260, ptr %t264)
  br label %bb68
bb68:
  br label %bb94
bb69:
  %t268 = load ptr, ptr %l2, !tbaa !29
  store ptr %t268, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t269 = load ptr, ptr %l141, !tbaa !29
  %t270 = icmp ne ptr %t269, null
  br i1 %t270, label %bb70, label %bb71
bb70:
  %t272 = load ptr, ptr %l141, !tbaa !29
  %t273 = load i64, ptr %t272, !range !{i64 0, i64 18}
  %t275 = icmp eq i64 %t273, 17
  store i1 %t275, ptr %l142, !tbaa !21
  br label %bb71
bb71:
  %t276 = load i1, ptr %l142, !tbaa !21
  br i1 %t276, label %bb72, label %bb73
bb72:
  %t277 = load ptr, ptr %l2, !tbaa !29
  %t279 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 1
  %t280 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t279, i32 0, i32 2
  %t281 = load ptr, ptr %t280
  store ptr %t281, ptr %l20, !tbaa !29
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t285 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t283, ptr %t284, ptr %t285)
  br label %bb75
bb75:
  br label %bb94
bb76:
  %t290 = load ptr, ptr %l2, !tbaa !29
  store ptr %t290, ptr %l151, !tbaa !29
  store i1 false, ptr %l152, !tbaa !21
  %t291 = load ptr, ptr %l151, !tbaa !29
  %t292 = icmp ne ptr %t291, null
  br i1 %t292, label %bb77, label %bb78
bb77:
  %t294 = load ptr, ptr %l151, !tbaa !29
  %t295 = load i64, ptr %t294, !range !{i64 0, i64 18}
  %t297 = icmp eq i64 %t295, 9
  store i1 %t297, ptr %l152, !tbaa !21
  br label %bb78
bb78:
  %t298 = load i1, ptr %l152, !tbaa !21
  br i1 %t298, label %bb79, label %bb80
bb79:
  %t299 = load ptr, ptr %l2, !tbaa !29
  %t301 = getelementptr { i64, [5 x i64] }, ptr %t299, i32 0, i32 1
  %t302 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t301, i32 0, i32 2
  %t303 = load i32, ptr %t302, !range !{i32 0, i32 52}
  store i32 %t303, ptr %l21
  %t305 = load ptr, ptr %l2, !tbaa !29
  %t307 = getelementptr { i64, [5 x i64] }, ptr %t305, i32 0, i32 1
  %t308 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t307, i32 0, i32 4
  %t309 = load { i64, ptr }, ptr %t308
  store { i64, ptr } %t309, ptr %l22, !tbaa !27
  br label %bb81
bb80:
  br label %bb89
bb81:
  %t311 = load i32, ptr %l21, !range !{i32 0, i32 52}
  %t313 = trunc i64 20 to i32
  %t314 = icmp eq i32 %t311, %t313
  br i1 %t314, label %bb82, label %bb83
bb82:
  %t316 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t320 = icmp eq i64 %t318, 1
  store i1 %t320, ptr %l161, !tbaa !21
  br label %bb84
bb83:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb84
bb84:
  %t322 = load i1, ptr %l161, !tbaa !21
  br i1 %t322, label %bb85, label %bb86
bb85:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load ptr, ptr %l1, !tbaa !29
  %t325 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t325, ptr %l167, !tbaa !27
  %t326 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr ptr, ptr %t327, i64 0
  %t329 = load ptr, ptr %t328, !tbaa !39
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t323, ptr %t324, ptr %t329)
  br label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb88
bb88:
  br label %bb94
bb89:
  br i1 true, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_eccf1a297c9f6dbd_b8c50aa3d74140a9)
  unreachable
bb94:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eneverNullPath(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %lp13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i1
  %l27 = alloca i1
  %l34 = alloca { i64, ptr }
  %l40 = alloca i64
  %l43 = alloca i64
  %l65 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l71 = alloca i1
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca i32
  %l80 = alloca [1 x i64]
  %l81 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca i1
  %l86 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i32
  %l97 = alloca { i64, ptr }
  %l103 = alloca i64
  %l113 = alloca i64
  %l116 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %l2, !tbaa !24
  %t8 = icmp sgt i64 %t6, 8
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l27
  br label %bb3
bb3:
  %t15 = load i1, ptr %l27, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l24, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l24, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = icmp sge i64 0, 0
  br i1 %t19, label %bb7, label %bb8
bb6:
  br label %bb11
bb7:
  %t21 = icmp sle i64 0, 1152921504606846975
  br i1 %t21, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f84e287748fb5e0c_a7fab5dda1d7c518)
  unreachable
bb9:
  %t23 = mul i64 0, 8
  %t24 = insertvalue { i64, ptr } undef, i64 0, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f84e287748fb5e0c_a7fab5dda1d7c518)
  unreachable
bb11:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s0, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l34
  br label %bb12
bb12:
  %t32 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb18
bb15:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l43, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb17
bb17:
  %t63 = load i64, ptr %l43, !tbaa !24
  store i64 %t63, ptr %l40, !tbaa !24
  br label %bb18
bb18:
  %t64 = load i64, ptr %l40, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb66
bb21:
  br label %bb22
bb22:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  store i32 %t88, ptr %l11, !tbaa !23
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t91 = load i32, ptr %l11, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l65
  br label %bb23
bb23:
  %t95 = load i1, ptr %l65, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t97 = load i32, ptr %l11, !tbaa !23
  %t100 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t96, i32 %t97)
  store i1 %t100, ptr %l69
  br label %bb26
bb25:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb27
bb26:
  %t101 = load i1, ptr %l69, !tbaa !21
  %t102 = xor i1 %t101, true
  store i1 %t102, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t104 = load i1, ptr %l66, !tbaa !21
  br i1 %t104, label %bb28, label %bb29
bb28:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l72, !tbaa !29
  %t106 = load ptr, ptr %l3, !tbaa !29
  %t107 = load i32, ptr %l11, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l75
  br label %bb30
bb29:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb32
bb30:
  %t111 = load ptr, ptr %l72, !tbaa !29
  %t112 = load i32, ptr %l75, !tbaa !23
  %t113 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t113, ptr %l76
  br label %bb31
bb31:
  %t114 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t115 = load i32, ptr %l76, !tbaa !23
  %t117 = icmp eq i32 %t115, %t114
  store i1 %t117, ptr %l71, !tbaa !21
  br label %bb32
bb32:
  %t119 = load i1, ptr %l71, !tbaa !21
  br i1 %t119, label %bb33, label %bb34
bb33:
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = insertvalue [1 x i64] undef, i64 %t120, 0
  store [1 x i64] %t122, ptr %l80
  %t123 = mul i64 1, 8
  %t124 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t123)
  %t125 = insertvalue { i64, ptr } undef, i64 1, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  store { i64, ptr } %t126, ptr %l81, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = mul i64 1, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t128, ptr %l80, i64 %t129, i1 false)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t130, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t131 = load ptr, ptr %l3, !tbaa !29
  %t132 = load i32, ptr %l11, !tbaa !23
  %t135 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t131, i32 %t132)
  store i1 %t135, ptr %l84
  br label %bb36
bb36:
  %t136 = load i1, ptr %l84, !tbaa !21
  br i1 %t136, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb41
bb38:
  %t137 = load ptr, ptr %l3, !tbaa !29
  store ptr %t137, ptr %l86, !tbaa !29
  %t138 = load ptr, ptr %l3, !tbaa !29
  %t139 = load i32, ptr %l11, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l89
  br label %bb39
bb39:
  %t143 = load ptr, ptr %l86, !tbaa !29
  %t144 = load i32, ptr %l89, !tbaa !23
  %t145 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t145, ptr %l90
  br label %bb40
bb40:
  %t146 = load i32, ptr %l90, !range !{i32 0, i32 33}
  %t148 = trunc i64 21 to i32
  %t149 = icmp eq i32 %t146, %t148
  store i1 %t149, ptr %l85, !tbaa !21
  br label %bb41
bb41:
  %t151 = load i1, ptr %l85, !tbaa !21
  br i1 %t151, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb65
bb43:
  br label %bb44
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l11, !tbaa !23
  %t154 = load i64, ptr %l2, !tbaa !24
  %t156 = add i64 %t154, 1
  %t160 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eneverNullPath(ptr %v0, ptr %s3, ptr %t152, i32 %t153, i64 %t156)
  store { i64, ptr } %t160, ptr %l97
  br label %bb45
bb45:
  %t161 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t161, ptr %l12, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t166 = icmp eq i64 %t164, 0
  br i1 %t166, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s3)
  br label %bb65
bb47:
  br label %bb48
bb48:
  %t168 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l103, !tbaa !24
  %t173 = load i64, ptr %l103, !tbaa !24
  %t174 = icmp sge i64 %t173, 0
  br i1 %t174, label %bb49, label %bb50
bb49:
  %t176 = load i64, ptr %l103, !tbaa !24
  %t177 = icmp sle i64 %t176, 1152921504606846975
  br i1 %t177, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_3175700f57e01d19_45cf7091add0d985)
  unreachable
bb51:
  %t179 = load i64, ptr %l103, !tbaa !24
  %t180 = mul i64 %t179, 8
  %t181 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t180)
  %t182 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t184 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t184, ptr %lp13
  %t186 = load ptr, ptr %lp13
  store { i64, ptr } %t183, ptr %t186, !tbaa !27
  %t187 = load i64, ptr %l10, !tbaa !24
  %t189 = load ptr, ptr %lp13
  %t190 = getelementptr { i64, ptr }, ptr %t189, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i64, ptr %t191, i64 0
  store i64 %t187, ptr %t192, !tbaa !34
  store i64 0, ptr %l14, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t193, 0
  store i64 %t195, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t197 = load i64, ptr %l15, !tbaa !24
  %t198 = load i64, ptr %l14, !tbaa !24
  %t201 = icmp sgt i64 %t197, %t198
  br i1 %t201, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_3175700f57e01d19_45cf7091add0d985)
  unreachable
bb53:
  %t203 = load i64, ptr %l16, !tbaa !24
  %t205 = icmp sgt i64 %t203, 0
  br i1 %t205, label %bb55, label %bb56
bb54:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb58
bb55:
  %t207 = load i64, ptr %l15, !tbaa !24
  %t208 = load i64, ptr %l14, !tbaa !24
  %t211 = sub i64 %t207, %t208
  %t212 = load i64, ptr %l16, !tbaa !24
  %t215 = add i64 %t211, %t212
  %t217 = sub i64 %t215, 1
  %t218 = load i64, ptr %l16, !tbaa !24
  %t221 = sdiv i64 %t217, %t218
  store i64 %t221, ptr %l116, !tbaa !24
  br label %bb57
bb56:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb57
bb57:
  %t223 = load i64, ptr %l116, !tbaa !24
  store i64 %t223, ptr %l113, !tbaa !24
  br label %bb58
bb58:
  %t224 = load i64, ptr %l113, !tbaa !24
  store i64 %t224, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb59
bb59:
  %t225 = load i64, ptr %l18, !tbaa !24
  %t226 = load i64, ptr %l17, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb60, label %bb61
bb60:
  br label %bb64
bb61:
  br label %bb62
bb62:
  %t233 = load i64, ptr %l14, !tbaa !24
  %t234 = load i64, ptr %l18, !tbaa !24
  %t235 = load i64, ptr %l16, !tbaa !24
  %t238 = mul i64 %t234, %t235
  %t241 = add i64 %t233, %t238
  store i64 %t241, ptr %l19, !tbaa !24
  %t243 = load i64, ptr %l19, !tbaa !24
  %t245 = add i64 %t243, 1
  %t246 = load i64, ptr %l19, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i64, ptr %t249, i64 %t246
  %t251 = load i64, ptr %t250, !tbaa !34
  %t253 = load ptr, ptr %lp13
  %t255 = getelementptr { i64, ptr }, ptr %t253, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = getelementptr i64, ptr %t256, i64 %t245
  store i64 %t251, ptr %t257, !tbaa !34
  br label %bb63
bb63:
  %t258 = load i64, ptr %l18, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l18, !tbaa !24
  br label %bb59
bb64:
  %t262 = load ptr, ptr %lp13
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t263, ptr %rv
  br label %ret
bb65:
  %t265 = load i64, ptr %l9, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l9, !tbaa !24
  br label %bb19
bb66:
  %t269 = icmp sge i64 0, 0
  br i1 %t269, label %bb67, label %bb68
bb67:
  %t271 = icmp sle i64 0, 1152921504606846975
  br i1 %t271, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_579e7356b043c39a_4d305c4fde145a66)
  unreachable
bb69:
  %t273 = mul i64 0, 8
  %t274 = insertvalue { i64, ptr } undef, i64 0, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t275, ptr %rv
  br label %ret
bb70:
  call void @__olang_check_failed(ptr @olang_loc_579e7356b043c39a_4d305c4fde145a66)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
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
  %l9 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t17, ptr %t18, ptr %t19)
  br label %bb6
bb6:
  br label %bb33
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t25 = load ptr, ptr %l18, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 5
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Payload", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t39, ptr %t43, ptr %t44, ptr %t45)
  br label %bb13
bb13:
  br label %bb33
bb14:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 4
  store i1 %t57, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l30, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l6, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l6, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Elem", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t65, ptr %t69, ptr %t70, ptr %t71)
  br label %bb20
bb20:
  br label %bb33
bb21:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t77 = load ptr, ptr %l40, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t80 = load ptr, ptr %l40, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 6
  store i1 %t83, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l7, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l7, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t94 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t91, ptr %t92, ptr %t93, ptr %t94)
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
  call void @__olang_check_failed(ptr @olang_loc_15f99fcbd43babda_53e78f535034c6)
  unreachable
bb33:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"compiler/lower:pl"
  %l15 = alloca %"compiler/lower:pl"
  %l16 = alloca %"compiler/mir:Lvalue"
  %l20 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t22 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t4, i32 %a2, i64 %t6)
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l10, !tbaa !29
  %t13 = load i32, ptr %l4, !tbaa !23
  store i32 %t13, ptr %l11, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l12, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l13
  %t17 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l13)
  store %"compiler/lower:pl" %t17, ptr %l15
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = load %"compiler/lower:pl", ptr %l15
  %t20 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t18, %"compiler/lower:pl" %t19)
  store %"compiler/mir:Lvalue" %t20, ptr %l16
  br label %bb3
bb3:
  %t21 = load i32, ptr %l4, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [15 x i64] }, ptr %t22, i32 0, i32 0
  store i64 1, ptr %t23
  %t24 = load %"compiler/mir:Lvalue", ptr %l16
  %t25 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t24, 0
  %t27 = insertvalue { %"compiler/mir:Lvalue", i32 } %t25, i32 %t21, 1
  %t28 = getelementptr { i64, [15 x i64] }, ptr %t22, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t27, ptr %t28
  %t29 = load { i64, [15 x i64] }, ptr %t22
  %t31 = load ptr, ptr %l10, !tbaa !29
  %t32 = load i32, ptr %l11, !tbaa !23
  %t35 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t31, i32 %t32, { i64, [15 x i64] } %t29, %"compiler/source:Span" %a3)
  store { i64, [4 x i64] } %t35, ptr %l20
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, [4 x i64] }, ptr %l20
  store { i64, [4 x i64] } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderErr(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i1
  %l34 = alloca i32
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l42 = alloca { i64, [4 x i64] }
  %l43 = alloca i32
  %l44 = alloca i32
  %l54 = alloca i32
  %l55 = alloca ptr
  %l56 = alloca i32
  %l60 = alloca { i64, [4 x i64] }
  %l63 = alloca { i64, [4 x i64] }
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l106 = alloca { i64, ptr }
  %l109 = alloca i32
  %l112 = alloca i32
  %l115 = alloca i64
  %l120 = alloca ptr
  %l128 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l134 = alloca i32
  %l140 = alloca i64
  %l143 = alloca i64
  %l163 = alloca i1
  %l165 = alloca { i64, ptr }
  %l168 = alloca i64
  %l169 = alloca i64
  %l179 = alloca ptr
  %l180 = alloca i64
  %l182 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l192 = alloca i1
  %l196 = alloca { i64, ptr }
  %l199 = alloca ptr
  %l201 = alloca i64
  %l205 = alloca i64
  %l208 = alloca ptr
  %l210 = alloca i32
  %l211 = alloca ptr
  %l214 = alloca i32
  %l215 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l225 = alloca i32
  %l227 = alloca i64
  %l231 = alloca i64
  %l234 = alloca i64
  %l252 = alloca i64
  %l254 = alloca i64
  %l259 = alloca ptr
  %l260 = alloca i32
  %l261 = alloca i32
  %l262 = alloca { i64, [4 x i64] }
  %l263 = alloca i32
  %l266 = alloca i64
  %l268 = alloca { i64, ptr }
  %l270 = alloca { i64, [4 x i64] }
  %l273 = alloca i32
  %l276 = alloca i32
  %l284 = alloca ptr
  %l285 = alloca { i64, [1 x i64] }
  %l286 = alloca i32
  %l289 = alloca { i64, ptr }
  %l292 = alloca i64
  %l295 = alloca i64
  %l298 = alloca i32
  %l304 = alloca ptr
  %l305 = alloca { i64, [1 x i64] }
  %l306 = alloca i32
  %l309 = alloca { i64, ptr }
  %l312 = alloca i64
  %l315 = alloca i64
  %l318 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t33 = alloca { i64, [15 x i64] }, align 8
  %t449 = alloca { i64, [4 x i64] }, align 8
  %t493 = alloca { i64, [8 x i64] }, align 8
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/lower:Lowerer", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l6, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t17 = load %"compiler/source:Span", ptr %l4
  %t22 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t14, { i64, [4 x i64] } %a2, i32 %t16, %"compiler/source:Span" %t17)
  store i32 %t22, ptr %l54
  br label %bb1
bb1:
  %t23 = load i32, ptr %l54, !tbaa !23
  store i32 %t23, ptr %l7, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l55, !tbaa !29
  %t25 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t25, ptr %l56, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l7, !tbaa !23
  %t28 = load i32, ptr %l3, !tbaa !23
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %t26, i32 %t27, i32 %t28)
  store { i64, [4 x i64] } %t32, ptr %l60
  br label %bb2
bb2:
  store { i64, [15 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [15 x i64] }, ptr %t33, i32 0, i32 0
  store i64 0, ptr %t34
  %t35 = load { i64, [4 x i64] }, ptr %l60
  %t36 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t35, 0
  %t37 = getelementptr { i64, [15 x i64] }, ptr %t33, i32 0, i32 1
  store { { i64, [4 x i64] } } %t36, ptr %t37
  %t38 = load { i64, [15 x i64] }, ptr %t33
  %t39 = load %"compiler/source:Span", ptr %l4
  %t40 = load ptr, ptr %l55, !tbaa !29
  %t41 = load i32, ptr %l56, !tbaa !23
  %t44 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t40, i32 %t41, { i64, [15 x i64] } %t38, %"compiler/source:Span" %t39)
  store { i64, [4 x i64] } %t44, ptr %l63
  br label %bb3
bb3:
  %t45 = load { i64, [4 x i64] }, ptr %l63
  store { i64, [4 x i64] } %t45, ptr %l8
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l64
  br label %bb4
bb4:
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l9
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l65
  br label %bb5
bb5:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 0)
  br label %bb6
bb6:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb7
bb7:
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l68
  br label %bb8
bb8:
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l11
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l69
  br label %bb9
bb9:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l12
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l70
  br label %bb10
bb10:
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l11, i64 0)
  br label %bb11
bb11:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l12, i64 0)
  br label %bb12
bb12:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l13, i32 0)
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l5, !tbaa !29
  store ptr %t61, ptr %l74, !tbaa !29
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t63 = load i32, ptr %l3, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l77
  br label %bb14
bb14:
  %t67 = load ptr, ptr %l74, !tbaa !29
  %t68 = load i32, ptr %l77, !tbaa !23
  %t69 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t67, i32 %t68)
  store { i64, ptr } %t69, ptr %l78
  br label %bb15
bb15:
  %t70 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t70, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t75 = load i64, ptr %l16, !tbaa !24
  %t76 = load i64, ptr %l15, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = load i64, ptr %l17, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb21
bb18:
  %t85 = load i64, ptr %l16, !tbaa !24
  %t86 = load i64, ptr %l15, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t90 = load i64, ptr %l17, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t95 = sub i64 %t93, 1
  %t96 = load i64, ptr %l17, !tbaa !24
  %t99 = sdiv i64 %t95, %t96
  store i64 %t99, ptr %l87, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb20
bb20:
  %t101 = load i64, ptr %l87, !tbaa !24
  store i64 %t101, ptr %l84, !tbaa !24
  br label %bb21
bb21:
  %t102 = load i64, ptr %l84, !tbaa !24
  store i64 %t102, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s2
  %t103 = load i64, ptr %l19, !tbaa !24
  %t104 = load i64, ptr %l18, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb74
bb24:
  br label %bb25
bb25:
  %t111 = load i64, ptr %l15, !tbaa !24
  %t112 = load i64, ptr %l19, !tbaa !24
  %t113 = load i64, ptr %l17, !tbaa !24
  %t116 = mul i64 %t112, %t113
  %t119 = add i64 %t111, %t116
  store i64 %t119, ptr %l20, !tbaa !24
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t122 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t122, ptr %l106, !tbaa !27
  %t123 = load i64, ptr %l20, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr i32, ptr %t126, i64 %t123
  %t128 = load i32, ptr %t127, !tbaa !33
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t121, i32 %t128)
  store i32 %t131, ptr %l109
  br label %bb26
bb26:
  %t132 = load i32, ptr %l109, !tbaa !23
  store i32 %t132, ptr %l21, !tbaa !23
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t134 = load i32, ptr %l21, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l112
  br label %bb27
bb27:
  %t138 = load i32, ptr %l112, !tbaa !23
  store i32 %t138, ptr %l22, !tbaa !23
  %t139 = load ptr, ptr %l5, !tbaa !29
  %t140 = load i32, ptr %l22, !tbaa !23
  %t143 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t139, i32 %t140)
  store i64 %t143, ptr %l115
  br label %bb28
bb28:
  %t144 = load i64, ptr %l115, !tbaa !24
  store i64 %t144, ptr %l23, !tbaa !24
  %t145 = load ptr, ptr %l6, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/load:Loader", ptr %t148, i32 0, i32 10
  %t151 = load i64, ptr %l23, !tbaa !24
  %t154 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t150, i64 %t151)
  store ptr %t154, ptr %l120
  br label %bb29
bb29:
  %t155 = load ptr, ptr %l120, !tbaa !29
  %t157 = getelementptr %"compiler/load:Module", ptr %t155, i32 0, i32 2
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l23, !tbaa !24
  %t160 = load ptr, ptr %l6, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 12
  %t166 = load i64, ptr %t165, !tbaa !24
  %t169 = icmp eq i64 %t159, %t166
  %t172 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s2, { i64, ptr } %t158, i1 %t169)
  store { i64, ptr } %t172, ptr %l128
  br label %bb30
bb30:
  %t173 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t173, ptr %l24, !tbaa !27
  %t174 = load ptr, ptr %l6, !tbaa !29
  %t175 = load i32, ptr %l22, !tbaa !23
  %t178 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s2, ptr %t174, i32 %t175)
  store { i64, ptr } %t178, ptr %l131
  br label %bb31
bb31:
  %t179 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t179, ptr %l25, !tbaa !27
  %t180 = load ptr, ptr %l6, !tbaa !29
  %t181 = load i32, ptr %l21, !tbaa !23
  %t184 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t180, i32 %t181)
  store i32 %t184, ptr %l134
  br label %bb32
bb32:
  %t185 = load i32, ptr %l134, !tbaa !23
  store i32 %t185, ptr %l26, !tbaa !23
  store i64 0, ptr %l27, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  store i64 %t188, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t190 = load i64, ptr %l28, !tbaa !24
  %t191 = load i64, ptr %l27, !tbaa !24
  %t194 = icmp sgt i64 %t190, %t191
  br i1 %t194, label %bb33, label %bb34
bb33:
  %t196 = load i64, ptr %l29, !tbaa !24
  %t198 = icmp sgt i64 %t196, 0
  br i1 %t198, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb38
bb35:
  %t200 = load i64, ptr %l28, !tbaa !24
  %t201 = load i64, ptr %l27, !tbaa !24
  %t204 = sub i64 %t200, %t201
  %t205 = load i64, ptr %l29, !tbaa !24
  %t208 = add i64 %t204, %t205
  %t210 = sub i64 %t208, 1
  %t211 = load i64, ptr %l29, !tbaa !24
  %t214 = sdiv i64 %t210, %t211
  store i64 %t214, ptr %l143, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb37
bb37:
  %t216 = load i64, ptr %l143, !tbaa !24
  store i64 %t216, ptr %l140, !tbaa !24
  br label %bb38
bb38:
  %t217 = load i64, ptr %l140, !tbaa !24
  store i64 %t217, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s4
  %t218 = load i64, ptr %l31, !tbaa !24
  %t219 = load i64, ptr %l30, !tbaa !24
  %t222 = icmp slt i64 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb72
bb41:
  br label %bb42
bb42:
  %t226 = load i64, ptr %l27, !tbaa !24
  %t227 = load i64, ptr %l31, !tbaa !24
  %t228 = load i64, ptr %l29, !tbaa !24
  %t231 = mul i64 %t227, %t228
  %t234 = add i64 %t226, %t231
  store i64 %t234, ptr %l32, !tbaa !24
  %t236 = load i64, ptr %l32, !tbaa !24
  %t238 = icmp slt i64 %t236, 64
  br i1 %t238, label %bb43, label %bb44
bb43:
  %t240 = load ptr, ptr %l5, !tbaa !29
  %t241 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t241, ptr %l165, !tbaa !27
  %t242 = load i64, ptr %l20, !tbaa !24
  %t244 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr i32, ptr %t245, i64 %t242
  %t247 = load i32, ptr %t246, !tbaa !33
  %t250 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t240, i32 %t247)
  store i64 %t250, ptr %l168
  br label %bb45
bb44:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb46
bb45:
  %t251 = load i64, ptr %l32, !tbaa !24
  store i64 %t251, ptr %l169, !tbaa !24
  %t252 = load i64, ptr %l169, !tbaa !24
  %t253 = load i64, ptr %l169, !tbaa !24
  %t254 = shl i64 1, %t253
  %t255 = load i64, ptr %l168, !tbaa !65
  %t257 = and i64 %t255, %t254
  %t259 = icmp eq i64 %t257, 0
  store i1 %t259, ptr %l163, !tbaa !21
  br label %bb46
bb46:
  %t261 = load i1, ptr %l163, !tbaa !21
  br i1 %t261, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb48:
  br label %bb49
bb49:
  %t262 = load i64, ptr %l20, !tbaa !24
  %t264 = add i64 %t262, 1
  %t266 = shl i64 %t264, 16
  %t267 = load i64, ptr %l32, !tbaa !24
  %t270 = or i64 %t266, %t267
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t270)
  br label %bb50
bb50:
  store ptr %l10, ptr %l179, !tbaa !29
  %t273 = ptrtoint ptr %s0 to i64
  store i64 %t273, ptr %l180, !tbaa !24
  %t274 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t274, label %bb51, label %bb52
bb51:
  %t276 = call ptr @__olang_region_make(ptr %s0)
  %t277 = ptrtoint ptr %t276 to i64
  store i64 %t277, ptr %l180, !tbaa !24
  br label %bb52
bb52:
  %t278 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t278, ptr %l182, !tbaa !27
  %t279 = load ptr, ptr %l6, !tbaa !29
  %t280 = load i32, ptr %l22, !tbaa !23
  %t281 = load i64, ptr %l32, !tbaa !24
  %t285 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s4, ptr %t279, i32 %t280, i64 %t281)
  store { i64, ptr } %t285, ptr %l186
  br label %bb53
bb53:
  %t286 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = add i64 %t288, %t291
  %t293 = load i64, ptr %l180
  %t294 = inttoptr i64 %t293 to ptr
  %t295 = call ptr @__olang_scope_alloc(ptr %t294, i64 %t292)
  call void @olang_textcopy(ptr %t295, ptr %t287, i64 %t288)
  %t296 = getelementptr i8, ptr %t295, i64 %t288
  call void @olang_textcopy(ptr %t296, ptr %t290, i64 %t291)
  %t297 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t295, 1
  %t300 = load i64, ptr %l180
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = extractvalue { i64, ptr } %t298, 0
  %t303 = extractvalue { i64, ptr } %t298, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %t301, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t308 = load ptr, ptr %l179, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t308, { i64, ptr } %t307)
  br label %bb54
bb54:
  %t310 = load i32, ptr %l26, !tbaa !23
  %t311 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t314 = icmp ne i32 %t310, %t311
  br i1 %t314, label %bb55, label %bb56
bb55:
  %t316 = load ptr, ptr %l6, !tbaa !29
  %t317 = load i32, ptr %l22, !tbaa !23
  %t318 = load i64, ptr %l32, !tbaa !24
  %t322 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s4, ptr %t316, i32 %t317, i64 %t318)
  store { i64, ptr } %t322, ptr %l196
  br label %bb57
bb56:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb58
bb57:
  %t323 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 0
  %t326 = icmp sgt i64 %t324, 0
  store i1 %t326, ptr %l192, !tbaa !21
  br label %bb58
bb58:
  %t328 = load i1, ptr %l192, !tbaa !21
  store i1 %t328, ptr %l33, !tbaa !21
  store ptr %l11, ptr %l199, !tbaa !29
  %t329 = load i1, ptr %l33, !tbaa !21
  br i1 %t329, label %bb59, label %bb60
bb59:
  %t331 = load ptr, ptr %l6, !tbaa !29
  %t332 = load i32, ptr %l3, !tbaa !23
  %t333 = load i64, ptr %l20, !tbaa !24
  %t337 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t331, i32 %t332, i64 %t333)
  store i64 %t337, ptr %l205
  br label %bb61
bb60:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb62
bb61:
  %t338 = load i64, ptr %l205, !tbaa !24
  store i64 %t338, ptr %l201, !tbaa !24
  br label %bb62
bb62:
  %t339 = load ptr, ptr %l199, !tbaa !29
  %t340 = load i64, ptr %l201, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t339, i64 %t340)
  br label %bb63
bb63:
  %t341 = load i64, ptr %l32, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l12, i64 %t341)
  br label %bb64
bb64:
  store ptr %l13, ptr %l208, !tbaa !29
  %t344 = load i1, ptr %l33, !tbaa !21
  br i1 %t344, label %bb65, label %bb66
bb65:
  %t346 = load ptr, ptr %l5, !tbaa !29
  store ptr %t346, ptr %l211, !tbaa !29
  %t347 = load ptr, ptr %l5, !tbaa !29
  %t348 = load i32, ptr %l26, !tbaa !23
  %t351 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t347, i32 %t348)
  store i32 %t351, ptr %l214
  br label %bb67
bb66:
  store i32 0, ptr %l210, !tbaa !23
  br label %bb69
bb67:
  %t352 = load ptr, ptr %l211, !tbaa !29
  %t353 = load i32, ptr %l214, !tbaa !23
  %t354 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s4, ptr %t352, i32 %t353)
  store { i64, ptr } %t354, ptr %l215
  br label %bb68
bb68:
  %t355 = load { i64, ptr }, ptr %l215, !tbaa !27
  store { i64, ptr } %t355, ptr %l216, !tbaa !27
  %t356 = load i64, ptr %l32, !tbaa !24
  %t358 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr i32, ptr %t359, i64 %t356
  %t361 = load i32, ptr %t360, !tbaa !33
  store i32 %t361, ptr %l210, !tbaa !23
  br label %bb69
bb69:
  %t363 = load ptr, ptr %l208, !tbaa !29
  %t364 = load i32, ptr %l210, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t363, i32 %t364)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb71:
  %t365 = load i64, ptr %l31, !tbaa !24
  %t367 = add i64 %t365, 1
  store i64 %t367, ptr %l31, !tbaa !24
  br label %bb39
bb72:
  call void @__olang_scope_close(ptr %s2)
  br label %bb73
bb73:
  %t369 = load i64, ptr %l19, !tbaa !24
  %t371 = add i64 %t369, 1
  store i64 %t371, ptr %l19, !tbaa !24
  br label %bb22
bb74:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/lower:lowering", ptr %t373, i32 0, i32 3
  %t377 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t375)
  store i32 %t377, ptr %l225
  br label %bb75
bb75:
  %t378 = load i32, ptr %l225, !tbaa !23
  store i32 %t378, ptr %l34, !tbaa !23
  store i64 0, ptr %l35, !tbaa !24
  %t380 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t380, ptr %l227
  br label %bb76
bb76:
  %t381 = load i64, ptr %l227, !tbaa !24
  store i64 %t381, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t382 = load i64, ptr %l36, !tbaa !24
  %t383 = load i64, ptr %l35, !tbaa !24
  %t386 = icmp sgt i64 %t382, %t383
  br i1 %t386, label %bb77, label %bb78
bb77:
  %t388 = load i64, ptr %l37, !tbaa !24
  %t390 = icmp sgt i64 %t388, 0
  br i1 %t390, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb82
bb79:
  %t392 = load i64, ptr %l36, !tbaa !24
  %t393 = load i64, ptr %l35, !tbaa !24
  %t396 = sub i64 %t392, %t393
  %t397 = load i64, ptr %l37, !tbaa !24
  %t400 = add i64 %t396, %t397
  %t402 = sub i64 %t400, 1
  %t403 = load i64, ptr %l37, !tbaa !24
  %t406 = sdiv i64 %t402, %t403
  store i64 %t406, ptr %l234, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb81
bb81:
  %t408 = load i64, ptr %l234, !tbaa !24
  store i64 %t408, ptr %l231, !tbaa !24
  br label %bb82
bb82:
  %t409 = load i64, ptr %l231, !tbaa !24
  store i64 %t409, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb83
bb83:
  %t410 = load i64, ptr %l39, !tbaa !24
  %t411 = load i64, ptr %l38, !tbaa !24
  %t414 = icmp slt i64 %t410, %t411
  %t416 = xor i1 %t414, true
  br i1 %t416, label %bb84, label %bb85
bb84:
  br label %bb111
bb85:
  br label %bb86
bb86:
  %t418 = load i64, ptr %l35, !tbaa !24
  %t419 = load i64, ptr %l39, !tbaa !24
  %t420 = load i64, ptr %l37, !tbaa !24
  %t423 = mul i64 %t419, %t420
  %t426 = add i64 %t418, %t423
  store i64 %t426, ptr %l40, !tbaa !24
  %t428 = load i64, ptr %l40, !tbaa !24
  store i64 %t428, ptr %l252, !tbaa !24
  %t430 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t430, ptr %l254
  br label %bb87
bb87:
  %t431 = load i64, ptr %l254, !tbaa !24
  %t432 = sub i64 %t431, 1
  %t433 = load i64, ptr %l252, !tbaa !24
  %t435 = icmp eq i64 %t433, %t432
  %t439 = xor i1 %t435, true
  br i1 %t439, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s11
  %t441 = load ptr, ptr %l0, !tbaa !29
  store ptr %t441, ptr %l259, !tbaa !29
  store i32 13, ptr %l260
  %t442 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t442, ptr %l261, !tbaa !23
  %t443 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } %t443, ptr %l262
  %t444 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t444, ptr %l263, !tbaa !23
  %t445 = load i64, ptr %l40, !tbaa !24
  %t448 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l9, i64 %t445)
  store i64 %t448, ptr %l266
  br label %bb90
bb89:
  br label %bb103
bb90:
  store { i64, [4 x i64] } zeroinitializer, ptr %t449
  %t450 = getelementptr { i64, [4 x i64] }, ptr %t449, i32 0, i32 0
  store i64 2, ptr %t450
  %t451 = load i32, ptr %l263, !tbaa !23
  %t452 = insertvalue { i32, i64 } undef, i32 %t451, 0
  %t453 = load i64, ptr %l266, !tbaa !24
  %t454 = insertvalue { i32, i64 } %t452, i64 %t453, 1
  %t455 = getelementptr { i64, [4 x i64] }, ptr %t449, i32 0, i32 1
  store { i32, i64 } %t454, ptr %t455
  %t456 = load { i64, [4 x i64] }, ptr %t449
  %t457 = mul i64 2, 40
  %t458 = call ptr @__olang_scope_alloc_zeroed(ptr %s11, i64 %t457)
  %t459 = insertvalue { i64, ptr } undef, i64 2, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr %t458, 1
  store { i64, ptr } %t460, ptr %l268, !tbaa !27
  %t461 = load { i64, [4 x i64] }, ptr %l262
  %t462 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr { i64, [4 x i64] }, ptr %t463, i64 0
  store { i64, [4 x i64] } %t461, ptr %t464
  %t466 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t467 = load ptr, ptr %t466, !tbaa !27
  %t468 = getelementptr { i64, [4 x i64] }, ptr %t467, i64 1
  store { i64, [4 x i64] } %t456, ptr %t468
  %t469 = load %"compiler/source:Span", ptr %l4
  %t470 = load ptr, ptr %l259, !tbaa !29
  %t471 = load i32, ptr %l260, !range !{i32 0, i32 52}
  %t472 = load i32, ptr %l261, !tbaa !23
  %t473 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t475 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s11, ptr %t470, i32 %t471, i32 %t472, { i64, ptr } %t473, %"compiler/source:Span" %t469)
  store { i64, [4 x i64] } %t475, ptr %l270
  br label %bb91
bb91:
  %t476 = load { i64, [4 x i64] }, ptr %l270
  store { i64, [4 x i64] } %t476, ptr %l42
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/lower:lowering", ptr %t477, i32 0, i32 3
  %t481 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t479)
  store i32 %t481, ptr %l273
  br label %bb92
bb92:
  %t482 = load i32, ptr %l273, !tbaa !23
  store i32 %t482, ptr %l43, !tbaa !23
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/lower:lowering", ptr %t483, i32 0, i32 3
  %t487 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t485)
  store i32 %t487, ptr %l276
  br label %bb93
bb93:
  %t488 = load i32, ptr %l276, !tbaa !23
  store i32 %t488, ptr %l44, !tbaa !23
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load { i64, [4 x i64] }, ptr %l42
  %t491 = load i32, ptr %l43, !tbaa !23
  %t492 = load i32, ptr %l44, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t493
  %t494 = getelementptr { i64, [8 x i64] }, ptr %t493, i32 0, i32 0
  store i64 2, ptr %t494
  %t496 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t490, 0
  %t498 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t496, i32 %t491, 1
  %t500 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t498, i32 %t492, 2
  %t501 = getelementptr { i64, [8 x i64] }, ptr %t493, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t500, ptr %t501
  %t502 = load { i64, [8 x i64] }, ptr %t493
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t489, { i64, [8 x i64] } %t502)
  br label %bb94
bb94:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t506 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t505, i32 %t506)
  br label %bb95
bb95:
  %t509 = load ptr, ptr %l0, !tbaa !29
  store ptr %t509, ptr %l284, !tbaa !29
  %t510 = load { i64, [1 x i64] }, ptr %l1
  store { i64, [1 x i64] } %t510, ptr %l285
  %t511 = load i32, ptr %l7, !tbaa !23
  store i32 %t511, ptr %l286, !tbaa !23
  %t512 = load i64, ptr %l40, !tbaa !24
  %t515 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l10, i64 %t512)
  store { i64, ptr } %t515, ptr %l289
  br label %bb96
bb96:
  %t516 = load i64, ptr %l40, !tbaa !24
  %t519 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l11, i64 %t516)
  store i64 %t519, ptr %l292
  br label %bb97
bb97:
  %t520 = load i64, ptr %l40, !tbaa !24
  %t523 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l12, i64 %t520)
  store i64 %t523, ptr %l295
  br label %bb98
bb98:
  %t524 = load i64, ptr %l40, !tbaa !24
  %t527 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l13, i64 %t524)
  store i32 %t527, ptr %l298
  br label %bb99
bb99:
  %t528 = load %"compiler/source:Span", ptr %l4
  %t529 = load ptr, ptr %l284, !tbaa !29
  %t530 = load { i64, [1 x i64] }, ptr %l285
  %t531 = load i32, ptr %l286, !tbaa !23
  %t532 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t533 = load i64, ptr %l292, !tbaa !24
  %t534 = load i64, ptr %l295, !tbaa !24
  %t535 = load i32, ptr %l298, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrWord(ptr %v0, ptr %s0, ptr %t529, { i64, [1 x i64] } %t530, i32 %t531, { i64, ptr } %t532, i64 %t533, i64 %t534, i32 %t535, %"compiler/source:Span" %t528)
  br label %bb100
bb100:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t537, i32 %t538)
  br label %bb101
bb101:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load i32, ptr %l44, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t541, i32 %t542)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s11)
  br label %bb110
bb103:
  %t545 = load ptr, ptr %l0, !tbaa !29
  store ptr %t545, ptr %l304, !tbaa !29
  %t546 = load { i64, [1 x i64] }, ptr %l1
  store { i64, [1 x i64] } %t546, ptr %l305
  %t547 = load i32, ptr %l7, !tbaa !23
  store i32 %t547, ptr %l306, !tbaa !23
  %t548 = load i64, ptr %l40, !tbaa !24
  %t551 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l10, i64 %t548)
  store { i64, ptr } %t551, ptr %l309
  br label %bb104
bb104:
  %t552 = load i64, ptr %l40, !tbaa !24
  %t555 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l11, i64 %t552)
  store i64 %t555, ptr %l312
  br label %bb105
bb105:
  %t556 = load i64, ptr %l40, !tbaa !24
  %t559 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l12, i64 %t556)
  store i64 %t559, ptr %l315
  br label %bb106
bb106:
  %t560 = load i64, ptr %l40, !tbaa !24
  %t563 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l13, i64 %t560)
  store i32 %t563, ptr %l318
  br label %bb107
bb107:
  %t564 = load %"compiler/source:Span", ptr %l4
  %t565 = load ptr, ptr %l304, !tbaa !29
  %t566 = load { i64, [1 x i64] }, ptr %l305
  %t567 = load i32, ptr %l306, !tbaa !23
  %t568 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t569 = load i64, ptr %l312, !tbaa !24
  %t570 = load i64, ptr %l315, !tbaa !24
  %t571 = load i32, ptr %l318, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrWord(ptr %v0, ptr %s0, ptr %t565, { i64, [1 x i64] } %t566, i32 %t567, { i64, ptr } %t568, i64 %t569, i64 %t570, i32 %t571, %"compiler/source:Span" %t564)
  br label %bb108
bb108:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t573, i32 %t574)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t577 = load i64, ptr %l39, !tbaa !24
  %t579 = add i64 %t577, 1
  store i64 %t579, ptr %l39, !tbaa !24
  br label %bb83
bb111:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t581, i32 %t582)
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultOf(ptr %v0, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Range"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca i64
  %l44 = alloca i1
  %l55 = alloca { i64, [1 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [1 x i64] }
  %t101 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
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
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l9, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i64, ptr %t63, i64 %t60
  %t65 = load i64, ptr %t64, !tbaa !34
  %t66 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t69 = icmp eq i64 %t65, %t66
  br i1 %t69, label %bb12, label %bb13
bb12:
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 1
  %t73 = load i32, ptr %t72, !tbaa !23
  %t75 = sext i32 %t73 to i64
  %t78 = icmp slt i64 %t71, %t75
  store i1 %t78, ptr %l44, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb14
bb14:
  %t80 = load i1, ptr %l44, !tbaa !21
  br i1 %t80, label %bb15, label %bb16
bb15:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/lower:lowering", ptr %t81, i32 0, i32 3
  %t84 = getelementptr %"compiler/mir:Fn", ptr %t83, i32 0, i32 12
  %t85 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 0
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t95 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t84, i64 %t92)
  store { i64, [1 x i64] } %t95, ptr %l55
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t96 = load { i64, [1 x i64] }, ptr %l55
  store { i64, [1 x i64] } %t96, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l8, !tbaa !24
  br label %bb8
bb20:
  store { i64, [1 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [1 x i64] }, ptr %t101, i32 0, i32 0
  store i64 2, ptr %t102
  %t103 = load { i64, [1 x i64] }, ptr %t101
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t103, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eretire(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca i64
  %l44 = alloca i64
  %l51 = alloca i64
  %l63 = alloca i64
  %l71 = alloca { i64, [4 x i64] }
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l77 = alloca i64
  %l82 = alloca i64
  %l85 = alloca ptr
  %l89 = alloca i32
  %l101 = alloca { i64, [4 x i64] }
  %l103 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i64
  %l128 = alloca ptr
  %l129 = alloca ptr
  %l131 = alloca i64
  %l135 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t75 = alloca { i64, [4 x i64] }, align 8
  %t237 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 5
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_d37cf7930152773d_5167e95feb746d79)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/lower:Lowerer", ptr %t14, i32 0, i32 5
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l5, !tbaa !29
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l28
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l6
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Body", ptr %t25, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t31 = load %"compiler/source:Span", ptr %l4
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eRetirePlaces(ptr %v0, ptr %s1, ptr %t21, i64 %t30, %"compiler/source:Span" %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l35
  br label %bb5
bb5:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t37 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %t37
  store ptr %t37, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l8, !tbaa !24
  store i64 %t39, ptr %l37, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t40)
  store i64 %t42, ptr %l39
  br label %bb7
bb7:
  %t43 = load i64, ptr %l37, !tbaa !24
  %t44 = load i64, ptr %l39, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t50 = load i64, ptr %l8, !tbaa !24
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t49, i64 %t50)
  store i64 %t53, ptr %l44
  br label %bb11
bb11:
  %t54 = load i64, ptr %l44, !tbaa !24
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t69 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %t55, i64 %t64, i64 %t54)
  store i64 %t69, ptr %l51
  br label %bb12
bb12:
  %t70 = load i64, ptr %l51, !tbaa !24
  store i64 %t70, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t73 = icmp eq i64 %t71, -1
  br i1 %t73, label %bb13, label %bb14
bb13:
  store { i64, [4 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 0
  store i64 0, ptr %t76
  %t77 = load { i64, [4 x i64] }, ptr %t75
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t77, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t81 = icmp sge i64 %t79, 0
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t83)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l8, !tbaa !24
  br label %bb6
bb21:
  call void @__olang_scope_close(ptr %s1)
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/lower:lowering", ptr %t90, i32 0, i32 37
  store i1 true, ptr %t92, !tbaa !21
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l6)
  store i64 %t94, ptr %l63
  br label %bb22
bb22:
  %t95 = load i64, ptr %l63, !tbaa !24
  %t96 = icmp eq i64 %t95, 0
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l1, !range !{i32 0, i32 3}
  %t100 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t101 = load i32, ptr %l3, !tbaa !23
  %t102 = load %"compiler/source:Span", ptr %l4
  %t109 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprimExpr(ptr %v0, ptr %v1, ptr %t98, i32 29, i32 %t99, { i64, ptr } %t100, i32 %t101, %"compiler/source:Span" %t102)
  store { i64, [4 x i64] } %t109, ptr %l71
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/lower:lowering", ptr %t110, i32 0, i32 37
  store i1 false, ptr %t112, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  %t113 = load { i64, [4 x i64] }, ptr %l71
  store { i64, [4 x i64] } %t113, ptr %rv
  br label %ret
bb26:
  %t114 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l73
  br label %bb27
bb27:
  %t115 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l11
  store ptr %l6, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb28
bb28:
  %t117 = load i64, ptr %l13, !tbaa !24
  store i64 %t117, ptr %l75, !tbaa !24
  %t118 = load ptr, ptr %l12, !tbaa !29
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t118)
  store i64 %t120, ptr %l77
  br label %bb29
bb29:
  %t121 = load i64, ptr %l75, !tbaa !24
  %t122 = load i64, ptr %l77, !tbaa !24
  %t123 = icmp slt i64 %t121, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb30, label %bb31
bb30:
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t127 = load ptr, ptr %l12, !tbaa !29
  %t128 = load i64, ptr %l13, !tbaa !24
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t127, i64 %t128)
  store i64 %t131, ptr %l82
  br label %bb33
bb33:
  %t132 = load i64, ptr %l82, !tbaa !24
  store i64 %t132, ptr %l14, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/lower:lowering", ptr %t133, i32 0, i32 10
  %t136 = load i1, ptr %t135, !tbaa !21
  br i1 %t136, label %bb34, label %bb35
bb34:
  br label %bb40
bb35:
  br label %bb36
bb36:
  store ptr %l11, ptr %l85, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l14, !tbaa !24
  %t140 = load %"compiler/source:Span", ptr %l4
  %t144 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %t138, i64 %t139, i1 false, %"compiler/source:Span" %t140)
  store i32 %t144, ptr %l89
  br label %bb37
bb37:
  %t145 = load ptr, ptr %l85, !tbaa !29
  %t146 = load i32, ptr %l89, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %t145, i32 %t146)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t147 = load i64, ptr %l13, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l13, !tbaa !24
  br label %bb28
bb40:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lower:lowering", ptr %t151, i32 0, i32 10
  %t154 = load i1, ptr %t153, !tbaa !21
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb41, label %bb42
bb41:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l1, !range !{i32 0, i32 3}
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t161 = load i32, ptr %l3, !tbaa !23
  %t162 = load %"compiler/source:Span", ptr %l4
  %t169 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprimExpr(ptr %v0, ptr %v1, ptr %t158, i32 29, i32 %t159, { i64, ptr } %t160, i32 %t161, %"compiler/source:Span" %t162)
  store { i64, [4 x i64] } %t169, ptr %l101
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb44
bb44:
  store i64 0, ptr %l15, !tbaa !24
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l11)
  store i64 %t171, ptr %l103
  br label %bb45
bb45:
  %t172 = load i64, ptr %l103, !tbaa !24
  store i64 %t172, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t173 = load i64, ptr %l16, !tbaa !24
  %t174 = load i64, ptr %l15, !tbaa !24
  %t177 = icmp sgt i64 %t173, %t174
  br i1 %t177, label %bb46, label %bb47
bb46:
  %t179 = load i64, ptr %l17, !tbaa !24
  %t181 = icmp sgt i64 %t179, 0
  br i1 %t181, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb51
bb48:
  %t183 = load i64, ptr %l16, !tbaa !24
  %t184 = load i64, ptr %l15, !tbaa !24
  %t187 = sub i64 %t183, %t184
  %t188 = load i64, ptr %l17, !tbaa !24
  %t191 = add i64 %t187, %t188
  %t193 = sub i64 %t191, 1
  %t194 = load i64, ptr %l17, !tbaa !24
  %t197 = sdiv i64 %t193, %t194
  store i64 %t197, ptr %l110, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb50
bb50:
  %t199 = load i64, ptr %l110, !tbaa !24
  store i64 %t199, ptr %l107, !tbaa !24
  br label %bb51
bb51:
  %t200 = load i64, ptr %l107, !tbaa !24
  store i64 %t200, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb52
bb52:
  %t201 = load i64, ptr %l19, !tbaa !24
  %t202 = load i64, ptr %l18, !tbaa !24
  %t205 = icmp slt i64 %t201, %t202
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb53, label %bb54
bb53:
  br label %bb60
bb54:
  br label %bb55
bb55:
  %t209 = load i64, ptr %l15, !tbaa !24
  %t210 = load i64, ptr %l19, !tbaa !24
  %t211 = load i64, ptr %l17, !tbaa !24
  %t214 = mul i64 %t210, %t211
  %t217 = add i64 %t209, %t214
  store i64 %t217, ptr %l20, !tbaa !24
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l128, !tbaa !29
  store ptr %l11, ptr %l129, !tbaa !29
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l11)
  store i64 %t221, ptr %l131
  br label %bb56
bb56:
  %t222 = load i64, ptr %l131, !tbaa !24
  %t223 = sub i64 %t222, 1
  %t224 = load i64, ptr %l20, !tbaa !24
  %t227 = sub i64 %t223, %t224
  %t228 = load ptr, ptr %l129, !tbaa !29
  %t230 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %t228, i64 %t227)
  store i32 %t230, ptr %l135
  br label %bb57
bb57:
  %t231 = load ptr, ptr %l128, !tbaa !29
  %t232 = load i32, ptr %l135, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %t231, i32 %t232)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t233 = load i64, ptr %l19, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l19, !tbaa !24
  br label %bb52
bb60:
  store { i64, [4 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 0
  store i64 0, ptr %t238
  %t239 = load { i64, [4 x i64] }, ptr %t237
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/lower:lowering", ptr %t240, i32 0, i32 37
  store i1 false, ptr %t242, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t239, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erunDefers(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"compiler/lower:level"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i64
  %l26 = alloca %"compiler/lower:level"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"compiler/lower:level"
  %l39 = alloca %"compiler/lower:level"
  %l40 = alloca i32
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l74 = alloca i32
  %l77 = alloca i1
  %l82 = alloca i1
  %l88 = alloca i64
  %l90 = alloca i64
  %l95 = alloca i64
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca i64
  %l107 = alloca i64
  %l112 = alloca i64
  %l116 = alloca i1
  %l119 = alloca i1
  %l121 = alloca ptr
  %l124 = alloca ptr
  %l128 = alloca ptr
  %l132 = alloca %"compiler/typed:BlockInfo"
  %l140 = alloca ptr
  %l143 = alloca i1
  %l144 = alloca ptr
  %l148 = alloca ptr
  %l154 = alloca i64
  %l156 = alloca i64
  %l161 = alloca i64
  %l169 = alloca i64
  %l173 = alloca ptr
  %l174 = alloca %"compiler/lower:level"
  %l176 = alloca %"compiler/lower:level"
  %l177 = alloca i32
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %t223 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 12
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/lower:level" %t7, ptr %l26
  br label %bb1
bb1:
  %t8 = load %"compiler/lower:level", ptr %l26
  store %"compiler/lower:level" %t8, ptr %l3
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l27
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l4
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 12
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l30
  br label %bb4
bb4:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = add i64 %t16, 1
  %t19 = load i64, ptr %l30, !tbaa !24
  %t21 = icmp sgt i64 %t19, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  br label %bb14
bb6:
  br label %bb7
bb7:
  store ptr %l4, ptr %l35, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 12
  %t29 = call { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t27)
  %t30 = extractvalue { i32, %"compiler/lower:level" } %t29, 1
  %t31 = extractvalue { i32, %"compiler/lower:level" } %t29, 0
  store i32 %t31, ptr %l40
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb9, label %ok.33, !prof !99
ok.33:
  store %"compiler/lower:level" %t30, ptr %l39
  br label %bb8
bb8:
  %t34 = load %"compiler/lower:level", ptr %l39
  store %"compiler/lower:level" %t34, ptr %l36
  br label %bb11
bb9:
  br label %bb10
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3ef62952ecee62f3_777b4c56ce2caf3f)
  unreachable
bb11:
  %t35 = load ptr, ptr %l35, !tbaa !29
  %t36 = load %"compiler/lower:level", ptr %l36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %s0, ptr %t35, %"compiler/lower:level" %t36)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb3
bb14:
  %t37 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l41
  br label %bb15
bb15:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l5
  %t39 = getelementptr %"compiler/lower:level", ptr %l3, i32 0, i32 2
  %t40 = load i32, ptr %t39, !range !{i32 0, i32 7}
  %t42 = trunc i64 3 to i32
  %t43 = icmp eq i32 %t40, %t42
  store i1 %t43, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 15
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l46
  br label %bb16
bb16:
  %t50 = load i64, ptr %l46, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = icmp sgt i64 %t51, %t52
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load i64, ptr %l9, !tbaa !24
  %t59 = icmp sgt i64 %t57, 0
  br i1 %t59, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb22
bb19:
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = sub i64 %t61, %t62
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = add i64 %t65, %t66
  %t71 = sub i64 %t69, 1
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = sdiv i64 %t71, %t72
  store i64 %t75, ptr %l53, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb21
bb21:
  %t77 = load i64, ptr %l53, !tbaa !24
  store i64 %t77, ptr %l50, !tbaa !24
  br label %bb22
bb22:
  %t78 = load i64, ptr %l50, !tbaa !24
  store i64 %t78, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  %t79 = load i64, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb24, label %bb25
bb24:
  br label %bb37
bb25:
  br label %bb26
bb26:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = mul i64 %t88, %t89
  %t95 = add i64 %t87, %t92
  store i64 %t95, ptr %l12, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/lower:lowering", ptr %t97, i32 0, i32 16
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t99, i64 %t100)
  store i32 %t103, ptr %l74
  br label %bb27
bb27:
  %t104 = getelementptr %"compiler/lower:level", ptr %l3, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t106 = load i32, ptr %l74, !tbaa !23
  %t108 = icmp eq i32 %t106, %t105
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = load i1, ptr %l6, !tbaa !21
  %t118 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erunsIn(ptr %v0, ptr %t110, i64 %t111, i32 %a2, i1 %t113)
  store i1 %t118, ptr %l82
  br label %bb30
bb29:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb31
bb30:
  %t119 = load i1, ptr %l82, !tbaa !21
  store i1 %t119, ptr %l77, !tbaa !21
  br label %bb31
bb31:
  %t120 = load i1, ptr %l77, !tbaa !21
  br i1 %t120, label %bb32, label %bb33
bb32:
  %t121 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t121)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l11, !tbaa !24
  br label %bb23
bb37:
  store ptr %l5, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb38
bb38:
  %t129 = load i64, ptr %l14, !tbaa !24
  store i64 %t129, ptr %l88, !tbaa !24
  %t130 = load ptr, ptr %l13, !tbaa !29
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t130)
  store i64 %t132, ptr %l90
  br label %bb39
bb39:
  %t133 = load i64, ptr %l88, !tbaa !24
  %t134 = load i64, ptr %l90, !tbaa !24
  %t135 = icmp slt i64 %t133, %t134
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb40, label %bb41
bb40:
  br label %bb46
bb41:
  br label %bb42
bb42:
  %t139 = load ptr, ptr %l13, !tbaa !29
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t139, i64 %t140)
  store i64 %t143, ptr %l95
  br label %bb43
bb43:
  %t144 = load i64, ptr %l95, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/lower:lowering", ptr %t145, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t147, i64 %t144, i32 -1)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t151 = load i64, ptr %l14, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l14, !tbaa !24
  br label %bb38
bb46:
  store %olang.scope zeroinitializer, ptr %s10
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t158 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2erunOrder(ptr %v0, ptr %s0, ptr %s10, ptr %t155, ptr %l5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l103
  br label %bb47
bb47:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  %t160 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %t160
  store ptr %t160, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb48
bb48:
  %t162 = load i64, ptr %l17, !tbaa !24
  store i64 %t162, ptr %l105, !tbaa !24
  %t163 = load ptr, ptr %l16, !tbaa !29
  %t165 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s10, ptr %t163)
  store i64 %t165, ptr %l107
  br label %bb49
bb49:
  %t166 = load i64, ptr %l105, !tbaa !24
  %t167 = load i64, ptr %l107, !tbaa !24
  %t168 = icmp slt i64 %t166, %t167
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb50, label %bb51
bb50:
  br label %bb68
bb51:
  br label %bb52
bb52:
  %t172 = load ptr, ptr %l16, !tbaa !29
  %t173 = load i64, ptr %l17, !tbaa !24
  %t176 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s10, ptr %t172, i64 %t173)
  store i64 %t176, ptr %l112
  br label %bb53
bb53:
  %t177 = load i64, ptr %l112, !tbaa !24
  store i64 %t177, ptr %l18, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/lower:lowering", ptr %t178, i32 0, i32 0
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/lower:Lowerer", ptr %t181, i32 0, i32 8
  %t184 = load i1, ptr %t183, !tbaa !21
  br i1 %t184, label %bb54, label %bb55
bb54:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l18, !tbaa !24
  %t190 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eonError(ptr %v0, ptr %t186, i64 %t187)
  store i1 %t190, ptr %l119
  br label %bb56
bb55:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb57
bb56:
  %t191 = load i1, ptr %l119, !tbaa !21
  %t192 = xor i1 %t191, true
  store i1 %t192, ptr %l116, !tbaa !21
  br label %bb57
bb57:
  %t194 = load i1, ptr %l116, !tbaa !21
  br i1 %t194, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l121, !tbaa !29
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/lower:lowering", ptr %t196, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Body", ptr %t199, i32 0, i32 8
  store ptr %t201, ptr %l124, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/lower:lowering", ptr %t202, i32 0, i32 15
  %t205 = load i64, ptr %l18, !tbaa !24
  %t208 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %s12, ptr %t204, i64 %t205)
  store ptr %t208, ptr %l128
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t209 = load ptr, ptr %l128, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Block", ptr %t209, i32 0, i32 0
  %t212 = load i32, ptr %t211, !tbaa !23
  %t214 = sext i32 %t212 to i64
  %t215 = load ptr, ptr %l124, !tbaa !29
  %t217 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t215, i64 %t214)
  store %"compiler/typed:BlockInfo" %t217, ptr %l132
  br label %bb61
bb61:
  %t218 = getelementptr %"compiler/typed:BlockInfo", ptr %l132, i32 0, i32 2
  %t219 = load %"compiler/source:Span", ptr %t218
  %t220 = getelementptr %"compiler/lower:level", ptr %l3, i32 0, i32 0
  %t221 = load i32, ptr %t220, !tbaa !23
  %t222 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [21 x i64] }, ptr %t223, i32 0, i32 0
  store i64 15, ptr %t224
  %t226 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t219, 0
  %t228 = insertvalue { %"compiler/source:Span", i32, i32 } %t226, i32 %t221, 1
  %t230 = insertvalue { %"compiler/source:Span", i32, i32 } %t228, i32 %t222, 2
  %t231 = getelementptr { i64, [21 x i64] }, ptr %t223, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t230, ptr %t231
  %t232 = load { i64, [21 x i64] }, ptr %t223
  %t234 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 176, i64 8)
  store { i64, [21 x i64] } %t232, ptr %t234
  %t235 = load ptr, ptr %l121, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s12, ptr %t235, ptr %t234)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s12)
  br label %bb63
bb63:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/lower:lowering", ptr %t237, i32 0, i32 43
  %t240 = load i1, ptr %t239, !tbaa !21
  store i1 %t240, ptr %l19, !tbaa !21
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l140, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i64, ptr %l18, !tbaa !24
  %t247 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %t243, i64 %t244)
  store i1 %t247, ptr %l143
  br label %bb64
bb64:
  %t248 = load i1, ptr %l143, !tbaa !21
  %t249 = load ptr, ptr %l140, !tbaa !29
  %t250 = getelementptr %"compiler/lower:lowering", ptr %t249, i32 0, i32 43
  store i1 %t248, ptr %t250, !tbaa !21
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l144, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/lower:lowering", ptr %t252, i32 0, i32 15
  %t255 = load i64, ptr %l18, !tbaa !24
  %t258 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v0, ptr %t254, i64 %t255)
  store ptr %t258, ptr %l148
  br label %bb65
bb65:
  %t259 = load ptr, ptr %l144, !tbaa !29
  %t260 = load ptr, ptr %l148, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v0, ptr %t259, ptr %t260)
  br label %bb66
bb66:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i1, ptr %l19, !tbaa !21
  %t265 = getelementptr %"compiler/lower:lowering", ptr %t261, i32 0, i32 43
  store i1 %t262, ptr %t265, !tbaa !21
  br label %bb67
bb67:
  %t266 = load i64, ptr %l17, !tbaa !24
  %t268 = add i64 %t266, 1
  store i64 %t268, ptr %l17, !tbaa !24
  br label %bb48
bb68:
  call void @__olang_scope_close(ptr %s10)
  store ptr %l5, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb69
bb69:
  %t271 = load i64, ptr %l21, !tbaa !24
  store i64 %t271, ptr %l154, !tbaa !24
  %t272 = load ptr, ptr %l20, !tbaa !29
  %t274 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t272)
  store i64 %t274, ptr %l156
  br label %bb70
bb70:
  %t275 = load i64, ptr %l154, !tbaa !24
  %t276 = load i64, ptr %l156, !tbaa !24
  %t277 = icmp slt i64 %t275, %t276
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb71, label %bb72
bb71:
  br label %bb77
bb72:
  br label %bb73
bb73:
  %t281 = load ptr, ptr %l20, !tbaa !29
  %t282 = load i64, ptr %l21, !tbaa !24
  %t285 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t281, i64 %t282)
  store i64 %t285, ptr %l161
  br label %bb74
bb74:
  %t286 = load i64, ptr %l161, !tbaa !24
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/lower:lowering", ptr %t287, i32 0, i32 16
  %t291 = getelementptr %"compiler/lower:level", ptr %l3, i32 0, i32 0
  %t292 = load i32, ptr %t291, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t289, i64 %t286, i32 %t292)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t296 = load i64, ptr %l21, !tbaa !24
  %t298 = add i64 %t296, 1
  store i64 %t298, ptr %l21, !tbaa !24
  br label %bb69
bb77:
  br label %bb78
bb78:
  %t301 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %s0, ptr %l4)
  store i64 %t301, ptr %l169
  br label %bb79
bb79:
  %t302 = load i64, ptr %l169, !tbaa !24
  %t303 = icmp sgt i64 %t302, 0
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb80, label %bb81
bb80:
  br label %bb89
bb81:
  br label %bb82
bb82:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/lower:lowering", ptr %t307, i32 0, i32 12
  store ptr %t309, ptr %l173, !tbaa !29
  %t311 = call { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %s0, ptr %l4)
  %t312 = extractvalue { i32, %"compiler/lower:level" } %t311, 1
  %t313 = extractvalue { i32, %"compiler/lower:level" } %t311, 0
  store i32 %t313, ptr %l177
  %t314 = icmp ne i32 %t313, 0
  br i1 %t314, label %bb84, label %ok.315, !prof !99
ok.315:
  store %"compiler/lower:level" %t312, ptr %l176
  br label %bb83
bb83:
  %t316 = load %"compiler/lower:level", ptr %l176
  store %"compiler/lower:level" %t316, ptr %l174
  br label %bb86
bb84:
  br label %bb85
bb85:
  call void @__olang_check_failed(ptr @olang_loc_de8dc91cd31c6e72_d86f27d9b5b5bc3e)
  unreachable
bb86:
  %t317 = load ptr, ptr %l173, !tbaa !29
  %t318 = load %"compiler/lower:level", ptr %l174
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t317, %"compiler/lower:level" %t318)
  br label %bb87
bb87:
  br label %bb88
bb88:
  br label %bb78
bb89:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2erunsIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eonError(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  store i1 %t6, ptr %l4, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i1, ptr %l11, !tbaa !21
  store i1 %t12, ptr %l5, !tbaa !21
  %t13 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t15 = trunc i64 0 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb15
bb5:
  br i1 %a3, label %bb6, label %bb7
bb6:
  %t20 = load i1, ptr %l5, !tbaa !21
  store i1 %t20, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t22 = load i1, ptr %l16, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t25 = load i1, ptr %l4, !tbaa !21
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb14
bb11:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb13
bb12:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 23
  %t32 = load i1, ptr %t31, !tbaa !21
  store i1 %t32, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t34 = load i1, ptr %l22, !tbaa !21
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t35 = load i1, ptr %l19, !tbaa !21
  store i1 %t35, ptr %l12, !tbaa !21
  br label %bb27
bb15:
  %t36 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t38 = trunc i64 1 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t41 = load i1, ptr %l4, !tbaa !21
  br i1 %t41, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb21
bb20:
  %t43 = load i1, ptr %l5, !tbaa !21
  store i1 %t43, ptr %l28, !tbaa !21
  br label %bb21
bb21:
  %t45 = load i1, ptr %l28, !tbaa !21
  store i1 %t45, ptr %l12, !tbaa !21
  br label %bb27
bb22:
  %t46 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t48 = trunc i64 2 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t51 = load i1, ptr %l5, !tbaa !21
  store i1 %t51, ptr %l12, !tbaa !21
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_8bb397a11343a132_be3070d4a238d1be)
  unreachable
bb27:
  %t53 = load i1, ptr %l12, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2escalar(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l14
  br label %bb4
bb4:
  %t24 = load i1, ptr %l14, !tbaa !21
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l10, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i32
  %l13 = alloca %"compiler/mir:Local"
  %l23 = alloca i1
  %l24 = alloca { i64, [1 x i64] }
  %l29 = alloca { i64, [1 x i64] }
  %l30 = alloca i32
  %l39 = alloca { i64, ptr }
  %l49 = alloca { i64, [1 x i64] }
  %l50 = alloca ptr
  %l56 = alloca %"compiler/typed:Local"
  %l59 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t8 = alloca { i64, [1 x i64] }, align 8
  %t100 = alloca { i64, [2 x i64] }, align 8
  %t125 = alloca { i64, [2 x i64] }, align 8
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
  store { i64, [1 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [1 x i64] }, ptr %t8, i32 0, i32 0
  store i64 2, ptr %t9
  %t10 = load { i64, [1 x i64] }, ptr %t8
  store { i64, [1 x i64] } %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 3
  %t15 = getelementptr %"compiler/mir:Fn", ptr %t14, i32 0, i32 7
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t21 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t15, i64 %t18)
  store %"compiler/mir:Local" %t21, ptr %l13
  br label %bb4
bb4:
  %t22 = getelementptr %"compiler/mir:Local", ptr %l13, i32 0, i32 4
  %t23 = load { i64, [1 x i64] }, ptr %t22
  store { i64, [1 x i64] } %t23, ptr %l2
  %t25 = load { i64, [1 x i64] }, ptr %l2
  %t27 = extractvalue { i64, [1 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 3
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t32, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 13
  %t37 = load i32, ptr %l1, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H989114ff406840d3a5cfe99ba734fa56(ptr %v0, ptr %t36, i64 %t39)
  store i1 %t42, ptr %l23
  br label %bb8
bb8:
  %t43 = load i1, ptr %l23, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 13
  %t47 = load i32, ptr %l1, !tbaa !23
  %t49 = sext i32 %t47 to i64
  %t52 = call { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %t46, i64 %t49)
  %t53 = extractvalue { i32, { i64, [1 x i64] } } %t52, 1
  %t54 = extractvalue { i32, { i64, [1 x i64] } } %t52, 0
  store i32 %t54, ptr %l30
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb12, label %ok.56, !prof !99
ok.56:
  store { i64, [1 x i64] } %t53, ptr %l29
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t57 = load { i64, [1 x i64] }, ptr %l29
  store { i64, [1 x i64] } %t57, ptr %l24
  br label %bb14
bb12:
  br label %bb13
bb13:
  %t58 = load { i64, [1 x i64] }, ptr %l2
  store { i64, [1 x i64] } %t58, ptr %l24
  br label %bb14
bb14:
  %t60 = load { i64, [1 x i64] }, ptr %l24
  store { i64, [1 x i64] } %t60, ptr %rv
  br label %ret
bb15:
  %t61 = load i32, ptr %l1, !tbaa !23
  %t63 = sext i32 %t61 to i64
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:lowering", ptr %t64, i32 0, i32 30
  %t67 = getelementptr %"compiler/typed:Plan", ptr %t66, i32 0, i32 1
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t73 = icmp slt i64 %t63, %t70
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:lowering", ptr %t75, i32 0, i32 30
  %t78 = getelementptr %"compiler/typed:Plan", ptr %t77, i32 0, i32 1
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  store { i64, ptr } %t79, ptr %l39, !tbaa !27
  %t80 = load i32, ptr %l1, !tbaa !23
  %t82 = sext i32 %t80 to i64
  %t84 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr { i64, [2 x i64] }, ptr %t85, i64 %t82
  %t87 = load { i64, [2 x i64] }, ptr %t86
  store { i64, [2 x i64] } %t87, ptr %l3
  %t89 = load { i64, [2 x i64] }, ptr %l3
  %t91 = extractvalue { i64, [2 x i64] } %t89, 0
  %t92 = icmp eq i64 %t91, 1
  br i1 %t92, label %bb18, label %bb19
bb17:
  br label %bb28
bb18:
  %t94 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t95 = getelementptr { i32 }, ptr %t94, i32 0, i32 0
  %t96 = load i32, ptr %t95
  store i32 %t96, ptr %l4, !tbaa !23
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l4, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t100
  %t101 = getelementptr { i64, [2 x i64] }, ptr %t100, i32 0, i32 0
  store i64 1, ptr %t101
  %t103 = insertvalue { i32 } undef, i32 %t99, 0
  %t104 = getelementptr { i64, [2 x i64] }, ptr %t100, i32 0, i32 1
  store { i32 } %t103, ptr %t104
  %t105 = load { i64, [2 x i64] }, ptr %t100
  %t108 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t98, { i64, [2 x i64] } %t105)
  store { i64, [1 x i64] } %t108, ptr %l49
  br label %bb21
bb21:
  %t109 = load { i64, [1 x i64] }, ptr %l49
  store { i64, [1 x i64] } %t109, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_7c44d6a11fe580a3_63a95cd13601e77f)
  unreachable
bb27:
  br label %bb28
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l50, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/lower:lowering", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Body", ptr %t114, i32 0, i32 7
  %t117 = load i32, ptr %l1, !tbaa !23
  %t119 = sext i32 %t117 to i64
  %t122 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t116, i64 %t119)
  store %"compiler/typed:Local" %t122, ptr %l56
  br label %bb29
bb29:
  %t123 = getelementptr %"compiler/typed:Local", ptr %l56, i32 0, i32 3
  %t124 = load i32, ptr %t123, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [2 x i64] }, ptr %t125, i32 0, i32 0
  store i64 1, ptr %t126
  %t128 = insertvalue { i32 } undef, i32 %t124, 0
  %t129 = getelementptr { i64, [2 x i64] }, ptr %t125, i32 0, i32 1
  store { i32 } %t128, ptr %t129
  %t130 = load { i64, [2 x i64] }, ptr %t125
  %t131 = load ptr, ptr %l50, !tbaa !29
  %t133 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t131, { i64, [2 x i64] } %t130)
  store { i64, [1 x i64] } %t133, ptr %l59
  br label %bb30
bb30:
  %t134 = load { i64, [1 x i64] }, ptr %l59
  store { i64, [1 x i64] } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eviewCopied(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i1
  %l20 = alloca i1
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca { i64, [1 x i64] }
  %l66 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t23 = alloca { i64, [1 x i64] }, align 8
  %t94 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t4, i32 %a1)
  store i64 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = icmp sle i64 %t9, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l20
  br label %bb4
bb4:
  %t17 = load i1, ptr %l20, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l17, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load { i64, [4 x i64] }, ptr %l2
  store { i64, [4 x i64] } %t21, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store { i64, [1 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t23, i32 0, i32 0
  store i64 2, ptr %t24
  %t25 = load { i64, [1 x i64] }, ptr %t23
  store { i64, [1 x i64] } %t25, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lower:lowering", ptr %t27, i32 0, i32 3
  %t30 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 6
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l26
  br label %bb9
bb9:
  %t33 = load i64, ptr %l26, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb15
bb12:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l33, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l33, !tbaa !24
  store i64 %t60, ptr %l30, !tbaa !24
  br label %bb15
bb15:
  %t61 = load i64, ptr %l30, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l11, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/lower:lowering", ptr %t80, i32 0, i32 3
  %t83 = getelementptr %"compiler/mir:Fn", ptr %t82, i32 0, i32 6
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t83, i64 %t84)
  store { i64, [1 x i64] } %t87, ptr %l54
  br label %bb20
bb20:
  %t88 = load { i64, [1 x i64] }, ptr %l54
  %t90 = extractvalue { i64, [1 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 1
  br i1 %t91, label %bb21, label %bb22
bb21:
  %t93 = load i64, ptr %l11, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [1 x i64] }, ptr %t94, i32 0, i32 0
  store i64 1, ptr %t95
  %t97 = insertvalue { i64 } undef, i64 %t93, 0
  %t98 = getelementptr { i64, [1 x i64] }, ptr %t94, i32 0, i32 1
  store { i64 } %t97, ptr %t98
  %t99 = load { i64, [1 x i64] }, ptr %t94
  store { i64, [1 x i64] } %t99, ptr %l5
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t101 = load i64, ptr %l10, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l10, !tbaa !24
  br label %bb16
bb25:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, [4 x i64] }, ptr %l2
  %t107 = load i32, ptr %l3, !tbaa !23
  %t109 = load { i64, [1 x i64] }, ptr %l5
  %t115 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t105, { i64, [4 x i64] } %t106, i32 %t107, %"compiler/source:Span" %a4, { i64, [1 x i64] } %t109, i1 false)
  store { i64, [4 x i64] } %t115, ptr %l66
  br label %bb26
bb26:
  %t116 = load { i64, [4 x i64] }, ptr %l66
  store { i64, [4 x i64] } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewValue(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i1
  %l11 = alloca i1
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
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l11
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l11, !tbaa !21
  store i1 %t20, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l7, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2flower_2edropArgAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:DerivedArg"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/typed:DerivedArg"
  %l18 = alloca i1
  %rv = alloca { i64, [2 x i64] }
  %t41 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call %"compiler/typed:DerivedArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eAt__H3d322c834b4b1582ab12028f5b0f20b9(ptr %v0, ptr %t13, i64 %t14)
  store %"compiler/typed:DerivedArg" %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load %"compiler/typed:DerivedArg", ptr %l14
  store %"compiler/typed:DerivedArg" %t18, ptr %l5
  %t19 = getelementptr %"compiler/typed:DerivedArg", ptr %l5, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t24 = icmp eq i64 %t20, %a1
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = getelementptr %"compiler/typed:DerivedArg", ptr %l5, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  %t31 = icmp eq i64 %t27, %a2
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = getelementptr %"compiler/typed:DerivedArg", ptr %l5, i32 0, i32 2
  %t35 = load { i64, [2 x i64] }, ptr %t34
  store { i64, [2 x i64] } %t35, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  store { i64, [2 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t41, i32 0, i32 0
  store i64 0, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t41
  store { i64, [2 x i64] } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2flower_2evalueRootLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i1
  %l47 = alloca i64
  %l48 = alloca ptr
  %l49 = alloca i1
  %l58 = alloca i1
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l65 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
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
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l1, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = call i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l21
  br label %bb10
bb10:
  %t34 = load i64, ptr %l21, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  br label %bb50
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 10
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l23, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Slice", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l30
  br label %bb17
bb17:
  %t56 = load i64, ptr %l30, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  br label %bb50
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 18}
  %t64 = icmp eq i64 %t62, 5
  store i1 %t64, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l32, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t68, i32 0, i32 2
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t72 = load ptr, ptr %l3, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Promote", ptr %t72, i32 0, i32 0
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = call i64 @compiler_2flower_2evalueRootLocal(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l39
  br label %bb24
bb24:
  %t78 = load i64, ptr %l39, !tbaa !24
  store i64 %t78, ptr %l7, !tbaa !24
  br label %bb50
bb25:
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t80 = load ptr, ptr %l40, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l40, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 18}
  %t86 = icmp eq i64 %t84, 17
  store i1 %t86, ptr %l41, !tbaa !21
  br label %bb27
bb27:
  %t87 = load i1, ptr %l41, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr { i64, [5 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t90, i32 0, i32 2
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l4, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t94 = load ptr, ptr %l4, !tbaa !29
  %t96 = call i64 @compiler_2flower_2evalueRootLocal(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l47
  br label %bb31
bb31:
  %t97 = load i64, ptr %l47, !tbaa !24
  store i64 %t97, ptr %l7, !tbaa !24
  br label %bb50
bb32:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t99 = load ptr, ptr %l48, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb33, label %bb34
bb33:
  %t102 = load ptr, ptr %l48, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 18}
  %t105 = icmp eq i64 %t103, 9
  store i1 %t105, ptr %l49, !tbaa !21
  br label %bb34
bb34:
  %t106 = load i1, ptr %l49, !tbaa !21
  br i1 %t106, label %bb35, label %bb36
bb35:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t109, i32 0, i32 2
  %t111 = load i32, ptr %t110, !range !{i32 0, i32 52}
  store i32 %t111, ptr %l5
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr { i64, [5 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t115, i32 0, i32 4
  %t117 = load { i64, ptr }, ptr %t116
  store { i64, ptr } %t117, ptr %l6, !tbaa !27
  br label %bb37
bb36:
  br label %bb45
bb37:
  %t119 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t121 = trunc i64 20 to i32
  %t122 = icmp eq i32 %t119, %t121
  br i1 %t122, label %bb38, label %bb39
bb38:
  %t124 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t128 = icmp eq i64 %t126, 1
  store i1 %t128, ptr %l58, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb40
bb40:
  %t130 = load i1, ptr %l58, !tbaa !21
  br i1 %t130, label %bb41, label %bb42
bb41:
  %t131 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t131, ptr %l63, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr ptr, ptr %t133, i64 0
  %t135 = load ptr, ptr %t134, !tbaa !39
  %t137 = call i64 @compiler_2flower_2evalueRootLocal(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l65
  br label %bb43
bb42:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb44
bb43:
  %t138 = load i64, ptr %l65, !tbaa !24
  store i64 %t138, ptr %l62, !tbaa !24
  br label %bb44
bb44:
  %t139 = load i64, ptr %l62, !tbaa !24
  store i64 %t139, ptr %l7, !tbaa !24
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_2d407f0f8b220e9a_96a1481a89b32b26)
  unreachable
bb50:
  %t140 = load i64, ptr %l7, !tbaa !24
  store i64 %t140, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d2 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"unhandled error" }>, align 8
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

@.d3 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a field of a packed struct lent writably" }>, align 8
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
define internal void @olang_lambda_4(ptr %env, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca %"compiler/mir:Lvalue"
  %t5 = alloca { i64, [1 x i64] }, align 8
  %cp0 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/mir:Lvalue", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/source:Span", ptr %cp2, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/mir:Lvalue", %"compiler/source:Span", ptr }, ptr %env, i32 0, i32 3
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [1 x i64] }, ptr %t5, i32 0, i32 0
  store i64 1, ptr %t6
  %t8 = insertvalue { i32 } undef, i32 %a0, 0
  %t9 = getelementptr { i64, [1 x i64] }, ptr %t5, i32 0, i32 1
  store { i32 } %t8, ptr %t9
  %t10 = load { i64, [1 x i64] }, ptr %t5
  %t14 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %vc0, ptr %t2, %"compiler/mir:Lvalue" %cv1, { i64, [1 x i64] } %t10)
  store %"compiler/mir:Lvalue" %t14, ptr %l9
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = load %"compiler/mir:Lvalue", ptr %l9
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %vc0, ptr %t16, %"compiler/mir:Lvalue" %t17, i64 1, %"compiler/source:Span" %cv2)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

@.d5 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c" (stored, captured or handed on)" }>, align 8
@.d6 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" (given to body " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d7 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" parameter " }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@__olang_empty_array = external constant [16 x i64]
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fdef55e2919415e3_7c40141ab4e8627 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsParts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2eAnyItemNew(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ebangNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewithPayload(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etextData(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epackedRead(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2evalueCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCallee(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_21e9da82ebd620c7_b6074e807b9f75fb = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/lower:level" @compiler_2flower_3alevel_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, %"compiler/lower:level" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_f0e3ab530de58942_134f25d81f1c0b96 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d0c953a1a1b280f7_b575c5e04bc1bbab = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedAssign(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecountedLocal(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ezeroLocal(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estepType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
@olang_loc_ef902e6f1f1cf371_1c67ccc72296fcd = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i64 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2erunOrder(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardHolder(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eGuardOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a6)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eimmutableGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldSrc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_bfe20f6aa057d6f5_318d2eb3f782ecf9 = external constant [0 x i8]
declare i64 @compiler_2flower_2ebaseLocal(%"compiler/mir:Lvalue" %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
@olang_loc_2fdfc612472fa755_10281278e8bf3051 = external constant [0 x i8]
@olang_loc_eccf1a297c9f6dbd_b8c50aa3d74140a9 = external constant [0 x i8]
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f84e287748fb5e0c_a7fab5dda1d7c518 = external constant [0 x i8]
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_3175700f57e01d19_45cf7091add0d985 = external constant [0 x i8]
@olang_loc_579e7356b043c39a_4d305c4fde145a66 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadHere(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_15f99fcbd43babda_53e78f535034c6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrWord(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i32 %a6, %"compiler/source:Span" %a7)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d37cf7930152773d_5167e95feb746d79 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eRetirePlaces(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprimExpr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, i32 %a4, %"compiler/source:Span" %a5)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %a0, i64 %a1, i1 %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %v0, i64 %a0)
declare { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
@olang_loc_3ef62952ecee62f3_777b4c56ce2caf3f = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eonError(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_de8dc91cd31c6e72_d86f27d9b5b5bc3e = external constant [0 x i8]
@olang_loc_8bb397a11343a132_be3070d4a238d1be = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H989114ff406840d3a5cfe99ba734fa56(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_7c44d6a11fe580a3_63a95cd13601e77f = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %v0, ptr %a0)
declare %"compiler/typed:DerivedArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eAt__H3d322c834b4b1582ab12028f5b0f20b9(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2flower_2eplaceRootLocal(ptr %v0, ptr %a0)
@olang_loc_2d407f0f8b220e9a_96a1481a89b32b26 = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2eextended(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [1 x i64] } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2, %"compiler/source:Span" %a3)

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
