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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/lower:CloneSum" = type { i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:CloneHand" = type { i64, { i64, [2 x i64] }, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:RefsKept", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:RefsKept" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, i64, %"compiler/source:Span", { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef" = type { { i64, [2 x i64] }, i64 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/lower:tryCtx" = type { i64, { i64, ptr }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { ptr, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/mir:GenInfo", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/lower:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/lower:loopCtx" = type { i32, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:liveness" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/lower:relPath" = type { i64, { i64, ptr }, i1, i1, i64, i64, i32, i64 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/lower:CloneSite" = type { { i64, [2 x i64] }, i64, { i64, [2 x i64] }, i32 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
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

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2eCloneSumText(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/lower:CloneSum"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/lower:CloneHand"
  %l11 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:CloneSum"
  %l17 = alloca %"compiler/lower:CloneSum"
  %l18 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca i64
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca %"compiler/lower:CloneHand"
  %l48 = alloca ptr
  %l50 = alloca { i64, [2 x i64] }
  %l51 = alloca i64
  %l52 = alloca i64
  %l54 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %t1, i32 0, i32 48
  store ptr %t3, ptr %l11, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ecloneSum(ptr %v0, ptr %t4, { i64, [2 x i64] } %a1)
  store i64 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store %"compiler/lower:CloneSum" %t11, ptr %l15
  br label %bb2
bb2:
  %t13 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %s0, ptr %l15)
  store %"compiler/lower:CloneSum" %t13, ptr %l17
  br label %bb3
bb3:
  %t14 = load %"compiler/lower:CloneSum", ptr %l17
  store %"compiler/lower:CloneSum" %t14, ptr %l2
  %t15 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t15, ptr %l18
  br label %bb4
bb4:
  %t16 = load %"std/prelude/text:StringBuilder", ptr %l18
  store %"std/prelude/text:StringBuilder" %t16, ptr %l3
  %t17 = getelementptr %"compiler/lower:CloneSum", ptr %l2, i32 0, i32 0
  %t18 = load i1, ptr %t17, !tbaa !21
  %t19 = getelementptr %"compiler/lower:CloneSum", ptr %l2, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t24 = select i1 %t18, ptr @.c1, ptr @.c2
  %t25 = select i1 %t18, i64 4, i64 5
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t31 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t32 = add i64 %t29, %t31
  %t33 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t21, i64 %t22)
  %t37 = getelementptr i8, ptr %t36, i64 %t22
  call void @olang_textcopy(ptr %t37, ptr %t24, i64 %t25)
  %t38 = getelementptr i8, ptr %t37, i64 %t25
  call void @olang_textcopy(ptr %t38, ptr %t27, i64 %t28)
  %t39 = getelementptr i8, ptr %t38, i64 %t28
  %t40 = call i64 @__olang_fmt_i64(ptr %t39, i64 %t20)
  %t41 = getelementptr i8, ptr %t39, i64 %t31
  call void @olang_textcopy(ptr %t41, ptr %t33, i64 %t34)
  %t42 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t36, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = extractvalue { i64, ptr } %t43, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t50)
  br label %bb5
bb5:
  %t53 = getelementptr %"compiler/lower:CloneSum", ptr %l2, i32 0, i32 2
  store ptr %t53, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t55 = load i64, ptr %l5, !tbaa !24
  store i64 %t55, ptr %l25, !tbaa !24
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t56)
  store i64 %t58, ptr %l27
  br label %bb7
bb7:
  %t59 = load i64, ptr %l25, !tbaa !24
  %t60 = load i64, ptr %l27, !tbaa !24
  %t61 = icmp slt i64 %t59, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l32
  br label %bb11
bb11:
  %t70 = load i64, ptr %l32, !tbaa !24
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t70)
  %t76 = add i64 %t73, %t75
  %t77 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t72, i64 %t73)
  %t78 = getelementptr i8, ptr %t77, i64 %t73
  %t79 = call i64 @__olang_fmt_i64(ptr %t78, i64 %t70)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t77, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = extractvalue { i64, ptr } %t81, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l3, { i64, ptr } %t88)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l5, !tbaa !24
  br label %bb6
bb14:
  %t95 = getelementptr %"compiler/lower:CloneSum", ptr %l2, i32 0, i32 3
  store ptr %t95, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s7
  %t97 = load i64, ptr %l8, !tbaa !24
  store i64 %t97, ptr %l40, !tbaa !24
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2eLen__Hdac5394885c7d3b88563717d707df765(ptr %s0, ptr %t98)
  store i64 %t100, ptr %l42
  br label %bb16
bb16:
  %t101 = load i64, ptr %l40, !tbaa !24
  %t102 = load i64, ptr %l42, !tbaa !24
  %t103 = icmp slt i64 %t101, %t102
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s7)
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t108 = load i64, ptr %l8, !tbaa !24
  %t111 = call %"compiler/lower:CloneHand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2eAt_3ccompiler_2flower_3aCloneHand_3e(ptr %s0, ptr %t107, i64 %t108)
  store %"compiler/lower:CloneHand" %t111, ptr %l47
  br label %bb20
bb20:
  %t112 = load %"compiler/lower:CloneHand", ptr %l47
  store %"compiler/lower:CloneHand" %t112, ptr %l9
  store ptr %l3, ptr %l48, !tbaa !29
  %t113 = getelementptr %"compiler/lower:CloneHand", ptr %l9, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/lower:CloneHand", ptr %l9, i32 0, i32 1
  %t116 = load { i64, [2 x i64] }, ptr %t115
  store { i64, [2 x i64] } %t116, ptr %l50
  %t117 = getelementptr %"compiler/lower:CloneHand", ptr %l9, i32 0, i32 2
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l51, !tbaa !24
  %t119 = getelementptr %"compiler/lower:CloneHand", ptr %l9, i32 0, i32 3
  %t120 = load i64, ptr %t119, !tbaa !24
  store i64 %t120, ptr %l52, !tbaa !24
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  %t121 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t122 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t121, i64 %t122)
  %t124 = call ptr @__olang_sb_room(ptr %s8, i64 24)
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t114)
  call void @__olang_sb_add(ptr %s8, i64 %t125)
  %t126 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t126, i64 %t127)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aFnKey(ptr %s8, ptr %l50, i64 0)
  br label %bb21
bb21:
  %t129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t129, i64 %t130)
  %t131 = load i64, ptr %l51, !tbaa !24
  %t132 = call ptr @__olang_sb_room(ptr %s8, i64 24)
  %t133 = call i64 @__olang_fmt_i64(ptr %t132, i64 %t131)
  call void @__olang_sb_add(ptr %s8, i64 %t133)
  %t134 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t134, i64 %t135)
  %t136 = load i64, ptr %l52, !tbaa !24
  %t137 = call ptr @__olang_sb_room(ptr %s8, i64 24)
  %t138 = call i64 @__olang_fmt_i64(ptr %t137, i64 %t136)
  call void @__olang_sb_add(ptr %s8, i64 %t138)
  %t139 = load ptr, ptr %s8
  %t140 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t141 = load i64, ptr %t140
  %t142 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t141)
  call void @olang_textcopy(ptr %t142, ptr %t139, i64 %t141)
  %t143 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l54, !tbaa !27
  %t145 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t146 = load ptr, ptr %t145
  %t147 = icmp ne ptr %t146, null
  br i1 %t147, label %sbgrew.148, label %sbdone.149
sbgrew.148:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.149
sbdone.149:
  %t150 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  %t152 = extractvalue { i64, ptr } %t150, 1
  %t153 = mul i64 %t151, 1
  %t154 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t153)
  call void @llvm.memcpy.p0.p0.i64(ptr %t154, ptr %t152, i64 %t153, i1 false)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  %t157 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t157, { i64, ptr } %t156)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s7)
  br label %bb23
bb23:
  %t159 = load i64, ptr %l8, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l8, !tbaa !24
  br label %bb15
bb24:
  %t164 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t164, ptr %l59
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t165 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t61 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t59, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
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
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t76, i64 584, i1 false)
  br label %bb16
bb15:
  br label %bb20
bb16:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t79, ptr %s3, ptr %l48)
  call void @llvm.memmove.p0.p0.i64(ptr %l50, ptr %t79, i64 584, i1 false)
  br label %bb17
bb17:
  %t81 = getelementptr %"compiler/typed:Plan", ptr %l50, i32 0, i32 17
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
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/lower:Lowerer", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l14
  br label %bb2
bb2:
  %t9 = load i64, ptr %l14, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l21, !tbaa !24
  store i64 %t36, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb10, label %bb11
bb10:
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:Lowerer", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t59, i64 %t54)
  store ptr %t64, ptr %l43
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l43, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 1
  %t68 = load { i64, [2 x i64] }, ptr %t67
  store { i64, [2 x i64] } %t68, ptr %l8
  %t70 = load { i64, [2 x i64] }, ptr %l8
  %t72 = extractvalue { i64, [2 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 6
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t76 = getelementptr { i64, i32 }, ptr %t75, i32 0, i32 0
  %t77 = load i64, ptr %t76
  store i64 %t77, ptr %l9, !tbaa !24
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t79 = load i64, ptr %l9, !tbaa !24
  %t84 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %l1, i64 %t79)
  store i1 %t84, ptr %l52
  br label %bb17
bb17:
  %t85 = load i1, ptr %l52, !tbaa !21
  %t86 = xor i1 %t85, true
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t88 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l1, i64 %t88)
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
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb9
bb29:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ePreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %t166, i64 440, i1 false)
  br label %bb24
bb24:
  %t168 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 440, i64 8)
  store ptr %t168, ptr %lp12
  %t169 = load ptr, ptr %lp12
  call void @llvm.memmove.p0.p0.i64(ptr %t169, ptr %l90, i64 440, i1 false)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t192, i64 3552, i1 false)
  br label %bb26
bb26:
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 3552, i64 8)
  store ptr %t197, ptr %lp13
  %t198 = load ptr, ptr %lp13
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %l102, i64 3552, i1 false)
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
  %t213 = getelementptr %"compiler/lower:lowering", ptr %t212, i32 0, i32 13
  %t214 = load i1, ptr %t213, !tbaa !21
  %t217 = getelementptr %"compiler/lower:Lowerer", ptr %t211, i32 0, i32 11
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
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t36, i64 768, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l24, i64 768, i1 false)
  %t39 = getelementptr %"compiler/typed:LocalUses", ptr %l2, i32 0, i32 20
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
  %t43 = getelementptr %"compiler/typed:LocalUses", ptr %t41, i32 0, i32 10
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
  %t69 = getelementptr %"compiler/typed:LocalUses", ptr %t67, i32 0, i32 13
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
  %t121 = getelementptr %"compiler/typed:LocalUses", ptr %t119, i32 0, i32 13
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
  %t134 = getelementptr %"compiler/typed:LocalUses", ptr %t132, i32 0, i32 14
  %t135 = load i64, ptr %l11, !tbaa !24
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t134, i64 %t135)
  store i64 %t138, ptr %l90
  br label %bb38
bb37:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb41
bb38:
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr %"compiler/typed:LocalUses", ptr %t139, i32 0, i32 15
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
  %t161 = getelementptr %"compiler/typed:LocalUses", ptr %t159, i32 0, i32 9
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
  %t213 = getelementptr %"compiler/typed:LocalUses", ptr %t211, i32 0, i32 9
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
  %t24 = getelementptr %"compiler/lower:Lowerer", ptr %t22, i32 0, i32 36
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
  %t36 = getelementptr %"compiler/lower:Lowerer", ptr %t34, i32 0, i32 36
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
  %t55 = getelementptr %"compiler/lower:Lowerer", ptr %t53, i32 0, i32 36
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
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l66 = alloca i1
  %l70 = alloca ptr
  %l72 = alloca i64
  %l73 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l92 = alloca i1
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
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
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
  store i1 %t23, ptr %l22
  br label %bb6
bb6:
  %t24 = load i1, ptr %l22, !tbaa !21
  store i1 %t24, ptr %l12, !tbaa !21
  br label %bb63
bb7:
  %t25 = load ptr, ptr %l3, !tbaa !29
  store ptr %t25, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t26 = load ptr, ptr %l23, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l23, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 9
  store i1 %t32, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l24, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 51}
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
  %t46 = load i32, ptr %l5, !range !{i32 0, i32 51}
  %t48 = trunc i64 20 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t55 = icmp eq i64 %t53, 1
  store i1 %t55, ptr %l33, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l33, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t61, ptr %l41, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 0
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t70 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshRet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t58, ptr %t59, ptr %t60, ptr %t65)
  store i1 %t70, ptr %l43
  br label %bb18
bb17:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb19
bb18:
  %t71 = load i1, ptr %l43, !tbaa !21
  store i1 %t71, ptr %l37, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l37, !tbaa !21
  store i1 %t72, ptr %l12, !tbaa !21
  br label %bb63
bb20:
  %t73 = load ptr, ptr %l3, !tbaa !29
  store ptr %t73, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t74 = load ptr, ptr %l44, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l44, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 18}
  %t80 = icmp eq i64 %t78, 17
  store i1 %t80, ptr %l45, !tbaa !21
  br label %bb22
bb22:
  %t81 = load i1, ptr %l45, !tbaa !21
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
  store i1 %t96, ptr %l54
  br label %bb26
bb26:
  %t97 = load i1, ptr %l54, !tbaa !21
  store i1 %t97, ptr %l12, !tbaa !21
  br label %bb63
bb27:
  %t98 = load ptr, ptr %l3, !tbaa !29
  store ptr %t98, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t99 = load ptr, ptr %l55, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb28, label %bb29
bb28:
  %t102 = load ptr, ptr %l55, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 18}
  %t105 = icmp eq i64 %t103, 6
  store i1 %t105, ptr %l56, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l56, !tbaa !21
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
  store ptr %t116, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t117 = load ptr, ptr %l62, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb33, label %bb34
bb33:
  %t120 = load ptr, ptr %l62, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 5}
  %t123 = icmp eq i64 %t121, 0
  store i1 %t123, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t124 = load i1, ptr %l63, !tbaa !21
  br i1 %t124, label %bb35, label %bb36
bb35:
  %t125 = load ptr, ptr %l8, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Call", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { i32 }, ptr %t130, i32 0, i32 0
  %t132 = load i32, ptr %t131
  store i32 %t132, ptr %l9, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l70, !tbaa !29
  %t135 = load ptr, ptr %l8, !tbaa !29
  %t137 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v3, ptr %t135)
  store i64 %t137, ptr %l72
  br label %bb37
bb36:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb39
bb37:
  %t138 = load ptr, ptr %l70, !tbaa !29
  %t139 = load i64, ptr %l72, !tbaa !24
  %t140 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshResult(ptr %v0, ptr %t138, i64 %t139)
  store i1 %t140, ptr %l73
  br label %bb38
bb38:
  %t141 = load i1, ptr %l73, !tbaa !21
  store i1 %t141, ptr %l66, !tbaa !21
  br label %bb39
bb39:
  %t142 = load i1, ptr %l66, !tbaa !21
  store i1 %t142, ptr %l12, !tbaa !21
  br label %bb63
bb40:
  %t143 = load ptr, ptr %l3, !tbaa !29
  store ptr %t143, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t144 = load ptr, ptr %l74, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb41, label %bb42
bb41:
  %t147 = load ptr, ptr %l74, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 18}
  %t150 = icmp eq i64 %t148, 2
  store i1 %t150, ptr %l75, !tbaa !21
  br label %bb42
bb42:
  %t151 = load i1, ptr %l75, !tbaa !21
  br i1 %t151, label %bb43, label %bb44
bb43:
  %t152 = load ptr, ptr %l3, !tbaa !29
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t154, i32 0, i32 2
  %t156 = load ptr, ptr %t155
  store ptr %t156, ptr %l10, !tbaa !29
  br label %bb45
bb44:
  br label %bb58
bb45:
  %t158 = load ptr, ptr %l10, !tbaa !29
  store ptr %t158, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t159 = load ptr, ptr %l81, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb46, label %bb47
bb46:
  %t162 = load ptr, ptr %l81, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 8}
  %t165 = icmp eq i64 %t163, 0
  store i1 %t165, ptr %l82, !tbaa !21
  br label %bb47
bb47:
  %t166 = load i1, ptr %l82, !tbaa !21
  br i1 %t166, label %bb48, label %bb49
bb48:
  %t167 = load ptr, ptr %l10, !tbaa !29
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t169, i32 0, i32 2
  %t171 = load i32, ptr %t170
  store i32 %t171, ptr %l11, !tbaa !23
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t175 = load ptr, ptr %l2, !tbaa !29
  %t176 = load i32, ptr %l11, !tbaa !23
  %t178 = sext i32 %t176 to i64
  %t183 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t173, ptr %t174, ptr %t175, i64 %t178)
  store i1 %t183, ptr %l92
  br label %bb51
bb51:
  %t184 = load i1, ptr %l92, !tbaa !21
  store i1 %t184, ptr %l80, !tbaa !21
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_7e98ebbcfc7ae681_fbeaec9fd6de6485)
  unreachable
bb57:
  %t185 = load i1, ptr %l80, !tbaa !21
  store i1 %t185, ptr %l12, !tbaa !21
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_80862e2151cf42f0_7c300e18841fcdd4)
  unreachable
bb63:
  %t186 = load i1, ptr %l12, !tbaa !21
  store i1 %t186, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l17, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l17, !tbaa !27
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t14, { i64, ptr } %t15)
  br label %bb6
bb6:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %t16)
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
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
  %t121 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_14, 0
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
  %t145 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2flower_2ecompiler_2flower_3aLowerer_2enoteCloneCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, %"compiler/mir:Call" %a3, { i64, ptr } %a4, i64 %a5) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:Call"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, [7 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca i64
  %l23 = alloca i64
  %l33 = alloca { i64, [4 x i64] }
  %l40 = alloca i64
  %l42 = alloca i1
  %l43 = alloca i64
  %l47 = alloca i64
  %l55 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l70 = alloca i64
  %l73 = alloca i64
  %l97 = alloca { i64, [4 x i64] }
  %l100 = alloca { i64, [4 x i64] }
  %l101 = alloca i64
  %l108 = alloca i1
  %l112 = alloca i64
  %l114 = alloca i1
  %l119 = alloca i1
  %l121 = alloca ptr
  %l123 = alloca i64
  %l124 = alloca %"compiler/mir:Local"
  %l126 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l137 = alloca %"compiler/lower:CloneHand"
  %s7 = alloca %olang.scope
  %t237 = alloca { i64, [2 x i64] }, align 8
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/mir:Call" %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l6, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 0
  %t9 = load { i64, [7 x i64] }, ptr %t8
  store { i64, [7 x i64] } %t9, ptr %l7
  %t11 = load { i64, [7 x i64] }, ptr %l7
  %t13 = extractvalue { i64, [7 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 2
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t17 = getelementptr { { i64, [4 x i64] } }, ptr %t16, i32 0, i32 0
  %t18 = load { i64, [4 x i64] }, ptr %t17
  store { i64, [4 x i64] } %t18, ptr %l8
  br label %bb3
bb2:
  br label %bb23
bb3:
  %t20 = load { i64, [4 x i64] }, ptr %l8
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = call { i64, [4 x i64] } @compiler_2flower_2eKnownOf(ptr %v3, { i64, [4 x i64] } %t20, { i64, ptr } %t21)
  store { i64, [4 x i64] } %t24, ptr %l33
  br label %bb4
bb4:
  %t25 = load { i64, [4 x i64] }, ptr %l33
  store { i64, [4 x i64] } %t25, ptr %l9
  %t26 = load { i64, [4 x i64] }, ptr %l9
  %t28 = extractvalue { i64, [4 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 1
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = getelementptr { i64, [4 x i64] }, ptr %l9, i32 0, i32 1
  %t32 = getelementptr { i64 }, ptr %t31, i32 0, i32 0
  %t33 = load i64, ptr %t32
  store i64 %t33, ptr %l10, !tbaa !24
  br label %bb7
bb6:
  br label %bb17
bb7:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/lower:CloneSum", ptr %t35, i32 0, i32 2
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l40
  br label %bb8
bb8:
  %t42 = load i64, ptr %l40, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l5, !tbaa !24
  store i64 %t45, ptr %l43, !tbaa !24
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/lower:CloneSum", ptr %t46, i32 0, i32 2
  %t49 = load i64, ptr %l10, !tbaa !24
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t48, i64 %t49)
  store i64 %t52, ptr %l47
  br label %bb11
bb10:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb12
bb11:
  %t53 = load i64, ptr %l43, !tbaa !24
  %t54 = load i64, ptr %l47, !tbaa !24
  %t55 = icmp sgt i64 %t53, %t54
  store i1 %t55, ptr %l42, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l42, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/lower:CloneSum", ptr %t58, i32 0, i32 2
  %t61 = load i64, ptr %l10, !tbaa !24
  %t62 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v1, ptr %t60, i64 %t61, i64 %t62)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_1c8e237ef9fc0f77_d8ac58b856c76263)
  unreachable
bb22:
  br label %bb77
bb23:
  %t66 = load { i64, [7 x i64] }, ptr %l7
  %t68 = extractvalue { i64, [7 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 0
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t71 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t72 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t71, i32 0, i32 0
  %t73 = load { i64, [2 x i64] }, ptr %t72
  %t75 = extractvalue { i64, [2 x i64] } %t73, 0
  %t76 = icmp eq i64 %t75, 0
  store i1 %t76, ptr %l55, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb26
bb26:
  %t78 = load i1, ptr %l55, !tbaa !21
  br i1 %t78, label %bb27, label %bb28
bb27:
  %t79 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t80 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t79, i32 0, i32 0
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 1
  %t82 = getelementptr { i32 }, ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82
  store i32 %t83, ptr %l11, !tbaa !23
  %t85 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t86 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t85, i32 0, i32 1
  %t87 = load i32, ptr %t86
  store i32 %t87, ptr %l12, !tbaa !23
  br label %bb29
bb28:
  br label %bb72
bb29:
  %t89 = load ptr, ptr %l6, !tbaa !29
  store ptr %t89, ptr %l60, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t91 = load i32, ptr %l12, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l63
  br label %bb30
bb30:
  %t95 = load ptr, ptr %l60, !tbaa !29
  %t96 = load i32, ptr %l63, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t95, i32 %t96)
  store { i64, ptr } %t97, ptr %l64
  br label %bb31
bb31:
  %t98 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t98, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t99 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 1
  %t100 = getelementptr %"compiler/mir:Range", ptr %t99, i32 0, i32 1
  %t101 = load i32, ptr %t100, !tbaa !23
  %t103 = sext i32 %t101 to i64
  store i64 %t103, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t105 = load i64, ptr %l15, !tbaa !24
  %t106 = load i64, ptr %l14, !tbaa !24
  %t109 = icmp sgt i64 %t105, %t106
  br i1 %t109, label %bb32, label %bb33
bb32:
  %t111 = load i64, ptr %l16, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb37
bb34:
  %t115 = load i64, ptr %l15, !tbaa !24
  %t116 = load i64, ptr %l14, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l16, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l16, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l73, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb36
bb36:
  %t131 = load i64, ptr %l73, !tbaa !24
  store i64 %t131, ptr %l70, !tbaa !24
  br label %bb37
bb37:
  %t132 = load i64, ptr %l70, !tbaa !24
  store i64 %t132, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s7
  %t133 = load i64, ptr %l18, !tbaa !24
  %t134 = load i64, ptr %l17, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb40:
  br label %bb41
bb41:
  %t141 = load i64, ptr %l14, !tbaa !24
  %t142 = load i64, ptr %l18, !tbaa !24
  %t143 = load i64, ptr %l16, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  store i64 %t149, ptr %l19, !tbaa !24
  %t151 = load ptr, ptr %l2, !tbaa !29
  %t153 = getelementptr %"compiler/mir:Fn", ptr %t151, i32 0, i32 11
  %t154 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 1
  %t155 = getelementptr %"compiler/mir:Range", ptr %t154, i32 0, i32 0
  %t156 = load i32, ptr %t155, !tbaa !23
  %t158 = sext i32 %t156 to i64
  %t159 = load i64, ptr %l19, !tbaa !24
  %t162 = add i64 %t158, %t159
  %t165 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v2, ptr %t153, i64 %t162)
  store { i64, [4 x i64] } %t165, ptr %l97
  br label %bb42
bb42:
  %t166 = load { i64, [4 x i64] }, ptr %l97
  store { i64, [4 x i64] } %t166, ptr %l20
  %t167 = load { i64, [4 x i64] }, ptr %l20
  %t168 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t171 = call { i64, [4 x i64] } @compiler_2flower_2eKnownOf(ptr %v3, { i64, [4 x i64] } %t167, { i64, ptr } %t168)
  store { i64, [4 x i64] } %t171, ptr %l100
  br label %bb43
bb43:
  %t172 = load { i64, [4 x i64] }, ptr %l100
  store { i64, [4 x i64] } %t172, ptr %l21
  %t173 = load { i64, [4 x i64] }, ptr %l21
  %t175 = extractvalue { i64, [4 x i64] } %t173, 0
  %t176 = icmp eq i64 %t175, 1
  br i1 %t176, label %bb44, label %bb45
bb44:
  %t178 = getelementptr { i64, [4 x i64] }, ptr %l21, i32 0, i32 1
  %t179 = getelementptr { i64 }, ptr %t178, i32 0, i32 0
  %t180 = load i64, ptr %t179
  store i64 %t180, ptr %l22, !tbaa !24
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t182 = load i64, ptr %l22, !tbaa !24
  store i64 %t182, ptr %l101, !tbaa !24
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  store i64 -1, ptr %l101, !tbaa !24
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_3bb6ecc05d6dab56_3c8834dd1d368462)
  unreachable
