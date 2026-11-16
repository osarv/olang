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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/effects:Effects" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/effects:Facts", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, { i64, ptr }, i1, %"compiler/source:Span", { i64, ptr }, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, %"compiler/typed:RefsKept", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:RefsKept" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:link" = type { i64, i64, i64 }
%"compiler/effects:root" = type { i64, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/effects:pend" = type { i64, i64, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/effects:part" = type { i64, i64, i32, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" = type { { i64, ptr }, i64 }
%"compiler/effects:coldMark" = type { i64, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/effects:given" = type { i64, i64, i64, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:fslot" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32 }
%"compiler/effects:pair" = type { i64, i64 }
%"compiler/effects:Verdict" = type { { i64, ptr }, { i64, ptr }, i1, i32, { i64, ptr }, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/effects:fpath" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32 }
%"compiler/effects:fret" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
@G_2ecompiler_2feffects_2eCapC = constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapCount = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapEnvironment = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapFiles = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapNetwork = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapProcesses = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eCapThreads = constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eEffectWords = constant <{ [8 x i8] }> <{ [8 x i8] c"\7F\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eFieldDepth = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivBound = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivMade = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivNamed = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivResField = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivResult = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eGivSlot = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2ePartAdapter = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2ePartLambda = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feffects_2eenvNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k2, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k4, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eenvNames.k5 }>, align 64
@G_2ecompiler_2feffects_2eenvNames.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k3 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\75\6E\73\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\70\75\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2eenvNames.k5 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2efileNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k3, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k4, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k5, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k6, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k8, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k9, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k10, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k11, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k12, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k13, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k15, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k16, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k17, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k18, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k19, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k20, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k21, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k22, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k23, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k24, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2efileNames.k25 }>, align 64
@G_2ecompiler_2feffects_2efileNames.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6F\70\65\6E" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6F\70\65\6E\61\74" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\72\65\61\74" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k4 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\66\6F\70\65\6E" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k5 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\6D\6B\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k6 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\72\6D\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k7 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\6D\6F\76\65" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\75\6E\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k9 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\72\65\6E\61\6D\65" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k10 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k11 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\79\6D\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k12 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\72\65\61\64\6C\69\6E\6B" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k13 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\72\65\61\6C\70\61\74\68" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k14 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6F\70\65\6E\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k15 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\68\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k16 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\63\77\64" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k17 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\74\72\75\6E\63\61\74\65" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k18 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\63\68\6D\6F\64" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k19 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\63\63\65\73\73" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k20 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\6B\73\74\65\6D\70" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k21 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\6B\64\74\65\6D\70" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k22 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\73\74\61\74" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k23 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\64\69\72" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k24 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\72\65\61\6C\70\61\74\68" }>, align 8
@G_2ecompiler_2feffects_2efileNames.k25 = internal constant <{ [15 x i8] }> <{ [15 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\6D\6B\64\74\65\6D\70" }>, align 8
@G_2ecompiler_2feffects_2eglobalParam = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feffects_2enetNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k1, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k6, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2enetNames.k7 }>, align 64
@G_2ecompiler_2feffects_2enetNames.k1 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\6F\63\6B\65\74" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k2 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\63\6F\6E\6E\65\63\74" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k3 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\62\69\6E\64" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6C\69\73\74\65\6E" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\61\63\63\65\70\74" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\61\63\63\65\70\74\34" }>, align 8
@G_2ecompiler_2feffects_2enetNames.k7 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\67\65\74\61\64\64\72\69\6E\66\6F" }>, align 8
@G_2ecompiler_2feffects_2eoutLocal = constant <{ [8 x i8] }> <{ [8 x i8] c"\18\FC\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feffects_2eoutParam = constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feffects_2eprocNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k1, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k3, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k5, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k6, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k8, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k9, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k10, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k11, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2eprocNames.k12 }>, align 64
@G_2ecompiler_2feffects_2eprocNames.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\66\6F\72\6B" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k2 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\76\66\6F\72\6B" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\65\78\65\63\76" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k4 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\65\78\65\63\76\65" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\65\78\65\63\76\70" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k6 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\70\6F\73\69\78\5F\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k7 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\70\6F\73\69\78\5F\73\70\61\77\6E\70" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\79\73\74\65\6D" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k9 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\6B\69\6C\6C" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k10 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\77\61\69\74\70\69\64" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k11 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\73\70\61\77\6E" }>, align 8
@G_2ecompiler_2feffects_2eprocNames.k12 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\78\65\63" }>, align 8
@G_2ecompiler_2feffects_2equickNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k1, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k2, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k3, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k6, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k8, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k9, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k10, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k11, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k13, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k14, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k15, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k16, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k17, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k18, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k19, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k20, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k21, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k22, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k23, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k24, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k25, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2feffects_2equickNames.k26 }>, align 64
@G_2ecompiler_2feffects_2equickNames.k1 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\72\72" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k2 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\61\72\67\5F\63\6F\75\6E\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k3 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\61\72\67" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k4 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\5F\5F\6F\6C\61\6E\67\5F\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\70\79" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\6D\65\6D\6D\6F\76\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k7 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\73\65\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\6D\65\6D\63\6D\70" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k9 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\6C\65\6E" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k10 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\73\74\72\63\6D\70" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k11 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\73\74\72\6E\63\6D\70" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k12 = internal constant <{ [13 x i8] }> <{ [13 x i8] c"\63\6C\6F\63\6B\5F\67\65\74\74\69\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k13 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\69\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k14 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\65\6E\76" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k15 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\69\73\61\74\74\79" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k16 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\67\65\74\70\69\64" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k17 = internal constant <{ [20 x i8] }> <{ [20 x i8] c"\70\74\68\72\65\61\64\5F\6D\75\74\65\78\5F\75\6E\6C\6F\63\6B" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k18 = internal constant <{ [21 x i8] }> <{ [21 x i8] c"\70\74\68\72\65\61\64\5F\72\77\6C\6F\63\6B\5F\75\6E\6C\6F\63\6B" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k19 = internal constant <{ [19 x i8] }> <{ [19 x i8] c"\70\74\68\72\65\61\64\5F\63\6F\6E\64\5F\73\69\67\6E\61\6C" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k20 = internal constant <{ [22 x i8] }> <{ [22 x i8] c"\70\74\68\72\65\61\64\5F\63\6F\6E\64\5F\62\72\6F\61\64\63\61\73\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k21 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\70\74\68\72\65\61\64\5F\6D\75\74\65\78\5F\69\6E\69\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k22 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\70\74\68\72\65\61\64\5F\63\6F\6E\64\5F\69\6E\69\74" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k23 = internal constant <{ [12 x i8] }> <{ [12 x i8] c"\66\72\65\65\61\64\64\72\69\6E\66\6F" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k24 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\67\65\74\73\6F\63\6B\6E\61\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k25 = internal constant <{ [11 x i8] }> <{ [11 x i8] c"\67\65\74\70\65\65\72\6E\61\6D\65" }>, align 8
@G_2ecompiler_2feffects_2equickNames.k26 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\73\65\74\73\6F\63\6B\6F\70\74" }>, align 8
define dso_local { i64, ptr } @compiler_2feffects_2eCapName(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t5, ptr %l1, !tbaa !27
  br label %bb25
bb4:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = icmp eq i64 %t7, 1
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l1, !tbaa !27
  br label %bb25
bb8:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = icmp eq i64 %t13, 2
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t17, ptr %l1, !tbaa !27
  br label %bb25
bb12:
  %t19 = load i64, ptr %l0, !tbaa !24
  %t21 = icmp eq i64 %t19, 3
  br i1 %t21, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l1, !tbaa !27
  br label %bb25
bb16:
  %t25 = load i64, ptr %l0, !tbaa !24
  %t27 = icmp eq i64 %t25, 4
  br i1 %t27, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t29, ptr %l1, !tbaa !27
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l1, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_290980515b4efda2_9d4c073daad962b6)
  unreachable
bb25:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2eCapText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l18 = alloca i64
  %l38 = alloca i64
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l15, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb30
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Facts", ptr %t51, i32 0, i32 19
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  store i64 %t55, ptr %l38, !tbaa !24
  %t56 = load i64, ptr %l38, !tbaa !24
  %t57 = load i64, ptr %l38, !tbaa !24
  %t58 = shl i64 1, %t57
  %t61 = and i64 %t54, %t58
  %t63 = icmp eq i64 %t61, 0
  br i1 %t63, label %bb12, label %bb13
bb12:
  br label %bb29
bb13:
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = getelementptr %"compiler/effects:Facts", ptr %t65, i32 0, i32 20
  %t70 = getelementptr [6 x i64], ptr %t68, i64 0, i64 %t66
  %t71 = load i64, ptr %t70, !tbaa !34
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp sge i64 %t73, 0
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = icmp slt i64 %t77, %t80
  store i1 %t83, ptr %l47, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l47, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l2, ptr %l52, !tbaa !29
  %t86 = ptrtoint ptr %s0 to i64
  store i64 %t86, ptr %l53, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t87, label %bb20, label %bb21
bb19:
  store ptr %l2, ptr %l62, !tbaa !29
  %t89 = ptrtoint ptr %s0 to i64
  store i64 %t89, ptr %l63, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t90, label %bb24, label %bb25
bb20:
  %t92 = call ptr @__olang_region_make(ptr %s0)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l53, !tbaa !24
  br label %bb21
bb21:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t96 = call { i64, ptr } @compiler_2feffects_2eCapName(ptr %s4, i64 %t94)
  store { i64, ptr } %t96, ptr %l56
  br label %bb22
bb22:
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = load i64, ptr %l9, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %t101, i64 %t98
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !37
  %t104 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t109 = add i64 %t106, %t108
  %t111 = extractvalue { i64, ptr } %t103, 1
  %t112 = extractvalue { i64, ptr } %t103, 0
  %t113 = add i64 %t109, %t112
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t115 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t116 = add i64 %t113, %t115
  %t117 = load i64, ptr %l53
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t116)
  call void @olang_textcopy(ptr %t119, ptr %t105, i64 %t106)
  %t120 = getelementptr i8, ptr %t119, i64 %t106
  call void @olang_textcopy(ptr %t120, ptr %t107, i64 %t108)
  %t121 = getelementptr i8, ptr %t120, i64 %t108
  call void @olang_textcopy(ptr %t121, ptr %t111, i64 %t112)
  %t122 = getelementptr i8, ptr %t121, i64 %t112
  call void @olang_textcopy(ptr %t122, ptr %t114, i64 %t115)
  %t123 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t119, 1
  %t126 = load i64, ptr %l53
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = extractvalue { i64, ptr } %t124, 0
  %t129 = extractvalue { i64, ptr } %t124, 1
  %t130 = mul i64 %t128, 1
  %t131 = call ptr @__olang_scope_alloc(ptr %t127, i64 %t130)
  call void @llvm.memcpy.p0.p0.i64(ptr %t131, ptr %t129, i64 %t130, i1 false)
  %t132 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t131, 1
  %t134 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t134, { i64, ptr } %t133)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb24:
  %t136 = call ptr @__olang_region_make(ptr %s0)
  %t137 = ptrtoint ptr %t136 to i64
  store i64 %t137, ptr %l63, !tbaa !24
  br label %bb25
bb25:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t139 = load i64, ptr %l63
  %t140 = inttoptr i64 %t139 to ptr
  %t142 = call { i64, ptr } @compiler_2feffects_2eCapName(ptr %t140, i64 %t138)
  store { i64, ptr } %t142, ptr %l66
  br label %bb26
bb26:
  %t143 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t144 = load i64, ptr %l63
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = extractvalue { i64, ptr } %t143, 0
  %t147 = extractvalue { i64, ptr } %t143, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %t145, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  %t152 = load ptr, ptr %l62, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t152, { i64, ptr } %t151)
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t154 = load i64, ptr %l7, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l7, !tbaa !24
  br label %bb8
bb30:
  %t159 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v2, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store { i64, ptr } %t159, ptr %l71
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t160 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2feffects_2eConservative(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 11}
  %t3 = trunc i64 7 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 11}
  %t8 = trunc i64 8 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 11}
  %t14 = trunc i64 9 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2eDescribe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l30 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l57 = alloca i64
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i64
  %l82 = alloca { i64, ptr }
  %l90 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i64
  %l96 = alloca { i64, ptr }
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca i64
  %l108 = alloca i64
  %l129 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca i64
  %l133 = alloca { i64, ptr }
  %l141 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca i64
  %l147 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l154 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l163 = alloca { i64, ptr }
  %l164 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l178 = alloca i1
  %l188 = alloca ptr
  %l189 = alloca i64
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l203 = alloca i1
  %l206 = alloca i1
  %l209 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 14
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t6, ptr %l21, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l22, !tbaa !24
  %t9 = load i64, ptr %l22, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l23, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l22, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t20, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t21 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Facts", ptr %t22, i32 0, i32 10
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Facts", ptr %t27, i32 0, i32 11
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l26, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l26, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s2, ptr %t33)
  store { i64, ptr } %t35, ptr %l30
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t36 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t38 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t36, i64 %t37)
  %t43 = getelementptr i8, ptr %t42, i64 %t37
  call void @olang_textcopy(ptr %t43, ptr %t39, i64 %t40)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/effects:Facts", ptr %t47, i32 0, i32 10
  %t50 = load i1, ptr %t49, !tbaa !21
  br i1 %t50, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s4, ptr %t52)
  store { i64, ptr } %t54, ptr %l35
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t55 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t57 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = add i64 %t56, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t55, i64 %t56)
  %t62 = getelementptr i8, ptr %t61, i64 %t56
  call void @olang_textcopy(ptr %t62, ptr %t58, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t61, 1
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eIdle(ptr %v0, ptr %t66)
  store i1 %t68, ptr %l38
  br label %bb15
bb15:
  %t69 = load i1, ptr %l38, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s6
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eEvaluable(ptr %v0, ptr %t70)
  store i1 %t72, ptr %l40
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s7
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s7, ptr %t74)
  store { i64, ptr } %t76, ptr %l42
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t77 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t79 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = add i64 %t78, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t77, i64 %t78)
  %t84 = getelementptr i8, ptr %t83, i64 %t78
  call void @olang_textcopy(ptr %t84, ptr %t80, i64 %t81)
  %t85 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = call { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %s6, ptr %t88)
  store { i64, ptr } %t90, ptr %l45
  br label %bb23
bb23:
  %t91 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t93 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t91, i64 %t92)
  %t98 = getelementptr i8, ptr %t97, i64 %t92
  call void @olang_textcopy(ptr %t98, ptr %t94, i64 %t95)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t100, ptr %rv
  br label %ret
bb24:
  %t102 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l47
  br label %bb25
bb25:
  %t103 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %l2
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l48
  br label %bb26
bb26:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  store i64 %t108, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t110 = load i64, ptr %l5, !tbaa !24
  %t111 = load i64, ptr %l4, !tbaa !24
  %t114 = icmp sgt i64 %t110, %t111
  br i1 %t114, label %bb27, label %bb28
bb27:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = icmp sgt i64 %t116, 0
  br i1 %t118, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb32
bb29:
  %t120 = load i64, ptr %l5, !tbaa !24
  %t121 = load i64, ptr %l4, !tbaa !24
  %t124 = sub i64 %t120, %t121
  %t125 = load i64, ptr %l6, !tbaa !24
  %t128 = add i64 %t124, %t125
  %t130 = sub i64 %t128, 1
  %t131 = load i64, ptr %l6, !tbaa !24
  %t134 = sdiv i64 %t130, %t131
  store i64 %t134, ptr %l57, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t136 = load i64, ptr %l57, !tbaa !24
  store i64 %t136, ptr %l54, !tbaa !24
  br label %bb32
bb32:
  %t137 = load i64, ptr %l54, !tbaa !24
  store i64 %t137, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb33
bb33:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t139 = load i64, ptr %l7, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb34, label %bb35
bb34:
  br label %bb45
bb35:
  br label %bb36
bb36:
  %t146 = load i64, ptr %l4, !tbaa !24
  %t147 = load i64, ptr %l8, !tbaa !24
  %t148 = load i64, ptr %l6, !tbaa !24
  %t151 = mul i64 %t147, %t148
  %t154 = add i64 %t146, %t151
  store i64 %t154, ptr %l9, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/effects:Facts", ptr %t156, i32 0, i32 21
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load i64, ptr %l9, !tbaa !24
  %t163 = call i1 @compiler_2feffects_2ehasBit(i64 %t159, i64 %t160)
  store i1 %t163, ptr %l78
  br label %bb37
bb37:
  %t164 = load i1, ptr %l78, !tbaa !21
  br i1 %t164, label %bb38, label %bb39
bb38:
  store ptr %l3, ptr %l79, !tbaa !29
  %t165 = ptrtoint ptr %s0 to i64
  store i64 %t165, ptr %l80, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t166, label %bb40, label %bb41
bb39:
  br label %bb43
bb40:
  %t168 = call ptr @__olang_region_make(ptr %s0)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l80, !tbaa !24
  br label %bb41
bb41:
  %t170 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t170, ptr %l82, !tbaa !27
  %t171 = load i64, ptr %l9, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %t174, i64 %t171
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !37
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t180 = extractvalue { i64, ptr } %t176, 1
  %t181 = extractvalue { i64, ptr } %t176, 0
  %t182 = add i64 %t178, %t181
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = load i64, ptr %l80
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = call ptr @__olang_scope_alloc(ptr %t187, i64 %t185)
  call void @olang_textcopy(ptr %t188, ptr %t177, i64 %t178)
  %t189 = getelementptr i8, ptr %t188, i64 %t178
  call void @olang_textcopy(ptr %t189, ptr %t180, i64 %t181)
  %t190 = getelementptr i8, ptr %t189, i64 %t181
  call void @olang_textcopy(ptr %t190, ptr %t183, i64 %t184)
  %t191 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t188, 1
  %t194 = load i64, ptr %l80
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = extractvalue { i64, ptr } %t192, 0
  %t197 = extractvalue { i64, ptr } %t192, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %t195, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t202, { i64, ptr } %t201)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t204 = load i64, ptr %l8, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l8, !tbaa !24
  br label %bb33
bb45:
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t209, ptr %l90
  br label %bb46
bb46:
  %t210 = load i64, ptr %l90, !tbaa !24
  %t211 = icmp sgt i64 %t210, 0
  br i1 %t211, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s15
  store ptr %l2, ptr %l92, !tbaa !29
  %t213 = ptrtoint ptr %s0 to i64
  store i64 %t213, ptr %l93, !tbaa !24
  %t214 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t214, label %bb49, label %bb50
bb48:
  br label %bb53
bb49:
  %t216 = call ptr @__olang_region_make(ptr %s0)
  %t217 = ptrtoint ptr %t216 to i64
  store i64 %t217, ptr %l93, !tbaa !24
  br label %bb50
bb50:
  %t219 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s15, ptr %s15, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store { i64, ptr } %t219, ptr %l96
  br label %bb51
bb51:
  %t220 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t222 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = extractvalue { i64, ptr } %t222, 0
  %t225 = add i64 %t221, %t224
  %t226 = load i64, ptr %l93
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call ptr @__olang_scope_alloc(ptr %t227, i64 %t225)
  call void @olang_textcopy(ptr %t228, ptr %t220, i64 %t221)
  %t229 = getelementptr i8, ptr %t228, i64 %t221
  call void @olang_textcopy(ptr %t229, ptr %t223, i64 %t224)
  %t230 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t228, 1
  %t233 = load i64, ptr %l93
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = extractvalue { i64, ptr } %t231, 0
  %t236 = extractvalue { i64, ptr } %t231, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %t234, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  %t241 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t241, { i64, ptr } %t240)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s15)
  br label %bb53
bb53:
  %t243 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243, ptr %l99
  br label %bb54
bb54:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t249 = load i64, ptr %l12, !tbaa !24
  %t250 = load i64, ptr %l11, !tbaa !24
  %t253 = icmp sgt i64 %t249, %t250
  br i1 %t253, label %bb55, label %bb56
bb55:
  %t255 = load i64, ptr %l13, !tbaa !24
  %t257 = icmp sgt i64 %t255, 0
  br i1 %t257, label %bb57, label %bb58
bb56:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb60
bb57:
  %t259 = load i64, ptr %l12, !tbaa !24
  %t260 = load i64, ptr %l11, !tbaa !24
  %t263 = sub i64 %t259, %t260
  %t264 = load i64, ptr %l13, !tbaa !24
  %t267 = add i64 %t263, %t264
  %t269 = sub i64 %t267, 1
  %t270 = load i64, ptr %l13, !tbaa !24
  %t273 = sdiv i64 %t269, %t270
  store i64 %t273, ptr %l108, !tbaa !24
  br label %bb59
bb58:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb59
bb59:
  %t275 = load i64, ptr %l108, !tbaa !24
  store i64 %t275, ptr %l105, !tbaa !24
  br label %bb60
bb60:
  %t276 = load i64, ptr %l105, !tbaa !24
  store i64 %t276, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb61
bb61:
  %t277 = load i64, ptr %l15, !tbaa !24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = icmp slt i64 %t277, %t278
  %t283 = xor i1 %t281, true
  br i1 %t283, label %bb62, label %bb63
bb62:
  br label %bb73
bb63:
  br label %bb64
bb64:
  %t285 = load i64, ptr %l11, !tbaa !24
  %t286 = load i64, ptr %l15, !tbaa !24
  %t287 = load i64, ptr %l13, !tbaa !24
  %t290 = mul i64 %t286, %t287
  %t293 = add i64 %t285, %t290
  store i64 %t293, ptr %l16, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/effects:Facts", ptr %t295, i32 0, i32 22
  %t298 = load i64, ptr %t297, !tbaa !24
  %t299 = load i64, ptr %l16, !tbaa !24
  %t302 = call i1 @compiler_2feffects_2ehasBit(i64 %t298, i64 %t299)
  store i1 %t302, ptr %l129
  br label %bb65
bb65:
  %t303 = load i1, ptr %l129, !tbaa !21
  br i1 %t303, label %bb66, label %bb67
bb66:
  store ptr %l10, ptr %l130, !tbaa !29
  %t304 = ptrtoint ptr %s0 to i64
  store i64 %t304, ptr %l131, !tbaa !24
  %t305 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t305, label %bb68, label %bb69
bb67:
  br label %bb71
bb68:
  %t307 = call ptr @__olang_region_make(ptr %s0)
  %t308 = ptrtoint ptr %t307 to i64
  store i64 %t308, ptr %l131, !tbaa !24
  br label %bb69
bb69:
  %t309 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t309, ptr %l133, !tbaa !27
  %t310 = load i64, ptr %l16, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr { i64, ptr }, ptr %t313, i64 %t310
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !37
  %t316 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t319 = extractvalue { i64, ptr } %t315, 1
  %t320 = extractvalue { i64, ptr } %t315, 0
  %t321 = add i64 %t317, %t320
  %t322 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t325 = load i64, ptr %l131
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = call ptr @__olang_scope_alloc(ptr %t326, i64 %t324)
  call void @olang_textcopy(ptr %t327, ptr %t316, i64 %t317)
  %t328 = getelementptr i8, ptr %t327, i64 %t317
  call void @olang_textcopy(ptr %t328, ptr %t319, i64 %t320)
  %t329 = getelementptr i8, ptr %t328, i64 %t320
  call void @olang_textcopy(ptr %t329, ptr %t322, i64 %t323)
  %t330 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t327, 1
  %t333 = load i64, ptr %l131
  %t334 = inttoptr i64 %t333 to ptr
  %t335 = extractvalue { i64, ptr } %t331, 0
  %t336 = extractvalue { i64, ptr } %t331, 1
  %t337 = mul i64 %t335, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %t334, i64 %t337)
  call void @llvm.memcpy.p0.p0.i64(ptr %t338, ptr %t336, i64 %t337, i1 false)
  %t339 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  %t341 = load ptr, ptr %l130, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t341, { i64, ptr } %t340)
  br label %bb70
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t343 = load i64, ptr %l15, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l15, !tbaa !24
  br label %bb61
bb73:
  %t348 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l10)
  store i64 %t348, ptr %l141
  br label %bb74
bb74:
  %t349 = load i64, ptr %l141, !tbaa !24
  %t350 = icmp sgt i64 %t349, 0
  br i1 %t350, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s22
  store ptr %l2, ptr %l143, !tbaa !29
  %t352 = ptrtoint ptr %s0 to i64
  store i64 %t352, ptr %l144, !tbaa !24
  %t353 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t353, label %bb77, label %bb78
bb76:
  br label %bb81
bb77:
  %t355 = call ptr @__olang_region_make(ptr %s0)
  %t356 = ptrtoint ptr %t355 to i64
  store i64 %t356, ptr %l144, !tbaa !24
  br label %bb78
bb78:
  %t358 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s22, ptr %s22, ptr %l10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store { i64, ptr } %t358, ptr %l147
  br label %bb79
bb79:
  %t359 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t360 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t361 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t361, 1
  %t363 = extractvalue { i64, ptr } %t361, 0
  %t364 = add i64 %t360, %t363
  %t365 = load i64, ptr %l144
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t364)
  call void @olang_textcopy(ptr %t367, ptr %t359, i64 %t360)
  %t368 = getelementptr i8, ptr %t367, i64 %t360
  call void @olang_textcopy(ptr %t368, ptr %t362, i64 %t363)
  %t369 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t367, 1
  %t372 = load i64, ptr %l144
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = extractvalue { i64, ptr } %t370, 0
  %t375 = extractvalue { i64, ptr } %t370, 1
  %t376 = mul i64 %t374, 1
  %t377 = call ptr @__olang_scope_alloc(ptr %t373, i64 %t376)
  call void @llvm.memcpy.p0.p0.i64(ptr %t377, ptr %t375, i64 %t376, i1 false)
  %t378 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t377, 1
  %t380 = load ptr, ptr %l143, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t380, { i64, ptr } %t379)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s22)
  br label %bb81
bb81:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/effects:Facts", ptr %t382, i32 0, i32 3
  %t385 = load i1, ptr %t384, !tbaa !21
  br i1 %t385, label %bb82, label %bb83
bb82:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb85
bb85:
  store ptr %l2, ptr %l153, !tbaa !29
  %t388 = ptrtoint ptr %s0 to i64
  store i64 %t388, ptr %l154, !tbaa !24
  %t389 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t389, label %bb86, label %bb87
bb86:
  %t391 = call ptr @__olang_region_make(ptr %s0)
  %t392 = ptrtoint ptr %t391 to i64
  store i64 %t392, ptr %l154, !tbaa !24
  br label %bb87
bb87:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/effects:Facts", ptr %t393, i32 0, i32 0
  %t396 = load i1, ptr %t395, !tbaa !21
  br i1 %t396, label %bb88, label %bb89
bb88:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l159, !tbaa !27
  %t398 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t398, ptr %l158, !tbaa !27
  br label %bb93
bb89:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/effects:Facts", ptr %t400, i32 0, i32 1
  %t403 = load i1, ptr %t402, !tbaa !21
  br i1 %t403, label %bb90, label %bb91
bb90:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l164, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l164, !tbaa !27
  store { i64, ptr } %t405, ptr %l163, !tbaa !27
  br label %bb92
bb91:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l166, !tbaa !27
  %t407 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t407, ptr %l163, !tbaa !27
  br label %bb92
bb92:
  %t409 = load { i64, ptr }, ptr %l163, !tbaa !27
  store { i64, ptr } %t409, ptr %l158, !tbaa !27
  br label %bb93
bb93:
  %t410 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t411 = load i64, ptr %l154
  %t412 = inttoptr i64 %t411 to ptr
  %t413 = extractvalue { i64, ptr } %t410, 0
  %t414 = extractvalue { i64, ptr } %t410, 1
  %t415 = mul i64 %t413, 1
  %t416 = call ptr @__olang_scope_alloc(ptr %t412, i64 %t415)
  call void @llvm.memcpy.p0.p0.i64(ptr %t416, ptr %t414, i64 %t415, i1 false)
  %t417 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  %t419 = load ptr, ptr %l153, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t419, { i64, ptr } %t418)
  br label %bb94
bb94:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/effects:Facts", ptr %t421, i32 0, i32 12
  %t424 = load i1, ptr %t423, !tbaa !21
  br i1 %t424, label %bb95, label %bb96
bb95:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb98
bb98:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/effects:Facts", ptr %t427, i32 0, i32 7
  %t430 = load i1, ptr %t429, !tbaa !21
  br i1 %t430, label %bb99, label %bb100
bb99:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb102
bb102:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = call { i64, ptr } @compiler_2feffects_2ecapText(ptr %v0, ptr %s0, ptr %t433)
  store { i64, ptr } %t435, ptr %l176
  br label %bb103
bb103:
  %t436 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t436, ptr %l17, !tbaa !27
  %t437 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t439 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t437, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t439, ptr %l178
  br label %bb104
bb104:
  %t440 = load i1, ptr %l178, !tbaa !21
  %t441 = xor i1 %t440, true
  br i1 %t441, label %bb105, label %bb106
bb105:
  %t443 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t443)
  br label %bb107
bb106:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/effects:Facts", ptr %t446, i32 0, i32 5
  %t449 = load i1, ptr %t448, !tbaa !21
  br i1 %t449, label %bb108, label %bb109
bb107:
  br label %bb112
bb108:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t454 = getelementptr %"compiler/effects:Facts", ptr %t452, i32 0, i32 13
  %t455 = load i1, ptr %t454, !tbaa !21
  br i1 %t455, label %bb113, label %bb114
bb113:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb116
bb116:
  store ptr %l2, ptr %l188, !tbaa !29
  %t458 = ptrtoint ptr %s0 to i64
  store i64 %t458, ptr %l189, !tbaa !24
  %t459 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t459, label %bb117, label %bb118
bb117:
  %t461 = call ptr @__olang_region_make(ptr %s0)
  %t462 = ptrtoint ptr %t461 to i64
  store i64 %t462, ptr %l189, !tbaa !24
  br label %bb118
bb118:
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/effects:Facts", ptr %t463, i32 0, i32 2
  %t466 = load i1, ptr %t465, !tbaa !21
  br i1 %t466, label %bb119, label %bb120
bb119:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l194, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t468, ptr %l193, !tbaa !27
  br label %bb121
bb120:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l196, !tbaa !27
  %t470 = load { i64, ptr }, ptr %l196, !tbaa !27
  store { i64, ptr } %t470, ptr %l193, !tbaa !27
  br label %bb121
bb121:
  %t472 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t473 = load i64, ptr %l189
  %t474 = inttoptr i64 %t473 to ptr
  %t475 = extractvalue { i64, ptr } %t472, 0
  %t476 = extractvalue { i64, ptr } %t472, 1
  %t477 = mul i64 %t475, 1
  %t478 = call ptr @__olang_scope_alloc(ptr %t474, i64 %t477)
  call void @llvm.memcpy.p0.p0.i64(ptr %t478, ptr %t476, i64 %t477, i1 false)
  %t479 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t478, 1
  %t481 = load ptr, ptr %l188, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t481, { i64, ptr } %t480)
  br label %bb122
bb122:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/effects:Facts", ptr %t483, i32 0, i32 8
  %t486 = load i1, ptr %t485, !tbaa !21
  br i1 %t486, label %bb123, label %bb124
bb123:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb126
bb126:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %t489)
  store i1 %t491, ptr %l203
  br label %bb127
bb127:
  %t492 = load i1, ptr %l203, !tbaa !21
  br i1 %t492, label %bb128, label %bb129
bb128:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb130
bb129:
  br label %bb131
bb130:
  br label %bb131
bb131:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eEvaluable(ptr %v0, ptr %t494)
  store i1 %t496, ptr %l206
  br label %bb132
bb132:
  %t497 = load i1, ptr %l206, !tbaa !21
  br i1 %t497, label %bb133, label %bb134
bb133:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb136
bb136:
  %t500 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v2, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t500, ptr %l209
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s0)
  %t501 = load { i64, ptr }, ptr %l209, !tbaa !27
  store { i64, ptr } %t501, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2feffects_2eFact_2eNamed(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i32 1, ptr %l1
  br label %bb50
bb5:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t8, ptr %l6
  br label %bb6
bb6:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 2, ptr %l1
  br label %bb50
bb10:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t13, ptr %l9
  br label %bb11
bb11:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i32 3, ptr %l1
  br label %bb50
bb15:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t18, ptr %l12
  br label %bb16
bb16:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i32 4, ptr %l1
  br label %bb50
bb20:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t23, ptr %l15
  br label %bb21
bb21:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i32 5, ptr %l1
  br label %bb50
bb25:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t28, ptr %l18
  br label %bb26
bb26:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i32 6, ptr %l1
  br label %bb50
bb30:
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t33, ptr %l21
  br label %bb31
bb31:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i32 7, ptr %l1
  br label %bb50
bb35:
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t38, ptr %l24
  br label %bb36
bb36:
  %t39 = load i1, ptr %l24, !tbaa !21
  br i1 %t39, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i32 8, ptr %l1
  br label %bb50
bb40:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t43, ptr %l27
  br label %bb41
bb41:
  %t44 = load i1, ptr %l27, !tbaa !21
  br i1 %t44, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i32 9, ptr %l1
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i32 10, ptr %l1
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_158e937bb9d0bd20_7156a314163e06b4)
  unreachable
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load i32, ptr %l1, !range !{i32 0, i32 11}
  store i32 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca %"compiler/effects:Facts"
  %l10 = alloca i32
  %l13 = alloca i64
  %l16 = alloca i64
  %l31 = alloca i1
  %l43 = alloca i1
  %l54 = alloca i1
  %l62 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"compiler/effects:Facts", ptr %l7
  store %"compiler/effects:Facts" %t2, ptr %l2
  %t3 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 15
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t11 = trunc i64 21 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %t14, i32 %t15)
  store i64 %t18, ptr %l16
  br label %bb5
bb4:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb5:
  %t19 = load i64, ptr @G_2ecompiler_2feffects_2eEffectWords, !tbaa !24
  %t20 = load i64, ptr %l16, !tbaa !24
  %t22 = and i64 %t20, %t19
  store i64 %t22, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t24 = load i64, ptr %l13, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp eq i64 %t25, 0
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 10
  store i1 true, ptr %t29, !tbaa !21
  %t30 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t30, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2ftypes_2ePromReturns, !tbaa !24
  %t36 = and i64 %t32, %t33
  %t38 = icmp ne i64 %t36, 0
  store i1 %t38, ptr %l4, !tbaa !21
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr @G_2ecompiler_2ftypes_2ePromPure, !tbaa !24
  %t44 = and i64 %t40, %t41
  %t46 = icmp ne i64 %t44, 0
  store i1 %t46, ptr %l5, !tbaa !21
  %t48 = load i1, ptr %l5, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb12
bb11:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoextern, !tbaa !24
  %t54 = and i64 %t50, %t51
  %t56 = icmp ne i64 %t54, 0
  store i1 %t56, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t58 = load i1, ptr %l31, !tbaa !21
  store i1 %t58, ptr %l6, !tbaa !21
  %t59 = load i64, ptr %l3, !tbaa !24
  %t60 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoalloc, !tbaa !24
  %t63 = and i64 %t59, %t60
  %t65 = icmp eq i64 %t63, 0
  %t67 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 0
  store i1 %t65, ptr %t67, !tbaa !21
  %t68 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 1
  store i1 true, ptr %t68, !tbaa !21
  %t69 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 0
  %t70 = load i1, ptr %t69, !tbaa !21
  %t72 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 12
  store i1 %t70, ptr %t72, !tbaa !21
  %t73 = load i1, ptr %l4, !tbaa !21
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb13, label %bb14
bb13:
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoblock, !tbaa !24
  %t81 = and i64 %t77, %t78
  %t83 = icmp eq i64 %t81, 0
  store i1 %t83, ptr %l43, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t85 = load i1, ptr %l43, !tbaa !21
  %t86 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 2
  store i1 %t85, ptr %t86, !tbaa !21
  %t87 = load i64, ptr %l3, !tbaa !24
  %t88 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNospawn, !tbaa !24
  %t91 = and i64 %t87, %t88
  %t93 = icmp eq i64 %t91, 0
  %t95 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 7
  store i1 %t93, ptr %t95, !tbaa !21
  %t96 = load i1, ptr %l4, !tbaa !21
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb16, label %bb17
bb16:
  %t100 = load i64, ptr %l3, !tbaa !24
  %t101 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNorecurse, !tbaa !24
  %t104 = and i64 %t100, %t101
  %t106 = icmp eq i64 %t104, 0
  store i1 %t106, ptr %l54, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb18
bb18:
  %t108 = load i1, ptr %l54, !tbaa !21
  %t109 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 8
  store i1 %t108, ptr %t109, !tbaa !21
  %t110 = load i1, ptr %l6, !tbaa !21
  %t112 = xor i1 %t110, true
  %t114 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 5
  store i1 %t112, ptr %t114, !tbaa !21
  %t115 = load i1, ptr %l4, !tbaa !21
  br i1 %t115, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb21
bb20:
  %t117 = load i1, ptr %l6, !tbaa !21
  store i1 %t117, ptr %l62, !tbaa !21
  br label %bb21
bb21:
  %t119 = load i1, ptr %l62, !tbaa !21
  %t120 = xor i1 %t119, true
  %t122 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 6
  store i1 %t120, ptr %t122, !tbaa !21
  %t123 = load i1, ptr %l4, !tbaa !21
  %t125 = xor i1 %t123, true
  %t127 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 9
  store i1 %t125, ptr %t127, !tbaa !21
  %t128 = load i1, ptr %l4, !tbaa !21
  %t130 = xor i1 %t128, true
  %t132 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 13
  store i1 %t130, ptr %t132, !tbaa !21
  %t133 = load i1, ptr %l4, !tbaa !21
  %t135 = xor i1 %t133, true
  %t137 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 16
  store i1 %t135, ptr %t137, !tbaa !21
  %t138 = load i1, ptr %l5, !tbaa !21
  %t140 = xor i1 %t138, true
  %t142 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 3
  store i1 %t140, ptr %t142, !tbaa !21
  %t143 = load i1, ptr %l5, !tbaa !21
  %t145 = xor i1 %t143, true
  %t147 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 4
  store i1 %t145, ptr %t147, !tbaa !21
  %t148 = load i1, ptr %l5, !tbaa !21
  %t150 = xor i1 %t148, true
  %t152 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 17
  store i1 %t150, ptr %t152, !tbaa !21
  %t153 = load i1, ptr %l5, !tbaa !21
  %t155 = xor i1 %t153, true
  %t157 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 18
  store i1 %t155, ptr %t157, !tbaa !21
  %t158 = load i1, ptr %l6, !tbaa !21
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb22, label %bb23
bb22:
  %t162 = load i64, ptr @G_2ecompiler_2feffects_2eCapFiles, !tbaa !24
  %t163 = load i64, ptr @G_2ecompiler_2feffects_2eCapNetwork, !tbaa !24
  %t166 = or i64 %t162, %t163
  %t167 = load i64, ptr @G_2ecompiler_2feffects_2eCapProcesses, !tbaa !24
  %t170 = or i64 %t166, %t167
  %t171 = load i64, ptr @G_2ecompiler_2feffects_2eCapEnvironment, !tbaa !24
  %t174 = or i64 %t170, %t171
  %t175 = load i64, ptr @G_2ecompiler_2feffects_2eCapC, !tbaa !24
  %t178 = or i64 %t174, %t175
  %t180 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 19
  store i64 %t178, ptr %t180, !tbaa !24
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t181 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 7
  %t182 = load i1, ptr %t181, !tbaa !21
  br i1 %t182, label %bb25, label %bb26
bb25:
  %t184 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 19
  %t185 = load i64, ptr %t184, !tbaa !24
  %t186 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  %t189 = or i64 %t185, %t186
  %t191 = getelementptr %"compiler/effects:Facts", ptr %l2, i32 0, i32 19
  store i64 %t189, ptr %t191, !tbaa !24
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t192 = load %"compiler/effects:Facts", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t192, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i64 @compiler_2feffects_2ecapOf(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l29 = alloca i1
  %l45 = alloca i1
  %l61 = alloca i1
  %l77 = alloca i1
  %l82 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr @G_2ecompiler_2feffects_2efileNames, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t2 = load ptr, ptr %l1
  store i64 25, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = getelementptr [25 x { i64, ptr }], ptr %t13, i64 0, i64 %t14
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !37
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = load ptr, ptr @__olang_prog_scope
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t22, { i64, ptr } %t20, { i64, ptr } %t18)
  store i1 %t25, ptr %l29
  br label %bb5
bb5:
  %t26 = load i1, ptr %l29, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr @G_2ecompiler_2feffects_2eCapFiles, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t27, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  store ptr @G_2ecompiler_2feffects_2enetNames, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t34 = load ptr, ptr %l5
  store i64 7, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l5
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = getelementptr [7 x { i64, ptr }], ptr %t45, i64 0, i64 %t46
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !37
  %t52 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t54 = load ptr, ptr @__olang_prog_scope
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t54, { i64, ptr } %t52, { i64, ptr } %t50)
  store i1 %t57, ptr %l45
  br label %bb15
bb15:
  %t58 = load i1, ptr %l45, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t59 = load i64, ptr @G_2ecompiler_2feffects_2eCapNetwork, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t59, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb11
bb20:
  store ptr @G_2ecompiler_2feffects_2eprocNames, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t66 = load ptr, ptr %l9
  store i64 12, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  br label %bb24
bb24:
  %t77 = load ptr, ptr %l9
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = getelementptr [12 x { i64, ptr }], ptr %t77, i64 0, i64 %t78
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !37
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t86 = load ptr, ptr @__olang_prog_scope
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t86, { i64, ptr } %t84, { i64, ptr } %t82)
  store i1 %t89, ptr %l61
  br label %bb25
bb25:
  %t90 = load i1, ptr %l61, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load i64, ptr @G_2ecompiler_2feffects_2eCapProcesses, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t91, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l10, !tbaa !24
  br label %bb21
bb30:
  store ptr @G_2ecompiler_2feffects_2eenvNames, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t98 = load ptr, ptr %l13
  store i64 5, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  %t101 = load i64, ptr %l14, !tbaa !24
  %t102 = load i64, ptr %l15, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb32, label %bb33
bb32:
  br label %bb40
bb33:
  br label %bb34
bb34:
  %t109 = load ptr, ptr %l13
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = getelementptr [5 x { i64, ptr }], ptr %t109, i64 0, i64 %t110
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !37
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t118 = load ptr, ptr @__olang_prog_scope
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t118, { i64, ptr } %t116, { i64, ptr } %t114)
  store i1 %t121, ptr %l77
  br label %bb35
bb35:
  %t122 = load i1, ptr %l77, !tbaa !21
  br i1 %t122, label %bb36, label %bb37
bb36:
  %t123 = load i64, ptr @G_2ecompiler_2feffects_2eCapEnvironment, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t123, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t125 = load i64, ptr %l14, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l14, !tbaa !24
  br label %bb31
bb40:
  %t129 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t131, ptr %l82
  br label %bb41
bb41:
  %t132 = load i1, ptr %l82, !tbaa !21
  br i1 %t132, label %bb42, label %bb43
bb42:
  %t133 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t133, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2ecapText(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l16 = alloca i64
  %l36 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t53 = getelementptr %"compiler/effects:Facts", ptr %a0, i32 0, i32 19
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  store i64 %t55, ptr %l36, !tbaa !24
  %t56 = load i64, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = shl i64 1, %t57
  %t61 = and i64 %t54, %t58
  %t63 = icmp ne i64 %t61, 0
  br i1 %t63, label %bb12, label %bb13
bb12:
  store ptr %l1, ptr %l40, !tbaa !29
  %t65 = ptrtoint ptr %s0 to i64
  store i64 %t65, ptr %l41, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t66, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  %t68 = call ptr @__olang_region_make(ptr %s0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l41, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l41
  %t72 = inttoptr i64 %t71 to ptr
  %t74 = call { i64, ptr } @compiler_2feffects_2eCapName(ptr %t72, i64 %t70)
  store { i64, ptr } %t74, ptr %l44
  br label %bb16
bb16:
  %t75 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t76 = load i64, ptr %l41
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = extractvalue { i64, ptr } %t75, 0
  %t79 = extractvalue { i64, ptr } %t75, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %t77, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t84, { i64, ptr } %t83)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l6, !tbaa !24
  br label %bb8
bb20:
  %t91 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v1, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store { i64, ptr } %t91, ptr %l49
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eFirstCallee(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca %"compiler/effects:Facts"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i1
  %l26 = alloca i64
  %l29 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t1, i64 %t2)
  store %"compiler/effects:Facts" %t5, ptr %l7
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 4
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %s1, ptr %t8, i64 %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l11
  br label %bb2
bb2:
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s1, ptr %l11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l13
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t16 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  store ptr %t16, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l15, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t19)
  store i64 %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load i64, ptr %l15, !tbaa !24
  %t23 = load i64, ptr %l17, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  br label %bb18
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t28, i64 %t29)
  store i64 %t32, ptr %l22
  br label %bb9
bb9:
  %t33 = load i64, ptr %l22, !tbaa !24
  store i64 %t33, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load i64, ptr %l4, !tbaa !24
  store i64 %t38, ptr %l26, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 1
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l29
  br label %bb12
bb11:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb13
bb12:
  %t44 = load i64, ptr %l26, !tbaa !24
  %t45 = load i64, ptr %l29, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t49 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t49, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l3, !tbaa !24
  br label %bb4
bb18:
  call void @__olang_scope_close(ptr %s1)
  %t55 = load i64, ptr %l1, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eJudgeFacts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargLink(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca %"compiler/effects:link"
  %l19 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca %"compiler/effects:link"
  %l30 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca %"compiler/effects:link"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t5 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargParam(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 27
  store ptr %t13, ptr %l12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t20 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s1, i64 %t14, i64 %t15, i64 %t16)
  store %"compiler/effects:link" %t20, ptr %l16
  br label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t25, ptr %l19
  br label %bb6
bb4:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load %"compiler/effects:link", ptr %l16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t26, %"compiler/effects:link" %t27)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/effects:Effects", ptr %t29, i32 0, i32 27
  store ptr %t31, ptr %l21, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2feffects_2eglobalParam, !tbaa !24
  %t38 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s3, i64 %t32, i64 %t33, i64 %t34)
  store %"compiler/effects:link" %t38, ptr %l25
  br label %bb9
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 2
  %t42 = load i1, ptr %t41, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb9:
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = load %"compiler/effects:link", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t44, %"compiler/effects:link" %t45)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t50 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargOut(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store i64 %t50, ptr %l30
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t51 = load i64, ptr %l30, !tbaa !24
  store i64 %t51, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp ne i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s6
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Effects", ptr %t56, i32 0, i32 27
  store ptr %t58, ptr %l34, !tbaa !29
  %t59 = load i64, ptr %l1, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t65 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s6, i64 %t59, i64 %t60, i64 %t61)
  store %"compiler/effects:link" %t65, ptr %l38
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = load %"compiler/effects:link", ptr %l38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t66, %"compiler/effects:link" %t67)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s6)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargOut(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca %"compiler/effects:root"
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l54 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca i1
  %l67 = alloca i1
  %l68 = alloca i1
  %l73 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i64
  %rv = alloca i64
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
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l20
  br label %bb6
bb6:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb10
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t38, i32 %t39)
  store i1 %t42, ptr %l26
  br label %bb9
bb9:
  %t43 = load i1, ptr %l26, !tbaa !21
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t44 = load i1, ptr %l21, !tbaa !21
  %t45 = xor i1 %t44, true
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i64 0, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t52 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i64 %t52, ptr %l31
  br label %bb14
bb14:
  %t53 = load i64, ptr %l31, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb15:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t55 = load ptr, ptr %l32, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l32, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 3
  store i1 %t61, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t62 = load i1, ptr %l33, !tbaa !21
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l4, !tbaa !29
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t73 = call %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %t69, ptr %t70)
  store %"compiler/effects:root" %t73, ptr %l40
  br label %bb21
bb21:
  %t74 = getelementptr %"compiler/effects:root", ptr %l40, i32 0, i32 1
  %t75 = load i1, ptr %t74, !tbaa !21
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t81 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  store i64 %t81, ptr %l45
  br label %bb24
bb23:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb25
bb24:
  %t82 = load i64, ptr %l45, !tbaa !24
  store i64 %t82, ptr %l42, !tbaa !24
  br label %bb25
bb25:
  %t83 = load i64, ptr %l42, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
bb26:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t85 = load ptr, ptr %l46, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t88 = load ptr, ptr %l46, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 18}
  %t91 = icmp eq i64 %t89, 17
  store i1 %t91, ptr %l47, !tbaa !21
  br label %bb28
bb28:
  %t92 = load i1, ptr %l47, !tbaa !21
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t95, i32 0, i32 2
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t103 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargOut(ptr %v0, ptr %v1, ptr %t99, ptr %t100)
  store i64 %t103, ptr %l54
  br label %bb32
bb32:
  %t104 = load i64, ptr %l54, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
bb33:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t106 = load ptr, ptr %l55, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb34, label %bb35
bb34:
  %t109 = load ptr, ptr %l55, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 18}
  %t112 = icmp eq i64 %t110, 6
  store i1 %t112, ptr %l56, !tbaa !21
  br label %bb35
bb35:
  %t113 = load i1, ptr %l56, !tbaa !21
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t116, i32 0, i32 1
  %t118 = load i32, ptr %t117
  store i32 %t118, ptr %l6, !tbaa !23
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l7, !tbaa !29
  br label %bb38
bb37:
  br label %bb51
bb38:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/effects:Effects", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l6, !tbaa !23
  %t135 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t131, i32 %t132)
  store i1 %t135, ptr %l67
  br label %bb39
bb39:
  %t136 = load i1, ptr %l67, !tbaa !21
  br i1 %t136, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb43
bb41:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/effects:Effects", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l6, !tbaa !23
  %t146 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t142, i32 %t143)
  store i1 %t146, ptr %l73
  br label %bb42
bb42:
  %t147 = load i1, ptr %l73, !tbaa !21
  store i1 %t147, ptr %l68, !tbaa !21
  br label %bb43
bb43:
  %t148 = load i1, ptr %l68, !tbaa !21
  br i1 %t148, label %bb44, label %bb45
bb44:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l7, !tbaa !29
  %t153 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorCall(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  store i1 %t153, ptr %l77
  br label %bb46
bb45:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb47
bb46:
  %t154 = load i1, ptr %l77, !tbaa !21
  %t155 = xor i1 %t154, true
  store i1 %t155, ptr %l74, !tbaa !21
  br label %bb47
bb47:
  %t157 = load i1, ptr %l74, !tbaa !21
  br i1 %t157, label %bb48, label %bb49
bb48:
  %t158 = load i64, ptr @G_2ecompiler_2feffects_2eoutParam, !tbaa !24
  store i64 %t158, ptr %l79, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb50
bb50:
  %t160 = load i64, ptr %l79, !tbaa !24
  store i64 %t160, ptr %rv
  br label %ret
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store i64 0, ptr %rv
  br label %ret
bb55:
  call void @__olang_check_failed(ptr @olang_loc_650dda860f99b242_5ce1da2dd4f47486)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 1
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
  br label %bb15
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l18, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l5, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Alt", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Alt", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  store ptr %t57, ptr %l9, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l9, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Bind", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t59, ptr %t63)
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Bind", ptr %t68, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Bind", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %t67, i64 %t73, ptr %t77)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l7, !tbaa !24
  br label %bb6
bb13:
  br label %bb14
bb14:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Arm", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %t92, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t89, ptr %t93)
  br label %bb16
bb16:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Arm", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t96, ptr %t100)
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Arm", ptr %t104, i32 0, i32 4
  %t107 = load ptr, ptr %t106, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t103, ptr %t107)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 49
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 49
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 50
  store %"compiler/source:Span" %a1, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l8, !tbaa !29
  %t15 = ptrtoint ptr %v0 to i64
  store i64 %t15, ptr %l9, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e51
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = call ptr @__olang_region_make_part(ptr %v0)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  store { i64, ptr } %a2, ptr %l12, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l13, !tbaa !24
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = load i64, ptr %l9
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  %t29 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l14, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l13, !tbaa !24
  %t36 = mul i64 %t35, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e51
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load i64, ptr %l9
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = load { i64, ptr }, ptr %l14
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr null
  %t46 = icmp eq ptr %t45, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t46)
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l8, !tbaa !29
  %t48 = getelementptr %"compiler/effects:Effects", ptr %t47, i32 0, i32 51
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l16, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t51 = load ptr, ptr %l8, !tbaa !29
  %t52 = getelementptr %"compiler/effects:Effects", ptr %t51, i32 0, i32 51
  store { i64, ptr } %t50, ptr %t52, !tbaa !27
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e51
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = load { i64, ptr }, ptr %l16
  %t56 = extractvalue { i64, ptr } %t55, 0
  %t57 = extractvalue { i64, ptr } %t55, 1
  call void @__olang_region_release_part(ptr %t57, i64 %t56)
  store { i64, ptr } zeroinitializer, ptr %l16
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebuilt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 8
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 16
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 18}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb43
bb18:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb19, label %bb20
bb19:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 7
  store i1 %t44, ptr %l23, !tbaa !21
  br label %bb20
bb20:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb21, label %bb22
bb21:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l2, !tbaa !29
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Make", ptr %t52, i32 0, i32 4
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t59 = icmp sge i64 %t57, 0
  store i1 %t59, ptr %l5, !tbaa !21
  br label %bb43
bb24:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb25, label %bb26
bb25:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 17
  store i1 %t68, ptr %l33, !tbaa !21
  br label %bb26
bb26:
  %t69 = load i1, ptr %l33, !tbaa !21
  br i1 %t69, label %bb27, label %bb28
bb27:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l3, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t80 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebuilt(ptr %v0, ptr %v1, ptr %t76, ptr %t77)
  store i1 %t80, ptr %l40
  br label %bb30
bb30:
  %t81 = load i1, ptr %l40, !tbaa !21
  store i1 %t81, ptr %l5, !tbaa !21
  br label %bb43
bb31:
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t83 = load ptr, ptr %l41, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb32, label %bb33
bb32:
  %t86 = load ptr, ptr %l41, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 18}
  %t89 = icmp eq i64 %t87, 6
  store i1 %t89, ptr %l42, !tbaa !21
  br label %bb33
bb33:
  %t90 = load i1, ptr %l42, !tbaa !21
  br i1 %t90, label %bb34, label %bb35
bb34:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l4, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t101 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorCall(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  store i1 %t101, ptr %l49
  br label %bb37
bb37:
  %t102 = load i1, ptr %l49, !tbaa !21
  store i1 %t102, ptr %l5, !tbaa !21
  br label %bb43
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_f7c8ab04542d2f7e_3025df788b022d62)
  unreachable
bb43:
  %t103 = load i1, ptr %l5, !tbaa !21
  store i1 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i1
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca i32
  %l38 = alloca ptr
  %l39 = alloca i1
  %l46 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %l94 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca i1
  %l102 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l107 = alloca i32
  %l108 = alloca i1
  %l110 = alloca ptr
  %l114 = alloca { i64, ptr }
  %l117 = alloca %"compiler/effects:pend"
  %l121 = alloca ptr
  %l122 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i1
  %l136 = alloca ptr
  %l138 = alloca %"compiler/effects:pend"
  %l150 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l157 = alloca i32
  %l158 = alloca i1
  %l159 = alloca i1
  %l162 = alloca ptr
  %l164 = alloca i32
  %l165 = alloca i64
  %l173 = alloca ptr
  %l174 = alloca i1
  %l180 = alloca ptr
  %l185 = alloca %"compiler/effects:Facts"
  %l195 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l202 = alloca i32
  %l203 = alloca i1
  %l204 = alloca i1
  %l207 = alloca ptr
  %l209 = alloca i32
  %l210 = alloca i64
  %l218 = alloca ptr
  %l219 = alloca i1
  %l231 = alloca i64
  %l234 = alloca i64
  %l253 = alloca { i64, ptr }
  %l258 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca i1
  %l263 = alloca i1
  %l273 = alloca i1
  %s12 = alloca %olang.scope
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
  store ptr %t6, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t7 = load ptr, ptr %l38, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l38, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l39, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l39, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb34
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l46
  br label %bb6
bb6:
  %t26 = load i64, ptr %l46, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t27, i32 0, i32 24
  %t30 = load i32, ptr %l3, !tbaa !23
  %t32 = sext i32 %t30 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t29, i64 %t32)
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 62
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Call", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  %t44 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t37, i64 %t43, i64 %t44)
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldPends(ptr %v0, ptr %v1, ptr %t48, i64 %t51, i64 %t52, ptr %t53)
  br label %bb9
bb9:
  store i64 0, ptr %l5, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Call", ptr %t58, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb10, label %bb11
bb10:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb15
bb12:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l71, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb14
bb14:
  %t91 = load i64, ptr %l71, !tbaa !24
  store i64 %t91, ptr %l68, !tbaa !24
  br label %bb15
bb15:
  %t92 = load i64, ptr %l68, !tbaa !24
  store i64 %t92, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb17, label %bb18
bb17:
  br label %bb33
bb18:
  br label %bb19
bb19:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l10, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l3, !tbaa !23
  %t114 = sext i32 %t112 to i64
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Call", ptr %t116, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  store { i64, ptr } %t119, ptr %l94, !tbaa !27
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr ptr, ptr %t123, i64 %t120
  %t125 = load ptr, ptr %t124, !tbaa !39
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargLink(ptr %v0, ptr %v1, ptr %t111, i64 %t114, i64 %t115, ptr %t125)
  br label %bb20
bb20:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l3, !tbaa !23
  %t133 = sext i32 %t131 to i64
  %t136 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2etakesFn(ptr %v0, ptr %t130, i64 %t133)
  store i1 %t136, ptr %l100
  br label %bb21
bb21:
  %t137 = load i1, ptr %l100, !tbaa !21
  br i1 %t137, label %bb22, label %bb23
bb22:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l102, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Call", ptr %t139, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l104, !tbaa !27
  %t143 = load i64, ptr %l10, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr ptr, ptr %t146, i64 %t143
  %t148 = load ptr, ptr %t147, !tbaa !39
  %t150 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t148)
  store i32 %t150, ptr %l107
  br label %bb24
bb23:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb26
bb24:
  %t151 = load ptr, ptr %l102, !tbaa !29
  %t152 = load i32, ptr %l107, !tbaa !23
  %t153 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t151, i32 %t152)
  store i1 %t153, ptr %l108
  br label %bb25
bb25:
  %t154 = load i1, ptr %l108, !tbaa !21
  store i1 %t154, ptr %l101, !tbaa !21
  br label %bb26
bb26:
  %t155 = load i1, ptr %l101, !tbaa !21
  br i1 %t155, label %bb27, label %bb28
bb27:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/effects:Effects", ptr %t156, i32 0, i32 35
  store ptr %t158, ptr %l110, !tbaa !29
  %t159 = load i64, ptr %l4, !tbaa !24
  %t160 = load i64, ptr %l10, !tbaa !24
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Call", ptr %t161, i32 0, i32 1
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %l114, !tbaa !27
  %t165 = load i64, ptr %l10, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr ptr, ptr %t168, i64 %t165
  %t170 = load ptr, ptr %t169, !tbaa !39
  %t174 = call %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v1, ptr %v0, i64 %t159, i64 %t160, ptr %t170)
  store %"compiler/effects:pend" %t174, ptr %l117
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t175 = load ptr, ptr %l110, !tbaa !29
  %t176 = load %"compiler/effects:pend", ptr %l117
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t175, %"compiler/effects:pend" %t176)
  br label %bb30
bb30:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/effects:Effects", ptr %t177, i32 0, i32 42
  store i1 true, ptr %t179, !tbaa !21
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t180 = load i64, ptr %l9, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l9, !tbaa !24
  br label %bb16
bb33:
  br label %bb99
bb34:
  %t184 = load ptr, ptr %l2, !tbaa !29
  store ptr %t184, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t185 = load ptr, ptr %l121, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb35, label %bb36
bb35:
  %t188 = load ptr, ptr %l121, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 5}
  %t191 = icmp eq i64 %t189, 1
  store i1 %t191, ptr %l122, !tbaa !21
  br label %bb36
bb36:
  %t192 = load i1, ptr %l122, !tbaa !21
  br i1 %t192, label %bb37, label %bb38
bb37:
  %t193 = load ptr, ptr %l2, !tbaa !29
  %t195 = getelementptr { i64, [3 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { i64 }, ptr %t195, i32 0, i32 0
  %t197 = load i64, ptr %t196
  store i64 %t197, ptr %l11, !tbaa !24
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eextern(ptr %v0, ptr %t199, i64 %t200)
  br label %bb40
bb40:
  br label %bb99
bb41:
  %t203 = load ptr, ptr %l2, !tbaa !29
  store ptr %t203, ptr %l129, !tbaa !29
  store i1 false, ptr %l130, !tbaa !21
  %t204 = load ptr, ptr %l129, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb42, label %bb43
bb42:
  %t207 = load ptr, ptr %l129, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 5}
  %t210 = icmp eq i64 %t208, 2
  store i1 %t210, ptr %l130, !tbaa !21
  br label %bb43
bb43:
  %t211 = load i1, ptr %l130, !tbaa !21
  br i1 %t211, label %bb44, label %bb45
bb44:
  %t212 = load ptr, ptr %l2, !tbaa !29
  %t214 = getelementptr { i64, [3 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { ptr }, ptr %t214, i32 0, i32 0
  %t216 = load ptr, ptr %t215
  store ptr %t216, ptr %l12, !tbaa !29
  br label %bb46
bb45:
  br label %bb67
bb46:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/effects:Effects", ptr %t218, i32 0, i32 35
  store ptr %t220, ptr %l136, !tbaa !29
  %t221 = load ptr, ptr %l12, !tbaa !29
  %t223 = call %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v1, ptr %v0, i64 -1, i64 0, ptr %t221)
  store %"compiler/effects:pend" %t223, ptr %l138
  br label %bb47
bb47:
  %t224 = load ptr, ptr %l136, !tbaa !29
  %t225 = load %"compiler/effects:pend", ptr %l138
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t224, %"compiler/effects:pend" %t225)
  br label %bb48
bb48:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t226, ptr %t227)
  br label %bb49
bb49:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Call", ptr %t231, i32 0, i32 1
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t236 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t236, 0
  store i64 %t238, ptr %l15, !tbaa !24
  br label %bb50
bb50:
  %t240 = load i64, ptr %l14, !tbaa !24
  %t241 = load i64, ptr %l15, !tbaa !24
  %t244 = icmp slt i64 %t240, %t241
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb51, label %bb52
bb51:
  br label %bb66
bb52:
  br label %bb53
bb53:
  %t248 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t248, ptr %l150, !tbaa !27
  %t249 = load i64, ptr %l14, !tbaa !24
  %t251 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr ptr, ptr %t252, i64 %t249
  %t254 = load ptr, ptr %t253, !tbaa !39
  store ptr %t254, ptr %l16, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/effects:Effects", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/generic:Program", ptr %t259, i32 0, i32 2
  store ptr %t261, ptr %l155, !tbaa !29
  %t262 = load ptr, ptr %l16, !tbaa !29
  %t264 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t262)
  store i32 %t264, ptr %l157
  br label %bb54
bb54:
  %t265 = load ptr, ptr %l155, !tbaa !29
  %t266 = load i32, ptr %l157, !tbaa !23
  %t267 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t265, i32 %t266)
  store i1 %t267, ptr %l158
  br label %bb55
bb55:
  %t268 = load i1, ptr %l158, !tbaa !21
  br i1 %t268, label %bb56, label %bb57
bb56:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/effects:Effects", ptr %t269, i32 0, i32 0
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 2
  store ptr %t274, ptr %l162, !tbaa !29
  %t275 = load ptr, ptr %l16, !tbaa !29
  %t277 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t275)
  store i32 %t277, ptr %l164
  br label %bb58
bb57:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb60
bb58:
  %t278 = load ptr, ptr %l162, !tbaa !29
  %t279 = load i32, ptr %l164, !tbaa !23
  %t280 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t278, i32 %t279)
  store i64 %t280, ptr %l165
  br label %bb59
bb59:
  %t281 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t282 = load i64, ptr %l165, !tbaa !24
  %t284 = and i64 %t282, %t281
  %t286 = icmp ne i64 %t284, 0
  store i1 %t286, ptr %l159, !tbaa !21
  br label %bb60
bb60:
  %t288 = load i1, ptr %l159, !tbaa !21
  br i1 %t288, label %bb61, label %bb62
bb61:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %t289, ptr %t290)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t293 = load i64, ptr %l14, !tbaa !24
  %t295 = add i64 %t293, 1
  store i64 %t295, ptr %l14, !tbaa !24
  br label %bb50
bb66:
  br label %bb99
bb67:
  %t297 = load ptr, ptr %l2, !tbaa !29
  store ptr %t297, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t298 = load ptr, ptr %l173, !tbaa !29
  %t299 = icmp ne ptr %t298, null
  br i1 %t299, label %bb68, label %bb69
bb68:
  %t301 = load ptr, ptr %l173, !tbaa !29
  %t302 = load i64, ptr %t301, !range !{i64 0, i64 5}
  %t304 = icmp eq i64 %t302, 3
  store i1 %t304, ptr %l174, !tbaa !21
  br label %bb69
bb69:
  %t305 = load i1, ptr %l174, !tbaa !21
  br i1 %t305, label %bb70, label %bb71
bb70:
  %t306 = load ptr, ptr %l2, !tbaa !29
  %t308 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { i32, i64, i32 }, ptr %t308, i32 0, i32 2
  %t310 = load i32, ptr %t309
  store i32 %t310, ptr %l17, !tbaa !23
  br label %bb72
bb71:
  br label %bb92
bb72:
  store %olang.scope zeroinitializer, ptr %s12
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/effects:Effects", ptr %t312, i32 0, i32 23
  store ptr %t314, ptr %l180, !tbaa !29
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/effects:Effects", ptr %t315, i32 0, i32 0
  %t318 = load ptr, ptr %t317, !tbaa !29
  %t320 = getelementptr %"compiler/generic:Program", ptr %t318, i32 0, i32 2
  %t321 = load i32, ptr %l17, !tbaa !23
  %t324 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t320, i32 %t321)
  store %"compiler/effects:Facts" %t324, ptr %l185
  br label %bb73
bb73:
  %t325 = load ptr, ptr %l180, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s12, ptr %t325, ptr %l185)
  br label %bb74
bb74:
  %t327 = load ptr, ptr %l1, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Call", ptr %t327, i32 0, i32 1
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t332 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t334 = extractvalue { i64, ptr } %t332, 0
  store i64 %t334, ptr %l20, !tbaa !24
  br label %bb75
bb75:
  %t336 = load i64, ptr %l19, !tbaa !24
  %t337 = load i64, ptr %l20, !tbaa !24
  %t340 = icmp slt i64 %t336, %t337
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb76, label %bb77
bb76:
  br label %bb91
bb77:
  br label %bb78
bb78:
  %t344 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t344, ptr %l195, !tbaa !27
  %t345 = load i64, ptr %l19, !tbaa !24
  %t347 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr ptr, ptr %t348, i64 %t345
  %t350 = load ptr, ptr %t349, !tbaa !39
  store ptr %t350, ptr %l21, !tbaa !29
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/effects:Effects", ptr %t352, i32 0, i32 0
  %t355 = load ptr, ptr %t354, !tbaa !29
  %t357 = getelementptr %"compiler/generic:Program", ptr %t355, i32 0, i32 2
  store ptr %t357, ptr %l200, !tbaa !29
  %t358 = load ptr, ptr %l21, !tbaa !29
  %t360 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t358)
  store i32 %t360, ptr %l202
  br label %bb79
bb79:
  %t361 = load ptr, ptr %l200, !tbaa !29
  %t362 = load i32, ptr %l202, !tbaa !23
  %t363 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t361, i32 %t362)
  store i1 %t363, ptr %l203
  br label %bb80
bb80:
  %t364 = load i1, ptr %l203, !tbaa !21
  br i1 %t364, label %bb81, label %bb82
bb81:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/effects:Effects", ptr %t365, i32 0, i32 0
  %t368 = load ptr, ptr %t367, !tbaa !29
  %t370 = getelementptr %"compiler/generic:Program", ptr %t368, i32 0, i32 2
  store ptr %t370, ptr %l207, !tbaa !29
  %t371 = load ptr, ptr %l21, !tbaa !29
  %t373 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t371)
  store i32 %t373, ptr %l209
  br label %bb83
bb82:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb85
bb83:
  %t374 = load ptr, ptr %l207, !tbaa !29
  %t375 = load i32, ptr %l209, !tbaa !23
  %t376 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t374, i32 %t375)
  store i64 %t376, ptr %l210
  br label %bb84
bb84:
  %t377 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t378 = load i64, ptr %l210, !tbaa !24
  %t380 = and i64 %t378, %t377
  %t382 = icmp ne i64 %t380, 0
  store i1 %t382, ptr %l204, !tbaa !21
  br label %bb85
bb85:
  %t384 = load i1, ptr %l204, !tbaa !21
  br i1 %t384, label %bb86, label %bb87
bb86:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %t385, ptr %t386)
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t389 = load i64, ptr %l19, !tbaa !24
  %t391 = add i64 %t389, 1
  store i64 %t391, ptr %l19, !tbaa !24
  br label %bb75
bb91:
  call void @__olang_scope_close(ptr %s12)
  br label %bb99
bb92:
  %t393 = load ptr, ptr %l2, !tbaa !29
  store ptr %t393, ptr %l218, !tbaa !29
  store i1 false, ptr %l219, !tbaa !21
  %t394 = load ptr, ptr %l218, !tbaa !29
  %t395 = icmp ne ptr %t394, null
  br i1 %t395, label %bb93, label %bb94
bb93:
  %t397 = load ptr, ptr %l218, !tbaa !29
  %t398 = load i64, ptr %t397, !range !{i64 0, i64 5}
  %t400 = icmp eq i64 %t398, 4
  store i1 %t400, ptr %l219, !tbaa !21
  br label %bb94
bb94:
  %t401 = load i1, ptr %l219, !tbaa !21
  br i1 %t401, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_1bc29689bbb58e32_9924d9acc7f0abd6)
  unreachable
bb99:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/effects:Effects", ptr %t402, i32 0, i32 64
  %t405 = load i1, ptr %t404, !tbaa !21
  store i1 %t405, ptr %l22, !tbaa !21
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/effects:Effects", ptr %t407, i32 0, i32 64
  store i1 false, ptr %t409, !tbaa !21
  store i64 0, ptr %l23, !tbaa !24
  %t410 = load ptr, ptr %l1, !tbaa !29
  %t412 = getelementptr %"compiler/typed:Call", ptr %t410, i32 0, i32 1
  %t413 = load { i64, ptr }, ptr %t412, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  store i64 %t415, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t417 = load i64, ptr %l24, !tbaa !24
  %t418 = load i64, ptr %l23, !tbaa !24
  %t421 = icmp sgt i64 %t417, %t418
  br i1 %t421, label %bb100, label %bb101
bb100:
  %t423 = load i64, ptr %l25, !tbaa !24
  %t425 = icmp sgt i64 %t423, 0
  br i1 %t425, label %bb102, label %bb103
bb101:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb105
bb102:
  %t427 = load i64, ptr %l24, !tbaa !24
  %t428 = load i64, ptr %l23, !tbaa !24
  %t431 = sub i64 %t427, %t428
  %t432 = load i64, ptr %l25, !tbaa !24
  %t435 = add i64 %t431, %t432
  %t437 = sub i64 %t435, 1
  %t438 = load i64, ptr %l25, !tbaa !24
  %t441 = sdiv i64 %t437, %t438
  store i64 %t441, ptr %l234, !tbaa !24
  br label %bb104
bb103:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb104
bb104:
  %t443 = load i64, ptr %l234, !tbaa !24
  store i64 %t443, ptr %l231, !tbaa !24
  br label %bb105
bb105:
  %t444 = load i64, ptr %l231, !tbaa !24
  store i64 %t444, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb106
bb106:
  %t445 = load i64, ptr %l27, !tbaa !24
  %t446 = load i64, ptr %l26, !tbaa !24
  %t449 = icmp slt i64 %t445, %t446
  %t451 = xor i1 %t449, true
  br i1 %t451, label %bb107, label %bb108
bb107:
  br label %bb125
bb108:
  br label %bb109
bb109:
  %t453 = load i64, ptr %l23, !tbaa !24
  %t454 = load i64, ptr %l27, !tbaa !24
  %t455 = load i64, ptr %l25, !tbaa !24
  %t458 = mul i64 %t454, %t455
  %t461 = add i64 %t453, %t458
  store i64 %t461, ptr %l28, !tbaa !24
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr %"compiler/typed:Call", ptr %t463, i32 0, i32 1
  %t466 = load { i64, ptr }, ptr %t465, !tbaa !27
  store { i64, ptr } %t466, ptr %l253, !tbaa !27
  %t467 = load i64, ptr %l28, !tbaa !24
  %t469 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = getelementptr ptr, ptr %t470, i64 %t467
  %t472 = load ptr, ptr %t471, !tbaa !39
  store ptr %t472, ptr %l29, !tbaa !29
  %t474 = load i1, ptr %l22, !tbaa !21
  %t476 = xor i1 %t474, true
  br i1 %t476, label %bb110, label %bb111
bb110:
  %t478 = load ptr, ptr %l29, !tbaa !29
  store ptr %t478, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t479 = load ptr, ptr %l259, !tbaa !29
  %t480 = icmp ne ptr %t479, null
  br i1 %t480, label %bb112, label %bb113
bb111:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb114
bb112:
  %t482 = load ptr, ptr %l259, !tbaa !29
  %t483 = load i64, ptr %t482, !range !{i64 0, i64 18}
  %t485 = icmp eq i64 %t483, 5
  store i1 %t485, ptr %l260, !tbaa !21
  br label %bb113
bb113:
  %t486 = load i1, ptr %l260, !tbaa !21
  store i1 %t486, ptr %l258, !tbaa !21
  br label %bb114
bb114:
  %t487 = load i1, ptr %l258, !tbaa !21
  br i1 %t487, label %bb115, label %bb116
bb115:
  %t488 = load ptr, ptr %l29, !tbaa !29
  %t490 = getelementptr { i64, [5 x i64] }, ptr %t488, i32 0, i32 1
  %t491 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t490, i32 0, i32 0
  %t492 = load %"compiler/source:Span", ptr %t491
  store %"compiler/source:Span" %t492, ptr %l30
  %t494 = load ptr, ptr %l29, !tbaa !29
  %t496 = getelementptr { i64, [5 x i64] }, ptr %t494, i32 0, i32 1
  %t497 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t496, i32 0, i32 1
  %t498 = load i32, ptr %t497
  store i32 %t498, ptr %l31, !tbaa !23
  %t500 = load ptr, ptr %l29, !tbaa !29
  %t502 = getelementptr { i64, [5 x i64] }, ptr %t500, i32 0, i32 1
  %t503 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t502, i32 0, i32 2
  %t504 = load ptr, ptr %t503
  store ptr %t504, ptr %l32, !tbaa !29
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t507 = load ptr, ptr %l1, !tbaa !29
  %t508 = load i64, ptr %l28, !tbaa !24
  %t512 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eonStack(ptr %v0, ptr %v1, ptr %t506, ptr %t507, i64 %t508)
  store i1 %t512, ptr %l273
  br label %bb117
bb116:
  store i1 false, ptr %l263, !tbaa !21
  br label %bb118
bb117:
  %t513 = load i1, ptr %l273, !tbaa !21
  store i1 %t513, ptr %l263, !tbaa !21
  br label %bb118
bb118:
  %t514 = load i1, ptr %l263, !tbaa !21
  br i1 %t514, label %bb119, label %bb120
bb119:
  %t515 = load ptr, ptr %l29, !tbaa !29
  %t517 = getelementptr { i64, [5 x i64] }, ptr %t515, i32 0, i32 1
  %t518 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t517, i32 0, i32 0
  %t519 = load %"compiler/source:Span", ptr %t518
  store %"compiler/source:Span" %t519, ptr %l33
  %t521 = load ptr, ptr %l29, !tbaa !29
  %t523 = getelementptr { i64, [5 x i64] }, ptr %t521, i32 0, i32 1
  %t524 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t523, i32 0, i32 1
  %t525 = load i32, ptr %t524
  store i32 %t525, ptr %l34, !tbaa !23
  %t527 = load ptr, ptr %l29, !tbaa !29
  %t529 = getelementptr { i64, [5 x i64] }, ptr %t527, i32 0, i32 1
  %t530 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t529, i32 0, i32 2
  %t531 = load ptr, ptr %t530
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/typed:Promote", ptr %t531, i32 0, i32 0
  %t538 = load ptr, ptr %t537, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t533, ptr %t538)
  br label %bb121
bb120:
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t543 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t542, ptr %t543)
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t547 = load i64, ptr %l27, !tbaa !24
  %t549 = add i64 %t547, 1
  store i64 %t549, ptr %l27, !tbaa !24
  br label %bb106
bb125:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallsThrough(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l52 = alloca i1
  %l53 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i1
  %l62 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l12
  br label %bb1
bb1:
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s1, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l14
  br label %bb2
bb2:
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %l14)
  store i64 %t11, ptr %l16
  br label %bb3
bb3:
  %t12 = load i64, ptr %l16, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l20, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/effects:Effects", ptr %t59, i32 0, i32 4
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l44
  br label %bb14
bb14:
  %t67 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s2, ptr %l44)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l46
  br label %bb15
bb15:
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l46, i64 %t68)
  store i64 %t71, ptr %l49
  br label %bb16
bb16:
  %t72 = load i64, ptr %l49, !tbaa !24
  store i64 %t72, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = icmp sge i64 %t73, 0
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t77 = load i64, ptr %l8, !tbaa !24
  store i64 %t77, ptr %l53, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/effects:Effects", ptr %t78, i32 0, i32 1
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l56
  br label %bb19
bb18:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb20
bb19:
  %t83 = load i64, ptr %l53, !tbaa !24
  %t84 = load i64, ptr %l56, !tbaa !24
  %t85 = icmp slt i64 %t83, %t84
  store i1 %t85, ptr %l52, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l52, !tbaa !21
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/effects:Effects", ptr %t88, i32 0, i32 10
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l62
  br label %bb23
bb22:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb24
bb23:
  %t95 = load i64, ptr %l62, !tbaa !24
  %t96 = icmp ne i64 %t95, 0
  store i1 %t96, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t98 = load i1, ptr %l58, !tbaa !21
  br i1 %t98, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb10
bb29:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/effects:Effects", ptr %t2, i32 0, i32 23
  %t5 = getelementptr %"compiler/effects:Facts", ptr %t4, i32 0, i32 19
  %t6 = load i64, ptr %t5, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = or i64 %t6, %t7
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 23
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t13, i32 0, i32 19
  store i64 %t10, ptr %t14, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2feffects_2ecapIndex(i64 %t15)
  store i64 %t17, ptr %l9
  br label %bb1
bb1:
  %t18 = load i64, ptr %l9, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sge i64 %t19, 0
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 23
  %t27 = getelementptr %"compiler/effects:Facts", ptr %t26, i32 0, i32 20
  %t29 = getelementptr [6 x i64], ptr %t27, i64 0, i64 %t24
  %t30 = load i64, ptr %t29, !tbaa !34
  %t32 = icmp slt i64 %t30, 0
  store i1 %t32, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t34 = load i1, ptr %l12, !tbaa !21
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l2, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/effects:Effects", ptr %t37, i32 0, i32 34
  %t40 = load i64, ptr %t39, !tbaa !24
  %t43 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 23
  %t44 = getelementptr %"compiler/effects:Facts", ptr %t43, i32 0, i32 20
  %t46 = getelementptr [6 x i64], ptr %t44, i64 0, i64 %t36
  store i64 %t40, ptr %t46, !tbaa !34
  br label %bb7
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecaptureSlot(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca %"compiler/typed:Local"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l14, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 5
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l17
  br label %bb2
bb2:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 %a2, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
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
  store i64 %t41, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l22, !tbaa !24
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
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Body", ptr %t63, i32 0, i32 7
  %t69 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t65, i64 %t61)
  store %"compiler/typed:Local" %t69, ptr %l46
  br label %bb13
bb13:
  %t70 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 4
  %t71 = load i32, ptr %t70, !range !{i32 0, i32 7}
  %t73 = trunc i64 5 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t80 = load i64, ptr %l9, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l9, !tbaa !24
  br label %bb9
bb18:
  %t84 = load i64, ptr %l4, !tbaa !24
  store i64 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca i32
  %l44 = alloca %"compiler/effects:part"
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l74 = alloca i32
  %l75 = alloca i1
  %l77 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i64
  %l86 = alloca i32
  %l87 = alloca %"compiler/effects:part"
  %l88 = alloca ptr
  %l89 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca i32
  %l102 = alloca %"compiler/effects:part"
  %l103 = alloca ptr
  %l118 = alloca ptr
  %l119 = alloca i1
  %l132 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l156 = alloca ptr
  %l157 = alloca i1
  %l175 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l198 = alloca ptr
  %l199 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca i64
  %l211 = alloca i32
  %l212 = alloca %"compiler/effects:part"
  %l213 = alloca ptr
  %l222 = alloca ptr
  %l223 = alloca i1
  %l229 = alloca ptr
  %l233 = alloca %"compiler/effects:part"
  %l234 = alloca ptr
  %l235 = alloca i1
  %l238 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca i1
  %l254 = alloca ptr
  %l255 = alloca i1
  %l262 = alloca ptr
  %l263 = alloca i1
  %l274 = alloca ptr
  %l275 = alloca ptr
  %l276 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l280 = alloca ptr
  %l283 = alloca %"compiler/effects:part"
  %l284 = alloca ptr
  %l285 = alloca i1
  %l289 = alloca ptr
  %l290 = alloca i64
  %l292 = alloca i32
  %l293 = alloca %"compiler/effects:part"
  %l294 = alloca ptr
  %l295 = alloca i1
  %l304 = alloca ptr
  %l305 = alloca i1
  %l311 = alloca ptr
  %l316 = alloca %"compiler/effects:part"
  %l318 = alloca ptr
  %l321 = alloca %"compiler/effects:part"
  %l323 = alloca ptr
  %l324 = alloca i64
  %l326 = alloca i32
  %l327 = alloca %"compiler/effects:part"
  %s28 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t5, 16
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 36
  store ptr %t11, ptr %l40, !tbaa !29
  %t12 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t12, ptr %l41, !tbaa !24
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t13)
  store i32 %t15, ptr %l43
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t16 = load i64, ptr %l41, !tbaa !24
  %t17 = load i32, ptr %l43, !tbaa !23
  %t18 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t16, i64 0, i32 %t17, ptr null)
  store %"compiler/effects:part" %t18, ptr %l44
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l40, !tbaa !29
  %t20 = load %"compiler/effects:part", ptr %l44
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t19, %"compiler/effects:part" %t20)
  br label %bb8
bb8:
  br label %ret
bb9:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t22 = load ptr, ptr %l45, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l45, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 17
  store i1 %t28, ptr %l46, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l46, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = add i64 %t39, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i64 %t41)
  br label %bb15
bb15:
  br label %bb183
bb16:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t46 = load ptr, ptr %l56, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l56, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 9
  store i1 %t52, ptr %l57, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l57, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t56, i32 0, i32 2
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 51}
  store i32 %t58, ptr %l4
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t62, i32 0, i32 4
  %t64 = load { i64, ptr }, ptr %t63
  store { i64, ptr } %t64, ptr %l5, !tbaa !27
  br label %bb21
bb20:
  br label %bb37
bb21:
  %t66 = load i32, ptr %l4, !range !{i32 0, i32 51}
  %t68 = trunc i64 20 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t75 = icmp eq i64 %t73, 1
  store i1 %t75, ptr %l66, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb24
bb24:
  %t77 = load i1, ptr %l66, !tbaa !21
  br i1 %t77, label %bb25, label %bb26
bb25:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l71, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t79, ptr %l72, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 0
  %t83 = load ptr, ptr %t82, !tbaa !39
  %t85 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t83)
  store i32 %t85, ptr %l74
  br label %bb27
bb26:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb29
bb27:
  %t86 = load ptr, ptr %l71, !tbaa !29
  %t87 = load i32, ptr %l74, !tbaa !23
  %t88 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t88, ptr %l75
  br label %bb28
bb28:
  %t89 = load i1, ptr %l75, !tbaa !21
  store i1 %t89, ptr %l70, !tbaa !21
  br label %bb29
bb29:
  %t90 = load i1, ptr %l70, !tbaa !21
  br i1 %t90, label %bb30, label %bb31
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l77, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 0
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t98 = load i64, ptr %l2, !tbaa !24
  %t100 = add i64 %t98, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t91, ptr %t96, i64 %t100)
  br label %bb32
bb31:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 36
  store ptr %t106, ptr %l83, !tbaa !29
  %t107 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t107, ptr %l84, !tbaa !24
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t108)
  store i32 %t110, ptr %l86
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t111 = load i64, ptr %l84, !tbaa !24
  %t112 = load i32, ptr %l86, !tbaa !23
  %t113 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t111, i64 0, i32 %t112, ptr null)
  store %"compiler/effects:part" %t113, ptr %l87
  br label %bb34
bb34:
  %t114 = load ptr, ptr %l83, !tbaa !29
  %t115 = load %"compiler/effects:part", ptr %l87
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t114, %"compiler/effects:part" %t115)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb183
bb37:
  %t116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t116, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t117 = load ptr, ptr %l88, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb38, label %bb39
bb38:
  %t120 = load ptr, ptr %l88, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 18}
  %t123 = icmp eq i64 %t121, 11
  store i1 %t123, ptr %l89, !tbaa !21
  br label %bb39
bb39:
  %t124 = load i1, ptr %l89, !tbaa !21
  br i1 %t124, label %bb40, label %bb41
bb40:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr { i64, [5 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l6, !tbaa !29
  br label %bb42
bb41:
  br label %bb54
bb42:
  %t131 = load ptr, ptr %l6, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Cond", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb43, label %bb44
bb43:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/effects:Effects", ptr %t138, i32 0, i32 36
  store ptr %t140, ptr %l98, !tbaa !29
  %t141 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t141, ptr %l99, !tbaa !24
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t142)
  store i32 %t144, ptr %l101
  br label %bb45
bb44:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l103, !tbaa !29
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Cond", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  br i1 %t151, label %bb48, label %bb49
bb45:
  %t153 = load i64, ptr %l99, !tbaa !24
  %t154 = load i32, ptr %l101, !tbaa !23
  %t155 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t153, i64 0, i32 %t154, ptr null)
  store %"compiler/effects:part" %t155, ptr %l102
  br label %bb46
bb46:
  %t156 = load ptr, ptr %l98, !tbaa !29
  %t157 = load %"compiler/effects:part", ptr %l102
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t156, %"compiler/effects:part" %t157)
  br label %bb47
bb47:
  br label %bb52
bb48:
  call void @__olang_check_failed(ptr @olang_loc_b51fd4885ec92e5_d8c1bbe4cc347d79)
  unreachable
bb49:
  br label %bb50
bb50:
  %t158 = load ptr, ptr %l6, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Cond", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = load i64, ptr %l2, !tbaa !24
  %t165 = add i64 %t163, 1
  %t166 = load ptr, ptr %l103, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t166, ptr %t161, i64 %t165)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l6, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Cond", ptr %t170, i32 0, i32 2
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = load i64, ptr %l2, !tbaa !24
  %t177 = add i64 %t175, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t169, ptr %t173, i64 %t177)
  br label %bb53
bb53:
  br label %bb183
bb54:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t182 = load ptr, ptr %l118, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb55, label %bb56
bb55:
  %t185 = load ptr, ptr %l118, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 18}
  %t188 = icmp eq i64 %t186, 13
  store i1 %t188, ptr %l119, !tbaa !21
  br label %bb56
bb56:
  %t189 = load i1, ptr %l119, !tbaa !21
  br i1 %t189, label %bb57, label %bb58
bb57:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [5 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l7, !tbaa !29
  br label %bb59
bb58:
  br label %bb74
bb59:
  %t196 = load ptr, ptr %l7, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Match", ptr %t196, i32 0, i32 1
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t201, 0
  store i64 %t203, ptr %l10, !tbaa !24
  br label %bb60
bb60:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t206 = load i64, ptr %l10, !tbaa !24
  %t209 = icmp slt i64 %t205, %t206
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb61, label %bb62
bb61:
  br label %bb66
bb62:
  br label %bb63
bb63:
  %t213 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t213, ptr %l132, !tbaa !27
  %t214 = load i64, ptr %l9, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr ptr, ptr %t217, i64 %t214
  %t219 = load ptr, ptr %t218, !tbaa !39
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Arm", ptr %t219, i32 0, i32 4
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t226 = load i64, ptr %l2, !tbaa !24
  %t228 = add i64 %t226, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t221, ptr %t225, i64 %t228)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t232 = load i64, ptr %l9, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l9, !tbaa !24
  br label %bb60
bb66:
  %t236 = load ptr, ptr %l7, !tbaa !29
  %t238 = getelementptr %"compiler/typed:Match", ptr %t236, i32 0, i32 2
  %t239 = load ptr, ptr %t238, !tbaa !29
  %t241 = icmp eq ptr %t239, null
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb67, label %bb68
bb67:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l146, !tbaa !29
  %t246 = load ptr, ptr %l7, !tbaa !29
  %t248 = getelementptr %"compiler/typed:Match", ptr %t246, i32 0, i32 2
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = icmp eq ptr %t249, null
  br i1 %t251, label %bb69, label %bb70
bb68:
  br label %bb73
bb69:
  call void @__olang_check_failed(ptr @olang_loc_488be308cffaf13e_20c0e7cb8e30f352)
  unreachable
bb70:
  br label %bb71
bb71:
  %t253 = load ptr, ptr %l7, !tbaa !29
  %t255 = getelementptr %"compiler/typed:Match", ptr %t253, i32 0, i32 2
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Arm", ptr %t256, i32 0, i32 4
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load i64, ptr %l2, !tbaa !24
  %t263 = add i64 %t261, 1
  %t264 = load ptr, ptr %l146, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t264, ptr %t260, i64 %t263)
  br label %bb72
bb72:
  br label %bb73
bb73:
  br label %bb183
bb74:
  %t267 = load ptr, ptr %l1, !tbaa !29
  store ptr %t267, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t268 = load ptr, ptr %l156, !tbaa !29
  %t269 = icmp ne ptr %t268, null
  br i1 %t269, label %bb75, label %bb76
bb75:
  %t271 = load ptr, ptr %l156, !tbaa !29
  %t272 = load i64, ptr %t271, !range !{i64 0, i64 18}
  %t274 = icmp eq i64 %t272, 14
  store i1 %t274, ptr %l157, !tbaa !21
  br label %bb76
bb76:
  %t275 = load i1, ptr %l157, !tbaa !21
  br i1 %t275, label %bb77, label %bb78
bb77:
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t278 = getelementptr { i64, [5 x i64] }, ptr %t276, i32 0, i32 1
  %t279 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t278, i32 0, i32 2
  %t280 = load ptr, ptr %t279
  store ptr %t280, ptr %l12, !tbaa !29
  br label %bb79
bb78:
  br label %bb94
bb79:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load ptr, ptr %l12, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Try", ptr %t283, i32 0, i32 0
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t287 = load i64, ptr %l2, !tbaa !24
  %t289 = add i64 %t287, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t282, ptr %t286, i64 %t289)
  br label %bb80
bb80:
  %t293 = load ptr, ptr %l12, !tbaa !29
  %t295 = getelementptr %"compiler/typed:Try", ptr %t293, i32 0, i32 1
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  store { i64, ptr } %t296, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t298 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t298, 0
  store i64 %t300, ptr %l15, !tbaa !24
  br label %bb81
bb81:
  %t302 = load i64, ptr %l14, !tbaa !24
  %t303 = load i64, ptr %l15, !tbaa !24
  %t306 = icmp slt i64 %t302, %t303
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb82, label %bb83
bb82:
  br label %bb93
bb83:
  br label %bb84
bb84:
  %t310 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t310, ptr %l175, !tbaa !27
  %t311 = load i64, ptr %l14, !tbaa !24
  %t313 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr ptr, ptr %t314, i64 %t311
  %t316 = load ptr, ptr %t315, !tbaa !39
  %t320 = getelementptr %"compiler/typed:Clause", ptr %t316, i32 0, i32 4
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  store { i64, ptr } %t321, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  store i64 %t325, ptr %l19, !tbaa !24
  br label %bb85
bb85:
  %t327 = load i64, ptr %l18, !tbaa !24
  %t328 = load i64, ptr %l19, !tbaa !24
  %t331 = icmp slt i64 %t327, %t328
  %t333 = xor i1 %t331, true
  br i1 %t333, label %bb86, label %bb87
bb86:
  br label %bb91
bb87:
  br label %bb88
bb88:
  %t335 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t335, ptr %l186, !tbaa !27
  %t336 = load i64, ptr %l18, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 %t336
  %t341 = load ptr, ptr %t340, !tbaa !39
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i64, ptr %l2, !tbaa !24
  %t348 = add i64 %t346, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t343, ptr %t341, i64 %t348)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t352 = load i64, ptr %l18, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l18, !tbaa !24
  br label %bb85
bb91:
  br label %bb92
bb92:
  %t356 = load i64, ptr %l14, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l14, !tbaa !24
  br label %bb81
bb93:
  br label %bb183
bb94:
  %t360 = load ptr, ptr %l1, !tbaa !29
  store ptr %t360, ptr %l198, !tbaa !29
  store i1 false, ptr %l199, !tbaa !21
  %t361 = load ptr, ptr %l198, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb95, label %bb96
bb95:
  %t364 = load ptr, ptr %l198, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 18}
  %t367 = icmp eq i64 %t365, 12
  store i1 %t367, ptr %l199, !tbaa !21
  br label %bb96
bb96:
  %t368 = load i1, ptr %l199, !tbaa !21
  br i1 %t368, label %bb97, label %bb98
bb97:
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t371 = getelementptr { i64, [5 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t371, i32 0, i32 2
  %t373 = load ptr, ptr %t372
  store ptr %t373, ptr %l21, !tbaa !29
  br label %bb99
bb98:
  br label %bb110
bb99:
  %t375 = load ptr, ptr %l21, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Seq", ptr %t375, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !29
  %t380 = icmp eq ptr %t378, null
  br i1 %t380, label %bb100, label %bb101
bb100:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/effects:Effects", ptr %t382, i32 0, i32 36
  store ptr %t384, ptr %l208, !tbaa !29
  %t385 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t385, ptr %l209, !tbaa !24
  %t386 = load ptr, ptr %l1, !tbaa !29
  %t388 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t386)
  store i32 %t388, ptr %l211
  br label %bb102
bb101:
  %t389 = load ptr, ptr %l0, !tbaa !29
  store ptr %t389, ptr %l213, !tbaa !29
  %t390 = load ptr, ptr %l21, !tbaa !29
  %t392 = getelementptr %"compiler/typed:Seq", ptr %t390, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !29
  %t395 = icmp eq ptr %t393, null
  br i1 %t395, label %bb105, label %bb106
bb102:
  %t397 = load i64, ptr %l209, !tbaa !24
  %t398 = load i32, ptr %l211, !tbaa !23
  %t399 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t397, i64 0, i32 %t398, ptr null)
  store %"compiler/effects:part" %t399, ptr %l212
  br label %bb103
bb103:
  %t400 = load ptr, ptr %l208, !tbaa !29
  %t401 = load %"compiler/effects:part", ptr %l212
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t400, %"compiler/effects:part" %t401)
  br label %bb104
bb104:
  br label %bb109
bb105:
  call void @__olang_check_failed(ptr @olang_loc_59fe423ba48f95ef_125e5ca5a1678c93)
  unreachable
bb106:
  br label %bb107
bb107:
  %t402 = load ptr, ptr %l21, !tbaa !29
  %t404 = getelementptr %"compiler/typed:Seq", ptr %t402, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t407 = load i64, ptr %l2, !tbaa !24
  %t409 = add i64 %t407, 1
  %t410 = load ptr, ptr %l213, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t410, ptr %t405, i64 %t409)
  br label %bb108
bb108:
  br label %bb109
bb109:
  br label %bb183
bb110:
  %t413 = load ptr, ptr %l1, !tbaa !29
  store ptr %t413, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t414 = load ptr, ptr %l222, !tbaa !29
  %t415 = icmp ne ptr %t414, null
  br i1 %t415, label %bb111, label %bb112
bb111:
  %t417 = load ptr, ptr %l222, !tbaa !29
  %t418 = load i64, ptr %t417, !range !{i64 0, i64 18}
  %t420 = icmp eq i64 %t418, 15
  store i1 %t420, ptr %l223, !tbaa !21
  br label %bb112
bb112:
  %t421 = load i1, ptr %l223, !tbaa !21
  br i1 %t421, label %bb113, label %bb114
bb113:
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t424 = getelementptr { i64, [5 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t424, i32 0, i32 2
  %t426 = load ptr, ptr %t425
  store ptr %t426, ptr %l22, !tbaa !29
  br label %bb115
bb114:
  br label %bb118
bb115:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/effects:Effects", ptr %t428, i32 0, i32 36
  store ptr %t430, ptr %l229, !tbaa !29
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load ptr, ptr %l22, !tbaa !29
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t437 = call %"compiler/effects:part" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnPart(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t431, ptr %t432, ptr %t433)
  store %"compiler/effects:part" %t437, ptr %l233
  br label %bb116
bb116:
  %t438 = load ptr, ptr %l229, !tbaa !29
  %t439 = load %"compiler/effects:part", ptr %l233
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %t438, %"compiler/effects:part" %t439)
  br label %bb117
bb117:
  br label %bb183
bb118:
  %t440 = load ptr, ptr %l1, !tbaa !29
  store ptr %t440, ptr %l234, !tbaa !29
  store i1 false, ptr %l235, !tbaa !21
  %t441 = load ptr, ptr %l234, !tbaa !29
  %t442 = icmp ne ptr %t441, null
  br i1 %t442, label %bb119, label %bb120
bb119:
  %t444 = load ptr, ptr %l234, !tbaa !29
  %t445 = load i64, ptr %t444, !range !{i64 0, i64 18}
  %t447 = icmp eq i64 %t445, 2
  store i1 %t447, ptr %l235, !tbaa !21
  br label %bb120
bb120:
  %t448 = load i1, ptr %l235, !tbaa !21
  br i1 %t448, label %bb121, label %bb122
bb121:
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr { i64, [5 x i64] }, ptr %t449, i32 0, i32 1
  %t452 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t451, i32 0, i32 2
  %t453 = load ptr, ptr %t452
  store ptr %t453, ptr %l240, !tbaa !29
  store i1 false, ptr %l241, !tbaa !21
  %t454 = load ptr, ptr %l240, !tbaa !29
  %t455 = icmp ne ptr %t454, null
  br i1 %t455, label %bb123, label %bb124
bb122:
  store i1 false, ptr %l238, !tbaa !21
  br label %bb125
bb123:
  %t457 = load ptr, ptr %l240, !tbaa !29
  %t458 = load i64, ptr %t457, !range !{i64 0, i64 8}
  %t460 = icmp eq i64 %t458, 0
  store i1 %t460, ptr %l241, !tbaa !21
  br label %bb124
bb124:
  %t461 = load i1, ptr %l241, !tbaa !21
  store i1 %t461, ptr %l238, !tbaa !21
  br label %bb125
bb125:
  %t462 = load i1, ptr %l238, !tbaa !21
  br i1 %t462, label %bb126, label %bb127
bb126:
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr { i64, [5 x i64] }, ptr %t463, i32 0, i32 1
  %t466 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t465, i32 0, i32 1
  %t467 = load i32, ptr %t466
  store i32 %t467, ptr %l23, !tbaa !23
  %t469 = load ptr, ptr %l1, !tbaa !29
  %t471 = getelementptr { i64, [5 x i64] }, ptr %t469, i32 0, i32 1
  %t472 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t471, i32 0, i32 2
  %t473 = load ptr, ptr %t472
  %t475 = getelementptr { i64, [4 x i64] }, ptr %t473, i32 0, i32 1
  %t476 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t475, i32 0, i32 2
  %t477 = load i32, ptr %t476
  store i32 %t477, ptr %l24, !tbaa !23
  br label %bb128
bb127:
  br label %bb130
bb128:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i32, ptr %l24, !tbaa !23
  %t482 = sext i32 %t480 to i64
  %t483 = load i32, ptr %l23, !tbaa !23
  %t484 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyLocal(ptr %v0, ptr %t479, i64 %t482, i32 %t483, i64 %t484)
  br label %bb129
bb129:
  br label %bb183
bb130:
  %t489 = load ptr, ptr %l1, !tbaa !29
  store ptr %t489, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t490 = load ptr, ptr %l254, !tbaa !29
  %t491 = icmp ne ptr %t490, null
  br i1 %t491, label %bb131, label %bb132
bb131:
  %t493 = load ptr, ptr %l254, !tbaa !29
  %t494 = load i64, ptr %t493, !range !{i64 0, i64 18}
  %t496 = icmp eq i64 %t494, 2
  store i1 %t496, ptr %l255, !tbaa !21
  br label %bb132
bb132:
  %t497 = load i1, ptr %l255, !tbaa !21
  br i1 %t497, label %bb133, label %bb134
bb133:
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr { i64, [5 x i64] }, ptr %t498, i32 0, i32 1
  %t501 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t500, i32 0, i32 1
  %t502 = load i32, ptr %t501
  store i32 %t502, ptr %l25, !tbaa !23
  %t504 = load ptr, ptr %l1, !tbaa !29
  %t506 = getelementptr { i64, [5 x i64] }, ptr %t504, i32 0, i32 1
  %t507 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t506, i32 0, i32 2
  %t508 = load ptr, ptr %t507
  store ptr %t508, ptr %l26, !tbaa !29
  br label %bb135
bb134:
  br label %bb145
bb135:
  %t510 = load ptr, ptr %l26, !tbaa !29
  store ptr %t510, ptr %l262, !tbaa !29
  store i1 false, ptr %l263, !tbaa !21
  %t511 = load ptr, ptr %l262, !tbaa !29
  %t512 = icmp ne ptr %t511, null
  br i1 %t512, label %bb136, label %bb137
bb136:
  %t514 = load ptr, ptr %l262, !tbaa !29
  %t515 = load i64, ptr %t514, !range !{i64 0, i64 8}
  %t517 = icmp eq i64 %t515, 3
  store i1 %t517, ptr %l263, !tbaa !21
  br label %bb137
bb137:
  %t518 = load i1, ptr %l263, !tbaa !21
  br i1 %t518, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s28
  %t519 = load ptr, ptr %l26, !tbaa !29
  %t521 = getelementptr { i64, [4 x i64] }, ptr %t519, i32 0, i32 1
  %t522 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t521, i32 0, i32 0
  %t523 = load %"compiler/source:Span", ptr %t522
  store %"compiler/source:Span" %t523, ptr %l27
  %t525 = load ptr, ptr %l26, !tbaa !29
  %t527 = getelementptr { i64, [4 x i64] }, ptr %t525, i32 0, i32 1
  %t528 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t527, i32 0, i32 1
  %t529 = load i32, ptr %t528
  store i32 %t529, ptr %l28, !tbaa !23
  %t531 = load ptr, ptr %l26, !tbaa !29
  %t533 = getelementptr { i64, [4 x i64] }, ptr %t531, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t533, i32 0, i32 2
  %t535 = load ptr, ptr %t534
  store ptr %t535, ptr %l29, !tbaa !29
  %t537 = load ptr, ptr %l26, !tbaa !29
  %t539 = getelementptr { i64, [4 x i64] }, ptr %t537, i32 0, i32 1
  %t540 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t539, i32 0, i32 3
  %t541 = load i64, ptr %t540
  store i64 %t541, ptr %l30, !tbaa !24
  %t543 = load ptr, ptr %l0, !tbaa !29
  store ptr %t543, ptr %l274, !tbaa !29
  %t544 = load ptr, ptr %l26, !tbaa !29
  store ptr %t544, ptr %l275, !tbaa !29
  %t545 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t545, ptr %l276
  br label %bb140
bb139:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t548 = getelementptr %"compiler/effects:Effects", ptr %t546, i32 0, i32 36
  store ptr %t548, ptr %l280, !tbaa !29
  %t549 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t550 = load i32, ptr %l25, !tbaa !23
  %t553 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t549, i64 0, i32 %t550, ptr null)
  store %"compiler/effects:part" %t553, ptr %l283
  br label %bb142
bb140:
  %t554 = load i32, ptr %l25, !tbaa !23
  %t555 = load i64, ptr %l2, !tbaa !24
  %t556 = load ptr, ptr %l274, !tbaa !29
  %t557 = load ptr, ptr %l275, !tbaa !29
  %t558 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l276
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyField(ptr %v0, ptr %v1, ptr %s28, ptr %t556, ptr %t557, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t558, i32 %t554, i64 %t555)
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s28)
  br label %bb144
bb142:
  %t561 = load ptr, ptr %l280, !tbaa !29
  %t562 = load %"compiler/effects:part", ptr %l283
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t561, %"compiler/effects:part" %t562)
  br label %bb143
bb143:
  br label %bb144
bb144:
  br label %bb183
bb145:
  %t563 = load ptr, ptr %l1, !tbaa !29
  store ptr %t563, ptr %l284, !tbaa !29
  store i1 false, ptr %l285, !tbaa !21
  %t564 = load ptr, ptr %l284, !tbaa !29
  %t565 = icmp ne ptr %t564, null
  br i1 %t565, label %bb146, label %bb147
bb146:
  %t567 = load ptr, ptr %l284, !tbaa !29
  %t568 = load i64, ptr %t567, !range !{i64 0, i64 18}
  %t570 = icmp eq i64 %t568, 0
  store i1 %t570, ptr %l285, !tbaa !21
  br label %bb147
bb147:
  %t571 = load i1, ptr %l285, !tbaa !21
  br i1 %t571, label %bb148, label %bb149
bb148:
  br label %bb150
bb149:
  br label %bb154
bb150:
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/effects:Effects", ptr %t572, i32 0, i32 36
  store ptr %t574, ptr %l289, !tbaa !29
  %t575 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  store i64 %t575, ptr %l290, !tbaa !24
  %t576 = load ptr, ptr %l1, !tbaa !29
  %t578 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t576)
  store i32 %t578, ptr %l292
  br label %bb151
bb151:
  %t579 = load i64, ptr %l290, !tbaa !24
  %t580 = load i32, ptr %l292, !tbaa !23
  %t581 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t579, i64 0, i32 %t580, ptr null)
  store %"compiler/effects:part" %t581, ptr %l293
  br label %bb152
bb152:
  %t582 = load ptr, ptr %l289, !tbaa !29
  %t583 = load %"compiler/effects:part", ptr %l293
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t582, %"compiler/effects:part" %t583)
  br label %bb153
bb153:
  br label %bb183
bb154:
  %t584 = load ptr, ptr %l1, !tbaa !29
  store ptr %t584, ptr %l294, !tbaa !29
  store i1 false, ptr %l295, !tbaa !21
  %t585 = load ptr, ptr %l294, !tbaa !29
  %t586 = icmp ne ptr %t585, null
  br i1 %t586, label %bb155, label %bb156
bb155:
  %t588 = load ptr, ptr %l294, !tbaa !29
  %t589 = load i64, ptr %t588, !range !{i64 0, i64 18}
  %t591 = icmp eq i64 %t589, 6
  store i1 %t591, ptr %l295, !tbaa !21
  br label %bb156
bb156:
  %t592 = load i1, ptr %l295, !tbaa !21
  br i1 %t592, label %bb157, label %bb158
bb157:
  %t593 = load ptr, ptr %l1, !tbaa !29
  %t595 = getelementptr { i64, [5 x i64] }, ptr %t593, i32 0, i32 1
  %t596 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t595, i32 0, i32 1
  %t597 = load i32, ptr %t596
  store i32 %t597, ptr %l31, !tbaa !23
  %t599 = load ptr, ptr %l1, !tbaa !29
  %t601 = getelementptr { i64, [5 x i64] }, ptr %t599, i32 0, i32 1
  %t602 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t601, i32 0, i32 2
  %t603 = load ptr, ptr %t602
  store ptr %t603, ptr %l32, !tbaa !29
  br label %bb159
bb158:
  br label %bb175
bb159:
  %t605 = load ptr, ptr %l32, !tbaa !29
  %t607 = getelementptr %"compiler/typed:Call", ptr %t605, i32 0, i32 0
  %t608 = load ptr, ptr %t607, !tbaa !29
  store ptr %t608, ptr %l33, !tbaa !29
  %t610 = load ptr, ptr %l33, !tbaa !29
  store ptr %t610, ptr %l304, !tbaa !29
  store i1 false, ptr %l305, !tbaa !21
  %t611 = load ptr, ptr %l304, !tbaa !29
  %t612 = icmp ne ptr %t611, null
  br i1 %t612, label %bb160, label %bb161
bb160:
  %t614 = load ptr, ptr %l304, !tbaa !29
  %t615 = load i64, ptr %t614, !range !{i64 0, i64 5}
  %t617 = icmp eq i64 %t615, 0
  store i1 %t617, ptr %l305, !tbaa !21
  br label %bb161
bb161:
  %t618 = load i1, ptr %l305, !tbaa !21
  br i1 %t618, label %bb162, label %bb163
bb162:
  %t619 = load ptr, ptr %l33, !tbaa !29
  %t621 = getelementptr { i64, [3 x i64] }, ptr %t619, i32 0, i32 1
  %t622 = getelementptr { i32 }, ptr %t621, i32 0, i32 0
  %t623 = load i32, ptr %t622
  store i32 %t623, ptr %l34, !tbaa !23
  br label %bb164
bb163:
  br label %bb167
bb164:
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t627 = getelementptr %"compiler/effects:Effects", ptr %t625, i32 0, i32 36
  store ptr %t627, ptr %l311, !tbaa !29
  %t628 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t629 = load i32, ptr %l34, !tbaa !23
  %t631 = sext i32 %t629 to i64
  %t632 = load i32, ptr %l31, !tbaa !23
  %t636 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t628, i64 %t631, i32 %t632, ptr null)
  store %"compiler/effects:part" %t636, ptr %l316
  br label %bb165
bb165:
  %t637 = load ptr, ptr %l311, !tbaa !29
  %t638 = load %"compiler/effects:part", ptr %l316
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t637, %"compiler/effects:part" %t638)
  br label %bb166
bb166:
  br label %bb174
bb167:
  br i1 true, label %bb168, label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb173
bb170:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/effects:Effects", ptr %t639, i32 0, i32 36
  store ptr %t641, ptr %l318, !tbaa !29
  %t642 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t643 = load i32, ptr %l31, !tbaa !23
  %t646 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t642, i64 0, i32 %t643, ptr null)
  store %"compiler/effects:part" %t646, ptr %l321
  br label %bb171
bb171:
  %t647 = load ptr, ptr %l318, !tbaa !29
  %t648 = load %"compiler/effects:part", ptr %l321
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t647, %"compiler/effects:part" %t648)
  br label %bb172
bb172:
  br label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_8e13f40ea2f1e4d7_76f885d7d8afa3eb)
  unreachable
bb174:
  br label %bb183
bb175:
  br i1 true, label %bb176, label %bb177
bb176:
  br label %bb178
bb177:
  br label %bb182
bb178:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = getelementptr %"compiler/effects:Effects", ptr %t649, i32 0, i32 36
  store ptr %t651, ptr %l323, !tbaa !29
  %t652 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t652, ptr %l324, !tbaa !24
  %t653 = load ptr, ptr %l1, !tbaa !29
  %t655 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t653)
  store i32 %t655, ptr %l326
  br label %bb179
bb179:
  %t656 = load i64, ptr %l324, !tbaa !24
  %t657 = load i32, ptr %l326, !tbaa !23
  %t658 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t656, i64 0, i32 %t657, ptr null)
  store %"compiler/effects:part" %t658, ptr %l327
  br label %bb180
bb180:
  %t659 = load ptr, ptr %l323, !tbaa !29
  %t660 = load %"compiler/effects:part", ptr %l327
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t659, %"compiler/effects:part" %t660)
  br label %bb181
bb181:
  br label %bb183
bb182:
  call void @__olang_check_failed(ptr @olang_loc_2b1992bc034d4ac0_3aae813f6df6734c)
  unreachable
bb183:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyCallInst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca %"compiler/effects:part"
  %l38 = alloca ptr
  %l46 = alloca %"compiler/effects:part"
  %l47 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i32
  %l67 = alloca ptr
  %l68 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l74 = alloca i1
  %l81 = alloca ptr
  %l84 = alloca %"compiler/effects:part"
  %l86 = alloca i64
  %l90 = alloca { i64, ptr }
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i64
  %l102 = alloca i64
  %l105 = alloca i64
  %l123 = alloca ptr
  %l126 = alloca i64
  %l131 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l6, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l6, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l19, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l19, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_46f184d5298e32c_10b291f73bcbacf0)
  unreachable
bb11:
  %t25 = load i64, ptr %l19, !tbaa !24
  store i64 %t25, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb12, label %bb13
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Effects", ptr %t30, i32 0, i32 36
  store ptr %t32, ptr %l31, !tbaa !29
  %t33 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t33, i64 0, i32 %t34, ptr null)
  store %"compiler/effects:part" %t37, ptr %l34
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t38 = load ptr, ptr %l31, !tbaa !29
  %t39 = load %"compiler/effects:part", ptr %l34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t38, %"compiler/effects:part" %t39)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/effects:Effects", ptr %t40, i32 0, i32 1
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store ptr %t46, ptr %l38
  br label %bb17
bb17:
  %t47 = load ptr, ptr %l38, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Body", ptr %t47, i32 0, i32 1
  %t50 = load { i64, [2 x i64] }, ptr %t49
  %t52 = extractvalue { i64, [2 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 1
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load i64, ptr @G_2ecompiler_2feffects_2eGivResField, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i32, ptr %l3, !tbaa !23
  %t63 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t57, i64 %t58, i32 %t59, ptr null)
  store %"compiler/effects:part" %t63, ptr %l46
  br label %bb20
bb19:
  br label %bb33
bb20:
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t64, ptr %lp8
  %t65 = load %"compiler/effects:part", ptr %l46
  %t66 = load ptr, ptr %lp8
  store %"compiler/effects:part" %t65, ptr %t66
  %t67 = ptrtoint ptr %v0 to i64
  store i64 %t67, ptr %l47, !tbaa !24
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apart_2e4
  br i1 %t68, label %bb21, label %bb22
bb21:
  %t70 = call ptr @__olang_region_make(ptr %v0)
  %t71 = ptrtoint ptr %t70 to i64
  store i64 %t71, ptr %l47, !tbaa !24
  br label %bb22
bb22:
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t72
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l50
  %t75 = load i64, ptr %l47
  %t76 = inttoptr i64 %t75 to ptr
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t76, ptr %l50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l52
  br label %bb23
bb23:
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apart_2e4
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t81 = load i64, ptr %l47
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr null
  %t90 = icmp eq ptr %t89, %t82
  call void @__olang_region_settle(ptr %t82, i1 %t90)
  br label %bb25
bb25:
  %t91 = load ptr, ptr %lp8
  %t92 = getelementptr %"compiler/effects:part", ptr %t91, i32 0, i32 4
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l54
  %t94 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  %t95 = load ptr, ptr %lp8
  %t96 = getelementptr %"compiler/effects:part", ptr %t95, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %t96
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apart_2e4
  br i1 %t97, label %bb26, label %bb27
bb26:
  %t99 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = call ptr @__olang_region_home(ptr %t102)
  %t104 = icmp ne ptr %t103, null
  %t105 = select i1 %t104, ptr %t103, ptr null
  call void @__olang_region_drop(ptr %t105)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l54
  br label %bb27
bb27:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/effects:Effects", ptr %t106, i32 0, i32 62
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Call", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = sext i32 %t112 to i64
  %t117 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t108, i64 %t114)
  %t118 = extractvalue { i32, i64 } %t117, 1
  %t119 = extractvalue { i32, i64 } %t117, 0
  store i32 %t119, ptr %l63
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb29, label %ok.121, !prof !99
ok.121:
  store i64 %t118, ptr %l62
  br label %bb28
bb28:
  %t122 = load i64, ptr %l62, !tbaa !24
  store i64 %t122, ptr %l56, !tbaa !24
  br label %bb31
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l56, !tbaa !24
  br label %bb31
bb31:
  %t123 = load i64, ptr %l56, !tbaa !24
  %t124 = load ptr, ptr %lp8
  %t125 = getelementptr %"compiler/effects:part", ptr %t124, i32 0, i32 5
  store i64 %t123, ptr %t125, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/effects:Effects", ptr %t126, i32 0, i32 36
  %t129 = load ptr, ptr %lp8
  %t130 = load %"compiler/effects:part", ptr %t129
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t128, %"compiler/effects:part" %t130)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l67, !tbaa !29
  %t134 = load i64, ptr %l7, !tbaa !24
  store i64 %t134, ptr %l68, !tbaa !24
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t135, i64 0)
  store i64 %t137, ptr %l70
  br label %bb34
bb34:
  %t138 = load ptr, ptr %l67, !tbaa !29
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = load i64, ptr %l70, !tbaa !24
  %t141 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorArg(ptr %v0, ptr %t138, i64 %t139, i64 %t140)
  store i64 %t141, ptr %l71
  br label %bb35
bb35:
  %t142 = load i64, ptr %l71, !tbaa !24
  store i64 %t142, ptr %l9, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = icmp slt i64 %t143, 0
  br i1 %t145, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb38
bb37:
  %t147 = load i64, ptr %l9, !tbaa !24
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Call", ptr %t148, i32 0, i32 1
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t151, 0
  %t156 = icmp sge i64 %t147, %t153
  store i1 %t156, ptr %l74, !tbaa !21
  br label %bb38
bb38:
  %t158 = load i1, ptr %l74, !tbaa !21
  br i1 %t158, label %bb39, label %bb40
bb39:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/effects:Effects", ptr %t159, i32 0, i32 36
  store ptr %t161, ptr %l81, !tbaa !29
  %t162 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t163 = load i32, ptr %l3, !tbaa !23
  %t166 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t162, i64 0, i32 %t163, ptr null)
  store %"compiler/effects:part" %t166, ptr %l84
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t167 = load ptr, ptr %l81, !tbaa !29
  %t168 = load %"compiler/effects:part", ptr %l84
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t167, %"compiler/effects:part" %t168)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb43:
  %t169 = load ptr, ptr %l2, !tbaa !29
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t169)
  store i64 %t171, ptr %l86
  br label %bb44
bb44:
  %t172 = load i64, ptr %l86, !tbaa !24
  %t173 = icmp eq i64 %t172, 1
  br i1 %t173, label %bb45, label %bb46
bb45:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Call", ptr %t176, i32 0, i32 1
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  store { i64, ptr } %t179, ptr %l90, !tbaa !27
  %t180 = load i64, ptr %l9, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr ptr, ptr %t183, i64 %t180
  %t185 = load ptr, ptr %t184, !tbaa !39
  %t187 = load i64, ptr %l4, !tbaa !24
  %t189 = add i64 %t187, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t175, ptr %t185, i64 %t189)
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb48:
  %t193 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %l96
  br label %bb49
bb49:
  %t194 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %l10
  store i64 1, ptr %l11, !tbaa !24
  %t195 = load ptr, ptr %l2, !tbaa !29
  %t197 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t195)
  store i64 %t197, ptr %l98
  br label %bb50
bb50:
  %t198 = load i64, ptr %l98, !tbaa !24
  store i64 %t198, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = load i64, ptr %l11, !tbaa !24
  %t203 = icmp sgt i64 %t199, %t200
  br i1 %t203, label %bb51, label %bb52
bb51:
  %t205 = load i64, ptr %l13, !tbaa !24
  %t207 = icmp sgt i64 %t205, 0
  br i1 %t207, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb56
bb53:
  %t209 = load i64, ptr %l12, !tbaa !24
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = sub i64 %t209, %t210
  %t214 = load i64, ptr %l13, !tbaa !24
  %t217 = add i64 %t213, %t214
  %t219 = sub i64 %t217, 1
  %t220 = load i64, ptr %l13, !tbaa !24
  %t223 = sdiv i64 %t219, %t220
  store i64 %t223, ptr %l105, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb55
bb55:
  %t225 = load i64, ptr %l105, !tbaa !24
  store i64 %t225, ptr %l102, !tbaa !24
  br label %bb56
bb56:
  %t226 = load i64, ptr %l102, !tbaa !24
  store i64 %t226, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb57
bb57:
  %t227 = load i64, ptr %l15, !tbaa !24
  %t228 = load i64, ptr %l14, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb58, label %bb59
bb58:
  br label %bb64
bb59:
  br label %bb60
bb60:
  %t235 = load i64, ptr %l11, !tbaa !24
  %t236 = load i64, ptr %l15, !tbaa !24
  %t237 = load i64, ptr %l13, !tbaa !24
  %t240 = mul i64 %t236, %t237
  %t243 = add i64 %t235, %t240
  store ptr %l10, ptr %l123, !tbaa !29
  %t245 = load ptr, ptr %l2, !tbaa !29
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t245, i64 %t243)
  store i64 %t249, ptr %l126
  br label %bb61
bb61:
  %t250 = load ptr, ptr %l123, !tbaa !29
  %t251 = load i64, ptr %l126, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t250, i64 %t251)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t252 = load i64, ptr %l15, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l15, !tbaa !24
  br label %bb57
bb64:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load ptr, ptr %l1, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Call", ptr %t257, i32 0, i32 1
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  store { i64, ptr } %t260, ptr %l131, !tbaa !27
  %t261 = load i64, ptr %l9, !tbaa !24
  %t263 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr ptr, ptr %t264, i64 %t261
  %t266 = load ptr, ptr %t265, !tbaa !39
  %t267 = load i32, ptr %l3, !tbaa !23
  %t268 = load i64, ptr %l4, !tbaa !24
  %t270 = add i64 %t268, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %s0, ptr %t256, ptr %t266, ptr %l10, i32 %t267, i64 %t270)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca i1
  %l17 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca %"compiler/effects:part"
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca %"compiler/effects:part"
  %l46 = alloca i64
  %l49 = alloca { i64, ptr }
  %l50 = alloca %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l97 = alloca ptr
  %l100 = alloca %"compiler/effects:part"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb4
bb2:
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %l2)
  store i64 %t6, ptr %l17
  br label %bb3
bb3:
  %t7 = load i64, ptr @G_2ecompiler_2feffects_2eFieldDepth, !tbaa !24
  %t8 = load i64, ptr %l17, !tbaa !24
  %t10 = icmp sgt i64 %t8, %t7
  store i1 %t10, ptr %l15, !tbaa !21
  br label %bb4
bb4:
  %t12 = load i1, ptr %l15, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/effects:Effects", ptr %t13, i32 0, i32 36
  store ptr %t15, ptr %l21, !tbaa !29
  %t16 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t16, i64 0, i32 %t17, ptr null)
  store %"compiler/effects:part" %t20, ptr %l24
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t21 = load ptr, ptr %l21, !tbaa !29
  %t22 = load %"compiler/effects:part", ptr %l24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t21, %"compiler/effects:part" %t22)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t24 = load ptr, ptr %l25, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load ptr, ptr %l25, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 8}
  %t30 = icmp eq i64 %t28, 3
  store i1 %t30, ptr %l26, !tbaa !21
  br label %bb11
bb11:
  %t31 = load i1, ptr %l26, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l5, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t40, i32 0, i32 3
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l6, !tbaa !24
  br label %bb14
bb13:
  br label %bb37
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l33, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l34, !tbaa !29
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t48 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t46)
  store i32 %t48, ptr %l36
  br label %bb15
bb15:
  %t49 = load ptr, ptr %l34, !tbaa !29
  %t50 = load i32, ptr %l36, !tbaa !23
  %t51 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estructOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t51, ptr %l37
  br label %bb16
bb16:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l33, !tbaa !29
  %t54 = load i32, ptr %l37, !tbaa !23
  %t56 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efixed(ptr %v0, ptr %t53, i32 %t54, i64 %t52)
  store i1 %t56, ptr %l39
  br label %bb17
bb17:
  %t57 = load i1, ptr %l39, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/effects:Effects", ptr %t60, i32 0, i32 36
  store ptr %t62, ptr %l42, !tbaa !29
  %t63 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t63, i64 0, i32 %t64, ptr null)
  store %"compiler/effects:part" %t67, ptr %l45
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t68 = load ptr, ptr %l42, !tbaa !29
  %t69 = load %"compiler/effects:part", ptr %l45
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t68, %"compiler/effects:part" %t69)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t70 = ptrtoint ptr %s2 to i64
  store i64 %t70, ptr %l46, !tbaa !24
  %t71 = load i1, ptr @olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t73 = call ptr @__olang_region_make(ptr %s2)
  %t74 = ptrtoint ptr %t73 to i64
  store i64 %t74, ptr %l46, !tbaa !24
  br label %bb24
bb24:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = mul i64 1, 8
  %t77 = load i64, ptr %l46
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = call ptr @__olang_scope_alloc_zeroed(ptr %t78, i64 %t76)
  %t80 = insertvalue { i64, ptr } undef, i64 1, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l49, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i64, ptr %t84, i64 0
  store i64 %t75, ptr %t85, !tbaa !34
  %t86 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t87 = call %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %s2, ptr %s2, { i64, ptr } %t86)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t87, ptr %l50
  br label %bb25
bb25:
  %t88 = load %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %l50
  %t89 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 24, i64 8)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t88, ptr %t89
  %t91 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %s2, ptr %s2, ptr %t89)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, ptr %l52
  br label %bb26
bb26:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l7
  store ptr %l2, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  %t94 = load i64, ptr %l9, !tbaa !24
  store i64 %t94, ptr %l54, !tbaa !24
  %t95 = load ptr, ptr %l8, !tbaa !29
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t95)
  store i64 %t97, ptr %l56
  br label %bb28
bb28:
  %t98 = load i64, ptr %l54, !tbaa !24
  %t99 = load i64, ptr %l56, !tbaa !24
  %t100 = icmp slt i64 %t98, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb29, label %bb30
bb29:
  br label %bb35
bb30:
  br label %bb31
bb31:
  %t104 = load ptr, ptr %l8, !tbaa !29
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t104, i64 %t105)
  store i64 %t108, ptr %l61
  br label %bb32
bb32:
  %t109 = load i64, ptr %l61, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s2, ptr %l7, i64 %t109)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l9, !tbaa !24
  br label %bb27
bb35:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t119 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t120 = load i32, ptr %l3, !tbaa !23
  %t121 = load i64, ptr %l4, !tbaa !24
  %t123 = add i64 %t121, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyField(ptr %v0, ptr %v1, ptr %s2, ptr %t117, ptr %t118, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t119, i32 %t120, i64 %t123)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb58
bb37:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t130 = load ptr, ptr %l72, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb38, label %bb39
bb38:
  %t133 = load ptr, ptr %l72, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 8}
  %t136 = icmp eq i64 %t134, 0
  store i1 %t136, ptr %l73, !tbaa !21
  br label %bb39
bb39:
  %t137 = load i1, ptr %l73, !tbaa !21
  br i1 %t137, label %bb40, label %bb41
bb40:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t140, i32 0, i32 2
  %t142 = load i32, ptr %t141
  store i32 %t142, ptr %l11, !tbaa !23
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l11, !tbaa !23
  %t147 = sext i32 %t145 to i64
  %t148 = load i32, ptr %l3, !tbaa !23
  %t149 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInstLocal(ptr %v0, ptr %v2, ptr %t144, i64 %t147, ptr %l2, i32 %t148, i64 %t149)
  br label %bb43
bb43:
  br label %bb58
bb44:
  %t155 = load ptr, ptr %l1, !tbaa !29
  store ptr %t155, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t156 = load ptr, ptr %l84, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l84, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 8}
  %t162 = icmp eq i64 %t160, 2
  store i1 %t162, ptr %l85, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l85, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 2
  %t168 = load ptr, ptr %t167
  store ptr %t168, ptr %l12, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l12, !tbaa !29
  %t172 = load i32, ptr %l3, !tbaa !23
  %t173 = load i64, ptr %l4, !tbaa !24
  %t175 = add i64 %t173, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v2, ptr %t170, ptr %t171, ptr %l2, i32 %t172, i64 %t175)
  br label %bb50
bb50:
  br label %bb58
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/effects:Effects", ptr %t181, i32 0, i32 36
  store ptr %t183, ptr %l97, !tbaa !29
  %t184 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t185 = load i32, ptr %l3, !tbaa !23
  %t188 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t184, i64 0, i32 %t185, ptr null)
  store %"compiler/effects:part" %t188, ptr %l100
  br label %bb55
bb55:
  %t189 = load ptr, ptr %l97, !tbaa !29
  %t190 = load %"compiler/effects:part", ptr %l100
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t189, %"compiler/effects:part" %t190)
  br label %bb56
bb56:
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_3535a9392f714f10_e154cce5335d35ec)
  unreachable
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca %"compiler/effects:part"
  %l17 = alloca ptr
  %l18 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca ptr
  %l70 = alloca i1
  %l79 = alloca ptr
  %l82 = alloca %"compiler/effects:part"
  %l83 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca i1
  %l112 = alloca ptr
  %l115 = alloca %"compiler/effects:part"
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Effects", ptr %t5, i32 0, i32 36
  store ptr %t7, ptr %l13, !tbaa !29
  %t8 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t9 = load i32, ptr %l3, !tbaa !23
  %t12 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t8, i64 0, i32 %t9, ptr null)
  store %"compiler/effects:part" %t12, ptr %l16
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t14 = load %"compiler/effects:part", ptr %l16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t13, %"compiler/effects:part" %t14)
  br label %bb4
bb4:
  br label %ret
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t16 = load ptr, ptr %l17, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 17
  store i1 %t22, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l18, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l5, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v2, ptr %t30, ptr %t31, ptr %t32, i32 %t33, i64 %t36)
  br label %bb11
bb11:
  br label %bb65
bb12:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t43 = load ptr, ptr %l29, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 18}
  %t49 = icmp eq i64 %t47, 5
  store i1 %t49, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l30, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [5 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l6, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l6, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Promote", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load i32, ptr %l3, !tbaa !23
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = add i64 %t64, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v2, ptr %t57, ptr %t61, ptr %t62, i32 %t63, i64 %t66)
  br label %bb18
bb18:
  br label %bb65
bb19:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t73 = load ptr, ptr %l42, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t76 = load ptr, ptr %l42, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 2
  store i1 %t79, ptr %l43, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l43, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l7, !tbaa !29
  br label %bb32
bb23:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t88 = load ptr, ptr %l48, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load ptr, ptr %l48, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 18}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t95 = load i1, ptr %l49, !tbaa !21
  br i1 %t95, label %bb26, label %bb27
bb26:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t98, i32 0, i32 2
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l7, !tbaa !29
  br label %bb32
bb27:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t103 = load ptr, ptr %l54, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb28, label %bb29
bb28:
  %t106 = load ptr, ptr %l54, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 18}
  %t109 = icmp eq i64 %t107, 4
  store i1 %t109, ptr %l55, !tbaa !21
  br label %bb29
bb29:
  %t110 = load i1, ptr %l55, !tbaa !21
  br i1 %t110, label %bb30, label %bb31
bb30:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [5 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l7, !tbaa !29
  br label %bb32
bb31:
  br label %bb35
bb32:
  store %olang.scope zeroinitializer, ptr %s4
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l60, !tbaa !29
  %t118 = load ptr, ptr %l7, !tbaa !29
  store ptr %t118, ptr %l61, !tbaa !29
  %t119 = load ptr, ptr %l2, !tbaa !29
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l63
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s4, ptr %l63)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l65
  br label %bb33
bb33:
  %t124 = load i32, ptr %l3, !tbaa !23
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = add i64 %t125, 1
  %t128 = load ptr, ptr %l60, !tbaa !29
  %t129 = load ptr, ptr %l61, !tbaa !29
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyField(ptr %v0, ptr %v1, ptr %s4, ptr %t128, ptr %t129, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, i32 %t124, i64 %t127)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb35:
  %t133 = load ptr, ptr %l1, !tbaa !29
  store ptr %t133, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t134 = load ptr, ptr %l69, !tbaa !29
  %t135 = icmp ne ptr %t134, null
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t137 = load ptr, ptr %l69, !tbaa !29
  %t138 = load i64, ptr %t137, !range !{i64 0, i64 18}
  %t140 = icmp eq i64 %t138, 11
  store i1 %t140, ptr %l70, !tbaa !21
  br label %bb37
bb37:
  %t141 = load i1, ptr %l70, !tbaa !21
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr { i64, [5 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l8, !tbaa !29
  br label %bb40
bb39:
  br label %bb51
bb40:
  %t148 = load ptr, ptr %l8, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Cond", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  br i1 %t153, label %bb41, label %bb42
bb41:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/effects:Effects", ptr %t155, i32 0, i32 36
  store ptr %t157, ptr %l79, !tbaa !29
  %t158 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t159 = load i32, ptr %l3, !tbaa !23
  %t162 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t158, i64 0, i32 %t159, ptr null)
  store %"compiler/effects:part" %t162, ptr %l82
  br label %bb43
bb42:
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l83, !tbaa !29
  %t164 = load ptr, ptr %l8, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Cond", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = icmp eq ptr %t167, null
  br i1 %t169, label %bb45, label %bb46
bb43:
  %t171 = load ptr, ptr %l79, !tbaa !29
  %t172 = load %"compiler/effects:part", ptr %l82
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t171, %"compiler/effects:part" %t172)
  br label %bb44
bb44:
  br label %bb49
bb45:
  call void @__olang_check_failed(ptr @olang_loc_7a6d7e31a8c94555_e5f55f7e2b9f5a99)
  unreachable
bb46:
  br label %bb47
bb47:
  %t173 = load ptr, ptr %l8, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Cond", ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t177 = load ptr, ptr %l2, !tbaa !29
  %t178 = load i32, ptr %l3, !tbaa !23
  %t179 = load i64, ptr %l4, !tbaa !24
  %t181 = add i64 %t179, 1
  %t182 = load ptr, ptr %l83, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v2, ptr %t182, ptr %t176, ptr %t177, i32 %t178, i64 %t181)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load ptr, ptr %l8, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Cond", ptr %t188, i32 0, i32 2
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t192 = load ptr, ptr %l2, !tbaa !29
  %t193 = load i32, ptr %l3, !tbaa !23
  %t194 = load i64, ptr %l4, !tbaa !24
  %t196 = add i64 %t194, 1
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v2, ptr %t187, ptr %t191, ptr %t192, i32 %t193, i64 %t196)
  br label %bb50
bb50:
  br label %bb65
bb51:
  %t202 = load ptr, ptr %l1, !tbaa !29
  store ptr %t202, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t203 = load ptr, ptr %l100, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb52, label %bb53
bb52:
  %t206 = load ptr, ptr %l100, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 18}
  %t209 = icmp eq i64 %t207, 6
  store i1 %t209, ptr %l101, !tbaa !21
  br label %bb53
bb53:
  %t210 = load i1, ptr %l101, !tbaa !21
  br i1 %t210, label %bb54, label %bb55
bb54:
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [5 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t213, i32 0, i32 2
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l9, !tbaa !29
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l9, !tbaa !29
  %t219 = load ptr, ptr %l2, !tbaa !29
  %t220 = load i32, ptr %l3, !tbaa !23
  %t221 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyCallInst(ptr %v0, ptr %v1, ptr %v2, ptr %t217, ptr %t218, ptr %t219, i32 %t220, i64 %t221)
  br label %bb57
bb57:
  br label %bb65
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/effects:Effects", ptr %t227, i32 0, i32 36
  store ptr %t229, ptr %l112, !tbaa !29
  %t230 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t231 = load i32, ptr %l3, !tbaa !23
  %t234 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t230, i64 0, i32 %t231, ptr null)
  store %"compiler/effects:part" %t234, ptr %l115
  br label %bb62
bb62:
  %t235 = load ptr, ptr %l112, !tbaa !29
  %t236 = load %"compiler/effects:part", ptr %l115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t235, %"compiler/effects:part" %t236)
  br label %bb63
bb63:
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_ac8d93ad38a597bd_9a80442872e097e1)
  unreachable
bb65:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecoldClose(ptr %v0, ptr %a0, %"compiler/effects:coldMark" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/effects:coldMark"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l45 = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/effects:coldMark" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t2, i32 0, i32 26
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t8, i32 0, i32 26
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = getelementptr %"compiler/effects:coldMark", ptr %l1, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/effects:Effects", ptr %t13, i32 0, i32 24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l14
  br label %bb1
bb1:
  %t18 = load i64, ptr %l14, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb2, label %bb3
bb2:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t45 = load i64, ptr %l21, !tbaa !24
  store i64 %t45, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l18, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/effects:Effects", ptr %t65, i32 0, i32 25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t67, i64 %t63)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l6, !tbaa !24
  br label %bb8
bb14:
  %t75 = getelementptr %"compiler/effects:coldMark", ptr %l1, i32 0, i32 1
  %t76 = load i1, ptr %t75, !tbaa !21
  br i1 %t76, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb17
bb16:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/effects:Effects", ptr %t78, i32 0, i32 23
  %t81 = getelementptr %"compiler/effects:Facts", ptr %t80, i32 0, i32 0
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  store i1 %t84, ptr %l45, !tbaa !21
  br label %bb17
bb17:
  %t86 = load i1, ptr %l45, !tbaa !21
  br i1 %t86, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 23
  %t90 = getelementptr %"compiler/effects:Facts", ptr %t89, i32 0, i32 0
  store i1 false, ptr %t90, !tbaa !21
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/effects:Effects", ptr %t91, i32 0, i32 23
  %t94 = getelementptr %"compiler/effects:Facts", ptr %t93, i32 0, i32 1
  store i1 true, ptr %t94, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:coldMark" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecoldOpen(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca %"compiler/effects:coldMark"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/effects:coldMark"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t2, i32 0, i32 26
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t8, i32 0, i32 26
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Effects", ptr %t10, i32 0, i32 24
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l6
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/effects:Effects", ptr %t15, i32 0, i32 23
  %t18 = getelementptr %"compiler/effects:Facts", ptr %t17, i32 0, i32 0
  %t19 = load i1, ptr %t18, !tbaa !21
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = call %"compiler/effects:coldMark" @compiler_2feffects_3acoldMark_2ector(ptr %s0, i64 %t20, i1 %t19)
  store %"compiler/effects:coldMark" %t22, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load %"compiler/effects:coldMark", ptr %l9
  store %"compiler/effects:coldMark" %t23, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:coldMark", ptr %rv
  ret %"compiler/effects:coldMark" %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i1
  %l30 = alloca i32
  %l44 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca i1
  %l60 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca i1
  %l65 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %rv = alloca i64
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l16, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l17, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 10
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l20
  br label %bb2
bb2:
  %t15 = load i64, ptr %l17, !tbaa !24
  %t16 = load i64, ptr %l20, !tbaa !24
  %t17 = icmp sge i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb5
bb4:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 11
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  store i1 %t24, ptr %l22, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l22, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 10
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t30, i64 %t31)
  store i32 %t34, ptr %l30
  br label %bb9
bb9:
  %t35 = load i32, ptr %l30, !tbaa !23
  store i32 %t35, ptr %l4, !tbaa !23
  store i64 -1, ptr %l5, !tbaa !24
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Body", ptr %t36, i32 0, i32 11
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  br i1 %t41, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3b1aba267d3808f9_9a4444fd59d95fdd)
  unreachable
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Body", ptr %t43, i32 0, i32 11
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Block", ptr %t46, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb14, label %bb15
bb14:
  br label %bb47
bb15:
  br label %bb16
bb16:
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t64, ptr %l44, !tbaa !27
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr ptr, ptr %t68, i64 %t65
  %t70 = load ptr, ptr %t69, !tbaa !39
  store ptr %t70, ptr %l9, !tbaa !29
  %t72 = load ptr, ptr %l9, !tbaa !29
  store ptr %t72, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t73 = load ptr, ptr %l47, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t76 = load ptr, ptr %l47, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 17}
  %t79 = icmp eq i64 %t77, 0
  store i1 %t79, ptr %l48, !tbaa !21
  br label %bb18
bb18:
  %t80 = load i1, ptr %l48, !tbaa !21
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l9, !tbaa !29
  %t83 = getelementptr { i64, [3 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l10, !tbaa !23
  %t87 = load ptr, ptr %l9, !tbaa !29
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l11, !tbaa !29
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t93 = load i32, ptr %l10, !tbaa !23
  %t94 = load i32, ptr %l4, !tbaa !23
  %t97 = icmp eq i32 %t93, %t94
  br i1 %t97, label %bb22, label %bb23
bb22:
  %t99 = load ptr, ptr %l3, !tbaa !29
  %t100 = load ptr, ptr %l11, !tbaa !29
  %t103 = call i64 @compiler_2feffects_2eparamOf(ptr %v0, ptr %v0, ptr %t99, ptr %t100)
  store i64 %t103, ptr %l60
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t104 = load i64, ptr %l60, !tbaa !24
  store i64 %t104, ptr %l5, !tbaa !24
  br label %bb25
bb25:
  br label %bb45
bb26:
  %t105 = load ptr, ptr %l9, !tbaa !29
  store ptr %t105, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t106 = load ptr, ptr %l61, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb27, label %bb28
bb27:
  %t109 = load ptr, ptr %l61, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 17}
  %t112 = icmp eq i64 %t110, 1
  store i1 %t112, ptr %l62, !tbaa !21
  br label %bb28
bb28:
  %t113 = load i1, ptr %l62, !tbaa !21
  br i1 %t113, label %bb29, label %bb30
bb29:
  %t114 = load ptr, ptr %l9, !tbaa !29
  %t116 = getelementptr { i64, [3 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t116, i32 0, i32 1
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t119 = load ptr, ptr %l67, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb31, label %bb32
bb30:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb33
bb31:
  %t122 = load ptr, ptr %l67, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 8}
  %t125 = icmp eq i64 %t123, 0
  store i1 %t125, ptr %l68, !tbaa !21
  br label %bb32
bb32:
  %t126 = load i1, ptr %l68, !tbaa !21
  store i1 %t126, ptr %l65, !tbaa !21
  br label %bb33
bb33:
  %t127 = load i1, ptr %l65, !tbaa !21
  br i1 %t127, label %bb34, label %bb35
bb34:
  %t128 = load ptr, ptr %l9, !tbaa !29
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t130, i32 0, i32 1
  %t132 = load ptr, ptr %t131
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t134, i32 0, i32 2
  %t136 = load i32, ptr %t135
  store i32 %t136, ptr %l12, !tbaa !23
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t138 = load i32, ptr %l12, !tbaa !23
  %t139 = load i32, ptr %l4, !tbaa !23
  %t142 = icmp eq i32 %t138, %t139
  br i1 %t142, label %bb37, label %bb38
bb37:
  store i64 -1, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_76dfd6b01352a9c1_3e5307bd9b690f5)
  unreachable
bb45:
  br label %bb46
bb46:
  %t145 = load i64, ptr %l7, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l7, !tbaa !24
  br label %bb13
bb47:
  %t149 = load i64, ptr %l5, !tbaa !24
  store i64 %t149, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ectorCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca ptr
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t23 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 1
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l16
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 1
  %t33 = load { i64, [2 x i64] }, ptr %t32
  %t35 = extractvalue { i64, [2 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 1
  store i1 %t36, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_bf15bc95d959b66c_7e73e2171d14fc00)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edtorCalled(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l11 = alloca i64
  %l13 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 54
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Effects", ptr %t18, i32 0, i32 54
  store ptr %t20, ptr %l13, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l18
  br label %bb7
bb6:
  br label %bb12
bb7:
  %t31 = load ptr, ptr %l13, !tbaa !29
  %t32 = load i32, ptr %l18, !tbaa !23
  %t33 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t31, i32 %t32)
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l20
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb9, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l19
  br label %bb8
bb8:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l11, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t39 = load i64, ptr %l11, !tbaa !24
  store i64 %t39, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = icmp sge i64 %t40, 0
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/effects:Effects", ptr %t44, i32 0, i32 24
  %t47 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpand(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/effects:given"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l13 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i1
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i32
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"compiler/effects:given"
  %l42 = alloca i1
  %l46 = alloca i1
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca i64
  %l63 = alloca i1
  %l64 = alloca i64
  %l67 = alloca i64
  %l69 = alloca i1
  %l73 = alloca i64
  %l75 = alloca i1
  %l79 = alloca i64
  %l81 = alloca i1
  %l98 = alloca i1
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca i64
  %l107 = alloca i64
  %l112 = alloca i64
  %l123 = alloca ptr
  %l128 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load i1, ptr %l13, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 7
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb5dd413d586c55d7ccefa7dbc5ad43c5(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l19
  br label %bb4
bb4:
  %t18 = load i1, ptr %l19, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 7
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t28, 1
  %t30 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t28, 0
  store i32 %t30, ptr %l26
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb10, label %ok.32, !prof !99
ok.32:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l25
  br label %bb9
bb9:
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %l25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l28
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l29
  br label %bb13
bb12:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l21
  br label %bb14
bb13:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l21
  br label %bb14
bb14:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l2
  store ptr %l2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l31, !tbaa !24
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t41)
  store i64 %t43, ptr %l33
  br label %bb16
bb16:
  %t44 = load i64, ptr %l31, !tbaa !24
  %t45 = load i64, ptr %l33, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb82
bb18:
  br label %bb19
bb19:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = call %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %s0, ptr %t50, i64 %t51)
  store %"compiler/effects:given" %t54, ptr %l38
  br label %bb20
bb20:
  %t55 = load %"compiler/effects:given", ptr %l38
  store %"compiler/effects:given" %t55, ptr %l5
  %t56 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  br i1 %t61, label %bb21, label %bb22
bb21:
  %t63 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t68 = icmp ne i64 %t64, %t65
  store i1 %t68, ptr %l42, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb23
bb23:
  %t70 = load i1, ptr %l42, !tbaa !21
  br i1 %t70, label %bb24, label %bb25
bb24:
  %t71 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load i64, ptr @G_2ecompiler_2feffects_2eGivResField, !tbaa !24
  %t76 = icmp ne i64 %t72, %t73
  store i1 %t76, ptr %l46, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb26
bb26:
  %t78 = load i1, ptr %l46, !tbaa !21
  br i1 %t78, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb81
bb28:
  br label %bb29
bb29:
  %t79 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/effects:Effects", ptr %t84, i32 0, i32 4
  %t87 = load i64, ptr %l1, !tbaa !24
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t86, i64 %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l55
  br label %bb32
bb31:
  br label %bb51
bb32:
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s5, ptr %l55)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l57
  br label %bb33
bb33:
  %t93 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 0
  %t94 = load i64, ptr %t93, !tbaa !24
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l57, i64 %t94)
  store i64 %t97, ptr %l60
  br label %bb34
bb34:
  %t98 = load i64, ptr %l60, !tbaa !24
  store i64 %t98, ptr %l6, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t101 = icmp slt i64 %t99, 0
  br i1 %t101, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb38
bb36:
  %t103 = load i64, ptr %l6, !tbaa !24
  store i64 %t103, ptr %l64, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/effects:Effects", ptr %t104, i32 0, i32 1
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t106)
  store i64 %t108, ptr %l67
  br label %bb37
bb37:
  %t109 = load i64, ptr %l64, !tbaa !24
  %t110 = load i64, ptr %l67, !tbaa !24
  %t111 = icmp sge i64 %t109, %t110
  store i1 %t111, ptr %l63, !tbaa !21
  br label %bb38
bb38:
  %t113 = load i1, ptr %l63, !tbaa !21
  br i1 %t113, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb47
bb40:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/effects:Effects", ptr %t114, i32 0, i32 15
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t116, i64 %t117)
  store i64 %t120, ptr %l73
  br label %bb41
bb41:
  %t121 = load i64, ptr %l73, !tbaa !24
  %t122 = icmp eq i64 %t121, 2
  br i1 %t122, label %bb42, label %bb43
bb42:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/effects:Effects", ptr %t124, i32 0, i32 10
  %t127 = load i64, ptr %l6, !tbaa !24
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t126, i64 %t127)
  store i64 %t130, ptr %l79
  br label %bb44
bb43:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb46
bb44:
  %t131 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 1
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i64, ptr %l79, !tbaa !24
  %t135 = call i1 @compiler_2feffects_2ehasBit(i64 %t133, i64 %t132)
  store i1 %t135, ptr %l81
  br label %bb45
bb45:
  %t136 = load i1, ptr %l81, !tbaa !21
  %t137 = xor i1 %t136, true
  store i1 %t137, ptr %l75, !tbaa !21
  br label %bb46
bb46:
  %t139 = load i1, ptr %l75, !tbaa !21
  store i1 %t139, ptr %l69, !tbaa !21
  br label %bb47
bb47:
  %t140 = load i1, ptr %l69, !tbaa !21
  br i1 %t140, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  br label %bb81
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s5)
  br label %bb51
bb51:
  %t141 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t146 = icmp eq i64 %t142, %t143
  br i1 %t146, label %bb52, label %bb53
bb52:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i64, ptr %l1, !tbaa !24
  %t150 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 3
  %t151 = load i64, ptr %t150, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %t148, i64 %t149, i64 %t151)
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s3)
  br label %bb81
bb55:
  %t155 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 2
  %t156 = load i64, ptr %t155, !tbaa !24
  %t157 = load i64, ptr @G_2ecompiler_2feffects_2eGivResField, !tbaa !24
  %t160 = icmp eq i64 %t156, %t157
  br i1 %t160, label %bb56, label %bb57
bb56:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpandField(ptr %v0, ptr %s3, ptr %t162, i64 %t163, ptr %l5)
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s3)
  br label %bb81
bb59:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/effects:Effects", ptr %t167, i32 0, i32 8
  %t170 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 3
  %t171 = load i64, ptr %t170, !tbaa !24
  %t174 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t169, i64 %t171)
  store i1 %t174, ptr %l98
  br label %bb60
bb60:
  %t175 = load i1, ptr %l98, !tbaa !21
  br i1 %t175, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s10
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 3
  %t178 = load i64, ptr %t177, !tbaa !24
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %s10, ptr %t176, i64 %t178)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l101
  br label %bb63
bb62:
  %t182 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 0
  %t183 = load i64, ptr %t182, !tbaa !24
  %t185 = icmp slt i64 %t183, 0
  br i1 %t185, label %bb74, label %bb75
bb63:
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s10, ptr %l101)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l103
  br label %bb64
bb64:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  %t190 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %t190
  store ptr %t190, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb65
bb65:
  %t192 = load i64, ptr %l8, !tbaa !24
  store i64 %t192, ptr %l105, !tbaa !24
  %t193 = load ptr, ptr %l7, !tbaa !29
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s10, ptr %t193)
  store i64 %t195, ptr %l107
  br label %bb66
bb66:
  %t196 = load i64, ptr %l105, !tbaa !24
  %t197 = load i64, ptr %l107, !tbaa !24
  %t198 = icmp slt i64 %t196, %t197
  %t200 = xor i1 %t198, true
  br i1 %t200, label %bb67, label %bb68
bb67:
  br label %bb73
bb68:
  br label %bb69
bb69:
  %t202 = load ptr, ptr %l7, !tbaa !29
  %t203 = load i64, ptr %l8, !tbaa !24
  %t206 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s10, ptr %t202, i64 %t203)
  store i64 %t206, ptr %l112
  br label %bb70
bb70:
  %t207 = load i64, ptr %l112, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %t208, i64 %t209, i64 %t207)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t214 = load i64, ptr %l8, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l8, !tbaa !24
  br label %bb65
bb73:
  call void @__olang_scope_close(ptr %s10)
  br label %bb80
bb74:
  store %olang.scope zeroinitializer, ptr %s14
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/effects:Effects", ptr %t218, i32 0, i32 3
  %t221 = load i64, ptr %l1, !tbaa !24
  %t224 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t220, i64 %t221)
  store ptr %t224, ptr %l123
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/effects:Effects", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = getelementptr %"compiler/effects:given", ptr %l5, i32 0, i32 4
  %t232 = load i32, ptr %t231, !tbaa !23
  %t235 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t230, i32 %t232)
  store %"compiler/effects:Facts" %t235, ptr %l128
  br label %bb77
bb77:
  %t236 = load ptr, ptr %l123, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s14, ptr %t236, ptr %l128)
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s14)
  br label %bb79
bb79:
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s3)
  br label %bb81
bb81:
  %t238 = load i64, ptr %l4, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l4, !tbaa !24
  br label %bb15
bb82:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpandField(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/effects:part"
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca %"compiler/effects:part"
  %l23 = alloca %"compiler/effects:part"
  %l36 = alloca ptr
  %l41 = alloca %"compiler/effects:Facts"
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca i64
  %l54 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresField(ptr %v0, ptr %v1, ptr %s0, ptr %t3, i64 %t4, ptr %a2, ptr %l3, i64 0)
  br label %bb2
bb2:
  store ptr %l3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %l14, !tbaa !24
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %s0, ptr %t12)
  store i64 %t14, ptr %l16
  br label %bb4
bb4:
  %t15 = load i64, ptr %l14, !tbaa !24
  %t16 = load i64, ptr %l16, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %s0, ptr %s0, ptr %t21, i64 %t22)
  store %"compiler/effects:part" %t25, ptr %l21
  br label %bb8
bb8:
  %t27 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %s0, ptr %l21)
  store %"compiler/effects:part" %t27, ptr %l23
  br label %bb9
bb9:
  %t28 = load %"compiler/effects:part", ptr %l23
  store %"compiler/effects:part" %t28, ptr %l6
  %t29 = getelementptr %"compiler/effects:part", ptr %l6, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t34 = icmp eq i64 %t30, %t31
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = getelementptr %"compiler/effects:part", ptr %l6, i32 0, i32 1
  %t39 = load i64, ptr %t38, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %t36, i64 %t37, i64 %t39)
  br label %bb12
bb11:
  %t43 = getelementptr %"compiler/effects:part", ptr %l6, i32 0, i32 0
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t48 = icmp eq i64 %t44, %t45
  br i1 %t48, label %bb13, label %bb14
bb12:
  br label %bb19
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/effects:Effects", ptr %t50, i32 0, i32 3
  %t53 = load i64, ptr %l1, !tbaa !24
  %t56 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t52, i64 %t53)
  store ptr %t56, ptr %l36
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/effects:Effects", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = getelementptr %"compiler/effects:part", ptr %l6, i32 0, i32 2
  %t64 = load i32, ptr %t63, !tbaa !23
  %t67 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t62, i32 %t64)
  store %"compiler/effects:Facts" %t67, ptr %l41
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s5, ptr %t68, ptr %l41)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t70 = getelementptr %"compiler/effects:part", ptr %l6, i32 0, i32 0
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t75 = icmp ne i64 %t71, %t72
  br i1 %t75, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/effects:Effects", ptr %t77, i32 0, i32 3
  %t80 = load i64, ptr %l1, !tbaa !24
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store ptr %t83, ptr %l49
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l49, !tbaa !29
  store ptr %t84, ptr %l7, !tbaa !29
  %t85 = load ptr, ptr %l7, !tbaa !29
  store ptr %t85, ptr %l50, !tbaa !29
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/effects:Facts", ptr %t86, i32 0, i32 22
  %t89 = load i64, ptr %t88, !tbaa !24
  store i64 %t89, ptr %l52, !tbaa !24
  %t90 = getelementptr %"compiler/effects:part", ptr %l6, i32 0, i32 1
  %t91 = load i64, ptr %t90, !tbaa !24
  %t93 = call i64 @compiler_2feffects_2eparamBit(i64 %t91)
  store i64 %t93, ptr %l54
  br label %bb24
bb24:
  %t94 = load i64, ptr %l52, !tbaa !24
  %t95 = load i64, ptr %l54, !tbaa !24
  %t96 = or i64 %t94, %t95
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Facts", ptr %t98, i32 0, i32 22
  store i64 %t96, ptr %t99, !tbaa !24
  br label %bb25
bb25:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l5, !tbaa !24
  br label %bb3
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eextern(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l9 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l45 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l58 = alloca i64
  %l66 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca i1
  %l79 = alloca i1
  %l81 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store ptr %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Effects", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Func", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t19, i32 %t23)
  store { i64, ptr } %t26, ptr %l16
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Func", ptr %t29, i32 0, i32 3
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Sig", ptr %t32, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t28, i64 %t37)
  store i1 %t40, ptr %l22
  br label %bb3
bb3:
  %t41 = load i1, ptr %l22, !tbaa !21
  br i1 %t41, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t44, ptr %l24
  br label %bb7
bb7:
  %t45 = load i1, ptr %l24, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/effects:Effects", ptr %t48, i32 0, i32 23
  %t51 = getelementptr %"compiler/effects:Facts", ptr %t50, i32 0, i32 5
  store i1 true, ptr %t51, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %t52)
  store i1 %t54, ptr %l28
  br label %bb11
bb11:
  %t55 = load i1, ptr %l28, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Effects", ptr %t58, i32 0, i32 23
  %t61 = getelementptr %"compiler/effects:Facts", ptr %t60, i32 0, i32 2
  store i1 true, ptr %t61, !tbaa !21
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/effects:Effects", ptr %t62, i32 0, i32 23
  %t65 = getelementptr %"compiler/effects:Facts", ptr %t64, i32 0, i32 6
  store i1 true, ptr %t65, !tbaa !21
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t66, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t68, ptr %l33
  br label %bb15
bb15:
  %t69 = load i1, ptr %l33, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb19
bb17:
  %t70 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t70, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t72, ptr %l36
  br label %bb18
bb18:
  %t73 = load i1, ptr %l36, !tbaa !21
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t74 = load i1, ptr %l34, !tbaa !21
  br i1 %t74, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb23
bb21:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t75, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t77, ptr %l39
  br label %bb22
bb22:
  %t78 = load i1, ptr %l39, !tbaa !21
  store i1 %t78, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l37, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/effects:Effects", ptr %t80, i32 0, i32 23
  %t83 = getelementptr %"compiler/effects:Facts", ptr %t82, i32 0, i32 13
  store i1 true, ptr %t83, !tbaa !21
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecMayCallBack(ptr %v0, ptr %t84)
  store i1 %t86, ptr %l42
  br label %bb27
bb27:
  %t87 = load i1, ptr %l42, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t88, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t90, ptr %l45
  br label %bb30
bb29:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb31
bb30:
  %t91 = load i1, ptr %l45, !tbaa !21
  %t92 = xor i1 %t91, true
  store i1 %t92, ptr %l43, !tbaa !21
  br label %bb31
bb31:
  %t94 = load i1, ptr %l43, !tbaa !21
  br i1 %t94, label %bb32, label %bb33
bb32:
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = call i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %t95)
  store i1 %t97, ptr %l49
  br label %bb34
bb33:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb35
bb34:
  %t98 = load i1, ptr %l49, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l47, !tbaa !21
  br label %bb35
bb35:
  %t101 = load i1, ptr %l47, !tbaa !21
  br i1 %t101, label %bb36, label %bb37
bb36:
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t104 = call i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %t102)
  store i1 %t104, ptr %l53
  br label %bb38
bb37:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb39
bb38:
  %t105 = load i1, ptr %l53, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l51, !tbaa !21
  br label %bb39
bb39:
  %t108 = load i1, ptr %l51, !tbaa !21
  br i1 %t108, label %bb40, label %bb41
bb40:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/effects:Effects", ptr %t109, i32 0, i32 23
  %t112 = getelementptr %"compiler/effects:Facts", ptr %t111, i32 0, i32 10
  store i1 true, ptr %t112, !tbaa !21
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/effects:Effects", ptr %t113, i32 0, i32 23
  %t116 = getelementptr %"compiler/effects:Facts", ptr %t115, i32 0, i32 11
  store i1 true, ptr %t116, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t119 = call i64 @compiler_2feffects_2ecapOf(ptr %v0, { i64, ptr } %t117)
  store i64 %t119, ptr %l58
  br label %bb43
bb43:
  %t120 = load i64, ptr %l58, !tbaa !24
  store i64 %t120, ptr %l4, !tbaa !24
  %t121 = load i64, ptr %l4, !tbaa !24
  %t123 = icmp ne i64 %t121, 0
  br i1 %t123, label %bb44, label %bb45
bb44:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %t125, i64 %t126)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/effects:Effects", ptr %t129, i32 0, i32 34
  %t132 = load i64, ptr %t131, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb48, label %bb49
bb48:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/effects:Effects", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 0
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/load:Loader", ptr %t142, i32 0, i32 10
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/effects:Effects", ptr %t145, i32 0, i32 34
  %t148 = load i64, ptr %t147, !tbaa !24
  %t151 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t144, i64 %t148)
  store ptr %t151, ptr %l73
  br label %bb50
bb49:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb52
bb50:
  %t152 = load ptr, ptr %l73, !tbaa !29
  %t154 = getelementptr %"compiler/load:Module", ptr %t152, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t155, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) })
  store i1 %t157, ptr %l76
  br label %bb51
bb51:
  %t158 = load i1, ptr %l76, !tbaa !21
  %t159 = xor i1 %t158, true
  store i1 %t159, ptr %l66, !tbaa !21
  br label %bb52
bb52:
  %t161 = load i1, ptr %l66, !tbaa !21
  br i1 %t161, label %bb53, label %bb54
bb53:
  %t164 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t166, ptr %l81
  br label %bb55
bb54:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb56
bb55:
  %t167 = load i1, ptr %l81, !tbaa !21
  %t168 = xor i1 %t167, true
  store i1 %t168, ptr %l79, !tbaa !21
  br label %bb56
bb56:
  %t170 = load i1, ptr %l79, !tbaa !21
  br i1 %t170, label %bb57, label %bb58
bb57:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr @G_2ecompiler_2feffects_2eCapC, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %t171, i64 %t172)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"compiler/effects:given"
  %lp4 = alloca ptr
  %l10 = alloca %"compiler/effects:given"
  %l11 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2ecompiler_2feffects_2eGivResField, !tbaa !24
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/effects:part", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = getelementptr %"compiler/effects:part", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %t8, !tbaa !23
  %t13 = call %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %s0, i64 -1, i64 0, i64 %t1, i64 %t5, i32 %t9)
  store %"compiler/effects:given" %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load %"compiler/effects:given", ptr %l10
  store %"compiler/effects:given" %t14, ptr %l3
  %t15 = ptrtoint ptr %s0 to i64
  store i64 %t15, ptr %l11, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3agiven_2e5
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = call ptr @__olang_region_make(ptr %s0)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l11, !tbaa !24
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/effects:part", ptr %t20, i32 0, i32 4
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l14
  %t24 = load i64, ptr %l11
  %t25 = inttoptr i64 %t24 to ptr
  %t27 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t25, ptr %l14)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l16
  br label %bb4
bb4:
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3agiven_2e5
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load i64, ptr %l11
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t33 = load { i64, ptr }, ptr %t32
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = call ptr @__olang_region_or(ptr %t34, ptr null)
  %t36 = call ptr @__olang_region_home(ptr %t35)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t31
  call void @__olang_region_settle(ptr %t31, i1 %t39)
  br label %bb6
bb6:
  %t40 = getelementptr %"compiler/effects:given", ptr %l3, i32 0, i32 5
  %t41 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, ptr %l18
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t43 = getelementptr %"compiler/effects:given", ptr %l3, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %t43
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3agiven_2e5
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr null)
  %t50 = call ptr @__olang_region_home(ptr %t49)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  call void @__olang_region_drop(ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l18
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/effects:part", ptr %t53, i32 0, i32 5
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = getelementptr %"compiler/effects:given", ptr %l3, i32 0, i32 6
  store i64 %t56, ptr %t58, !tbaa !24
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l22
  br label %bb9
bb9:
  %t60 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t60, ptr %lp4
  %t61 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t62 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %t62
  %t65 = load ptr, ptr %lp4
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresField(ptr %v0, ptr %s0, ptr %v2, ptr %a0, i64 %a1, ptr %l3, ptr %t65, i64 0)
  br label %bb10
bb10:
  %t70 = load ptr, ptr %lp4
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t70
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldPends(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %lp13 = alloca ptr
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l53 = alloca %"compiler/effects:fslot"
  %l55 = alloca %"compiler/effects:fslot"
  %l67 = alloca { i64, ptr }
  %l70 = alloca %"compiler/effects:pend"
  %l71 = alloca i64
  %l75 = alloca %"compiler/effects:fslot"
  %l77 = alloca %"compiler/effects:fslot"
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldSlots(ptr %v0, ptr %s0, ptr %t1, i64 %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l16
  br label %bb1
bb1:
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e(ptr %s0, ptr %l16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l4
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eLen_3ccompiler_2feffects_3afslot_3e(ptr %s0, ptr %l4)
  store i64 %t10, ptr %l20
  br label %bb3
bb3:
  %t11 = load i64, ptr %l20, !tbaa !24
  %t12 = icmp eq i64 %t11, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotBase(ptr %v0, ptr %t14, i64 %t15)
  store i64 %t18, ptr %l24
  br label %bb7
bb7:
  %t19 = load i64, ptr %l24, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eLen_3ccompiler_2feffects_3afslot_3e(ptr %s0, ptr %l4)
  store i64 %t21, ptr %l26
  br label %bb8
bb8:
  %t22 = load i64, ptr %l26, !tbaa !24
  store i64 %t22, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t23 = load i64, ptr %l7, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load i64, ptr %l8, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb14
bb11:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l33, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t49 = load i64, ptr %l33, !tbaa !24
  store i64 %t49, ptr %l30, !tbaa !24
  br label %bb14
bb14:
  %t50 = load i64, ptr %l30, !tbaa !24
  store i64 %t50, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t51 = load i64, ptr %l10, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb17:
  br label %bb18
bb18:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l11, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t72 = call %"compiler/effects:fslot" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eAt_3ccompiler_2feffects_3afslot_3e(ptr %s0, ptr %s3, ptr %l4, i64 %t69)
  store %"compiler/effects:fslot" %t72, ptr %l53
  br label %bb19
bb19:
  %t74 = call %"compiler/effects:fslot" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afslot(ptr %s3, ptr %l53)
  store %"compiler/effects:fslot" %t74, ptr %l55
  br label %bb20
bb20:
  %t75 = getelementptr %"compiler/effects:fslot", ptr %l55, i32 0, i32 0
  %t76 = load i64, ptr %t75, !tbaa !24
  store i64 %t76, ptr %l12, !tbaa !24
  %t78 = load i64, ptr %l12, !tbaa !24
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Call", ptr %t79, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t87 = icmp sge i64 %t78, %t84
  br i1 %t87, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb22:
  br label %bb23
bb23:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t91 = load i64, ptr %l11, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Call", ptr %t95, i32 0, i32 1
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l67, !tbaa !27
  %t99 = load i64, ptr %l12, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr ptr, ptr %t102, i64 %t99
  %t104 = load ptr, ptr %t103, !tbaa !39
  %t108 = call %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v1, ptr %v0, i64 %a2, i64 %t94, ptr %t104)
  store %"compiler/effects:pend" %t108, ptr %l70
  br label %bb24
bb24:
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store ptr %t109, ptr %lp13
  %t110 = load %"compiler/effects:pend", ptr %l70
  %t111 = load ptr, ptr %lp13
  store %"compiler/effects:pend" %t110, ptr %t111
  %t112 = ptrtoint ptr %v0 to i64
  store i64 %t112, ptr %l71, !tbaa !24
  %t113 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apend_2e3
  br i1 %t113, label %bb25, label %bb26
bb25:
  %t115 = call ptr @__olang_region_make(ptr %v0)
  %t116 = ptrtoint ptr %t115 to i64
  store i64 %t116, ptr %l71, !tbaa !24
  br label %bb26
bb26:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = call %"compiler/effects:fslot" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eAt_3ccompiler_2feffects_3afslot_3e(ptr %s0, ptr %s0, ptr %l4, i64 %t117)
  store %"compiler/effects:fslot" %t120, ptr %l75
  br label %bb27
bb27:
  %t122 = call %"compiler/effects:fslot" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afslot(ptr %s0, ptr %l75)
  store %"compiler/effects:fslot" %t122, ptr %l77
  br label %bb28
bb28:
  %t123 = getelementptr %"compiler/effects:fslot", ptr %l77, i32 0, i32 1
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t123
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l78
  %t125 = load i64, ptr %l71
  %t126 = inttoptr i64 %t125 to ptr
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t126, ptr %l78)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l80
  br label %bb29
bb29:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apend_2e3
  br i1 %t129, label %bb30, label %bb31
bb30:
  %t131 = load i64, ptr %l71
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = call ptr @__olang_region_home(ptr %t136)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr null
  %t140 = icmp eq ptr %t139, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t140)
  br label %bb31
bb31:
  %t141 = load ptr, ptr %lp13
  %t142 = getelementptr %"compiler/effects:pend", ptr %t141, i32 0, i32 3
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t142
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l82
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  %t145 = load ptr, ptr %lp13
  %t146 = getelementptr %"compiler/effects:pend", ptr %t145, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t146
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apend_2e3
  br i1 %t147, label %bb32, label %bb33
bb32:
  %t149 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = call ptr @__olang_region_home(ptr %t152)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr null
  call void @__olang_region_drop(ptr %t155)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l82
  br label %bb33
bb33:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/effects:Effects", ptr %t156, i32 0, i32 35
  %t159 = load ptr, ptr %lp13
  %t160 = load %"compiler/effects:pend", ptr %t159
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v0, ptr %t158, %"compiler/effects:pend" %t160)
  br label %bb34
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/effects:Effects", ptr %t163, i32 0, i32 42
  store i1 true, ptr %t165, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb35:
  %t166 = load i64, ptr %l10, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l10, !tbaa !24
  br label %bb15
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efixed(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l8 = alloca ptr
  %l12 = alloca %"compiler/effects:pair"
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca %"compiler/effects:pair"
  %l21 = alloca i1
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
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 55
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanAssigned(ptr %v0, ptr %t8)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Effects", ptr %t10, i32 0, i32 56
  store ptr %t12, ptr %l8, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t19 = call %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %s0, i64 %t15, i64 %a2)
  store %"compiler/effects:pair" %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l8, !tbaa !29
  %t21 = load %"compiler/effects:pair", ptr %l12
  %t22 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H7835af935af759534f3892df019d3666(ptr %v0, ptr %t20, %"compiler/effects:pair" %t21)
  store i1 %t22, ptr %l13
  br label %bb6
bb6:
  %t23 = load i1, ptr %l13, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/effects:Effects", ptr %t26, i32 0, i32 56
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t33 = call %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %s0, i64 %t31, i64 -1)
  store %"compiler/effects:pair" %t33, ptr %l20
  br label %bb9
bb8:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb9:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load %"compiler/effects:pair", ptr %l20
  %t36 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H7835af935af759534f3892df019d3666(ptr %v0, ptr %t34, %"compiler/effects:pair" %t35)
  store i1 %t36, ptr %l21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l21, !tbaa !21
  %t38 = xor i1 %t37, true
  store i1 %t38, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i1, ptr %l15, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ehasExport(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 1
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 1
  %t24 = load { i64, [2 x i64] }, ptr %t23
  store { i64, [2 x i64] } %t24, ptr %l4
  %t26 = load { i64, [2 x i64] }, ptr %l4
  %t28 = extractvalue { i64, [2 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 0
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t32 = getelementptr { i64 }, ptr %t31, i32 0, i32 0
  %t33 = load i64, ptr %t32
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/effects:Effects", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t42, i64 %t33)
  store i64 %t46, ptr %l28
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t47, i64 %t48)
  store ptr %t49, ptr %l29
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l29, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Func", ptr %t50, i32 0, i32 7
  %t53 = load i1, ptr %t52, !tbaa !21
  store i1 %t53, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t55 = load i1, ptr %l21, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t57 = getelementptr { i64 }, ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57
  store i64 %t58, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l2, !tbaa !24
  br label %bb1
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2einPlace(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l10 = alloca i1
  %l20 = alloca i32
  %l25 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i32
  %l40 = alloca i32
  %l43 = alloca i1
  %l48 = alloca i32
  %l56 = alloca i1
  %l66 = alloca i32
  %l71 = alloca i1
  %l72 = alloca i1
  %l77 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Make", ptr %t1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 5}
  %t6 = trunc i64 3 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Make", ptr %t11, i32 0, i32 0
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 5}
  %t16 = trunc i64 2 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %a1)
  store i32 %t32, ptr %l20
  br label %bb7
bb7:
  %t33 = load i32, ptr %l20, !tbaa !23
  store i32 %t33, ptr %l3, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/effects:Effects", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l25
  br label %bb8
bb8:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb12
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/effects:Effects", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l3, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l31
  br label %bb11
bb11:
  %t55 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t57 = trunc i64 19 to i32
  %t58 = icmp eq i32 %t55, %t57
  %t60 = xor i1 %t58, true
  store i1 %t60, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t62 = load i1, ptr %l26, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/effects:Effects", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l3, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l40
  br label %bb16
bb16:
  %t74 = load i32, ptr %l40, !tbaa !23
  store i32 %t74, ptr %l4, !tbaa !23
  %t75 = load i32, ptr %l4, !tbaa !23
  %t77 = icmp eq i32 %t75, 0
  br i1 %t77, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb20
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/effects:Effects", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l4, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t88, ptr %l48
  br label %bb19
bb19:
  %t89 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t91 = trunc i64 26 to i32
  %t92 = icmp eq i32 %t89, %t91
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l43, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l43, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Make", ptr %t98, i32 0, i32 0
  %t101 = load i32, ptr %t100, !range !{i32 0, i32 5}
  %t103 = trunc i64 2 to i32
  %t104 = icmp eq i32 %t101, %t103
  br i1 %t104, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb26
bb25:
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Make", ptr %t106, i32 0, i32 2
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = icmp eq i64 %t111, 0
  store i1 %t113, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t115 = load i1, ptr %l56, !tbaa !21
  br i1 %t115, label %bb27, label %bb28
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/effects:Effects", ptr %t117, i32 0, i32 0
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l3, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l66
  br label %bb30
bb30:
  %t127 = load i32, ptr %l66, !tbaa !23
  store i32 %t127, ptr %l5, !tbaa !23
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/effects:Effects", ptr %t128, i32 0, i32 0
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l5, !tbaa !23
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t133, i32 %t134)
  store i1 %t137, ptr %l71
  br label %bb31
bb31:
  %t138 = load i1, ptr %l71, !tbaa !21
  br i1 %t138, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb35
bb33:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/effects:Effects", ptr %t139, i32 0, i32 0
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l5, !tbaa !23
  %t148 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t144, i32 %t145)
  store i1 %t148, ptr %l77
  br label %bb34
bb34:
  %t149 = load i1, ptr %l77, !tbaa !21
  store i1 %t149, ptr %l72, !tbaa !21
  br label %bb35
bb35:
  %t150 = load i1, ptr %l72, !tbaa !21
  %t151 = xor i1 %t150, true
  store i1 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2einstType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estructOf(ptr %v0, ptr %t2, i32 %a1)
  store i32 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l5, !tbaa !23
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epaths(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l6
  br label %bb2
bb2:
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e(ptr %s0, ptr %l6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l8
  br label %bb3
bb3:
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eLen_3ccompiler_2feffects_3afpath_3e(ptr %v0, ptr %l8)
  store i64 %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp sgt i64 %t14, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/effects:Effects", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 21 to i32
  %t14 = icmp eq i32 %t11, %t13
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ejudgeFacts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca i64
  %l46 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t4 = load i64, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sgt i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = sub i64 %t14, %t15
  %t19 = load i64, ptr %l6, !tbaa !24
  %t22 = add i64 %t18, %t19
  %t24 = sub i64 %t22, 1
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = sdiv i64 %t24, %t25
  store i64 %t28, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb9:
  br label %bb10
bb10:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = mul i64 %t41, %t42
  %t48 = add i64 %t40, %t45
  store i64 %t48, ptr %l9, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  store i64 %t50, ptr %l38, !tbaa !24
  %t51 = load i64, ptr %l38, !tbaa !24
  %t52 = load i64, ptr %l38, !tbaa !24
  %t53 = shl i64 1, %t52
  store i64 %t53, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = and i64 %a2, %t56
  %t61 = icmp eq i64 %t59, 0
  br i1 %t61, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb12:
  br label %bb13
bb13:
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %v1, ptr %v2, ptr %a1, i64 %t64)
  store { i64, ptr } %t67, ptr %l46
  br label %bb14
bb14:
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t68, ptr %lp11
  %t69 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t70 = load ptr, ptr %lp11
  store { i64, ptr } %t69, ptr %t70, !tbaa !27
  %t71 = load ptr, ptr %lp11
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t74, ptr %l48
  br label %bb15
bb15:
  %t75 = load i1, ptr %l48, !tbaa !21
  br i1 %t75, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb17:
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l3, !tbaa !29
  store ptr %t76, ptr %l49, !tbaa !29
  %t77 = ptrtoint ptr %v2 to i64
  store i64 %t77, ptr %l50, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t80 = call ptr @__olang_region_make_part(ptr %v2)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l50, !tbaa !24
  br label %bb20
bb20:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t82
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !37
  store { i64, ptr } %t85, ptr %l54, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l55, !tbaa !24
  %t89 = load i64, ptr %l55, !tbaa !24
  %t90 = mul i64 %t89, 1
  %t91 = load i64, ptr %l50
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = call ptr @__olang_scope_alloc(ptr %t92, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l56, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l55, !tbaa !24
  %t101 = mul i64 %t100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %t99, i64 %t101, i1 false)
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t102, label %bb21, label %bb22
bb21:
  %t104 = load i64, ptr %l50
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = load { i64, ptr }, ptr %l56
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = call ptr @__olang_region_or(ptr %t107, ptr null)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr null
  %t111 = icmp eq ptr %t110, %t105
  call void @__olang_region_settle(ptr %t105, i1 %t111)
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l49, !tbaa !29
  %t113 = getelementptr %"compiler/effects:Verdict", ptr %t112, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  store { i64, ptr } %t114, ptr %l58, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t116 = load ptr, ptr %l49, !tbaa !29
  %t117 = getelementptr %"compiler/effects:Verdict", ptr %t116, i32 0, i32 0
  store { i64, ptr } %t115, ptr %t117, !tbaa !27
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e0
  br i1 %t118, label %bb23, label %bb24
bb23:
  %t120 = load { i64, ptr }, ptr %l58
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = extractvalue { i64, ptr } %t120, 1
  call void @__olang_region_release_part(ptr %t122, i64 %t121)
  store { i64, ptr } zeroinitializer, ptr %l58
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l3, !tbaa !29
  store ptr %t123, ptr %l60, !tbaa !29
  %t124 = ptrtoint ptr %v2 to i64
  store i64 %t124, ptr %l61, !tbaa !24
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e1
  br i1 %t125, label %bb25, label %bb26
bb25:
  %t127 = call ptr @__olang_region_make_part(ptr %v2)
  %t128 = ptrtoint ptr %t127 to i64
  store i64 %t128, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t129 = load ptr, ptr %lp11
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l63, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l64, !tbaa !24
  %t133 = load i64, ptr %l64, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = load i64, ptr %l61
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = call ptr @__olang_scope_alloc(ptr %t136, i64 %t134)
  %t138 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  store { i64, ptr } %t139, ptr %l65, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = load i64, ptr %l64, !tbaa !24
  %t145 = mul i64 %t144, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t141, ptr %t143, i64 %t145, i1 false)
  %t146 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e1
  br i1 %t146, label %bb27, label %bb28
bb27:
  %t148 = load i64, ptr %l61
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = load { i64, ptr }, ptr %l65
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  %t155 = icmp eq ptr %t154, %t149
  call void @__olang_region_settle(ptr %t149, i1 %t155)
  br label %bb28
bb28:
  %t156 = load ptr, ptr %l60, !tbaa !29
  %t157 = getelementptr %"compiler/effects:Verdict", ptr %t156, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l67, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t160 = load ptr, ptr %l60, !tbaa !29
  %t161 = getelementptr %"compiler/effects:Verdict", ptr %t160, i32 0, i32 1
  store { i64, ptr } %t159, ptr %t161, !tbaa !27
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aVerdict_2e1
  br i1 %t162, label %bb29, label %bb30
bb29:
  %t164 = load { i64, ptr }, ptr %l67
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  call void @__olang_region_release_part(ptr %t166, i64 %t165)
  store { i64, ptr } zeroinitializer, ptr %l67
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb31:
  %t167 = load i64, ptr %l8, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l8, !tbaa !24
  br label %bb7
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ekeptLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/typed:LocalUses"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l14 = alloca %"compiler/typed:LocalUses"
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca ptr
  %l56 = alloca i1
  %l60 = alloca i1
  %l65 = alloca %"compiler/typed:Local"
  %l69 = alloca i1
  %s0 = alloca %olang.scope
  %t8 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t8, ptr %v0, ptr %v1, ptr %s0, ptr %t6, ptr %t7)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t8, i64 768, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l14, i64 768, i1 false)
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 67
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t13)
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 7
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t17)
  store i64 %t19, ptr %l19
  br label %bb3
bb3:
  %t20 = load i64, ptr %l19, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb6:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l26, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l26, !tbaa !24
  store i64 %t47, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l23, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l8, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/effects:Effects", ptr %t67, i32 0, i32 67
  store ptr %t69, ptr %l45, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/effects:Effects", ptr %t70, i32 0, i32 65
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/effects:Effects", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/effects:Effects", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t83 = load i64, ptr %l8, !tbaa !24
  %t90 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aRefsKept_2eKept(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %s0, ptr %t72, ptr %t78, ptr %t81, ptr %t82, ptr %l2, i64 %t83)
  store i1 %t90, ptr %l56
  br label %bb14
bb14:
  %t91 = load ptr, ptr %l45, !tbaa !29
  %t92 = load i1, ptr %l56, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t91, i1 %t92)
  br label %bb15
bb15:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/effects:Effects", ptr %t93, i32 0, i32 67
  %t96 = load i64, ptr %l8, !tbaa !24
  %t99 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t95, i64 %t96)
  store i1 %t99, ptr %l60
  br label %bb16
bb16:
  %t100 = load i1, ptr %l60, !tbaa !21
  %t101 = xor i1 %t100, true
  br i1 %t101, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Body", ptr %t103, i32 0, i32 7
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t105, i64 %t106)
  store %"compiler/typed:Local" %t109, ptr %l65
  br label %bb20
bb20:
  %t110 = getelementptr %"compiler/typed:Local", ptr %l65, i32 0, i32 4
  %t111 = load i32, ptr %t110, !range !{i32 0, i32 7}
  store i32 %t111, ptr %l9
  %t113 = load i32, ptr %l9, !range !{i32 0, i32 7}
  %t115 = trunc i64 0 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb23
bb22:
  %t118 = load i32, ptr %l9, !range !{i32 0, i32 7}
  %t120 = trunc i64 4 to i32
  %t121 = icmp eq i32 %t118, %t120
  store i1 %t121, ptr %l69, !tbaa !21
  br label %bb23
bb23:
  %t123 = load i1, ptr %l69, !tbaa !21
  br i1 %t123, label %bb24, label %bb25
bb24:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/effects:Effects", ptr %t124, i32 0, i32 23
  %t127 = getelementptr %"compiler/effects:Facts", ptr %t126, i32 0, i32 0
  store i1 true, ptr %t127, !tbaa !21
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb10
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2elambdaFacts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"compiler/effects:Facts"
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
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca ptr
  %l25 = alloca i64
  %lp26 = alloca ptr
  %l29 = alloca %"compiler/effects:Facts"
  %l33 = alloca %"compiler/effects:Facts"
  %l40 = alloca ptr
  %l43 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l70 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca ptr
  %l78 = alloca i32
  %l79 = alloca %"compiler/effects:Facts"
  %l85 = alloca i64
  %l87 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca i64
  %l99 = alloca i64
  %l102 = alloca i64
  %l122 = alloca i1
  %l123 = alloca ptr
  %l126 = alloca ptr
  %l130 = alloca i32
  %l131 = alloca %"compiler/effects:Facts"
  %l135 = alloca ptr
  %l136 = alloca i1
  %l139 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l155 = alloca { i64, ptr }
  %l158 = alloca i64
  %l164 = alloca i64
  %l165 = alloca i1
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l180 = alloca i64
  %l182 = alloca i64
  %l187 = alloca %"compiler/effects:part"
  %l189 = alloca %"compiler/effects:part"
  %l190 = alloca ptr
  %l194 = alloca %"compiler/effects:Facts"
  %l200 = alloca ptr
  %l203 = alloca ptr
  %l205 = alloca i32
  %l206 = alloca %"compiler/effects:Facts"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t1, i64 %t2)
  store %"compiler/effects:Facts" %t5, ptr %l29
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 9
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t8, i64 %t9)
  store %"compiler/effects:Facts" %t12, ptr %l33
  br label %bb2
bb2:
  %t13 = load %"compiler/effects:Facts", ptr %l33
  store %"compiler/effects:Facts" %t13, ptr %l4
  %t14 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 22
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp eq i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load %"compiler/effects:Facts", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t19, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/effects:Effects", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store ptr %t27, ptr %l40
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l40, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 5
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l43
  br label %bb7
bb7:
  %t33 = load i64, ptr %l43, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l50, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l50, !tbaa !24
  store i64 %t60, ptr %l47, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l47, !tbaa !24
  store i64 %t61, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l10, !tbaa !24
  %t80 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 22
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = call i1 @compiler_2feffects_2ehasBit(i64 %t81, i64 %t82)
  store i1 %t85, ptr %l70
  br label %bb18
bb18:
  %t86 = load i1, ptr %l70, !tbaa !21
  br i1 %t86, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l4, ptr %l71, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  store ptr %t92, ptr %l74, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l2, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t99 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t93, i64 %t94, i64 %t95)
  store i32 %t99, ptr %l78
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t100 = load ptr, ptr %l74, !tbaa !29
  %t101 = load i32, ptr %l78, !tbaa !23
  %t102 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t100, i32 %t101)
  store %"compiler/effects:Facts" %t102, ptr %l79
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l71, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s4, ptr %t103, ptr %l79)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb14
bb26:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l2, !tbaa !24
  %t113 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotBase(ptr %v0, ptr %t109, i64 %t110)
  store i64 %t113, ptr %l85
  br label %bb27
bb27:
  %t114 = load i64, ptr %l85, !tbaa !24
  store i64 %t114, ptr %l11, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s6
  %t115 = load i64, ptr %l11, !tbaa !24
  store i64 %t115, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  store i64 %t117, ptr %l87, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i64, ptr %l2, !tbaa !24
  %t122 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldSlots(ptr %v0, ptr %v0, ptr %t118, i64 %t119)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %l90
  br label %bb28
bb28:
  %t124 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e(ptr %s6, ptr %l90)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l92
  br label %bb29
bb29:
  %t126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eLen_3ccompiler_2feffects_3afslot_3e(ptr %v0, ptr %l92)
  store i64 %t126, ptr %l94
  br label %bb30
bb30:
  %t127 = load i64, ptr %l87, !tbaa !24
  %t128 = load i64, ptr %l94, !tbaa !24
  %t129 = add i64 %t127, %t128
  store i64 %t129, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t131 = load i64, ptr %l13, !tbaa !24
  %t132 = load i64, ptr %l12, !tbaa !24
  %t135 = icmp sgt i64 %t131, %t132
  br i1 %t135, label %bb31, label %bb32
bb31:
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = icmp sgt i64 %t137, 0
  br i1 %t139, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb36
bb33:
  %t141 = load i64, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = sub i64 %t141, %t142
  %t146 = load i64, ptr %l14, !tbaa !24
  %t149 = add i64 %t145, %t146
  %t151 = sub i64 %t149, 1
  %t152 = load i64, ptr %l14, !tbaa !24
  %t155 = sdiv i64 %t151, %t152
  store i64 %t155, ptr %l102, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb35
bb35:
  %t157 = load i64, ptr %l102, !tbaa !24
  store i64 %t157, ptr %l99, !tbaa !24
  br label %bb36
bb36:
  %t158 = load i64, ptr %l99, !tbaa !24
  store i64 %t158, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb37
bb37:
  %t159 = load i64, ptr %l16, !tbaa !24
  %t160 = load i64, ptr %l15, !tbaa !24
  %t163 = icmp slt i64 %t159, %t160
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb38, label %bb39
bb38:
  br label %bb49
bb39:
  br label %bb40
bb40:
  %t167 = load i64, ptr %l12, !tbaa !24
  %t168 = load i64, ptr %l16, !tbaa !24
  %t169 = load i64, ptr %l14, !tbaa !24
  %t172 = mul i64 %t168, %t169
  %t175 = add i64 %t167, %t172
  store i64 %t175, ptr %l17, !tbaa !24
  %t177 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 22
  %t178 = load i64, ptr %t177, !tbaa !24
  %t179 = load i64, ptr %l17, !tbaa !24
  %t182 = call i1 @compiler_2feffects_2ehasBit(i64 %t178, i64 %t179)
  store i1 %t182, ptr %l122
  br label %bb41
bb41:
  %t183 = load i1, ptr %l122, !tbaa !21
  br i1 %t183, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l4, ptr %l123, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/effects:Effects", ptr %t184, i32 0, i32 0
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 2
  store ptr %t189, ptr %l126, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i64, ptr %l2, !tbaa !24
  %t192 = load i64, ptr %l17, !tbaa !24
  %t196 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t190, i64 %t191, i64 %t192)
  store i32 %t196, ptr %l130
  br label %bb44
bb43:
  br label %bb47
bb44:
  %t197 = load ptr, ptr %l126, !tbaa !29
  %t198 = load i32, ptr %l130, !tbaa !23
  %t199 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t197, i32 %t198)
  store %"compiler/effects:Facts" %t199, ptr %l131
  br label %bb45
bb45:
  %t200 = load ptr, ptr %l123, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s8, ptr %t200, ptr %l131)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s8)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t202 = load i64, ptr %l16, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l16, !tbaa !24
  br label %bb37
bb49:
  call void @__olang_scope_close(ptr %s6)
  %t206 = load ptr, ptr %l3, !tbaa !29
  store ptr %t206, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t207 = load ptr, ptr %l135, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb50, label %bb51
bb50:
  %t210 = load ptr, ptr %l135, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 18}
  %t213 = icmp eq i64 %t211, 15
  store i1 %t213, ptr %l136, !tbaa !21
  br label %bb51
bb51:
  %t214 = load i1, ptr %l136, !tbaa !21
  br i1 %t214, label %bb52, label %bb53
bb52:
  %t215 = load ptr, ptr %l3, !tbaa !29
  %t217 = getelementptr { i64, [5 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t217, i32 0, i32 2
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t220 = load ptr, ptr %l141, !tbaa !29
  %t221 = icmp ne ptr %t220, null
  br i1 %t221, label %bb54, label %bb55
bb53:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb56
bb54:
  %t223 = load ptr, ptr %l141, !tbaa !29
  %t224 = load i64, ptr %t223, !range !{i64 0, i64 3}
  %t226 = icmp eq i64 %t224, 1
  store i1 %t226, ptr %l142, !tbaa !21
  br label %bb55
bb55:
  %t227 = load i1, ptr %l142, !tbaa !21
  store i1 %t227, ptr %l139, !tbaa !21
  br label %bb56
bb56:
  %t228 = load i1, ptr %l139, !tbaa !21
  br i1 %t228, label %bb57, label %bb58
bb57:
  %t229 = load ptr, ptr %l3, !tbaa !29
  %t231 = getelementptr { i64, [5 x i64] }, ptr %t229, i32 0, i32 1
  %t232 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t231, i32 0, i32 2
  %t233 = load ptr, ptr %t232
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t235, i32 0, i32 1
  %t237 = load { i64, ptr }, ptr %t236
  store { i64, ptr } %t237, ptr %l18, !tbaa !27
  br label %bb59
bb58:
  br label %bb86
bb59:
  %t239 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t239, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t241 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t241, 0
  store i64 %t243, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  %t245 = load i64, ptr %l20, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = icmp slt i64 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb61, label %bb62
bb61:
  br label %bb85
bb62:
  br label %bb63
bb63:
  %t253 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t253, ptr %l155, !tbaa !27
  %t254 = load i64, ptr %l20, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr ptr, ptr %t257, i64 %t254
  %t259 = load ptr, ptr %t258, !tbaa !39
  store ptr %t259, ptr %l22, !tbaa !29
  %t261 = getelementptr %"compiler/effects:Facts", ptr %l4, i32 0, i32 22
  %t262 = load i64, ptr %t261, !tbaa !24
  store i64 %t262, ptr %l158, !tbaa !24
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i64, ptr %l2, !tbaa !24
  %t265 = load ptr, ptr %l22, !tbaa !29
  %t267 = getelementptr %"compiler/typed:Capture", ptr %t265, i32 0, i32 0
  %t268 = load i32, ptr %t267, !tbaa !23
  %t270 = sext i32 %t268 to i64
  %t274 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecaptureSlot(ptr %v0, ptr %t263, i64 %t264, i64 %t270)
  store i64 %t274, ptr %l164
  br label %bb64
bb64:
  %t275 = load i64, ptr %l158, !tbaa !24
  %t276 = load i64, ptr %l164, !tbaa !24
  %t277 = call i1 @compiler_2feffects_2ehasBit(i64 %t275, i64 %t276)
  store i1 %t277, ptr %l165
  br label %bb65
bb65:
  %t278 = load i1, ptr %l165, !tbaa !21
  %t279 = xor i1 %t278, true
  br i1 %t279, label %bb66, label %bb67
bb66:
  br label %bb84
bb67:
  br label %bb68
bb68:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %t281, i64 %t282)
  br label %bb69
bb69:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/effects:Effects", ptr %t285, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t287)
  br label %bb70
bb70:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l22, !tbaa !29
  %t292 = getelementptr %"compiler/typed:Capture", ptr %t290, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t289, ptr %t293, i64 0)
  br label %bb71
bb71:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/effects:Effects", ptr %t297, i32 0, i32 36
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t299
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %l176
  %t302 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %l176)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l178
  br label %bb72
bb72:
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l178
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l23
  store ptr %l23, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb73
bb73:
  store %olang.scope zeroinitializer, ptr %s15
  %t305 = load i64, ptr %l25, !tbaa !24
  store i64 %t305, ptr %l180, !tbaa !24
  %t306 = load ptr, ptr %l24, !tbaa !29
  %t308 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t306)
  store i64 %t308, ptr %l182
  br label %bb74
bb74:
  %t309 = load i64, ptr %l180, !tbaa !24
  %t310 = load i64, ptr %l182, !tbaa !24
  %t311 = icmp slt i64 %t309, %t310
  %t313 = xor i1 %t311, true
  br i1 %t313, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s15)
  br label %bb83
bb76:
  br label %bb77
bb77:
  %t315 = load ptr, ptr %l24, !tbaa !29
  %t316 = load i64, ptr %l25, !tbaa !24
  %t319 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t315, i64 %t316)
  store %"compiler/effects:part" %t319, ptr %l187
  br label %bb78
bb78:
  %t321 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %l187)
  store %"compiler/effects:part" %t321, ptr %l189
  br label %bb79
bb79:
  %t322 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t322, ptr %lp26
  %t323 = load %"compiler/effects:part", ptr %l189
  %t324 = load ptr, ptr %lp26
  store %"compiler/effects:part" %t323, ptr %t324
  store ptr %l4, ptr %l190, !tbaa !29
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load i64, ptr %l1, !tbaa !24
  %t327 = load ptr, ptr %lp26
  %t331 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epartFacts(ptr %v0, ptr %v0, ptr %t325, i64 %t326, ptr %t327)
  store %"compiler/effects:Facts" %t331, ptr %l194
  br label %bb80
bb80:
  %t332 = load ptr, ptr %l190, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s15, ptr %t332, ptr %l194)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s15)
  br label %bb82
bb82:
  %t334 = load i64, ptr %l25, !tbaa !24
  %t336 = add i64 %t334, 1
  store i64 %t336, ptr %l25, !tbaa !24
  br label %bb73
bb83:
  br label %bb84
bb84:
  %t338 = load i64, ptr %l20, !tbaa !24
  %t340 = add i64 %t338, 1
  store i64 %t340, ptr %l20, !tbaa !24
  br label %bb60
bb85:
  br label %bb94
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb93
bb89:
  store %olang.scope zeroinitializer, ptr %s18
  store ptr %l4, ptr %l200, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/effects:Effects", ptr %t342, i32 0, i32 0
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t347 = getelementptr %"compiler/generic:Program", ptr %t345, i32 0, i32 2
  store ptr %t347, ptr %l203, !tbaa !29
  %t348 = load ptr, ptr %l3, !tbaa !29
  %t350 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t348)
  store i32 %t350, ptr %l205
  br label %bb90
bb90:
  %t351 = load ptr, ptr %l203, !tbaa !29
  %t352 = load i32, ptr %l205, !tbaa !23
  %t353 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t351, i32 %t352)
  store %"compiler/effects:Facts" %t353, ptr %l206
  br label %bb91
bb91:
  %t354 = load ptr, ptr %l200, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s18, ptr %t354, ptr %l206)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s18)
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_9b481a3036e75930_9f21b77026d49cd4)
  unreachable
bb94:
  %t356 = load %"compiler/effects:Facts", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/effects:Facts" %t356, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutsJudged(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/effects:link"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i32
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i32
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca i64
  %l72 = alloca %"compiler/effects:link"
  %l78 = alloca i1
  %l83 = alloca i1
  %l84 = alloca i32
  %l86 = alloca ptr
  %l90 = alloca %"compiler/effects:link"
  %l93 = alloca ptr
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/effects:Effects", ptr %t3, i32 0, i32 39
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l15, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l17
  br label %bb3
bb3:
  %t11 = load i64, ptr %l15, !tbaa !24
  %t12 = load i64, ptr %l17, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb17
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l22
  br label %bb7
bb7:
  %t22 = load i64, ptr %l22, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  store ptr %l1, ptr %l23, !tbaa !29
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = sdiv i64 %t23, 2
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = srem i64 %t26, 2
  %t30 = icmp eq i64 %t28, 1
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t32, 2
  %t37 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t34)
  %t38 = extractvalue { i32, i1 } %t37, 1
  %t39 = extractvalue { i32, i1 } %t37, 0
  store i32 %t39, ptr %l35
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb11, label %ok.41, !prof !99
ok.41:
  store i1 %t38, ptr %l34
  br label %bb10
bb9:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb10:
  %t42 = load i1, ptr %l34, !tbaa !21
  store i1 %t42, ptr %l30, !tbaa !21
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l30, !tbaa !21
  store i1 %t43, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = load i1, ptr %l29, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %t44, i64 %t45, i1 %t46)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb2
bb17:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/effects:Effects", ptr %t51, i32 0, i32 40
  store ptr %t53, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t55 = load i64, ptr %l6, !tbaa !24
  store i64 %t55, ptr %l40, !tbaa !24
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l42
  br label %bb19
bb19:
  %t59 = load i64, ptr %l40, !tbaa !24
  %t60 = load i64, ptr %l42, !tbaa !24
  %t61 = icmp slt i64 %t59, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb20, label %bb21
bb20:
  br label %bb32
bb21:
  br label %bb22
bb22:
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l47
  br label %bb23
bb23:
  %t70 = load i64, ptr %l47, !tbaa !24
  %t74 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t70)
  %t75 = extractvalue { i32, i1 } %t74, 1
  %t76 = extractvalue { i32, i1 } %t74, 0
  store i32 %t76, ptr %l52
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb25, label %ok.78, !prof !99
ok.78:
  store i1 %t75, ptr %l51
  br label %bb24
bb24:
  %t79 = load i1, ptr %l51, !tbaa !21
  store i1 %t79, ptr %l48, !tbaa !21
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb27
bb27:
  %t80 = load i1, ptr %l48, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb28, label %bb29
bb28:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/effects:Effects", ptr %t83, i32 0, i32 23
  %t86 = getelementptr %"compiler/effects:Facts", ptr %t85, i32 0, i32 17
  store i1 true, ptr %t86, !tbaa !21
  br label %bb30
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l6, !tbaa !24
  br label %bb18
bb32:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/effects:Effects", ptr %t91, i32 0, i32 41
  %t94 = load i1, ptr %t93, !tbaa !21
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l60, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t99, label %bb36, label %bb37
bb36:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l60, !tbaa !24
  br label %bb37
bb37:
  %t103 = load i64, ptr %l60
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %t104, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l62
  br label %bb38
bb38:
  %t106 = load i64, ptr %l60
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call ptr @__olang_scope_alloc_a(ptr %t107, i64 32, i64 8)
  store ptr %t108, ptr %lp8
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  %t110 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %t110
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/effects:Effects", ptr %t111, i32 0, i32 27
  store ptr %t113, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb39
bb39:
  %t115 = load i64, ptr %l10, !tbaa !24
  store i64 %t115, ptr %l65, !tbaa !24
  %t116 = load ptr, ptr %l9, !tbaa !29
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eLen_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t116)
  store i64 %t118, ptr %l67
  br label %bb40
bb40:
  %t119 = load i64, ptr %l65, !tbaa !24
  %t120 = load i64, ptr %l67, !tbaa !24
  %t121 = icmp slt i64 %t119, %t120
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb41, label %bb42
bb41:
  br label %bb59
bb42:
  br label %bb43
bb43:
  %t125 = load ptr, ptr %l9, !tbaa !29
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = call %"compiler/effects:link" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eAt_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t125, i64 %t126)
  store %"compiler/effects:link" %t129, ptr %l72
  br label %bb44
bb44:
  %t130 = load %"compiler/effects:link", ptr %l72
  store %"compiler/effects:link" %t130, ptr %l11
  %t131 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 2
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i64, ptr @G_2ecompiler_2feffects_2eoutLocal, !tbaa !24
  %t136 = icmp sgt i64 %t132, %t133
  br i1 %t136, label %bb45, label %bb46
bb45:
  %t138 = load ptr, ptr %lp8
  %t139 = load %"compiler/effects:link", ptr %l11
  %t140 = load i64, ptr %l60
  %t141 = inttoptr i64 %t140 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %t141, ptr %t138, %"compiler/effects:link" %t139)
  br label %bb47
bb46:
  %t144 = load i64, ptr @G_2ecompiler_2feffects_2eoutLocal, !tbaa !24
  %t145 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 2
  %t146 = load i64, ptr %t145, !tbaa !24
  %t149 = sub i64 %t144, %t146
  %t152 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t149)
  %t153 = extractvalue { i32, i1 } %t152, 1
  %t154 = extractvalue { i32, i1 } %t152, 0
  store i32 %t154, ptr %l84
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb49, label %ok.156, !prof !99
ok.156:
  store i1 %t153, ptr %l83
  br label %bb48
bb47:
  br label %bb57
bb48:
  %t157 = load i1, ptr %l83, !tbaa !21
  store i1 %t157, ptr %l78, !tbaa !21
  br label %bb51
bb49:
  br label %bb50
bb50:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb51
bb51:
  %t158 = load i1, ptr %l78, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s13
  %t161 = load ptr, ptr %lp8
  store ptr %t161, ptr %l86, !tbaa !29
  %t162 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = getelementptr %"compiler/effects:link", ptr %l11, i32 0, i32 1
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load i64, ptr @G_2ecompiler_2feffects_2eoutParam, !tbaa !24
  %t170 = call %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %s13, i64 %t163, i64 %t165, i64 %t166)
  store %"compiler/effects:link" %t170, ptr %l90
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t171 = load i64, ptr %l60
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = load ptr, ptr %l86, !tbaa !29
  %t174 = load %"compiler/effects:link", ptr %l90
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %t172, ptr %t173, %"compiler/effects:link" %t174)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s13)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t175 = load i64, ptr %l10, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l10, !tbaa !24
  br label %bb39
bb59:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l93, !tbaa !29
  %t180 = load ptr, ptr %lp8
  %t181 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t180
  %t182 = load ptr, ptr %l93, !tbaa !29
  %t183 = getelementptr %"compiler/effects:Effects", ptr %t182, i32 0, i32 27
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t183
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l95
  %t186 = load ptr, ptr %l93, !tbaa !29
  %t187 = getelementptr %"compiler/effects:Effects", ptr %t186, i32 0, i32 27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %t187
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t188, label %bb60, label %bb61
bb60:
  %t190 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = call ptr @__olang_region_home(ptr %t193)
  %t195 = icmp ne ptr %t194, null
  %t196 = select i1 %t195, ptr %t194, ptr null
  call void @__olang_region_drop(ptr %t196)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l95
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eownSlot(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l31 = alloca %"compiler/typed:LocalUses"
  %l34 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t53 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 66
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 66
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t11, i64 %t12)
  %t16 = extractvalue { i32, i1 } %t15, 1
  %t17 = extractvalue { i32, i1 } %t15, 0
  store i32 %t17, ptr %l13
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb5, label %ok.19, !prof !99
ok.19:
  store i1 %t16, ptr %l12
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t20 = load i1, ptr %l12, !tbaa !21
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load i1, ptr %l8, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/effects:Effects", ptr %t25, i32 0, i32 33
  %t28 = load i64, ptr %t27, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t24, i64 %t28)
  store ptr %t31, ptr %l18
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l18, !tbaa !29
  store ptr %t32, ptr %l2, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t33, i32 0, i32 65
  store ptr %t35, ptr %l20, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/effects:Effects", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/effects:Effects", ptr %t42, i32 0, i32 1
  store ptr %t44, ptr %l25, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/effects:Effects", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t53, ptr %v0, ptr %v0, ptr %v0, ptr %t51, ptr %t52)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t53, i64 768, i1 false)
  br label %bb10
bb10:
  %t56 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 768, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %l31, i64 768, i1 false)
  %t57 = load i64, ptr %l1, !tbaa !24
  %t58 = load ptr, ptr %l20, !tbaa !29
  %t59 = load ptr, ptr %l23, !tbaa !29
  %t60 = load ptr, ptr %l25, !tbaa !29
  %t61 = load ptr, ptr %l26, !tbaa !29
  %t64 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aRefsKept_2eOwnSlot(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t58, ptr %t59, ptr %t60, ptr %t61, ptr %t56, i64 %t57)
  store i1 %t64, ptr %l34
  br label %bb11
bb11:
  %t65 = load i1, ptr %l34, !tbaa !21
  store i1 %t65, ptr %l3, !tbaa !21
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/effects:Effects", ptr %t66, i32 0, i32 66
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load i1, ptr %l3, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t68, i64 %t69, i1 %t70)
  br label %bb12
bb12:
  %t74 = load i1, ptr %l3, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t74, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epartFacts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/effects:Facts"
  %l4 = alloca ptr
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/effects:Facts"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l18 = alloca %"compiler/effects:Facts"
  %l25 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca %"compiler/effects:Facts"
  %l39 = alloca %"compiler/effects:Facts"
  %l44 = alloca ptr
  %l45 = alloca i64
  %l47 = alloca i64
  %l53 = alloca %"compiler/effects:Facts"
  %l58 = alloca %"compiler/effects:Facts"
  %l63 = alloca %"compiler/effects:Facts"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca %"compiler/effects:part"
  %l78 = alloca %"compiler/effects:part"
  %l79 = alloca ptr
  %l83 = alloca %"compiler/effects:Facts"
  %l92 = alloca i1
  %l97 = alloca i1
  %l98 = alloca %"compiler/effects:Facts"
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca i64
  %l108 = alloca i64
  %l113 = alloca i64
  %l114 = alloca ptr
  %l117 = alloca %"compiler/effects:Facts"
  %l127 = alloca %"compiler/effects:Facts"
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca %"compiler/effects:Facts"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/effects:part", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t8 = icmp eq i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/effects:part", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t10, i64 %t14)
  store %"compiler/effects:Facts" %t17, ptr %l18
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t18 = load %"compiler/effects:Facts", ptr %l18
  store %"compiler/effects:Facts" %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/effects:part", ptr %t19, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/effects:Effects", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l25, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/effects:part", ptr %t36, i32 0, i32 1
  %t39 = load i64, ptr %t38, !tbaa !24
  %t43 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t34, i64 %t35, i64 %t39)
  store i32 %t43, ptr %l30
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t44 = load ptr, ptr %l25, !tbaa !29
  %t45 = load i32, ptr %l30, !tbaa !23
  %t46 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t44, i32 %t45)
  store %"compiler/effects:Facts" %t46, ptr %l31
  br label %bb8
bb8:
  %t47 = load %"compiler/effects:Facts", ptr %l31
  store %"compiler/effects:Facts" %t47, ptr %rv
  br label %ret
bb9:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/effects:part", ptr %t48, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  %t55 = icmp eq i64 %t51, %t52
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr %"compiler/effects:part", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t57, i64 %t61)
  store %"compiler/effects:Facts" %t64, ptr %l39
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t65 = load %"compiler/effects:Facts", ptr %l39
  store %"compiler/effects:Facts" %t65, ptr %rv
  br label %ret
bb13:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/effects:part", ptr %t66, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  %t73 = icmp eq i64 %t69, %t70
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l44, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  store i64 %t76, ptr %l45, !tbaa !24
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/effects:part", ptr %t77, i32 0, i32 1
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l47, !tbaa !24
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"compiler/effects:part", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb16, label %bb17
bb15:
  br label %bb20
bb16:
  call void @__olang_check_failed(ptr @olang_loc_89d258cb45db8a97_6792eaa695d1effb)
  unreachable
bb17:
  br label %bb18
bb18:
  %t88 = load ptr, ptr %l2, !tbaa !29
  %t90 = getelementptr %"compiler/effects:part", ptr %t88, i32 0, i32 3
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t92 = load ptr, ptr %l44, !tbaa !29
  %t93 = load i64, ptr %l45, !tbaa !24
  %t94 = load i64, ptr %l47, !tbaa !24
  %t96 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2elambdaFacts(ptr %v0, ptr %v1, ptr %t92, i64 %t93, i64 %t94, ptr %t91)
  store %"compiler/effects:Facts" %t96, ptr %l53
  br label %bb19
bb19:
  %t97 = load %"compiler/effects:Facts", ptr %l53
  store %"compiler/effects:Facts" %t97, ptr %rv
  br label %ret
bb20:
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/effects:part", ptr %t98, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  %t105 = icmp eq i64 %t101, %t102
  br i1 %t105, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t107 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s5)
  store %"compiler/effects:Facts" %t107, ptr %l58
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s5)
  %t108 = load %"compiler/effects:Facts", ptr %l58
  store %"compiler/effects:Facts" %t108, ptr %rv
  br label %ret
bb24:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr %"compiler/effects:part", ptr %t109, i32 0, i32 0
  %t112 = load i64, ptr %t111, !tbaa !24
  %t113 = load i64, ptr @G_2ecompiler_2feffects_2eGivResField, !tbaa !24
  %t116 = icmp eq i64 %t112, %t113
  br i1 %t116, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t118 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s6)
  store %"compiler/effects:Facts" %t118, ptr %l63
  br label %bb27
bb26:
  br label %bb40
bb27:
  %t119 = load %"compiler/effects:Facts", ptr %l63
  store %"compiler/effects:Facts" %t119, ptr %l3
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i64, ptr %l1, !tbaa !24
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldParts(ptr %v0, ptr %v1, ptr %v0, ptr %t120, i64 %t121, ptr %t122)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l67
  br label %bb28
bb28:
  %t127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  %t128 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %t128
  store ptr %t128, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s8
  %t130 = load i64, ptr %l5, !tbaa !24
  store i64 %t130, ptr %l69, !tbaa !24
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t131)
  store i64 %t133, ptr %l71
  br label %bb30
bb30:
  %t134 = load i64, ptr %l69, !tbaa !24
  %t135 = load i64, ptr %l71, !tbaa !24
  %t136 = icmp slt i64 %t134, %t135
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s8)
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t140 = load ptr, ptr %l4, !tbaa !29
  %t141 = load i64, ptr %l5, !tbaa !24
  %t144 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t140, i64 %t141)
  store %"compiler/effects:part" %t144, ptr %l76
  br label %bb34
bb34:
  %t146 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %l76)
  store %"compiler/effects:part" %t146, ptr %l78
  br label %bb35
bb35:
  %t147 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t147, ptr %lp6
  %t148 = load %"compiler/effects:part", ptr %l78
  %t149 = load ptr, ptr %lp6
  store %"compiler/effects:part" %t148, ptr %t149
  store ptr %l3, ptr %l79, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i64, ptr %l1, !tbaa !24
  %t152 = load ptr, ptr %lp6
  %t156 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epartFacts(ptr %v0, ptr %v0, ptr %t150, i64 %t151, ptr %t152)
  store %"compiler/effects:Facts" %t156, ptr %l83
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l79, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s6, ptr %s8, ptr %t157, ptr %l83)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s8)
  br label %bb38
bb38:
  %t159 = load i64, ptr %l5, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l5, !tbaa !24
  br label %bb29
bb39:
  %t163 = load %"compiler/effects:Facts", ptr %l3
  call void @__olang_scope_close(ptr %s6)
  store %"compiler/effects:Facts" %t163, ptr %rv
  br label %ret
bb40:
  %t165 = load ptr, ptr %l2, !tbaa !29
  %t167 = getelementptr %"compiler/effects:part", ptr %t165, i32 0, i32 0
  %t168 = load i64, ptr %t167, !tbaa !24
  %t169 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t172 = icmp eq i64 %t168, %t169
  br i1 %t172, label %bb41, label %bb42
bb41:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/effects:Effects", ptr %t174, i32 0, i32 8
  %t177 = load ptr, ptr %l2, !tbaa !29
  %t179 = getelementptr %"compiler/effects:part", ptr %t177, i32 0, i32 1
  %t180 = load i64, ptr %t179, !tbaa !24
  %t183 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t176, i64 %t180)
  store i1 %t183, ptr %l97
  br label %bb43
bb42:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb44
bb43:
  %t184 = load i1, ptr %l97, !tbaa !21
  store i1 %t184, ptr %l92, !tbaa !21
  br label %bb44
bb44:
  %t185 = load i1, ptr %l92, !tbaa !21
  br i1 %t185, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s10
  %t186 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s10)
  store %"compiler/effects:Facts" %t186, ptr %l98
  br label %bb47
bb46:
  br label %bb60
bb47:
  %t187 = load %"compiler/effects:Facts", ptr %l98
  store %"compiler/effects:Facts" %t187, ptr %l7
  store %olang.scope zeroinitializer, ptr %s11
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l2, !tbaa !29
  %t191 = getelementptr %"compiler/effects:part", ptr %t189, i32 0, i32 1
  %t192 = load i64, ptr %t191, !tbaa !24
  %t195 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %s11, ptr %t188, i64 %t192)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t195, ptr %l102
  br label %bb48
bb48:
  %t197 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s11, ptr %l102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t197, ptr %l104
  br label %bb49
bb49:
  %t198 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  %t199 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t198, ptr %t199
  store ptr %t199, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s12
  %t201 = load i64, ptr %l9, !tbaa !24
  store i64 %t201, ptr %l106, !tbaa !24
  %t202 = load ptr, ptr %l8, !tbaa !29
  %t204 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s11, ptr %t202)
  store i64 %t204, ptr %l108
  br label %bb51
bb51:
  %t205 = load i64, ptr %l106, !tbaa !24
  %t206 = load i64, ptr %l108, !tbaa !24
  %t207 = icmp slt i64 %t205, %t206
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s12)
  br label %bb59
bb53:
  br label %bb54
bb54:
  %t211 = load ptr, ptr %l8, !tbaa !29
  %t212 = load i64, ptr %l9, !tbaa !24
  %t215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s11, ptr %t211, i64 %t212)
  store i64 %t215, ptr %l113
  br label %bb55
bb55:
  %t216 = load i64, ptr %l113, !tbaa !24
  store ptr %l7, ptr %l114, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t221 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t217, i64 %t216)
  store %"compiler/effects:Facts" %t221, ptr %l117
  br label %bb56
bb56:
  %t222 = load ptr, ptr %l114, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s10, ptr %s12, ptr %t222, ptr %l117)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s12)
  br label %bb58
bb58:
  %t224 = load i64, ptr %l9, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l9, !tbaa !24
  br label %bb50
bb59:
  call void @__olang_scope_close(ptr %s11)
  %t228 = load %"compiler/effects:Facts", ptr %l7
  call void @__olang_scope_close(ptr %s10)
  store %"compiler/effects:Facts" %t228, ptr %rv
  br label %ret
bb60:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/effects:Effects", ptr %t230, i32 0, i32 0
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = getelementptr %"compiler/generic:Program", ptr %t233, i32 0, i32 2
  %t236 = load ptr, ptr %l2, !tbaa !29
  %t238 = getelementptr %"compiler/effects:part", ptr %t236, i32 0, i32 2
  %t239 = load i32, ptr %t238, !tbaa !23
  %t242 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t235, i32 %t239)
  store %"compiler/effects:Facts" %t242, ptr %l127
  br label %bb61
bb61:
  %t243 = load %"compiler/effects:Facts", ptr %l127
  store %"compiler/effects:Facts" %t243, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:Facts", ptr %rv
  ret %"compiler/effects:Facts" %rr
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epassCalls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/effects:given"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i32
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca %"compiler/effects:given"
  %l45 = alloca i1
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l59 = alloca i1
  %l60 = alloca i64
  %l63 = alloca i64
  %l65 = alloca i1
  %l68 = alloca i1
  %l69 = alloca i1
  %l73 = alloca i64
  %l79 = alloca %"compiler/effects:Facts"
  %l82 = alloca i1
  %l84 = alloca i1
  %l88 = alloca %"compiler/effects:Facts"
  %l91 = alloca i1
  %l96 = alloca %"compiler/effects:Facts"
  %l97 = alloca i64
  %l99 = alloca i64
  %l104 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i1, ptr %l15, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 7
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb5dd413d586c55d7ccefa7dbc5ad43c5(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l21, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l17, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/effects:Effects", ptr %t23, i32 0, i32 7
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  %t30 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t29, 1
  %t31 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t29, 0
  store i32 %t31, ptr %l29
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb10, label %ok.33, !prof !99
ok.33:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l28
  br label %bb9
bb9:
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %l28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l31
  br label %bb12
bb10:
  br label %bb11
bb11:
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l32
  br label %bb13
bb12:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l24
  br label %bb14
bb13:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l24
  br label %bb14
bb14:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l4
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t41 = load i64, ptr %l6, !tbaa !24
  store i64 %t41, ptr %l34, !tbaa !24
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %t42)
  store i64 %t44, ptr %l36
  br label %bb16
bb16:
  %t45 = load i64, ptr %l34, !tbaa !24
  %t46 = load i64, ptr %l36, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb59
bb18:
  br label %bb19
bb19:
  %t51 = load ptr, ptr %l5, !tbaa !29
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = call %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %s0, ptr %s0, ptr %t51, i64 %t52)
  store %"compiler/effects:given" %t55, ptr %l41
  br label %bb20
bb20:
  %t56 = load %"compiler/effects:given", ptr %l41
  store %"compiler/effects:given" %t56, ptr %l7
  %t57 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 2
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t62 = icmp ne i64 %t58, %t59
  br i1 %t62, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb23
bb22:
  %t64 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  store i1 %t67, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb58
bb25:
  br label %bb26
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/effects:Effects", ptr %t70, i32 0, i32 4
  %t73 = load i64, ptr %l1, !tbaa !24
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t72, i64 %t73)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l51
  br label %bb27
bb27:
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s3, ptr %l51)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l53
  br label %bb28
bb28:
  %t79 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %l53, i64 %t80)
  store i64 %t83, ptr %l56
  br label %bb29
bb29:
  %t84 = load i64, ptr %l56, !tbaa !24
  store i64 %t84, ptr %l8, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp slt i64 %t85, 0
  br i1 %t87, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb33
bb31:
  %t89 = load i64, ptr %l8, !tbaa !24
  store i64 %t89, ptr %l60, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/effects:Effects", ptr %t90, i32 0, i32 1
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t92)
  store i64 %t94, ptr %l63
  br label %bb32
bb32:
  %t95 = load i64, ptr %l60, !tbaa !24
  %t96 = load i64, ptr %l63, !tbaa !24
  %t97 = icmp sge i64 %t95, %t96
  store i1 %t97, ptr %l59, !tbaa !21
  br label %bb33
bb33:
  %t99 = load i1, ptr %l59, !tbaa !21
  br i1 %t99, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb41
bb35:
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %a2, i64 %t101)
  store i1 %t104, ptr %l68
  br label %bb36
bb36:
  %t105 = load i1, ptr %l68, !tbaa !21
  br i1 %t105, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb40
bb38:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/effects:Effects", ptr %t106, i32 0, i32 15
  %t109 = load i64, ptr %l8, !tbaa !24
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t108, i64 %t109)
  store i64 %t112, ptr %l73
  br label %bb39
bb39:
  %t113 = load i64, ptr %l73, !tbaa !24
  %t114 = icmp eq i64 %t113, 2
  store i1 %t114, ptr %l69, !tbaa !21
  br label %bb40
bb40:
  %t116 = load i1, ptr %l69, !tbaa !21
  %t117 = xor i1 %t116, true
  store i1 %t117, ptr %l65, !tbaa !21
  br label %bb41
bb41:
  %t119 = load i1, ptr %l65, !tbaa !21
  br i1 %t119, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb58
bb43:
  br label %bb44
bb44:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/effects:Effects", ptr %t120, i32 0, i32 9
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t122, i64 %t123)
  store %"compiler/effects:Facts" %t126, ptr %l79
  br label %bb45
bb45:
  %t127 = getelementptr %"compiler/effects:Facts", ptr %l79, i32 0, i32 22
  %t128 = load i64, ptr %t127, !tbaa !24
  %t129 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 1
  %t130 = load i64, ptr %t129, !tbaa !24
  %t133 = call i1 @compiler_2feffects_2ehasBit(i64 %t128, i64 %t130)
  store i1 %t133, ptr %l82
  br label %bb46
bb46:
  %t134 = load i1, ptr %l82, !tbaa !21
  %t135 = xor i1 %t134, true
  br i1 %t135, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb51
bb48:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/effects:Effects", ptr %t137, i32 0, i32 9
  %t140 = load i64, ptr %l1, !tbaa !24
  %t143 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t139, i64 %t140)
  store %"compiler/effects:Facts" %t143, ptr %l88
  br label %bb49
bb49:
  %t144 = getelementptr %"compiler/effects:Facts", ptr %l88, i32 0, i32 22
  %t145 = load i64, ptr %t144, !tbaa !24
  %t146 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 3
  %t147 = load i64, ptr %t146, !tbaa !24
  %t150 = call i1 @compiler_2feffects_2ehasBit(i64 %t145, i64 %t147)
  store i1 %t150, ptr %l91
  br label %bb50
bb50:
  %t151 = load i1, ptr %l91, !tbaa !21
  store i1 %t151, ptr %l84, !tbaa !21
  br label %bb51
bb51:
  %t152 = load i1, ptr %l84, !tbaa !21
  br i1 %t152, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s3)
  br label %bb58
bb53:
  br label %bb54
bb54:
  %t153 = load i64, ptr %l1, !tbaa !24
  store i64 %t153, ptr %l9, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/effects:Effects", ptr %t155, i32 0, i32 9
  %t158 = load i64, ptr %l1, !tbaa !24
  %t161 = call %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t157, i64 %t158)
  store %"compiler/effects:Facts" %t161, ptr %l96
  br label %bb55
bb55:
  %t162 = getelementptr %"compiler/effects:Facts", ptr %l96, i32 0, i32 22
  %t163 = load i64, ptr %t162, !tbaa !24
  store i64 %t163, ptr %l97, !tbaa !24
  %t164 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 3
  %t165 = load i64, ptr %t164, !tbaa !24
  %t167 = call i64 @compiler_2feffects_2eparamBit(i64 %t165)
  store i64 %t167, ptr %l99
  br label %bb56
bb56:
  %t168 = load i64, ptr %l97, !tbaa !24
  %t169 = load i64, ptr %l99, !tbaa !24
  %t170 = or i64 %t168, %t169
  store i64 %t170, ptr %l10, !tbaa !24
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/effects:Effects", ptr %t172, i32 0, i32 9
  %t175 = load i64, ptr %l9, !tbaa !24
  %t178 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t174, i64 %t175)
  store ptr %t178, ptr %l104
  br label %bb57
bb57:
  %t179 = load ptr, ptr %l104, !tbaa !29
  %t181 = load i64, ptr %l10, !tbaa !24
  %t184 = getelementptr %"compiler/effects:Facts", ptr %t179, i32 0, i32 22
  store i64 %t181, ptr %t184, !tbaa !24
  %t185 = load i64, ptr %l3, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb58
bb58:
  %t189 = load i64, ptr %l6, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l6, !tbaa !24
  br label %bb15
bb59:
  %t193 = load i64, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t193, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epaths(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/effects:fpath"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i1
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i32
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l53 = alloca i64
  %l56 = alloca i64
  %l77 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i64
  %l87 = alloca i64
  %l90 = alloca { i64, ptr }
  %l91 = alloca %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca { i64, ptr }
  %l98 = alloca %"compiler/effects:fpath"
  %l102 = alloca { i64, ptr }
  %l105 = alloca i1
  %l106 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l111 = alloca i32
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca i64
  %l118 = alloca i64
  %l123 = alloca %"compiler/effects:fpath"
  %l125 = alloca %"compiler/effects:fpath"
  %l127 = alloca i64
  %l130 = alloca i64
  %l133 = alloca { i64, ptr }
  %l134 = alloca %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381"
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca i64
  %l140 = alloca i64
  %l145 = alloca i64
  %l150 = alloca ptr
  %l151 = alloca i64
  %l153 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l158 = alloca %"compiler/effects:fpath"
  %l160 = alloca %"compiler/effects:fpath"
  %l166 = alloca ptr
  %l167 = alloca i32
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l20
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %rv
  br label %ret
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/effects:Effects", ptr %t9, i32 0, i32 57
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hf6a5697b694481c39cb93e062458012f(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l24
  br label %bb5
bb5:
  %t16 = load i1, ptr %l24, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Effects", ptr %t17, i32 0, i32 57
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H7002a026c084e9a7d52910b10cae7157(ptr %v0, ptr %v1, ptr %t19, i32 %t20)
  %t24 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t23, 1
  %t25 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t23, 0
  store i32 %t25, ptr %l30
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb9, label %ok.27, !prof !99
ok.27:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l29
  br label %bb8
bb7:
  br label %bb14
bb8:
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e(ptr %v1, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l32
  br label %bb11
bb9:
  br label %bb10
bb10:
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l33
  br label %bb12
bb11:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l25
  br label %bb13
bb12:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l25
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %rv
  br label %ret
bb14:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/effects:Effects", ptr %t34, i32 0, i32 57
  store ptr %t36, ptr %l35, !tbaa !29
  %t37 = load i32, ptr %l1, !tbaa !23
  store i32 %t37, ptr %l36, !tbaa !23
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l37
  br label %bb15
bb15:
  %t39 = load ptr, ptr %l35, !tbaa !29
  %t40 = load i32, ptr %l36, !tbaa !23
  %t41 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H23909c0b6cdd8c6a8e8461d347ccf8af(ptr %v0, ptr %s0, ptr %t39, i32 %t40, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41)
  br label %bb16
bb16:
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l38
  br label %bb17
bb17:
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/effects:Effects", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l41, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/effects:Effects", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l46
  br label %bb18
bb18:
  %t60 = load ptr, ptr %l41, !tbaa !29
  %t61 = load i32, ptr %l46, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t60, i32 %t61)
  store { i64, ptr } %t62, ptr %l47
  br label %bb19
bb19:
  %t63 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t63, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb25
bb22:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l56, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb24
bb24:
  %t94 = load i64, ptr %l56, !tbaa !24
  store i64 %t94, ptr %l53, !tbaa !24
  br label %bb25
bb25:
  %t95 = load i64, ptr %l53, !tbaa !24
  store i64 %t95, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb26
bb26:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb27, label %bb28
bb27:
  br label %bb90
bb28:
  br label %bb29
bb29:
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l8, !tbaa !24
  %t106 = load i64, ptr %l6, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l9, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l1, !tbaa !23
  %t116 = load i64, ptr %l9, !tbaa !24
  %t120 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efixed(ptr %v0, ptr %t114, i32 %t115, i64 %t116)
  store i1 %t120, ptr %l77
  br label %bb30
bb30:
  %t121 = load i1, ptr %l77, !tbaa !21
  %t122 = xor i1 %t121, true
  br i1 %t122, label %bb31, label %bb32
bb31:
  br label %bb89
bb32:
  br label %bb33
bb33:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t125, ptr %l80, !tbaa !27
  %t126 = load i64, ptr %l9, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i32, ptr %t129, i64 %t126
  %t131 = load i32, ptr %t130, !tbaa !33
  %t134 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t124, i32 %t131)
  store i1 %t134, ptr %l83
  br label %bb34
bb34:
  %t135 = load i1, ptr %l83, !tbaa !21
  br i1 %t135, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l2, ptr %l84, !tbaa !29
  %t136 = ptrtoint ptr %s6 to i64
  store i64 %t136, ptr %l85, !tbaa !24
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3afpath_2e0
  br i1 %t137, label %bb37, label %bb38
bb36:
  br label %bb47
bb37:
  %t139 = call ptr @__olang_region_make(ptr %s6)
  %t140 = ptrtoint ptr %t139 to i64
  store i64 %t140, ptr %l85, !tbaa !24
  br label %bb38
bb38:
  %t141 = load i64, ptr %l85
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l87, !tbaa !24
  %t144 = load i1, ptr @olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0
  br i1 %t144, label %bb39, label %bb40
bb39:
  %t146 = load i64, ptr %l85
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call ptr @__olang_region_make(ptr %t147)
  %t149 = ptrtoint ptr %t148 to i64
  store i64 %t149, ptr %l87, !tbaa !24
  br label %bb40
bb40:
  %t150 = load i64, ptr %l9, !tbaa !24
  %t151 = mul i64 1, 8
  %t152 = load i64, ptr %l87
  %t153 = inttoptr i64 %t152 to ptr
  %t154 = call ptr @__olang_scope_alloc_zeroed(ptr %t153, i64 %t151)
  %t155 = insertvalue { i64, ptr } undef, i64 1, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  store { i64, ptr } %t156, ptr %l90, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr i64, ptr %t159, i64 0
  store i64 %t150, ptr %t160, !tbaa !34
  %t161 = load i64, ptr %l85
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = load i64, ptr %l85
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t166 = call %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %t162, ptr %t164, { i64, ptr } %t165)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t166, ptr %l91
  br label %bb41
bb41:
  %t167 = load %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %l91
  %t168 = load i64, ptr %l85
  %t169 = inttoptr i64 %t168 to ptr
  %t170 = call ptr @__olang_scope_alloc_a(ptr %t169, i64 24, i64 8)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t167, ptr %t170
  %t171 = load i64, ptr %l85
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = load i64, ptr %l85
  %t174 = inttoptr i64 %t173 to ptr
  %t176 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %t172, ptr %t174, ptr %t170)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l93
  br label %bb42
bb42:
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3afpath_2e0
  br i1 %t177, label %bb43, label %bb44
bb43:
  %t179 = load i64, ptr %l85
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = call ptr @__olang_region_home(ptr %t184)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  %t188 = icmp eq ptr %t187, %t180
  call void @__olang_region_settle(ptr %t180, i1 %t188)
  br label %bb44
bb44:
  %t189 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t189, ptr %l95, !tbaa !27
  %t190 = load i64, ptr %l9, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i32, ptr %t193, i64 %t190
  %t195 = load i32, ptr %t194, !tbaa !33
  %t196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  %t198 = call %"compiler/effects:fpath" @compiler_2feffects_3afpath_2ector(ptr %s6, ptr %s6, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, i32 %t195)
  store %"compiler/effects:fpath" %t198, ptr %l98
  br label %bb45
bb45:
  %t199 = load ptr, ptr %l84, !tbaa !29
  %t200 = load %"compiler/effects:fpath", ptr %l98
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ePush_3ccompiler_2feffects_3afpath_3e(ptr %v1, ptr %s6, ptr %t199, %"compiler/effects:fpath" %t200)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb89
bb47:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/effects:Effects", ptr %t201, i32 0, i32 0
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t206 = getelementptr %"compiler/generic:Program", ptr %t204, i32 0, i32 2
  %t207 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t207, ptr %l102, !tbaa !27
  %t208 = load i64, ptr %l9, !tbaa !24
  %t210 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr i32, ptr %t211, i64 %t208
  %t213 = load i32, ptr %t212, !tbaa !33
  %t216 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t206, i32 %t213)
  store i1 %t216, ptr %l105
  br label %bb48
bb48:
  %t217 = load i1, ptr %l105, !tbaa !21
  br i1 %t217, label %bb49, label %bb50
bb49:
  br label %bb89
bb50:
  br label %bb51
bb51:
  store %olang.scope zeroinitializer, ptr %s8
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l106, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t220, ptr %l108, !tbaa !27
  %t221 = load i64, ptr %l9, !tbaa !24
  %t223 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr i32, ptr %t224, i64 %t221
  %t226 = load i32, ptr %t225, !tbaa !33
  %t229 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estructOf(ptr %v0, ptr %t219, i32 %t226)
  store i32 %t229, ptr %l111
  br label %bb52
bb52:
  %t230 = load ptr, ptr %l106, !tbaa !29
  %t231 = load i32, ptr %l111, !tbaa !23
  %t232 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epaths(ptr %v0, ptr %s8, ptr %t230, i32 %t231)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l112
  br label %bb53
bb53:
  %t234 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e(ptr %s8, ptr %l112)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l114
  br label %bb54
bb54:
  %t235 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114
  %t236 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t235, ptr %t236
  store ptr %t236, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s9
  %t238 = load i64, ptr %l11, !tbaa !24
  store i64 %t238, ptr %l116, !tbaa !24
  %t239 = load ptr, ptr %l10, !tbaa !29
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eLen_3ccompiler_2feffects_3afpath_3e(ptr %s8, ptr %t239)
  store i64 %t241, ptr %l118
  br label %bb56
bb56:
  %t242 = load i64, ptr %l116, !tbaa !24
  %t243 = load i64, ptr %l118, !tbaa !24
  %t244 = icmp slt i64 %t242, %t243
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s9)
  br label %bb88
bb58:
  br label %bb59
bb59:
  %t248 = load ptr, ptr %l10, !tbaa !29
  %t249 = load i64, ptr %l11, !tbaa !24
  %t252 = call %"compiler/effects:fpath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eAt_3ccompiler_2feffects_3afpath_3e(ptr %s8, ptr %s8, ptr %t248, i64 %t249)
  store %"compiler/effects:fpath" %t252, ptr %l123
  br label %bb60
bb60:
  %t254 = call %"compiler/effects:fpath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afpath(ptr %s9, ptr %l123)
  store %"compiler/effects:fpath" %t254, ptr %l125
  br label %bb61
bb61:
  %t255 = load %"compiler/effects:fpath", ptr %l125
  store %"compiler/effects:fpath" %t255, ptr %l12
  %t256 = getelementptr %"compiler/effects:fpath", ptr %l12, i32 0, i32 0
  %t258 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %t256)
  store i64 %t258, ptr %l127
  br label %bb62
bb62:
  %t259 = load i64, ptr @G_2ecompiler_2feffects_2eFieldDepth, !tbaa !24
  %t260 = load i64, ptr %l127, !tbaa !24
  %t262 = icmp sge i64 %t260, %t259
  br i1 %t262, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s9)
  br label %bb87
bb64:
  br label %bb65
bb65:
  %t264 = ptrtoint ptr %s9 to i64
  store i64 %t264, ptr %l130, !tbaa !24
  %t265 = load i1, ptr @olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0
  br i1 %t265, label %bb66, label %bb67
bb66:
  %t267 = call ptr @__olang_region_make(ptr %s9)
  %t268 = ptrtoint ptr %t267 to i64
  store i64 %t268, ptr %l130, !tbaa !24
  br label %bb67
bb67:
  %t269 = load i64, ptr %l9, !tbaa !24
  %t270 = mul i64 1, 8
  %t271 = load i64, ptr %l130
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = call ptr @__olang_scope_alloc_zeroed(ptr %t272, i64 %t270)
  %t274 = insertvalue { i64, ptr } undef, i64 1, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  store { i64, ptr } %t275, ptr %l133, !tbaa !27
  %t277 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr i64, ptr %t278, i64 0
  store i64 %t269, ptr %t279, !tbaa !34
  %t280 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t281 = call %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %s9, ptr %s9, { i64, ptr } %t280)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t281, ptr %l134
  br label %bb68
bb68:
  %t282 = load %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %l134
  %t283 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 24, i64 8)
  store %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" %t282, ptr %t283
  %t285 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %s9, ptr %s9, ptr %t283)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l136
  br label %bb69
bb69:
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %l13
  %t287 = getelementptr %"compiler/effects:fpath", ptr %l12, i32 0, i32 0
  store ptr %t287, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb70
bb70:
  %t289 = load i64, ptr %l15, !tbaa !24
  store i64 %t289, ptr %l138, !tbaa !24
  %t290 = load ptr, ptr %l14, !tbaa !29
  %t292 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s9, ptr %t290)
  store i64 %t292, ptr %l140
  br label %bb71
bb71:
  %t293 = load i64, ptr %l138, !tbaa !24
  %t294 = load i64, ptr %l140, !tbaa !24
  %t295 = icmp slt i64 %t293, %t294
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb72, label %bb73
bb72:
  br label %bb78
bb73:
  br label %bb74
bb74:
  %t299 = load ptr, ptr %l14, !tbaa !29
  %t300 = load i64, ptr %l15, !tbaa !24
  %t303 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s9, ptr %t299, i64 %t300)
  store i64 %t303, ptr %l145
  br label %bb75
bb75:
  %t304 = load i64, ptr %l145, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s9, ptr %l13, i64 %t304)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t308 = load i64, ptr %l15, !tbaa !24
  %t310 = add i64 %t308, 1
  store i64 %t310, ptr %l15, !tbaa !24
  br label %bb70
bb78:
  store ptr %l2, ptr %l150, !tbaa !29
  %t312 = ptrtoint ptr %s9 to i64
  store i64 %t312, ptr %l151, !tbaa !24
  %t313 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3afpath_2e0
  br i1 %t313, label %bb79, label %bb80
bb79:
  %t315 = call ptr @__olang_region_make(ptr %s9)
  %t316 = ptrtoint ptr %t315 to i64
  store i64 %t316, ptr %l151, !tbaa !24
  br label %bb80
bb80:
  %t317 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t317, ptr %l153
  %t318 = load i64, ptr %l151
  %t319 = inttoptr i64 %t318 to ptr
  %t321 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t319, ptr %l153)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t321, ptr %l155
  br label %bb81
bb81:
  %t322 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3afpath_2e0
  br i1 %t322, label %bb82, label %bb83
bb82:
  %t324 = load i64, ptr %l151
  %t325 = inttoptr i64 %t324 to ptr
  %t326 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155, i32 0, i32 0
  %t327 = load { i64, ptr }, ptr %t326
  %t328 = extractvalue { i64, ptr } %t327, 1
  %t329 = call ptr @__olang_region_or(ptr %t328, ptr null)
  %t330 = call ptr @__olang_region_home(ptr %t329)
  %t331 = icmp ne ptr %t330, null
  %t332 = select i1 %t331, ptr %t330, ptr null
  %t333 = icmp eq ptr %t332, %t325
  call void @__olang_region_settle(ptr %t325, i1 %t333)
  br label %bb83
bb83:
  %t334 = getelementptr %"compiler/effects:fpath", ptr %l12, i32 0, i32 1
  %t335 = load i32, ptr %t334, !tbaa !23
  %t336 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  %t338 = call %"compiler/effects:fpath" @compiler_2feffects_3afpath_2ector(ptr %s9, ptr %s9, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, i32 %t335)
  store %"compiler/effects:fpath" %t338, ptr %l158
  br label %bb84
bb84:
  %t340 = call %"compiler/effects:fpath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afpath(ptr %s9, ptr %l158)
  store %"compiler/effects:fpath" %t340, ptr %l160
  br label %bb85
bb85:
  %t341 = load ptr, ptr %l150, !tbaa !29
  %t342 = load %"compiler/effects:fpath", ptr %l160
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ePush_3ccompiler_2feffects_3afpath_3e(ptr %v1, ptr %s9, ptr %t341, %"compiler/effects:fpath" %t342)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s9)
  br label %bb87
bb87:
  %t343 = load i64, ptr %l11, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l11, !tbaa !24
  br label %bb55
bb88:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb89:
  %t347 = load i64, ptr %l8, !tbaa !24
  %t349 = add i64 %t347, 1
  store i64 %t349, ptr %l8, !tbaa !24
  br label %bb26
bb90:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = getelementptr %"compiler/effects:Effects", ptr %t351, i32 0, i32 57
  store ptr %t353, ptr %l166, !tbaa !29
  %t354 = load i32, ptr %l1, !tbaa !23
  store i32 %t354, ptr %l167, !tbaa !23
  %t355 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t355, ptr %l168
  %t357 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e(ptr %s0, ptr %l168)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t357, ptr %l170
  br label %bb91
bb91:
  %t358 = load ptr, ptr %l166, !tbaa !29
  %t359 = load i32, ptr %l167, !tbaa !23
  %t360 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H23909c0b6cdd8c6a8e8461d347ccf8af(ptr %v0, ptr %s0, ptr %t358, i32 %t359, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t360)
  br label %bb92
bb92:
  %t361 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t361, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i32
  %l35 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t3 = trunc i64 29 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 23
  %t9 = getelementptr %"compiler/effects:Facts", ptr %t8, i32 0, i32 12
  store i1 true, ptr %t9, !tbaa !21
  br label %bb33
bb4:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t12 = trunc i64 30 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb14
bb7:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l15, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 0
  %t32 = load ptr, ptr %t31, !tbaa !39
  %t34 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t32)
  store i32 %t34, ptr %l21
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t35 = load ptr, ptr %l18, !tbaa !29
  %t36 = load i32, ptr %l21, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t37, ptr %l22
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l15, !tbaa !29
  %t39 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %t38, i32 %t39, i64 0)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb33
bb14:
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t42 = trunc i64 25 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t47 = trunc i64 26 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  %t50 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t52 = trunc i64 27 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  %t55 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t57 = trunc i64 28 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb28
bb23:
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb24, label %bb25
bb24:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t67, ptr %l35, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr ptr, ptr %t69, i64 0
  %t71 = load ptr, ptr %t70, !tbaa !39
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %t66, ptr %t71)
  br label %bb26
bb25:
  br label %bb27
bb26:
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
  call void @__olang_check_failed(ptr @olang_loc_31e57a958c31a5ba_705aefa950dbf3e6)
  unreachable
bb33:
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  store i64 %t78, ptr %l5, !tbaa !24
  br label %bb34
bb34:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb35, label %bb36
bb35:
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t88, ptr %l44, !tbaa !27
  %t89 = load i64, ptr %l4, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr ptr, ptr %t92, i64 %t89
  %t94 = load ptr, ptr %t93, !tbaa !39
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t96, ptr %t94)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t101 = load i64, ptr %l4, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l4, !tbaa !24
  br label %bb34
bb40:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/effects:fret"
  %l9 = alloca ptr
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i32
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca ptr
  %l25 = alloca %"compiler/effects:part"
  %l27 = alloca i64
  %l29 = alloca i64
  %l34 = alloca %"compiler/effects:fret"
  %l36 = alloca %"compiler/effects:fret"
  %l40 = alloca i1
  %l43 = alloca i64
  %l45 = alloca i64
  %l50 = alloca %"compiler/effects:part"
  %l52 = alloca %"compiler/effects:part"
  %l63 = alloca ptr
  %l67 = alloca %"compiler/effects:part"
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 59
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = getelementptr %"compiler/effects:given", ptr %t4, i32 0, i32 3
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd1c393a56f057603dea1fc43dacaf05b(ptr %v0, ptr %v0, ptr %t3, i64 %t7)
  %t11 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t10, 1
  %t12 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t10, 0
  store i32 %t12, ptr %l18
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l17
  br label %bb1
bb1:
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l20
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l3, !tbaa !29
  store ptr %t17, ptr %l21, !tbaa !29
  %t18 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/effects:given", ptr %t19, i32 0, i32 4
  %t22 = load i32, ptr %t21, !tbaa !23
  %t25 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v2, ptr %v2, i64 %t18, i64 0, i32 %t22, ptr null)
  store %"compiler/effects:part" %t25, ptr %l25
  br label %bb5
bb4:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l12
  br label %bb7
bb5:
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load %"compiler/effects:part", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v2, ptr %v2, ptr %t27, %"compiler/effects:part" %t28)
  br label %bb6
bb6:
  br label %ret
bb7:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l5
  store ptr %l5, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l7, !tbaa !24
  store i64 %t31, ptr %l27, !tbaa !24
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2eLen_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l29
  br label %bb9
bb9:
  %t35 = load i64, ptr %l27, !tbaa !24
  %t36 = load i64, ptr %l29, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb30
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = call %"compiler/effects:fret" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2eAt_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %v0, ptr %t41, i64 %t42)
  store %"compiler/effects:fret" %t45, ptr %l34
  br label %bb13
bb13:
  %t47 = call %"compiler/effects:fret" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afret(ptr %v0, ptr %l34)
  store %"compiler/effects:fret" %t47, ptr %l36
  br label %bb14
bb14:
  %t48 = load %"compiler/effects:fret", ptr %l36
  store %"compiler/effects:fret" %t48, ptr %l8
  %t49 = getelementptr %"compiler/effects:fret", ptr %l8, i32 0, i32 0
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/effects:given", ptr %t50, i32 0, i32 5
  %t55 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %v0, ptr %v1, ptr %t49, ptr %t52)
  store i1 %t55, ptr %l40
  br label %bb15
bb15:
  %t56 = load i1, ptr %l40, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb16, label %bb17
bb16:
  br label %bb29
bb17:
  br label %bb18
bb18:
  %t59 = getelementptr %"compiler/effects:fret", ptr %l8, i32 0, i32 1
  store ptr %t59, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t61 = load i64, ptr %l10, !tbaa !24
  store i64 %t61, ptr %l43, !tbaa !24
  %t62 = load ptr, ptr %l9, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l45
  br label %bb20
bb20:
  %t65 = load i64, ptr %l43, !tbaa !24
  %t66 = load i64, ptr %l45, !tbaa !24
  %t67 = icmp slt i64 %t65, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb21, label %bb22
bb21:
  br label %bb28
bb22:
  br label %bb23
bb23:
  %t71 = load ptr, ptr %l9, !tbaa !29
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store %"compiler/effects:part" %t75, ptr %l50
  br label %bb24
bb24:
  %t77 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %l50)
  store %"compiler/effects:part" %t77, ptr %l52
  br label %bb25
bb25:
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t78, ptr %lp11
  %t79 = load %"compiler/effects:part", ptr %l52
  %t80 = load ptr, ptr %lp11
  store %"compiler/effects:part" %t79, ptr %t80
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t84 = load ptr, ptr %lp11
  %t85 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresPart(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t81, i64 %a1, ptr %t83, ptr %t84, ptr %t85, i64 %a4)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l10, !tbaa !24
  br label %bb19
bb28:
  br label %ret
bb29:
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l7, !tbaa !24
  br label %bb8
bb30:
  %t101 = load ptr, ptr %l3, !tbaa !29
  store ptr %t101, ptr %l63, !tbaa !29
  %t102 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = getelementptr %"compiler/effects:given", ptr %t103, i32 0, i32 4
  %t106 = load i32, ptr %t105, !tbaa !23
  %t109 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v2, ptr %v2, i64 %t102, i64 0, i32 %t106, ptr null)
  store %"compiler/effects:part" %t109, ptr %l67
  br label %bb31
bb31:
  %t110 = load ptr, ptr %l63, !tbaa !29
  %t111 = load %"compiler/effects:part", ptr %l67
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v2, ptr %v2, ptr %t110, %"compiler/effects:part" %t111)
  br label %bb32
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/effects:part"
  %l6 = alloca i64
  %l7 = alloca %"compiler/effects:given"
  %l8 = alloca { i64, ptr }
  %l13 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l25 = alloca i64
  %l28 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/effects:part"
  %l50 = alloca %"compiler/effects:part"
  %l55 = alloca i1
  %l63 = alloca i1
  %l70 = alloca i1
  %l81 = alloca %"compiler/effects:given"
  %l82 = alloca i64
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca i64
  %l107 = alloca ptr
  %l110 = alloca ptr
  %l115 = alloca i32
  %l116 = alloca %"compiler/effects:Facts"
  %l122 = alloca ptr
  %l127 = alloca %"compiler/effects:Facts"
  %l132 = alloca i1
  %l137 = alloca ptr
  %l141 = alloca %"compiler/effects:given"
  %l145 = alloca i1
  %l147 = alloca i1
  %l150 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l154 = alloca %"compiler/source:Span"
  %l156 = alloca i1
  %l157 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/effects:pend", ptr %t5, i32 0, i32 3
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t7)
  store i64 %t9, ptr %l13
  br label %bb2
bb2:
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp sgt i64 %t10, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l15, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/effects:pend", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l17, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/effects:pend", ptr %t18, i32 0, i32 3
  store ptr %t20, ptr %l19, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l20, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 24
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/effects:pend", ptr %t25, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t24, i64 %t28)
  store i64 %t31, ptr %l25
  br label %bb5
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/effects:pend", ptr %t33, i32 0, i32 2
  %t36 = load ptr, ptr %t35, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassify(ptr %v0, ptr %v1, ptr %t32, ptr %t36, i64 0)
  br label %bb8
bb5:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/effects:pend", ptr %t40, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t47 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t44, i64 %t45, i64 %t43)
  store i32 %t47, ptr %l28
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l15, !tbaa !29
  %t49 = load ptr, ptr %l17, !tbaa !29
  %t50 = load ptr, ptr %l19, !tbaa !29
  %t51 = load i32, ptr %l28, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v1, ptr %v1, ptr %t48, ptr %t49, ptr %t50, i32 %t51, i64 0)
  br label %bb7
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/effects:Effects", ptr %t52, i32 0, i32 47
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp ne i64 %t55, 0
  br i1 %t57, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t59)
  store i1 %t61, ptr %l38
  br label %bb12
bb11:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb13
bb12:
  %t62 = load i1, ptr %l38, !tbaa !21
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t63 = load i1, ptr %l36, !tbaa !21
  store i1 %t63, ptr %l2, !tbaa !21
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/effects:Effects", ptr %t64, i32 0, i32 36
  store ptr %t66, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l4, !tbaa !24
  store i64 %t68, ptr %l41, !tbaa !24
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l43
  br label %bb15
bb15:
  %t72 = load i64, ptr %l41, !tbaa !24
  %t73 = load i64, ptr %l43, !tbaa !24
  %t74 = icmp slt i64 %t72, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb16, label %bb17
bb16:
  br label %bb72
bb17:
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t79 = load i64, ptr %l4, !tbaa !24
  %t82 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store %"compiler/effects:part" %t82, ptr %l48
  br label %bb19
bb19:
  %t84 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %l48)
  store %"compiler/effects:part" %t84, ptr %l50
  br label %bb20
bb20:
  %t85 = load %"compiler/effects:part", ptr %l50
  store %"compiler/effects:part" %t85, ptr %l5
  %t86 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !24
  store i64 %t87, ptr %l6, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t90 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  %t93 = icmp eq i64 %t89, %t90
  br i1 %t93, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb23
bb22:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  store i1 %t99, ptr %l55, !tbaa !21
  br label %bb23
bb23:
  %t101 = load i1, ptr %l55, !tbaa !21
  br i1 %t101, label %bb24, label %bb25
bb24:
  %t102 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t108 = icmp eq i64 %t104, %t105
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t110 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = icmp sge i64 %t111, 63
  store i1 %t113, ptr %l63, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb29
bb29:
  %t115 = load i1, ptr %l63, !tbaa !21
  br i1 %t115, label %bb30, label %bb31
bb30:
  %t116 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  store i64 %t116, ptr %l6, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr %"compiler/effects:pend", ptr %t118, i32 0, i32 0
  %t121 = load i64, ptr %t120, !tbaa !24
  %t123 = icmp sge i64 %t121, 0
  br i1 %t123, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb35
bb34:
  %t125 = load i64, ptr %l6, !tbaa !24
  %t126 = load i64, ptr @G_2ecompiler_2feffects_2eGivResField, !tbaa !24
  %t129 = icmp eq i64 %t125, %t126
  store i1 %t129, ptr %l70, !tbaa !21
  br label %bb35
bb35:
  %t131 = load i1, ptr %l70, !tbaa !21
  br i1 %t131, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr %"compiler/effects:pend", ptr %t132, i32 0, i32 0
  %t135 = load i64, ptr %t134, !tbaa !24
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr %"compiler/effects:pend", ptr %t136, i32 0, i32 1
  %t139 = load i64, ptr %t138, !tbaa !24
  %t140 = load i64, ptr %l6, !tbaa !24
  %t141 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 2
  %t144 = load i32, ptr %t143, !tbaa !23
  %t150 = call %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %s7, i64 %t135, i64 %t139, i64 %t140, i64 %t142, i32 %t144)
  store %"compiler/effects:given" %t150, ptr %l81
  br label %bb38
bb37:
  br label %bb47
bb38:
  %t151 = load %"compiler/effects:given", ptr %l81
  store %"compiler/effects:given" %t151, ptr %l7
  %t152 = ptrtoint ptr %s7 to i64
  store i64 %t152, ptr %l82, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3agiven_2e5
  br i1 %t153, label %bb39, label %bb40
bb39:
  %t155 = call ptr @__olang_region_make(ptr %s7)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l82, !tbaa !24
  br label %bb40
bb40:
  %t157 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 4
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t157
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l84
  %t159 = load i64, ptr %l82
  %t160 = inttoptr i64 %t159 to ptr
  %t162 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t160, ptr %l84)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l86
  br label %bb41
bb41:
  %t163 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3agiven_2e5
  br i1 %t163, label %bb42, label %bb43
bb42:
  %t165 = load i64, ptr %l82
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = call ptr @__olang_region_home(ptr %t170)
  %t172 = icmp ne ptr %t171, null
  %t173 = select i1 %t172, ptr %t171, ptr null
  %t174 = icmp eq ptr %t173, %t166
  call void @__olang_region_settle(ptr %t166, i1 %t174)
  br label %bb43
bb43:
  %t175 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 5
  %t176 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t175
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l88
  %t177 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  %t178 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %t178
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3agiven_2e5
  br i1 %t179, label %bb44, label %bb45
bb44:
  %t181 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = call ptr @__olang_region_home(ptr %t184)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  call void @__olang_region_drop(ptr %t187)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l88
  br label %bb45
bb45:
  %t188 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 5
  %t189 = load i64, ptr %t188, !tbaa !24
  %t191 = getelementptr %"compiler/effects:given", ptr %l7, i32 0, i32 6
  store i64 %t189, ptr %t191, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/effects:Effects", ptr %t192, i32 0, i32 28
  %t195 = load %"compiler/effects:given", ptr %l7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ePush_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %s7, ptr %t194, %"compiler/effects:given" %t195)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb47:
  %t198 = load i64, ptr %l6, !tbaa !24
  %t199 = load i64, ptr @G_2ecompiler_2feffects_2eGivSlot, !tbaa !24
  %t202 = icmp eq i64 %t198, %t199
  br i1 %t202, label %bb48, label %bb49
bb48:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l97, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/effects:Effects", ptr %t205, i32 0, i32 23
  %t208 = getelementptr %"compiler/effects:Facts", ptr %t207, i32 0, i32 22
  %t209 = load i64, ptr %t208, !tbaa !24
  store i64 %t209, ptr %l99, !tbaa !24
  %t210 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  %t213 = call i64 @compiler_2feffects_2eparamBit(i64 %t211)
  store i64 %t213, ptr %l101
  br label %bb50
bb49:
  %t214 = load i64, ptr %l6, !tbaa !24
  %t215 = load i64, ptr @G_2ecompiler_2feffects_2eGivBound, !tbaa !24
  %t218 = icmp eq i64 %t214, %t215
  br i1 %t218, label %bb57, label %bb58
bb50:
  %t220 = load i64, ptr %l99, !tbaa !24
  %t221 = load i64, ptr %l101, !tbaa !24
  %t222 = or i64 %t220, %t221
  %t224 = load ptr, ptr %l97, !tbaa !29
  %t225 = getelementptr %"compiler/effects:Effects", ptr %t224, i32 0, i32 23
  %t226 = getelementptr %"compiler/effects:Facts", ptr %t225, i32 0, i32 22
  store i64 %t222, ptr %t226, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/effects:Effects", ptr %t227, i32 0, i32 47
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = icmp ne i64 %t230, 0
  br i1 %t232, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s9
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/effects:Effects", ptr %t234, i32 0, i32 23
  store ptr %t236, ptr %l107, !tbaa !29
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/effects:Effects", ptr %t237, i32 0, i32 0
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = getelementptr %"compiler/generic:Program", ptr %t240, i32 0, i32 2
  store ptr %t242, ptr %l110, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/effects:Effects", ptr %t244, i32 0, i32 33
  %t247 = load i64, ptr %t246, !tbaa !24
  %t248 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t249 = load i64, ptr %t248, !tbaa !24
  %t253 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %t243, i64 %t247, i64 %t249)
  store i32 %t253, ptr %l115
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t254 = load ptr, ptr %l110, !tbaa !29
  %t255 = load i32, ptr %l115, !tbaa !23
  %t256 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t254, i32 %t255)
  store %"compiler/effects:Facts" %t256, ptr %l116
  br label %bb54
bb54:
  %t257 = load ptr, ptr %l107, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s9, ptr %t257, ptr %l116)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s9)
  br label %bb56
bb56:
  br label %bb70
bb57:
  store %olang.scope zeroinitializer, ptr %s11
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/effects:Effects", ptr %t259, i32 0, i32 23
  store ptr %t261, ptr %l122, !tbaa !29
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/effects:Effects", ptr %t262, i32 0, i32 0
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/generic:Program", ptr %t265, i32 0, i32 2
  %t268 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 2
  %t269 = load i32, ptr %t268, !tbaa !23
  %t272 = call %"compiler/effects:Facts" @compiler_2feffects_2eFacts_2eBound(ptr %v0, ptr %t267, i32 %t269)
  store %"compiler/effects:Facts" %t272, ptr %l127
  br label %bb59
bb58:
  %t273 = load i64, ptr %l6, !tbaa !24
  %t274 = load i64, ptr @G_2ecompiler_2feffects_2eGivNamed, !tbaa !24
  %t277 = icmp eq i64 %t273, %t274
  br i1 %t277, label %bb61, label %bb62
bb59:
  %t279 = load ptr, ptr %l122, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s11, ptr %t279, ptr %l127)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s11)
  br label %bb69
bb61:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb63
bb62:
  %t281 = load i64, ptr %l6, !tbaa !24
  %t282 = load i64, ptr @G_2ecompiler_2feffects_2eGivResult, !tbaa !24
  %t285 = icmp eq i64 %t281, %t282
  store i1 %t285, ptr %l132, !tbaa !21
  br label %bb63
bb63:
  %t287 = load i1, ptr %l132, !tbaa !21
  br i1 %t287, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s13
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/effects:Effects", ptr %t288, i32 0, i32 28
  store ptr %t290, ptr %l137, !tbaa !29
  %t291 = load i64, ptr %l6, !tbaa !24
  %t292 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 1
  %t293 = load i64, ptr %t292, !tbaa !24
  %t294 = getelementptr %"compiler/effects:part", ptr %l5, i32 0, i32 2
  %t295 = load i32, ptr %t294, !tbaa !23
  %t299 = call %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %s13, i64 -1, i64 0, i64 %t291, i64 %t293, i32 %t295)
  store %"compiler/effects:given" %t299, ptr %l141
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t300 = load ptr, ptr %l137, !tbaa !29
  %t301 = load %"compiler/effects:given", ptr %l141
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ePush_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %s13, ptr %t300, %"compiler/effects:given" %t301)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s13)
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t302 = load i64, ptr %l4, !tbaa !24
  %t304 = add i64 %t302, 1
  store i64 %t304, ptr %l4, !tbaa !24
  br label %bb14
bb72:
  %t306 = load i1, ptr %l2, !tbaa !21
  br i1 %t306, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb76
bb74:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t308)
  store i1 %t310, ptr %l147
  br label %bb75
bb75:
  %t311 = load i1, ptr %l147, !tbaa !21
  %t312 = xor i1 %t311, true
  store i1 %t312, ptr %l145, !tbaa !21
  br label %bb76
bb76:
  %t314 = load i1, ptr %l145, !tbaa !21
  br i1 %t314, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb78:
  br label %bb79
bb79:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %s0, ptr %t315)
  store { i64, ptr } %t317, ptr %l150
  br label %bb80
bb80:
  %t318 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t318, ptr %l8, !tbaa !27
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l151, !tbaa !29
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = getelementptr %"compiler/effects:pend", ptr %t320, i32 0, i32 2
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t325 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t323)
  store %"compiler/source:Span" %t325, ptr %l154
  br label %bb81
bb81:
  %t326 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t326, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t328, ptr %l156
  br label %bb82
bb82:
  %t329 = load i1, ptr %l156, !tbaa !21
  br i1 %t329, label %bb83, label %bb84
bb83:
  store { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l157, !tbaa !27
  br label %bb85
bb84:
  %t330 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t331 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t334 = extractvalue { i64, ptr } %t330, 1
  %t335 = extractvalue { i64, ptr } %t330, 0
  %t336 = add i64 %t332, %t335
  %t337 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t336)
  call void @olang_textcopy(ptr %t337, ptr %t331, i64 %t332)
  %t338 = getelementptr i8, ptr %t337, i64 %t332
  call void @olang_textcopy(ptr %t338, ptr %t334, i64 %t335)
  %t339 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t337, 1
  %t342 = extractvalue { i64, ptr } %t340, 0
  %t343 = extractvalue { i64, ptr } %t340, 1
  %t344 = mul i64 %t342, 1
  %t345 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t344)
  call void @llvm.memcpy.p0.p0.i64(ptr %t345, ptr %t343, i64 %t344, i1 false)
  %t346 = insertvalue { i64, ptr } undef, i64 %t342, 0
  %t347 = insertvalue { i64, ptr } %t346, ptr %t345, 1
  store { i64, ptr } %t347, ptr %l157, !tbaa !27
  br label %bb85
bb85:
  %t349 = load ptr, ptr %l151, !tbaa !29
  %t350 = load %"compiler/source:Span", ptr %l154
  %t351 = load { i64, ptr }, ptr %l157, !tbaa !27
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %s0, ptr %t349, %"compiler/source:Span" %t350, { i64, ptr } %t351)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretFields(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/effects:fpath"
  %l6 = alloca ptr
  %l7 = alloca i64
  %lp9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/effects:part"
  %l13 = alloca i64
  %lp14 = alloca ptr
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca %"compiler/effects:fpath"
  %l42 = alloca %"compiler/effects:fpath"
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca ptr
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca %"compiler/effects:part"
  %l73 = alloca %"compiler/effects:part"
  %l78 = alloca i1
  %l86 = alloca %"compiler/effects:part"
  %l87 = alloca i64
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca ptr
  %l101 = alloca i64
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca %"compiler/effects:fret"
  %l110 = alloca %"compiler/effects:fret"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l17, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l20, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/effects:Effects", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l24
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l24, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t24 = load ptr, ptr %l20, !tbaa !29
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t24, i32 %t23)
  store i32 %t26, ptr %l27
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = load i32, ptr %l27, !tbaa !23
  %t29 = call i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estructOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t29, ptr %l28
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i32, ptr %l28, !tbaa !23
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2epaths(ptr %v0, ptr %s1, ptr %t30, i32 %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l29
  br label %bb5
bb5:
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e(ptr %s1, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l31
  br label %bb6
bb6:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t36 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  store ptr %t36, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load i64, ptr %l4, !tbaa !24
  store i64 %t38, ptr %l33, !tbaa !24
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eLen_3ccompiler_2feffects_3afpath_3e(ptr %s1, ptr %t39)
  store i64 %t41, ptr %l35
  br label %bb8
bb8:
  %t42 = load i64, ptr %l33, !tbaa !24
  %t43 = load i64, ptr %l35, !tbaa !24
  %t44 = icmp slt i64 %t42, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb58
bb10:
  br label %bb11
bb11:
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = call %"compiler/effects:fpath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eAt_3ccompiler_2feffects_3afpath_3e(ptr %s1, ptr %s1, ptr %t48, i64 %t49)
  store %"compiler/effects:fpath" %t52, ptr %l40
  br label %bb12
bb12:
  %t54 = call %"compiler/effects:fpath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afpath(ptr %s2, ptr %l40)
  store %"compiler/effects:fpath" %t54, ptr %l42
  br label %bb13
bb13:
  %t55 = load %"compiler/effects:fpath", ptr %l42
  store %"compiler/effects:fpath" %t55, ptr %l5
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Effects", ptr %t56, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t58)
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/effects:Effects", ptr %t60, i32 0, i32 44
  store ptr %t62, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l7, !tbaa !24
  store i64 %t64, ptr %l47, !tbaa !24
  %t65 = load ptr, ptr %l6, !tbaa !29
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l49
  br label %bb16
bb16:
  %t68 = load i64, ptr %l47, !tbaa !24
  %t69 = load i64, ptr %l49, !tbaa !24
  %t70 = icmp slt i64 %t68, %t69
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l6, !tbaa !29
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l54
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l54, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/effects:fpath", ptr %l5, i32 0, i32 0
  %t83 = getelementptr %"compiler/effects:fpath", ptr %l5, i32 0, i32 1
  %t84 = load i32, ptr %t83, !tbaa !23
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInst(ptr %v0, ptr %v0, ptr %s2, ptr %t80, ptr %t79, ptr %t82, i32 %t84, i64 0)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l7, !tbaa !24
  br label %bb15
bb23:
  %t93 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l61
  br label %bb24
bb24:
  %t94 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t94, ptr %lp9
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  %t96 = load ptr, ptr %lp9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 36
  store ptr %t99, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb25
bb25:
  %t101 = load i64, ptr %l11, !tbaa !24
  store i64 %t101, ptr %l64, !tbaa !24
  %t102 = load ptr, ptr %l10, !tbaa !29
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t102)
  store i64 %t104, ptr %l66
  br label %bb26
bb26:
  %t105 = load i64, ptr %l64, !tbaa !24
  %t106 = load i64, ptr %l66, !tbaa !24
  %t107 = icmp slt i64 %t105, %t106
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb27, label %bb28
bb27:
  br label %bb48
bb28:
  br label %bb29
bb29:
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t112 = load i64, ptr %l11, !tbaa !24
  %t115 = call %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t111, i64 %t112)
  store %"compiler/effects:part" %t115, ptr %l71
  br label %bb30
bb30:
  %t117 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %l71)
  store %"compiler/effects:part" %t117, ptr %l73
  br label %bb31
bb31:
  %t118 = load %"compiler/effects:part", ptr %l73
  store %"compiler/effects:part" %t118, ptr %l12
  %t119 = getelementptr %"compiler/effects:part", ptr %l12, i32 0, i32 0
  %t120 = load i64, ptr %t119, !tbaa !24
  store i64 %t120, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l13, !tbaa !24
  %t123 = load i64, ptr @G_2ecompiler_2feffects_2ePartLambda, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  br i1 %t126, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb34
bb33:
  %t128 = load i64, ptr %l13, !tbaa !24
  %t129 = load i64, ptr @G_2ecompiler_2feffects_2ePartAdapter, !tbaa !24
  %t132 = icmp eq i64 %t128, %t129
  store i1 %t132, ptr %l78, !tbaa !21
  br label %bb34
bb34:
  %t134 = load i1, ptr %l78, !tbaa !21
  br i1 %t134, label %bb35, label %bb36
bb35:
  %t135 = load i64, ptr @G_2ecompiler_2feffects_2eGivMade, !tbaa !24
  store i64 %t135, ptr %l13, !tbaa !24
  br label %bb37
bb36:
  br label %bb37
bb37:
  %t137 = load i64, ptr %l13, !tbaa !24
  %t138 = getelementptr %"compiler/effects:part", ptr %l12, i32 0, i32 1
  %t139 = load i64, ptr %t138, !tbaa !24
  %t140 = getelementptr %"compiler/effects:part", ptr %l12, i32 0, i32 2
  %t141 = load i32, ptr %t140, !tbaa !23
  %t145 = call %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v0, i64 %t137, i64 %t139, i32 %t141, ptr null)
  store %"compiler/effects:part" %t145, ptr %l86
  br label %bb38
bb38:
  %t146 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store ptr %t146, ptr %lp14
  %t147 = load %"compiler/effects:part", ptr %l86
  %t148 = load ptr, ptr %lp14
  store %"compiler/effects:part" %t147, ptr %t148
  %t149 = ptrtoint ptr %v0 to i64
  store i64 %t149, ptr %l87, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apart_2e4
  br i1 %t150, label %bb39, label %bb40
bb39:
  %t152 = call ptr @__olang_region_make(ptr %v0)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l87, !tbaa !24
  br label %bb40
bb40:
  %t154 = getelementptr %"compiler/effects:part", ptr %l12, i32 0, i32 4
  %t155 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %l89
  %t156 = load i64, ptr %l87
  %t157 = inttoptr i64 %t156 to ptr
  %t159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t157, ptr %l89)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l91
  br label %bb41
bb41:
  %t160 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apart_2e4
  br i1 %t160, label %bb42, label %bb43
bb42:
  %t162 = load i64, ptr %l87
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91, i32 0, i32 0
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = call ptr @__olang_region_home(ptr %t167)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr null
  %t171 = icmp eq ptr %t170, %t163
  call void @__olang_region_settle(ptr %t163, i1 %t171)
  br label %bb43
bb43:
  %t172 = load ptr, ptr %lp14
  %t173 = getelementptr %"compiler/effects:part", ptr %t172, i32 0, i32 4
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t173
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l93
  %t175 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t176 = load ptr, ptr %lp14
  %t177 = getelementptr %"compiler/effects:part", ptr %t176, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t175, ptr %t177
  %t178 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3apart_2e4
  br i1 %t178, label %bb44, label %bb45
bb44:
  %t180 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93, i32 0, i32 0
  %t181 = load { i64, ptr }, ptr %t180
  %t182 = extractvalue { i64, ptr } %t181, 1
  %t183 = call ptr @__olang_region_or(ptr %t182, ptr null)
  %t184 = call ptr @__olang_region_home(ptr %t183)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr null
  call void @__olang_region_drop(ptr %t186)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l93
  br label %bb45
bb45:
  %t187 = getelementptr %"compiler/effects:part", ptr %l12, i32 0, i32 5
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = load ptr, ptr %lp14
  %t191 = getelementptr %"compiler/effects:part", ptr %t190, i32 0, i32 5
  store i64 %t188, ptr %t191, !tbaa !24
  %t192 = load ptr, ptr %lp9
  %t193 = load ptr, ptr %lp14
  %t194 = load %"compiler/effects:part", ptr %t193
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v0, ptr %t192, %"compiler/effects:part" %t194)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t197 = load i64, ptr %l11, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l11, !tbaa !24
  br label %bb25
bb48:
  %t201 = load ptr, ptr %lp2
  store ptr %t201, ptr %l100, !tbaa !29
  %t202 = ptrtoint ptr %v0 to i64
  store i64 %t202, ptr %l101, !tbaa !24
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3afret_2e0
  br i1 %t203, label %bb49, label %bb50
bb49:
  %t205 = call ptr @__olang_region_make(ptr %v0)
  %t206 = ptrtoint ptr %t205 to i64
  store i64 %t206, ptr %l101, !tbaa !24
  br label %bb50
bb50:
  %t207 = getelementptr %"compiler/effects:fpath", ptr %l5, i32 0, i32 0
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t207
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l103
  %t209 = load i64, ptr %l101
  %t210 = inttoptr i64 %t209 to ptr
  %t212 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t210, ptr %l103)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l105
  br label %bb51
bb51:
  %t213 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3afret_2e0
  br i1 %t213, label %bb52, label %bb53
bb52:
  %t215 = load i64, ptr %l101
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105, i32 0, i32 0
  %t218 = load { i64, ptr }, ptr %t217
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = call ptr @__olang_region_or(ptr %t219, ptr null)
  %t221 = call ptr @__olang_region_home(ptr %t220)
  %t222 = icmp ne ptr %t221, null
  %t223 = select i1 %t222, ptr %t221, ptr null
  %t224 = icmp eq ptr %t223, %t216
  call void @__olang_region_settle(ptr %t216, i1 %t224)
  br label %bb53
bb53:
  %t225 = load ptr, ptr %lp9
  %t226 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t225
  %t227 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  %t229 = call %"compiler/effects:fret" @compiler_2feffects_3afret_2ector(ptr %v0, ptr %v0, ptr %v0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t227, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226)
  store %"compiler/effects:fret" %t229, ptr %l108
  br label %bb54
bb54:
  %t231 = call %"compiler/effects:fret" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afret(ptr %s2, ptr %l108)
  store %"compiler/effects:fret" %t231, ptr %l110
  br label %bb55
bb55:
  %t232 = load ptr, ptr %l100, !tbaa !29
  %t233 = load %"compiler/effects:fret", ptr %l110
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2ePush_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %v0, ptr %t232, %"compiler/effects:fret" %t233)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s2)
  br label %bb57
bb57:
  %t234 = load i64, ptr %l4, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l4, !tbaa !24
  br label %bb7
bb58:
  call void @__olang_scope_close(ptr %s1)
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/effects:Effects", ptr %t238, i32 0, i32 59
  %t241 = load i64, ptr %l1, !tbaa !24
  %t242 = load ptr, ptr %lp2
  %t243 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t242
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc7f0d5e54ac63fdc8f930fd93d6364c9(ptr %v0, ptr %v0, ptr %t240, i64 %t241, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243)
  br label %bb59
bb59:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca i64
  %l26 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca i64
  %l41 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i1
  %l57 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca ptr
  %l73 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i32
  %l87 = alloca i64
  %l88 = alloca i64
  %l92 = alloca i64
  %l93 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t7 = load ptr, ptr %l15, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l15, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 11
  store i1 %t13, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l16, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Cond", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Cond", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb15
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e883a08fe0a2dfcb_10d50552a173805f)
  unreachable
bb12:
  br label %bb13
bb13:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Cond", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t48 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t45, ptr %t41, i64 %t44)
  store i64 %t48, ptr %l34
  br label %bb14
bb14:
  %t49 = load i64, ptr %l34, !tbaa !24
  store i64 %t49, ptr %l25, !tbaa !24
  br label %bb15
bb15:
  %t50 = load i64, ptr %l25, !tbaa !24
  store i64 %t50, ptr %l35, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Cond", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t59 = add i64 %t57, 1
  %t63 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t52, ptr %t56, i64 %t59)
  store i64 %t63, ptr %l41
  br label %bb16
bb16:
  %t64 = load i64, ptr %l35, !tbaa !24
  %t65 = load i64, ptr %l41, !tbaa !24
  %t66 = or i64 %t64, %t65
  store i64 %t66, ptr %rv
  br label %ret
bb17:
  %t68 = load ptr, ptr %l1, !tbaa !29
  store ptr %t68, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb18, label %bb19
bb18:
  %t72 = load ptr, ptr %l43, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 18}
  %t75 = icmp eq i64 %t73, 13
  store i1 %t75, ptr %l44, !tbaa !21
  br label %bb19
bb19:
  %t76 = load i1, ptr %l44, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb36
bb22:
  store i64 0, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Match", ptr %t83, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb24, label %bb25
bb24:
  br label %bb35
bb25:
  br label %bb26
bb26:
  %t100 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t100, ptr %l57, !tbaa !27
  %t101 = load i64, ptr %l8, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr ptr, ptr %t104, i64 %t101
  %t106 = load ptr, ptr %t105, !tbaa !39
  store ptr %t106, ptr %l10, !tbaa !29
  %t108 = load ptr, ptr %l10, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Arm", ptr %t108, i32 0, i32 4
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb27, label %bb28
bb27:
  %t117 = load i64, ptr %l6, !tbaa !24
  store i64 %t117, ptr %l64, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l65, !tbaa !29
  %t119 = load ptr, ptr %l10, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Arm", ptr %t119, i32 0, i32 4
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  br i1 %t124, label %bb29, label %bb30
bb28:
  br label %bb33
bb29:
  call void @__olang_check_failed(ptr @olang_loc_be89c63eecba24dc_20b8a06f464464c0)
  unreachable
bb30:
  br label %bb31
bb31:
  %t126 = load ptr, ptr %l10, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Arm", ptr %t126, i32 0, i32 4
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load i64, ptr %l2, !tbaa !24
  %t132 = add i64 %t130, 1
  %t133 = load ptr, ptr %l65, !tbaa !29
  %t136 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2erootBits(ptr %v0, ptr %v1, ptr %t133, ptr %t129, i64 %t132)
  store i64 %t136, ptr %l73
  br label %bb32
bb32:
  %t137 = load i64, ptr %l64, !tbaa !24
  %t138 = load i64, ptr %l73, !tbaa !24
  %t139 = or i64 %t137, %t138
  store i64 %t139, ptr %l6, !tbaa !24
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l8, !tbaa !24
  br label %bb23
bb35:
  %t145 = load i64, ptr %l6, !tbaa !24
  store i64 %t145, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_da29f57e967b0d58_398b0b5997e9910c)
  unreachable
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t151 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %t147, ptr %t148)
  store i64 %t151, ptr %l80
  br label %bb42
bb42:
  %t152 = load i64, ptr %l80, !tbaa !24
  store i64 %t152, ptr %l11, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/effects:Effects", ptr %t153, i32 0, i32 29
  %t156 = load i64, ptr %l11, !tbaa !24
  %t159 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t155, i64 %t156)
  %t160 = extractvalue { i32, i64 } %t159, 1
  %t161 = extractvalue { i32, i64 } %t159, 0
  store i32 %t161, ptr %l86
  %t162 = icmp ne i32 %t161, 0
  br i1 %t162, label %bb44, label %ok.163, !prof !99
ok.163:
  store i64 %t160, ptr %l85
  br label %bb43
bb43:
  %t164 = load i64, ptr %l85, !tbaa !24
  store i64 %t164, ptr %l81, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l81, !tbaa !24
  br label %bb46
bb46:
  %t165 = load i64, ptr %l81, !tbaa !24
  %t166 = call i64 @compiler_2feffects_2eparamBit(i64 %t165)
  store i64 %t166, ptr %l87
  br label %bb47
bb47:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/effects:Effects", ptr %t167, i32 0, i32 30
  %t170 = load i64, ptr %l11, !tbaa !24
  %t173 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t169, i64 %t170)
  %t174 = extractvalue { i32, i64 } %t173, 1
  %t175 = extractvalue { i32, i64 } %t173, 0
  store i32 %t175, ptr %l93
  %t176 = icmp ne i32 %t175, 0
  br i1 %t176, label %bb49, label %ok.177, !prof !99
ok.177:
  store i64 %t174, ptr %l92
  br label %bb48
bb48:
  %t178 = load i64, ptr %l92, !tbaa !24
  store i64 %t178, ptr %l88, !tbaa !24
  br label %bb51
bb49:
  br label %bb50
bb50:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb51
bb51:
  %t179 = load i64, ptr %l87, !tbaa !24
  %t180 = load i64, ptr %l88, !tbaa !24
  %t181 = or i64 %t179, %t180
  store i64 %t181, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
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
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l58 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca i1
  %l75 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca i1
  %l99 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l131 = alloca ptr
  %l132 = alloca i1
  %l144 = alloca ptr
  %l145 = alloca i1
  %l161 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l186 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i1
  %l210 = alloca { i64, ptr }
  %l218 = alloca ptr
  %l219 = alloca i1
  %l235 = alloca ptr
  %l236 = alloca i1
  %l252 = alloca { i64, ptr }
  %l260 = alloca ptr
  %l261 = alloca i1
  %l273 = alloca { i64, ptr }
  %l281 = alloca ptr
  %l282 = alloca i1
  %l291 = alloca ptr
  %l292 = alloca i1
  %l308 = alloca ptr
  %l309 = alloca i1
  %l322 = alloca { i64, ptr }
  %l325 = alloca ptr
  %l326 = alloca i1
  %l336 = alloca ptr
  %l337 = alloca i1
  %l342 = alloca ptr
  %l343 = alloca i1
  %l348 = alloca ptr
  %l349 = alloca i1
  %l356 = alloca ptr
  %l357 = alloca i1
  %l360 = alloca i1
  %l362 = alloca ptr
  %l363 = alloca i1
  %l376 = alloca { i64, ptr }
  %l385 = alloca ptr
  %l386 = alloca i1
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t6 = load ptr, ptr %l61, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l61, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 12
  store i1 %t12, ptr %l62, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l62, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Seq", ptr %t20, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l75, !tbaa !27
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  %t45 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanStmt(ptr %v0, ptr %v1, ptr %t45, ptr %t43)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l4, !tbaa !24
  br label %bb9
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Seq", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t53, ptr %t57)
  br label %bb16
bb16:
  br label %bb213
bb17:
  %t60 = load ptr, ptr %l1, !tbaa !29
  store ptr %t60, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t61 = load ptr, ptr %l85, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t64 = load ptr, ptr %l85, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 18}
  %t67 = icmp eq i64 %t65, 13
  store i1 %t67, ptr %l86, !tbaa !21
  br label %bb19
bb19:
  %t68 = load i1, ptr %l86, !tbaa !21
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [5 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb44
bb22:
  %t75 = load ptr, ptr %l7, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Match", ptr %t75, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  store i64 %t82, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  %t84 = load i64, ptr %l9, !tbaa !24
  %t85 = load i64, ptr %l10, !tbaa !24
  %t88 = icmp slt i64 %t84, %t85
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t92 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t92, ptr %l99, !tbaa !27
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr ptr, ptr %t96, i64 %t93
  %t98 = load ptr, ptr %t97, !tbaa !39
  %t100 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanStmt(ptr %v0, ptr %v1, ptr %t100, ptr %t98)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l9, !tbaa !24
  br label %bb23
bb29:
  %t108 = load ptr, ptr %l7, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Match", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  store i64 %t115, ptr %l14, !tbaa !24
  br label %bb30
bb30:
  %t117 = load i64, ptr %l13, !tbaa !24
  %t118 = load i64, ptr %l14, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t125 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t125, ptr %l114, !tbaa !27
  %t126 = load i64, ptr %l13, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr ptr, ptr %t129, i64 %t126
  %t131 = load ptr, ptr %t130, !tbaa !39
  %t133 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanArm(ptr %v0, ptr %v1, ptr %t133, ptr %t131)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t137 = load i64, ptr %l13, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l13, !tbaa !24
  br label %bb30
bb36:
  %t141 = load ptr, ptr %l7, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Match", ptr %t141, i32 0, i32 2
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb37, label %bb38
bb37:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l125, !tbaa !29
  %t151 = load ptr, ptr %l7, !tbaa !29
  %t153 = getelementptr %"compiler/typed:Match", ptr %t151, i32 0, i32 2
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  br i1 %t156, label %bb39, label %bb40
bb38:
  br label %bb43
bb39:
  call void @__olang_check_failed(ptr @olang_loc_b872ac5dc3b5cbc5_c1669fe863d2e49)
  unreachable
bb40:
  br label %bb41
bb41:
  %t158 = load ptr, ptr %l7, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Match", ptr %t158, i32 0, i32 2
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load ptr, ptr %l125, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanArm(ptr %v0, ptr %v1, ptr %t162, ptr %t161)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb213
bb44:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t165 = load ptr, ptr %l131, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb45, label %bb46
bb45:
  %t168 = load ptr, ptr %l131, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 18}
  %t171 = icmp eq i64 %t169, 8
  store i1 %t171, ptr %l132, !tbaa !21
  br label %bb46
bb46:
  %t172 = load i1, ptr %l132, !tbaa !21
  br i1 %t172, label %bb47, label %bb48
bb47:
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [5 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t175, i32 0, i32 2
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l16, !tbaa !29
  br label %bb49
bb48:
  br label %bb52
bb49:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l16, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Collect", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t179, ptr %t183)
  br label %bb50
bb50:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l16, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Collect", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanBlock(ptr %v0, ptr %v1, ptr %t186, ptr %t190)
  br label %bb51
bb51:
  br label %bb213
bb52:
  %t194 = load ptr, ptr %l1, !tbaa !29
  store ptr %t194, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t195 = load ptr, ptr %l144, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb53, label %bb54
bb53:
  %t198 = load ptr, ptr %l144, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 18}
  %t201 = icmp eq i64 %t199, 14
  store i1 %t201, ptr %l145, !tbaa !21
  br label %bb54
bb54:
  %t202 = load i1, ptr %l145, !tbaa !21
  br i1 %t202, label %bb55, label %bb56
bb55:
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr { i64, [5 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t205, i32 0, i32 2
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l17, !tbaa !29
  br label %bb57
bb56:
  br label %bb73
bb57:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load ptr, ptr %l17, !tbaa !29
  %t212 = getelementptr %"compiler/typed:Try", ptr %t210, i32 0, i32 0
  %t213 = load ptr, ptr %t212, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t209, ptr %t213)
  br label %bb58
bb58:
  %t216 = load ptr, ptr %l17, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Try", ptr %t216, i32 0, i32 1
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  store i64 %t223, ptr %l20, !tbaa !24
  br label %bb59
bb59:
  %t225 = load i64, ptr %l19, !tbaa !24
  %t226 = load i64, ptr %l20, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb60, label %bb61
bb60:
  br label %bb72
bb61:
  br label %bb62
bb62:
  %t233 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t233, ptr %l161, !tbaa !27
  %t234 = load i64, ptr %l19, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr ptr, ptr %t237, i64 %t234
  %t239 = load ptr, ptr %t238, !tbaa !39
  store ptr %t239, ptr %l21, !tbaa !29
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l21, !tbaa !29
  %t244 = getelementptr %"compiler/typed:Clause", ptr %t242, i32 0, i32 3
  %t245 = load ptr, ptr %t244, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanBlock(ptr %v0, ptr %v1, ptr %t241, ptr %t245)
  br label %bb63
bb63:
  %t248 = load ptr, ptr %l21, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Clause", ptr %t248, i32 0, i32 4
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  store { i64, ptr } %t251, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t253 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t253, 0
  store i64 %t255, ptr %l24, !tbaa !24
  br label %bb64
bb64:
  %t257 = load i64, ptr %l23, !tbaa !24
  %t258 = load i64, ptr %l24, !tbaa !24
  %t261 = icmp slt i64 %t257, %t258
  %t263 = xor i1 %t261, true
  br i1 %t263, label %bb65, label %bb66
bb65:
  br label %bb70
bb66:
  br label %bb67
bb67:
  %t265 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t265, ptr %l175, !tbaa !27
  %t266 = load i64, ptr %l23, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr ptr, ptr %t269, i64 %t266
  %t271 = load ptr, ptr %t270, !tbaa !39
  %t273 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t273, ptr %t271)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t278 = load i64, ptr %l23, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l23, !tbaa !24
  br label %bb64
bb70:
  br label %bb71
bb71:
  %t282 = load i64, ptr %l19, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l19, !tbaa !24
  br label %bb59
bb72:
  br label %bb213
bb73:
  %t286 = load ptr, ptr %l1, !tbaa !29
  store ptr %t286, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t287 = load ptr, ptr %l185, !tbaa !29
  %t288 = icmp ne ptr %t287, null
  br i1 %t288, label %bb74, label %bb75
bb74:
  %t290 = load ptr, ptr %l185, !tbaa !29
  %t291 = load i64, ptr %t290, !range !{i64 0, i64 18}
  %t293 = icmp eq i64 %t291, 6
  store i1 %t293, ptr %l186, !tbaa !21
  br label %bb75
bb75:
  %t294 = load i1, ptr %l186, !tbaa !21
  br i1 %t294, label %bb76, label %bb77
bb76:
  %t295 = load ptr, ptr %l1, !tbaa !29
  %t297 = getelementptr { i64, [5 x i64] }, ptr %t295, i32 0, i32 1
  %t298 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t297, i32 0, i32 2
  %t299 = load ptr, ptr %t298
  store ptr %t299, ptr %l26, !tbaa !29
  br label %bb78
bb77:
  br label %bb98
bb78:
  %t301 = load ptr, ptr %l26, !tbaa !29
  %t303 = getelementptr %"compiler/typed:Call", ptr %t301, i32 0, i32 0
  %t304 = load ptr, ptr %t303, !tbaa !29
  store ptr %t304, ptr %l27, !tbaa !29
  %t306 = load ptr, ptr %l27, !tbaa !29
  store ptr %t306, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t307 = load ptr, ptr %l193, !tbaa !29
  %t308 = icmp ne ptr %t307, null
  br i1 %t308, label %bb79, label %bb80
bb79:
  %t310 = load ptr, ptr %l193, !tbaa !29
  %t311 = load i64, ptr %t310, !range !{i64 0, i64 5}
  %t313 = icmp eq i64 %t311, 2
  store i1 %t313, ptr %l194, !tbaa !21
  br label %bb80
bb80:
  %t314 = load i1, ptr %l194, !tbaa !21
  br i1 %t314, label %bb81, label %bb82
bb81:
  %t315 = load ptr, ptr %l27, !tbaa !29
  %t317 = getelementptr { i64, [3 x i64] }, ptr %t315, i32 0, i32 1
  %t318 = getelementptr { ptr }, ptr %t317, i32 0, i32 0
  %t319 = load ptr, ptr %t318
  store ptr %t319, ptr %l28, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t321, ptr %t322)
  br label %bb84
bb84:
  br label %bb90
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_7fc479e7b96e92ad_adfc96c825376791)
  unreachable
bb90:
  %t326 = load ptr, ptr %l26, !tbaa !29
  %t328 = getelementptr %"compiler/typed:Call", ptr %t326, i32 0, i32 1
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  store { i64, ptr } %t329, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t331 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t331, 0
  store i64 %t333, ptr %l31, !tbaa !24
  br label %bb91
bb91:
  %t335 = load i64, ptr %l30, !tbaa !24
  %t336 = load i64, ptr %l31, !tbaa !24
  %t339 = icmp slt i64 %t335, %t336
  %t341 = xor i1 %t339, true
  br i1 %t341, label %bb92, label %bb93
bb92:
  br label %bb97
bb93:
  br label %bb94
bb94:
  %t343 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t343, ptr %l210, !tbaa !27
  %t344 = load i64, ptr %l30, !tbaa !24
  %t346 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = getelementptr ptr, ptr %t347, i64 %t344
  %t349 = load ptr, ptr %t348, !tbaa !39
  %t351 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t351, ptr %t349)
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t356 = load i64, ptr %l30, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l30, !tbaa !24
  br label %bb91
bb97:
  br label %bb213
bb98:
  %t360 = load ptr, ptr %l1, !tbaa !29
  store ptr %t360, ptr %l218, !tbaa !29
  store i1 false, ptr %l219, !tbaa !21
  %t361 = load ptr, ptr %l218, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb99, label %bb100
bb99:
  %t364 = load ptr, ptr %l218, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 18}
  %t367 = icmp eq i64 %t365, 11
  store i1 %t367, ptr %l219, !tbaa !21
  br label %bb100
bb100:
  %t368 = load i1, ptr %l219, !tbaa !21
  br i1 %t368, label %bb101, label %bb102
bb101:
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t371 = getelementptr { i64, [5 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t371, i32 0, i32 2
  %t373 = load ptr, ptr %t372
  store ptr %t373, ptr %l33, !tbaa !29
  br label %bb103
bb102:
  br label %bb107
bb103:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load ptr, ptr %l33, !tbaa !29
  %t378 = getelementptr %"compiler/typed:Cond", ptr %t376, i32 0, i32 0
  %t379 = load ptr, ptr %t378, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t375, ptr %t379)
  br label %bb104
bb104:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load ptr, ptr %l33, !tbaa !29
  %t386 = getelementptr %"compiler/typed:Cond", ptr %t384, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t383, ptr %t387)
  br label %bb105
bb105:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l33, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Cond", ptr %t391, i32 0, i32 2
  %t394 = load ptr, ptr %t393, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t390, ptr %t394)
  br label %bb106
bb106:
  br label %bb213
bb107:
  %t398 = load ptr, ptr %l1, !tbaa !29
  store ptr %t398, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t399 = load ptr, ptr %l235, !tbaa !29
  %t400 = icmp ne ptr %t399, null
  br i1 %t400, label %bb108, label %bb109
bb108:
  %t402 = load ptr, ptr %l235, !tbaa !29
  %t403 = load i64, ptr %t402, !range !{i64 0, i64 18}
  %t405 = icmp eq i64 %t403, 7
  store i1 %t405, ptr %l236, !tbaa !21
  br label %bb109
bb109:
  %t406 = load i1, ptr %l236, !tbaa !21
  br i1 %t406, label %bb110, label %bb111
bb110:
  %t407 = load ptr, ptr %l1, !tbaa !29
  %t409 = getelementptr { i64, [5 x i64] }, ptr %t407, i32 0, i32 1
  %t410 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t409, i32 0, i32 2
  %t411 = load ptr, ptr %t410
  store ptr %t411, ptr %l34, !tbaa !29
  br label %bb112
bb111:
  br label %bb121
bb112:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load ptr, ptr %l34, !tbaa !29
  %t416 = getelementptr %"compiler/typed:Make", ptr %t414, i32 0, i32 3
  %t417 = load ptr, ptr %t416, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t413, ptr %t417)
  br label %bb113
bb113:
  %t420 = load ptr, ptr %l34, !tbaa !29
  %t422 = getelementptr %"compiler/typed:Make", ptr %t420, i32 0, i32 2
  %t423 = load { i64, ptr }, ptr %t422, !tbaa !27
  store { i64, ptr } %t423, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t425 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t425, 0
  store i64 %t427, ptr %l37, !tbaa !24
  br label %bb114
bb114:
  %t429 = load i64, ptr %l36, !tbaa !24
  %t430 = load i64, ptr %l37, !tbaa !24
  %t433 = icmp slt i64 %t429, %t430
  %t435 = xor i1 %t433, true
  br i1 %t435, label %bb115, label %bb116
bb115:
  br label %bb120
bb116:
  br label %bb117
bb117:
  %t437 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t437, ptr %l252, !tbaa !27
  %t438 = load i64, ptr %l36, !tbaa !24
  %t440 = getelementptr { i64, ptr }, ptr %l252, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !27
  %t442 = getelementptr ptr, ptr %t441, i64 %t438
  %t443 = load ptr, ptr %t442, !tbaa !39
  %t445 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t445, ptr %t443)
  br label %bb118
bb118:
  br label %bb119
bb119:
  %t450 = load i64, ptr %l36, !tbaa !24
  %t452 = add i64 %t450, 1
  store i64 %t452, ptr %l36, !tbaa !24
  br label %bb114
bb120:
  br label %bb213
bb121:
  %t454 = load ptr, ptr %l1, !tbaa !29
  store ptr %t454, ptr %l260, !tbaa !29
  store i1 false, ptr %l261, !tbaa !21
  %t455 = load ptr, ptr %l260, !tbaa !29
  %t456 = icmp ne ptr %t455, null
  br i1 %t456, label %bb122, label %bb123
bb122:
  %t458 = load ptr, ptr %l260, !tbaa !29
  %t459 = load i64, ptr %t458, !range !{i64 0, i64 18}
  %t461 = icmp eq i64 %t459, 9
  store i1 %t461, ptr %l261, !tbaa !21
  br label %bb123
bb123:
  %t462 = load i1, ptr %l261, !tbaa !21
  br i1 %t462, label %bb124, label %bb125
bb124:
  %t463 = load ptr, ptr %l1, !tbaa !29
  %t465 = getelementptr { i64, [5 x i64] }, ptr %t463, i32 0, i32 1
  %t466 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t465, i32 0, i32 4
  %t467 = load { i64, ptr }, ptr %t466
  store { i64, ptr } %t467, ptr %l39, !tbaa !27
  br label %bb126
bb125:
  br label %bb134
bb126:
  %t469 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t469, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t471 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t471, 0
  store i64 %t473, ptr %l42, !tbaa !24
  br label %bb127
bb127:
  %t475 = load i64, ptr %l41, !tbaa !24
  %t476 = load i64, ptr %l42, !tbaa !24
  %t479 = icmp slt i64 %t475, %t476
  %t481 = xor i1 %t479, true
  br i1 %t481, label %bb128, label %bb129
bb128:
  br label %bb133
bb129:
  br label %bb130
bb130:
  %t483 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t483, ptr %l273, !tbaa !27
  %t484 = load i64, ptr %l41, !tbaa !24
  %t486 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !27
  %t488 = getelementptr ptr, ptr %t487, i64 %t484
  %t489 = load ptr, ptr %t488, !tbaa !39
  %t491 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t491, ptr %t489)
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t496 = load i64, ptr %l41, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l41, !tbaa !24
  br label %bb127
bb133:
  br label %bb213
bb134:
  %t500 = load ptr, ptr %l1, !tbaa !29
  store ptr %t500, ptr %l281, !tbaa !29
  store i1 false, ptr %l282, !tbaa !21
  %t501 = load ptr, ptr %l281, !tbaa !29
  %t502 = icmp ne ptr %t501, null
  br i1 %t502, label %bb135, label %bb136
bb135:
  %t504 = load ptr, ptr %l281, !tbaa !29
  %t505 = load i64, ptr %t504, !range !{i64 0, i64 18}
  %t507 = icmp eq i64 %t505, 5
  store i1 %t507, ptr %l282, !tbaa !21
  br label %bb136
bb136:
  %t508 = load i1, ptr %l282, !tbaa !21
  br i1 %t508, label %bb137, label %bb138
bb137:
  %t509 = load ptr, ptr %l1, !tbaa !29
  %t511 = getelementptr { i64, [5 x i64] }, ptr %t509, i32 0, i32 1
  %t512 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t511, i32 0, i32 2
  %t513 = load ptr, ptr %t512
  store ptr %t513, ptr %l44, !tbaa !29
  br label %bb139
bb138:
  br label %bb141
bb139:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load ptr, ptr %l44, !tbaa !29
  %t518 = getelementptr %"compiler/typed:Promote", ptr %t516, i32 0, i32 0
  %t519 = load ptr, ptr %t518, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t515, ptr %t519)
  br label %bb140
bb140:
  br label %bb213
bb141:
  %t523 = load ptr, ptr %l1, !tbaa !29
  store ptr %t523, ptr %l291, !tbaa !29
  store i1 false, ptr %l292, !tbaa !21
  %t524 = load ptr, ptr %l291, !tbaa !29
  %t525 = icmp ne ptr %t524, null
  br i1 %t525, label %bb142, label %bb143
bb142:
  %t527 = load ptr, ptr %l291, !tbaa !29
  %t528 = load i64, ptr %t527, !range !{i64 0, i64 18}
  %t530 = icmp eq i64 %t528, 10
  store i1 %t530, ptr %l292, !tbaa !21
  br label %bb143
bb143:
  %t531 = load i1, ptr %l292, !tbaa !21
  br i1 %t531, label %bb144, label %bb145
bb144:
  %t532 = load ptr, ptr %l1, !tbaa !29
  %t534 = getelementptr { i64, [5 x i64] }, ptr %t532, i32 0, i32 1
  %t535 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t534, i32 0, i32 2
  %t536 = load ptr, ptr %t535
  store ptr %t536, ptr %l45, !tbaa !29
  br label %bb146
bb145:
  br label %bb150
bb146:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load ptr, ptr %l45, !tbaa !29
  %t541 = getelementptr %"compiler/typed:Slice", ptr %t539, i32 0, i32 0
  %t542 = load ptr, ptr %t541, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanPlace(ptr %v0, ptr %v1, ptr %t538, ptr %t542)
  br label %bb147
bb147:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load ptr, ptr %l45, !tbaa !29
  %t548 = getelementptr %"compiler/typed:Slice", ptr %t546, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t545, ptr %t549)
  br label %bb148
bb148:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load ptr, ptr %l45, !tbaa !29
  %t556 = getelementptr %"compiler/typed:Slice", ptr %t554, i32 0, i32 2
  %t557 = load ptr, ptr %t556, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t553, ptr %t557)
  br label %bb149
bb149:
  br label %bb213
bb150:
  %t561 = load ptr, ptr %l1, !tbaa !29
  store ptr %t561, ptr %l308, !tbaa !29
  store i1 false, ptr %l309, !tbaa !21
  %t562 = load ptr, ptr %l308, !tbaa !29
  %t563 = icmp ne ptr %t562, null
  br i1 %t563, label %bb151, label %bb152
bb151:
  %t565 = load ptr, ptr %l308, !tbaa !29
  %t566 = load i64, ptr %t565, !range !{i64 0, i64 18}
  %t568 = icmp eq i64 %t566, 16
  store i1 %t568, ptr %l309, !tbaa !21
  br label %bb152
bb152:
  %t569 = load i1, ptr %l309, !tbaa !21
  br i1 %t569, label %bb153, label %bb154
bb153:
  %t570 = load ptr, ptr %l1, !tbaa !29
  %t572 = getelementptr { i64, [5 x i64] }, ptr %t570, i32 0, i32 1
  %t573 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t572, i32 0, i32 2
  %t574 = load ptr, ptr %t573
  store ptr %t574, ptr %l46, !tbaa !29
  br label %bb155
bb154:
  br label %bb168
bb155:
  %t576 = load ptr, ptr %l46, !tbaa !29
  %t578 = getelementptr %"compiler/typed:Text", ptr %t576, i32 0, i32 0
  %t579 = load { i64, ptr }, ptr %t578, !tbaa !27
  store { i64, ptr } %t579, ptr %l47, !tbaa !27
  store i64 0, ptr %l48, !tbaa !24
  %t581 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t583 = extractvalue { i64, ptr } %t581, 0
  store i64 %t583, ptr %l49, !tbaa !24
  br label %bb156
bb156:
  %t585 = load i64, ptr %l48, !tbaa !24
  %t586 = load i64, ptr %l49, !tbaa !24
  %t589 = icmp slt i64 %t585, %t586
  %t591 = xor i1 %t589, true
  br i1 %t591, label %bb157, label %bb158
bb157:
  br label %bb167
bb158:
  br label %bb159
bb159:
  %t593 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t593, ptr %l322, !tbaa !27
  %t594 = load i64, ptr %l48, !tbaa !24
  %t596 = getelementptr { i64, ptr }, ptr %l322, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !27
  %t598 = getelementptr ptr, ptr %t597, i64 %t594
  %t599 = load ptr, ptr %t598, !tbaa !39
  store ptr %t599, ptr %l50, !tbaa !29
  %t601 = load ptr, ptr %l50, !tbaa !29
  store ptr %t601, ptr %l325, !tbaa !29
  store i1 false, ptr %l326, !tbaa !21
  %t602 = load ptr, ptr %l325, !tbaa !29
  %t603 = icmp ne ptr %t602, null
  br i1 %t603, label %bb160, label %bb161
bb160:
  %t605 = load ptr, ptr %l325, !tbaa !29
  %t606 = load i64, ptr %t605, !range !{i64 0, i64 2}
  %t608 = icmp eq i64 %t606, 1
  store i1 %t608, ptr %l326, !tbaa !21
  br label %bb161
bb161:
  %t609 = load i1, ptr %l326, !tbaa !21
  br i1 %t609, label %bb162, label %bb163
bb162:
  %t610 = load ptr, ptr %l50, !tbaa !29
  %t612 = getelementptr { i64, [2 x i64] }, ptr %t610, i32 0, i32 1
  %t613 = getelementptr { ptr }, ptr %t612, i32 0, i32 0
  %t614 = load ptr, ptr %t613
  %t616 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t616, ptr %t614)
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t621 = load i64, ptr %l48, !tbaa !24
  %t623 = add i64 %t621, 1
  store i64 %t623, ptr %l48, !tbaa !24
  br label %bb156
bb167:
  br label %bb213
bb168:
  %t625 = load ptr, ptr %l1, !tbaa !29
  store ptr %t625, ptr %l336, !tbaa !29
  store i1 false, ptr %l337, !tbaa !21
  %t626 = load ptr, ptr %l336, !tbaa !29
  %t627 = icmp ne ptr %t626, null
  br i1 %t627, label %bb169, label %bb170
bb169:
  %t629 = load ptr, ptr %l336, !tbaa !29
  %t630 = load i64, ptr %t629, !range !{i64 0, i64 18}
  %t632 = icmp eq i64 %t630, 2
  store i1 %t632, ptr %l337, !tbaa !21
  br label %bb170
bb170:
  %t633 = load i1, ptr %l337, !tbaa !21
  br i1 %t633, label %bb171, label %bb172
bb171:
  %t634 = load ptr, ptr %l1, !tbaa !29
  %t636 = getelementptr { i64, [5 x i64] }, ptr %t634, i32 0, i32 1
  %t637 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t636, i32 0, i32 2
  %t638 = load ptr, ptr %t637
  store ptr %t638, ptr %l52, !tbaa !29
  br label %bb181
bb172:
  %t640 = load ptr, ptr %l1, !tbaa !29
  store ptr %t640, ptr %l342, !tbaa !29
  store i1 false, ptr %l343, !tbaa !21
  %t641 = load ptr, ptr %l342, !tbaa !29
  %t642 = icmp ne ptr %t641, null
  br i1 %t642, label %bb173, label %bb174
bb173:
  %t644 = load ptr, ptr %l342, !tbaa !29
  %t645 = load i64, ptr %t644, !range !{i64 0, i64 18}
  %t647 = icmp eq i64 %t645, 3
  store i1 %t647, ptr %l343, !tbaa !21
  br label %bb174
bb174:
  %t648 = load i1, ptr %l343, !tbaa !21
  br i1 %t648, label %bb175, label %bb176
bb175:
  %t649 = load ptr, ptr %l1, !tbaa !29
  %t651 = getelementptr { i64, [5 x i64] }, ptr %t649, i32 0, i32 1
  %t652 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t651, i32 0, i32 2
  %t653 = load ptr, ptr %t652
  store ptr %t653, ptr %l52, !tbaa !29
  br label %bb181
bb176:
  %t655 = load ptr, ptr %l1, !tbaa !29
  store ptr %t655, ptr %l348, !tbaa !29
  store i1 false, ptr %l349, !tbaa !21
  %t656 = load ptr, ptr %l348, !tbaa !29
  %t657 = icmp ne ptr %t656, null
  br i1 %t657, label %bb177, label %bb178
bb177:
  %t659 = load ptr, ptr %l348, !tbaa !29
  %t660 = load i64, ptr %t659, !range !{i64 0, i64 18}
  %t662 = icmp eq i64 %t660, 4
  store i1 %t662, ptr %l349, !tbaa !21
  br label %bb178
bb178:
  %t663 = load i1, ptr %l349, !tbaa !21
  br i1 %t663, label %bb179, label %bb180
bb179:
  %t664 = load ptr, ptr %l1, !tbaa !29
  %t666 = getelementptr { i64, [5 x i64] }, ptr %t664, i32 0, i32 1
  %t667 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t666, i32 0, i32 2
  %t668 = load ptr, ptr %t667
  store ptr %t668, ptr %l52, !tbaa !29
  br label %bb181
bb180:
  br label %bb183
bb181:
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanPlace(ptr %v0, ptr %v1, ptr %t670, ptr %t671)
  br label %bb182
bb182:
  br label %bb213
bb183:
  %t674 = load ptr, ptr %l1, !tbaa !29
  store ptr %t674, ptr %l356, !tbaa !29
  store i1 false, ptr %l357, !tbaa !21
  %t675 = load ptr, ptr %l356, !tbaa !29
  %t676 = icmp ne ptr %t675, null
  br i1 %t676, label %bb184, label %bb185
bb184:
  %t678 = load ptr, ptr %l356, !tbaa !29
  %t679 = load i64, ptr %t678, !range !{i64 0, i64 18}
  %t681 = icmp eq i64 %t679, 15
  store i1 %t681, ptr %l357, !tbaa !21
  br label %bb185
bb185:
  %t682 = load i1, ptr %l357, !tbaa !21
  br i1 %t682, label %bb186, label %bb187
bb186:
  %t683 = load ptr, ptr %l1, !tbaa !29
  %t685 = getelementptr { i64, [5 x i64] }, ptr %t683, i32 0, i32 1
  %t686 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t685, i32 0, i32 2
  %t687 = load ptr, ptr %t686
  store ptr %t687, ptr %l362, !tbaa !29
  store i1 false, ptr %l363, !tbaa !21
  %t688 = load ptr, ptr %l362, !tbaa !29
  %t689 = icmp ne ptr %t688, null
  br i1 %t689, label %bb188, label %bb189
bb187:
  store i1 false, ptr %l360, !tbaa !21
  br label %bb190
bb188:
  %t691 = load ptr, ptr %l362, !tbaa !29
  %t692 = load i64, ptr %t691, !range !{i64 0, i64 3}
  %t694 = icmp eq i64 %t692, 1
  store i1 %t694, ptr %l363, !tbaa !21
  br label %bb189
bb189:
  %t695 = load i1, ptr %l363, !tbaa !21
  store i1 %t695, ptr %l360, !tbaa !21
  br label %bb190
bb190:
  %t696 = load i1, ptr %l360, !tbaa !21
  br i1 %t696, label %bb191, label %bb192
bb191:
  %t697 = load ptr, ptr %l1, !tbaa !29
  %t699 = getelementptr { i64, [5 x i64] }, ptr %t697, i32 0, i32 1
  %t700 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t699, i32 0, i32 2
  %t701 = load ptr, ptr %t700
  %t703 = getelementptr { i64, [4 x i64] }, ptr %t701, i32 0, i32 1
  %t704 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t703, i32 0, i32 1
  %t705 = load { i64, ptr }, ptr %t704
  store { i64, ptr } %t705, ptr %l53, !tbaa !27
  br label %bb193
bb192:
  br label %bb201
bb193:
  %t707 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t707, ptr %l54, !tbaa !27
  store i64 0, ptr %l55, !tbaa !24
  %t709 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t711 = extractvalue { i64, ptr } %t709, 0
  store i64 %t711, ptr %l56, !tbaa !24
  br label %bb194
bb194:
  %t713 = load i64, ptr %l55, !tbaa !24
  %t714 = load i64, ptr %l56, !tbaa !24
  %t717 = icmp slt i64 %t713, %t714
  %t719 = xor i1 %t717, true
  br i1 %t719, label %bb195, label %bb196
bb195:
  br label %bb200
bb196:
  br label %bb197
bb197:
  %t721 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t721, ptr %l376, !tbaa !27
  %t722 = load i64, ptr %l55, !tbaa !24
  %t724 = getelementptr { i64, ptr }, ptr %l376, i32 0, i32 1
  %t725 = load ptr, ptr %t724, !tbaa !27
  %t726 = getelementptr ptr, ptr %t725, i64 %t722
  %t727 = load ptr, ptr %t726, !tbaa !39
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t732 = getelementptr %"compiler/typed:Capture", ptr %t727, i32 0, i32 1
  %t733 = load ptr, ptr %t732, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t729, ptr %t733)
  br label %bb198
bb198:
  br label %bb199
bb199:
  %t737 = load i64, ptr %l55, !tbaa !24
  %t739 = add i64 %t737, 1
  store i64 %t739, ptr %l55, !tbaa !24
  br label %bb194
bb200:
  br label %bb213
bb201:
  %t741 = load ptr, ptr %l1, !tbaa !29
  store ptr %t741, ptr %l385, !tbaa !29
  store i1 false, ptr %l386, !tbaa !21
  %t742 = load ptr, ptr %l385, !tbaa !29
  %t743 = icmp ne ptr %t742, null
  br i1 %t743, label %bb202, label %bb203
bb202:
  %t745 = load ptr, ptr %l385, !tbaa !29
  %t746 = load i64, ptr %t745, !range !{i64 0, i64 18}
  %t748 = icmp eq i64 %t746, 17
  store i1 %t748, ptr %l386, !tbaa !21
  br label %bb203
bb203:
  %t749 = load i1, ptr %l386, !tbaa !21
  br i1 %t749, label %bb204, label %bb205
bb204:
  %t750 = load ptr, ptr %l1, !tbaa !29
  %t752 = getelementptr { i64, [5 x i64] }, ptr %t750, i32 0, i32 1
  %t753 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t752, i32 0, i32 2
  %t754 = load ptr, ptr %t753
  store ptr %t754, ptr %l58, !tbaa !29
  br label %bb206
bb205:
  br label %bb208
bb206:
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t757 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t756, ptr %t757)
  br label %bb207
bb207:
  br label %bb213
bb208:
  br i1 true, label %bb209, label %bb210
bb209:
  br label %bb211
bb210:
  br label %bb212
bb211:
  br label %bb213
bb212:
  call void @__olang_check_failed(ptr @olang_loc_edb5a1ac978d0996_7c7124734c9b85fa)
  unreachable
bb213:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
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
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb41
bb7:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t22 = load ptr, ptr %l16, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 8}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanPlace(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb13
bb13:
  br label %bb41
bb14:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb15, label %bb16
bb15:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 8}
  %t47 = icmp eq i64 %t45, 4
  store i1 %t47, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l25, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Elem", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanPlace(ptr %v0, ptr %v1, ptr %t55, ptr %t59)
  br label %bb20
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Elem", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t62, ptr %t66)
  br label %bb21
bb21:
  br label %bb41
bb22:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l37, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 5
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb24
bb24:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Payload", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanPlace(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
  br label %bb28
bb28:
  br label %bb41
bb29:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb30, label %bb31
bb30:
  %t96 = load ptr, ptr %l46, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 8}
  %t99 = icmp eq i64 %t97, 6
  store i1 %t99, ptr %l47, !tbaa !21
  br label %bb31
bb31:
  %t100 = load i1, ptr %l47, !tbaa !21
  br i1 %t100, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanExpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  br label %bb35
bb35:
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_83ffd618ff536982_5c02ec347c68c506)
  unreachable
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l23 = alloca %"compiler/effects:pair"
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca i32
  %l38 = alloca %"compiler/effects:pair"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb10
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 56
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/effects:Effects", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t31)
  store i32 %t33, ptr %l19
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load i32, ptr %l19, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l20
  br label %bb7
bb7:
  %t37 = load i32, ptr %l20, !tbaa !23
  %t38 = sext i32 %t37 to i64
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = call %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %s1, i64 %t38, i64 %t39)
  store %"compiler/effects:pair" %t42, ptr %l23
  br label %bb8
bb8:
  %t43 = load ptr, ptr %l14, !tbaa !29
  %t44 = load %"compiler/effects:pair", ptr %l23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_Ha1bc2f35f7d195c0ca99c509224bae7a(ptr %v0, ptr %t43, %"compiler/effects:pair" %t44, i1 true)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb24
bb10:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 2
  store i1 %t52, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l25, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l4, !tbaa !23
  br label %bb15
bb14:
  br label %bb19
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/effects:Effects", ptr %t60, i32 0, i32 56
  store ptr %t62, ptr %l31, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/effects:Effects", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l4, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l36
  br label %bb16
bb16:
  %t73 = load i32, ptr %l36, !tbaa !23
  %t74 = sext i32 %t73 to i64
  %t76 = call %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %s2, i64 %t74, i64 -1)
  store %"compiler/effects:pair" %t76, ptr %l38
  br label %bb17
bb17:
  %t77 = load ptr, ptr %l31, !tbaa !29
  %t78 = load %"compiler/effects:pair", ptr %l38
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_Ha1bc2f35f7d195c0ca99c509224bae7a(ptr %v0, ptr %t77, %"compiler/effects:pair" %t78, i1 true)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
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
  call void @__olang_check_failed(ptr @olang_loc_dbda74c6bd85bcc6_57ce86cdebb39c22)
  unreachable
bb24:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotType(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca i64
  %l23 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca %"compiler/typed:Local"
  %l33 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i32
  %l53 = alloca %"compiler/effects:fslot"
  %l55 = alloca %"compiler/effects:fslot"
  %l60 = alloca i64
  %l63 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l91 = alloca %"compiler/typed:Local"
  %l101 = alloca %"compiler/typed:Local"
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l16, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l17, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 5
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l20
  br label %bb2
bb2:
  %t15 = load i64, ptr %l17, !tbaa !24
  %t16 = load i64, ptr %l20, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 7
  store ptr %t21, ptr %l23, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 5
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t24, i64 %t25)
  store i32 %t28, ptr %l27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t29 = load i32, ptr %l27, !tbaa !23
  %t30 = sext i32 %t29 to i64
  %t31 = load ptr, ptr %l23, !tbaa !29
  %t33 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t31, i64 %t30)
  store %"compiler/typed:Local" %t33, ptr %l29
  br label %bb6
bb6:
  %t34 = getelementptr %"compiler/typed:Local", ptr %l29, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  store i32 %t35, ptr %rv
  br label %ret
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotBase(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l33
  br label %bb8
bb8:
  %t42 = load i64, ptr %l33, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp sge i64 %t43, %t44
  br i1 %t47, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldSlots(ptr %v0, ptr %s2, ptr %t49, i64 %t50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l39
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e(ptr %s2, ptr %l39)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l41
  br label %bb12
bb12:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l5
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = sub i64 %t57, %t58
  store i64 %t61, ptr %l44, !tbaa !24
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eLen_3ccompiler_2feffects_3afslot_3e(ptr %s2, ptr %l5)
  store i64 %t63, ptr %l46
  br label %bb13
bb13:
  %t64 = load i64, ptr %l44, !tbaa !24
  %t65 = load i64, ptr %l46, !tbaa !24
  %t66 = icmp slt i64 %t64, %t65
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = sub i64 %t68, %t69
  %t75 = call %"compiler/effects:fslot" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eAt_3ccompiler_2feffects_3afslot_3e(ptr %s2, ptr %s2, ptr %l5, i64 %t72)
  store %"compiler/effects:fslot" %t75, ptr %l53
  br label %bb16
bb15:
  %t76 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t76, ptr %l48, !tbaa !23
  br label %bb18
bb16:
  %t79 = call %"compiler/effects:fslot" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afslot(ptr %s2, ptr %l53)
  store %"compiler/effects:fslot" %t79, ptr %l55
  br label %bb17
bb17:
  %t80 = getelementptr %"compiler/effects:fslot", ptr %l55, i32 0, i32 2
  %t81 = load i32, ptr %t80, !tbaa !23
  store i32 %t81, ptr %l48, !tbaa !23
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  %t83 = load i32, ptr %l48, !tbaa !23
  store i32 %t83, ptr %rv
  br label %ret
bb19:
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Body", ptr %t84, i32 0, i32 5
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l60
  br label %bb20
bb20:
  %t89 = load i64, ptr %l60, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 7
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t92)
  store i64 %t94, ptr %l63
  br label %bb21
bb21:
  %t95 = load i64, ptr %l63, !tbaa !24
  store i64 %t95, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = icmp sgt i64 %t96, %t97
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t102 = load i64, ptr %l9, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb27
bb24:
  %t106 = load i64, ptr %l8, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = sub i64 %t106, %t107
  %t111 = load i64, ptr %l9, !tbaa !24
  %t114 = add i64 %t110, %t111
  %t116 = sub i64 %t114, 1
  %t117 = load i64, ptr %l9, !tbaa !24
  %t120 = sdiv i64 %t116, %t117
  store i64 %t120, ptr %l70, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb26
bb26:
  %t122 = load i64, ptr %l70, !tbaa !24
  store i64 %t122, ptr %l67, !tbaa !24
  br label %bb27
bb27:
  %t123 = load i64, ptr %l67, !tbaa !24
  store i64 %t123, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb28
bb28:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb29, label %bb30
bb29:
  br label %bb41
bb30:
  br label %bb31
bb31:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t133 = load i64, ptr %l11, !tbaa !24
  %t134 = load i64, ptr %l9, !tbaa !24
  %t137 = mul i64 %t133, %t134
  %t140 = add i64 %t132, %t137
  store i64 %t140, ptr %l12, !tbaa !24
  %t142 = load ptr, ptr %l3, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Body", ptr %t142, i32 0, i32 7
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t144, i64 %t145)
  store %"compiler/typed:Local" %t148, ptr %l91
  br label %bb32
bb32:
  %t149 = getelementptr %"compiler/typed:Local", ptr %l91, i32 0, i32 4
  %t150 = load i32, ptr %t149, !range !{i32 0, i32 7}
  %t152 = trunc i64 5 to i32
  %t153 = icmp eq i32 %t150, %t152
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb33, label %bb34
bb33:
  br label %bb40
bb34:
  br label %bb35
bb35:
  %t157 = load i64, ptr %l6, !tbaa !24
  %t158 = load i64, ptr %l2, !tbaa !24
  %t161 = icmp eq i64 %t157, %t158
  br i1 %t161, label %bb36, label %bb37
bb36:
  %t163 = load ptr, ptr %l3, !tbaa !29
  %t165 = getelementptr %"compiler/typed:Body", ptr %t163, i32 0, i32 7
  %t166 = load i64, ptr %l12, !tbaa !24
  %t169 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t165, i64 %t166)
  store %"compiler/typed:Local" %t169, ptr %l101
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t170 = getelementptr %"compiler/typed:Local", ptr %l101, i32 0, i32 2
  %t171 = load i32, ptr %t170, !tbaa !23
  store i32 %t171, ptr %rv
  br label %ret
bb39:
  %t173 = load i64, ptr %l6, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l6, !tbaa !24
  br label %bb40
bb40:
  %t177 = load i64, ptr %l11, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l11, !tbaa !24
  br label %bb28
bb41:
  %t181 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t181, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2espawnedInto(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 38
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4, i1 true)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t7, i32 0, i32 61
  %t10 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t9, i64 %t10, i1 true)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/effects:Effects", ptr %t13, i32 0, i32 2
  %t16 = load i1, ptr %t15, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Effects", ptr %t18, i32 0, i32 39
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = mul i64 2, %t21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t20, i64 %t23)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca i32
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i1
  %l73 = alloca i64
  %l76 = alloca i64
  %l78 = alloca i1
  %l83 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l114 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l125 = alloca i1
  %l141 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l166 = alloca i1
  %l175 = alloca i1
  %l178 = alloca i1
  %l179 = alloca i1
  %l182 = alloca i1
  %l193 = alloca ptr
  %l194 = alloca i1
  %l210 = alloca ptr
  %l211 = alloca i1
  %l223 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca i1
  %l241 = alloca i1
  %l244 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i1
  %l276 = alloca ptr
  %l277 = alloca i1
  %l285 = alloca ptr
  %l286 = alloca i1
  %l295 = alloca ptr
  %l297 = alloca i64
  %l300 = alloca i1
  %l304 = alloca i1
  %l308 = alloca ptr
  %l309 = alloca i1
  %l317 = alloca ptr
  %l318 = alloca i1
  %l326 = alloca i1
  %l334 = alloca ptr
  %l335 = alloca i1
  %l353 = alloca { i64, ptr }
  %l360 = alloca ptr
  %l361 = alloca i1
  %l377 = alloca { i64, ptr }
  %l384 = alloca ptr
  %l385 = alloca i1
  %l413 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t2 = load ptr, ptr %l57, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l57, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l58, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l58, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t31 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %t27, i64 %t30, ptr %t31)
  br label %bb7
bb7:
  %t35 = load i32, ptr %l2, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l73, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/effects:Effects", ptr %t38, i32 0, i32 67
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l76
  br label %bb8
bb8:
  %t43 = load i64, ptr %l73, !tbaa !24
  %t44 = load i64, ptr %l76, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/effects:Effects", ptr %t47, i32 0, i32 67
  %t50 = load i32, ptr %l2, !tbaa !23
  %t52 = sext i32 %t50 to i64
  %t55 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t49, i64 %t52)
  store i1 %t55, ptr %l83
  br label %bb11
bb10:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb12
bb11:
  %t56 = load i1, ptr %l83, !tbaa !21
  store i1 %t56, ptr %l78, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l78, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Effects", ptr %t58, i32 0, i32 23
  %t61 = getelementptr %"compiler/effects:Facts", ptr %t60, i32 0, i32 0
  store i1 true, ptr %t61, !tbaa !21
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb217
bb16:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t63 = load ptr, ptr %l85, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = load ptr, ptr %l85, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 17}
  %t69 = icmp eq i64 %t67, 2
  store i1 %t69, ptr %l86, !tbaa !21
  br label %bb18
bb18:
  %t70 = load i1, ptr %l86, !tbaa !21
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l4, !tbaa !29
  br label %bb25
bb20:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t78 = load ptr, ptr %l91, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l91, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 17}
  %t84 = icmp eq i64 %t82, 15
  store i1 %t84, ptr %l92, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l92, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  br label %bb26
bb26:
  br label %bb217
bb27:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t98 = load ptr, ptr %l100, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb28, label %bb29
bb28:
  %t101 = load ptr, ptr %l100, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 17}
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l101, !tbaa !21
  br label %bb29
bb29:
  %t105 = load i1, ptr %l101, !tbaa !21
  br i1 %t105, label %bb30, label %bb31
bb30:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [3 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t108, i32 0, i32 1
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l5, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [3 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l6, !tbaa !29
  br label %bb32
bb31:
  br label %bb67
bb32:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %t118, ptr %t119, i1 true)
  br label %bb33
bb33:
  %t122 = load ptr, ptr %l5, !tbaa !29
  store ptr %t122, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t123 = load ptr, ptr %l110, !tbaa !29
  %t124 = icmp ne ptr %t123, null
  br i1 %t124, label %bb34, label %bb35
bb34:
  %t126 = load ptr, ptr %l110, !tbaa !29
  %t127 = load i64, ptr %t126, !range !{i64 0, i64 8}
  %t129 = icmp eq i64 %t127, 0
  store i1 %t129, ptr %l111, !tbaa !21
  br label %bb35
bb35:
  %t130 = load i1, ptr %l111, !tbaa !21
  br i1 %t130, label %bb36, label %bb37
bb36:
  %t131 = load ptr, ptr %l5, !tbaa !29
  %t133 = getelementptr { i64, [4 x i64] }, ptr %t131, i32 0, i32 1
  %t134 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t133, i32 0, i32 0
  %t135 = load %"compiler/source:Span", ptr %t134
  store %"compiler/source:Span" %t135, ptr %l7
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t139, i32 0, i32 1
  %t141 = load i32, ptr %t140
  store i32 %t141, ptr %l8, !tbaa !23
  %t143 = load ptr, ptr %l5, !tbaa !29
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t145, i32 0, i32 2
  %t147 = load i32, ptr %t146
  store i32 %t147, ptr %l9, !tbaa !23
  %t149 = load ptr, ptr %l6, !tbaa !29
  store ptr %t149, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t150 = load ptr, ptr %l121, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb40
bb38:
  %t153 = load ptr, ptr %l121, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 18}
  %t156 = icmp eq i64 %t154, 5
  store i1 %t156, ptr %l122, !tbaa !21
  br label %bb39
bb39:
  %t157 = load i1, ptr %l122, !tbaa !21
  store i1 %t157, ptr %l114, !tbaa !21
  br label %bb40
bb40:
  %t158 = load i1, ptr %l114, !tbaa !21
  br i1 %t158, label %bb41, label %bb42
bb41:
  %t159 = load ptr, ptr %l5, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t161, i32 0, i32 0
  %t163 = load %"compiler/source:Span", ptr %t162
  store %"compiler/source:Span" %t163, ptr %l10
  %t165 = load ptr, ptr %l5, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t167, i32 0, i32 1
  %t169 = load i32, ptr %t168
  store i32 %t169, ptr %l11, !tbaa !23
  %t171 = load ptr, ptr %l5, !tbaa !29
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t173, i32 0, i32 2
  %t175 = load i32, ptr %t174
  %t177 = load ptr, ptr %l6, !tbaa !29
  %t179 = getelementptr { i64, [5 x i64] }, ptr %t177, i32 0, i32 1
  %t180 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t179, i32 0, i32 0
  %t181 = load %"compiler/source:Span", ptr %t180
  store %"compiler/source:Span" %t181, ptr %l13
  %t183 = load ptr, ptr %l6, !tbaa !29
  %t185 = getelementptr { i64, [5 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t185, i32 0, i32 1
  %t187 = load i32, ptr %t186
  store i32 %t187, ptr %l14, !tbaa !23
  %t189 = load ptr, ptr %l6, !tbaa !29
  %t191 = getelementptr { i64, [5 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t191, i32 0, i32 2
  %t193 = load ptr, ptr %t192
  store ptr %t193, ptr %l15, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t198 = sext i32 %t175 to i64
  %t201 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eownSlot(ptr %v0, ptr %t195, i64 %t198)
  store i1 %t201, ptr %l141
  br label %bb43
bb42:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb44
bb43:
  %t202 = load i1, ptr %l141, !tbaa !21
  store i1 %t202, ptr %l125, !tbaa !21
  br label %bb44
bb44:
  %t203 = load i1, ptr %l125, !tbaa !21
  br i1 %t203, label %bb45, label %bb46
bb45:
  %t204 = load ptr, ptr %l5, !tbaa !29
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t206, i32 0, i32 0
  %t208 = load %"compiler/source:Span", ptr %t207
  store %"compiler/source:Span" %t208, ptr %l16
  %t210 = load ptr, ptr %l5, !tbaa !29
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t212, i32 0, i32 1
  %t214 = load i32, ptr %t213
  store i32 %t214, ptr %l17, !tbaa !23
  %t216 = load ptr, ptr %l5, !tbaa !29
  %t218 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 1
  %t219 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t218, i32 0, i32 2
  %t220 = load i32, ptr %t219
  store i32 %t220, ptr %l18, !tbaa !23
  %t222 = load ptr, ptr %l6, !tbaa !29
  %t224 = getelementptr { i64, [5 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t224, i32 0, i32 0
  %t226 = load %"compiler/source:Span", ptr %t225
  store %"compiler/source:Span" %t226, ptr %l19
  %t228 = load ptr, ptr %l6, !tbaa !29
  %t230 = getelementptr { i64, [5 x i64] }, ptr %t228, i32 0, i32 1
  %t231 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t230, i32 0, i32 1
  %t232 = load i32, ptr %t231
  store i32 %t232, ptr %l20, !tbaa !23
  %t234 = load ptr, ptr %l6, !tbaa !29
  %t236 = getelementptr { i64, [5 x i64] }, ptr %t234, i32 0, i32 1
  %t237 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t236, i32 0, i32 2
  %t238 = load ptr, ptr %t237
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/typed:Promote", ptr %t238, i32 0, i32 0
  %t245 = load ptr, ptr %t244, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t240, ptr %t245)
  br label %bb47
bb46:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t249, ptr %t250)
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb49
bb49:
  %t254 = load ptr, ptr %l5, !tbaa !29
  store ptr %t254, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t255 = load ptr, ptr %l162, !tbaa !29
  %t256 = icmp ne ptr %t255, null
  br i1 %t256, label %bb50, label %bb51
bb50:
  %t258 = load ptr, ptr %l162, !tbaa !29
  %t259 = load i64, ptr %t258, !range !{i64 0, i64 8}
  %t261 = icmp eq i64 %t259, 0
  store i1 %t261, ptr %l163, !tbaa !21
  br label %bb51
bb51:
  %t262 = load i1, ptr %l163, !tbaa !21
  br i1 %t262, label %bb52, label %bb53
bb52:
  %t263 = load ptr, ptr %l5, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t265, i32 0, i32 0
  %t267 = load %"compiler/source:Span", ptr %t266
  store %"compiler/source:Span" %t267, ptr %l22
  %t269 = load ptr, ptr %l5, !tbaa !29
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t271, i32 0, i32 1
  %t273 = load i32, ptr %t272
  store i32 %t273, ptr %l23, !tbaa !23
  %t275 = load ptr, ptr %l5, !tbaa !29
  %t277 = getelementptr { i64, [4 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t277, i32 0, i32 2
  %t279 = load i32, ptr %t278
  store i32 %t279, ptr %l24, !tbaa !23
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/effects:Effects", ptr %t281, i32 0, i32 2
  %t284 = load i1, ptr %t283, !tbaa !21
  br i1 %t284, label %bb54, label %bb55
bb53:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb62
bb54:
  store i1 true, ptr %l175, !tbaa !21
  br label %bb57
bb55:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load i32, ptr %l23, !tbaa !23
  %t290 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t286, i32 %t287)
  store i1 %t290, ptr %l178
  br label %bb56
bb56:
  %t291 = load i1, ptr %l178, !tbaa !21
  store i1 %t291, ptr %l175, !tbaa !21
  br label %bb57
bb57:
  %t292 = load i1, ptr %l175, !tbaa !21
  br i1 %t292, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l179, !tbaa !21
  br label %bb61
bb59:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr %l23, !tbaa !23
  %t297 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2einstType(ptr %v0, ptr %t293, i32 %t294)
  store i1 %t297, ptr %l182
  br label %bb60
bb60:
  %t298 = load i1, ptr %l182, !tbaa !21
  store i1 %t298, ptr %l179, !tbaa !21
  br label %bb61
bb61:
  %t299 = load i1, ptr %l179, !tbaa !21
  store i1 %t299, ptr %l166, !tbaa !21
  br label %bb62
bb62:
  %t300 = load i1, ptr %l166, !tbaa !21
  br i1 %t300, label %bb63, label %bb64
bb63:
  %t301 = load ptr, ptr %l5, !tbaa !29
  %t303 = getelementptr { i64, [4 x i64] }, ptr %t301, i32 0, i32 1
  %t304 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t303, i32 0, i32 0
  %t305 = load %"compiler/source:Span", ptr %t304
  store %"compiler/source:Span" %t305, ptr %l25
  %t307 = load ptr, ptr %l5, !tbaa !29
  %t309 = getelementptr { i64, [4 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t309, i32 0, i32 1
  %t311 = load i32, ptr %t310
  store i32 %t311, ptr %l26, !tbaa !23
  %t313 = load ptr, ptr %l5, !tbaa !29
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t315, i32 0, i32 2
  %t317 = load i32, ptr %t316
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t322 = sext i32 %t317 to i64
  %t323 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %t319, i64 %t322, ptr %t323)
  br label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb66
bb66:
  br label %bb217
bb67:
  %t327 = load ptr, ptr %l1, !tbaa !29
  store ptr %t327, ptr %l193, !tbaa !29
  store i1 false, ptr %l194, !tbaa !21
  %t328 = load ptr, ptr %l193, !tbaa !29
  %t329 = icmp ne ptr %t328, null
  br i1 %t329, label %bb68, label %bb69
bb68:
  %t331 = load ptr, ptr %l193, !tbaa !29
  %t332 = load i64, ptr %t331, !range !{i64 0, i64 17}
  %t334 = icmp eq i64 %t332, 3
  store i1 %t334, ptr %l194, !tbaa !21
  br label %bb69
bb69:
  %t335 = load i1, ptr %l194, !tbaa !21
  br i1 %t335, label %bb70, label %bb71
bb70:
  %t336 = load ptr, ptr %l1, !tbaa !29
  %t338 = getelementptr { i64, [3 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", ptr }, ptr %t338, i32 0, i32 1
  %t340 = load ptr, ptr %t339
  store ptr %t340, ptr %l28, !tbaa !29
  br label %bb72
bb71:
  br label %bb76
bb72:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l28, !tbaa !29
  %t345 = getelementptr %"compiler/typed:If", ptr %t343, i32 0, i32 0
  %t346 = load ptr, ptr %t345, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t342, ptr %t346)
  br label %bb73
bb73:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load ptr, ptr %l28, !tbaa !29
  %t353 = getelementptr %"compiler/typed:If", ptr %t351, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t350, ptr %t354)
  br label %bb74
bb74:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load ptr, ptr %l28, !tbaa !29
  %t361 = getelementptr %"compiler/typed:If", ptr %t359, i32 0, i32 2
  %t362 = load ptr, ptr %t361, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t358, ptr %t362)
  br label %bb75
bb75:
  br label %bb217
bb76:
  %t365 = load ptr, ptr %l1, !tbaa !29
  store ptr %t365, ptr %l210, !tbaa !29
  store i1 false, ptr %l211, !tbaa !21
  %t366 = load ptr, ptr %l210, !tbaa !29
  %t367 = icmp ne ptr %t366, null
  br i1 %t367, label %bb77, label %bb78
bb77:
  %t369 = load ptr, ptr %l210, !tbaa !29
  %t370 = load i64, ptr %t369, !range !{i64 0, i64 17}
  %t372 = icmp eq i64 %t370, 4
  store i1 %t372, ptr %l211, !tbaa !21
  br label %bb78
bb78:
  %t373 = load i1, ptr %l211, !tbaa !21
  br i1 %t373, label %bb79, label %bb80
bb79:
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t376 = getelementptr { i64, [3 x i64] }, ptr %t374, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t376, i32 0, i32 1
  %t378 = load ptr, ptr %t377
  store ptr %t378, ptr %l29, !tbaa !29
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [3 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t382, i32 0, i32 2
  %t384 = load ptr, ptr %t383
  store ptr %t384, ptr %l30, !tbaa !29
  br label %bb81
bb80:
  br label %bb88
bb81:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/effects:Effects", ptr %t386, i32 0, i32 31
  %t389 = load ptr, ptr %l29, !tbaa !29
  %t391 = getelementptr %"compiler/typed:Block", ptr %t389, i32 0, i32 0
  %t392 = load i32, ptr %t391, !tbaa !23
  %t394 = sext i32 %t392 to i64
  %t397 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t388, i64 %t394)
  store i1 %t397, ptr %l223
  br label %bb82
bb82:
  %t398 = load i1, ptr %l223, !tbaa !21
  %t399 = xor i1 %t398, true
  br i1 %t399, label %bb83, label %bb84
bb83:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/effects:Effects", ptr %t401, i32 0, i32 23
  %t404 = getelementptr %"compiler/effects:Facts", ptr %t403, i32 0, i32 9
  store i1 true, ptr %t404, !tbaa !21
  br label %bb85
bb84:
  br label %bb85
bb85:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t405, ptr %t406)
  br label %bb86
bb86:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t410, ptr %t411)
  br label %bb87
bb87:
  br label %bb217
bb88:
  %t414 = load ptr, ptr %l1, !tbaa !29
  store ptr %t414, ptr %l231, !tbaa !29
  store i1 false, ptr %l232, !tbaa !21
  %t415 = load ptr, ptr %l231, !tbaa !29
  %t416 = icmp ne ptr %t415, null
  br i1 %t416, label %bb89, label %bb90
bb89:
  %t418 = load ptr, ptr %l231, !tbaa !29
  %t419 = load i64, ptr %t418, !range !{i64 0, i64 17}
  %t421 = icmp eq i64 %t419, 6
  store i1 %t421, ptr %l232, !tbaa !21
  br label %bb90
bb90:
  %t422 = load i1, ptr %l232, !tbaa !21
  br i1 %t422, label %bb91, label %bb92
bb91:
  %t423 = load ptr, ptr %l1, !tbaa !29
  %t425 = getelementptr { i64, [3 x i64] }, ptr %t423, i32 0, i32 1
  %t426 = getelementptr { %"compiler/source:Span", ptr }, ptr %t425, i32 0, i32 1
  %t427 = load ptr, ptr %t426
  store ptr %t427, ptr %l31, !tbaa !29
  br label %bb93
bb92:
  br label %bb105
bb93:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t429, ptr %t430)
  br label %bb94
bb94:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/effects:Effects", ptr %t433, i32 0, i32 43
  %t436 = load i1, ptr %t435, !tbaa !21
  br i1 %t436, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l241, !tbaa !21
  br label %bb97
bb96:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/effects:Effects", ptr %t438, i32 0, i32 63
  %t441 = load i1, ptr %t440, !tbaa !21
  store i1 %t441, ptr %l241, !tbaa !21
  br label %bb97
bb97:
  %t443 = load i1, ptr %l241, !tbaa !21
  br i1 %t443, label %bb98, label %bb99
bb98:
  %t444 = load ptr, ptr %l31, !tbaa !29
  %t446 = icmp eq ptr %t444, null
  %t448 = xor i1 %t446, true
  store i1 %t448, ptr %l244, !tbaa !21
  br label %bb100
bb99:
  store i1 false, ptr %l244, !tbaa !21
  br label %bb100
bb100:
  %t450 = load i1, ptr %l244, !tbaa !21
  br i1 %t450, label %bb101, label %bb102
bb101:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t453 = getelementptr %"compiler/effects:Effects", ptr %t451, i32 0, i32 44
  %t454 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t453, ptr %t454)
  br label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb104
bb104:
  br label %bb217
bb105:
  %t457 = load ptr, ptr %l1, !tbaa !29
  store ptr %t457, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t458 = load ptr, ptr %l251, !tbaa !29
  %t459 = icmp ne ptr %t458, null
  br i1 %t459, label %bb106, label %bb107
bb106:
  %t461 = load ptr, ptr %l251, !tbaa !29
  %t462 = load i64, ptr %t461, !range !{i64 0, i64 17}
  %t464 = icmp eq i64 %t462, 16
  store i1 %t464, ptr %l252, !tbaa !21
  br label %bb107
bb107:
  %t465 = load i1, ptr %l252, !tbaa !21
  br i1 %t465, label %bb108, label %bb109
bb108:
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t468 = getelementptr { i64, [3 x i64] }, ptr %t466, i32 0, i32 1
  %t469 = getelementptr { %"compiler/source:Span", ptr }, ptr %t468, i32 0, i32 1
  %t470 = load ptr, ptr %t469
  store ptr %t470, ptr %l32, !tbaa !29
  br label %bb110
bb109:
  br label %bb112
bb110:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t472, ptr %t473)
  br label %bb111
bb111:
  br label %bb217
bb112:
  %t476 = load ptr, ptr %l1, !tbaa !29
  store ptr %t476, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t477 = load ptr, ptr %l259, !tbaa !29
  %t478 = icmp ne ptr %t477, null
  br i1 %t478, label %bb113, label %bb114
bb113:
  %t480 = load ptr, ptr %l259, !tbaa !29
  %t481 = load i64, ptr %t480, !range !{i64 0, i64 17}
  %t483 = icmp eq i64 %t481, 8
  store i1 %t483, ptr %l260, !tbaa !21
  br label %bb114
bb114:
  %t484 = load i1, ptr %l260, !tbaa !21
  br i1 %t484, label %bb115, label %bb116
bb115:
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t487 = getelementptr { i64, [3 x i64] }, ptr %t485, i32 0, i32 1
  %t488 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t487, i32 0, i32 1
  %t489 = load ptr, ptr %t488
  store ptr %t489, ptr %l33, !tbaa !29
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load ptr, ptr %l33, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t491, ptr %t492)
  br label %bb118
bb118:
  br label %bb217
bb119:
  %t496 = load ptr, ptr %l1, !tbaa !29
  store ptr %t496, ptr %l268, !tbaa !29
  store i1 false, ptr %l269, !tbaa !21
  %t497 = load ptr, ptr %l268, !tbaa !29
  %t498 = icmp ne ptr %t497, null
  br i1 %t498, label %bb120, label %bb121
bb120:
  %t500 = load ptr, ptr %l268, !tbaa !29
  %t501 = load i64, ptr %t500, !range !{i64 0, i64 17}
  %t503 = icmp eq i64 %t501, 5
  store i1 %t503, ptr %l269, !tbaa !21
  br label %bb121
bb121:
  %t504 = load i1, ptr %l269, !tbaa !21
  br i1 %t504, label %bb122, label %bb123
bb122:
  br label %bb128
bb123:
  %t505 = load ptr, ptr %l1, !tbaa !29
  store ptr %t505, ptr %l272, !tbaa !29
  store i1 false, ptr %l273, !tbaa !21
  %t506 = load ptr, ptr %l272, !tbaa !29
  %t507 = icmp ne ptr %t506, null
  br i1 %t507, label %bb124, label %bb125
bb124:
  %t509 = load ptr, ptr %l272, !tbaa !29
  %t510 = load i64, ptr %t509, !range !{i64 0, i64 17}
  %t512 = icmp eq i64 %t510, 7
  store i1 %t512, ptr %l273, !tbaa !21
  br label %bb125
bb125:
  %t513 = load i1, ptr %l273, !tbaa !21
  br i1 %t513, label %bb126, label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  br label %bb217
bb129:
  %t514 = load ptr, ptr %l1, !tbaa !29
  store ptr %t514, ptr %l276, !tbaa !29
  store i1 false, ptr %l277, !tbaa !21
  %t515 = load ptr, ptr %l276, !tbaa !29
  %t516 = icmp ne ptr %t515, null
  br i1 %t516, label %bb130, label %bb131
bb130:
  %t518 = load ptr, ptr %l276, !tbaa !29
  %t519 = load i64, ptr %t518, !range !{i64 0, i64 17}
  %t521 = icmp eq i64 %t519, 11
  store i1 %t521, ptr %l277, !tbaa !21
  br label %bb131
bb131:
  %t522 = load i1, ptr %l277, !tbaa !21
  br i1 %t522, label %bb132, label %bb133
bb132:
  %t523 = load ptr, ptr %l1, !tbaa !29
  %t525 = getelementptr { i64, [3 x i64] }, ptr %t523, i32 0, i32 1
  %t526 = getelementptr { %"compiler/source:Span", ptr }, ptr %t525, i32 0, i32 1
  %t527 = load ptr, ptr %t526
  store ptr %t527, ptr %l34, !tbaa !29
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t529, ptr %t530)
  br label %bb135
bb135:
  br label %bb217
bb136:
  %t534 = load ptr, ptr %l1, !tbaa !29
  store ptr %t534, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t535 = load ptr, ptr %l285, !tbaa !29
  %t536 = icmp ne ptr %t535, null
  br i1 %t536, label %bb137, label %bb138
bb137:
  %t538 = load ptr, ptr %l285, !tbaa !29
  %t539 = load i64, ptr %t538, !range !{i64 0, i64 17}
  %t541 = icmp eq i64 %t539, 12
  store i1 %t541, ptr %l286, !tbaa !21
  br label %bb138
bb138:
  %t542 = load i1, ptr %l286, !tbaa !21
  br i1 %t542, label %bb139, label %bb140
bb139:
  %t543 = load ptr, ptr %l1, !tbaa !29
  %t545 = getelementptr { i64, [3 x i64] }, ptr %t543, i32 0, i32 1
  %t546 = getelementptr { %"compiler/source:Span", ptr }, ptr %t545, i32 0, i32 1
  %t547 = load ptr, ptr %t546
  store ptr %t547, ptr %l35, !tbaa !29
  br label %bb141
bb140:
  br label %bb152
bb141:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/effects:Effects", ptr %t549, i32 0, i32 1
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t554 = getelementptr %"compiler/effects:Effects", ptr %t552, i32 0, i32 33
  %t555 = load i64, ptr %t554, !tbaa !24
  %t558 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t551, i64 %t555)
  store ptr %t558, ptr %l295
  br label %bb142
bb142:
  %t559 = load ptr, ptr %l35, !tbaa !29
  %t560 = load ptr, ptr %l295, !tbaa !29
  %t562 = call i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %t560, ptr %t559)
  store i64 %t562, ptr %l297
  br label %bb143
bb143:
  %t563 = load i64, ptr %l297, !tbaa !24
  store i64 %t563, ptr %l36, !tbaa !24
  %t564 = load i64, ptr %l36, !tbaa !24
  %t566 = icmp slt i64 %t564, 0
  br i1 %t566, label %bb144, label %bb145
bb144:
  store i1 true, ptr %l300, !tbaa !21
  br label %bb147
bb145:
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t570 = getelementptr %"compiler/effects:Effects", ptr %t568, i32 0, i32 32
  %t571 = load i64, ptr %l36, !tbaa !24
  %t574 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t570, i64 %t571)
  store i1 %t574, ptr %l304
  br label %bb146
bb146:
  %t575 = load i1, ptr %l304, !tbaa !21
  store i1 %t575, ptr %l300, !tbaa !21
  br label %bb147
bb147:
  %t576 = load i1, ptr %l300, !tbaa !21
  br i1 %t576, label %bb148, label %bb149
bb148:
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t578 = load ptr, ptr %l35, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t577, ptr %t578)
  br label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb151
bb151:
  br label %bb217
bb152:
  %t582 = load ptr, ptr %l1, !tbaa !29
  store ptr %t582, ptr %l308, !tbaa !29
  store i1 false, ptr %l309, !tbaa !21
  %t583 = load ptr, ptr %l308, !tbaa !29
  %t584 = icmp ne ptr %t583, null
  br i1 %t584, label %bb153, label %bb154
bb153:
  %t586 = load ptr, ptr %l308, !tbaa !29
  %t587 = load i64, ptr %t586, !range !{i64 0, i64 17}
  %t589 = icmp eq i64 %t587, 9
  store i1 %t589, ptr %l309, !tbaa !21
  br label %bb154
bb154:
  %t590 = load i1, ptr %l309, !tbaa !21
  br i1 %t590, label %bb155, label %bb156
bb155:
  %t591 = load ptr, ptr %l1, !tbaa !29
  %t593 = getelementptr { i64, [3 x i64] }, ptr %t591, i32 0, i32 1
  %t594 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t593, i32 0, i32 2
  %t595 = load ptr, ptr %t594
  store ptr %t595, ptr %l37, !tbaa !29
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t599 = getelementptr %"compiler/effects:Effects", ptr %t597, i32 0, i32 23
  %t600 = getelementptr %"compiler/effects:Facts", ptr %t599, i32 0, i32 16
  store i1 true, ptr %t600, !tbaa !21
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecoldExpr(ptr %v0, ptr %v1, ptr %t601, ptr %t602)
  br label %bb158
bb158:
  br label %bb217
bb159:
  %t605 = load ptr, ptr %l1, !tbaa !29
  store ptr %t605, ptr %l317, !tbaa !29
  store i1 false, ptr %l318, !tbaa !21
  %t606 = load ptr, ptr %l317, !tbaa !29
  %t607 = icmp ne ptr %t606, null
  br i1 %t607, label %bb160, label %bb161
bb160:
  %t609 = load ptr, ptr %l317, !tbaa !29
  %t610 = load i64, ptr %t609, !range !{i64 0, i64 17}
  %t612 = icmp eq i64 %t610, 10
  store i1 %t612, ptr %l318, !tbaa !21
  br label %bb161
bb161:
  %t613 = load i1, ptr %l318, !tbaa !21
  br i1 %t613, label %bb162, label %bb163
bb162:
  %t614 = load ptr, ptr %l1, !tbaa !29
  %t616 = getelementptr { i64, [3 x i64] }, ptr %t614, i32 0, i32 1
  %t617 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t616, i32 0, i32 1
  %t618 = load ptr, ptr %t617
  store ptr %t618, ptr %l38, !tbaa !29
  %t620 = load ptr, ptr %l1, !tbaa !29
  %t622 = getelementptr { i64, [3 x i64] }, ptr %t620, i32 0, i32 1
  %t623 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t622, i32 0, i32 2
  %t624 = load ptr, ptr %t623
  store ptr %t624, ptr %l39, !tbaa !29
  br label %bb164
bb163:
  br label %bb171
bb164:
  %t626 = load ptr, ptr %l38, !tbaa !29
  %t628 = call i1 @compiler_2feffects_2elitTrue(ptr %v1, ptr %t626)
  store i1 %t628, ptr %l326
  br label %bb165
bb165:
  %t629 = load i1, ptr %l326, !tbaa !21
  %t630 = xor i1 %t629, true
  br i1 %t630, label %bb166, label %bb167
bb166:
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t634 = getelementptr %"compiler/effects:Effects", ptr %t632, i32 0, i32 23
  %t635 = getelementptr %"compiler/effects:Facts", ptr %t634, i32 0, i32 16
  store i1 true, ptr %t635, !tbaa !21
  br label %bb168
bb167:
  br label %bb168
bb168:
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t637 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t636, ptr %t637)
  br label %bb169
bb169:
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t642 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecoldExpr(ptr %v0, ptr %v1, ptr %t641, ptr %t642)
  br label %bb170
bb170:
  br label %bb217
bb171:
  %t645 = load ptr, ptr %l1, !tbaa !29
  store ptr %t645, ptr %l334, !tbaa !29
  store i1 false, ptr %l335, !tbaa !21
  %t646 = load ptr, ptr %l334, !tbaa !29
  %t647 = icmp ne ptr %t646, null
  br i1 %t647, label %bb172, label %bb173
bb172:
  %t649 = load ptr, ptr %l334, !tbaa !29
  %t650 = load i64, ptr %t649, !range !{i64 0, i64 17}
  %t652 = icmp eq i64 %t650, 13
  store i1 %t652, ptr %l335, !tbaa !21
  br label %bb173
bb173:
  %t653 = load i1, ptr %l335, !tbaa !21
  br i1 %t653, label %bb174, label %bb175
bb174:
  %t654 = load ptr, ptr %l1, !tbaa !29
  %t656 = getelementptr { i64, [3 x i64] }, ptr %t654, i32 0, i32 1
  %t657 = getelementptr { %"compiler/source:Span", ptr }, ptr %t656, i32 0, i32 1
  %t658 = load ptr, ptr %t657
  store ptr %t658, ptr %l40, !tbaa !29
  br label %bb176
bb175:
  br label %bb185
bb176:
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t662 = getelementptr %"compiler/effects:Effects", ptr %t660, i32 0, i32 23
  %t663 = getelementptr %"compiler/effects:Facts", ptr %t662, i32 0, i32 2
  store i1 true, ptr %t663, !tbaa !21
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load ptr, ptr %l40, !tbaa !29
  %t667 = getelementptr %"compiler/typed:Join", ptr %t665, i32 0, i32 0
  %t668 = load ptr, ptr %t667, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %t664, ptr %t668)
  br label %bb177
bb177:
  %t672 = load ptr, ptr %l40, !tbaa !29
  %t674 = getelementptr %"compiler/typed:Join", ptr %t672, i32 0, i32 2
  %t675 = load { i64, ptr }, ptr %t674, !tbaa !27
  store { i64, ptr } %t675, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t677 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t679 = extractvalue { i64, ptr } %t677, 0
  store i64 %t679, ptr %l43, !tbaa !24
  br label %bb178
bb178:
  %t681 = load i64, ptr %l42, !tbaa !24
  %t682 = load i64, ptr %l43, !tbaa !24
  %t685 = icmp slt i64 %t681, %t682
  %t687 = xor i1 %t685, true
  br i1 %t687, label %bb179, label %bb180
bb179:
  br label %bb184
bb180:
  br label %bb181
bb181:
  %t689 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t689, ptr %l353, !tbaa !27
  %t690 = load i64, ptr %l42, !tbaa !24
  %t692 = getelementptr { i64, ptr }, ptr %l353, i32 0, i32 1
  %t693 = load ptr, ptr %t692, !tbaa !27
  %t694 = getelementptr ptr, ptr %t693, i64 %t690
  %t695 = load ptr, ptr %t694, !tbaa !39
  %t697 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclause(ptr %v0, ptr %v1, ptr %t697, ptr %t695)
  br label %bb182
bb182:
  br label %bb183
bb183:
  %t701 = load i64, ptr %l42, !tbaa !24
  %t703 = add i64 %t701, 1
  store i64 %t703, ptr %l42, !tbaa !24
  br label %bb178
bb184:
  br label %bb217
bb185:
  %t705 = load ptr, ptr %l1, !tbaa !29
  store ptr %t705, ptr %l360, !tbaa !29
  store i1 false, ptr %l361, !tbaa !21
  %t706 = load ptr, ptr %l360, !tbaa !29
  %t707 = icmp ne ptr %t706, null
  br i1 %t707, label %bb186, label %bb187
bb186:
  %t709 = load ptr, ptr %l360, !tbaa !29
  %t710 = load i64, ptr %t709, !range !{i64 0, i64 17}
  %t712 = icmp eq i64 %t710, 14
  store i1 %t712, ptr %l361, !tbaa !21
  br label %bb187
bb187:
  %t713 = load i1, ptr %l361, !tbaa !21
  br i1 %t713, label %bb188, label %bb189
bb188:
  %t714 = load ptr, ptr %l1, !tbaa !29
  %t716 = getelementptr { i64, [3 x i64] }, ptr %t714, i32 0, i32 1
  %t717 = getelementptr { %"compiler/source:Span", ptr }, ptr %t716, i32 0, i32 1
  %t718 = load ptr, ptr %t717
  store ptr %t718, ptr %l45, !tbaa !29
  br label %bb190
bb189:
  br label %bb216
bb190:
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t722 = getelementptr %"compiler/effects:Effects", ptr %t720, i32 0, i32 23
  %t723 = getelementptr %"compiler/effects:Facts", ptr %t722, i32 0, i32 7
  store i1 true, ptr %t723, !tbaa !21
  %t724 = load ptr, ptr %l0, !tbaa !29
  %t725 = load i64, ptr @G_2ecompiler_2feffects_2eCapThreads, !tbaa !24
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecap(ptr %v0, ptr %t724, i64 %t725)
  br label %bb191
bb191:
  %t728 = load ptr, ptr %l45, !tbaa !29
  %t730 = getelementptr %"compiler/typed:Spawn", ptr %t728, i32 0, i32 0
  %t731 = load { i64, ptr }, ptr %t730, !tbaa !27
  store { i64, ptr } %t731, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t733 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t735 = extractvalue { i64, ptr } %t733, 0
  store i64 %t735, ptr %l48, !tbaa !24
  br label %bb192
bb192:
  %t737 = load i64, ptr %l47, !tbaa !24
  %t738 = load i64, ptr %l48, !tbaa !24
  %t741 = icmp slt i64 %t737, %t738
  %t743 = xor i1 %t741, true
  br i1 %t743, label %bb193, label %bb194
bb193:
  br label %bb207
bb194:
  br label %bb195
bb195:
  %t745 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t745, ptr %l377, !tbaa !27
  %t746 = load i64, ptr %l47, !tbaa !24
  %t748 = getelementptr { i64, ptr }, ptr %l377, i32 0, i32 1
  %t749 = load ptr, ptr %t748, !tbaa !27
  %t750 = getelementptr ptr, ptr %t749, i64 %t746
  %t751 = load ptr, ptr %t750, !tbaa !39
  store ptr %t751, ptr %l49, !tbaa !29
  %t753 = load ptr, ptr %l49, !tbaa !29
  %t755 = icmp eq ptr %t753, null
  br i1 %t755, label %bb196, label %bb197
bb196:
  br label %bb206
bb197:
  br label %bb198
bb198:
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t758 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %t757, ptr %t758, i1 true)
  br label %bb199
bb199:
  %t761 = load ptr, ptr %l49, !tbaa !29
  store ptr %t761, ptr %l384, !tbaa !29
  store i1 false, ptr %l385, !tbaa !21
  %t762 = load ptr, ptr %l384, !tbaa !29
  %t763 = icmp ne ptr %t762, null
  br i1 %t763, label %bb200, label %bb201
bb200:
  %t765 = load ptr, ptr %l384, !tbaa !29
  %t766 = load i64, ptr %t765, !range !{i64 0, i64 8}
  %t768 = icmp eq i64 %t766, 0
  store i1 %t768, ptr %l385, !tbaa !21
  br label %bb201
bb201:
  %t769 = load i1, ptr %l385, !tbaa !21
  br i1 %t769, label %bb202, label %bb203
bb202:
  %t770 = load ptr, ptr %l49, !tbaa !29
  %t772 = getelementptr { i64, [4 x i64] }, ptr %t770, i32 0, i32 1
  %t773 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t772, i32 0, i32 0
  %t774 = load %"compiler/source:Span", ptr %t773
  store %"compiler/source:Span" %t774, ptr %l50
  %t776 = load ptr, ptr %l49, !tbaa !29
  %t778 = getelementptr { i64, [4 x i64] }, ptr %t776, i32 0, i32 1
  %t779 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t778, i32 0, i32 1
  %t780 = load i32, ptr %t779
  store i32 %t780, ptr %l51, !tbaa !23
  %t782 = load ptr, ptr %l49, !tbaa !29
  %t784 = getelementptr { i64, [4 x i64] }, ptr %t782, i32 0, i32 1
  %t785 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t784, i32 0, i32 2
  %t786 = load i32, ptr %t785
  %t788 = load ptr, ptr %l0, !tbaa !29
  %t791 = sext i32 %t786 to i64
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2espawnedInto(ptr %v0, ptr %t788, i64 %t791)
  br label %bb204
bb203:
  br label %bb205
bb204:
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t794 = load i64, ptr %l47, !tbaa !24
  %t796 = add i64 %t794, 1
  store i64 %t796, ptr %l47, !tbaa !24
  br label %bb192
bb207:
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t800 = getelementptr %"compiler/effects:Effects", ptr %t798, i32 0, i32 64
  store i1 true, ptr %t800, !tbaa !21
  %t801 = load ptr, ptr %l0, !tbaa !29
  %t802 = load ptr, ptr %l45, !tbaa !29
  %t804 = getelementptr %"compiler/typed:Spawn", ptr %t802, i32 0, i32 1
  %t805 = load ptr, ptr %t804, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t801, ptr %t805)
  br label %bb208
bb208:
  %t809 = load ptr, ptr %l0, !tbaa !29
  %t811 = getelementptr %"compiler/effects:Effects", ptr %t809, i32 0, i32 64
  store i1 false, ptr %t811, !tbaa !21
  %t812 = load ptr, ptr %l45, !tbaa !29
  %t814 = getelementptr %"compiler/typed:Spawn", ptr %t812, i32 0, i32 2
  %t815 = load { i64, ptr }, ptr %t814, !tbaa !27
  store { i64, ptr } %t815, ptr %l53, !tbaa !27
  store i64 0, ptr %l54, !tbaa !24
  %t817 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t819 = extractvalue { i64, ptr } %t817, 0
  store i64 %t819, ptr %l55, !tbaa !24
  br label %bb209
bb209:
  %t821 = load i64, ptr %l54, !tbaa !24
  %t822 = load i64, ptr %l55, !tbaa !24
  %t825 = icmp slt i64 %t821, %t822
  %t827 = xor i1 %t825, true
  br i1 %t827, label %bb210, label %bb211
bb210:
  br label %bb215
bb211:
  br label %bb212
bb212:
  %t829 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t829, ptr %l413, !tbaa !27
  %t830 = load i64, ptr %l54, !tbaa !24
  %t832 = getelementptr { i64, ptr }, ptr %l413, i32 0, i32 1
  %t833 = load ptr, ptr %t832, !tbaa !27
  %t834 = getelementptr ptr, ptr %t833, i64 %t830
  %t835 = load ptr, ptr %t834, !tbaa !39
  %t837 = load ptr, ptr %l0, !tbaa !29
  %t840 = getelementptr %"compiler/typed:TaskClause", ptr %t835, i32 0, i32 3
  %t841 = load ptr, ptr %t840, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %t837, ptr %t841)
  br label %bb213
bb213:
  br label %bb214
bb214:
  %t844 = load i64, ptr %l54, !tbaa !24
  %t846 = add i64 %t844, 1
  store i64 %t846, ptr %l54, !tbaa !24
  br label %bb209
bb215:
  br label %bb217
bb216:
  call void @__olang_check_failed(ptr @olang_loc_cdd9fd819eb1314_592489ef7c054390)
  unreachable
bb217:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estructOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca i32
  %l16 = alloca i32
  %l18 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i1
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Effects", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/effects:Effects", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb1
bb1:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Effects", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l16
  br label %bb4
bb3:
  %t28 = load i32, ptr %l1, !tbaa !23
  store i32 %t28, ptr %l11, !tbaa !23
  br label %bb5
bb4:
  %t30 = load i32, ptr %l16, !tbaa !23
  store i32 %t30, ptr %l11, !tbaa !23
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t32 = load i32, ptr %l11, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t33, ptr %l18
  br label %bb6
bb6:
  %t34 = load i32, ptr %l18, !tbaa !23
  store i32 %t34, ptr %l2, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/effects:Effects", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l23
  br label %bb7
bb7:
  %t45 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t47 = trunc i64 18 to i32
  %t48 = icmp eq i32 %t45, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb12
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/effects:Effects", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  store ptr %t57, ptr %l30, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/effects:Effects", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l2, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l35
  br label %bb10
bb10:
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t69 = load i32, ptr %l35, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l36
  br label %bb11
bb11:
  %t71 = load i32, ptr %l36, !range !{i32 0, i32 6}
  %t73 = trunc i64 0 to i32
  %t74 = icmp eq i32 %t71, %t73
  %t76 = xor i1 %t74, true
  store i1 %t76, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t78 = load i1, ptr %l27, !tbaa !21
  br i1 %t78, label %bb13, label %bb14
bb13:
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t79, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t81 = load i32, ptr %l2, !tbaa !23
  store i32 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2etakesFn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca i32
  %l37 = alloca ptr
  %l42 = alloca %"compiler/typed:Local"
  %l44 = alloca i1
  %l53 = alloca i64
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/effects:Effects", ptr %t17, i32 0, i32 11
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l18
  br label %bb8
bb8:
  %t24 = load i64, ptr %l18, !tbaa !24
  %t25 = icmp slt i64 %t24, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/effects:Effects", ptr %t27, i32 0, i32 11
  %t30 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t29, i64 %t30, i64 0)
  br label %bb11
bb10:
  br label %bb27
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/effects:Effects", ptr %t33, i32 0, i32 1
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l26
  br label %bb12
bb12:
  %t40 = load ptr, ptr %l26, !tbaa !29
  store ptr %t40, ptr %l2, !tbaa !29
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 5
  store ptr %t43, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %l29, !tbaa !24
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t46)
  store i64 %t48, ptr %l31
  br label %bb14
bb14:
  %t49 = load i64, ptr %l29, !tbaa !24
  %t50 = load i64, ptr %l31, !tbaa !24
  %t51 = icmp slt i64 %t49, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t55, i64 %t56)
  store i32 %t59, ptr %l36
  br label %bb18
bb18:
  %t60 = load i32, ptr %l36, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l37, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Body", ptr %t62, i32 0, i32 7
  %t67 = sext i32 %t60 to i64
  %t70 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t64, i64 %t67)
  store %"compiler/typed:Local" %t70, ptr %l42
  br label %bb19
bb19:
  %t71 = getelementptr %"compiler/typed:Local", ptr %l42, i32 0, i32 2
  %t72 = load i32, ptr %t71, !tbaa !23
  %t73 = load ptr, ptr %l37, !tbaa !29
  %t75 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eisFn(ptr %v0, ptr %t73, i32 %t72)
  store i1 %t75, ptr %l44
  br label %bb20
bb20:
  %t76 = load i1, ptr %l44, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/effects:Effects", ptr %t77, i32 0, i32 11
  %t80 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t79, i64 %t80, i64 1)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t83 = load i64, ptr %l4, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l4, !tbaa !24
  br label %bb13
bb26:
  br label %bb27
bb27:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 11
  %t90 = load i64, ptr %l1, !tbaa !24
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t89, i64 %t90)
  store i64 %t93, ptr %l53
  br label %bb28
bb28:
  %t94 = load i64, ptr %l53, !tbaa !24
  %t95 = icmp eq i64 %t94, 1
  store i1 %t95, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ethroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/effects:Facts"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"compiler/effects:Facts"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca %"compiler/effects:Facts"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca i64
  %l41 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"compiler/effects:Facts", ptr %l9
  store %"compiler/effects:Facts" %t2, ptr %l2
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb3
bb3:
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb15
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l18
  br label %bb7
bb7:
  %t20 = load i64, ptr %l18, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallsThrough(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l21, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  store ptr %l2, ptr %l22, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebounds(ptr %v0, ptr %t27, i64 %t28)
  store %"compiler/effects:Facts" %t31, ptr %l25
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t32 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s3, ptr %t32, ptr %l25)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb2
bb15:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t40 = load i64, ptr %l7, !tbaa !24
  store i64 %t40, ptr %l30, !tbaa !24
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t41)
  store i64 %t43, ptr %l32
  br label %bb17
bb17:
  %t44 = load i64, ptr %l30, !tbaa !24
  %t45 = load i64, ptr %l32, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb18, label %bb19
bb18:
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t50, i64 %t51)
  store i64 %t54, ptr %l37
  br label %bb21
bb21:
  %t55 = load i64, ptr %l37, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/effects:Effects", ptr %t56, i32 0, i32 9
  %t62 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v0, ptr %t58, i64 %t55)
  store ptr %t62, ptr %l41
  br label %bb22
bb22:
  %t63 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %v0, ptr %s0, ptr %t63, ptr %l2)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l7, !tbaa !24
  br label %bb16
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l6 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %s0, ptr %t1)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/effects:Effects", ptr %t11, i32 0, i32 48
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t10, { i64, ptr } %t14)
  store i1 %t17, ptr %l6
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load i1, ptr %l6, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i1
  %l56 = alloca i64
  %l59 = alloca i64
  %l61 = alloca i1
  %l65 = alloca i64
  %l69 = alloca %"compiler/effects:Facts"
  %l73 = alloca { i64, ptr }
  %l75 = alloca i1
  %l76 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l81 = alloca { i64, ptr }
  %l89 = alloca i1
  %l91 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l96 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i1, ptr %l13, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Effects", ptr %t5, i32 0, i32 24
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i64, ptr %l16, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2estmt(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/effects:Effects", ptr %t15, i32 0, i32 49
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/effects:Effects", ptr %t22, i32 0, i32 24
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l24, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb13
bb10:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l31, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l31, !tbaa !24
  store i64 %t54, ptr %l28, !tbaa !24
  br label %bb13
bb13:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb16:
  br label %bb17
bb17:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/effects:Effects", ptr %t74, i32 0, i32 24
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t76, i64 %t72)
  store i64 %t80, ptr %l52
  br label %bb18
bb18:
  %t81 = load i64, ptr %l52, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = icmp slt i64 %t82, 0
  br i1 %t84, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb22
bb20:
  %t86 = load i64, ptr %l10, !tbaa !24
  store i64 %t86, ptr %l56, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/effects:Effects", ptr %t87, i32 0, i32 1
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t89)
  store i64 %t91, ptr %l59
  br label %bb21
bb21:
  %t92 = load i64, ptr %l56, !tbaa !24
  %t93 = load i64, ptr %l59, !tbaa !24
  %t94 = icmp sge i64 %t92, %t93
  store i1 %t94, ptr %l55, !tbaa !21
  br label %bb22
bb22:
  %t96 = load i1, ptr %l55, !tbaa !21
  br i1 %t96, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb26
bb24:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 15
  %t100 = load i64, ptr %l10, !tbaa !24
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t99, i64 %t100)
  store i64 %t103, ptr %l65
  br label %bb25
bb25:
  %t104 = load i64, ptr %l65, !tbaa !24
  %t105 = icmp slt i64 %t104, 2
  store i1 %t105, ptr %l61, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l61, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb28:
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l10, !tbaa !24
  %t112 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2enamed(ptr %v0, ptr %t108, i64 %t109)
  store %"compiler/effects:Facts" %t112, ptr %l69
  br label %bb30
bb30:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/effects:Effects", ptr %t113, i32 0, i32 47
  %t116 = load i64, ptr %t115, !tbaa !24
  %t119 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %s3, ptr %s3, ptr %l69, i64 %t116)
  store { i64, ptr } %t119, ptr %l73
  br label %bb31
bb31:
  %t120 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t120, ptr %l11, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t121, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t123, ptr %l75
  br label %bb32
bb32:
  %t124 = load i1, ptr %l75, !tbaa !21
  br i1 %t124, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l76, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = call %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v1, ptr %t126)
  store %"compiler/source:Span" %t128, ptr %l78
  br label %bb36
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %s3, ptr %t129, i64 %t130)
  store { i64, ptr } %t133, ptr %l81
  br label %bb37
bb37:
  %t134 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t135 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t137 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t145 = extractvalue { i64, ptr } %t134, 1
  %t146 = extractvalue { i64, ptr } %t134, 0
  %t147 = add i64 %t143, %t146
  %t148 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t147)
  call void @olang_textcopy(ptr %t148, ptr %t135, i64 %t136)
  %t149 = getelementptr i8, ptr %t148, i64 %t136
  call void @olang_textcopy(ptr %t149, ptr %t138, i64 %t139)
  %t150 = getelementptr i8, ptr %t149, i64 %t139
  call void @olang_textcopy(ptr %t150, ptr %t141, i64 %t142)
  %t151 = getelementptr i8, ptr %t150, i64 %t142
  call void @olang_textcopy(ptr %t151, ptr %t145, i64 %t146)
  %t152 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t148, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t161 = load ptr, ptr %l76, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l78
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %s3, ptr %t161, %"compiler/source:Span" %t162, { i64, ptr } %t160)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb39:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb14
bb40:
  %t168 = load i1, ptr %l2, !tbaa !21
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb41, label %bb42
bb41:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyNow(ptr %v0, ptr %t172)
  store i1 %t174, ptr %l91
  br label %bb43
bb42:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb44
bb43:
  %t175 = load i1, ptr %l91, !tbaa !21
  store i1 %t175, ptr %l89, !tbaa !21
  br label %bb44
bb44:
  %t176 = load i1, ptr %l89, !tbaa !21
  br i1 %t176, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s8
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l92, !tbaa !29
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = call %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v1, ptr %t178)
  store %"compiler/source:Span" %t180, ptr %l94
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = call { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %s8, ptr %t181)
  store { i64, ptr } %t183, ptr %l96
  br label %bb48
bb48:
  %t184 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t186 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t184, i64 %t185)
  %t194 = getelementptr i8, ptr %t193, i64 %t185
  call void @olang_textcopy(ptr %t194, ptr %t187, i64 %t188)
  %t195 = getelementptr i8, ptr %t194, i64 %t188
  call void @olang_textcopy(ptr %t195, ptr %t190, i64 %t191)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = extractvalue { i64, ptr } %t197, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  %t205 = load ptr, ptr %l92, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l94
  call void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebecause(ptr %v0, ptr %s8, ptr %t205, %"compiler/source:Span" %t206, { i64, ptr } %t204)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb50:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritesUnowned(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l46 = alloca i64
  %l49 = alloca i64
  %l53 = alloca ptr
  %l57 = alloca i32
  %l59 = alloca %"compiler/typed:Local"
  %l65 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Effects", ptr %t6, i32 0, i32 1
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t8, i64 %a1)
  store ptr %t12, ptr %l17
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l17, !tbaa !29
  store ptr %t13, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  store i64 63, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l21, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  br label %bb34
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = call i1 @compiler_2feffects_2ehasBit(i64 %t60, i64 %t61)
  store i1 %t64, ptr %l44
  br label %bb15
bb15:
  %t65 = load i1, ptr %l44, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb33
bb17:
  br label %bb18
bb18:
  %t68 = load i64, ptr %l9, !tbaa !24
  store i64 %t68, ptr %l46, !tbaa !24
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 5
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l49
  br label %bb19
bb19:
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i64, ptr %l49, !tbaa !24
  %t76 = icmp sge i64 %t74, %t75
  br i1 %t76, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 7
  store ptr %t81, ptr %l53, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Body", ptr %t82, i32 0, i32 5
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t84, i64 %t85)
  store i32 %t88, ptr %l57
  br label %bb23
bb23:
  %t89 = load i32, ptr %l57, !tbaa !23
  %t90 = sext i32 %t89 to i64
  %t91 = load ptr, ptr %l53, !tbaa !29
  %t93 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t91, i64 %t90)
  store %"compiler/typed:Local" %t93, ptr %l59
  br label %bb24
bb24:
  %t94 = getelementptr %"compiler/typed:Local", ptr %l59, i32 0, i32 2
  %t95 = load i32, ptr %t94, !tbaa !23
  store i32 %t95, ptr %l10, !tbaa !23
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/effects:Effects", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l10, !tbaa !23
  %t106 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t106, ptr %l65
  br label %bb25
bb25:
  %t107 = load i1, ptr %l65, !tbaa !21
  %t108 = xor i1 %t107, true
  br i1 %t108, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb29
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/effects:Effects", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l10, !tbaa !23
  %t119 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t115, i32 %t116)
  store i64 %t119, ptr %l72
  br label %bb28
bb28:
  %t120 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t121 = load i64, ptr %l72, !tbaa !24
  %t123 = and i64 %t121, %t120
  %t125 = icmp eq i64 %t123, 0
  store i1 %t125, ptr %l67, !tbaa !21
  br label %bb29
bb29:
  %t127 = load i1, ptr %l67, !tbaa !21
  br i1 %t127, label %bb30, label %bb31
bb30:
  store i1 true, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l8, !tbaa !24
  br label %bb11
bb34:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eEvaluable(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 5
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 3
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 4
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/effects:Facts", ptr %t18, i32 0, i32 10
  %t21 = load i1, ptr %t20, !tbaa !21
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/effects:Facts", ptr %t24, i32 0, i32 14
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/effects:Facts", ptr %t30, i32 0, i32 13
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eReturns(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/effects:Facts", ptr %t5, i32 0, i32 13
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb7
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/effects:Facts", ptr %t10, i32 0, i32 16
  %t13 = load i1, ptr %t12, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l6, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l3, !tbaa !21
  br label %bb7
bb7:
  %t18 = load i1, ptr %l3, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2ehasBit(i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l4 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  %t4 = call i64 @compiler_2feffects_2eparamBit(i64 %a1)
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = and i64 %t5, %t6
  %t9 = icmp ne i64 %t7, 0
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feffects_2elitTrue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l2, !tbaa !24
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t26 = icmp eq i32 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp eq i64 %t28, 1
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l15, !tbaa !21
  store i1 %t32, ptr %l3, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d8bf60be8d53266c_65df02eeff1797b0)
  unreachable
bb14:
  %t33 = load i1, ptr %l3, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2feffects_2enotReturning(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/effects:Facts", ptr %t1, i32 0, i32 15
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/effects:Facts", ptr %t6, i32 0, i32 10
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/effects:Facts", ptr %t12, i32 0, i32 11
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t18, ptr %l10, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l11, !tbaa !24
  %t21 = load i64, ptr %l11, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l12, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l11, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t32, ptr %l10, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/effects:Facts", ptr %t34, i32 0, i32 8
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t39, ptr %l16, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l17, !tbaa !24
  %t42 = load i64, ptr %l17, !tbaa !24
  %t43 = mul i64 %t42, 1
  %t44 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  store { i64, ptr } %t46, ptr %l18, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l17, !tbaa !24
  %t52 = mul i64 %t51, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %t50, i64 %t52, i1 false)
  %t53 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t53, ptr %l16, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t54, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/effects:Facts", ptr %t55, i32 0, i32 9
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t60, ptr %l22, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l23, !tbaa !24
  %t63 = load i64, ptr %l23, !tbaa !24
  %t64 = mul i64 %t63, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l24, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l23, !tbaa !24
  %t73 = mul i64 %t72, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t74, ptr %l22, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/effects:Facts", ptr %t76, i32 0, i32 2
  %t79 = load i1, ptr %t78, !tbaa !21
  br i1 %t79, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb17:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/effects:Facts", ptr %t81, i32 0, i32 6
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t86 = load i1, ptr %l27, !tbaa !21
  br i1 %t86, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t87, ptr %l31, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l32, !tbaa !24
  %t90 = load i64, ptr %l32, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l33, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l32, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t101, ptr %l31, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t102, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/effects:Facts", ptr %t103, i32 0, i32 13
  %t106 = load i1, ptr %t105, !tbaa !21
  br i1 %t106, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb24
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/effects:Facts", ptr %t108, i32 0, i32 16
  %t111 = load i1, ptr %t110, !tbaa !21
  store i1 %t111, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t113 = load i1, ptr %l36, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t114, ptr %l40, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l41, !tbaa !24
  %t117 = load i64, ptr %l41, !tbaa !24
  %t118 = mul i64 %t117, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t118)
  %t120 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  store { i64, ptr } %t121, ptr %l42, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = load i64, ptr %l41, !tbaa !24
  %t127 = mul i64 %t126, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t123, ptr %t125, i64 %t127, i1 false)
  %t128 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t128, ptr %l40, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t129, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l43, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t130, ptr %l44, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l45, !tbaa !24
  %t133 = load i64, ptr %l45, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l46, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l45, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  %t144 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t144, ptr %l44, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t145, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feffects_3aEffects_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l25 = alloca %"compiler/effects:Facts"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i1
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca i1
  %l52 = alloca %"compiler/source:Span"
  %l53 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca i64
  %l56 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i1
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l62 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l65 = alloca i1
  %l66 = alloca i1
  %l67 = alloca %"compiler/typed:RefsKept"
  %l68 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l92 = alloca i64
  %l94 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l96 = alloca i64
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca i64
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca i64
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca i64
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca i64
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l120 = alloca i64
  %l122 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l124 = alloca i64
  %l126 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l128 = alloca i64
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca i64
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca i64
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca i64
  %l142 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l144 = alloca %"compiler/effects:Facts"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l153 = alloca i64
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca i64
  %l159 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca i64
  %l163 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l165 = alloca i64
  %l167 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l169 = alloca i64
  %l171 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l173 = alloca i64
  %l175 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l177 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l180 = alloca i64
  %l182 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l184 = alloca i64
  %l186 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l188 = alloca i64
  %l190 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l192 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca i64
  %l195 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l197 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l199 = alloca i64
  %l200 = alloca { i64, ptr }
  %l201 = alloca %"compiler/source:Span"
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l204 = alloca i64
  %l205 = alloca { i64, ptr }
  %l206 = alloca i64
  %l208 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l210 = alloca i64
  %l212 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l214 = alloca i64
  %l216 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l218 = alloca i64
  %l220 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l222 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l223 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l224 = alloca i64
  %l226 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l228 = alloca i64
  %l230 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l232 = alloca i64
  %l234 = alloca %"compiler/typed:RefsKept"
  %l236 = alloca i64
  %l238 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l240 = alloca i64
  %l242 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l244 = alloca %"compiler/effects:Effects"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l72, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l72, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l72
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l74
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e3
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l72
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l5
  %t26 = ptrtoint ptr %v2 to i64
  store i64 %t26, ptr %l76, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e4
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = call ptr @__olang_region_make(ptr %v2)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l76, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l76
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t32, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l78
  br label %bb8
bb8:
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e4
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l76
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = call ptr @__olang_region_home(ptr %t41)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t37
  call void @__olang_region_settle(ptr %t37, i1 %t45)
  br label %bb10
bb10:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l6
  %t47 = ptrtoint ptr %v2 to i64
  store i64 %t47, ptr %l80, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e5
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = call ptr @__olang_region_make(ptr %v2)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l80, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l80
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %t53, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l82
  br label %bb13
bb13:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e5
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load i64, ptr %l80
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = call ptr @__olang_region_home(ptr %t62)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr null
  %t66 = icmp eq ptr %t65, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t66)
  br label %bb15
bb15:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l7
  %t68 = ptrtoint ptr %v2 to i64
  store i64 %t68, ptr %l84, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e6
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t71 = call ptr @__olang_region_make(ptr %v2)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l84, !tbaa !24
  br label %bb17
bb17:
  %t73 = load i64, ptr %l84
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_3e_2ector(ptr %t74, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l86
  br label %bb18
bb18:
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e6
  br i1 %t76, label %bb19, label %bb20
bb19:
  %t78 = load i64, ptr %l84
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t81 = load { i64, ptr }, ptr %t80
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = call ptr @__olang_region_or(ptr %t82, ptr null)
  %t84 = call ptr @__olang_region_home(ptr %t83)
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr null
  %t87 = icmp eq ptr %t86, %t79
  call void @__olang_region_settle(ptr %t79, i1 %t87)
  br label %bb20
bb20:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l8
  %t89 = ptrtoint ptr %v2 to i64
  store i64 %t89, ptr %l88, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e7
  br i1 %t90, label %bb21, label %bb22
bb21:
  %t92 = call ptr @__olang_region_make(ptr %v2)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l88, !tbaa !24
  br label %bb22
bb22:
  %t94 = load i64, ptr %l88
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hbea44694f2ac293c111b1f169c7495eb(ptr %t95)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t96, ptr %l90
  br label %bb23
bb23:
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e7
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = load i64, ptr %l88
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = call ptr @__olang_region_home(ptr %t104)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr null
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = call ptr @__olang_region_or(ptr %t110, ptr null)
  %t112 = call ptr @__olang_region_home(ptr %t111)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t107
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = call ptr @__olang_region_home(ptr %t118)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr %t114
  %t122 = icmp eq ptr %t121, %t100
  call void @__olang_region_settle(ptr %t100, i1 %t122)
  br label %bb25
bb25:
  %t123 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l90
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t123, ptr %l9
  %t124 = ptrtoint ptr %v2 to i64
  store i64 %t124, ptr %l92, !tbaa !24
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e8
  br i1 %t125, label %bb26, label %bb27
bb26:
  %t127 = call ptr @__olang_region_make(ptr %v2)
  %t128 = ptrtoint ptr %t127 to i64
  store i64 %t128, ptr %l92, !tbaa !24
  br label %bb27
bb27:
  %t129 = load i64, ptr %l92
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %t130)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t131, ptr %l94
  br label %bb28
bb28:
  %t132 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e8
  br i1 %t132, label %bb29, label %bb30
bb29:
  %t134 = load i64, ptr %l92
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 2
  %t137 = load { i64, ptr }, ptr %t136
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = call ptr @__olang_region_or(ptr %t138, ptr null)
  %t140 = call ptr @__olang_region_home(ptr %t139)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr null
  %t143 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr null)
  %t147 = call ptr @__olang_region_home(ptr %t146)
  %t148 = icmp ne ptr %t147, null
  %t149 = select i1 %t148, ptr %t147, ptr %t142
  %t150 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = call ptr @__olang_region_home(ptr %t153)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr %t149
  %t157 = icmp eq ptr %t156, %t135
  call void @__olang_region_settle(ptr %t135, i1 %t157)
  br label %bb30
bb30:
  %t158 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l94
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t158, ptr %l10
  %t159 = ptrtoint ptr %v2 to i64
  store i64 %t159, ptr %l96, !tbaa !24
  %t160 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e9
  br i1 %t160, label %bb31, label %bb32
bb31:
  %t162 = call ptr @__olang_region_make(ptr %v2)
  %t163 = ptrtoint ptr %t162 to i64
  store i64 %t163, ptr %l96, !tbaa !24
  br label %bb32
bb32:
  %t164 = load i64, ptr %l96
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ector(ptr %t165, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %l98
  br label %bb33
bb33:
  %t167 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e9
  br i1 %t167, label %bb34, label %bb35
bb34:
  %t169 = load i64, ptr %l96
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98, i32 0, i32 0
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = call ptr @__olang_region_home(ptr %t174)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr null
  %t178 = icmp eq ptr %t177, %t170
  call void @__olang_region_settle(ptr %t170, i1 %t178)
  br label %bb35
bb35:
  %t179 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l11
  %t180 = ptrtoint ptr %v2 to i64
  store i64 %t180, ptr %l100, !tbaa !24
  %t181 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e10
  br i1 %t181, label %bb36, label %bb37
bb36:
  %t183 = call ptr @__olang_region_make(ptr %v2)
  %t184 = ptrtoint ptr %t183 to i64
  store i64 %t184, ptr %l100, !tbaa !24
  br label %bb37
bb37:
  %t185 = load i64, ptr %l100
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t186, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l102
  br label %bb38
bb38:
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e10
  br i1 %t188, label %bb39, label %bb40
bb39:
  %t190 = load i64, ptr %l100
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102, i32 0, i32 0
  %t193 = load { i64, ptr }, ptr %t192
  %t194 = extractvalue { i64, ptr } %t193, 1
  %t195 = call ptr @__olang_region_or(ptr %t194, ptr null)
  %t196 = call ptr @__olang_region_home(ptr %t195)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr null
  %t199 = icmp eq ptr %t198, %t191
  call void @__olang_region_settle(ptr %t191, i1 %t199)
  br label %bb40
bb40:
  %t200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l12
  %t201 = ptrtoint ptr %v2 to i64
  store i64 %t201, ptr %l104, !tbaa !24
  %t202 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e11
  br i1 %t202, label %bb41, label %bb42
bb41:
  %t204 = call ptr @__olang_region_make(ptr %v2)
  %t205 = ptrtoint ptr %t204 to i64
  store i64 %t205, ptr %l104, !tbaa !24
  br label %bb42
bb42:
  %t206 = load i64, ptr %l104
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t207, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l106
  br label %bb43
bb43:
  %t209 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e11
  br i1 %t209, label %bb44, label %bb45
bb44:
  %t211 = load i64, ptr %l104
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106, i32 0, i32 0
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = call ptr @__olang_region_home(ptr %t216)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr null
  %t220 = icmp eq ptr %t219, %t212
  call void @__olang_region_settle(ptr %t212, i1 %t220)
  br label %bb45
bb45:
  %t221 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l13
  %t222 = ptrtoint ptr %v2 to i64
  store i64 %t222, ptr %l108, !tbaa !24
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e12
  br i1 %t223, label %bb46, label %bb47
bb46:
  %t225 = call ptr @__olang_region_make(ptr %v2)
  %t226 = ptrtoint ptr %t225 to i64
  store i64 %t226, ptr %l108, !tbaa !24
  br label %bb47
bb47:
  %t227 = load i64, ptr %l108
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t228, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %l110
  br label %bb48
bb48:
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e12
  br i1 %t230, label %bb49, label %bb50
bb49:
  %t232 = load i64, ptr %l108
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110, i32 0, i32 0
  %t235 = load { i64, ptr }, ptr %t234
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = call ptr @__olang_region_or(ptr %t236, ptr null)
  %t238 = call ptr @__olang_region_home(ptr %t237)
  %t239 = icmp ne ptr %t238, null
  %t240 = select i1 %t239, ptr %t238, ptr null
  %t241 = icmp eq ptr %t240, %t233
  call void @__olang_region_settle(ptr %t233, i1 %t241)
  br label %bb50
bb50:
  %t242 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t242, ptr %l14
  store i64 0, ptr %l15, !tbaa !24
  %t243 = ptrtoint ptr %v2 to i64
  store i64 %t243, ptr %l112, !tbaa !24
  %t244 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e14
  br i1 %t244, label %bb51, label %bb52
bb51:
  %t246 = call ptr @__olang_region_make(ptr %v2)
  %t247 = ptrtoint ptr %t246 to i64
  store i64 %t247, ptr %l112, !tbaa !24
  br label %bb52
bb52:
  %t248 = load i64, ptr %l112
  %t249 = inttoptr i64 %t248 to ptr
  %t250 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t249, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t250, ptr %l114
  br label %bb53
bb53:
  %t251 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e14
  br i1 %t251, label %bb54, label %bb55
bb54:
  %t253 = load i64, ptr %l112
  %t254 = inttoptr i64 %t253 to ptr
  %t255 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114, i32 0, i32 0
  %t256 = load { i64, ptr }, ptr %t255
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = call ptr @__olang_region_or(ptr %t257, ptr null)
  %t259 = call ptr @__olang_region_home(ptr %t258)
  %t260 = icmp ne ptr %t259, null
  %t261 = select i1 %t260, ptr %t259, ptr null
  %t262 = icmp eq ptr %t261, %t254
  call void @__olang_region_settle(ptr %t254, i1 %t262)
  br label %bb55
bb55:
  %t263 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l114
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %l16
  %t264 = ptrtoint ptr %v2 to i64
  store i64 %t264, ptr %l116, !tbaa !24
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e15
  br i1 %t265, label %bb56, label %bb57
bb56:
  %t267 = call ptr @__olang_region_make(ptr %v2)
  %t268 = ptrtoint ptr %t267 to i64
  store i64 %t268, ptr %l116, !tbaa !24
  br label %bb57
bb57:
  %t269 = load i64, ptr %l116
  %t270 = inttoptr i64 %t269 to ptr
  %t271 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t270, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %l118
  br label %bb58
bb58:
  %t272 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e15
  br i1 %t272, label %bb59, label %bb60
bb59:
  %t274 = load i64, ptr %l116
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118, i32 0, i32 0
  %t277 = load { i64, ptr }, ptr %t276
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = call ptr @__olang_region_or(ptr %t278, ptr null)
  %t280 = call ptr @__olang_region_home(ptr %t279)
  %t281 = icmp ne ptr %t280, null
  %t282 = select i1 %t281, ptr %t280, ptr null
  %t283 = icmp eq ptr %t282, %t275
  call void @__olang_region_settle(ptr %t275, i1 %t283)
  br label %bb60
bb60:
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %l17
  %t285 = ptrtoint ptr %v2 to i64
  store i64 %t285, ptr %l120, !tbaa !24
  %t286 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e16
  br i1 %t286, label %bb61, label %bb62
bb61:
  %t288 = call ptr @__olang_region_make(ptr %v2)
  %t289 = ptrtoint ptr %t288 to i64
  store i64 %t289, ptr %l120, !tbaa !24
  br label %bb62
bb62:
  %t290 = load i64, ptr %l120
  %t291 = inttoptr i64 %t290 to ptr
  %t292 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t291)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t292, ptr %l122
  br label %bb63
bb63:
  %t293 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e16
  br i1 %t293, label %bb64, label %bb65
bb64:
  %t295 = load i64, ptr %l120
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l122, i32 0, i32 2
  %t298 = load { i64, ptr }, ptr %t297
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = call ptr @__olang_region_or(ptr %t299, ptr null)
  %t301 = call ptr @__olang_region_home(ptr %t300)
  %t302 = icmp ne ptr %t301, null
  %t303 = select i1 %t302, ptr %t301, ptr null
  %t304 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l122, i32 0, i32 1
  %t305 = load { i64, ptr }, ptr %t304
  %t306 = extractvalue { i64, ptr } %t305, 1
  %t307 = call ptr @__olang_region_or(ptr %t306, ptr null)
  %t308 = call ptr @__olang_region_home(ptr %t307)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr %t303
  %t311 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l122, i32 0, i32 0
  %t312 = load { i64, ptr }, ptr %t311
  %t313 = extractvalue { i64, ptr } %t312, 1
  %t314 = call ptr @__olang_region_or(ptr %t313, ptr null)
  %t315 = call ptr @__olang_region_home(ptr %t314)
  %t316 = icmp ne ptr %t315, null
  %t317 = select i1 %t316, ptr %t315, ptr %t310
  %t318 = icmp eq ptr %t317, %t296
  call void @__olang_region_settle(ptr %t296, i1 %t318)
  br label %bb65
bb65:
  %t319 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l122
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t319, ptr %l18
  %t320 = ptrtoint ptr %v2 to i64
  store i64 %t320, ptr %l124, !tbaa !24
  %t321 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e17
  br i1 %t321, label %bb66, label %bb67
bb66:
  %t323 = call ptr @__olang_region_make(ptr %v2)
  %t324 = ptrtoint ptr %t323 to i64
  store i64 %t324, ptr %l124, !tbaa !24
  br label %bb67
bb67:
  %t325 = load i64, ptr %l124
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %t326)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t327, ptr %l126
  br label %bb68
bb68:
  %t328 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e17
  br i1 %t328, label %bb69, label %bb70
bb69:
  %t330 = load i64, ptr %l124
  %t331 = inttoptr i64 %t330 to ptr
  %t332 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l126, i32 0, i32 2
  %t333 = load { i64, ptr }, ptr %t332
  %t334 = extractvalue { i64, ptr } %t333, 1
  %t335 = call ptr @__olang_region_or(ptr %t334, ptr null)
  %t336 = call ptr @__olang_region_home(ptr %t335)
  %t337 = icmp ne ptr %t336, null
  %t338 = select i1 %t337, ptr %t336, ptr null
  %t339 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l126, i32 0, i32 1
  %t340 = load { i64, ptr }, ptr %t339
  %t341 = extractvalue { i64, ptr } %t340, 1
  %t342 = call ptr @__olang_region_or(ptr %t341, ptr null)
  %t343 = call ptr @__olang_region_home(ptr %t342)
  %t344 = icmp ne ptr %t343, null
  %t345 = select i1 %t344, ptr %t343, ptr %t338
  %t346 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l126, i32 0, i32 0
  %t347 = load { i64, ptr }, ptr %t346
  %t348 = extractvalue { i64, ptr } %t347, 1
  %t349 = call ptr @__olang_region_or(ptr %t348, ptr null)
  %t350 = call ptr @__olang_region_home(ptr %t349)
  %t351 = icmp ne ptr %t350, null
  %t352 = select i1 %t351, ptr %t350, ptr %t345
  %t353 = icmp eq ptr %t352, %t331
  call void @__olang_region_settle(ptr %t331, i1 %t353)
  br label %bb70
bb70:
  %t354 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l126
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t354, ptr %l19
  %t355 = ptrtoint ptr %v2 to i64
  store i64 %t355, ptr %l128, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e18
  br i1 %t356, label %bb71, label %bb72
bb71:
  %t358 = call ptr @__olang_region_make(ptr %v2)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l128, !tbaa !24
  br label %bb72
bb72:
  %t360 = load i64, ptr %l128
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t361, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l130
  br label %bb73
bb73:
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e18
  br i1 %t363, label %bb74, label %bb75
bb74:
  %t365 = load i64, ptr %l128
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130, i32 0, i32 0
  %t368 = load { i64, ptr }, ptr %t367
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = call ptr @__olang_region_or(ptr %t369, ptr null)
  %t371 = call ptr @__olang_region_home(ptr %t370)
  %t372 = icmp ne ptr %t371, null
  %t373 = select i1 %t372, ptr %t371, ptr null
  %t374 = icmp eq ptr %t373, %t366
  call void @__olang_region_settle(ptr %t366, i1 %t374)
  br label %bb75
bb75:
  %t375 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %l20
  %t376 = ptrtoint ptr %v2 to i64
  store i64 %t376, ptr %l132, !tbaa !24
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e19
  br i1 %t377, label %bb76, label %bb77
bb76:
  %t379 = call ptr @__olang_region_make(ptr %v2)
  %t380 = ptrtoint ptr %t379 to i64
  store i64 %t380, ptr %l132, !tbaa !24
  br label %bb77
bb77:
  %t381 = load i64, ptr %l132
  %t382 = inttoptr i64 %t381 to ptr
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t382, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l134
  br label %bb78
bb78:
  %t384 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e19
  br i1 %t384, label %bb79, label %bb80
bb79:
  %t386 = load i64, ptr %l132
  %t387 = inttoptr i64 %t386 to ptr
  %t388 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134, i32 0, i32 0
  %t389 = load { i64, ptr }, ptr %t388
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = call ptr @__olang_region_or(ptr %t390, ptr null)
  %t392 = call ptr @__olang_region_home(ptr %t391)
  %t393 = icmp ne ptr %t392, null
  %t394 = select i1 %t393, ptr %t392, ptr null
  %t395 = icmp eq ptr %t394, %t387
  call void @__olang_region_settle(ptr %t387, i1 %t395)
  br label %bb80
bb80:
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l21
  %t397 = ptrtoint ptr %v2 to i64
  store i64 %t397, ptr %l136, !tbaa !24
  %t398 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e20
  br i1 %t398, label %bb81, label %bb82
bb81:
  %t400 = call ptr @__olang_region_make(ptr %v2)
  %t401 = ptrtoint ptr %t400 to i64
  store i64 %t401, ptr %l136, !tbaa !24
  br label %bb82
bb82:
  %t402 = load i64, ptr %l136
  %t403 = inttoptr i64 %t402 to ptr
  %t404 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t403, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %l138
  br label %bb83
bb83:
  %t405 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e20
  br i1 %t405, label %bb84, label %bb85
bb84:
  %t407 = load i64, ptr %l136
  %t408 = inttoptr i64 %t407 to ptr
  %t409 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138, i32 0, i32 0
  %t410 = load { i64, ptr }, ptr %t409
  %t411 = extractvalue { i64, ptr } %t410, 1
  %t412 = call ptr @__olang_region_or(ptr %t411, ptr null)
  %t413 = call ptr @__olang_region_home(ptr %t412)
  %t414 = icmp ne ptr %t413, null
  %t415 = select i1 %t414, ptr %t413, ptr null
  %t416 = icmp eq ptr %t415, %t408
  call void @__olang_region_settle(ptr %t408, i1 %t416)
  br label %bb85
bb85:
  %t417 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t417, ptr %l22
  %t418 = ptrtoint ptr %v2 to i64
  store i64 %t418, ptr %l140, !tbaa !24
  %t419 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e21
  br i1 %t419, label %bb86, label %bb87
bb86:
  %t421 = call ptr @__olang_region_make(ptr %v2)
  %t422 = ptrtoint ptr %t421 to i64
  store i64 %t422, ptr %l140, !tbaa !24
  br label %bb87
bb87:
  %t423 = load i64, ptr %l140
  %t424 = inttoptr i64 %t423 to ptr
  %t425 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t424, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t425, ptr %l142
  br label %bb88
bb88:
  %t426 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e21
  br i1 %t426, label %bb89, label %bb90
bb89:
  %t428 = load i64, ptr %l140
  %t429 = inttoptr i64 %t428 to ptr
  %t430 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l142, i32 0, i32 0
  %t431 = load { i64, ptr }, ptr %t430
  %t432 = extractvalue { i64, ptr } %t431, 1
  %t433 = call ptr @__olang_region_or(ptr %t432, ptr null)
  %t434 = call ptr @__olang_region_home(ptr %t433)
  %t435 = icmp ne ptr %t434, null
  %t436 = select i1 %t435, ptr %t434, ptr null
  %t437 = icmp eq ptr %t436, %t429
  call void @__olang_region_settle(ptr %t429, i1 %t437)
  br label %bb90
bb90:
  %t438 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l142
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t438, ptr %l23
  store i64 0, ptr %l24, !tbaa !24
  %t439 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %v2)
  store %"compiler/effects:Facts" %t439, ptr %l144
  br label %bb91
bb91:
  %t440 = load %"compiler/effects:Facts", ptr %l144
  store %"compiler/effects:Facts" %t440, ptr %l25
  %t441 = ptrtoint ptr %v2 to i64
  store i64 %t441, ptr %l145, !tbaa !24
  %t442 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t442, label %bb92, label %bb93
bb92:
  %t444 = call ptr @__olang_region_make(ptr %v2)
  %t445 = ptrtoint ptr %t444 to i64
  store i64 %t445, ptr %l145, !tbaa !24
  br label %bb93
bb93:
  %t446 = load i64, ptr %l145
  %t447 = inttoptr i64 %t446 to ptr
  %t448 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t447, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t448, ptr %l147
  br label %bb94
bb94:
  %t449 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e24
  br i1 %t449, label %bb95, label %bb96
bb95:
  %t451 = load i64, ptr %l145
  %t452 = inttoptr i64 %t451 to ptr
  %t453 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147, i32 0, i32 0
  %t454 = load { i64, ptr }, ptr %t453
  %t455 = extractvalue { i64, ptr } %t454, 1
  %t456 = call ptr @__olang_region_or(ptr %t455, ptr null)
  %t457 = call ptr @__olang_region_home(ptr %t456)
  %t458 = icmp ne ptr %t457, null
  %t459 = select i1 %t458, ptr %t457, ptr null
  %t460 = icmp eq ptr %t459, %t452
  call void @__olang_region_settle(ptr %t452, i1 %t460)
  br label %bb96
bb96:
  %t461 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t461, ptr %l26
  %t462 = ptrtoint ptr %v2 to i64
  store i64 %t462, ptr %l149, !tbaa !24
  %t463 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e25
  br i1 %t463, label %bb97, label %bb98
bb97:
  %t465 = call ptr @__olang_region_make(ptr %v2)
  %t466 = ptrtoint ptr %t465 to i64
  store i64 %t466, ptr %l149, !tbaa !24
  br label %bb98
bb98:
  %t467 = load i64, ptr %l149
  %t468 = inttoptr i64 %t467 to ptr
  %t469 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t468, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %l151
  br label %bb99
bb99:
  %t470 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e25
  br i1 %t470, label %bb100, label %bb101
bb100:
  %t472 = load i64, ptr %l149
  %t473 = inttoptr i64 %t472 to ptr
  %t474 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151, i32 0, i32 0
  %t475 = load { i64, ptr }, ptr %t474
  %t476 = extractvalue { i64, ptr } %t475, 1
  %t477 = call ptr @__olang_region_or(ptr %t476, ptr null)
  %t478 = call ptr @__olang_region_home(ptr %t477)
  %t479 = icmp ne ptr %t478, null
  %t480 = select i1 %t479, ptr %t478, ptr null
  %t481 = icmp eq ptr %t480, %t473
  call void @__olang_region_settle(ptr %t473, i1 %t481)
  br label %bb101
bb101:
  %t482 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t482, ptr %l27
  store i64 0, ptr %l28, !tbaa !24
  %t483 = ptrtoint ptr %v2 to i64
  store i64 %t483, ptr %l153, !tbaa !24
  %t484 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t484, label %bb102, label %bb103
bb102:
  %t486 = call ptr @__olang_region_make(ptr %v2)
  %t487 = ptrtoint ptr %t486 to i64
  store i64 %t487, ptr %l153, !tbaa !24
  br label %bb103
bb103:
  %t488 = load i64, ptr %l153
  %t489 = inttoptr i64 %t488 to ptr
  %t490 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %t489, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t490, ptr %l155
  br label %bb104
bb104:
  %t491 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e27
  br i1 %t491, label %bb105, label %bb106
bb105:
  %t493 = load i64, ptr %l153
  %t494 = inttoptr i64 %t493 to ptr
  %t495 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155, i32 0, i32 0
  %t496 = load { i64, ptr }, ptr %t495
  %t497 = extractvalue { i64, ptr } %t496, 1
  %t498 = call ptr @__olang_region_or(ptr %t497, ptr null)
  %t499 = call ptr @__olang_region_home(ptr %t498)
  %t500 = icmp ne ptr %t499, null
  %t501 = select i1 %t500, ptr %t499, ptr null
  %t502 = icmp eq ptr %t501, %t494
  call void @__olang_region_settle(ptr %t494, i1 %t502)
  br label %bb106
bb106:
  %t503 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t503, ptr %l29
  %t504 = ptrtoint ptr %v2 to i64
  store i64 %t504, ptr %l157, !tbaa !24
  %t505 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t505, label %bb107, label %bb108
bb107:
  %t507 = call ptr @__olang_region_make(ptr %v2)
  %t508 = ptrtoint ptr %t507 to i64
  store i64 %t508, ptr %l157, !tbaa !24
  br label %bb108
bb108:
  %t509 = load i64, ptr %l157
  %t510 = inttoptr i64 %t509 to ptr
  %t511 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %t510, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t511, ptr %l159
  br label %bb109
bb109:
  %t512 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e28
  br i1 %t512, label %bb110, label %bb111
bb110:
  %t514 = load i64, ptr %l157
  %t515 = inttoptr i64 %t514 to ptr
  %t516 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l159, i32 0, i32 0
  %t517 = load { i64, ptr }, ptr %t516
  %t518 = extractvalue { i64, ptr } %t517, 1
  %t519 = call ptr @__olang_region_or(ptr %t518, ptr null)
  %t520 = call ptr @__olang_region_home(ptr %t519)
  %t521 = icmp ne ptr %t520, null
  %t522 = select i1 %t521, ptr %t520, ptr null
  %t523 = icmp eq ptr %t522, %t515
  call void @__olang_region_settle(ptr %t515, i1 %t523)
  br label %bb111
bb111:
  %t524 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l159
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t524, ptr %l30
  %t525 = ptrtoint ptr %v2 to i64
  store i64 %t525, ptr %l161, !tbaa !24
  %t526 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e29
  br i1 %t526, label %bb112, label %bb113
bb112:
  %t528 = call ptr @__olang_region_make(ptr %v2)
  %t529 = ptrtoint ptr %t528 to i64
  store i64 %t529, ptr %l161, !tbaa !24
  br label %bb113
bb113:
  %t530 = load i64, ptr %l161
  %t531 = inttoptr i64 %t530 to ptr
  %t532 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t531)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t532, ptr %l163
  br label %bb114
bb114:
  %t533 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e29
  br i1 %t533, label %bb115, label %bb116
bb115:
  %t535 = load i64, ptr %l161
  %t536 = inttoptr i64 %t535 to ptr
  %t537 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 2
  %t538 = load { i64, ptr }, ptr %t537
  %t539 = extractvalue { i64, ptr } %t538, 1
  %t540 = call ptr @__olang_region_or(ptr %t539, ptr null)
  %t541 = call ptr @__olang_region_home(ptr %t540)
  %t542 = icmp ne ptr %t541, null
  %t543 = select i1 %t542, ptr %t541, ptr null
  %t544 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 1
  %t545 = load { i64, ptr }, ptr %t544
  %t546 = extractvalue { i64, ptr } %t545, 1
  %t547 = call ptr @__olang_region_or(ptr %t546, ptr null)
  %t548 = call ptr @__olang_region_home(ptr %t547)
  %t549 = icmp ne ptr %t548, null
  %t550 = select i1 %t549, ptr %t548, ptr %t543
  %t551 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 0
  %t552 = load { i64, ptr }, ptr %t551
  %t553 = extractvalue { i64, ptr } %t552, 1
  %t554 = call ptr @__olang_region_or(ptr %t553, ptr null)
  %t555 = call ptr @__olang_region_home(ptr %t554)
  %t556 = icmp ne ptr %t555, null
  %t557 = select i1 %t556, ptr %t555, ptr %t550
  %t558 = icmp eq ptr %t557, %t536
  call void @__olang_region_settle(ptr %t536, i1 %t558)
  br label %bb116
bb116:
  %t559 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t559, ptr %l31
  %t560 = ptrtoint ptr %v2 to i64
  store i64 %t560, ptr %l165, !tbaa !24
  %t561 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e30
  br i1 %t561, label %bb117, label %bb118
bb117:
  %t563 = call ptr @__olang_region_make(ptr %v2)
  %t564 = ptrtoint ptr %t563 to i64
  store i64 %t564, ptr %l165, !tbaa !24
  br label %bb118
bb118:
  %t565 = load i64, ptr %l165
  %t566 = inttoptr i64 %t565 to ptr
  %t567 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t566)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t567, ptr %l167
  br label %bb119
bb119:
  %t568 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e30
  br i1 %t568, label %bb120, label %bb121
bb120:
  %t570 = load i64, ptr %l165
  %t571 = inttoptr i64 %t570 to ptr
  %t572 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167, i32 0, i32 2
  %t573 = load { i64, ptr }, ptr %t572
  %t574 = extractvalue { i64, ptr } %t573, 1
  %t575 = call ptr @__olang_region_or(ptr %t574, ptr null)
  %t576 = call ptr @__olang_region_home(ptr %t575)
  %t577 = icmp ne ptr %t576, null
  %t578 = select i1 %t577, ptr %t576, ptr null
  %t579 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167, i32 0, i32 1
  %t580 = load { i64, ptr }, ptr %t579
  %t581 = extractvalue { i64, ptr } %t580, 1
  %t582 = call ptr @__olang_region_or(ptr %t581, ptr null)
  %t583 = call ptr @__olang_region_home(ptr %t582)
  %t584 = icmp ne ptr %t583, null
  %t585 = select i1 %t584, ptr %t583, ptr %t578
  %t586 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167, i32 0, i32 0
  %t587 = load { i64, ptr }, ptr %t586
  %t588 = extractvalue { i64, ptr } %t587, 1
  %t589 = call ptr @__olang_region_or(ptr %t588, ptr null)
  %t590 = call ptr @__olang_region_home(ptr %t589)
  %t591 = icmp ne ptr %t590, null
  %t592 = select i1 %t591, ptr %t590, ptr %t585
  %t593 = icmp eq ptr %t592, %t571
  call void @__olang_region_settle(ptr %t571, i1 %t593)
  br label %bb121
bb121:
  %t594 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t594, ptr %l32
  %t595 = ptrtoint ptr %v2 to i64
  store i64 %t595, ptr %l169, !tbaa !24
  %t596 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e31
  br i1 %t596, label %bb122, label %bb123
bb122:
  %t598 = call ptr @__olang_region_make(ptr %v2)
  %t599 = ptrtoint ptr %t598 to i64
  store i64 %t599, ptr %l169, !tbaa !24
  br label %bb123
bb123:
  %t600 = load i64, ptr %l169
  %t601 = inttoptr i64 %t600 to ptr
  %t602 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t601)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t602, ptr %l171
  br label %bb124
bb124:
  %t603 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e31
  br i1 %t603, label %bb125, label %bb126
bb125:
  %t605 = load i64, ptr %l169
  %t606 = inttoptr i64 %t605 to ptr
  %t607 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171, i32 0, i32 2
  %t608 = load { i64, ptr }, ptr %t607
  %t609 = extractvalue { i64, ptr } %t608, 1
  %t610 = call ptr @__olang_region_or(ptr %t609, ptr null)
  %t611 = call ptr @__olang_region_home(ptr %t610)
  %t612 = icmp ne ptr %t611, null
  %t613 = select i1 %t612, ptr %t611, ptr null
  %t614 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171, i32 0, i32 1
  %t615 = load { i64, ptr }, ptr %t614
  %t616 = extractvalue { i64, ptr } %t615, 1
  %t617 = call ptr @__olang_region_or(ptr %t616, ptr null)
  %t618 = call ptr @__olang_region_home(ptr %t617)
  %t619 = icmp ne ptr %t618, null
  %t620 = select i1 %t619, ptr %t618, ptr %t613
  %t621 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171, i32 0, i32 0
  %t622 = load { i64, ptr }, ptr %t621
  %t623 = extractvalue { i64, ptr } %t622, 1
  %t624 = call ptr @__olang_region_or(ptr %t623, ptr null)
  %t625 = call ptr @__olang_region_home(ptr %t624)
  %t626 = icmp ne ptr %t625, null
  %t627 = select i1 %t626, ptr %t625, ptr %t620
  %t628 = icmp eq ptr %t627, %t606
  call void @__olang_region_settle(ptr %t606, i1 %t628)
  br label %bb126
bb126:
  %t629 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t629, ptr %l33
  %t630 = ptrtoint ptr %v2 to i64
  store i64 %t630, ptr %l173, !tbaa !24
  %t631 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e32
  br i1 %t631, label %bb127, label %bb128
bb127:
  %t633 = call ptr @__olang_region_make(ptr %v2)
  %t634 = ptrtoint ptr %t633 to i64
  store i64 %t634, ptr %l173, !tbaa !24
  br label %bb128
bb128:
  %t635 = load i64, ptr %l173
  %t636 = inttoptr i64 %t635 to ptr
  %t637 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t636)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t637, ptr %l175
  br label %bb129
bb129:
  %t638 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e32
  br i1 %t638, label %bb130, label %bb131
bb130:
  %t640 = load i64, ptr %l173
  %t641 = inttoptr i64 %t640 to ptr
  %t642 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 2
  %t643 = load { i64, ptr }, ptr %t642
  %t644 = extractvalue { i64, ptr } %t643, 1
  %t645 = call ptr @__olang_region_or(ptr %t644, ptr null)
  %t646 = call ptr @__olang_region_home(ptr %t645)
  %t647 = icmp ne ptr %t646, null
  %t648 = select i1 %t647, ptr %t646, ptr null
  %t649 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 1
  %t650 = load { i64, ptr }, ptr %t649
  %t651 = extractvalue { i64, ptr } %t650, 1
  %t652 = call ptr @__olang_region_or(ptr %t651, ptr null)
  %t653 = call ptr @__olang_region_home(ptr %t652)
  %t654 = icmp ne ptr %t653, null
  %t655 = select i1 %t654, ptr %t653, ptr %t648
  %t656 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 0
  %t657 = load { i64, ptr }, ptr %t656
  %t658 = extractvalue { i64, ptr } %t657, 1
  %t659 = call ptr @__olang_region_or(ptr %t658, ptr null)
  %t660 = call ptr @__olang_region_home(ptr %t659)
  %t661 = icmp ne ptr %t660, null
  %t662 = select i1 %t661, ptr %t660, ptr %t655
  %t663 = icmp eq ptr %t662, %t641
  call void @__olang_region_settle(ptr %t641, i1 %t663)
  br label %bb131
bb131:
  %t664 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t664, ptr %l34
  store i64 -1, ptr %l35, !tbaa !24
  store i64 -1, ptr %l36, !tbaa !24
  %t665 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t665, ptr %l177
  br label %bb132
bb132:
  %t666 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t666, ptr %l37
  %t667 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t667, ptr %l178
  br label %bb133
bb133:
  %t668 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l178
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t668, ptr %l38
  %t669 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H3227b03907400d34f4865c02b6d98850(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t669, ptr %l179
  br label %bb134
bb134:
  %t670 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t670, ptr %l39
  %t671 = ptrtoint ptr %v2 to i64
  store i64 %t671, ptr %l180, !tbaa !24
  %t672 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e38
  br i1 %t672, label %bb135, label %bb136
bb135:
  %t674 = call ptr @__olang_region_make(ptr %v2)
  %t675 = ptrtoint ptr %t674 to i64
  store i64 %t675, ptr %l180, !tbaa !24
  br label %bb136
bb136:
  %t676 = load i64, ptr %l180
  %t677 = inttoptr i64 %t676 to ptr
  %t678 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t677)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t678, ptr %l182
  br label %bb137
bb137:
  %t679 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e38
  br i1 %t679, label %bb138, label %bb139
bb138:
  %t681 = load i64, ptr %l180
  %t682 = inttoptr i64 %t681 to ptr
  %t683 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l182, i32 0, i32 2
  %t684 = load { i64, ptr }, ptr %t683
  %t685 = extractvalue { i64, ptr } %t684, 1
  %t686 = call ptr @__olang_region_or(ptr %t685, ptr null)
  %t687 = call ptr @__olang_region_home(ptr %t686)
  %t688 = icmp ne ptr %t687, null
  %t689 = select i1 %t688, ptr %t687, ptr null
  %t690 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l182, i32 0, i32 1
  %t691 = load { i64, ptr }, ptr %t690
  %t692 = extractvalue { i64, ptr } %t691, 1
  %t693 = call ptr @__olang_region_or(ptr %t692, ptr null)
  %t694 = call ptr @__olang_region_home(ptr %t693)
  %t695 = icmp ne ptr %t694, null
  %t696 = select i1 %t695, ptr %t694, ptr %t689
  %t697 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l182, i32 0, i32 0
  %t698 = load { i64, ptr }, ptr %t697
  %t699 = extractvalue { i64, ptr } %t698, 1
  %t700 = call ptr @__olang_region_or(ptr %t699, ptr null)
  %t701 = call ptr @__olang_region_home(ptr %t700)
  %t702 = icmp ne ptr %t701, null
  %t703 = select i1 %t702, ptr %t701, ptr %t696
  %t704 = icmp eq ptr %t703, %t682
  call void @__olang_region_settle(ptr %t682, i1 %t704)
  br label %bb139
bb139:
  %t705 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l182
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t705, ptr %l40
  %t706 = ptrtoint ptr %v2 to i64
  store i64 %t706, ptr %l184, !tbaa !24
  %t707 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e39
  br i1 %t707, label %bb140, label %bb141
bb140:
  %t709 = call ptr @__olang_region_make(ptr %v2)
  %t710 = ptrtoint ptr %t709 to i64
  store i64 %t710, ptr %l184, !tbaa !24
  br label %bb141
bb141:
  %t711 = load i64, ptr %l184
  %t712 = inttoptr i64 %t711 to ptr
  %t713 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t712, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t713, ptr %l186
  br label %bb142
bb142:
  %t714 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e39
  br i1 %t714, label %bb143, label %bb144
bb143:
  %t716 = load i64, ptr %l184
  %t717 = inttoptr i64 %t716 to ptr
  %t718 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l186, i32 0, i32 0
  %t719 = load { i64, ptr }, ptr %t718
  %t720 = extractvalue { i64, ptr } %t719, 1
  %t721 = call ptr @__olang_region_or(ptr %t720, ptr null)
  %t722 = call ptr @__olang_region_home(ptr %t721)
  %t723 = icmp ne ptr %t722, null
  %t724 = select i1 %t723, ptr %t722, ptr null
  %t725 = icmp eq ptr %t724, %t717
  call void @__olang_region_settle(ptr %t717, i1 %t725)
  br label %bb144
bb144:
  %t726 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l186
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t726, ptr %l41
  %t727 = ptrtoint ptr %v2 to i64
  store i64 %t727, ptr %l188, !tbaa !24
  %t728 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e40
  br i1 %t728, label %bb145, label %bb146
bb145:
  %t730 = call ptr @__olang_region_make(ptr %v2)
  %t731 = ptrtoint ptr %t730 to i64
  store i64 %t731, ptr %l188, !tbaa !24
  br label %bb146
bb146:
  %t732 = load i64, ptr %l188
  %t733 = inttoptr i64 %t732 to ptr
  %t734 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t733, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t734, ptr %l190
  br label %bb147
bb147:
  %t735 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e40
  br i1 %t735, label %bb148, label %bb149
bb148:
  %t737 = load i64, ptr %l188
  %t738 = inttoptr i64 %t737 to ptr
  %t739 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l190, i32 0, i32 0
  %t740 = load { i64, ptr }, ptr %t739
  %t741 = extractvalue { i64, ptr } %t740, 1
  %t742 = call ptr @__olang_region_or(ptr %t741, ptr null)
  %t743 = call ptr @__olang_region_home(ptr %t742)
  %t744 = icmp ne ptr %t743, null
  %t745 = select i1 %t744, ptr %t743, ptr null
  %t746 = icmp eq ptr %t745, %t738
  call void @__olang_region_settle(ptr %t738, i1 %t746)
  br label %bb149
bb149:
  %t747 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l190
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t747, ptr %l42
  store i1 false, ptr %l43, !tbaa !21
  store i1 false, ptr %l44, !tbaa !21
  store i1 false, ptr %l45, !tbaa !21
  %t748 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t748, ptr %l192
  br label %bb150
bb150:
  %t749 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l192
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t749, ptr %l46
  %t750 = ptrtoint ptr %v2 to i64
  store i64 %t750, ptr %l193, !tbaa !24
  %t751 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e45
  br i1 %t751, label %bb151, label %bb152
bb151:
  %t753 = call ptr @__olang_region_make(ptr %v2)
  %t754 = ptrtoint ptr %t753 to i64
  store i64 %t754, ptr %l193, !tbaa !24
  br label %bb152
bb152:
  %t755 = load i64, ptr %l193
  %t756 = inttoptr i64 %t755 to ptr
  %t757 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t756, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t757, ptr %l195
  br label %bb153
bb153:
  %t758 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e45
  br i1 %t758, label %bb154, label %bb155
bb154:
  %t760 = load i64, ptr %l193
  %t761 = inttoptr i64 %t760 to ptr
  %t762 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195, i32 0, i32 0
  %t763 = load { i64, ptr }, ptr %t762
  %t764 = extractvalue { i64, ptr } %t763, 1
  %t765 = call ptr @__olang_region_or(ptr %t764, ptr null)
  %t766 = call ptr @__olang_region_home(ptr %t765)
  %t767 = icmp ne ptr %t766, null
  %t768 = select i1 %t767, ptr %t766, ptr null
  %t769 = icmp eq ptr %t768, %t761
  call void @__olang_region_settle(ptr %t761, i1 %t769)
  br label %bb155
bb155:
  %t770 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t770, ptr %l47
  store i1 false, ptr %l48, !tbaa !21
  store i64 0, ptr %l49, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l197, !tbaa !27
  %t771 = load { i64, ptr }, ptr %l197, !tbaa !27
  store { i64, ptr } %t771, ptr %l198, !tbaa !27
  %t772 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t773 = extractvalue { i64, ptr } %t772, 0
  store i64 %t773, ptr %l199, !tbaa !24
  %t774 = load i64, ptr %l199, !tbaa !24
  %t775 = mul i64 %t774, 1
  %t776 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t775)
  %t777 = insertvalue { i64, ptr } undef, i64 %t774, 0
  %t778 = insertvalue { i64, ptr } %t777, ptr %t776, 1
  store { i64, ptr } %t778, ptr %l200, !tbaa !27
  %t779 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !27
  %t781 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t782 = load ptr, ptr %t781, !tbaa !27
  %t783 = load i64, ptr %l199, !tbaa !24
  %t784 = mul i64 %t783, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t780, ptr %t782, i64 %t784, i1 false)
  %t785 = load { i64, ptr }, ptr %l200, !tbaa !27
  store { i64, ptr } %t785, ptr %l50, !tbaa !27
  store i1 false, ptr %l51, !tbaa !21
  %t786 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 -1, i32 -1)
  store %"compiler/source:Span" %t786, ptr %l201
  br label %bb156
bb156:
  %t787 = load %"compiler/source:Span", ptr %l201
  store %"compiler/source:Span" %t787, ptr %l52
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l202, !tbaa !27
  %t788 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t788, ptr %l203, !tbaa !27
  %t789 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t790 = extractvalue { i64, ptr } %t789, 0
  store i64 %t790, ptr %l204, !tbaa !24
  %t791 = load i64, ptr %l204, !tbaa !24
  %t792 = mul i64 %t791, 1
  %t793 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t792)
  %t794 = insertvalue { i64, ptr } undef, i64 %t791, 0
  %t795 = insertvalue { i64, ptr } %t794, ptr %t793, 1
  store { i64, ptr } %t795, ptr %l205, !tbaa !27
  %t796 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t797 = load ptr, ptr %t796, !tbaa !27
  %t798 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t799 = load ptr, ptr %t798, !tbaa !27
  %t800 = load i64, ptr %l204, !tbaa !24
  %t801 = mul i64 %t800, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t797, ptr %t799, i64 %t801, i1 false)
  %t802 = load { i64, ptr }, ptr %l205, !tbaa !27
  store { i64, ptr } %t802, ptr %l53, !tbaa !27
  store i1 false, ptr %l54, !tbaa !21
  store i64 -1, ptr %l55, !tbaa !24
  %t803 = ptrtoint ptr %v2 to i64
  store i64 %t803, ptr %l206, !tbaa !24
  %t804 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e54
  br i1 %t804, label %bb157, label %bb158
bb157:
  %t806 = call ptr @__olang_region_make(ptr %v2)
  %t807 = ptrtoint ptr %t806 to i64
  store i64 %t807, ptr %l206, !tbaa !24
  br label %bb158
bb158:
  %t808 = load i64, ptr %l206
  %t809 = inttoptr i64 %t808 to ptr
  %t810 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t809)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t810, ptr %l208
  br label %bb159
bb159:
  %t811 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e54
  br i1 %t811, label %bb160, label %bb161
bb160:
  %t813 = load i64, ptr %l206
  %t814 = inttoptr i64 %t813 to ptr
  %t815 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208, i32 0, i32 2
  %t816 = load { i64, ptr }, ptr %t815
  %t817 = extractvalue { i64, ptr } %t816, 1
  %t818 = call ptr @__olang_region_or(ptr %t817, ptr null)
  %t819 = call ptr @__olang_region_home(ptr %t818)
  %t820 = icmp ne ptr %t819, null
  %t821 = select i1 %t820, ptr %t819, ptr null
  %t822 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208, i32 0, i32 1
  %t823 = load { i64, ptr }, ptr %t822
  %t824 = extractvalue { i64, ptr } %t823, 1
  %t825 = call ptr @__olang_region_or(ptr %t824, ptr null)
  %t826 = call ptr @__olang_region_home(ptr %t825)
  %t827 = icmp ne ptr %t826, null
  %t828 = select i1 %t827, ptr %t826, ptr %t821
  %t829 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208, i32 0, i32 0
  %t830 = load { i64, ptr }, ptr %t829
  %t831 = extractvalue { i64, ptr } %t830, 1
  %t832 = call ptr @__olang_region_or(ptr %t831, ptr null)
  %t833 = call ptr @__olang_region_home(ptr %t832)
  %t834 = icmp ne ptr %t833, null
  %t835 = select i1 %t834, ptr %t833, ptr %t828
  %t836 = icmp eq ptr %t835, %t814
  call void @__olang_region_settle(ptr %t814, i1 %t836)
  br label %bb161
bb161:
  %t837 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t837, ptr %l56
  store i1 false, ptr %l57, !tbaa !21
  %t838 = ptrtoint ptr %v2 to i64
  store i64 %t838, ptr %l210, !tbaa !24
  %t839 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e56
  br i1 %t839, label %bb162, label %bb163
bb162:
  %t841 = call ptr @__olang_region_make(ptr %v2)
  %t842 = ptrtoint ptr %t841 to i64
  store i64 %t842, ptr %l210, !tbaa !24
  br label %bb163
bb163:
  %t843 = load i64, ptr %l210
  %t844 = inttoptr i64 %t843 to ptr
  %t845 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %t844)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t845, ptr %l212
  br label %bb164
bb164:
  %t846 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e56
  br i1 %t846, label %bb165, label %bb166
bb165:
  %t848 = load i64, ptr %l210
  %t849 = inttoptr i64 %t848 to ptr
  %t850 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212, i32 0, i32 2
  %t851 = load { i64, ptr }, ptr %t850
  %t852 = extractvalue { i64, ptr } %t851, 1
  %t853 = call ptr @__olang_region_or(ptr %t852, ptr null)
  %t854 = call ptr @__olang_region_home(ptr %t853)
  %t855 = icmp ne ptr %t854, null
  %t856 = select i1 %t855, ptr %t854, ptr null
  %t857 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212, i32 0, i32 1
  %t858 = load { i64, ptr }, ptr %t857
  %t859 = extractvalue { i64, ptr } %t858, 1
  %t860 = call ptr @__olang_region_or(ptr %t859, ptr null)
  %t861 = call ptr @__olang_region_home(ptr %t860)
  %t862 = icmp ne ptr %t861, null
  %t863 = select i1 %t862, ptr %t861, ptr %t856
  %t864 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212, i32 0, i32 0
  %t865 = load { i64, ptr }, ptr %t864
  %t866 = extractvalue { i64, ptr } %t865, 1
  %t867 = call ptr @__olang_region_or(ptr %t866, ptr null)
  %t868 = call ptr @__olang_region_home(ptr %t867)
  %t869 = icmp ne ptr %t868, null
  %t870 = select i1 %t869, ptr %t868, ptr %t863
  %t871 = icmp eq ptr %t870, %t849
  call void @__olang_region_settle(ptr %t849, i1 %t871)
  br label %bb166
bb166:
  %t872 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l212
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t872, ptr %l58
  %t873 = ptrtoint ptr %v2 to i64
  store i64 %t873, ptr %l214, !tbaa !24
  %t874 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e57
  br i1 %t874, label %bb167, label %bb168
bb167:
  %t876 = call ptr @__olang_region_make(ptr %v2)
  %t877 = ptrtoint ptr %t876 to i64
  store i64 %t877, ptr %l214, !tbaa !24
  br label %bb168
bb168:
  %t878 = load i64, ptr %l214
  %t879 = inttoptr i64 %t878 to ptr
  %t880 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hfe0b8a6431726c879f98e5933eafeded(ptr %t879)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t880, ptr %l216
  br label %bb169
bb169:
  %t881 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e57
  br i1 %t881, label %bb170, label %bb171
bb170:
  %t883 = load i64, ptr %l214
  %t884 = inttoptr i64 %t883 to ptr
  %t885 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216, i32 0, i32 2
  %t886 = load { i64, ptr }, ptr %t885
  %t887 = extractvalue { i64, ptr } %t886, 1
  %t888 = call ptr @__olang_region_or(ptr %t887, ptr null)
  %t889 = call ptr @__olang_region_home(ptr %t888)
  %t890 = icmp ne ptr %t889, null
  %t891 = select i1 %t890, ptr %t889, ptr null
  %t892 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216, i32 0, i32 1
  %t893 = load { i64, ptr }, ptr %t892
  %t894 = extractvalue { i64, ptr } %t893, 1
  %t895 = call ptr @__olang_region_or(ptr %t894, ptr null)
  %t896 = call ptr @__olang_region_home(ptr %t895)
  %t897 = icmp ne ptr %t896, null
  %t898 = select i1 %t897, ptr %t896, ptr %t891
  %t899 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216, i32 0, i32 0
  %t900 = load { i64, ptr }, ptr %t899
  %t901 = extractvalue { i64, ptr } %t900, 1
  %t902 = call ptr @__olang_region_or(ptr %t901, ptr null)
  %t903 = call ptr @__olang_region_home(ptr %t902)
  %t904 = icmp ne ptr %t903, null
  %t905 = select i1 %t904, ptr %t903, ptr %t898
  %t906 = icmp eq ptr %t905, %t884
  call void @__olang_region_settle(ptr %t884, i1 %t906)
  br label %bb171
bb171:
  %t907 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t907, ptr %l59
  %t908 = ptrtoint ptr %v2 to i64
  store i64 %t908, ptr %l218, !tbaa !24
  %t909 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e58
  br i1 %t909, label %bb172, label %bb173
bb172:
  %t911 = call ptr @__olang_region_make(ptr %v2)
  %t912 = ptrtoint ptr %t911 to i64
  store i64 %t912, ptr %l218, !tbaa !24
  br label %bb173
bb173:
  %t913 = load i64, ptr %l218
  %t914 = inttoptr i64 %t913 to ptr
  %t915 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hdcf598faa391f42f17ca4d3159c68b14(ptr %t914)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t915, ptr %l220
  br label %bb174
bb174:
  %t916 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e58
  br i1 %t916, label %bb175, label %bb176
bb175:
  %t918 = load i64, ptr %l218
  %t919 = inttoptr i64 %t918 to ptr
  %t920 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220, i32 0, i32 2
  %t921 = load { i64, ptr }, ptr %t920
  %t922 = extractvalue { i64, ptr } %t921, 1
  %t923 = call ptr @__olang_region_or(ptr %t922, ptr null)
  %t924 = call ptr @__olang_region_home(ptr %t923)
  %t925 = icmp ne ptr %t924, null
  %t926 = select i1 %t925, ptr %t924, ptr null
  %t927 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220, i32 0, i32 1
  %t928 = load { i64, ptr }, ptr %t927
  %t929 = extractvalue { i64, ptr } %t928, 1
  %t930 = call ptr @__olang_region_or(ptr %t929, ptr null)
  %t931 = call ptr @__olang_region_home(ptr %t930)
  %t932 = icmp ne ptr %t931, null
  %t933 = select i1 %t932, ptr %t931, ptr %t926
  %t934 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220, i32 0, i32 0
  %t935 = load { i64, ptr }, ptr %t934
  %t936 = extractvalue { i64, ptr } %t935, 1
  %t937 = call ptr @__olang_region_or(ptr %t936, ptr null)
  %t938 = call ptr @__olang_region_home(ptr %t937)
  %t939 = icmp ne ptr %t938, null
  %t940 = select i1 %t939, ptr %t938, ptr %t933
  %t941 = icmp eq ptr %t940, %t919
  call void @__olang_region_settle(ptr %t919, i1 %t941)
  br label %bb176
bb176:
  %t942 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t942, ptr %l60
  %t943 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H2f96a66e37bdd4e6ba26b25615641feb(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t943, ptr %l222
  br label %bb177
bb177:
  %t944 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l222
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t944, ptr %l61
  %t945 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H3227b03907400d34f4865c02b6d98850(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t945, ptr %l223
  br label %bb178
bb178:
  %t946 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l223
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t946, ptr %l62
  %t947 = ptrtoint ptr %v2 to i64
  store i64 %t947, ptr %l224, !tbaa !24
  %t948 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e61
  br i1 %t948, label %bb179, label %bb180
bb179:
  %t950 = call ptr @__olang_region_make(ptr %v2)
  %t951 = ptrtoint ptr %t950 to i64
  store i64 %t951, ptr %l224, !tbaa !24
  br label %bb180
bb180:
  %t952 = load i64, ptr %l224
  %t953 = inttoptr i64 %t952 to ptr
  %t954 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t953)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t954, ptr %l226
  br label %bb181
bb181:
  %t955 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e61
  br i1 %t955, label %bb182, label %bb183
bb182:
  %t957 = load i64, ptr %l224
  %t958 = inttoptr i64 %t957 to ptr
  %t959 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l226, i32 0, i32 2
  %t960 = load { i64, ptr }, ptr %t959
  %t961 = extractvalue { i64, ptr } %t960, 1
  %t962 = call ptr @__olang_region_or(ptr %t961, ptr null)
  %t963 = call ptr @__olang_region_home(ptr %t962)
  %t964 = icmp ne ptr %t963, null
  %t965 = select i1 %t964, ptr %t963, ptr null
  %t966 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l226, i32 0, i32 1
  %t967 = load { i64, ptr }, ptr %t966
  %t968 = extractvalue { i64, ptr } %t967, 1
  %t969 = call ptr @__olang_region_or(ptr %t968, ptr null)
  %t970 = call ptr @__olang_region_home(ptr %t969)
  %t971 = icmp ne ptr %t970, null
  %t972 = select i1 %t971, ptr %t970, ptr %t965
  %t973 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l226, i32 0, i32 0
  %t974 = load { i64, ptr }, ptr %t973
  %t975 = extractvalue { i64, ptr } %t974, 1
  %t976 = call ptr @__olang_region_or(ptr %t975, ptr null)
  %t977 = call ptr @__olang_region_home(ptr %t976)
  %t978 = icmp ne ptr %t977, null
  %t979 = select i1 %t978, ptr %t977, ptr %t972
  %t980 = icmp eq ptr %t979, %t958
  call void @__olang_region_settle(ptr %t958, i1 %t980)
  br label %bb183
bb183:
  %t981 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l226
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t981, ptr %l63
  %t982 = ptrtoint ptr %v2 to i64
  store i64 %t982, ptr %l228, !tbaa !24
  %t983 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e62
  br i1 %t983, label %bb184, label %bb185
bb184:
  %t985 = call ptr @__olang_region_make(ptr %v2)
  %t986 = ptrtoint ptr %t985 to i64
  store i64 %t986, ptr %l228, !tbaa !24
  br label %bb185
bb185:
  %t987 = load i64, ptr %l228
  %t988 = inttoptr i64 %t987 to ptr
  %t989 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t988)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t989, ptr %l230
  br label %bb186
bb186:
  %t990 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e62
  br i1 %t990, label %bb187, label %bb188
bb187:
  %t992 = load i64, ptr %l228
  %t993 = inttoptr i64 %t992 to ptr
  %t994 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l230, i32 0, i32 2
  %t995 = load { i64, ptr }, ptr %t994
  %t996 = extractvalue { i64, ptr } %t995, 1
  %t997 = call ptr @__olang_region_or(ptr %t996, ptr null)
  %t998 = call ptr @__olang_region_home(ptr %t997)
  %t999 = icmp ne ptr %t998, null
  %t1000 = select i1 %t999, ptr %t998, ptr null
  %t1001 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l230, i32 0, i32 1
  %t1002 = load { i64, ptr }, ptr %t1001
  %t1003 = extractvalue { i64, ptr } %t1002, 1
  %t1004 = call ptr @__olang_region_or(ptr %t1003, ptr null)
  %t1005 = call ptr @__olang_region_home(ptr %t1004)
  %t1006 = icmp ne ptr %t1005, null
  %t1007 = select i1 %t1006, ptr %t1005, ptr %t1000
  %t1008 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l230, i32 0, i32 0
  %t1009 = load { i64, ptr }, ptr %t1008
  %t1010 = extractvalue { i64, ptr } %t1009, 1
  %t1011 = call ptr @__olang_region_or(ptr %t1010, ptr null)
  %t1012 = call ptr @__olang_region_home(ptr %t1011)
  %t1013 = icmp ne ptr %t1012, null
  %t1014 = select i1 %t1013, ptr %t1012, ptr %t1007
  %t1015 = icmp eq ptr %t1014, %t993
  call void @__olang_region_settle(ptr %t993, i1 %t1015)
  br label %bb188
bb188:
  %t1016 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l230
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1016, ptr %l64
  store i1 false, ptr %l65, !tbaa !21
  store i1 false, ptr %l66, !tbaa !21
  %t1017 = ptrtoint ptr %v2 to i64
  store i64 %t1017, ptr %l232, !tbaa !24
  %t1018 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e65
  br i1 %t1018, label %bb189, label %bb190
bb189:
  %t1020 = call ptr @__olang_region_make(ptr %v2)
  %t1021 = ptrtoint ptr %t1020 to i64
  store i64 %t1021, ptr %l232, !tbaa !24
  br label %bb190
bb190:
  %t1022 = load i64, ptr %l232
  %t1023 = inttoptr i64 %t1022 to ptr
  %t1024 = call %"compiler/typed:RefsKept" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2ftyped_3aRefsKept(ptr %t1023)
  store %"compiler/typed:RefsKept" %t1024, ptr %l234
  br label %bb191
bb191:
  %t1025 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e65
  br i1 %t1025, label %bb192, label %bb193
bb192:
  %t1027 = load i64, ptr %l232
  %t1028 = inttoptr i64 %t1027 to ptr
  %t1029 = getelementptr %"compiler/typed:RefsKept", ptr %l234, i32 0, i32 0
  %t1030 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1029, i32 0, i32 2
  %t1031 = load { i64, ptr }, ptr %t1030
  %t1032 = extractvalue { i64, ptr } %t1031, 1
  %t1033 = call ptr @__olang_region_or(ptr %t1032, ptr null)
  %t1034 = call ptr @__olang_region_home(ptr %t1033)
  %t1035 = icmp ne ptr %t1034, null
  %t1036 = select i1 %t1035, ptr %t1034, ptr null
  %t1037 = getelementptr %"compiler/typed:RefsKept", ptr %l234, i32 0, i32 0
  %t1038 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1037, i32 0, i32 1
  %t1039 = load { i64, ptr }, ptr %t1038
  %t1040 = extractvalue { i64, ptr } %t1039, 1
  %t1041 = call ptr @__olang_region_or(ptr %t1040, ptr null)
  %t1042 = call ptr @__olang_region_home(ptr %t1041)
  %t1043 = icmp ne ptr %t1042, null
  %t1044 = select i1 %t1043, ptr %t1042, ptr %t1036
  %t1045 = getelementptr %"compiler/typed:RefsKept", ptr %l234, i32 0, i32 0
  %t1046 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1045, i32 0, i32 0
  %t1047 = load { i64, ptr }, ptr %t1046
  %t1048 = extractvalue { i64, ptr } %t1047, 1
  %t1049 = call ptr @__olang_region_or(ptr %t1048, ptr null)
  %t1050 = call ptr @__olang_region_home(ptr %t1049)
  %t1051 = icmp ne ptr %t1050, null
  %t1052 = select i1 %t1051, ptr %t1050, ptr %t1044
  %t1053 = icmp eq ptr %t1052, %t1028
  call void @__olang_region_settle(ptr %t1028, i1 %t1053)
  br label %bb193
bb193:
  %t1054 = load %"compiler/typed:RefsKept", ptr %l234
  store %"compiler/typed:RefsKept" %t1054, ptr %l67
  %t1055 = ptrtoint ptr %v2 to i64
  store i64 %t1055, ptr %l236, !tbaa !24
  %t1056 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e66
  br i1 %t1056, label %bb194, label %bb195
bb194:
  %t1058 = call ptr @__olang_region_make(ptr %v2)
  %t1059 = ptrtoint ptr %t1058 to i64
  store i64 %t1059, ptr %l236, !tbaa !24
  br label %bb195
bb195:
  %t1060 = load i64, ptr %l236
  %t1061 = inttoptr i64 %t1060 to ptr
  %t1062 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1061)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1062, ptr %l238
  br label %bb196
bb196:
  %t1063 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e66
  br i1 %t1063, label %bb197, label %bb198
bb197:
  %t1065 = load i64, ptr %l236
  %t1066 = inttoptr i64 %t1065 to ptr
  %t1067 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l238, i32 0, i32 2
  %t1068 = load { i64, ptr }, ptr %t1067
  %t1069 = extractvalue { i64, ptr } %t1068, 1
  %t1070 = call ptr @__olang_region_or(ptr %t1069, ptr null)
  %t1071 = call ptr @__olang_region_home(ptr %t1070)
  %t1072 = icmp ne ptr %t1071, null
  %t1073 = select i1 %t1072, ptr %t1071, ptr null
  %t1074 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l238, i32 0, i32 1
  %t1075 = load { i64, ptr }, ptr %t1074
  %t1076 = extractvalue { i64, ptr } %t1075, 1
  %t1077 = call ptr @__olang_region_or(ptr %t1076, ptr null)
  %t1078 = call ptr @__olang_region_home(ptr %t1077)
  %t1079 = icmp ne ptr %t1078, null
  %t1080 = select i1 %t1079, ptr %t1078, ptr %t1073
  %t1081 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l238, i32 0, i32 0
  %t1082 = load { i64, ptr }, ptr %t1081
  %t1083 = extractvalue { i64, ptr } %t1082, 1
  %t1084 = call ptr @__olang_region_or(ptr %t1083, ptr null)
  %t1085 = call ptr @__olang_region_home(ptr %t1084)
  %t1086 = icmp ne ptr %t1085, null
  %t1087 = select i1 %t1086, ptr %t1085, ptr %t1080
  %t1088 = icmp eq ptr %t1087, %t1066
  call void @__olang_region_settle(ptr %t1066, i1 %t1088)
  br label %bb198
bb198:
  %t1089 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l238
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1089, ptr %l68
  %t1090 = ptrtoint ptr %v2 to i64
  store i64 %t1090, ptr %l240, !tbaa !24
  %t1091 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e67
  br i1 %t1091, label %bb199, label %bb200
bb199:
  %t1093 = call ptr @__olang_region_make(ptr %v2)
  %t1094 = ptrtoint ptr %t1093 to i64
  store i64 %t1094, ptr %l240, !tbaa !24
  br label %bb200
bb200:
  %t1095 = load i64, ptr %l240
  %t1096 = inttoptr i64 %t1095 to ptr
  %t1097 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t1096, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1097, ptr %l242
  br label %bb201
bb201:
  %t1098 = load i1, ptr @olang_2esole_2ecompiler_2feffects_3aEffects_2e67
  br i1 %t1098, label %bb202, label %bb203
bb202:
  %t1100 = load i64, ptr %l240
  %t1101 = inttoptr i64 %t1100 to ptr
  %t1102 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242, i32 0, i32 0
  %t1103 = load { i64, ptr }, ptr %t1102
  %t1104 = extractvalue { i64, ptr } %t1103, 1
  %t1105 = call ptr @__olang_region_or(ptr %t1104, ptr null)
  %t1106 = call ptr @__olang_region_home(ptr %t1105)
  %t1107 = icmp ne ptr %t1106, null
  %t1108 = select i1 %t1107, ptr %t1106, ptr null
  %t1109 = icmp eq ptr %t1108, %t1101
  call void @__olang_region_settle(ptr %t1101, i1 %t1109)
  br label %bb203
bb203:
  %t1110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242
  %t1111 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 0
  %t1112 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1112, ptr %t1111, !tbaa !29
  %t1113 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 1
  %t1114 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1114, ptr %t1113
  %t1115 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 2
  %t1116 = load i1, ptr %l4, !tbaa !21
  store i1 %t1116, ptr %t1115, !tbaa !21
  %t1117 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 3
  %t1118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1118, ptr %t1117
  %t1119 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 4
  %t1120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1120, ptr %t1119
  %t1121 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 5
  %t1122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1122, ptr %t1121
  %t1123 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 6
  %t1124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1124, ptr %t1123
  %t1125 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 7
  %t1126 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1126, ptr %t1125
  %t1127 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 8
  %t1128 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1128, ptr %t1127
  %t1129 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 9
  %t1130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1130, ptr %t1129
  %t1131 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 10
  %t1132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1132, ptr %t1131
  %t1133 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 11
  %t1134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1134, ptr %t1133
  %t1135 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 12
  %t1136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1136, ptr %t1135
  %t1137 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 13
  %t1138 = load i64, ptr %l15, !tbaa !24
  store i64 %t1138, ptr %t1137, !tbaa !24
  %t1139 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 14
  %t1140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1140, ptr %t1139
  %t1141 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 15
  %t1142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1142, ptr %t1141
  %t1143 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 16
  %t1144 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1144, ptr %t1143
  %t1145 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 17
  %t1146 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1146, ptr %t1145
  %t1147 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 18
  %t1148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1148, ptr %t1147
  %t1149 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 19
  %t1150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1150, ptr %t1149
  %t1151 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 20
  %t1152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1152, ptr %t1151
  %t1153 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 21
  %t1154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1154, ptr %t1153
  %t1155 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 22
  %t1156 = load i64, ptr %l24, !tbaa !24
  store i64 %t1156, ptr %t1155, !tbaa !24
  %t1157 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 23
  %t1158 = load %"compiler/effects:Facts", ptr %l25
  store %"compiler/effects:Facts" %t1158, ptr %t1157
  %t1159 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 24
  %t1160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1160, ptr %t1159
  %t1161 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 25
  %t1162 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1162, ptr %t1161
  %t1163 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 26
  %t1164 = load i64, ptr %l28, !tbaa !24
  store i64 %t1164, ptr %t1163, !tbaa !24
  %t1165 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 27
  %t1166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1166, ptr %t1165
  %t1167 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 28
  %t1168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1168, ptr %t1167
  %t1169 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 29
  %t1170 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1170, ptr %t1169
  %t1171 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 30
  %t1172 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1172, ptr %t1171
  %t1173 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 31
  %t1174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1174, ptr %t1173
  %t1175 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 32
  %t1176 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1176, ptr %t1175
  %t1177 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 33
  %t1178 = load i64, ptr %l35, !tbaa !24
  store i64 %t1178, ptr %t1177, !tbaa !24
  %t1179 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 34
  %t1180 = load i64, ptr %l36, !tbaa !24
  store i64 %t1180, ptr %t1179, !tbaa !24
  %t1181 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 35
  %t1182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1182, ptr %t1181
  %t1183 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 36
  %t1184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1184, ptr %t1183
  %t1185 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 37
  %t1186 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1186, ptr %t1185
  %t1187 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 38
  %t1188 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1188, ptr %t1187
  %t1189 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 39
  %t1190 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1190, ptr %t1189
  %t1191 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 40
  %t1192 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1192, ptr %t1191
  %t1193 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 41
  %t1194 = load i1, ptr %l43, !tbaa !21
  store i1 %t1194, ptr %t1193, !tbaa !21
  %t1195 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 42
  %t1196 = load i1, ptr %l44, !tbaa !21
  store i1 %t1196, ptr %t1195, !tbaa !21
  %t1197 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 43
  %t1198 = load i1, ptr %l45, !tbaa !21
  store i1 %t1198, ptr %t1197, !tbaa !21
  %t1199 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 44
  %t1200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1200, ptr %t1199
  %t1201 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 45
  %t1202 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1202, ptr %t1201
  %t1203 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 46
  %t1204 = load i1, ptr %l48, !tbaa !21
  store i1 %t1204, ptr %t1203, !tbaa !21
  %t1205 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 47
  %t1206 = load i64, ptr %l49, !tbaa !24
  store i64 %t1206, ptr %t1205, !tbaa !24
  %t1207 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 48
  %t1208 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t1208, ptr %t1207, !tbaa !27
  %t1209 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 49
  %t1210 = load i1, ptr %l51, !tbaa !21
  store i1 %t1210, ptr %t1209, !tbaa !21
  %t1211 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 50
  %t1212 = load %"compiler/source:Span", ptr %l52
  store %"compiler/source:Span" %t1212, ptr %t1211
  %t1213 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 51
  %t1214 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t1214, ptr %t1213, !tbaa !27
  %t1215 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 52
  %t1216 = load i1, ptr %l54, !tbaa !21
  store i1 %t1216, ptr %t1215, !tbaa !21
  %t1217 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 53
  %t1218 = load i64, ptr %l55, !tbaa !24
  store i64 %t1218, ptr %t1217, !tbaa !24
  %t1219 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 54
  %t1220 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l56
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1220, ptr %t1219
  %t1221 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 55
  %t1222 = load i1, ptr %l57, !tbaa !21
  store i1 %t1222, ptr %t1221, !tbaa !21
  %t1223 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 56
  %t1224 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1224, ptr %t1223
  %t1225 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 57
  %t1226 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1226, ptr %t1225
  %t1227 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 58
  %t1228 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1228, ptr %t1227
  %t1229 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 59
  %t1230 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1230, ptr %t1229
  %t1231 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 60
  %t1232 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l62
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1232, ptr %t1231
  %t1233 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 61
  %t1234 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1234, ptr %t1233
  %t1235 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 62
  %t1236 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l64
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1236, ptr %t1235
  %t1237 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 63
  %t1238 = load i1, ptr %l65, !tbaa !21
  store i1 %t1238, ptr %t1237, !tbaa !21
  %t1239 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 64
  %t1240 = load i1, ptr %l66, !tbaa !21
  store i1 %t1240, ptr %t1239, !tbaa !21
  %t1241 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 65
  %t1242 = load %"compiler/typed:RefsKept", ptr %l67
  store %"compiler/typed:RefsKept" %t1242, ptr %t1241
  %t1243 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 66
  %t1244 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l68
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1244, ptr %t1243
  %t1245 = getelementptr %"compiler/effects:Effects", ptr %l244, i32 0, i32 67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1110, ptr %t1245
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l244, i64 2528, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/effects:fslot" @compiler_2feffects_3afslot_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i32 %a2) #0 {
entry:
  %rv = alloca %"compiler/effects:fslot"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/effects:fslot" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/effects:fslot" %t8, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, 1
  %t12 = insertvalue %"compiler/effects:fslot" %t10, i32 %a2, 2
  store %"compiler/effects:fslot" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:fslot", ptr %rv
  ret %"compiler/effects:fslot" %rr
}

define dso_local %"compiler/effects:link" @compiler_2feffects_3alink_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/effects:link"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/effects:link" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/effects:link" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/effects:link" %t10, i64 %a2, 2
  store %"compiler/effects:link" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:link", ptr %rv
  ret %"compiler/effects:link" %rr
}

define dso_local %"compiler/effects:pair" @compiler_2feffects_3apair_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/effects:pair"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/effects:pair" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/effects:pair" %t6, i64 %a1, 1
  store %"compiler/effects:pair" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:pair", ptr %rv
  ret %"compiler/effects:pair" %rr
}

define dso_local %"compiler/effects:root" @compiler_2feffects_3aroot_2ector(ptr %v0, i64 %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/effects:root"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/effects:root" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/effects:root" %t6, i1 %a1, 1
  store %"compiler/effects:root" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:root", ptr %rv
  ret %"compiler/effects:root" %rr
}

@.d0 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"files" }>, align 8
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"network" }>, align 8
@.d2 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"processes" }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"environment" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"C" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"threads" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d9 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"not known - it reaches code that did not check" }>, align 8
@.d10 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"anything - it calls C, which may call the program's export fns" }>, align 8
@.d11 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"anything - it calls through a function value or an 'any'" }>, align 8
@.d12 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"none - it may be computed while compiling where its arguments are known" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"writes through " }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d21 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"calls through " }>, align 8
@.d22 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"writes a global" }>, align 8
@.d23 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"allocates" }>, align 8
@.d24 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"allocates only where it fails" }>, align 8
@.d25 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"allocates nothing" }>, align 8
@.d26 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"may grow a Vec" }>, align 8
@.d27 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"starts tasks" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"calls C" }>, align 8
@.d30 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"may end the program" }>, align 8
@.d31 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"may block" }>, align 8
@.d32 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"never blocks" }>, align 8
@.d33 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"recursive" }>, align 8
@.d34 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"always ends" }>, align 8
@.d35 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"may be computed while compiling" }>, align 8
@.d36 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d37 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Allocates" }>, align 8
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Blocks" }>, align 8
@.d39 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"WritesGlobals" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"CallsC" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Spawns" }>, align 8
@.d42 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Recursive" }>, align 8
@.d43 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Terminates" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Pure" }>, align 8
@.d45 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Returns" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d46 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"pthread_create" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
@olang_2esole_2ecompiler_2feffects_3aEffects_2e51 = weak hidden constant i1 false
declare ptr @__olang_region_make_part(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release_part(ptr, i64) noinline
@olang_2esole_2ecompiler_2feffects_3apart_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2e0 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3agiven_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:part"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/effects:part"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/effects:part", ptr %a0
  store %"compiler/effects:part" %t2, ptr %l1
  %t3 = getelementptr %"compiler/effects:part", ptr %l1, i32 0, i32 4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/effects:part", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/effects:part", ptr %l1
  store %"compiler/effects:part" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:part", ptr %rv
  ret %"compiler/effects:part" %rr
}

@.d48 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"exit" }>, align 8
@.d50 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_exit" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"abort" }>, align 8
@.d52 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d53 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@olang_2esole_2ecompiler_2feffects_3agiven_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3afslot_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"compiler/effects:fslot" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afslot(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:fslot"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/effects:fslot"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/effects:fslot", ptr %a0
  store %"compiler/effects:fslot" %t2, ptr %l1
  %t3 = getelementptr %"compiler/effects:fslot", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/effects:fslot", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/effects:fslot", ptr %l1
  store %"compiler/effects:fslot" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:fslot", ptr %rv
  ret %"compiler/effects:fslot" %rr
}

@olang_2esole_2ecompiler_2feffects_3apend_2e3 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3afpath_3e(ptr %v0, { i64, ptr } %t4)
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

@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aVerdict_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3apart_3e(ptr %v0, { i64, ptr } %t4)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3afpath_2e0 = weak hidden constant i1 false
define linkonce_odr %"compiler/effects:fpath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afpath(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:fpath"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/effects:fpath"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/effects:fpath", ptr %a0
  store %"compiler/effects:fpath" %t2, ptr %l1
  %t3 = getelementptr %"compiler/effects:fpath", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/effects:fpath", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/effects:fpath", ptr %l1
  store %"compiler/effects:fpath" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:fpath", ptr %rv
  ret %"compiler/effects:fpath" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3afret_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"compiler/effects:fret" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afret(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:fret"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/effects:fret"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/effects:fret", ptr %a0
  store %"compiler/effects:fret" %t2, ptr %l1
  %t3 = getelementptr %"compiler/effects:fret", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/effects:fret", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/effects:fret", ptr %l1, i32 0, i32 1
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/effects:fret", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/effects:fret", ptr %l1
  store %"compiler/effects:fret" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:fret", ptr %rv
  ret %"compiler/effects:fret" %rr
}

@.d56 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"call through" }>, align 8
@.d57 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"it calls through a function value here, and what that calls is not followed" }>, align 8
@.d58 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"its call through this function value may " }>, align 8
@olang_2esole_2ecompiler_2feffects_3afret_2e0 = weak hidden constant i1 false
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d60 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"its call of " }>, align 8
@.d61 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" may " }>, align 8
@.d62 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"it may " }>, align 8
@.d63 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" here" }>, align 8
@.d64 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"call through a function value it does not follow, which may not come back" }>, align 8
@.d65 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"call itself" }>, align 8
@.d66 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"loop with no count known before the loop starts" }>, align 8
@.d67 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"block" }>, align 8
@.d68 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"end the program" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aEffects_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e7 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hbea44694f2ac293c111b1f169c7495eb(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e8 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e16 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e17 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e31 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e32 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H3227b03907400d34f4865c02b6d98850(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e38 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e40 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e45 = weak hidden constant i1 false
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feffects_3aEffects_2e54 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e56 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e57 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__Hfe0b8a6431726c879f98e5933eafeded(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cc_Had198c5ef8f3129624d068a2c584611b(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e58 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_Hdcf598faa391f42f17ca4d3159c68b14(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H2f96a66e37bdd4e6ba26b25615641feb(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feffects_3aEffects_2e61 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e62 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e65 = weak hidden constant i1 false
define linkonce_odr %"compiler/typed:RefsKept" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2ftyped_3aRefsKept(ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/typed:RefsKept"
  %rv = alloca %"compiler/typed:RefsKept"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/typed:RefsKept" @compiler_2ftyped_3aRefsKept_2ector(ptr %v0)
  store %"compiler/typed:RefsKept" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"compiler/typed:RefsKept", ptr %l0
  store %"compiler/typed:RefsKept" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:RefsKept", ptr %rv
  ret %"compiler/typed:RefsKept" %rr
}

@olang_2esole_2ecompiler_2feffects_3aEffects_2e66 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feffects_3aEffects_2e67 = weak hidden constant i1 false
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3agiven_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/effects:given"
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
  %t4 = mul i64 %t3, 80
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
  %t15 = getelementptr %"compiler/effects:given", ptr %t14, i64 %t12
  %t17 = call %"compiler/effects:given" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3agiven(ptr %v0, ptr %t15)
  store %"compiler/effects:given" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/effects:given", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/effects:given", ptr %t22, i64 %t20
  store %"compiler/effects:given" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3afslot_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/effects:fslot"
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
  %t4 = mul i64 %t3, 48
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
  %t15 = getelementptr %"compiler/effects:fslot", ptr %t14, i64 %t12
  %t17 = call %"compiler/effects:fslot" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afslot(ptr %v0, ptr %t15)
  store %"compiler/effects:fslot" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/effects:fslot", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/effects:fslot", ptr %t22, i64 %t20
  store %"compiler/effects:fslot" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3afpath_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/effects:fpath"
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
  %t15 = getelementptr %"compiler/effects:fpath", ptr %t14, i64 %t12
  %t17 = call %"compiler/effects:fpath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afpath(ptr %v0, ptr %t15)
  store %"compiler/effects:fpath" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/effects:fpath", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/effects:fpath", ptr %t22, i64 %t20
  store %"compiler/effects:fpath" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3apart_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/effects:part"
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
  %t15 = getelementptr %"compiler/effects:part", ptr %t14, i64 %t12
  %t17 = call %"compiler/effects:part" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3apart(ptr %v0, ptr %t15)
  store %"compiler/effects:part" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/effects:part", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/effects:part", ptr %t22, i64 %t20
  store %"compiler/effects:part" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feffects_3afret_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/effects:fret"
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
  %t15 = getelementptr %"compiler/effects:fret", ptr %t14, i64 %t12
  %t17 = call %"compiler/effects:fret" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3afret(ptr %v0, ptr %t15)
  store %"compiler/effects:fret" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/effects:fret", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/effects:fret", ptr %t22, i64 %t20
  store %"compiler/effects:fret" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr %"compiler/effects:given" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3agiven(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:given"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/effects:given"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/effects:given", ptr %a0
  store %"compiler/effects:given" %t2, ptr %l1
  %t3 = getelementptr %"compiler/effects:given", ptr %l1, i32 0, i32 5
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/effects:given", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/effects:given", ptr %l1
  store %"compiler/effects:given" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/effects:given", ptr %rv
  ret %"compiler/effects:given" %rr
}

@olang_loc_290980515b4efda2_9d4c073daad962b6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2feffects_2eendsNote(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eIdle(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eTerminates(ptr %v0, ptr %a0)
@olang_loc_158e937bb9d0bd20_7156a314163e06b4 = external constant [0 x i8]
declare %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseWords(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2ePromReturns = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromPure = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoextern = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoalloc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoblock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNospawn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNorecurse = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eargGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ePush_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0, %"compiler/effects:link" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eoutOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/effects:root" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_650dda860f99b242_5ce1da2dd4f47486 = external constant [0 x i8]
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edefine(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f7c8ab04542d2f7e_3025df788b022d62 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare %"compiler/effects:pend" @compiler_2feffects_3apend_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ePush_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:pend" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2eMerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1bc29689bbb58e32_9924d9acc7f0abd6 = external constant [0 x i8]
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eonStack(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i64 @compiler_2feffects_2ecapIndex(i64 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:part" @compiler_2feffects_3apart_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, i32 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ePush_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:part" %a1)
@olang_loc_b51fd4885ec92e5_d8c1bbe4cc347d79 = external constant [0 x i8]
@olang_loc_488be308cffaf13e_20c0e7cb8e30f352 = external constant [0 x i8]
@olang_loc_59fe423ba48f95ef_125e5ca5a1678c93 = external constant [0 x i8]
declare %"compiler/effects:part" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efnPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyLocal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_8e13f40ea2f1e4d7_76f885d7d8afa3eb = external constant [0 x i8]
@olang_loc_2b1992bc034d4ac0_3aae813f6df6734c = external constant [0 x i8]
@olang_loc_46f184d5298e32c_10b291f73bcbacf0 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" @std_2fprelude_2farray_2eArray_3cI64_3e_2eIter_3cI64_3e(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2eVec_2eFromIter_3cI64_2c_20std_2fprelude_2farray_3aArrayIter_3cI64_3e_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclassifyInstLocal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i64 %a4)
@olang_loc_3535a9392f714f10_e154cce5335d35ec = external constant [0 x i8]
@olang_loc_7a6d7e31a8c94555_e5f55f7e2b9f5a99 = external constant [0 x i8]
@olang_loc_ac8d93ad38a597bd_9a80442872e097e1 = external constant [0 x i8]
declare %"compiler/effects:coldMark" @compiler_2feffects_3acoldMark_2ector(ptr %v0, i64 %a0, i1 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3b1aba267d3808f9_9a4444fd59d95fdd = external constant [0 x i8]
declare i64 @compiler_2feffects_2eparamOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_76dfd6b01352a9c1_3e5307bd9b690f5 = external constant [0 x i8]
@olang_loc_bf15bc95d959b66c_7e73e2171d14fc00 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb5dd413d586c55d7ccefa7dbc5ad43c5(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H7b34d2d8e55697dbed551519dd59c955(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eLen_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:given" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2eAt_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecallEdge(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eretsOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eRefMut_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eLen_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:part" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eAt_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2feffects_2eparamBit(i64 %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2feffects_2equickC(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecMayCallBack(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/effects:given" @compiler_2feffects_3agiven_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i32 %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2efieldSlots(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eLen_3ccompiler_2feffects_3afslot_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eslotBase(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:fslot" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_2eAt_3ccompiler_2feffects_3afslot_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanAssigned(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_H7835af935af759534f3892df019d3666(ptr %v0, ptr %a0, %"compiler/effects:pair" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eLen_3ccompiler_2feffects_3afpath_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2ePromiseNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare { i64, ptr } @compiler_2feffects_2eBreaks(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aRefsKept_2eKept(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare %"compiler/effects:Facts" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2eAt_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewalkBody(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e_2eClear_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0)
@olang_loc_9b481a3036e75930_9f21b77026d49cd4 = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eLen_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:link" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_2eAt_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aRefsKept_2eOwnSlot(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
@olang_loc_89d258cb45db8a97_6792eaa695d1effb = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hf6a5697b694481c39cb93e062458012f(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H7002a026c084e9a7d52910b10cae7157(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H23909c0b6cdd8c6a8e8461d347ccf8af(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/effects:fpath" @compiler_2feffects_3afpath_2ector(ptr %v0, ptr %v1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2ePush_3ccompiler_2feffects_3afpath_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:fpath" %a1)
declare %"compiler/effects:fpath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afpath_3e_2eAt_3ccompiler_2feffects_3afpath_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2edropsCalled(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_31e57a958c31a5ba_705aefa950dbf3e6 = external constant [0 x i8]
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd1c393a56f057603dea1fc43dacaf05b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2eLen_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %a0)
declare %"compiler/effects:fret" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2eAt_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eresPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_2ePush_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:given" %a1)
declare { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ewhyDoes(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/effects:fret" @compiler_2feffects_3afret_2ector(ptr %v0, ptr %v1, ptr %v2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_2ePush_3ccompiler_2feffects_3afret_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/effects:fret" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc7f0d5e54ac63fdc8f930fd93d6364c9(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
@olang_loc_e883a08fe0a2dfcb_10d50552a173805f = external constant [0 x i8]
@olang_loc_be89c63eecba24dc_20b8a06f464464c0 = external constant [0 x i8]
@olang_loc_da29f57e967b0d58_398b0b5997e9910c = external constant [0 x i8]
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eexprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2escanArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b872ac5dc3b5cbc5_c1669fe863d2e49 = external constant [0 x i8]
@olang_loc_7fc479e7b96e92ad_adfc96c825376791 = external constant [0 x i8]
@olang_loc_edb5a1ac978d0996_7c7124734c9b85fa = external constant [0 x i8]
@olang_loc_83ffd618ff536982_5c02ec347c68c506 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_Ha1bc2f35f7d195c0ca99c509224bae7a(ptr %v0, ptr %a0, %"compiler/effects:pair" %a1, i1 %a2)
@olang_loc_dbda74c6bd85bcc6_57ce86cdebb39c22 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ecoldExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eclause(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_cdd9fd819eb1314_592489ef7c054390 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebounds(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2enamed(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2feffects_2estmtSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2feffects_2ecompiler_2feffects_3aEffects_2ebodyName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_d8bf60be8d53266c_65df02eeff1797b0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cc_Had198c5ef8f3129624d068a2c584611b(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afslot_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3afret_3e_3e_2ector(ptr %v0)
declare %"compiler/typed:RefsKept" @compiler_2ftyped_3aRefsKept_2ector(ptr %v0)

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