bb52:
  %t184 = load i64, ptr %l101, !tbaa !24
  store i64 %t184, ptr %l23, !tbaa !24
  %t185 = load i64, ptr %l23, !tbaa !24
  %t187 = icmp slt i64 %t185, 0
  br i1 %t187, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb56
bb54:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr %"compiler/lower:CloneSum", ptr %t189, i32 0, i32 2
  %t192 = load i64, ptr %l23, !tbaa !24
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t191, i64 %t192)
  store i64 %t195, ptr %l112
  br label %bb55
bb55:
  %t196 = load i64, ptr %l112, !tbaa !24
  %t197 = icmp slt i64 %t196, 0
  store i1 %t197, ptr %l108, !tbaa !21
  br label %bb56
bb56:
  %t199 = load i1, ptr %l108, !tbaa !21
  br i1 %t199, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb59
bb58:
  %t200 = load i64, ptr %l19, !tbaa !24
  %t201 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t206 = icmp sge i64 %t200, %t203
  store i1 %t206, ptr %l114, !tbaa !21
  br label %bb59
bb59:
  %t208 = load i1, ptr %l114, !tbaa !21
  br i1 %t208, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb64
bb61:
  %t209 = load ptr, ptr %l2, !tbaa !29
  %t211 = getelementptr %"compiler/mir:Fn", ptr %t209, i32 0, i32 7
  store ptr %t211, ptr %l121, !tbaa !29
  %t212 = load { i64, [4 x i64] }, ptr %l20
  %t214 = call i64 @compiler_2flower_2ewholeLocal({ i64, [4 x i64] } %t212)
  store i64 %t214, ptr %l123
  br label %bb62
bb62:
  %t215 = load ptr, ptr %l121, !tbaa !29
  %t216 = load i64, ptr %l123, !tbaa !24
  %t217 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v2, ptr %t215, i64 %t216)
  store %"compiler/mir:Local" %t217, ptr %l124
  br label %bb63
bb63:
  %t218 = getelementptr %"compiler/mir:Local", ptr %l124, i32 0, i32 2
  %t219 = load i32, ptr %t218, !tbaa !23
  %t220 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t220, ptr %l126, !tbaa !27
  %t221 = load i64, ptr %l19, !tbaa !24
  %t223 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr i32, ptr %t224, i64 %t221
  %t226 = load i32, ptr %t225, !tbaa !33
  %t229 = icmp ne i32 %t219, %t226
  store i1 %t229, ptr %l119, !tbaa !21
  br label %bb64
bb64:
  %t231 = load i1, ptr %l119, !tbaa !21
  br i1 %t231, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s7)
  br label %bb70
bb66:
  br label %bb67
bb67:
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr %"compiler/lower:CloneSum", ptr %t232, i32 0, i32 3
  store ptr %t234, ptr %l131, !tbaa !29
  %t235 = load i64, ptr %l23, !tbaa !24
  %t236 = load i32, ptr %l11, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [2 x i64] }, ptr %t237, i32 0, i32 0
  store i64 0, ptr %t238
  %t240 = insertvalue { i32 } undef, i32 %t236, 0
  %t241 = getelementptr { i64, [2 x i64] }, ptr %t237, i32 0, i32 1
  store { i32 } %t240, ptr %t241
  %t242 = load { i64, [2 x i64] }, ptr %t237
  %t243 = load i64, ptr %l19, !tbaa !24
  %t244 = load i64, ptr %l5, !tbaa !24
  %t249 = call %"compiler/lower:CloneHand" @compiler_2flower_3aCloneHand_2ector(ptr %s7, i64 %t235, { i64, [2 x i64] } %t242, i64 %t243, i64 %t244)
  store %"compiler/lower:CloneHand" %t249, ptr %l137
  br label %bb68
bb68:
  %t250 = load ptr, ptr %l131, !tbaa !29
  %t251 = load %"compiler/lower:CloneHand", ptr %l137
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2ePush_H85e09a50fcd8a8472d6e0741db5df478(ptr %v1, ptr %t250, %"compiler/lower:CloneHand" %t251)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s7)
  br label %bb70
bb70:
  %t252 = load i64, ptr %l18, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l18, !tbaa !24
  br label %bb38
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
  call void @__olang_check_failed(ptr @olang_loc_f74ed6c6f28c676d_f94a3fd07e079859)
  unreachable
bb77:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epayPlan(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2, i64 %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:CloneHand"
  %l16 = alloca i64
  %l19 = alloca i64
  %l23 = alloca %"compiler/lower:CloneSum"
  %l25 = alloca %"compiler/lower:CloneSum"
  %l29 = alloca i1
  %l30 = alloca i64
  %l34 = alloca %"compiler/lower:CloneSum"
  %l36 = alloca %"compiler/lower:CloneSum"
  %l38 = alloca i64
  %l40 = alloca i1
  %l44 = alloca %"compiler/lower:CloneSum"
  %l46 = alloca %"compiler/lower:CloneSum"
  %l49 = alloca i64
  %l55 = alloca %"compiler/lower:CloneSum"
  %l57 = alloca %"compiler/lower:CloneSum"
  %l60 = alloca i64
  %l64 = alloca %"compiler/lower:CloneSum"
  %l66 = alloca %"compiler/lower:CloneSum"
  %l71 = alloca %"compiler/lower:CloneSum"
  %l73 = alloca %"compiler/lower:CloneSum"
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca ptr
  %l81 = alloca %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef"
  %l89 = alloca { i64, ptr }
  %l95 = alloca i1
  %l99 = alloca i1
  %l104 = alloca i1
  %l112 = alloca i64
  %l115 = alloca i1
  %l133 = alloca i1
  %l135 = alloca i64
  %l139 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ecloneSum(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:Lowerer", ptr %t7, i32 0, i32 48
  %t10 = load i64, ptr %l6, !tbaa !24
  %t13 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %s0, ptr %t9, i64 %t10)
  store %"compiler/lower:CloneSum" %t13, ptr %l23
  br label %bb2
bb2:
  %t15 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %s0, ptr %l23)
  store %"compiler/lower:CloneSum" %t15, ptr %l25
  br label %bb3
bb3:
  %t16 = getelementptr %"compiler/lower:CloneSum", ptr %l25, i32 0, i32 0
  %t17 = load i1, ptr %t16, !tbaa !21
  %t21 = xor i1 %t17, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb9
bb5:
  %t23 = load i64, ptr %l2, !tbaa !24
  store i64 %t23, ptr %l30, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:Lowerer", ptr %t24, i32 0, i32 48
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/lower:CloneSum" %t30, ptr %l34
  br label %bb6
bb6:
  %t32 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %s0, ptr %l34)
  store %"compiler/lower:CloneSum" %t32, ptr %l36
  br label %bb7
bb7:
  %t33 = getelementptr %"compiler/lower:CloneSum", ptr %l36, i32 0, i32 2
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l38
  br label %bb8
bb8:
  %t36 = load i64, ptr %l30, !tbaa !24
  %t37 = load i64, ptr %l38, !tbaa !24
  %t38 = icmp sge i64 %t36, %t37
  store i1 %t38, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l29, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb15
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:Lowerer", ptr %t41, i32 0, i32 48
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/lower:CloneSum" %t47, ptr %l44
  br label %bb12
bb12:
  %t49 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %s0, ptr %l44)
  store %"compiler/lower:CloneSum" %t49, ptr %l46
  br label %bb13
bb13:
  %t50 = getelementptr %"compiler/lower:CloneSum", ptr %l46, i32 0, i32 2
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l49
  br label %bb14
bb14:
  %t55 = load i64, ptr %l49, !tbaa !24
  %t56 = icmp slt i64 %t55, 0
  store i1 %t56, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l40, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:Lowerer", ptr %t60, i32 0, i32 48
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store %"compiler/lower:CloneSum" %t66, ptr %l55
  br label %bb19
bb19:
  %t68 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %s0, ptr %l55)
  store %"compiler/lower:CloneSum" %t68, ptr %l57
  br label %bb20
bb20:
  %t69 = getelementptr %"compiler/lower:CloneSum", ptr %l57, i32 0, i32 2
  %t70 = load i64, ptr %l2, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t69, i64 %t70)
  store i64 %t73, ptr %l60
  br label %bb21
bb21:
  %t74 = load i64, ptr %l60, !tbaa !24
  store i64 %t74, ptr %l8, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:Lowerer", ptr %t75, i32 0, i32 48
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %s0, ptr %t77, i64 %t78)
  store %"compiler/lower:CloneSum" %t81, ptr %l64
  br label %bb22
bb22:
  %t83 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %s0, ptr %l64)
  store %"compiler/lower:CloneSum" %t83, ptr %l66
  br label %bb23
bb23:
  %t84 = getelementptr %"compiler/lower:CloneSum", ptr %l66, i32 0, i32 1
  %t85 = load i64, ptr %t84, !tbaa !24
  store i64 %t85, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/lower:Lowerer", ptr %t87, i32 0, i32 48
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  store %"compiler/lower:CloneSum" %t93, ptr %l71
  br label %bb24
bb24:
  %t95 = call %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %v0, ptr %l71)
  store %"compiler/lower:CloneSum" %t95, ptr %l73
  br label %bb25
bb25:
  %t96 = getelementptr %"compiler/lower:CloneSum", ptr %l73, i32 0, i32 3
  %t98 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2eToAr_Hf2705ae9b9c3665d2bce5131843165c9(ptr %v0, ptr %s0, ptr %t96)
  store { i64, ptr } %t98, ptr %l75
  br label %bb26
bb26:
  %t99 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t99, ptr %l10, !tbaa !27
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_H4f55ef78e9e24b109145d8f1cf8f3346(ptr %v1, ptr %t100)
  store i64 %t102, ptr %l77
  br label %bb27
bb27:
  %t103 = load i64, ptr %l77, !tbaa !24
  store i64 %t103, ptr %l11, !tbaa !24
  %t104 = load ptr, ptr %l4, !tbaa !29
  store ptr %t104, ptr %l78, !tbaa !29
  %t105 = load { i64, [2 x i64] }, ptr %l1
  %t106 = load i64, ptr %l2, !tbaa !24
  %t109 = call %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef" @std_2fpair_3aPair_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %s0, { i64, [2 x i64] } %t105, i64 %t106)
  store %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef" %t109, ptr %l81
  br label %bb28
bb28:
  %t110 = load ptr, ptr %l78, !tbaa !29
  %t111 = load %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef", ptr %l81
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_H50aa64e76645cf352fa094d09391d67b(ptr %v1, ptr %t110, %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef" %t111)
  br label %bb29
bb29:
  %t112 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t112, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 0
  store i64 %t116, ptr %l14, !tbaa !24
  br label %bb30
bb30:
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i64, ptr %l14, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb31, label %bb32
bb31:
  br label %bb52
bb32:
  br label %bb33
bb33:
  %t126 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t126, ptr %l89, !tbaa !27
  %t127 = load i64, ptr %l13, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr %"compiler/lower:CloneHand", ptr %t130, i64 %t127
  %t132 = load %"compiler/lower:CloneHand", ptr %t131
  store %"compiler/lower:CloneHand" %t132, ptr %l15
  %t134 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 0
  %t135 = load i64, ptr %t134, !tbaa !24
  %t136 = load i64, ptr %l2, !tbaa !24
  %t139 = icmp ne i64 %t135, %t136
  br i1 %t139, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb36
bb35:
  %t141 = load i64, ptr %l3, !tbaa !24
  %t142 = load i64, ptr @G_2ecompiler_2flower_2eCloneDepth, !tbaa !24
  %t145 = icmp sge i64 %t141, %t142
  store i1 %t145, ptr %l95, !tbaa !21
  br label %bb36
bb36:
  %t147 = load i1, ptr %l95, !tbaa !21
  br i1 %t147, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb40
bb38:
  %t148 = load ptr, ptr %l4, !tbaa !29
  %t149 = load i64, ptr %l5, !tbaa !24
  %t150 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 1
  %t151 = load { i64, [2 x i64] }, ptr %t150
  %t152 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 2
  %t153 = load i64, ptr %t152, !tbaa !24
  %t158 = call i1 @compiler_2flower_2eplanHas(ptr %v1, ptr %t148, i64 %t149, { i64, [2 x i64] } %t151, i64 %t153)
  store i1 %t158, ptr %l104
  br label %bb39
bb39:
  %t159 = load i1, ptr %l104, !tbaa !21
  store i1 %t159, ptr %l99, !tbaa !21
  br label %bb40
bb40:
  %t160 = load i1, ptr %l99, !tbaa !21
  br i1 %t160, label %bb41, label %bb42
bb41:
  br label %bb51
bb42:
  br label %bb43
bb43:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 1
  %t163 = load { i64, [2 x i64] }, ptr %t162
  %t164 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 2
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load i64, ptr %l3, !tbaa !24
  %t168 = add i64 %t166, 1
  %t169 = load ptr, ptr %l4, !tbaa !29
  %t170 = load i64, ptr %l5, !tbaa !24
  %t177 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epayPlan(ptr %v0, ptr %v1, ptr %t161, { i64, [2 x i64] } %t163, i64 %t165, i64 %t168, ptr %t169, i64 %t170)
  store i64 %t177, ptr %l112
  br label %bb44
bb44:
  %t178 = load i64, ptr %l112, !tbaa !24
  store i64 %t178, ptr %l16, !tbaa !24
  %t179 = load i64, ptr %l16, !tbaa !24
  %t181 = icmp sgt i64 %t179, 0
  br i1 %t181, label %bb45, label %bb46
bb45:
  %t183 = load i64, ptr %l16, !tbaa !24
  %t184 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 3
  %t185 = load i64, ptr %t184, !tbaa !24
  %t188 = add i64 %t183, %t185
  %t189 = load i64, ptr %l8, !tbaa !24
  %t192 = icmp sgt i64 %t188, %t189
  store i1 %t192, ptr %l115, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb47
bb47:
  %t194 = load i1, ptr %l115, !tbaa !21
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = getelementptr %"compiler/lower:CloneHand", ptr %l15, i32 0, i32 3
  %t197 = load i64, ptr %t196, !tbaa !24
  %t200 = add i64 %t195, %t197
  store i64 %t200, ptr %l8, !tbaa !24
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t202 = load i64, ptr %l13, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l13, !tbaa !24
  br label %bb30
bb52:
  %t206 = load i64, ptr %l8, !tbaa !24
  %t208 = icmp sle i64 %t206, 0
  br i1 %t208, label %bb53, label %bb54
bb53:
  %t210 = load ptr, ptr %l4, !tbaa !29
  %t211 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_Heb9f32f192b0b9cb232597ba4ed0fe11(ptr %v1, ptr %t210, i64 %t211)
  br label %bb55
bb54:
  br label %bb56
bb55:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb56:
  %t215 = load i64, ptr %l3, !tbaa !24
  %t217 = icmp eq i64 %t215, 0
  br i1 %t217, label %bb57, label %bb58
bb57:
  %t219 = load ptr, ptr %l4, !tbaa !29
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_H4f55ef78e9e24b109145d8f1cf8f3346(ptr %v1, ptr %t219)
  store i64 %t221, ptr %l135
  br label %bb59
bb58:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb60
bb59:
  %t222 = load i64, ptr %l11, !tbaa !24
  %t224 = add i64 %t222, 1
  %t225 = load i64, ptr %l135, !tbaa !24
  %t227 = icmp eq i64 %t225, %t224
  store i1 %t227, ptr %l133, !tbaa !21
  br label %bb60
bb60:
  %t229 = load i1, ptr %l133, !tbaa !21
  br i1 %t229, label %bb61, label %bb62
bb61:
  %t230 = load i64, ptr %l9, !tbaa !24
  %t231 = load i64, ptr @G_2ecompiler_2flower_2eCloneSmall, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  store i1 %t234, ptr %l139, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb63
bb63:
  %t236 = load i1, ptr %l139, !tbaa !21
  br i1 %t236, label %bb64, label %bb65
bb64:
  %t237 = load ptr, ptr %l4, !tbaa !29
  %t238 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_Heb9f32f192b0b9cb232597ba4ed0fe11(ptr %v1, ptr %t237, i64 %t238)
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb67:
  %t242 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t242, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca ptr
  %l32 = alloca %"compiler/source:Span"
  %l34 = alloca %"compiler/mir:Lvalue"
  %l41 = alloca i64
  %l43 = alloca i1
  %l45 = alloca ptr
  %l47 = alloca i32
  %l69 = alloca { i64, ptr }
  %l80 = alloca i1
  %l88 = alloca { i64, [4 x i64] }
  %l89 = alloca ptr
  %l91 = alloca %"compiler/source:Span"
  %l93 = alloca %"compiler/mir:Lvalue"
  %l98 = alloca ptr
  %l118 = alloca { i64, ptr }
  %l129 = alloca i1
  %l137 = alloca { i64, [4 x i64] }
  %l138 = alloca ptr
  %l140 = alloca %"compiler/source:Span"
  %l142 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t43 = alloca { i64, [15 x i64] }, align 8
  %t49 = alloca { i64, [21 x i64] }, align 8
  %t177 = alloca { i64, [15 x i64] }, align 8
  %t183 = alloca { i64, [21 x i64] }, align 8
  %t291 = alloca { i64, [15 x i64] }, align 8
  %t297 = alloca { i64, [21 x i64] }, align 8
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
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t24, ptr %t28)
  store { i64, [4 x i64] } %t32, ptr %l29
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t33 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t33, ptr %l3
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l30, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Arm", ptr %t35, i32 0, i32 0
  %t38 = load %"compiler/source:Span", ptr %t37
  store %"compiler/source:Span" %t38, ptr %l32
  %t39 = load i32, ptr %l2, !tbaa !23
  %t41 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t39)
  store %"compiler/mir:Lvalue" %t41, ptr %l34
  br label %bb9
bb9:
  %t42 = load { i64, [4 x i64] }, ptr %l3
  store { i64, [15 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [15 x i64] }, ptr %t43, i32 0, i32 0
  store i64 0, ptr %t44
  %t46 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t42, 0
  %t47 = getelementptr { i64, [15 x i64] }, ptr %t43, i32 0, i32 1
  store { { i64, [4 x i64] } } %t46, ptr %t47
  %t48 = load { i64, [15 x i64] }, ptr %t43
  store { i64, [21 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [21 x i64] }, ptr %t49, i32 0, i32 0
  store i64 0, ptr %t50
  %t51 = load %"compiler/source:Span", ptr %l32
  %t52 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t51, 0
  %t53 = load %"compiler/mir:Lvalue", ptr %l34
  %t54 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t52, %"compiler/mir:Lvalue" %t53, 1
  %t56 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t54, { i64, [15 x i64] } %t48, 2
  %t57 = getelementptr { i64, [21 x i64] }, ptr %t49, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t56, ptr %t57
  %t58 = load { i64, [21 x i64] }, ptr %t49
  %t60 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t58, ptr %t60
  %t61 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t61, ptr %t60)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t63, i32 0, i32 14
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l41
  br label %bb13
bb13:
  %t68 = load i64, ptr %l41, !tbaa !24
  %t69 = icmp sgt i64 %t68, 0
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s0, ptr %t71)
  store ptr %t73, ptr %l45
  br label %bb16
bb15:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb20
bb16:
  %t74 = load ptr, ptr %l45, !tbaa !29
  %t76 = getelementptr %"compiler/lower:level", ptr %t74, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  store i32 %t77, ptr %l47, !tbaa !23
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Arm", ptr %t78, i32 0, i32 3
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = icmp eq ptr %t81, null
  br i1 %t83, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_2262f7260befbeda_ad33d1a86099f68e)
  unreachable
bb18:
  br label %bb19
bb19:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Arm", ptr %t85, i32 0, i32 3
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Block", ptr %t88, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = load i32, ptr %l47, !tbaa !23
  %t95 = icmp eq i32 %t93, %t92
  store i1 %t95, ptr %l43, !tbaa !21
  br label %bb20
bb20:
  %t97 = load i1, ptr %l43, !tbaa !21
  br i1 %t97, label %bb21, label %bb22
bb21:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Arm", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb23, label %bb24
bb22:
  br label %bb42
bb23:
  call void @__olang_check_failed(ptr @olang_loc_78466967dd42e061_bdc585e3e8213235)
  unreachable
bb24:
  br label %bb25
bb25:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Arm", ptr %t105, i32 0, i32 3
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Block", ptr %t108, i32 0, i32 1
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 0
  store i64 %t116, ptr %l6, !tbaa !24
  br label %bb26
bb26:
  %t118 = load i64, ptr %l5, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t126 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t126, ptr %l69, !tbaa !27
  %t127 = load i64, ptr %l5, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr ptr, ptr %t130, i64 %t127
  %t132 = load ptr, ptr %t131, !tbaa !39
  %t134 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t134, ptr %t132)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t138 = load i64, ptr %l5, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l5, !tbaa !24
  br label %bb26
bb32:
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Arm", ptr %t142, i32 0, i32 4
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = icmp eq ptr %t145, null
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb33, label %bb34
bb33:
  %t151 = load i32, ptr %l2, !tbaa !23
  %t152 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t155 = icmp ne i32 %t151, %t152
  store i1 %t155, ptr %l80, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb35
bb35:
  %t157 = load i1, ptr %l80, !tbaa !21
  br i1 %t157, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Arm", ptr %t159, i32 0, i32 4
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t166 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t158, ptr %t162)
  store { i64, [4 x i64] } %t166, ptr %l88
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t167 = load { i64, [4 x i64] }, ptr %l88
  store { i64, [4 x i64] } %t167, ptr %l8
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l89, !tbaa !29
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Arm", ptr %t169, i32 0, i32 0
  %t172 = load %"compiler/source:Span", ptr %t171
  store %"compiler/source:Span" %t172, ptr %l91
  %t173 = load i32, ptr %l2, !tbaa !23
  %t175 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t173)
  store %"compiler/mir:Lvalue" %t175, ptr %l93
  br label %bb39
bb39:
  %t176 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [15 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [15 x i64] }, ptr %t177, i32 0, i32 0
  store i64 0, ptr %t178
  %t180 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t176, 0
  %t181 = getelementptr { i64, [15 x i64] }, ptr %t177, i32 0, i32 1
  store { { i64, [4 x i64] } } %t180, ptr %t181
  %t182 = load { i64, [15 x i64] }, ptr %t177
  store { i64, [21 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [21 x i64] }, ptr %t183, i32 0, i32 0
  store i64 0, ptr %t184
  %t185 = load %"compiler/source:Span", ptr %l91
  %t186 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t185, 0
  %t187 = load %"compiler/mir:Lvalue", ptr %l93
  %t188 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t186, %"compiler/mir:Lvalue" %t187, 1
  %t190 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t188, { i64, [15 x i64] } %t182, 2
  %t191 = getelementptr { i64, [21 x i64] }, ptr %t183, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t190, ptr %t191
  %t192 = load { i64, [21 x i64] }, ptr %t183
  %t194 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t192, ptr %t194
  %t195 = load ptr, ptr %l89, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t195, ptr %t194)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s7)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb42:
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l98, !tbaa !29
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Arm", ptr %t198, i32 0, i32 3
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = icmp eq ptr %t201, null
  br i1 %t203, label %bb43, label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_6143a96035d3ceac_ef612191f7538720)
  unreachable
bb44:
  br label %bb45
bb45:
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Arm", ptr %t205, i32 0, i32 3
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t209 = load ptr, ptr %l98, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %t209, ptr %t208, i32 1, i32 0)
  br label %bb46
bb46:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr %"compiler/typed:Arm", ptr %t212, i32 0, i32 3
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = icmp eq ptr %t215, null
  br i1 %t217, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_9919e1798def049b_eb223155b689b93f)
  unreachable
bb48:
  br label %bb49
bb49:
  %t219 = load ptr, ptr %l1, !tbaa !29
  %t221 = getelementptr %"compiler/typed:Arm", ptr %t219, i32 0, i32 3
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Block", ptr %t222, i32 0, i32 1
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  store i64 %t230, ptr %l11, !tbaa !24
  br label %bb50
bb50:
  %t232 = load i64, ptr %l10, !tbaa !24
  %t233 = load i64, ptr %l11, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb51, label %bb52
bb51:
  br label %bb56
bb52:
  br label %bb53
bb53:
  %t240 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t240, ptr %l118, !tbaa !27
  %t241 = load i64, ptr %l10, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr ptr, ptr %t244, i64 %t241
  %t246 = load ptr, ptr %t245, !tbaa !39
  %t248 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmt(ptr %v0, ptr %v1, ptr %t248, ptr %t246)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t252 = load i64, ptr %l10, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l10, !tbaa !24
  br label %bb50
bb56:
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Arm", ptr %t256, i32 0, i32 4
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = icmp eq ptr %t259, null
  %t263 = xor i1 %t261, true
  br i1 %t263, label %bb57, label %bb58
bb57:
  %t265 = load i32, ptr %l2, !tbaa !23
  %t266 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t269 = icmp ne i32 %t265, %t266
  store i1 %t269, ptr %l129, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb59
bb59:
  %t271 = load i1, ptr %l129, !tbaa !21
  br i1 %t271, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l1, !tbaa !29
  %t275 = getelementptr %"compiler/typed:Arm", ptr %t273, i32 0, i32 4
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t280 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t272, ptr %t276)
  store { i64, [4 x i64] } %t280, ptr %l137
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t281 = load { i64, [4 x i64] }, ptr %l137
  store { i64, [4 x i64] } %t281, ptr %l13
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l138, !tbaa !29
  %t283 = load ptr, ptr %l1, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Arm", ptr %t283, i32 0, i32 0
  %t286 = load %"compiler/source:Span", ptr %t285
  store %"compiler/source:Span" %t286, ptr %l140
  %t287 = load i32, ptr %l2, !tbaa !23
  %t289 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t287)
  store %"compiler/mir:Lvalue" %t289, ptr %l142
  br label %bb63
bb63:
  %t290 = load { i64, [4 x i64] }, ptr %l13
  store { i64, [15 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [15 x i64] }, ptr %t291, i32 0, i32 0
  store i64 0, ptr %t292
  %t294 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t290, 0
  %t295 = getelementptr { i64, [15 x i64] }, ptr %t291, i32 0, i32 1
  store { { i64, [4 x i64] } } %t294, ptr %t295
  %t296 = load { i64, [15 x i64] }, ptr %t291
  store { i64, [21 x i64] } zeroinitializer, ptr %t297
  %t298 = getelementptr { i64, [21 x i64] }, ptr %t297, i32 0, i32 0
  store i64 0, ptr %t298
  %t299 = load %"compiler/source:Span", ptr %l140
  %t300 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t299, 0
  %t301 = load %"compiler/mir:Lvalue", ptr %l142
  %t302 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t300, %"compiler/mir:Lvalue" %t301, 1
  %t304 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t302, { i64, [15 x i64] } %t296, 2
  %t305 = getelementptr { i64, [21 x i64] }, ptr %t297, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t304, ptr %t305
  %t306 = load { i64, [21 x i64] }, ptr %t297
  %t308 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 176, i64 8)
  store { i64, [21 x i64] } %t306, ptr %t308
  %t309 = load ptr, ptr %l138, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s11, ptr %t309, ptr %t308)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s11)
  br label %bb65
bb65:
  %t311 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %t311)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s2, ptr %t76, %"compiler/source:Span" %t80, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d16, i32 0, i32 1) })
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

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eaway(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l26 = alloca { i64, [4 x i64] }
  %l27 = alloca ptr
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 9
  %t9 = load %"compiler/source:Span", ptr %t8
  store %"compiler/source:Span" %t9, ptr %l5
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 7
  store i64 %a2, ptr %t15, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 8
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = icmp eq i64 %t19, 0
  br i1 %t21, label %bb1, label %bb2
bb1:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t23, i32 0, i32 9
  store %"compiler/source:Span" %a1, ptr %t27
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 8
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = add i64 %t31, 1
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 8
  store i64 %t33, ptr %t36, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t42 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t37, ptr %a3)
  store { i64, [4 x i64] } %t42, ptr %l26
  br label %bb4
bb4:
  %t43 = load { i64, [4 x i64] }, ptr %l26
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 8
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = sub i64 %t47, 1
  %t51 = load ptr, ptr %l27, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t51, i32 0, i32 8
  store i64 %t49, ptr %t52, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = load %"compiler/source:Span", ptr %l5
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t57, i32 0, i32 7
  store i64 %t53, ptr %t61, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 9
  store %"compiler/source:Span" %t55, ptr %t66
  store { i64, [4 x i64] } %t43, ptr %rv
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
  %t29 = load i32, ptr %t28, !range !{i32 0, i32 51}
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
  %t37 = load i32, ptr %l3, !range !{i32 0, i32 51}
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
  %t86 = load i32, ptr %l3, !range !{i32 0, i32 51}
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
  %t290 = alloca { i64, [4 x i64] }, align 8
  %t352 = alloca { i64, [4 x i64] }, align 8
  %t358 = alloca { i64, [15 x i64] }, align 8
  %t379 = alloca { i64, [2 x i64] }, align 8
  %t467 = alloca { i64, [1 x i64] }, align 8
  %t509 = alloca { i64, [15 x i64] }, align 8
  %t545 = alloca { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, align 8
  %t628 = alloca { i64, [4 x i64] }, align 8
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
  %t200 = load i32, ptr %l104, !range !{i32 0, i32 51}
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
  %t279 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_17, 0
  %t280 = insertvalue { ptr, ptr } %t279, ptr %t264, 1
  %t281 = load ptr, ptr %l130, !tbaa !29
  %t282 = load { i64, [4 x i64] }, ptr %l131
  %t283 = load %"compiler/source:Span", ptr %l132
  %t285 = extractvalue { ptr, ptr } %t280, 0
  %t286 = extractvalue { ptr, ptr } %t280, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s0, ptr %t281, { i64, [4 x i64] } %t282, %"compiler/source:Span" %t283, ptr %t285, ptr %t286)
  br label %bb46
bb46:
  %t287 = load i32, ptr %l11, !tbaa !23
  %t289 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t287)
  store %"compiler/mir:Lvalue" %t289, ptr %l143
  br label %bb47
bb47:
  store { i64, [4 x i64] } zeroinitializer, ptr %t290
  %t291 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 0
  store i64 1, ptr %t291
  %t292 = load %"compiler/mir:Lvalue", ptr %l143
  %t293 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t292, 0
  %t294 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t293, ptr %t294
  %t295 = load { i64, [4 x i64] }, ptr %t290
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t295, ptr %rv
  br label %ret
bb48:
  %t297 = load i1, ptr %l5, !tbaa !21
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s6
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l147, !tbaa !29
  store i32 4, ptr %l148
  %t302 = load i32, ptr %l2, !tbaa !23
  store i32 %t302, ptr %l149, !tbaa !23
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l150, !tbaa !29
  %t304 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t304, ptr %l151
  %t306 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s6, ptr %l151)
  store %"compiler/lower:pl" %t306, ptr %l153
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t307 = load i32, ptr %l2, !tbaa !23
  %t308 = load %"compiler/source:Span", ptr %l4
  %t309 = load ptr, ptr %l150, !tbaa !29
  %t310 = load %"compiler/lower:pl", ptr %l153
  %t313 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %s6, ptr %t309, %"compiler/lower:pl" %t310, i32 %t307, %"compiler/source:Span" %t308)
  store { i64, [4 x i64] } %t313, ptr %l156
  br label %bb52
bb52:
  %t314 = mul i64 1, 40
  %t315 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t314)
  %t316 = insertvalue { i64, ptr } undef, i64 1, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  store { i64, ptr } %t317, ptr %l157, !tbaa !27
  %t318 = load { i64, [4 x i64] }, ptr %l156
  %t319 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t320, i64 0
  store { i64, [4 x i64] } %t318, ptr %t321
  %t322 = load { i64, [1 x i64] }, ptr %l3
  %t323 = mul i64 1, 16
  %t324 = call ptr @__olang_scope_alloc_zeroed(ptr %s6, i64 %t323)
  %t325 = insertvalue { i64, ptr } undef, i64 1, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  store { i64, ptr } %t326, ptr %l159, !tbaa !27
  %t328 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr { i64, [1 x i64] }, ptr %t329, i64 0
  store { i64, [1 x i64] } %t322, ptr %t330
  %t331 = load i32, ptr %l2, !tbaa !23
  %t332 = load %"compiler/source:Span", ptr %l4
  %t333 = load ptr, ptr %l147, !tbaa !29
  %t334 = load i32, ptr %l148, !range !{i32 0, i32 8}
  %t335 = load i32, ptr %l149, !tbaa !23
  %t336 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t337 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t340 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s6, ptr %s6, ptr %t333, i32 %t334, i32 %t335, { i64, ptr } %t336, { i64, ptr } %t337, i32 %t331, %"compiler/source:Span" %t332)
  store { i64, [4 x i64] } %t340, ptr %l162
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t341 = load { i64, [4 x i64] }, ptr %l162
  store { i64, [4 x i64] } %t341, ptr %rv
  br label %ret
bb54:
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l163, !tbaa !29
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l164, !tbaa !29
  %t344 = load i32, ptr %l2, !tbaa !23
  store i32 %t344, ptr %l165, !tbaa !23
  %t345 = load ptr, ptr %l0, !tbaa !29
  store ptr %t345, ptr %l166, !tbaa !29
  %t346 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t346, ptr %l167
  %t348 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l167)
  store %"compiler/lower:pl" %t348, ptr %l169
  br label %bb55
bb55:
  %t349 = load ptr, ptr %l166, !tbaa !29
  %t350 = load %"compiler/lower:pl", ptr %l169
  %t351 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t349, %"compiler/lower:pl" %t350)
  store %"compiler/mir:Lvalue" %t351, ptr %l170
  br label %bb56
bb56:
  store { i64, [4 x i64] } zeroinitializer, ptr %t352
  %t353 = getelementptr { i64, [4 x i64] }, ptr %t352, i32 0, i32 0
  store i64 1, ptr %t353
  %t354 = load %"compiler/mir:Lvalue", ptr %l170
  %t355 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t354, 0
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t352, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t355, ptr %t356
  %t357 = load { i64, [4 x i64] }, ptr %t352
  store { i64, [15 x i64] } zeroinitializer, ptr %t358
  %t359 = getelementptr { i64, [15 x i64] }, ptr %t358, i32 0, i32 0
  store i64 0, ptr %t359
  %t361 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t357, 0
  %t362 = getelementptr { i64, [15 x i64] }, ptr %t358, i32 0, i32 1
  store { { i64, [4 x i64] } } %t361, ptr %t362
  %t363 = load { i64, [15 x i64] }, ptr %t358
  %t364 = load %"compiler/source:Span", ptr %l4
  %t365 = load ptr, ptr %l164, !tbaa !29
  %t366 = load i32, ptr %l165, !tbaa !23
  %t369 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t365, i32 %t366, { i64, [15 x i64] } %t363, %"compiler/source:Span" %t364)
  store { i64, [4 x i64] } %t369, ptr %l174
  br label %bb57
bb57:
  %t370 = load i32, ptr %l2, !tbaa !23
  %t371 = load %"compiler/source:Span", ptr %l4
  %t372 = load ptr, ptr %l163, !tbaa !29
  %t373 = load { i64, [4 x i64] }, ptr %l174
  %t376 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t372, { i64, [4 x i64] } %t373, i32 %t370, %"compiler/source:Span" %t371)
  store i32 %t376, ptr %l177
  br label %bb58
bb58:
  %t377 = load i32, ptr %l177, !tbaa !23
  store i32 %t377, ptr %l12, !tbaa !23
  %t378 = load i32, ptr %l12, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t379
  %t380 = getelementptr { i64, [2 x i64] }, ptr %t379, i32 0, i32 0
  store i64 1, ptr %t380
  %t382 = insertvalue { i32 } undef, i32 %t378, 0
  %t383 = getelementptr { i64, [2 x i64] }, ptr %t379, i32 0, i32 1
  store { i32 } %t382, ptr %t383
  %t384 = load { i64, [2 x i64] }, ptr %t379
  %t386 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t384)
  store %"compiler/lower:pl" %t386, ptr %l180
  br label %bb59
bb59:
  %t387 = load %"compiler/lower:pl", ptr %l180
  store %"compiler/lower:pl" %t387, ptr %l13
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/lower:lowering", ptr %t388, i32 0, i32 2
  %t391 = load ptr, ptr %t390, !tbaa !29
  %t392 = load i32, ptr %l2, !tbaa !23
  %t395 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t391, i32 %t392)
  store i1 %t395, ptr %l184
  br label %bb60
bb60:
  %t396 = load i1, ptr %l184, !tbaa !21
  br i1 %t396, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s7
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i32, ptr %l2, !tbaa !23
  %t401 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s7, ptr %t397, i32 %t398)
  store { i64, ptr } %t401, ptr %l187
  br label %bb63
bb62:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/lower:lowering", ptr %t402, i32 0, i32 2
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t406 = load i32, ptr %l2, !tbaa !23
  %t409 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t405, i32 %t406)
  store i1 %t409, ptr %l231
  br label %bb79
bb63:
  %t410 = load { i64, ptr }, ptr %l187, !tbaa !27
  store { i64, ptr } %t410, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t411 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t411, 0
  store i64 %t413, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t415 = load i64, ptr %l16, !tbaa !24
  %t416 = load i64, ptr %l15, !tbaa !24
  %t419 = icmp sgt i64 %t415, %t416
  br i1 %t419, label %bb64, label %bb65
bb64:
  %t421 = load i64, ptr %l17, !tbaa !24
  %t423 = icmp sgt i64 %t421, 0
  br i1 %t423, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l193, !tbaa !24
  br label %bb69
bb66:
  %t425 = load i64, ptr %l16, !tbaa !24
  %t426 = load i64, ptr %l15, !tbaa !24
  %t429 = sub i64 %t425, %t426
  %t430 = load i64, ptr %l17, !tbaa !24
  %t433 = add i64 %t429, %t430
  %t435 = sub i64 %t433, 1
  %t436 = load i64, ptr %l17, !tbaa !24
  %t439 = sdiv i64 %t435, %t436
  store i64 %t439, ptr %l196, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb68
bb68:
  %t441 = load i64, ptr %l196, !tbaa !24
  store i64 %t441, ptr %l193, !tbaa !24
  br label %bb69
bb69:
  %t442 = load i64, ptr %l193, !tbaa !24
  store i64 %t442, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb70
bb70:
  store %olang.scope zeroinitializer, ptr %s9
  %t443 = load i64, ptr %l19, !tbaa !24
  %t444 = load i64, ptr %l18, !tbaa !24
  %t447 = icmp slt i64 %t443, %t444
  %t449 = xor i1 %t447, true
  br i1 %t449, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s9)
  br label %bb78
bb72:
  br label %bb73
bb73:
  %t451 = load i64, ptr %l15, !tbaa !24
  %t452 = load i64, ptr %l19, !tbaa !24
  %t453 = load i64, ptr %l17, !tbaa !24
  %t456 = mul i64 %t452, %t453
  %t459 = add i64 %t451, %t456
  store i64 %t459, ptr %l20, !tbaa !24
  %t461 = load ptr, ptr %l0, !tbaa !29
  store ptr %t461, ptr %l214, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l215, !tbaa !29
  %t463 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t463, ptr %l216
  %t465 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s9, ptr %l216)
  store %"compiler/lower:pl" %t465, ptr %l218
  br label %bb74
bb74:
  %t466 = load i64, ptr %l20, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t467
  %t468 = getelementptr { i64, [1 x i64] }, ptr %t467, i32 0, i32 0
  store i64 0, ptr %t468
  %t470 = insertvalue { i64 } undef, i64 %t466, 0
  %t471 = getelementptr { i64, [1 x i64] }, ptr %t467, i32 0, i32 1
  store { i64 } %t470, ptr %t471
  %t472 = load { i64, [1 x i64] }, ptr %t467
  %t473 = load ptr, ptr %l215, !tbaa !29
  %t474 = load %"compiler/lower:pl", ptr %l218
  %t476 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s9, ptr %s9, ptr %t473, %"compiler/lower:pl" %t474, { i64, [1 x i64] } %t472)
  store %"compiler/lower:pl" %t476, ptr %l221
  br label %bb75
bb75:
  %t477 = load i64, ptr %l20, !tbaa !24
  %t479 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t480 = load ptr, ptr %t479, !tbaa !27
  %t481 = getelementptr i32, ptr %t480, i64 %t477
  %t482 = load i32, ptr %t481, !tbaa !33
  %t483 = load { i64, [1 x i64] }, ptr %l3
  %t484 = load %"compiler/source:Span", ptr %l4
  %t485 = load ptr, ptr %l214, !tbaa !29
  %t486 = load %"compiler/lower:pl", ptr %l221
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %s9, ptr %t485, %"compiler/lower:pl" %t486, i32 %t482, { i64, [1 x i64] } %t483, %"compiler/source:Span" %t484)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s9)
  br label %bb77
bb77:
  %t490 = load i64, ptr %l19, !tbaa !24
  %t492 = add i64 %t490, 1
  store i64 %t492, ptr %l19, !tbaa !24
  br label %bb70
bb78:
  call void @__olang_scope_close(ptr %s7)
  br label %bb100
bb79:
  %t494 = load i1, ptr %l231, !tbaa !21
  br i1 %t494, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s12
  %t495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t495, ptr %l232, !tbaa !29
  %t496 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t496, ptr %l233, !tbaa !23
  %t497 = load ptr, ptr %l0, !tbaa !29
  store ptr %t497, ptr %l234, !tbaa !29
  %t498 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t498, ptr %l235
  %t500 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s12, ptr %l235)
  store %"compiler/lower:pl" %t500, ptr %l237
  br label %bb82
bb81:
  %t501 = load ptr, ptr %l7, !tbaa !29
  %t502 = load i32, ptr %l8, !tbaa !23
  %t505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t501, i32 %t502)
  store i32 %t505, ptr %l258
  br label %bb88
bb82:
  %t506 = load ptr, ptr %l234, !tbaa !29
  %t507 = load %"compiler/lower:pl", ptr %l237
  %t508 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s12, ptr %t506, %"compiler/lower:pl" %t507)
  store %"compiler/mir:Lvalue" %t508, ptr %l238
  br label %bb83
bb83:
  store { i64, [15 x i64] } zeroinitializer, ptr %t509
  %t510 = getelementptr { i64, [15 x i64] }, ptr %t509, i32 0, i32 0
  store i64 5, ptr %t510
  %t511 = load %"compiler/mir:Lvalue", ptr %l238
  %t512 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t511, 0
  %t513 = getelementptr { i64, [15 x i64] }, ptr %t509, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t512, ptr %t513
  %t514 = load { i64, [15 x i64] }, ptr %t509
  %t515 = load %"compiler/source:Span", ptr %l4
  %t516 = load ptr, ptr %l232, !tbaa !29
  %t517 = load i32, ptr %l233, !tbaa !23
  %t520 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t516, i32 %t517, { i64, [15 x i64] } %t514, %"compiler/source:Span" %t515)
  store { i64, [4 x i64] } %t520, ptr %l241
  br label %bb84
bb84:
  %t521 = load { i64, [4 x i64] }, ptr %l241
  store { i64, [4 x i64] } %t521, ptr %l21
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l242, !tbaa !29
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t524 = load i32, ptr %l2, !tbaa !23
  %t527 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %s12, ptr %t523, i32 %t524)
  store { i64, ptr } %t527, ptr %l245
  br label %bb85
bb85:
  %t528 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 0
  %t530 = extractvalue { i64, ptr } %t528, 1
  %t531 = mul i64 %t529, 4
  %t532 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  store { i64, ptr } %t534, ptr %l246, !tbaa !27
  %t535 = load { i64, [4 x i64] }, ptr %l21
  store { i64, [4 x i64] } %t535, ptr %l247
  %t536 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t536, ptr %l248
  %t537 = load ptr, ptr %l0, !tbaa !29
  store ptr %t537, ptr %l249, !tbaa !29
  %t538 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t538, ptr %l250
  %t540 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l250)
  store %"compiler/lower:pl" %t540, ptr %l252
  br label %bb86
bb86:
  %t541 = load { i64, [1 x i64] }, ptr %l3
  %t542 = load %"compiler/source:Span", ptr %l4
  %t543 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t544 = ptrtoint ptr %t543 to i64
  %t546 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t545, i32 0, i32 0
  %t547 = load ptr, ptr %l249, !tbaa !29
  store ptr %t547, ptr %t546, !tbaa !28
  %t548 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t545, i32 0, i32 1
  %t549 = load %"compiler/lower:pl", ptr %l252
  store %"compiler/lower:pl" %t549, ptr %t548, !tbaa !28
  %t550 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t545, i32 0, i32 2
  store { i64, [1 x i64] } %t541, ptr %t550, !tbaa !28
  %t552 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t545, i32 0, i32 3
  store %"compiler/source:Span" %t542, ptr %t552, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t554 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t545, i32 0, i32 4
  store ptr %v0, ptr %t554, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t555 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t545, i32 0, i32 5
  store ptr %s0, ptr %t555, !tbaa !28
  %t556 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_18, 0
  %t557 = insertvalue { ptr, ptr } %t556, ptr %t545, 1
  %t558 = load ptr, ptr %l242, !tbaa !29
  %t559 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t560 = load { i64, [4 x i64] }, ptr %l247
  %t561 = load %"compiler/source:Span", ptr %l248
  %t563 = extractvalue { ptr, ptr } %t557, 0
  %t564 = extractvalue { ptr, ptr } %t557, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %s12, ptr %s12, ptr %t558, { i64, ptr } %t559, { i64, [4 x i64] } %t560, %"compiler/source:Span" %t561, ptr %t563, ptr %t564)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s12)
  br label %bb99
bb88:
  %t565 = load i32, ptr %l258, !range !{i32 0, i32 33}
  %t567 = trunc i64 19 to i32
  %t568 = icmp eq i32 %t565, %t567
  br i1 %t568, label %bb89, label %bb90
bb89:
  %t570 = load ptr, ptr %l7, !tbaa !29
  %t571 = load i32, ptr %l8, !tbaa !23
  %t574 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t570, i32 %t571)
  store i32 %t574, ptr %l263
  br label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s15
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s15, ptr %t575, %"compiler/source:Span" %t576, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb97
bb91:
  %t579 = load i32, ptr %l263, !tbaa !23
  store i32 %t579, ptr %l22, !tbaa !23
  %t580 = load ptr, ptr %l0, !tbaa !29
  store ptr %t580, ptr %l264, !tbaa !29
  %t581 = load ptr, ptr %l0, !tbaa !29
  store ptr %t581, ptr %l265, !tbaa !29
  %t582 = load ptr, ptr %l7, !tbaa !29
  store ptr %t582, ptr %l266, !tbaa !29
  %t583 = load ptr, ptr %l7, !tbaa !29
  %t584 = load i32, ptr %l8, !tbaa !23
  %t587 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t583, i32 %t584)
  store i32 %t587, ptr %l269
  br label %bb92
bb92:
  %t588 = load ptr, ptr %l266, !tbaa !29
  %t589 = load i32, ptr %l269, !tbaa !23
  %t590 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t588, i32 %t589)
  store i64 %t590, ptr %l270
  br label %bb93
bb93:
  %t591 = load ptr, ptr %l265, !tbaa !29
  %t592 = load i64, ptr %l270, !tbaa !24
  %t593 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t591, i64 %t592)
  store { i64, [4 x i64] } %t593, ptr %l271
  br label %bb94
bb94:
  %t594 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t594, ptr %l272
  %t595 = load ptr, ptr %l0, !tbaa !29
  store ptr %t595, ptr %l273, !tbaa !29
  %t596 = load %"compiler/lower:pl", ptr %l13
  store %"compiler/lower:pl" %t596, ptr %l274
  %t598 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l274)
  store %"compiler/lower:pl" %t598, ptr %l276
  br label %bb95
bb95:
  %t599 = load i32, ptr %l22, !tbaa !23
  %t600 = load { i64, [1 x i64] }, ptr %l3
  %t601 = load %"compiler/source:Span", ptr %l4
  %t602 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t603 = ptrtoint ptr %t602 to i64
  %t604 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t603, i64 8)
  %t605 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 0
  %t606 = load ptr, ptr %l273, !tbaa !29
  store ptr %t606, ptr %t605, !tbaa !28
  %t607 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 1
  %t608 = load %"compiler/lower:pl", ptr %l276
  store %"compiler/lower:pl" %t608, ptr %t607, !tbaa !28
  %t609 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 2
  store i32 %t599, ptr %t609, !tbaa !28
  %t611 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 3
  store { i64, [1 x i64] } %t600, ptr %t611, !tbaa !28
  %t613 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 4
  store %"compiler/source:Span" %t601, ptr %t613, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t615 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 5
  store ptr %v0, ptr %t615, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t616 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t604, i32 0, i32 6
  store ptr %s0, ptr %t616, !tbaa !28
  %t617 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_20, 0
  %t618 = insertvalue { ptr, ptr } %t617, ptr %t604, 1
  %t619 = load ptr, ptr %l264, !tbaa !29
  %t620 = load { i64, [4 x i64] }, ptr %l271
  %t621 = load %"compiler/source:Span", ptr %l272
  %t623 = extractvalue { ptr, ptr } %t618, 0
  %t624 = extractvalue { ptr, ptr } %t618, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s0, ptr %t619, { i64, [4 x i64] } %t620, %"compiler/source:Span" %t621, ptr %t623, ptr %t624)
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
  %t625 = load i32, ptr %l12, !tbaa !23
  %t627 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t625)
  store %"compiler/mir:Lvalue" %t627, ptr %l284
  br label %bb101
bb101:
  store { i64, [4 x i64] } zeroinitializer, ptr %t628
  %t629 = getelementptr { i64, [4 x i64] }, ptr %t628, i32 0, i32 0
  store i64 1, ptr %t629
  %t630 = load %"compiler/mir:Lvalue", ptr %l284
  %t631 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t630, 0
  %t632 = getelementptr { i64, [4 x i64] }, ptr %t628, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t631, ptr %t632
  %t633 = load { i64, [4 x i64] }, ptr %t628
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t633, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
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
  %l63 = alloca %"compiler/lower:tryCtx"
  %l70 = alloca i64
  %l73 = alloca i64
  %l93 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l116 = alloca i64
  %l119 = alloca i64
  %l139 = alloca i1
  %l140 = alloca ptr
  %l142 = alloca { i64, ptr }
  %l145 = alloca i32
  %l148 = alloca i32
  %l149 = alloca i1
  %l157 = alloca i1
  %l173 = alloca { i64, ptr }
  %l175 = alloca { i64, [4 x i64] }
  %l184 = alloca { i64, ptr }
  %l186 = alloca { i64, [4 x i64] }
  %l199 = alloca { i64, ptr }
  %l201 = alloca { i64, [4 x i64] }
  %l204 = alloca { i64, [4 x i64] }
  %l211 = alloca { i64, ptr }
  %l213 = alloca { i64, [4 x i64] }
  %l218 = alloca i1
  %l222 = alloca i1
  %l232 = alloca i32
  %l235 = alloca i32
  %l255 = alloca ptr
  %l271 = alloca ptr
  %l282 = alloca i32
  %l290 = alloca i64
  %l296 = alloca i32
  %l306 = alloca ptr
  %l308 = alloca %"compiler/mir:Lvalue"
  %l315 = alloca { i64, ptr }
  %l318 = alloca i1
  %l321 = alloca i64
  %l328 = alloca ptr
  %l329 = alloca %"compiler/source:Span"
  %l337 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %t117 = alloca { i64, [4 x i64] }, align 8
  %t265 = alloca { i64, [4 x i64] }, align 8
  %t278 = alloca { i64, [4 x i64] }, align 8
  %t315 = alloca { i64, [4 x i64] }, align 8
  %t355 = alloca { i64, [4 x i64] }, align 8
  %t463 = alloca { i64, [8 x i64] }, align 8
  %t513 = alloca { i64, [21 x i64] }, align 8
  %t622 = alloca { i64, [4 x i64] }, align 8
  %t656 = alloca { i64, [4 x i64] }, align 8
  %t659 = alloca { i64, [8 x i64] }, align 8
  %t678 = alloca { i64, [15 x i64] }, align 8
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
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 21
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
  br label %bb108
bb7:
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 21
  %t45 = load i64, ptr %l9, !tbaa !24
  %t48 = call %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v0, ptr %t44, i64 %t45)
  store %"compiler/lower:tryCtx" %t48, ptr %l61
  br label %bb9
bb9:
  %t50 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %s2, ptr %l61)
  store %"compiler/lower:tryCtx" %t50, ptr %l63
  br label %bb10
bb10:
  %t51 = getelementptr %"compiler/lower:tryCtx", ptr %l63, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t58 = load i64, ptr %l12, !tbaa !24
  %t59 = load i64, ptr %l11, !tbaa !24
  %t62 = icmp sgt i64 %t58, %t59
  br i1 %t62, label %bb11, label %bb12
bb11:
  %t64 = load i64, ptr %l13, !tbaa !24
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb16
bb13:
  %t68 = load i64, ptr %l12, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t73 = load i64, ptr %l13, !tbaa !24
  %t76 = add i64 %t72, %t73
  %t78 = sub i64 %t76, 1
  %t79 = load i64, ptr %l13, !tbaa !24
  %t82 = sdiv i64 %t78, %t79
  store i64 %t82, ptr %l73, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb15
bb15:
  %t84 = load i64, ptr %l73, !tbaa !24
  store i64 %t84, ptr %l70, !tbaa !24
  br label %bb16
bb16:
  %t85 = load i64, ptr %l70, !tbaa !24
  store i64 %t85, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb17
bb17:
  %t86 = load i64, ptr %l15, !tbaa !24
  %t87 = load i64, ptr %l14, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb18, label %bb19
bb18:
  br label %bb93
bb19:
  br label %bb20
bb20:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l15, !tbaa !24
  %t96 = load i64, ptr %l13, !tbaa !24
  %t99 = mul i64 %t95, %t96
  %t102 = add i64 %t94, %t99
  store i64 %t102, ptr %l16, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lower:lowering", ptr %t104, i32 0, i32 12
  %t107 = load i1, ptr %t106, !tbaa !21
  br i1 %t107, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t109 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t109, ptr %l93, !tbaa !27
  %t110 = load i64, ptr %l16, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr ptr, ptr %t113, i64 %t110
  %t115 = load ptr, ptr %t114, !tbaa !39
  store ptr %t115, ptr %l17, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 0
  store i64 0, ptr %t118
  %t119 = load { i64, [4 x i64] }, ptr %t117
  store { i64, [4 x i64] } %t119, ptr %l18
  %t121 = load ptr, ptr %l17, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Clause", ptr %t121, i32 0, i32 2
  %t124 = load i1, ptr %t123, !tbaa !21
  store i1 %t124, ptr %l19, !tbaa !21
  %t126 = load ptr, ptr %l17, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Clause", ptr %t126, i32 0, i32 1
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  store i64 %t133, ptr %l22, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t135 = load i64, ptr %l21, !tbaa !24
  %t136 = load i64, ptr %l22, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  br label %bb72
bb26:
  br label %bb27
bb27:
  %t143 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t143, ptr %l107, !tbaa !27
  %t144 = load i64, ptr %l21, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr %"compiler/typed:Item", ptr %t147, i64 %t144
  %t149 = load %"compiler/typed:Item", ptr %t148
  store %"compiler/typed:Item" %t149, ptr %l23
  %t151 = load i1, ptr %l19, !tbaa !21
  br i1 %t151, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s7)
  br label %bb72
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  %t153 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  store i64 %t155, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t157 = load i64, ptr %l26, !tbaa !24
  %t158 = load i64, ptr %l25, !tbaa !24
  %t161 = icmp sgt i64 %t157, %t158
  br i1 %t161, label %bb31, label %bb32
bb31:
  %t163 = load i64, ptr %l27, !tbaa !24
  %t165 = icmp sgt i64 %t163, 0
  br i1 %t165, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb36
bb33:
  %t167 = load i64, ptr %l26, !tbaa !24
  %t168 = load i64, ptr %l25, !tbaa !24
  %t171 = sub i64 %t167, %t168
  %t172 = load i64, ptr %l27, !tbaa !24
  %t175 = add i64 %t171, %t172
  %t177 = sub i64 %t175, 1
  %t178 = load i64, ptr %l27, !tbaa !24
  %t181 = sdiv i64 %t177, %t178
  store i64 %t181, ptr %l119, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb35
bb35:
  %t183 = load i64, ptr %l119, !tbaa !24
  store i64 %t183, ptr %l116, !tbaa !24
  br label %bb36
bb36:
  %t184 = load i64, ptr %l116, !tbaa !24
  store i64 %t184, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb37
bb37:
  %t185 = load i64, ptr %l29, !tbaa !24
  %t186 = load i64, ptr %l28, !tbaa !24
  %t189 = icmp slt i64 %t185, %t186
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb38, label %bb39
bb38:
  br label %bb51
bb39:
  br label %bb40
bb40:
  %t193 = load i64, ptr %l25, !tbaa !24
  %t194 = load i64, ptr %l29, !tbaa !24
  %t195 = load i64, ptr %l27, !tbaa !24
  %t198 = mul i64 %t194, %t195
  %t201 = add i64 %t193, %t198
  store i64 %t201, ptr %l30, !tbaa !24
  %t203 = load i64, ptr %l24, !tbaa !24
  %t205 = icmp slt i64 %t203, 0
  br i1 %t205, label %bb41, label %bb42
bb41:
  %t207 = load ptr, ptr %l5, !tbaa !29
  store ptr %t207, ptr %l140, !tbaa !29
  %t208 = load ptr, ptr %l5, !tbaa !29
  %t209 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t209, ptr %l142, !tbaa !27
  %t210 = load i64, ptr %l30, !tbaa !24
  %t212 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr i32, ptr %t213, i64 %t210
  %t215 = load i32, ptr %t214, !tbaa !33
  %t218 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t208, i32 %t215)
  store i32 %t218, ptr %l145
  br label %bb43
bb42:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb46
bb43:
  %t219 = load ptr, ptr %l5, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 0
  %t221 = load i32, ptr %t220, !tbaa !23
  %t224 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t219, i32 %t221)
  store i32 %t224, ptr %l148
  br label %bb44
bb44:
  %t225 = load ptr, ptr %l140, !tbaa !29
  %t226 = load i32, ptr %l145, !tbaa !23
  %t227 = load i32, ptr %l148, !tbaa !23
  %t228 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t225, i32 %t226, i32 %t227)
  store i1 %t228, ptr %l149
  br label %bb45
bb45:
  %t229 = load i1, ptr %l149, !tbaa !21
  store i1 %t229, ptr %l139, !tbaa !21
  br label %bb46
bb46:
  %t230 = load i1, ptr %l139, !tbaa !21
  br i1 %t230, label %bb47, label %bb48
bb47:
  %t231 = load i64, ptr %l30, !tbaa !24
  store i64 %t231, ptr %l24, !tbaa !24
  br label %bb49
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t233 = load i64, ptr %l29, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l29, !tbaa !24
  br label %bb37
bb51:
  %t237 = load i64, ptr %l24, !tbaa !24
  %t239 = icmp slt i64 %t237, 0
  br i1 %t239, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb53:
  br label %bb54
bb54:
  %t241 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 1
  %t242 = load i64, ptr %t241, !tbaa !24
  %t244 = icmp slt i64 %t242, 0
  br i1 %t244, label %bb55, label %bb56
bb55:
  %t246 = load i64, ptr %l24, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i1, ptr %t249, i64 %t246
  %t251 = load i1, ptr %t250, !tbaa !31
  %t253 = xor i1 %t251, true
  store i1 %t253, ptr %l157, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb57
bb57:
  %t255 = load i1, ptr %l157, !tbaa !21
  br i1 %t255, label %bb58, label %bb59
bb58:
  %t256 = load i64, ptr %l24, !tbaa !24
  %t258 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i1, ptr %t259, i64 %t256
  store i1 true, ptr %t260, !tbaa !31
  %t261 = load i64, ptr %l8, !tbaa !24
  %t263 = sub i64 %t261, 1
  store i64 %t263, ptr %l8, !tbaa !24
  br label %bb60
bb59:
  br label %bb60
bb60:
  store { i64, [4 x i64] } zeroinitializer, ptr %t265
  %t266 = getelementptr { i64, [4 x i64] }, ptr %t265, i32 0, i32 0
  store i64 0, ptr %t266
  %t267 = load { i64, [4 x i64] }, ptr %t265
  store { i64, [4 x i64] } %t267, ptr %l31
  %t269 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 1
  %t270 = load i64, ptr %t269, !tbaa !24
  %t272 = icmp slt i64 %t270, 0
  br i1 %t272, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s15
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t276 = load { i64, [4 x i64] }, ptr %l1
  %t277 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [4 x i64] }, ptr %t278, i32 0, i32 0
  store i64 2, ptr %t279
  %t281 = insertvalue { i32, i64 } undef, i32 %t277, 0
  %t282 = insertvalue { i32, i64 } %t281, i64 16, 1
  %t283 = getelementptr { i64, [4 x i64] }, ptr %t278, i32 0, i32 1
  store { i32, i64 } %t282, ptr %t283
  %t284 = load { i64, [4 x i64] }, ptr %t278
  %t285 = mul i64 2, 40
  %t286 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t285)
  %t287 = insertvalue { i64, ptr } undef, i64 2, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  store { i64, ptr } %t288, ptr %l173, !tbaa !27
  %t290 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i64 0
  store { i64, [4 x i64] } %t276, ptr %t292
  %t294 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr { i64, [4 x i64] }, ptr %t295, i64 1
  store { i64, [4 x i64] } %t284, ptr %t296
  %t297 = load %"compiler/source:Span", ptr %l3
  %t301 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t303 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s15, ptr %t274, i32 9, i32 %t275, { i64, ptr } %t301, %"compiler/source:Span" %t297)
  store { i64, [4 x i64] } %t303, ptr %l175
  br label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s16
  %t304 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t305 = load i64, ptr %l24, !tbaa !24
  %t307 = add i64 %t305, 1
  %t309 = shl i64 %t307, 16
  %t310 = getelementptr %"compiler/typed:Item", ptr %l23, i32 0, i32 1
  %t311 = load i64, ptr %t310, !tbaa !24
  %t314 = or i64 %t309, %t311
  store { i64, [4 x i64] } zeroinitializer, ptr %t315
  %t316 = getelementptr { i64, [4 x i64] }, ptr %t315, i32 0, i32 0
  store i64 2, ptr %t316
  %t318 = insertvalue { i32, i64 } undef, i32 %t304, 0
  %t320 = insertvalue { i32, i64 } %t318, i64 %t314, 1
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t315, i32 0, i32 1
  store { i32, i64 } %t320, ptr %t321
  %t322 = load { i64, [4 x i64] }, ptr %t315
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t326 = load { i64, [4 x i64] }, ptr %l1
  %t328 = mul i64 2, 40
  %t329 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t328)
  %t330 = insertvalue { i64, ptr } undef, i64 2, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t329, 1
  store { i64, ptr } %t331, ptr %l199, !tbaa !27
  %t333 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr { i64, [4 x i64] }, ptr %t334, i64 0
  store { i64, [4 x i64] } %t326, ptr %t335
  %t337 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr { i64, [4 x i64] }, ptr %t338, i64 1
  store { i64, [4 x i64] } %t322, ptr %t339
  %t340 = load %"compiler/source:Span", ptr %l3
  %t344 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t346 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s16, ptr %t324, i32 13, i32 %t325, { i64, ptr } %t344, %"compiler/source:Span" %t340)
  store { i64, [4 x i64] } %t346, ptr %l201
  br label %bb65
bb63:
  %t347 = load { i64, [4 x i64] }, ptr %l175
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t351 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t352 = load i64, ptr %l24, !tbaa !24
  %t354 = add i64 %t352, 1
  store { i64, [4 x i64] } zeroinitializer, ptr %t355
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 0
  store i64 2, ptr %t356
  %t358 = insertvalue { i32, i64 } undef, i32 %t351, 0
  %t360 = insertvalue { i32, i64 } %t358, i64 %t354, 1
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 1
  store { i32, i64 } %t360, ptr %t361
  %t362 = load { i64, [4 x i64] }, ptr %t355
  %t363 = mul i64 2, 40
  %t364 = call ptr @__olang_scope_alloc_zeroed(ptr %s15, i64 %t363)
  %t365 = insertvalue { i64, ptr } undef, i64 2, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  store { i64, ptr } %t366, ptr %l184, !tbaa !27
  %t368 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = getelementptr { i64, [4 x i64] }, ptr %t369, i64 0
  store { i64, [4 x i64] } %t347, ptr %t370
  %t372 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !27
  %t374 = getelementptr { i64, [4 x i64] }, ptr %t373, i64 1
  store { i64, [4 x i64] } %t362, ptr %t374
  %t375 = load %"compiler/source:Span", ptr %l3
  %t379 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t381 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s15, ptr %t348, i32 13, i32 %t349, { i64, ptr } %t379, %"compiler/source:Span" %t375)
  store { i64, [4 x i64] } %t381, ptr %l186
  br label %bb64
bb64:
  %t382 = load { i64, [4 x i64] }, ptr %l186
  store { i64, [4 x i64] } %t382, ptr %l31
  call void @__olang_scope_close(ptr %s15)
  br label %bb66
bb65:
  %t383 = load { i64, [4 x i64] }, ptr %l201
  store { i64, [4 x i64] } %t383, ptr %l31
  call void @__olang_scope_close(ptr %s16)
  br label %bb66
bb66:
  %t384 = load { i64, [4 x i64] }, ptr %l18
  %t386 = extractvalue { i64, [4 x i64] } %t384, 0
  %t387 = icmp eq i64 %t386, 0
  br i1 %t387, label %bb67, label %bb68
bb67:
  %t389 = load { i64, [4 x i64] }, ptr %l31
  store { i64, [4 x i64] } %t389, ptr %l204
  br label %bb70
bb68:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t393 = load { i64, [4 x i64] }, ptr %l18
  %t394 = load { i64, [4 x i64] }, ptr %l31
  %t395 = mul i64 2, 40
  %t396 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t395)
  %t397 = insertvalue { i64, ptr } undef, i64 2, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  store { i64, ptr } %t398, ptr %l211, !tbaa !27
  %t400 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr { i64, [4 x i64] }, ptr %t401, i64 0
  store { i64, [4 x i64] } %t393, ptr %t402
  %t404 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr { i64, [4 x i64] }, ptr %t405, i64 1
  store { i64, [4 x i64] } %t394, ptr %t406
  %t407 = load %"compiler/source:Span", ptr %l3
  %t411 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t413 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t391, i32 11, i32 %t392, { i64, ptr } %t411, %"compiler/source:Span" %t407)
  store { i64, [4 x i64] } %t413, ptr %l213
  br label %bb69
bb69:
  %t414 = load { i64, [4 x i64] }, ptr %l213
  store { i64, [4 x i64] } %t414, ptr %l204
  br label %bb70
bb70:
  %t415 = load { i64, [4 x i64] }, ptr %l204
  store { i64, [4 x i64] } %t415, ptr %l18
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb71:
  %t416 = load i64, ptr %l21, !tbaa !24
  %t418 = add i64 %t416, 1
  store i64 %t418, ptr %l21, !tbaa !24
  br label %bb24
bb72:
  %t420 = load i1, ptr %l19, !tbaa !21
  %t422 = xor i1 %t420, true
  br i1 %t422, label %bb73, label %bb74
bb73:
  %t424 = load { i64, [4 x i64] }, ptr %l18
  %t426 = extractvalue { i64, [4 x i64] } %t424, 0
  %t427 = icmp eq i64 %t426, 0
  store i1 %t427, ptr %l218, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb75
bb75:
  %t429 = load i1, ptr %l218, !tbaa !21
  br i1 %t429, label %bb76, label %bb77
bb76:
  br label %bb92
bb77:
  br label %bb78
bb78:
  %t430 = load i1, ptr %l19, !tbaa !21
  br i1 %t430, label %bb79, label %bb80
bb79:
  store i1 true, ptr %l222, !tbaa !21
  br label %bb81
bb80:
  %t432 = load i64, ptr %l8, !tbaa !24
  %t434 = icmp eq i64 %t432, 0
  store i1 %t434, ptr %l222, !tbaa !21
  br label %bb81
bb81:
  %t436 = load i1, ptr %l222, !tbaa !21
  br i1 %t436, label %bb82, label %bb83
bb82:
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i64, ptr %l9, !tbaa !24
  %t439 = load i64, ptr %l16, !tbaa !24
  %t440 = load { i64, [4 x i64] }, ptr %l1
  %t441 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %t437, i64 %t438, i64 %t439, { i64, [4 x i64] } %t440, i32 %t441)
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb85:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/lower:lowering", ptr %t447, i32 0, i32 3
  %t451 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t449)
  store i32 %t451, ptr %l232
  br label %bb86
bb86:
  %t452 = load i32, ptr %l232, !tbaa !23
  store i32 %t452, ptr %l34, !tbaa !23
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/lower:lowering", ptr %t453, i32 0, i32 3
  %t457 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t455)
  store i32 %t457, ptr %l235
  br label %bb87
bb87:
  %t458 = load i32, ptr %l235, !tbaa !23
  store i32 %t458, ptr %l35, !tbaa !23
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load { i64, [4 x i64] }, ptr %l18
  %t461 = load i32, ptr %l34, !tbaa !23
  %t462 = load i32, ptr %l35, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t463
  %t464 = getelementptr { i64, [8 x i64] }, ptr %t463, i32 0, i32 0
  store i64 2, ptr %t464
  %t466 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t460, 0
  %t468 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t466, i32 %t461, 1
  %t470 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t468, i32 %t462, 2
  %t471 = getelementptr { i64, [8 x i64] }, ptr %t463, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t470, ptr %t471
  %t472 = load { i64, [8 x i64] }, ptr %t463
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t459, { i64, [8 x i64] } %t472)
  br label %bb88
bb88:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t475, i32 %t476)
  br label %bb89
bb89:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i64, ptr %l9, !tbaa !24
  %t481 = load i64, ptr %l16, !tbaa !24
  %t482 = load { i64, [4 x i64] }, ptr %l1
  %t483 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %t479, i64 %t480, i64 %t481, { i64, [4 x i64] } %t482, i32 %t483)
  br label %bb90
bb90:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i32, ptr %l35, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t489, i32 %t490)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t493 = load i64, ptr %l15, !tbaa !24
  %t495 = add i64 %t493, 1
  store i64 %t495, ptr %l15, !tbaa !24
  br label %bb17
bb93:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/lower:lowering", ptr %t497, i32 0, i32 21
  %t500 = load i64, ptr %l9, !tbaa !24
  %t503 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %s2, ptr %t499, i64 %t500)
  store ptr %t503, ptr %l255
  br label %bb94
bb94:
  %t504 = load ptr, ptr %l255, !tbaa !29
  %t506 = getelementptr %"compiler/lower:tryCtx", ptr %t504, i32 0, i32 2
  %t507 = load i1, ptr %t506, !tbaa !21
  br i1 %t507, label %bb95, label %bb96
bb95:
  br i1 %a4, label %bb97, label %bb98
bb96:
  br label %bb102
bb97:
  store %olang.scope zeroinitializer, ptr %s22
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t512 = load %"compiler/source:Span", ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t513
  %t514 = getelementptr { i64, [21 x i64] }, ptr %t513, i32 0, i32 0
  store i64 13, ptr %t514
  %t516 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t512, 0
  %t517 = getelementptr { i64, [21 x i64] }, ptr %t513, i32 0, i32 1
  store { %"compiler/source:Span" } %t516, ptr %t517
  %t518 = load { i64, [21 x i64] }, ptr %t513
  %t520 = call ptr @__olang_scope_alloc_a(ptr %s22, i64 176, i64 8)
  store { i64, [21 x i64] } %t518, ptr %t520
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s22, ptr %t511, ptr %t520)
  br label %bb99
bb98:
  br label %bb100
bb99:
  call void @__olang_scope_close(ptr %s22)
  br label %bb100
bb100:
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t524 = load { i64, [4 x i64] }, ptr %l1
  %t525 = load i32, ptr %l2, !tbaa !23
  %t526 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %t523, { i64, [4 x i64] } %t524, i32 %t525, %"compiler/source:Span" %t526, i32 14, i1 false)
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb102:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t534 = getelementptr %"compiler/lower:lowering", ptr %t532, i32 0, i32 21
  %t535 = load i64, ptr %l9, !tbaa !24
  %t538 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %s2, ptr %t534, i64 %t535)
  store ptr %t538, ptr %l271
  br label %bb103
bb103:
  %t539 = load ptr, ptr %l271, !tbaa !29
  %t541 = getelementptr %"compiler/lower:tryCtx", ptr %t539, i32 0, i32 3
  %t542 = load i1, ptr %t541, !tbaa !21
  %t544 = xor i1 %t542, true
  br i1 %t544, label %bb104, label %bb105
bb104:
  call void @__olang_scope_close(ptr %s2)
  br label %bb108
bb105:
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb107:
  %t546 = load i64, ptr %l9, !tbaa !24
  %t548 = sub i64 %t546, 1
  store i64 %t548, ptr %l9, !tbaa !24
  br label %bb5
bb108:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = getelementptr %"compiler/lower:lowering", ptr %t550, i32 0, i32 2
  %t553 = load ptr, ptr %t552, !tbaa !29
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/lower:lowering", ptr %t554, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !29
  %t559 = getelementptr %"compiler/typed:Body", ptr %t557, i32 0, i32 2
  %t560 = load i32, ptr %t559, !tbaa !23
  %t563 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t553, i32 %t560)
  store i32 %t563, ptr %l282
  br label %bb109
bb109:
  %t564 = load i32, ptr %l282, !tbaa !23
  store i32 %t564, ptr %l36, !tbaa !23
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = getelementptr %"compiler/lower:lowering", ptr %t565, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !29
  %t570 = getelementptr %"compiler/typed:Body", ptr %t568, i32 0, i32 1
  %t571 = load { i64, [2 x i64] }, ptr %t570
  %t575 = extractvalue { i64, [2 x i64] } %t571, 0
  %t576 = icmp eq i64 %t575, 5
  br i1 %t576, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb124
bb112:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/lower:lowering", ptr %t578, i32 0, i32 21
  %t582 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t580)
  store i64 %t582, ptr %l290
  br label %bb113
bb113:
  %t583 = load i64, ptr %l290, !tbaa !24
  %t584 = icmp sgt i64 %t583, 0
  br i1 %t584, label %bb114, label %bb115
bb114:
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t587 = load { i64, [4 x i64] }, ptr %l1
  %t588 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t589 = load %"compiler/source:Span", ptr %l3
  %t594 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t586, { i64, [4 x i64] } %t587, i32 %t588, %"compiler/source:Span" %t589)
  store i32 %t594, ptr %l296
  br label %bb116
bb115:
  br label %bb123
bb116:
  %t595 = load i32, ptr %l296, !tbaa !23
  store i32 %t595, ptr %l38, !tbaa !23
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t598 = getelementptr %"compiler/lower:lowering", ptr %t596, i32 0, i32 26
  %t599 = load i1, ptr %t598, !tbaa !21
  store i1 %t599, ptr %l39, !tbaa !21
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t603 = getelementptr %"compiler/lower:lowering", ptr %t601, i32 0, i32 26
  store i1 true, ptr %t603, !tbaa !21
  %t604 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t604, i64 0)
  br label %bb117
bb117:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load i1, ptr %l39, !tbaa !21
  %t610 = getelementptr %"compiler/lower:lowering", ptr %t606, i32 0, i32 26
  store i1 %t607, ptr %t610, !tbaa !21
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = getelementptr %"compiler/lower:lowering", ptr %t611, i32 0, i32 12
  %t614 = load i1, ptr %t613, !tbaa !21
  %t616 = xor i1 %t614, true
  br i1 %t616, label %bb118, label %bb119
bb118:
  %t618 = load ptr, ptr %l0, !tbaa !29
  store ptr %t618, ptr %l306, !tbaa !29
  %t619 = load i32, ptr %l38, !tbaa !23
  %t621 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t619)
  store %"compiler/mir:Lvalue" %t621, ptr %l308
  br label %bb120
bb119:
  br label %bb122
bb120:
  store { i64, [4 x i64] } zeroinitializer, ptr %t622
  %t623 = getelementptr { i64, [4 x i64] }, ptr %t622, i32 0, i32 0
  store i64 1, ptr %t623
  %t624 = load %"compiler/mir:Lvalue", ptr %l308
  %t625 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t624, 0
  %t626 = getelementptr { i64, [4 x i64] }, ptr %t622, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t625, ptr %t626
  %t627 = load { i64, [4 x i64] }, ptr %t622
  %t628 = load i32, ptr %l2, !tbaa !23
  %t629 = load %"compiler/source:Span", ptr %l3
  %t630 = load ptr, ptr %l306, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %t630, { i64, [4 x i64] } %t627, i32 %t628, %"compiler/source:Span" %t629, i32 15, i1 true)
  br label %bb121
bb121:
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb123:
  br label %bb129
bb124:
  br i1 true, label %bb125, label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  call void @__olang_check_failed(ptr @olang_loc_1378acbf535452a2_3a9100f5c9d7e1f6)
  unreachable
bb129:
  %t635 = load ptr, ptr %l5, !tbaa !29
  %t636 = load i32, ptr %l36, !tbaa !23
  %t639 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t635, i32 %t636)
  store { i64, ptr } %t639, ptr %l315
  br label %bb130
bb130:
  %t640 = load { i64, ptr }, ptr %l315, !tbaa !27
  %t641 = extractvalue { i64, ptr } %t640, 0
  %t643 = icmp eq i64 %t641, 0
  br i1 %t643, label %bb131, label %bb132
bb131:
  store i1 true, ptr %l318, !tbaa !21
  br label %bb134
bb132:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t647 = getelementptr %"compiler/lower:lowering", ptr %t645, i32 0, i32 21
  %t649 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t647)
  store i64 %t649, ptr %l321
  br label %bb133
bb133:
  %t650 = load i64, ptr %l321, !tbaa !24
  %t651 = icmp eq i64 %t650, 0
  store i1 %t651, ptr %l318, !tbaa !21
  br label %bb134
bb134:
  %t653 = load i1, ptr %l318, !tbaa !21
  br i1 %t653, label %bb135, label %bb136
bb135:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load %"compiler/source:Span", ptr %l3
  store { i64, [4 x i64] } zeroinitializer, ptr %t656
  %t657 = getelementptr { i64, [4 x i64] }, ptr %t656, i32 0, i32 0
  store i64 0, ptr %t657
  %t658 = load { i64, [4 x i64] }, ptr %t656
  store { i64, [8 x i64] } zeroinitializer, ptr %t659
  %t660 = getelementptr { i64, [8 x i64] }, ptr %t659, i32 0, i32 0
  store i64 9, ptr %t660
  %t662 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t655, 0
  %t664 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t662, i32 3, 1
  %t666 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t664, { i64, [4 x i64] } %t658, 2
  %t667 = getelementptr { i64, [8 x i64] }, ptr %t659, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t666, ptr %t667
  %t668 = load { i64, [8 x i64] }, ptr %t659
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t654, { i64, [8 x i64] } %t668)
  br label %bb137
bb136:
  br label %bb138
bb137:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb138:
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l328, !tbaa !29
  %t672 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t672, ptr %l329
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t674 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t675 = load { i64, [4 x i64] }, ptr %l1
  %t676 = load i32, ptr %l2, !tbaa !23
  %t677 = load i32, ptr %l36, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t678
  %t679 = getelementptr { i64, [15 x i64] }, ptr %t678, i32 0, i32 0
  store i64 11, ptr %t679
  %t681 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t675, 0
  %t683 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t681, i32 %t676, 1
  %t685 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t683, i32 %t677, 2
  %t686 = getelementptr { i64, [15 x i64] }, ptr %t678, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t685, ptr %t686
  %t687 = load { i64, [15 x i64] }, ptr %t678
  %t688 = load %"compiler/source:Span", ptr %l3
  %t693 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t673, i32 %t674, { i64, [15 x i64] } %t687, %"compiler/source:Span" %t688)
  store { i64, [4 x i64] } %t693, ptr %l337
  br label %bb139
bb139:
  %t694 = load ptr, ptr %l328, !tbaa !29
  %t695 = load %"compiler/source:Span", ptr %l329
  %t696 = load { i64, [4 x i64] }, ptr %l337
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %t694, %"compiler/source:Span" %t695, { i64, [4 x i64] } %t696, i1 true)
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eelemCopy(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i32
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca %"compiler/lower:pl"
  %l22 = alloca %"compiler/lower:pl"
  %l26 = alloca { i64, [4 x i64] }
  %l29 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca %"compiler/lower:pl"
  %l38 = alloca %"compiler/lower:pl"
  %l42 = alloca { i64, [4 x i64] }
  %l45 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca %"compiler/lower:pl"
  %l50 = alloca %"compiler/lower:pl"
  %l54 = alloca { i64, [4 x i64] }
  %l55 = alloca ptr
  %l56 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca ptr
  %l59 = alloca %"compiler/lower:pl"
  %l61 = alloca %"compiler/lower:pl"
  %l62 = alloca %"compiler/mir:Lvalue"
  %l66 = alloca { i64, [4 x i64] }
  %l69 = alloca i32
  %l70 = alloca ptr
  %l73 = alloca %"compiler/lower:pl"
  %l78 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t103 = alloca { i64, [4 x i64] }, align 8
  %t109 = alloca { i64, [15 x i64] }, align 8
  %t131 = alloca { i64, [2 x i64] }, align 8
  %t150 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 9
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_17c5a608fc43bcc0_8499774d5e0fa2c)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/lower:Lowerer", ptr %t14, i32 0, i32 9
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l6, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:lowering", ptr %t19, i32 0, i32 2
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l18
  br label %bb4
bb4:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  %t29 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t29, ptr %l20
  %t31 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s1, ptr %l20)
  store %"compiler/lower:pl" %t31, ptr %l22
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t32 = load i32, ptr %l2, !tbaa !23
  %t33 = load { i64, [1 x i64] }, ptr %l3
  %t34 = load %"compiler/source:Span", ptr %l5
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load %"compiler/lower:pl", ptr %l22
  %t40 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %s1, ptr %t35, %"compiler/lower:pl" %t36, i32 %t32, { i64, [1 x i64] } %t33, %"compiler/source:Span" %t34, i1 false, i1 false)
  store { i64, [4 x i64] } %t40, ptr %l26
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i64, [4 x i64] }, ptr %l26
  store { i64, [4 x i64] } %t41, ptr %rv
  br label %ret
bb9:
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePartsOnly(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l29
  br label %bb10
bb10:
  %t47 = load i1, ptr %l29, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  %t54 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eEntryOnly(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l34
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb14
bb13:
  %t55 = load i1, ptr %l34, !tbaa !21
  store i1 %t55, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l31, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l35, !tbaa !29
  %t58 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t58, ptr %l36
  %t60 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l36)
  store %"compiler/lower:pl" %t60, ptr %l38
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t61 = load i32, ptr %l2, !tbaa !23
  %t62 = load { i64, [1 x i64] }, ptr %l4
  %t63 = load %"compiler/source:Span", ptr %l5
  %t64 = load ptr, ptr %l35, !tbaa !29
  %t65 = load %"compiler/lower:pl", ptr %l38
  %t69 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eentryCopy(ptr %v0, ptr %s2, ptr %t64, %"compiler/lower:pl" %t65, i32 %t61, { i64, [1 x i64] } %t62, %"compiler/source:Span" %t63)
  store { i64, [4 x i64] } %t69, ptr %l42
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t70 = load { i64, [4 x i64] }, ptr %l42
  store { i64, [4 x i64] } %t70, ptr %rv
  br label %ret
bb19:
  %t71 = load ptr, ptr %l6, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePartsOnly(ptr %v0, ptr %t71, i32 %t72)
  store i1 %t75, ptr %l45
  br label %bb20
bb20:
  %t76 = load i1, ptr %l45, !tbaa !21
  %t77 = xor i1 %t76, true
  br i1 %t77, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l47, !tbaa !29
  %t80 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t80, ptr %l48
  %t82 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l48)
  store %"compiler/lower:pl" %t82, ptr %l50
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t83 = load i32, ptr %l2, !tbaa !23
  %t84 = load { i64, [1 x i64] }, ptr %l3
  %t85 = load %"compiler/source:Span", ptr %l5
  %t86 = load ptr, ptr %l47, !tbaa !29
  %t87 = load %"compiler/lower:pl", ptr %l50
  %t91 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %s3, ptr %t86, %"compiler/lower:pl" %t87, i32 %t83, { i64, [1 x i64] } %t84, %"compiler/source:Span" %t85, i1 false, i1 false)
  store { i64, [4 x i64] } %t91, ptr %l54
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, [4 x i64] }, ptr %l54
  store { i64, [4 x i64] } %t92, ptr %rv
  br label %ret
bb25:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l55, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l56, !tbaa !29
  %t95 = load i32, ptr %l2, !tbaa !23
  store i32 %t95, ptr %l57, !tbaa !23
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l58, !tbaa !29
  %t97 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t97, ptr %l59
  %t99 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l59)
  store %"compiler/lower:pl" %t99, ptr %l61
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l58, !tbaa !29
  %t101 = load %"compiler/lower:pl", ptr %l61
  %t102 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t100, %"compiler/lower:pl" %t101)
  store %"compiler/mir:Lvalue" %t102, ptr %l62
  br label %bb27
bb27:
  store { i64, [4 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 0
  store i64 1, ptr %t104
  %t105 = load %"compiler/mir:Lvalue", ptr %l62
  %t106 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t105, 0
  %t107 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t106, ptr %t107
  %t108 = load { i64, [4 x i64] }, ptr %t103
  store { i64, [15 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [15 x i64] }, ptr %t109, i32 0, i32 0
  store i64 0, ptr %t110
  %t112 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t108, 0
  %t113 = getelementptr { i64, [15 x i64] }, ptr %t109, i32 0, i32 1
  store { { i64, [4 x i64] } } %t112, ptr %t113
  %t114 = load { i64, [15 x i64] }, ptr %t109
  %t115 = load %"compiler/source:Span", ptr %l5
  %t116 = load ptr, ptr %l56, !tbaa !29
  %t117 = load i32, ptr %l57, !tbaa !23
  %t120 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t116, i32 %t117, { i64, [15 x i64] } %t114, %"compiler/source:Span" %t115)
  store { i64, [4 x i64] } %t120, ptr %l66
  br label %bb28
bb28:
  %t121 = load i32, ptr %l2, !tbaa !23
  %t122 = load %"compiler/source:Span", ptr %l5
  %t123 = load ptr, ptr %l55, !tbaa !29
  %t124 = load { i64, [4 x i64] }, ptr %l66
  %t127 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t123, { i64, [4 x i64] } %t124, i32 %t121, %"compiler/source:Span" %t122)
  store i32 %t127, ptr %l69
  br label %bb29
bb29:
  %t128 = load i32, ptr %l69, !tbaa !23
  store i32 %t128, ptr %l7, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l70, !tbaa !29
  %t130 = load i32, ptr %l7, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t131
  %t132 = getelementptr { i64, [2 x i64] }, ptr %t131, i32 0, i32 0
  store i64 1, ptr %t132
  %t134 = insertvalue { i32 } undef, i32 %t130, 0
  %t135 = getelementptr { i64, [2 x i64] }, ptr %t131, i32 0, i32 1
  store { i32 } %t134, ptr %t135
  %t136 = load { i64, [2 x i64] }, ptr %t131
  %t138 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t136)
  store %"compiler/lower:pl" %t138, ptr %l73
  br label %bb30
bb30:
  %t139 = load i32, ptr %l2, !tbaa !23
  %t140 = load { i64, [1 x i64] }, ptr %l4
  %t141 = load %"compiler/source:Span", ptr %l5
  %t142 = load ptr, ptr %l70, !tbaa !29
  %t143 = load %"compiler/lower:pl", ptr %l73
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epartsCopied(ptr %v0, ptr %s0, ptr %t142, %"compiler/lower:pl" %t143, i32 %t139, { i64, [1 x i64] } %t140, %"compiler/source:Span" %t141)
  br label %bb31
bb31:
  %t147 = load i32, ptr %l7, !tbaa !23
  %t149 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t147)
  store %"compiler/mir:Lvalue" %t149, ptr %l78
  br label %bb32
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t150
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 0
  store i64 1, ptr %t151
  %t152 = load %"compiler/mir:Lvalue", ptr %l78
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
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 27
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
  %t57 = getelementptr %"compiler/lower:Lowerer", ptr %t55, i32 0, i32 9
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 9
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
  %t73 = getelementptr %"compiler/lower:Lowerer", ptr %t71, i32 0, i32 9
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/free:Free", ptr %t74, i32 0, i32 124
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l35, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l35, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = getelementptr %"compiler/lower:Lowerer", ptr %t81, i32 0, i32 9
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
  %t90 = getelementptr %"compiler/lower:Lowerer", ptr %t88, i32 0, i32 9
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
  %t114 = getelementptr %"compiler/lower:lowering", ptr %t112, i32 0, i32 33
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
  %t131 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_21, 0
  %t132 = insertvalue { ptr, ptr } %t131, ptr %t127, 1
  %t133 = load ptr, ptr %l3, !tbaa !29
  %t134 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t135 = ptrtoint ptr %t134 to i64
  %t137 = getelementptr { ptr, ptr }, ptr %t136, i32 0, i32 0
  store ptr %t133, ptr %t137, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t139 = getelementptr { ptr, ptr }, ptr %t136, i32 0, i32 1
  store ptr %v0, ptr %t139, !tbaa !28
  %t140 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_22, 0
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 13
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/lower:Lowerer", ptr %t11, i32 0, i32 10
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
  %t50 = getelementptr %"compiler/lower:lowering", ptr %t48, i32 0, i32 13
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
  store i64 20, ptr %t32
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
  %t74 = getelementptr %"compiler/typed:LocalUses", ptr %t72, i32 0, i32 9
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
  %t86 = getelementptr %"compiler/lower:lowering", ptr %t84, i32 0, i32 49
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
  %t42 = getelementptr %"compiler/lower:lowering", ptr %t40, i32 0, i32 49
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
  %t51 = getelementptr %"compiler/typed:LocalUses", ptr %t49, i32 0, i32 10
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 20
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
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 20
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
  %t34 = getelementptr %"compiler/lower:lowering", ptr %t32, i32 0, i32 20
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
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 20
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
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s0, ptr %t74, %"compiler/source:Span" %a1, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eliveStep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca i32
  %l30 = alloca i64
  %l34 = alloca { i64, ptr }
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i32
  %l52 = alloca i64
  %l56 = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ementions(ptr %v0, ptr %v1, ptr %a0, ptr %t2, i64 %a2, i64 %a3)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/lower:liveness", ptr %t9, i32 0, i32 9
  store ptr %t11, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  store i64 %t13, ptr %l18, !tbaa !24
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t14)
  store i64 %t16, ptr %l20
  br label %bb3
bb3:
  %t17 = load i64, ptr %l18, !tbaa !24
  %t18 = load i64, ptr %l20, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t23, i64 %t24)
  store i32 %t27, ptr %l25
  br label %bb7
bb7:
  %t28 = load i32, ptr %l25, !tbaa !23
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/lower:liveness", ptr %t29, i32 0, i32 0
  %t34 = sext i32 %t28 to i64
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t31, i64 %t34)
  store i64 %t37, ptr %l30
  br label %bb8
bb8:
  %t38 = load i64, ptr %l30, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/lower:liveness", ptr %t43, i32 0, i32 7
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l34, !tbaa !27
  %t47 = load i64, ptr %l7, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i1, ptr %t50, i64 %t47
  store i1 false, ptr %t51, !tbaa !31
  br label %bb11
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb2
bb13:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/lower:liveness", ptr %t56, i32 0, i32 8
  store ptr %t58, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l9, !tbaa !24
  store i64 %t60, ptr %l40, !tbaa !24
  %t61 = load ptr, ptr %l8, !tbaa !29
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t61)
  store i64 %t63, ptr %l42
  br label %bb15
bb15:
  %t64 = load i64, ptr %l40, !tbaa !24
  %t65 = load i64, ptr %l42, !tbaa !24
  %t66 = icmp slt i64 %t64, %t65
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb16, label %bb17
bb16:
  br label %bb25
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l8, !tbaa !29
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l47
  br label %bb19
bb19:
  %t75 = load i32, ptr %l47, !tbaa !23
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/lower:liveness", ptr %t76, i32 0, i32 0
  %t81 = sext i32 %t75 to i64
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t78, i64 %t81)
  store i64 %t84, ptr %l52
  br label %bb20
bb20:
  %t85 = load i64, ptr %l52, !tbaa !24
  store i64 %t85, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t88 = icmp sge i64 %t86, 0
  br i1 %t88, label %bb21, label %bb22
bb21:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/lower:liveness", ptr %t90, i32 0, i32 7
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l56, !tbaa !27
  %t94 = load i64, ptr %l11, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i1, ptr %t97, i64 %t94
  store i1 true, ptr %t98, !tbaa !31
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l9, !tbaa !24
  br label %bb14
bb25:
  br label %ret
ret:
  ret void
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
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 31
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
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t15, i32 0, i32 32
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

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l3 = alloca %"compiler/mir:Call"
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l9 = alloca %"compiler/mir:Call"
  %l12 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 3
  %t4 = getelementptr %"compiler/mir:Fn", ptr %t3, i32 0, i32 14
  %t8 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t4, i64 %a2)
  store %"compiler/mir:Call" %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load %"compiler/mir:Call", ptr %l9
  store %"compiler/mir:Call" %t9, ptr %l3
  %t10 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 4
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  %t15 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 3
  %t16 = getelementptr %"compiler/mir:Lvalue", ptr %t15, i32 0, i32 1
  %t17 = getelementptr %"compiler/mir:Range", ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = icmp ne i32 %t18, 0
  store i1 %t20, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l12, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/mir:Call", ptr %l3, i32 0, i32 3
  %t24 = getelementptr %"compiler/mir:Lvalue", ptr %t23, i32 0, i32 0
  %t25 = load { i64, [2 x i64] }, ptr %t24
  store { i64, [2 x i64] } %t25, ptr %l4
  %t27 = load { i64, [2 x i64] }, ptr %l4
  %t29 = extractvalue { i64, [2 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 1
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t33 = getelementptr { i32 }, ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l5, !tbaa !23
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t38 = getelementptr %"compiler/lower:liveness", ptr %a1, i32 0, i32 11
  %t39 = load i32, ptr %l5, !tbaa !23
  %t41 = sext i32 %t39 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t38, i64 %t41, i1 true)
  br label %bb11
bb11:
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_6b9970bee08cd5b5_313bf71023add0f1)
  unreachable
bb17:
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
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 17
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

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epartCopy(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5) #0 {
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
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, [1 x i64] }
  %l49 = alloca { i64, [1 x i64] }
  %l50 = alloca i32
  %l52 = alloca ptr
  %l58 = alloca { i64, [4 x i64] }
  %l61 = alloca i32
  %l62 = alloca ptr
  %l65 = alloca %"compiler/lower:pl"
  %l72 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t41 = alloca { i64, [4 x i64] }, align 8
  %t89 = alloca { i64, [4 x i64] }, align 8
  %t105 = alloca { i64, [4 x i64] }, align 8
  %t114 = alloca { i64, [15 x i64] }, align 8
  %t136 = alloca { i64, [2 x i64] }, align 8
  %t159 = alloca { i64, [4 x i64] }, align 8
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 34
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
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 33
  %t17 = getelementptr %"compiler/typed:Plan", ptr %t16, i32 0, i32 6
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
  %t28 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 33
  %t29 = getelementptr %"compiler/typed:Plan", ptr %t28, i32 0, i32 6
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
  %t50 = getelementptr %"compiler/lower:Lowerer", ptr %t48, i32 0, i32 9
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_bf1f9adf3819f22a_a64af85a72a8013e)
  unreachable
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/lower:lowering", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/lower:Lowerer", ptr %t58, i32 0, i32 9
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t71 = load i64, ptr %l1, !tbaa !24
  %t72 = load i32, ptr %l3, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePartSplit(ptr %v0, ptr %s0, ptr %t61, i64 %t70, i64 %t71, i32 %t72)
  store { i64, ptr } %t77, ptr %l41
  br label %bb16
bb16:
  %t78 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t78, ptr %l6, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t83 = icmp eq i64 %t81, %t82
  %t84 = extractvalue { i64, ptr } %t79, 1
  %t85 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t86 = icmp eq ptr %t84, %t85
  %t87 = and i1 %t83, %t86
  br i1 %t87, label %bb17, label %bb18
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t91 = load { i64, [4 x i64] }, ptr %t89
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t91, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 36
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %t95, i64 %t96)
  %t100 = extractvalue { i32, { i64, [1 x i64] } } %t99, 1
  %t101 = extractvalue { i32, { i64, [1 x i64] } } %t99, 0
  store i32 %t101, ptr %l50
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb21, label %ok.103, !prof !99
ok.103:
  store { i64, [1 x i64] } %t100, ptr %l49
  br label %bb20
bb20:
  %t104 = load { i64, [1 x i64] }, ptr %l49
  store { i64, [1 x i64] } %t104, ptr %l45
  br label %bb23
bb21:
  br label %bb22
bb22:
  store { i64, [4 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 0
  store i64 0, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t105
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t107, ptr %rv
  br label %ret
bb23:
  %t109 = load { i64, [1 x i64] }, ptr %l45
  store { i64, [1 x i64] } %t109, ptr %l7
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l52, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l3, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t114
  %t115 = getelementptr { i64, [15 x i64] }, ptr %t114, i32 0, i32 0
  store i64 0, ptr %t115
  %t117 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %a2, 0
  %t118 = getelementptr { i64, [15 x i64] }, ptr %t114, i32 0, i32 1
  store { { i64, [4 x i64] } } %t117, ptr %t118
  %t119 = load { i64, [15 x i64] }, ptr %t114
  %t120 = load %"compiler/source:Span", ptr %l5
  %t125 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t111, i32 %t112, { i64, [15 x i64] } %t119, %"compiler/source:Span" %t120)
  store { i64, [4 x i64] } %t125, ptr %l58
  br label %bb24
bb24:
  %t126 = load i32, ptr %l3, !tbaa !23
  %t127 = load %"compiler/source:Span", ptr %l5
  %t128 = load ptr, ptr %l52, !tbaa !29
  %t129 = load { i64, [4 x i64] }, ptr %l58
  %t132 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t128, { i64, [4 x i64] } %t129, i32 %t126, %"compiler/source:Span" %t127)
  store i32 %t132, ptr %l61
  br label %bb25
bb25:
  %t133 = load i32, ptr %l61, !tbaa !23
  store i32 %t133, ptr %l8, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l62, !tbaa !29
  %t135 = load i32, ptr %l8, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t136, i32 0, i32 0
  store i64 1, ptr %t137
  %t139 = insertvalue { i32 } undef, i32 %t135, 0
  %t140 = getelementptr { i64, [2 x i64] }, ptr %t136, i32 0, i32 1
  store { i32 } %t139, ptr %t140
  %t141 = load { i64, [2 x i64] }, ptr %t136
  %t143 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t141)
  store %"compiler/lower:pl" %t143, ptr %l65
  br label %bb26
bb26:
  %t144 = load i32, ptr %l3, !tbaa !23
  %t145 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t147 = load { i64, [1 x i64] }, ptr %l7
  %t148 = load %"compiler/source:Span", ptr %l5
  %t149 = load ptr, ptr %l62, !tbaa !29
  %t150 = load %"compiler/lower:pl", ptr %l65
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epartSplit(ptr %v0, ptr %s0, ptr %s0, ptr %t149, %"compiler/lower:pl" %t150, i32 %t144, { i64, ptr } %t145, i64 0, { i64, [1 x i64] } %a4, { i64, [1 x i64] } %t147, %"compiler/source:Span" %t148)
  br label %bb27
bb27:
  %t156 = load i32, ptr %l8, !tbaa !23
  %t158 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t156)
  store %"compiler/mir:Lvalue" %t158, ptr %l72
  br label %bb28
bb28:
  store { i64, [4 x i64] } zeroinitializer, ptr %t159
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 0
  store i64 1, ptr %t160
  %t161 = load %"compiler/mir:Lvalue", ptr %l72
  %t162 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t161, 0
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t162, ptr %t163
  %t164 = load { i64, [4 x i64] }, ptr %t159
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t164, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epartsCopied(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca %"compiler/lower:pl"
  %l42 = alloca %"compiler/lower:pl"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  store i64 0, ptr %l5, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s1, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l21, !tbaa !24
  store i64 %t35, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l18, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l9, !tbaa !24
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l10, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l39, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l40
  %t58 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l40)
  store %"compiler/lower:pl" %t58, ptr %l42
  br label %bb12
bb12:
  %t59 = load i32, ptr %l2, !tbaa !23
  %t60 = load i64, ptr %l10, !tbaa !24
  %t63 = load ptr, ptr %l39, !tbaa !29
  %t64 = load %"compiler/lower:pl", ptr %l42
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epartOf(ptr %v0, ptr %s2, ptr %t63, %"compiler/lower:pl" %t64, i32 %t59, i64 %t60, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t69 = load i64, ptr %l9, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l9, !tbaa !24
  br label %bb8
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
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
  %t73 = getelementptr %"compiler/lower:lowering", ptr %t71, i32 0, i32 27
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
  %t86 = getelementptr %"compiler/lower:lowering", ptr %t84, i32 0, i32 33
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
  %t100 = getelementptr %"compiler/lower:lowering", ptr %t98, i32 0, i32 33
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

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/lower:pl"
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
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t39 = alloca { i64, [15 x i64] }, align 8
  %t103 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
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
  %t12 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t12, ptr %l3
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 12
  %t16 = load i1, ptr %t15, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load %"compiler/lower:pl", ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/lower:pl" %t18, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Payload", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 4}
  %t25 = trunc i64 0 to i32
  %t26 = icmp eq i32 %t23, %t25
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l20, !tbaa !29
  %t31 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t31, ptr %l21, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l22, !tbaa !29
  %t33 = load %"compiler/lower:pl", ptr %l3
  store %"compiler/lower:pl" %t33, ptr %l23
  %t35 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l23)
  store %"compiler/lower:pl" %t35, ptr %l25
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t37 = load %"compiler/lower:pl", ptr %l25
  %t38 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t36, %"compiler/lower:pl" %t37)
  store %"compiler/mir:Lvalue" %t38, ptr %l26
  br label %bb9
bb9:
  store { i64, [15 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [15 x i64] }, ptr %t39, i32 0, i32 0
  store i64 5, ptr %t40
  %t41 = load %"compiler/mir:Lvalue", ptr %l26
  %t42 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t41, 0
  %t43 = getelementptr { i64, [15 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t42, ptr %t43
  %t44 = load { i64, [15 x i64] }, ptr %t39
  %t45 = load %"compiler/source:Span", ptr %l2
  %t46 = load ptr, ptr %l20, !tbaa !29
  %t47 = load i32, ptr %l21, !tbaa !23
  %t50 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t46, i32 %t47, { i64, [15 x i64] } %t44, %"compiler/source:Span" %t45)
  store { i64, [4 x i64] } %t50, ptr %l29
  br label %bb10
bb10:
  %t51 = load { i64, [4 x i64] }, ptr %l29
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l30, !tbaa !29
  store i32 13, ptr %l31
  %t53 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t53, ptr %l32, !tbaa !23
  store { i64, [4 x i64] } %t51, ptr %l33
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Payload", ptr %t56, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  %t62 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t55, i64 %t59)
  store { i64, [4 x i64] } %t62, ptr %l37
  br label %bb11
bb11:
  %t63 = mul i64 2, 40
  %t64 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 2, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load { i64, [4 x i64] }, ptr %l33
  %t68 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t69, i64 0
  store { i64, [4 x i64] } %t67, ptr %t70
  %t71 = load { i64, [4 x i64] }, ptr %l37
  %t72 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i64 1
  store { i64, [4 x i64] } %t71, ptr %t74
  %t75 = load %"compiler/source:Span", ptr %l2
  %t76 = load ptr, ptr %l30, !tbaa !29
  %t77 = load i32, ptr %l31, !range !{i32 0, i32 51}
  %t78 = load i32, ptr %l32, !tbaa !23
  %t79 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t81 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t76, i32 %t77, i32 %t78, { i64, ptr } %t79, %"compiler/source:Span" %t75)
  store { i64, [4 x i64] } %t81, ptr %l40
  br label %bb12
bb12:
  %t82 = load { i64, [4 x i64] }, ptr %l40
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Payload", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %t87, !range !{i32 0, i32 4}
  %t89 = load i64, ptr @G_2ecompiler_2flower_2eWrongCase, !tbaa !24
  %t90 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t83, { i64, [4 x i64] } %t82, i32 %t88, i32 10, i64 %t89, %"compiler/source:Span" %t90)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/lower:pl", ptr %l3
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Payload", ptr %t99, i32 0, i32 1
  %t102 = load i64, ptr %t101, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [1 x i64] }, ptr %t103, i32 0, i32 0
  store i64 4, ptr %t104
  %t106 = insertvalue { i64 } undef, i64 %t102, 0
  %t107 = getelementptr { i64, [1 x i64] }, ptr %t103, i32 0, i32 1
  store { i64 } %t106, ptr %t107
  %t108 = load { i64, [1 x i64] }, ptr %t103
  %t112 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %v2, ptr %t97, %"compiler/lower:pl" %t98, { i64, [1 x i64] } %t108)
  store %"compiler/lower:pl" %t112, ptr %l53
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load %"compiler/lower:pl", ptr %l53
  store %"compiler/lower:pl" %t113, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 60
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
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 60
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
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 60
  store ptr %t31, ptr %l18, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l20, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 59
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
  %t54 = getelementptr %"compiler/lower:lowering", ptr %t52, i32 0, i32 60
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
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 58
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
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 51
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t44)
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lower:lowering", ptr %t46, i32 0, i32 54
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
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t54, i32 0, i32 52
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
  %t112 = getelementptr %"compiler/lower:lowering", ptr %t110, i32 0, i32 51
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t112)
  br label %bb35
bb35:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/lower:lowering", ptr %t114, i32 0, i32 54
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

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l4 = alloca ptr
  %l7 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %t3 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l4, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 0
  store i64 1, ptr %t4
  %t6 = insertvalue { i32 } undef, i32 %a1, 0
  %t7 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 1
  store { i32 } %t6, ptr %t7
  %t8 = load { i64, [2 x i64] }, ptr %t3
  %t10 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t8)
  store %"compiler/lower:pl" %t10, ptr %l7
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load %"compiler/lower:pl", ptr %l7
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseOn(ptr %v0, ptr %s0, ptr %v1, ptr %t13, %"compiler/lower:pl" %t14, ptr %a2, %"compiler/source:Span" %a3)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
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
  %l13 = alloca %"compiler/mir:Lvalue"
  %l14 = alloca { i64, [21 x i64] }
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca %"compiler/lower:relPath"
  %l25 = alloca %"compiler/lower:relPath"
  %l30 = alloca i32
  %l34 = alloca i32
  %l36 = alloca %"compiler/lower:pl"
  %l38 = alloca %"compiler/lower:pl"
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca %"compiler/lower:pl"
  %l52 = alloca %"compiler/lower:pl"
  %l55 = alloca %"compiler/lower:pl"
  %l60 = alloca ptr
  %l61 = alloca %"compiler/lower:pl"
  %l63 = alloca %"compiler/lower:pl"
  %l64 = alloca %"compiler/lower:relPath"
  %l66 = alloca %"compiler/lower:relPath"
  %l73 = alloca ptr
  %l74 = alloca %"compiler/lower:pl"
  %l76 = alloca %"compiler/lower:pl"
  %l77 = alloca %"compiler/mir:Lvalue"
  %l79 = alloca { i64, [21 x i64] }
  %l82 = alloca { i64, [21 x i64] }
  %l85 = alloca { i64, [21 x i64] }
  %l86 = alloca ptr
  %l88 = alloca ptr
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t75 = alloca { i64, [1 x i64] }, align 8
  %t130 = alloca { i64, [21 x i64] }, align 8
  %t140 = alloca { i64, [21 x i64] }, align 8
  %t154 = alloca { i64, [21 x i64] }, align 8
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
  store i64 %t3, ptr %l16, !tbaa !24
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v2, ptr %t4)
  store i64 %t6, ptr %l18
  br label %bb2
bb2:
  %t7 = load i64, ptr %l16, !tbaa !24
  %t8 = load i64, ptr %l18, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = call %"compiler/lower:relPath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eAt_3ccompiler_2flower_3arelPath_3e(ptr %v2, ptr %v2, ptr %t13, i64 %t14)
  store %"compiler/lower:relPath" %t17, ptr %l23
  br label %bb6
bb6:
  %t19 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s2, ptr %l23)
  store %"compiler/lower:relPath" %t19, ptr %l25
  br label %bb7
bb7:
  %t20 = load %"compiler/lower:relPath", ptr %l25
  store %"compiler/lower:relPath" %t20, ptr %l6
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 12
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
  store i32 %t38, ptr %l34
  br label %bb13
bb12:
  %t39 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t39, ptr %l30, !tbaa !23
  br label %bb14
bb13:
  %t41 = load i32, ptr %l34, !tbaa !23
  store i32 %t41, ptr %l30, !tbaa !23
  br label %bb14
bb14:
  %t42 = load i32, ptr %l30, !tbaa !23
  store i32 %t42, ptr %l7, !tbaa !23
  store %"compiler/lower:pl" %a1, ptr %l36
  %t45 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l36)
  store %"compiler/lower:pl" %t45, ptr %l38
  br label %bb15
bb15:
  %t46 = load %"compiler/lower:pl", ptr %l38
  store %"compiler/lower:pl" %t46, ptr %l8
  %t47 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 1
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t54 = load i64, ptr %l10, !tbaa !24
  %t55 = load i64, ptr %l11, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s5)
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t62 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t62, ptr %l46, !tbaa !27
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i64, ptr %t66, i64 %t63
  %t68 = load i64, ptr %t67, !tbaa !34
  store i64 %t68, ptr %l12, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l49, !tbaa !29
  %t71 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t71, ptr %l50
  %t73 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s5, ptr %l50)
  store %"compiler/lower:pl" %t73, ptr %l52
  br label %bb20
bb20:
  %t74 = load i64, ptr %l12, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [1 x i64] }, ptr %t75, i32 0, i32 0
  store i64 0, ptr %t76
  %t78 = insertvalue { i64 } undef, i64 %t74, 0
  %t79 = getelementptr { i64, [1 x i64] }, ptr %t75, i32 0, i32 1
  store { i64 } %t78, ptr %t79
  %t80 = load { i64, [1 x i64] }, ptr %t75
  %t81 = load ptr, ptr %l49, !tbaa !29
  %t82 = load %"compiler/lower:pl", ptr %l52
  %t84 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s5, ptr %s2, ptr %t81, %"compiler/lower:pl" %t82, { i64, [1 x i64] } %t80)
  store %"compiler/lower:pl" %t84, ptr %l55
  br label %bb21
bb21:
  %t85 = load %"compiler/lower:pl", ptr %l55
  store %"compiler/lower:pl" %t85, ptr %l8
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb22:
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l10, !tbaa !24
  br label %bb16
bb23:
  %t90 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 4
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = icmp sge i64 %t91, 0
  br i1 %t93, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l60, !tbaa !29
  %t96 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t96, ptr %l61
  %t98 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s7, ptr %l61)
  store %"compiler/lower:pl" %t98, ptr %l63
  br label %bb26
bb25:
  br label %bb33
bb26:
  %t99 = load %"compiler/lower:relPath", ptr %l6
  store %"compiler/lower:relPath" %t99, ptr %l64
  %t101 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %s7, ptr %l64)
  store %"compiler/lower:relPath" %t101, ptr %l66
  br label %bb27
bb27:
  %t102 = load %"compiler/source:Span", ptr %l3
  %t103 = load ptr, ptr %l60, !tbaa !29
  %t104 = load %"compiler/lower:pl", ptr %l63
  %t105 = load %"compiler/lower:relPath", ptr %l66
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2etextWalk(ptr %v0, ptr %s7, ptr %s7, ptr %t103, %"compiler/lower:pl" %t104, %"compiler/lower:relPath" %t105, %"compiler/source:Span" %t102)
  br label %bb28
bb28:
  %t107 = load i32, ptr %l7, !tbaa !23
  %t108 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t111 = icmp ne i32 %t107, %t108
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %t113, i32 %t114)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  br label %bb47
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l73, !tbaa !29
  %t118 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t118, ptr %l74
  %t120 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l74)
  store %"compiler/lower:pl" %t120, ptr %l76
  br label %bb34
bb34:
  %t121 = load ptr, ptr %l73, !tbaa !29
  %t122 = load %"compiler/lower:pl", ptr %l76
  %t123 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t121, %"compiler/lower:pl" %t122)
  store %"compiler/mir:Lvalue" %t123, ptr %l77
  br label %bb35
bb35:
  %t124 = load %"compiler/mir:Lvalue", ptr %l77
  store %"compiler/mir:Lvalue" %t124, ptr %l13
  %t125 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 3
  %t126 = load i1, ptr %t125, !tbaa !21
  br i1 %t126, label %bb36, label %bb37
bb36:
  %t128 = load %"compiler/source:Span", ptr %l3
  %t129 = load %"compiler/mir:Lvalue", ptr %l13
  store { i64, [21 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [21 x i64] }, ptr %t130, i32 0, i32 0
  store i64 8, ptr %t131
  %t133 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } undef, %"compiler/source:Span" %t128, 0
  %t135 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t133, %"compiler/mir:Lvalue" %t129, 1
  %t136 = getelementptr { i64, [21 x i64] }, ptr %t130, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t135, ptr %t136
  %t137 = load { i64, [21 x i64] }, ptr %t130
  store { i64, [21 x i64] } %t137, ptr %l82
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %l82, i64 176, i1 false)
  br label %bb38
bb37:
  %t138 = load %"compiler/source:Span", ptr %l3
  %t139 = load %"compiler/mir:Lvalue", ptr %l13
  store { i64, [21 x i64] } zeroinitializer, ptr %t140
  %t141 = getelementptr { i64, [21 x i64] }, ptr %t140, i32 0, i32 0
  store i64 6, ptr %t141
  %t143 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } undef, %"compiler/source:Span" %t138, 0
  %t145 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t143, %"compiler/mir:Lvalue" %t139, 1
  %t146 = getelementptr { i64, [21 x i64] }, ptr %t140, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t145, ptr %t146
  %t147 = load { i64, [21 x i64] }, ptr %t140
  store { i64, [21 x i64] } %t147, ptr %l85
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %l85, i64 176, i1 false)
  br label %bb38
bb38:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l79, i64 176, i1 false)
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l86, !tbaa !29
  %t149 = getelementptr %"compiler/lower:relPath", ptr %l6, i32 0, i32 2
  %t150 = load i1, ptr %t149, !tbaa !21
  br i1 %t150, label %bb39, label %bb40
bb39:
  %t152 = load %"compiler/source:Span", ptr %l3
  %t153 = load %"compiler/mir:Lvalue", ptr %l13
  store { i64, [21 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [21 x i64] }, ptr %t154, i32 0, i32 0
  store i64 7, ptr %t155
  %t157 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } undef, %"compiler/source:Span" %t152, 0
  %t159 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t157, %"compiler/mir:Lvalue" %t153, 1
  %t160 = getelementptr { i64, [21 x i64] }, ptr %t154, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue" } %t159, ptr %t160
  %t161 = load { i64, [21 x i64] }, ptr %t154
  %t163 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t161, ptr %t163
  store ptr %t163, ptr %l88, !tbaa !29
  br label %bb41
bb40:
  store ptr %l14, ptr %l88, !tbaa !29
  br label %bb41
bb41:
  %t166 = load ptr, ptr %l86, !tbaa !29
  %t167 = load ptr, ptr %l88, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t166, ptr %t167)
  br label %bb42
bb42:
  %t168 = load i32, ptr %l7, !tbaa !23
  %t169 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t172 = icmp ne i32 %t168, %t169
  br i1 %t172, label %bb43, label %bb44
bb43:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %t174, i32 %t175)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s2)
  br label %bb47
bb47:
  %t178 = load i64, ptr %l5, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l5, !tbaa !24
  br label %bb1
bb48:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/lower:level"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l16 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l72 = alloca i64
  %l77 = alloca i64
  %l79 = alloca i64
  %l84 = alloca %"compiler/lower:level"
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l94 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l124 = alloca { i64, [1 x i64] }
  %l125 = alloca ptr
  %l127 = alloca { i64, [1 x i64] }
  %l129 = alloca i1
  %l131 = alloca i1
  %l134 = alloca i1
  %l135 = alloca i1
  %l137 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 11
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb10
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t16 = load ptr, ptr %l25, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l25, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 13
  store i1 %t22, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l26, !tbaa !21
  store i1 %t23, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t24 = load i1, ptr %l24, !tbaa !21
  br i1 %t24, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb15
bb12:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t26 = load ptr, ptr %l30, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t29 = load ptr, ptr %l30, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 14
  store i1 %t32, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t33 = load i1, ptr %l31, !tbaa !21
  store i1 %t33, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t34 = load i1, ptr %l29, !tbaa !21
  br i1 %t34, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb20
bb17:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t36 = load ptr, ptr %l35, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb18, label %bb19
bb18:
  %t39 = load ptr, ptr %l35, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 12
  store i1 %t42, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t43 = load i1, ptr %l36, !tbaa !21
  store i1 %t43, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t44 = load i1, ptr %l34, !tbaa !21
  br i1 %t44, label %bb21, label %bb22
bb21:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l43
  br label %bb23
bb22:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb24
bb23:
  %t52 = load i1, ptr %l43, !tbaa !21
  store i1 %t52, ptr %l40, !tbaa !21
  br label %bb24
bb24:
  %t53 = load i1, ptr %l40, !tbaa !21
  br i1 %t53, label %bb25, label %bb26
bb25:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load i32, ptr %l2, !tbaa !23
  %t60 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ebranchesCopy(ptr %v0, ptr %v1, ptr %t54, ptr %t55, i32 %t56)
  store i1 %t60, ptr %l47
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t61 = load i1, ptr %l47, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
bb28:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t68 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %t62, ptr %t63, i32 %t64)
  store i1 %t68, ptr %l51
  br label %bb29
bb29:
  %t69 = load i1, ptr %l51, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb30, label %bb31
bb30:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l2, !tbaa !23
  %t76 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t76, ptr %l56
  br label %bb32
bb31:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb37
bb32:
  %t77 = load i1, ptr %l56, !tbaa !21
  br i1 %t77, label %bb33, label %bb34
bb33:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t82 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t78, ptr %t79)
  store i1 %t82, ptr %l60
  br label %bb35
bb34:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb36
bb35:
  %t83 = load i1, ptr %l60, !tbaa !21
  store i1 %t83, ptr %l57, !tbaa !21
  br label %bb36
bb36:
  %t84 = load i1, ptr %l57, !tbaa !21
  %t85 = xor i1 %t84, true
  store i1 %t85, ptr %l53, !tbaa !21
  br label %bb37
bb37:
  %t87 = load i1, ptr %l53, !tbaa !21
  br i1 %t87, label %bb38, label %bb39
bb38:
  store i1 false, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = call i1 @compiler_2ftyped_2eFreshTemp(ptr %v1, ptr %t89)
  store i1 %t91, ptr %l64
  br label %bb41
bb41:
  %t92 = load i1, ptr %l64, !tbaa !21
  br i1 %t92, label %bb42, label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 27
  %t97 = load i1, ptr %t96, !tbaa !21
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb45, label %bb46
bb45:
  store i1 true, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 18
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l72
  br label %bb48
bb48:
  %t107 = load i64, ptr %l72, !tbaa !24
  %t108 = icmp sgt i64 %t107, 0
  br i1 %t108, label %bb49, label %bb50
bb49:
  store i1 true, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/lower:lowering", ptr %t111, i32 0, i32 14
  store ptr %t113, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb52
bb52:
  %t115 = load i64, ptr %l5, !tbaa !24
  store i64 %t115, ptr %l77, !tbaa !24
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t116)
  store i64 %t118, ptr %l79
  br label %bb53
bb53:
  %t119 = load i64, ptr %l77, !tbaa !24
  %t120 = load i64, ptr %l79, !tbaa !24
  %t121 = icmp slt i64 %t119, %t120
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb54, label %bb55
bb54:
  br label %bb62
bb55:
  br label %bb56
bb56:
  %t125 = load ptr, ptr %l4, !tbaa !29
  %t126 = load i64, ptr %l5, !tbaa !24
  %t129 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t125, i64 %t126)
  store %"compiler/lower:level" %t129, ptr %l84
  br label %bb57
bb57:
  %t130 = load %"compiler/lower:level", ptr %l84
  store %"compiler/lower:level" %t130, ptr %l6
  %t131 = getelementptr %"compiler/lower:level", ptr %l6, i32 0, i32 2
  %t132 = load i32, ptr %t131, !range !{i32 0, i32 7}
  %t134 = trunc i64 3 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb58, label %bb59
bb58:
  store i1 true, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t138 = load i64, ptr %l5, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l5, !tbaa !24
  br label %bb52
bb62:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t146 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v1, ptr %t142, ptr %t143)
  store ptr %t146, ptr %l92
  br label %bb63
bb63:
  %t147 = load ptr, ptr %l92, !tbaa !29
  store ptr %t147, ptr %l7, !tbaa !29
  %t148 = load ptr, ptr %l7, !tbaa !29
  store ptr %t148, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t149 = load ptr, ptr %l93, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb64, label %bb65
bb64:
  %t152 = load ptr, ptr %l93, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 18}
  %t155 = icmp eq i64 %t153, 2
  store i1 %t155, ptr %l94, !tbaa !21
  br label %bb65
bb65:
  %t156 = load i1, ptr %l94, !tbaa !21
  %t157 = xor i1 %t156, true
  br i1 %t157, label %bb66, label %bb67
bb66:
  store i1 true, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t160 = load ptr, ptr %l7, !tbaa !29
  %t162 = getelementptr { i64, [5 x i64] }, ptr %t160, i32 0, i32 1
  %t163 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t162, i32 0, i32 0
  %t164 = load %"compiler/source:Span", ptr %t163
  store %"compiler/source:Span" %t164, ptr %l8
  %t166 = load ptr, ptr %l7, !tbaa !29
  %t168 = getelementptr { i64, [5 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t168, i32 0, i32 1
  %t170 = load i32, ptr %t169
  store i32 %t170, ptr %l9, !tbaa !23
  %t172 = load ptr, ptr %l7, !tbaa !29
  %t174 = getelementptr { i64, [5 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t174, i32 0, i32 2
  %t176 = load ptr, ptr %t175
  %t178 = load ptr, ptr %l7, !tbaa !29
  %t180 = getelementptr { i64, [5 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t180, i32 0, i32 3
  %t182 = load i32, ptr %t181
  store i32 %t182, ptr %l11, !tbaa !23
  store ptr %t176, ptr %l12, !tbaa !29
  %t186 = load ptr, ptr %l12, !tbaa !29
  store ptr %t186, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t187 = load ptr, ptr %l108, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb69, label %bb70
bb69:
  %t190 = load ptr, ptr %l108, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 8}
  %t193 = icmp eq i64 %t191, 0
  store i1 %t193, ptr %l109, !tbaa !21
  br label %bb70
bb70:
  %t194 = load i1, ptr %l109, !tbaa !21
  %t195 = xor i1 %t194, true
  br i1 %t195, label %bb71, label %bb72
bb71:
  store i1 true, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t198 = load ptr, ptr %l12, !tbaa !29
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t200, i32 0, i32 0
  %t202 = load %"compiler/source:Span", ptr %t201
  store %"compiler/source:Span" %t202, ptr %l13
  %t204 = load ptr, ptr %l12, !tbaa !29
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t206, i32 0, i32 1
  %t208 = load i32, ptr %t207
  store i32 %t208, ptr %l14, !tbaa !23
  %t210 = load ptr, ptr %l12, !tbaa !29
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t212, i32 0, i32 2
  %t214 = load i32, ptr %t213
  %t218 = sext i32 %t214 to i64
  store i64 %t218, ptr %l16, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i64, ptr %l16, !tbaa !24
  %t224 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eretHome(ptr %v0, ptr %t220, i64 %t221)
  store { i64, [1 x i64] } %t224, ptr %l124
  br label %bb74
bb74:
  store ptr %l124, ptr %l125, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %t225)
  store { i64, [1 x i64] } %t227, ptr %l127
  br label %bb75
bb75:
  %t228 = load ptr, ptr %l125, !tbaa !29
  %t230 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aScopeRef(ptr %t228, ptr %l127)
  store i1 %t230, ptr %l129
  br label %bb76
bb76:
  %t231 = load i1, ptr %l129, !tbaa !21
  %t232 = xor i1 %t231, true
  br i1 %t232, label %bb77, label %bb78
bb77:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb83
bb78:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i32, ptr %l2, !tbaa !23
  %t238 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t234, i32 %t235)
  store i1 %t238, ptr %l134
  br label %bb79
bb79:
  %t239 = load i1, ptr %l134, !tbaa !21
  br i1 %t239, label %bb80, label %bb81
bb80:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/lower:lowering", ptr %t240, i32 0, i32 33
  %t243 = getelementptr %"compiler/typed:Plan", ptr %t242, i32 0, i32 3
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !27
  store { i64, ptr } %t244, ptr %l137, !tbaa !27
  %t245 = load i64, ptr %l16, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i1, ptr %t248, i64 %t245
  %t250 = load i1, ptr %t249, !tbaa !31
  %t252 = xor i1 %t250, true
  store i1 %t252, ptr %l135, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb82
bb82:
  %t254 = load i1, ptr %l135, !tbaa !21
  store i1 %t254, ptr %l131, !tbaa !21
  br label %bb83
bb83:
  %t255 = load i1, ptr %l131, !tbaa !21
  store i1 %t255, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2esplitParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, { i64, [1 x i64] } %a5, { i64, [1 x i64] } %a6, %"compiler/source:Span" %a7, { i64, ptr } %a8) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/lower:pl"
  %l19 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca %"compiler/lower:pl"
  %l49 = alloca %"compiler/lower:pl"
  %l52 = alloca %"compiler/lower:pl"
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca %"compiler/lower:pl"
  %l67 = alloca %"compiler/lower:pl"
  %l77 = alloca ptr
  %l78 = alloca %"compiler/lower:pl"
  %l80 = alloca %"compiler/lower:pl"
  %l85 = alloca ptr
  %l86 = alloca %"compiler/lower:pl"
  %l88 = alloca i32
  %l89 = alloca { i64, ptr }
  %l91 = alloca i64
  %l92 = alloca { i64, [1 x i64] }
  %l93 = alloca { i64, [1 x i64] }
  %l94 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
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
  store { i64, ptr } %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t6, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l12, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l11, !tbaa !24
  %t22 = load i64, ptr %l10, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l12, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l12, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l28, !tbaa !24
  store i64 %t37, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l25, !tbaa !24
  store i64 %t38, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load i64, ptr %l14, !tbaa !24
  %t40 = load i64, ptr %l13, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l14, !tbaa !24
  %t49 = load i64, ptr %l12, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l15, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l46, !tbaa !29
  store %"compiler/lower:pl" %a1, ptr %l47
  %t60 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l47)
  store %"compiler/lower:pl" %t60, ptr %l49
  br label %bb12
bb12:
  %t61 = load i64, ptr %l15, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [1 x i64] }, ptr %t62, i32 0, i32 0
  store i64 0, ptr %t63
  %t65 = insertvalue { i64 } undef, i64 %t61, 0
  %t66 = getelementptr { i64, [1 x i64] }, ptr %t62, i32 0, i32 1
  store { i64 } %t65, ptr %t66
  %t67 = load { i64, [1 x i64] }, ptr %t62
  %t68 = load ptr, ptr %l46, !tbaa !29
  %t69 = load %"compiler/lower:pl", ptr %l49
  %t71 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s2, ptr %s2, ptr %t68, %"compiler/lower:pl" %t69, { i64, [1 x i64] } %t67)
  store %"compiler/lower:pl" %t71, ptr %l52
  br label %bb13
bb13:
  %t72 = load %"compiler/lower:pl", ptr %l52
  store %"compiler/lower:pl" %t72, ptr %l16
  %t73 = load i64, ptr %l4, !tbaa !24
  %t75 = icmp eq i64 %t73, 0
  br i1 %t75, label %bb14, label %bb15
bb14:
  %t78 = load i64, ptr %l15, !tbaa !24
  %t81 = call i1 @compiler_2flower_2eslottedField(ptr %s0, { i64, ptr } %a8, i64 %t78)
  store i1 %t81, ptr %l58
  br label %bb16
bb15:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb17
bb16:
  %t82 = load i1, ptr %l58, !tbaa !21
  store i1 %t82, ptr %l55, !tbaa !21
  br label %bb17
bb17:
  %t83 = load i1, ptr %l55, !tbaa !21
  br i1 %t83, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb19:
  br label %bb20
bb20:
  %t84 = load i64, ptr %l15, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t85, ptr %l60, !tbaa !27
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t86
  %t91 = load i64, ptr %t90, !tbaa !34
  %t94 = icmp ne i64 %t84, %t91
  br i1 %t94, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l64, !tbaa !29
  %t97 = load %"compiler/lower:pl", ptr %l16
  store %"compiler/lower:pl" %t97, ptr %l65
  %t99 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s4, ptr %l65)
  store %"compiler/lower:pl" %t99, ptr %l67
  br label %bb23
bb22:
  %t100 = load i64, ptr %l4, !tbaa !24
  %t102 = add i64 %t100, 1
  %t103 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t108 = icmp eq i64 %t102, %t105
  br i1 %t108, label %bb25, label %bb26
bb23:
  %t110 = load i64, ptr %l15, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  %t116 = load { i64, [1 x i64] }, ptr %l6
  %t117 = load %"compiler/source:Span", ptr %l7
  %t118 = load ptr, ptr %l64, !tbaa !29
  %t119 = load %"compiler/lower:pl", ptr %l67
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %s4, ptr %t118, %"compiler/lower:pl" %t119, i32 %t115, { i64, [1 x i64] } %t116, %"compiler/source:Span" %t117)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l77, !tbaa !29
  %t124 = load %"compiler/lower:pl", ptr %l16
  store %"compiler/lower:pl" %t124, ptr %l78
  %t126 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s6, ptr %l78)
  store %"compiler/lower:pl" %t126, ptr %l80
  br label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s7
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l85, !tbaa !29
  %t128 = load %"compiler/lower:pl", ptr %l16
  store %"compiler/lower:pl" %t128, ptr %l86
  %t129 = load i64, ptr %l15, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 %t129
  %t134 = load i32, ptr %t133, !tbaa !33
  store i32 %t134, ptr %l88, !tbaa !23
  %t135 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t135, ptr %l89, !tbaa !27
  %t136 = load i64, ptr %l4, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l91, !tbaa !24
  %t139 = load { i64, [1 x i64] }, ptr %l5
  store { i64, [1 x i64] } %t139, ptr %l92
  %t140 = load { i64, [1 x i64] }, ptr %l6
  store { i64, [1 x i64] } %t140, ptr %l93
  %t141 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t141, ptr %l94
  %t142 = icmp sge i64 0, 0
  br i1 %t142, label %bb29, label %bb30
bb27:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 %t144
  %t149 = load i32, ptr %t148, !tbaa !33
  %t150 = load { i64, [1 x i64] }, ptr %l5
  %t151 = load %"compiler/source:Span", ptr %l7
  %t152 = load ptr, ptr %l77, !tbaa !29
  %t153 = load %"compiler/lower:pl", ptr %l80
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyPart(ptr %v0, ptr %s6, ptr %t152, %"compiler/lower:pl" %t153, i32 %t149, { i64, [1 x i64] } %t150, %"compiler/source:Span" %t151)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb29:
  %t157 = icmp sle i64 0, 1152921504606846975
  br i1 %t157, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_a23d063b0bf9ea84_857e493ddc3bf8c8)
  unreachable
bb31:
  %t159 = mul i64 0, 8
  %t160 = insertvalue { i64, ptr } undef, i64 0, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t162 = load ptr, ptr %l85, !tbaa !29
  %t163 = load %"compiler/lower:pl", ptr %l86
  %t164 = load i32, ptr %l88, !tbaa !23
  %t165 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t166 = load i64, ptr %l91, !tbaa !24
  %t167 = load { i64, [1 x i64] }, ptr %l92
  %t168 = load { i64, [1 x i64] }, ptr %l93
  %t169 = load %"compiler/source:Span", ptr %l94
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2esplitParts(ptr %v0, ptr %s7, ptr %v2, ptr %t162, %"compiler/lower:pl" %t163, i32 %t164, { i64, ptr } %t165, i64 %t166, { i64, [1 x i64] } %t167, { i64, [1 x i64] } %t168, %"compiler/source:Span" %t169, { i64, ptr } %t161)
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_a23d063b0bf9ea84_857e493ddc3bf8c8)
  unreachable
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb34
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb36:
  %t171 = load i64, ptr %l14, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l14, !tbaa !24
  br label %bb8
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %t5 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 11
  store i32 %t2, ptr %t5, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 12
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 12
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 59
  %t9 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 60
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t14, i64 -1)
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtIn(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 59
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
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 60
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
  %t25 = getelementptr %"compiler/lower:lowering", ptr %t23, i32 0, i32 12
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
  %t40 = getelementptr %"compiler/lower:lowering", ptr %t38, i32 0, i32 12
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
  %t136 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_24, 0
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
  %t145 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_25, 0
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
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 51}
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
  %t29 = load i32, ptr %l4, !range !{i32 0, i32 51}
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
  store i64 22, ptr %t230
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

define dso_local void @compiler_2flower_2emarkLoop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, i64 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l21 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %l61 = alloca i64
  %l65 = alloca { i64, ptr }
  %l68 = alloca i64
  %l70 = alloca ptr
  %l73 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l94 = alloca i64
  %l97 = alloca i64
  %l115 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store i64 %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1, ptr %l21, !tbaa !27
  %t2 = load i64, ptr %l0, !tbaa !24
  %t3 = load i64, ptr %l0, !tbaa !24
  %t6 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %t2
  store i64 %t3, ptr %t8, !tbaa !34
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l24
  br label %bb1
bb1:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l7
  store i64 %a1, ptr %l8, !tbaa !24
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t13)
  store i64 %t15, ptr %l27
  br label %bb2
bb2:
  %t16 = load i64, ptr %l27, !tbaa !24
  store i64 %t16, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = load i64, ptr %l8, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load i64, ptr %l10, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb8
bb5:
  %t27 = load i64, ptr %l9, !tbaa !24
  %t28 = load i64, ptr %l8, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l10, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l10, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l34, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l34, !tbaa !24
  store i64 %t43, ptr %l31, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l31, !tbaa !24
  store i64 %t44, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l12, !tbaa !24
  %t46 = load i64, ptr %l11, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  br label %bb25
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l12, !tbaa !24
  %t55 = load i64, ptr %l10, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l13, !tbaa !24
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t64 = load i64, ptr %l13, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t63, i64 %t64)
  store i64 %t67, ptr %l54
  br label %bb13
bb13:
  %t68 = load i64, ptr %l0, !tbaa !24
  %t69 = load i64, ptr %l54, !tbaa !24
  %t71 = icmp ne i64 %t69, %t68
  br i1 %t71, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb17
bb15:
  %t73 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t73, ptr %l58, !tbaa !27
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t75 = load i64, ptr %l13, !tbaa !24
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t74, i64 %t75)
  store i64 %t78, ptr %l61
  br label %bb16
bb16:
  %t79 = load i64, ptr %l61, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i64, ptr %t81, i64 %t79
  %t83 = load i64, ptr %t82, !tbaa !34
  %t84 = load i64, ptr %l0, !tbaa !24
  %t87 = icmp eq i64 %t83, %t84
  store i1 %t87, ptr %l57, !tbaa !21
  br label %bb17
bb17:
  %t89 = load i1, ptr %l57, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  br label %bb20
bb20:
  %t90 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t90, ptr %l65, !tbaa !27
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load i64, ptr %l13, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l68
  br label %bb21
bb21:
  %t96 = load i64, ptr %l0, !tbaa !24
  %t98 = load i64, ptr %l68, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i64, ptr %t100, i64 %t98
  store i64 %t96, ptr %t101, !tbaa !34
  store ptr %l7, ptr %l70, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l73
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l70, !tbaa !29
  %t108 = load i64, ptr %l73, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t107, i64 %t108)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t109 = load i64, ptr %l12, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l12, !tbaa !24
  br label %bb9
bb25:
  br label %bb26
bb26:
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t114, ptr %l77
  br label %bb27
bb27:
  %t115 = load i64, ptr %l77, !tbaa !24
  %t116 = icmp sgt i64 %t115, 0
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb28, label %bb29
bb28:
  br label %bb52
bb29:
  br label %bb30
bb30:
  %t121 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l7)
  %t122 = extractvalue { i32, i64 } %t121, 1
  %t123 = extractvalue { i32, i64 } %t121, 0
  store i32 %t123, ptr %l83
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb32, label %ok.125, !prof !99
ok.125:
  store i64 %t122, ptr %l82
  br label %bb31
bb31:
  %t126 = load i64, ptr %l82, !tbaa !24
  store i64 %t126, ptr %l80, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  br label %bb52
bb34:
  %t127 = load i64, ptr %l80, !tbaa !24
  store i64 %t127, ptr %l14, !tbaa !24
  %t128 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t128, ptr %l84, !tbaa !27
  %t129 = load i64, ptr %l14, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t129
  %t134 = load i64, ptr %t133, !tbaa !34
  store i64 %t134, ptr %l15, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t136, ptr %l87, !tbaa !27
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = add i64 %t137, 1
  %t141 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i64, ptr %t142, i64 %t139
  %t144 = load i64, ptr %t143, !tbaa !34
  store i64 %t144, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t146 = load i64, ptr %l16, !tbaa !24
  %t147 = load i64, ptr %l15, !tbaa !24
  %t150 = icmp sgt i64 %t146, %t147
  br i1 %t150, label %bb35, label %bb36
bb35:
  %t152 = load i64, ptr %l17, !tbaa !24
  %t154 = icmp sgt i64 %t152, 0
  br i1 %t154, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb40
bb37:
  %t156 = load i64, ptr %l16, !tbaa !24
  %t157 = load i64, ptr %l15, !tbaa !24
  %t160 = sub i64 %t156, %t157
  %t161 = load i64, ptr %l17, !tbaa !24
  %t164 = add i64 %t160, %t161
  %t166 = sub i64 %t164, 1
  %t167 = load i64, ptr %l17, !tbaa !24
  %t170 = sdiv i64 %t166, %t167
  store i64 %t170, ptr %l97, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb39
bb39:
  %t172 = load i64, ptr %l97, !tbaa !24
  store i64 %t172, ptr %l94, !tbaa !24
  br label %bb40
bb40:
  %t173 = load i64, ptr %l94, !tbaa !24
  store i64 %t173, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb41
bb41:
  %t174 = load i64, ptr %l19, !tbaa !24
  %t175 = load i64, ptr %l18, !tbaa !24
  %t178 = icmp slt i64 %t174, %t175
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb42, label %bb43
bb42:
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t182 = load i64, ptr %l15, !tbaa !24
  %t183 = load i64, ptr %l19, !tbaa !24
  %t184 = load i64, ptr %l17, !tbaa !24
  %t187 = mul i64 %t183, %t184
  %t190 = add i64 %t182, %t187
  store i64 %t190, ptr %l20, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t192, ptr %l115, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t193, ptr %l116, !tbaa !27
  %t194 = load i64, ptr %l20, !tbaa !24
  %t196 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr i64, ptr %t197, i64 %t194
  %t199 = load i64, ptr %t198, !tbaa !34
  %t201 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i64, ptr %t202, i64 %t199
  %t204 = load i64, ptr %t203, !tbaa !34
  %t205 = load i64, ptr %l0, !tbaa !24
  %t208 = icmp eq i64 %t204, %t205
  br i1 %t208, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t210 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t210, ptr %l122, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t211, ptr %l123, !tbaa !27
  %t212 = load i64, ptr %l20, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i64, ptr %t215, i64 %t212
  %t217 = load i64, ptr %t216, !tbaa !34
  %t218 = load i64, ptr %l0, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr i64, ptr %t222, i64 %t217
  store i64 %t218, ptr %t223, !tbaa !34
  %t224 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t224, ptr %l128, !tbaa !27
  %t225 = load i64, ptr %l20, !tbaa !24
  %t227 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr i64, ptr %t228, i64 %t225
  %t230 = load i64, ptr %t229, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l7, i64 %t230)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t233 = load i64, ptr %l19, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l19, !tbaa !24
  br label %bb41
bb50:
  br label %bb51
bb51:
  br label %bb26
bb52:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lower:CloneHand" @compiler_2flower_3aCloneHand_2ector(ptr %v0, i64 %a0, { i64, [2 x i64] } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/lower:CloneHand"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/lower:CloneHand" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/lower:CloneHand" %t10, { i64, [2 x i64] } %a1, 1
  %t14 = insertvalue %"compiler/lower:CloneHand" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/lower:CloneHand" %t14, i64 %a3, 3
  store %"compiler/lower:CloneHand" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:CloneHand", ptr %rv
  ret %"compiler/lower:CloneHand" %rr
}

define dso_local %"compiler/lower:CloneSite" @compiler_2flower_3aCloneSite_2ector(ptr %v0, { i64, [2 x i64] } %a0, i64 %a1, { i64, [2 x i64] } %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/lower:CloneSite"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/lower:CloneSite" undef, { i64, [2 x i64] } %a0, 0
  %t12 = insertvalue %"compiler/lower:CloneSite" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/lower:CloneSite" %t12, { i64, [2 x i64] } %a2, 2
  %t16 = insertvalue %"compiler/lower:CloneSite" %t14, i32 %a3, 3
  store %"compiler/lower:CloneSite" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:CloneSite", ptr %rv
  ret %"compiler/lower:CloneSite" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
define linkonce_odr %"compiler/lower:CloneSum" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aCloneSum(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:CloneSum"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:CloneSum"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:CloneSum", ptr %a0
  store %"compiler/lower:CloneSum" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:CloneSum", ptr %l1, i32 0, i32 2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:CloneSum", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/lower:CloneSum", ptr %l1, i32 0, i32 3
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/lower:CloneSum", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/lower:CloneSum", ptr %l1
  store %"compiler/lower:CloneSum" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:CloneSum", ptr %rv
  ret %"compiler/lower:CloneSum" %rr
}

@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ok " }>, align 8
@.c1 = private unnamed_addr constant [5 x i8] c"true\00"
@.c2 = private unnamed_addr constant [6 x i8] c"false\00"
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" size " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" loop" }>, align 8
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
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" hand " }>, align 8
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
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"->" }>, align 8
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
  %t4 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t8, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  %t13 = sext i32 %t11 to i64
  %t14 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t15 = call i64 @__olang_fmt_i64(ptr %t14, i64 %t13)
  call void @__olang_sb_add(ptr %v0, i64 %t15)
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t16, i64 %t17)
  br label %bb1
bb3:
  %t18 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i32, ptr %t24
  %t27 = sext i32 %t25 to i64
  %t28 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t29)
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t30, i64 %t31)
  br label %bb1
bb4:
  %t32 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t32, i64 %t33)
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t34, i64 %t35)
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 1
  %t38 = getelementptr { i32 }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  %t41 = sext i32 %t39 to i64
  %t42 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t41)
  call void @__olang_sb_add(ptr %v0, i64 %t43)
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t44, i64 %t45)
  br label %bb1
bb5:
  %t46 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t48, i64 %t49)
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i32, i32 }, ptr %t51, i32 0, i32 0
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %v0, ptr %t52, i64 %a1)
  br label %bb9
bb6:
  %t55 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 1
  %t61 = getelementptr { i64 }, ptr %t60, i32 0, i32 0
  %t62 = load i64, ptr %t61
  %t64 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t65 = call i64 @__olang_fmt_i64(ptr %t64, i64 %t62)
  call void @__olang_sb_add(ptr %v0, i64 %t65)
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t66, i64 %t67)
  br label %bb1
bb7:
  %t68 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr { i64, [2 x i64] }, ptr %t72, i32 0, i32 1
  %t74 = getelementptr { i64, i1 }, ptr %t73, i32 0, i32 0
  %t75 = load i64, ptr %t74
  %t77 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t78 = call i64 @__olang_fmt_i64(ptr %t77, i64 %t75)
  call void @__olang_sb_add(ptr %v0, i64 %t78)
  %t79 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr { i64, [2 x i64] }, ptr %t81, i32 0, i32 1
  %t83 = getelementptr { i64, i1 }, ptr %t82, i32 0, i32 1
  %t84 = load i1, ptr %t83
  %t86 = select i1 %t84, ptr @.c1, ptr @.c2
  %t87 = select i1 %t84, i64 4, i64 5
  call void @__olang_sb_put(ptr %v0, ptr %t86, i64 %t87)
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t88, i64 %t89)
  br label %bb1
bb8:
  %t90 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t90, i64 %t91)
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t92, i64 %t93)
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t94, i32 0, i32 1
  %t96 = getelementptr { i32, i64 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96
  %t99 = sext i32 %t97 to i64
  %t100 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t101 = call i64 @__olang_fmt_i64(ptr %t100, i64 %t99)
  call void @__olang_sb_add(ptr %v0, i64 %t101)
  %t102 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t102, i64 %t103)
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [2 x i64] }, ptr %t104, i32 0, i32 1
  %t106 = getelementptr { i32, i64 }, ptr %t105, i32 0, i32 1
  %t107 = load i64, ptr %t106
  %t109 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t110 = call i64 @__olang_fmt_i64(ptr %t109, i64 %t107)
  call void @__olang_sb_add(ptr %v0, i64 %t110)
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t111, i64 %t112)
  br label %bb1
bb9:
  %t113 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t113, i64 %t114)
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr { i64, [2 x i64] }, ptr %t115, i32 0, i32 1
  %t117 = getelementptr { i32, i32 }, ptr %t116, i32 0, i32 1
  %t118 = load i32, ptr %t117
  %t120 = sext i32 %t118 to i64
  %t121 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t122 = call i64 @__olang_fmt_i64(ptr %t121, i64 %t120)
  call void @__olang_sb_add(ptr %v0, i64 %t122)
  %t123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t124 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t123, i64 %t124)
  br label %bb1
ret:
  ret void
}

@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" d" }>, align 8
declare void @__olang_sb_done(ptr)
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:Plan"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 584, i1 false)
  %t2 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 11
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 12
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 22
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  %t47 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 23
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 584, i1 false)
  br label %ret
ret:
  ret void
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"gen" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"plain" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define internal i1 @olang_lambda_14(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" weak " }>, align 8
@.d16 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a constructor of a type that is no struct" }>, align 8
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
define internal void @olang_lambda_17(ptr %env, i32 %a0) #0 {
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

define internal void @olang_lambda_18(ptr %env, i64 %a0, i32 %a1) #0 {
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

@.d19 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a Copy helper for a type with no parts" }>, align 8
define internal void @olang_lambda_20(ptr %env, i32 %a0) #0 {
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

define internal i64 @olang_lambda_21(ptr %env, i32 %a0) #0 {
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

define internal { i64, ptr } @olang_lambda_22(ptr %env, ptr %v0, i32 %a0) #0 {
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
@.d23 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a jump out of a loop not being lowered" }>, align 8
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
declare void @__olang_bang_failed_plain(ptr) cold noreturn
define internal i64 @olang_lambda_24(ptr %env, i32 %a0) #0 {
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

define internal i64 @olang_lambda_25(ptr %env, i32 %a0) #0 {
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
  %t3 = getelementptr %"compiler/lower:lowering", ptr %cv0, i32 0, i32 48
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 48
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 48
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d26 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"mir.FnKey.Body" }>, align 8
@.d27 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d28 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d29 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.FnKey.Adapter" }>, align 8
@.d30 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"mir.FnKey.Copied" }>, align 8
@.d31 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"mir.FnKey.Helper" }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
ret:
  ret void
}

@.d32 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"mir.FnKey.Init" }>, align 8
@.d33 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.FnKey.AnyRender" }>, align 8
@.d34 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d35 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"mir.FnKey.Twin" }>, align 8
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
@.d36 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.HelperKind.Render" }>, align 8
@.d37 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Equal" }>, align 8
@.d38 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Hash" }>, align 8
@.d39 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Zero" }>, align 8
@.d40 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Copy" }>, align 8
@.d41 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Parts" }>, align 8
@.d42 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Drop" }>, align 8
@.d43 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Guard" }>, align 8
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

@olang_loc_b33a0661a011e178_dcd63aec50757664 = external constant [0 x i8]
@olang_loc_ad272ff31dc381ae_4a185251f7060aca = external constant [0 x i8]
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ecloneSum(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/lower:CloneSum" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneSum_3e_2eAt_3ccompiler_2flower_3aCloneSum_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2eLen__Hdac5394885c7d3b88563717d707df765(ptr %v0, ptr %a0)
declare %"compiler/lower:CloneHand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2eAt_3ccompiler_2flower_3aCloneHand_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3aLowerer_2ederivedFact(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eDecide(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e3721461a855ef35_c24433bc0ae5f641 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_585470ea6701dfed_8ee4dec4923e1081 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_4e4c17ebfaf5d7b6_624a73934957b6f2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2flower_2estandIn(ptr %out, ptr %v0, i32 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2ebare(ptr %out, ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare void @compiler_2flower_3alowering_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eadapterBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshParam(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2efreshMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
@olang_loc_7e98ebbcfc7ae681_fbeaec9fd6de6485 = external constant [0 x i8]
@olang_loc_80862e2151cf42f0_7c300e18841fcdd4 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hc20348a7e3f4966d079d7d53957fcef1(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_2_H25a1fa74df5469e35efe3ff4130517ef(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_c32f9218f06293f2_15f5ca50bc3801e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2eKnownOf(ptr %v0, { i64, [4 x i64] } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_1c8e237ef9fc0f77_d8ac58b856c76263 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3bb6ecc05d6dab56_3c8834dd1d368462 = external constant [0 x i8]
declare i64 @compiler_2flower_2ewholeLocal({ i64, [4 x i64] } %a0)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2ePush_H85e09a50fcd8a8472d6e0741db5df478(ptr %v0, ptr %a0, %"compiler/lower:CloneHand" %a1)
@olang_loc_f74ed6c6f28c676d_f94a3fd07e079859 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aCloneHand_3e_2eToAr_Hf2705ae9b9c3665d2bce5131843165c9(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_H4f55ef78e9e24b109145d8f1cf8f3346(ptr %v0, ptr %a0)
declare %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef" @std_2fpair_3aPair_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %v0, { i64, [2 x i64] } %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_H50aa64e76645cf352fa094d09391d67b(ptr %v0, ptr %a0, %"std/pair:Pair.cd535570d3a02b648a091f4a8ee2ecef" %a1)
@G_2ecompiler_2flower_2eCloneDepth = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2flower_2eplanHas(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fmir_3aF_Heb9f32f192b0b9cb232597ba4ed0fe11(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2flower_2eCloneSmall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2262f7260befbeda_ad33d1a86099f68e = external constant [0 x i8]
@olang_loc_78466967dd42e061_bdc585e3e8213235 = external constant [0 x i8]
@olang_loc_6143a96035d3ceac_ef612191f7538720 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eopenBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
@olang_loc_9919e1798def049b_eb223155b689b93f = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecloseBlock(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
@olang_loc_b4f44bfc4c4e49f2_17d18a81dcc1f1de = external constant [0 x i8]
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einstance(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2flower_2ederefOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
@olang_loc_755da8ec4c9a9682_903a5def85eef08e = external constant [0 x i8]
@olang_loc_cd5f024afedc1d69_a0cc122b0d762c35 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ematchCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9d7bd0ecfcbf809b_94241bedce5fc567 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edeclaredCopy(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2erefTo(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3, ptr %a4c, ptr %a4e)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enullScope(ptr %v0, ptr %a0)
@olang_loc_3a66230741c412ef_cf9b39cad1abd5db = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %a0)
@olang_loc_b0c77cc00353838c_f9addae603786cc8 = external constant [0 x i8]
declare %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2etoClause(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ebang(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4, i1 %a5)
@olang_loc_1378acbf535452a2_3a9100f5c9d7e1f6 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, { i64, [4 x i64] } %a2, i1 %a3)
@olang_loc_17c5a608fc43bcc0_8499774d5e0fa2c = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePartsOnly(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eEntryOnly(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eentryCopy(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emovedViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_6a3744415739a386_9143a8e3ed3639a2 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFreshCtorAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftyped_2eFreshViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e)
declare %"compiler/lower:Gap" @compiler_2flower_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ePush_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:Gap" %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %a0, i64 %a1, i1 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSharesRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eparamElig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2erunArray(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eheldUnchanged(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efreshCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2echar(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fe6f132f471090d8_e27fa787bcbe9484 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eLen_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRef_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleaveOpen(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ementions(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceRooted(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b20a71c9b4f6a91d_fe0bcb009af05229 = external constant [0 x i8]
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6b9970bee08cd5b5_313bf71023add0f1 = external constant [0 x i8]
@olang_loc_54c4e502471f1575_5d803130ca2c9231 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_237828d44636a984_bc321bec2b6d0e20 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_166f6c7f8536ecb_3daea1ccb6433847 = external constant [0 x i8]
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_bf1f9adf3819f22a_a64af85a72a8013e = external constant [0 x i8]
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePartSplit(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
declare { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epartSplit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, { i64, [1 x i64] } %a5, { i64, [1 x i64] } %a6, %"compiler/source:Span" %a7)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epartOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, i64 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
@olang_loc_279896acdd8c6bde_4c10668047ad718a = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2flower_2eWrongCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emutStorage(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eAt_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_80847d650e26c632_64a1946959062bee = external constant [0 x i8]
declare ptr @compiler_2flower_2efindBlock(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2emutGlobals(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_28287f1f33def765_74d32538b56dd6f1 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:relPath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eAt_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2etextWalk(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/lower:relPath" %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ebranchesCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretOwns(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eFreshTemp(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eunconvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eretHome(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScope(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2eslottedField(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_a23d063b0bf9ea84_857e493ddc3bf8c8 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholders(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, i64 %a2, %"compiler/source:Span" %a3)
@olang_loc_a0544551fd9aba23_197859eb537d6a87 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ecea37d4633e9922_e7ec56cda3c90b26 = external constant [0 x i8]
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
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etaskType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eclausesTake(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7b1a9423057e34c5_261f06cd9be6d659 = external constant [0 x i8]
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [7 x i64] } %a2, i32 %a3)
@olang_loc_16ceb3f79d83ba4c_75eb4aa6518e3548 = external constant [0 x i8]
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassedFor(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2, i32 %a3)
@G_2ecompiler_2fmir_2eNoPlace = available_externally constant <{ [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 32
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
@olang_loc_209cd4bf2df26d92_8c8de602dc63ff9e = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a3627063ced14f10_5c0b773917422a84 = external constant [0 x i8]
@olang_loc_73384406ab4916da_7af5324ba56268d6 = external constant [0 x i8]
@G_2ecompiler_2ftyped_2eViewBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/typed:ViewWalk" @compiler_2ftyped_3aViewWalk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e)
@olang_loc_d2f9ab61c66bb7bd_ba20d4faed7cd6b1 = external constant [0 x i8]
@olang_loc_f82a3f3df9ef67f1_af23eb46fab62c25 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderPayload(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i64 %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5)
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2etext(ptr %v0, ptr %a0)
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)

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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
