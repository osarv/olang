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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/check:ownerAt" = type { i32, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:nullNarrow" = type { { i64, ptr }, i64, i64, i1, i64 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, { i64, ptr }, i64, i1, i64 }
%"compiler/check:errNarrow" = type { { i64, ptr }, i32, i64, i64, i1, i64 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/check:pathMarks" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:litBuilder" = type { i64, i32 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/pair:Pair.b139c4f75a6545712256427180a82a06" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:roArg" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/check:signMag" = type { i1, i128 }
%"compiler/check:UnrollAsk" = type { { i64, ptr }, { i64, ptr }, i64, i32 }
%"compiler/check:heldCand" = type { i64, i64, i64 }
%"compiler/check:roOrigin" = type { ptr, i1 }
%"compiler/check:setAt" = type { ptr, i64, { i64, ptr }, { i64, ptr }, %"compiler/source:Span", i32 }
define dso_local i1 @compiler_2fcheck_2eclosedFn(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_980c9dc24d8ab357_bac7a576dce6b97b)
  unreachable
bb11:
  %t10 = load i1, ptr %l1, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t5 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 7
  store i64 %a1, ptr %t5, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4, %"compiler/source:Span" %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/generic:AnySlot"
  %l25 = alloca i32
  %l30 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca ptr
  %l72 = alloca i32
  %l77 = alloca i32
  %l81 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca i64
  %l108 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l125 = alloca i1
  %l126 = alloca { i64, ptr }
  %l128 = alloca i1
  %l129 = alloca ptr
  %l132 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l148 = alloca %"compiler/source:Span"
  %l149 = alloca { i64, ptr }
  %l151 = alloca i32
  %l154 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca { i64, ptr }
  %l167 = alloca ptr
  %l174 = alloca i64
  %l177 = alloca i1
  %l180 = alloca i1
  %l181 = alloca ptr
  %l182 = alloca %"compiler/source:Span"
  %l185 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l191 = alloca %"compiler/diagmsg:Msg"
  %l192 = alloca i64
  %l197 = alloca ptr
  %l200 = alloca ptr
  %l201 = alloca %"compiler/source:Span"
  %l202 = alloca %"compiler/source:Span"
  %l203 = alloca i64
  %l205 = alloca ptr
  %l206 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l214 = alloca ptr
  %l217 = alloca { i64, ptr }
  %l218 = alloca %"compiler/msgs:Nearest"
  %l227 = alloca { i64, ptr }
  %l230 = alloca ptr
  %l233 = alloca { i64, ptr }
  %l236 = alloca ptr
  %l237 = alloca %"compiler/source:Span"
  %l240 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l249 = alloca %"compiler/diagmsg:Msg"
  %l250 = alloca i64
  %l255 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  %t310 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t1)
  store i32 %t4, ptr %l25
  br label %bb1
bb1:
  %t5 = load i32, ptr %l25, !tbaa !23
  store i32 %t5, ptr %l7, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l7, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l30
  br label %bb2
bb2:
  %t16 = load i1, ptr %l30, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l31, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t18)
  store %"compiler/source:Span" %t20, ptr %l33
  br label %bb5
bb4:
  br label %bb22
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l34, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t22)
  store %"compiler/source:Span" %t24, ptr %l36
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l34, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l36
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t25, %"compiler/source:Span" %t26)
  store { i64, ptr } %t27, ptr %l37
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l7, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t28, i32 %t29)
  store { i64, ptr } %t32, ptr %l40
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l41, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l42, !tbaa !29
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t41)
  store %"compiler/source:Span" %t43, ptr %l44
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l42, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l44
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t44, %"compiler/source:Span" %t45)
  store { i64, ptr } %t46, ptr %l45
  br label %bb10
bb10:
  %t47 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t48 = call { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %s1, { i64, ptr } %t47)
  store { i64, ptr } %t48, ptr %l46
  br label %bb11
bb11:
  %t49 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l47, !tbaa !24
  %t51 = load i64, ptr %l47, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l48, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l47, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l49, !tbaa !27
  %t69 = ptrtoint ptr %v0 to i64
  store i64 %t69, ptr %l50, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t72 = call ptr @__olang_region_make(ptr %v0)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l50, !tbaa !24
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l52, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l53, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l55
  br label %bb14
bb14:
  %t79 = load ptr, ptr %l53, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l55
  %t81 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t79, %"compiler/source:Span" %t80)
  store { i64, ptr } %t81, ptr %l56
  br label %bb15
bb15:
  %t82 = load i64, ptr %l50
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = load i64, ptr %l50
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = load ptr, ptr %l52, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t88 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eendedWhy(ptr %v0, ptr %t83, ptr %t85, ptr %t86, { i64, ptr } %t87)
  store { i64, ptr } %t88, ptr %l57
  br label %bb16
bb16:
  %t89 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t90 = load i64, ptr %l50
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = extractvalue { i64, ptr } %t89, 0
  %t93 = extractvalue { i64, ptr } %t89, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t102 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %s1, ptr %s1, ptr %v0, ptr %v0, { i64, ptr } %t98, { i64, ptr } %t99, { i64, ptr } %t100, { i64, ptr } %t97)
  store %"compiler/diagmsg:Msg" %t102, ptr %l59
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l31, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l33
  %t105 = load %"compiler/diagmsg:Msg", ptr %l59
  %t106 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t103, %"compiler/source:Span" %t104, %"compiler/diagmsg:Msg" %t105)
  store i64 %t106, ptr %l60
  br label %bb18
bb18:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l61, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t108, ptr %l62
  %t109 = load ptr, ptr %l3, !tbaa !29
  store ptr %t109, ptr %l63, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l7, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l68
  br label %bb19
bb19:
  %t120 = load ptr, ptr %l61, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l62
  %t122 = load ptr, ptr %l63, !tbaa !29
  %t123 = load i32, ptr %l68, !tbaa !23
  %t124 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v0, ptr %t120, %"compiler/source:Span" %t121, ptr %t122, i32 %t123)
  store ptr %t124, ptr %l69
  br label %bb20
bb20:
  %t125 = load ptr, ptr %l69, !tbaa !29
  store ptr %t125, ptr %l3, !tbaa !29
  %t126 = load ptr, ptr %l3, !tbaa !29
  %t129 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t126)
  store i32 %t129, ptr %l72
  br label %bb21
bb21:
  %t130 = load i32, ptr %l72, !tbaa !23
  store i32 %t130, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb22
bb22:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l7, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l77
  br label %bb23
bb23:
  %t141 = load i32, ptr %l77, !tbaa !23
  store i32 %t141, ptr %l8, !tbaa !23
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t146 = load i32, ptr %l8, !tbaa !23
  %t149 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t145, i32 %t146)
  store { i64, ptr } %t149, ptr %l81
  br label %bb24
bb24:
  %t150 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t150, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t151, 0
  store i64 %t153, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t155 = load i64, ptr %l11, !tbaa !24
  %t156 = load i64, ptr %l10, !tbaa !24
  %t159 = icmp sgt i64 %t155, %t156
  br i1 %t159, label %bb25, label %bb26
bb25:
  %t161 = load i64, ptr %l12, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb30
bb27:
  %t165 = load i64, ptr %l11, !tbaa !24
  %t166 = load i64, ptr %l10, !tbaa !24
  %t169 = sub i64 %t165, %t166
  %t170 = load i64, ptr %l12, !tbaa !24
  %t173 = add i64 %t169, %t170
  %t175 = sub i64 %t173, 1
  %t176 = load i64, ptr %l12, !tbaa !24
  %t179 = sdiv i64 %t175, %t176
  store i64 %t179, ptr %l90, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb29
bb29:
  %t181 = load i64, ptr %l90, !tbaa !24
  store i64 %t181, ptr %l87, !tbaa !24
  br label %bb30
bb30:
  %t182 = load i64, ptr %l87, !tbaa !24
  store i64 %t182, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb31
bb31:
  %t183 = load i64, ptr %l14, !tbaa !24
  %t184 = load i64, ptr %l13, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb32, label %bb33
bb32:
  br label %bb60
bb33:
  br label %bb34
bb34:
  %t191 = load i64, ptr %l10, !tbaa !24
  %t192 = load i64, ptr %l14, !tbaa !24
  %t193 = load i64, ptr %l12, !tbaa !24
  %t196 = mul i64 %t192, %t193
  %t199 = add i64 %t191, %t196
  store i64 %t199, ptr %l15, !tbaa !24
  %t201 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t201, ptr %l108, !tbaa !27
  %t202 = load i64, ptr %l15, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr %"compiler/generic:AnySlot", ptr %t205, i64 %t202
  %t207 = getelementptr %"compiler/generic:AnySlot", ptr %t206, i32 0, i32 0
  %t208 = load i32, ptr %t207, !tbaa !23
  %t209 = load i32, ptr %l4, !tbaa !23
  %t212 = icmp ne i32 %t208, %t209
  br i1 %t212, label %bb35, label %bb36
bb35:
  br label %bb59
bb36:
  br label %bb37
bb37:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i32, ptr %l8, !tbaa !23
  %t216 = load i64, ptr %l15, !tbaa !24
  %t217 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %t214, i32 %t215, i64 %t216, %"compiler/source:Span" %t217)
  br label %bb38
bb38:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t223, ptr %l118, !tbaa !27
  %t224 = load i64, ptr %l15, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr %"compiler/generic:AnySlot", ptr %t227, i64 %t224
  %t229 = load %"compiler/generic:AnySlot", ptr %t228
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v0, ptr %t222, %"compiler/generic:AnySlot" %t229)
  store ptr %t232, ptr %l121
  br label %bb39
bb39:
  %t233 = load ptr, ptr %l121, !tbaa !29
  store ptr %t233, ptr %l16, !tbaa !29
  %t234 = load ptr, ptr %l16, !tbaa !29
  %t236 = icmp eq ptr %t234, null
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb40, label %bb41
bb40:
  %t240 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t240, ptr %l126, !tbaa !27
  %t241 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = call ptr @__olang_scope_of(ptr %t242, ptr null)
  %t244 = ptrtoint ptr %t243 to i64
  %t246 = inttoptr i64 %t244 to ptr
  %t247 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t248 = call i1 @compiler_2fcheck_2ehasNamed(ptr %t246, { i64, ptr } %t247)
  store i1 %t248, ptr %l128
  br label %bb42
bb41:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb43
bb42:
  %t249 = load i1, ptr %l128, !tbaa !21
  store i1 %t249, ptr %l125, !tbaa !21
  br label %bb43
bb43:
  %t250 = load i1, ptr %l125, !tbaa !21
  br i1 %t250, label %bb44, label %bb45
bb44:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l129, !tbaa !29
  %t252 = load ptr, ptr %l16, !tbaa !29
  %t254 = getelementptr %"compiler/ast:Func", ptr %t252, i32 0, i32 3
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = getelementptr %"compiler/ast:Sig", ptr %t255, i32 0, i32 0
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  store { i64, ptr } %t258, ptr %l132, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t259, ptr %l133, !tbaa !27
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l4, !tbaa !23
  %t264 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t260, i32 %t261)
  store { i64, ptr } %t264, ptr %l136
  br label %bb46
bb45:
  br label %bb53
bb46:
  %t265 = load ptr, ptr %l129, !tbaa !29
  %t266 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t268 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t269 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %t265, { i64, ptr } %t266, { i64, ptr } %t267, { i64, ptr } %t268)
  store { i64, ptr } %t269, ptr %l137
  br label %bb47
bb47:
  %t270 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t270, ptr %l6, !tbaa !27
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 164
  %t274 = load i1, ptr %t273, !tbaa !21
  br i1 %t274, label %bb48, label %bb49
bb48:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/check:Checker", ptr %t276, i32 0, i32 164
  store i1 false, ptr %t278, !tbaa !21
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v0, ptr %t279, { i64, ptr } %t280)
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load %"compiler/source:Span", ptr %l1
  %t287 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t283, %"compiler/source:Span" %t284)
  store ptr %t287, ptr %l145
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t288 = load ptr, ptr %l145, !tbaa !29
  store ptr %t288, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t289 = load ptr, ptr %l0, !tbaa !29
  store ptr %t289, ptr %l146, !tbaa !29
  %t290 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t290, ptr %l147
  %t291 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t291, ptr %l148
  %t292 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t292, ptr %l149, !tbaa !27
  %t293 = load i64, ptr %l15, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr %"compiler/generic:AnySlot", ptr %t296, i64 %t293
  %t298 = getelementptr %"compiler/generic:AnySlot", ptr %t297, i32 0, i32 5
  %t299 = load i32, ptr %t298, !tbaa !23
  store i32 %t299, ptr %l151, !tbaa !23
  %t300 = load i32, ptr %l8, !tbaa !23
  %t301 = load i64, ptr %l15, !tbaa !24
  %t302 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t302, ptr %l154, !tbaa !27
  %t303 = load i64, ptr %l15, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr %"compiler/generic:AnySlot", ptr %t306, i64 %t303
  %t308 = getelementptr %"compiler/generic:AnySlot", ptr %t307, i32 0, i32 5
  %t309 = load i32, ptr %t308, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t310
  %t311 = getelementptr { i64, [3 x i64] }, ptr %t310, i32 0, i32 0
  store i64 3, ptr %t311
  %t313 = insertvalue { i32, i64, i32 } undef, i32 %t300, 0
  %t315 = insertvalue { i32, i64, i32 } %t313, i64 %t301, 1
  %t317 = insertvalue { i32, i64, i32 } %t315, i32 %t309, 2
  %t318 = getelementptr { i64, [3 x i64] }, ptr %t310, i32 0, i32 1
  store { i32, i64, i32 } %t317, ptr %t318
  %t319 = load { i64, [3 x i64] }, ptr %t310
  %t321 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store { i64, [3 x i64] } %t319, ptr %t321
  store ptr %t321, ptr %l158, !tbaa !29
  %t322 = load ptr, ptr %l3, !tbaa !29
  store ptr %t322, ptr %l160, !tbaa !29
  %t324 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t324, ptr %l161, !tbaa !27
  %t325 = icmp sge i64 0, 0
  br i1 %t325, label %bb54, label %bb55
bb54:
  %t327 = icmp sle i64 0, 1152921504606846975
  br i1 %t327, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_e1138a3bee8dfd28_1d9c93b07a3bbf3c)
  unreachable
bb56:
  %t329 = mul i64 0, 8
  %t330 = insertvalue { i64, ptr } undef, i64 0, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t332 = load ptr, ptr %l160, !tbaa !29
  %t333 = call ptr @__olang_scope_of(ptr %t332, ptr null)
  %t334 = ptrtoint ptr %t333 to i64
  %t335 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = call ptr @__olang_scope_of(ptr %t336, ptr null)
  %t338 = ptrtoint ptr %t337 to i64
  %t340 = inttoptr i64 %t334 to ptr
  %t342 = inttoptr i64 %t338 to ptr
  %t343 = load ptr, ptr %l146, !tbaa !29
  %t344 = load %"compiler/source:Span", ptr %l147
  %t345 = load %"compiler/source:Span", ptr %l148
  %t346 = load i32, ptr %l151, !tbaa !23
  %t347 = load ptr, ptr %l158, !tbaa !29
  %t348 = load ptr, ptr %l160, !tbaa !29
  %t349 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t351 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v4, ptr %t340, ptr %t342, ptr %v0, ptr %v4, ptr %t343, %"compiler/source:Span" %t344, %"compiler/source:Span" %t345, i32 %t346, ptr %t347, i64 -1, ptr %t348, { i64, ptr } %t349, { i64, ptr } %t331)
  store ptr %t351, ptr %l167
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_e1138a3bee8dfd28_1d9c93b07a3bbf3c)
  unreachable
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t352 = load ptr, ptr %l167, !tbaa !29
  store ptr %t352, ptr %rv
  br label %ret
bb59:
  %t353 = load i64, ptr %l14, !tbaa !24
  %t355 = add i64 %t353, 1
  store i64 %t355, ptr %l14, !tbaa !24
  br label %bb31
bb60:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t361 = load i32, ptr %l8, !tbaa !23
  %t362 = load i32, ptr %l4, !tbaa !23
  %t366 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyDefault(ptr %v0, ptr %t360, i32 %t361, i32 %t362)
  store i64 %t366, ptr %l174
  br label %bb61
bb61:
  %t367 = load i64, ptr %l174, !tbaa !24
  store i64 %t367, ptr %l17, !tbaa !24
  %t368 = load i64, ptr %l17, !tbaa !24
  %t370 = icmp sge i64 %t368, 0
  br i1 %t370, label %bb62, label %bb63
bb62:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i64, ptr %l17, !tbaa !24
  %t376 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultCopiesRecv(ptr %v0, ptr %t372, i64 %t373)
  store i1 %t376, ptr %l180
  br label %bb64
bb63:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb65
bb64:
  %t377 = load i1, ptr %l180, !tbaa !21
  store i1 %t377, ptr %l177, !tbaa !21
  br label %bb65
bb65:
  %t378 = load i1, ptr %l177, !tbaa !21
  br i1 %t378, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s8
  %t379 = load ptr, ptr %l0, !tbaa !29
  store ptr %t379, ptr %l181, !tbaa !29
  %t380 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t380, ptr %l182
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i32, ptr %l4, !tbaa !23
  %t385 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s8, ptr %t381, i32 %t382)
  store { i64, ptr } %t385, ptr %l185
  br label %bb68
bb67:
  br label %bb74
bb68:
  %t386 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t386, 0
  %t388 = extractvalue { i64, ptr } %t386, 1
  %t389 = mul i64 %t387, 1
  %t390 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t389)
  call void @llvm.memcpy.p0.p0.i64(ptr %t390, ptr %t388, i64 %t389, i1 false)
  %t391 = insertvalue { i64, ptr } undef, i64 %t387, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t390, 1
  store { i64, ptr } %t392, ptr %l186, !tbaa !27
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t394 = load i32, ptr %l7, !tbaa !23
  %t397 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t393, i32 %t394)
  store { i64, ptr } %t397, ptr %l189
  br label %bb69
bb69:
  %t398 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t399 = extractvalue { i64, ptr } %t398, 0
  %t400 = extractvalue { i64, ptr } %t398, 1
  %t401 = mul i64 %t399, 1
  %t402 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t401)
  call void @llvm.memcpy.p0.p0.i64(ptr %t402, ptr %t400, i64 %t401, i1 false)
  %t403 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t404 = insertvalue { i64, ptr } %t403, ptr %t402, 1
  %t405 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t407 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNoCopy(ptr %s8, ptr %s8, ptr %v0, { i64, ptr } %t405, { i64, ptr } %t404)
  store %"compiler/diagmsg:Msg" %t407, ptr %l191
  br label %bb70
bb70:
  %t408 = load ptr, ptr %l181, !tbaa !29
  %t409 = load %"compiler/source:Span", ptr %l182
  %t410 = load %"compiler/diagmsg:Msg", ptr %l191
  %t411 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t408, %"compiler/source:Span" %t409, %"compiler/diagmsg:Msg" %t410)
  store i64 %t411, ptr %l192
  br label %bb71
bb71:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t412, { i64, ptr } %t413)
  br label %bb72
bb72:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load %"compiler/source:Span", ptr %l1
  %t420 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t416, %"compiler/source:Span" %t417)
  store ptr %t420, ptr %l197
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t421 = load ptr, ptr %l197, !tbaa !29
  store ptr %t421, ptr %rv
  br label %ret
bb74:
  %t422 = load i64, ptr %l17, !tbaa !24
  %t424 = icmp sge i64 %t422, 0
  br i1 %t424, label %bb75, label %bb76
bb75:
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l200, !tbaa !29
  %t427 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t427, ptr %l201
  %t428 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t428, ptr %l202
  %t429 = load i64, ptr %l17, !tbaa !24
  store i64 %t429, ptr %l203, !tbaa !24
  %t430 = load ptr, ptr %l3, !tbaa !29
  store ptr %t430, ptr %l205, !tbaa !29
  %t432 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t432, ptr %l206, !tbaa !27
  %t433 = icmp sge i64 0, 0
  br i1 %t433, label %bb77, label %bb78
bb76:
  br label %bb86
bb77:
  %t435 = icmp sle i64 0, 1152921504606846975
  br i1 %t435, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_ecdebd42147a0915_28ece6113815da89)
  unreachable
bb79:
  %t437 = mul i64 0, 8
  %t438 = insertvalue { i64, ptr } undef, i64 0, 0
  %t439 = insertvalue { i64, ptr } %t438, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t439, ptr %l209, !tbaa !27
  %t440 = icmp sge i64 0, 0
  br i1 %t440, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_ecdebd42147a0915_28ece6113815da89)
  unreachable
bb81:
  %t442 = icmp sle i64 0, 2305843009213693951
  br i1 %t442, label %bb83, label %bb84
bb82:
  call void @__olang_check_failed(ptr @olang_loc_b35cdd4155941ff6_f61ebbb89c67ebca)
  unreachable
bb83:
  %t444 = mul i64 0, 4
  %t445 = insertvalue { i64, ptr } undef, i64 0, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t447 = load ptr, ptr %l205, !tbaa !29
  %t448 = call ptr @__olang_scope_of(ptr %t447, ptr null)
  %t449 = ptrtoint ptr %t448 to i64
  %t451 = inttoptr i64 %t449 to ptr
  %t452 = load ptr, ptr %l200, !tbaa !29
  %t453 = load %"compiler/source:Span", ptr %l201
  %t454 = load %"compiler/source:Span", ptr %l202
  %t455 = load i64, ptr %l203, !tbaa !24
  %t456 = load ptr, ptr %l205, !tbaa !29
  %t457 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t458 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t460 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %t451, ptr %v3, ptr %v0, ptr %v4, ptr %v4, ptr %t452, %"compiler/source:Span" %t453, %"compiler/source:Span" %t454, i64 %t455, ptr %t456, { i64, ptr } %t457, { i64, ptr } %t458, { i64, ptr } %t446)
  store ptr %t460, ptr %l214
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_b35cdd4155941ff6_f61ebbb89c67ebca)
  unreachable
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t461 = load ptr, ptr %l214, !tbaa !29
  store ptr %t461, ptr %rv
  br label %ret
bb86:
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load i32, ptr %l4, !tbaa !23
  %t466 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t462, i32 %t463)
  store { i64, ptr } %t466, ptr %l217
  br label %bb87
bb87:
  %t467 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t468 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t467)
  store %"compiler/msgs:Nearest" %t468, ptr %l218
  br label %bb88
bb88:
  %t469 = load %"compiler/msgs:Nearest", ptr %l218
  %t470 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t469, ptr %t470
  store ptr %t470, ptr %l18, !tbaa !29
  %t472 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t472, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t474 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t476 = extractvalue { i64, ptr } %t474, 0
  store i64 %t476, ptr %l21, !tbaa !24
  br label %bb89
bb89:
  %t478 = load i64, ptr %l20, !tbaa !24
  %t479 = load i64, ptr %l21, !tbaa !24
  %t482 = icmp slt i64 %t478, %t479
  %t484 = xor i1 %t482, true
  br i1 %t484, label %bb90, label %bb91
bb90:
  br label %bb96
bb91:
  br label %bb92
bb92:
  %t486 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t486, ptr %l227, !tbaa !27
  %t487 = load i64, ptr %l20, !tbaa !24
  %t489 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t490 = load ptr, ptr %t489, !tbaa !27
  %t491 = getelementptr %"compiler/generic:AnySlot", ptr %t490, i64 %t487
  %t492 = load %"compiler/generic:AnySlot", ptr %t491
  store %"compiler/generic:AnySlot" %t492, ptr %l22
  %t494 = load ptr, ptr %l18, !tbaa !29
  store ptr %t494, ptr %l230, !tbaa !29
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/generic:AnySlot", ptr %l22, i32 0, i32 0
  %t497 = load i32, ptr %t496, !tbaa !23
  %t500 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t495, i32 %t497)
  store { i64, ptr } %t500, ptr %l233
  br label %bb93
bb93:
  %t501 = load ptr, ptr %l230, !tbaa !29
  %t502 = load { i64, ptr }, ptr %l233, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t501, { i64, ptr } %t502)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t503 = load i64, ptr %l20, !tbaa !24
  %t505 = add i64 %t503, 1
  store i64 %t505, ptr %l20, !tbaa !24
  br label %bb89
bb96:
  %t507 = load ptr, ptr %l0, !tbaa !29
  store ptr %t507, ptr %l236, !tbaa !29
  %t508 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t508, ptr %l237
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load i32, ptr %l7, !tbaa !23
  %t513 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t509, i32 %t510)
  store { i64, ptr } %t513, ptr %l240
  br label %bb97
bb97:
  %t514 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t514, 0
  %t516 = extractvalue { i64, ptr } %t514, 1
  %t517 = mul i64 %t515, 1
  %t518 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t517)
  call void @llvm.memcpy.p0.p0.i64(ptr %t518, ptr %t516, i64 %t517, i1 false)
  %t519 = insertvalue { i64, ptr } undef, i64 %t515, 0
  %t520 = insertvalue { i64, ptr } %t519, ptr %t518, 1
  store { i64, ptr } %t520, ptr %l241, !tbaa !27
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load i32, ptr %l4, !tbaa !23
  %t525 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t521, i32 %t522)
  store { i64, ptr } %t525, ptr %l244
  br label %bb98
bb98:
  %t526 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t527 = extractvalue { i64, ptr } %t526, 0
  %t528 = extractvalue { i64, ptr } %t526, 1
  %t529 = mul i64 %t527, 1
  %t530 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t529)
  call void @llvm.memcpy.p0.p0.i64(ptr %t530, ptr %t528, i64 %t529, i1 false)
  %t531 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t532 = insertvalue { i64, ptr } %t531, ptr %t530, 1
  store { i64, ptr } %t532, ptr %l245, !tbaa !27
  %t533 = load ptr, ptr %l18, !tbaa !29
  %t535 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %s0, ptr %t533)
  store { i64, ptr } %t535, ptr %l247
  br label %bb99
bb99:
  %t536 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 0
  %t538 = extractvalue { i64, ptr } %t536, 1
  %t539 = mul i64 %t537, 1
  %t540 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t539)
  call void @llvm.memcpy.p0.p0.i64(ptr %t540, ptr %t538, i64 %t539, i1 false)
  %t541 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  %t543 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t544 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t546 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNoMethod(ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t543, { i64, ptr } %t544, { i64, ptr } %t542)
  store %"compiler/diagmsg:Msg" %t546, ptr %l249
  br label %bb100
bb100:
  %t547 = load ptr, ptr %l236, !tbaa !29
  %t548 = load %"compiler/source:Span", ptr %l237
  %t549 = load %"compiler/diagmsg:Msg", ptr %l249
  %t550 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t547, %"compiler/source:Span" %t548, %"compiler/diagmsg:Msg" %t549)
  store i64 %t550, ptr %l250
  br label %bb101
bb101:
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t552 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t551, { i64, ptr } %t552)
  br label %bb102
bb102:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t556 = load %"compiler/source:Span", ptr %l1
  %t559 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t555, %"compiler/source:Span" %t556)
  store ptr %t559, ptr %l255
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s0)
  %t560 = load ptr, ptr %l255, !tbaa !29
  store ptr %t560, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCaseType(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i32
  %l16 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l24 = alloca { i64, ptr }
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i64
  %l33 = alloca i32
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i1
  %l62 = alloca i1
  %l67 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l81 = alloca i1
  %l83 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i32, ptr %l11, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l16
  br label %bb2
bb2:
  %t17 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t19 = trunc i64 29 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t26, i32 %t27)
  store { i64, ptr } %t30, ptr %l24
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t31 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t39 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseNotAny(ptr %s1, ptr %v0, { i64, ptr } %t37)
  store %"compiler/diagmsg:Msg" %t39, ptr %l26
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l21
  %t42 = load %"compiler/diagmsg:Msg", ptr %l26
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t40, %"compiler/source:Span" %t41, %"compiler/diagmsg:Msg" %t42)
  store i64 %t43, ptr %l27
  br label %bb7
bb7:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t44, ptr %rv
  br label %ret
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l4, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l33
  br label %bb9
bb9:
  %t56 = load i32, ptr %l33, !tbaa !23
  store i32 %t56, ptr %l5, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i32, ptr %l5, !tbaa !23
  %t64 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t64, ptr %l37
  br label %bb10
bb10:
  %t65 = load i1, ptr %l37, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l39, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t69, ptr %l40
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l2, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t70, i32 %t71)
  store { i64, ptr } %t74, ptr %l43
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t75 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l44, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l5, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t82, i32 %t83)
  store { i64, ptr } %t86, ptr %l47
  br label %bb14
bb14:
  %t87 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t96 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOpenInspected(ptr %s2, ptr %s2, ptr %v0, { i64, ptr } %t94, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t96, ptr %l49
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l39, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l40
  %t99 = load %"compiler/diagmsg:Msg", ptr %l49
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t97, %"compiler/source:Span" %t98, %"compiler/diagmsg:Msg" %t99)
  store i64 %t100, ptr %l50
  br label %bb16
bb16:
  %t101 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t101, ptr %rv
  br label %ret
bb17:
  %t103 = load ptr, ptr %l3, !tbaa !29
  store ptr %t103, ptr %l6, !tbaa !29
  %t105 = load ptr, ptr %l3, !tbaa !29
  store ptr %t105, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t106 = load ptr, ptr %l53, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb18, label %bb19
bb18:
  %t109 = load ptr, ptr %l53, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 8}
  %t112 = icmp eq i64 %t110, 3
  store i1 %t112, ptr %l54, !tbaa !21
  br label %bb19
bb19:
  %t113 = load i1, ptr %l54, !tbaa !21
  br i1 %t113, label %bb20, label %bb21
bb20:
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t116, i32 0, i32 1
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t120 = load ptr, ptr %l7, !tbaa !29
  store ptr %t120, ptr %l6, !tbaa !29
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_50e8912350a6e3a7_8e15953db4ede8db)
  unreachable
bb28:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t126 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %t122, ptr %t123, i1 true)
  store i1 %t126, ptr %l62
  br label %bb29
bb29:
  %t127 = load i1, ptr %l62, !tbaa !21
  %t128 = xor i1 %t127, true
  br i1 %t128, label %bb30, label %bb31
bb30:
  %t130 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t130, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l67, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l6, !tbaa !29
  %t143 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t138, ptr %t139)
  store i32 %t143, ptr %l71
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l67, !tbaa !29
  %t145 = load i32, ptr %l71, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t146, ptr %l72
  br label %bb34
bb34:
  %t147 = load i32, ptr %l72, !tbaa !23
  store i32 %t147, ptr %l8, !tbaa !23
  %t148 = load i32, ptr %l8, !tbaa !23
  %t149 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t152 = icmp eq i32 %t148, %t149
  br i1 %t152, label %bb35, label %bb36
bb35:
  %t154 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t154, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i32, ptr %l8, !tbaa !23
  %t161 = load i32, ptr %l5, !tbaa !23
  %t165 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %t159, i32 %t160, i32 %t161)
  store i1 %t165, ptr %l81
  br label %bb38
bb38:
  %t166 = load i1, ptr %l81, !tbaa !21
  %t167 = xor i1 %t166, true
  br i1 %t167, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s7
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l83, !tbaa !29
  %t170 = load ptr, ptr %l3, !tbaa !29
  %t172 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t170)
  store %"compiler/source:Span" %t172, ptr %l85
  br label %bb41
bb40:
  br label %bb46
bb41:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l8, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t173, i32 %t174)
  store { i64, ptr } %t177, ptr %l88
  br label %bb42
bb42:
  %t178 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  %t180 = extractvalue { i64, ptr } %t178, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  store { i64, ptr } %t184, ptr %l89, !tbaa !27
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l5, !tbaa !23
  %t189 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t185, i32 %t186)
  store { i64, ptr } %t189, ptr %l92
  br label %bb43
bb43:
  %t190 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  %t192 = extractvalue { i64, ptr } %t190, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t197 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t199 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMemberCase(ptr %s7, ptr %s7, ptr %v0, { i64, ptr } %t197, { i64, ptr } %t196)
  store %"compiler/diagmsg:Msg" %t199, ptr %l94
  br label %bb44
bb44:
  %t200 = load ptr, ptr %l83, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l85
  %t202 = load %"compiler/diagmsg:Msg", ptr %l94
  %t203 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t200, %"compiler/source:Span" %t201, %"compiler/diagmsg:Msg" %t202)
  store i64 %t203, ptr %l95
  br label %bb45
bb45:
  %t204 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s7)
  store i32 %t204, ptr %rv
  br label %ret
bb46:
  %t206 = load i32, ptr %l8, !tbaa !23
  store i32 %t206, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanySpawned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l14 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca { i64, ptr }
  %l21 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca i64
  %l23 = alloca i64
  %l27 = alloca { i64, ptr }
  %l33 = alloca i32
  %l36 = alloca %"std/prelude/text:StringBuilder"
  %l39 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l66 = alloca i64
  %l69 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca i32
  %l82 = alloca %"compiler/source:Span"
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca { i64, ptr }
  %l91 = alloca %"compiler/diagmsg:Msg"
  %l92 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l14, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t8)
  store %"compiler/source:Span" %t10, ptr %l16
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l17, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t12)
  store %"compiler/source:Span" %t14, ptr %l19
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l17, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l19
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t15, %"compiler/source:Span" %t16)
  store { i64, ptr } %t17, ptr %l20
  br label %bb5
bb5:
  %t18 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t19 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawned(ptr %v0, ptr %v0, { i64, ptr } %t18)
  store %"compiler/diagmsg:Msg" %t19, ptr %l21
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l16
  %t22 = load %"compiler/diagmsg:Msg", ptr %l21
  %t23 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t20, %"compiler/source:Span" %t21, %"compiler/diagmsg:Msg" %t22)
  store i64 %t23, ptr %l22
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t24 = ptrtoint ptr %s0 to i64
  store i64 %t24, ptr %l23, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eanySpawned_2elocal_2e5
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = call ptr @__olang_region_make(ptr %s0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l4, !tbaa !23
  %t31 = load i64, ptr %l23
  %t32 = inttoptr i64 %t31 to ptr
  %t35 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %t32, ptr %t29, i32 %t30)
  store { i64, ptr } %t35, ptr %l27
  br label %bb11
bb11:
  %t36 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eanySpawned_2elocal_2e5
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr %l23
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = load { i64, ptr }, ptr %l27
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t45)
  br label %bb13
bb13:
  %t46 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l33
  br label %bb14
bb14:
  %t57 = load i32, ptr %l33, !range !{i32 0, i32 33}
  %t59 = trunc i64 22 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t62, ptr %l36
  br label %bb17
bb16:
  br label %bb40
bb17:
  %t63 = load %"std/prelude/text:StringBuilder", ptr %l36
  store %"std/prelude/text:StringBuilder" %t63, ptr %l6
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l4, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l44
  br label %bb18
bb18:
  %t80 = load ptr, ptr %l39, !tbaa !29
  %t81 = load i32, ptr %l44, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t80, i32 %t81)
  store { i64, ptr } %t82, ptr %l45
  br label %bb19
bb19:
  %t83 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t83, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb22:
  br label %bb23
bb23:
  %t96 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t96, ptr %l52, !tbaa !27
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 %t97
  %t102 = load i32, ptr %t101, !tbaa !33
  store i32 %t102, ptr %l10, !tbaa !23
  %t105 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s2, ptr %l6)
  store i64 %t105, ptr %l56
  br label %bb24
bb24:
  %t106 = load i64, ptr %l56, !tbaa !24
  %t107 = icmp sgt i64 %t106, 0
  br i1 %t107, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s5, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb28
bb28:
  store ptr %l6, ptr %l59, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l10, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t110, i32 %t111)
  store { i64, ptr } %t114, ptr %l62
  br label %bb29
bb29:
  %t115 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load ptr, ptr %l59, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s4, ptr %t122, { i64, ptr } %t121)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb31
bb31:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l8, !tbaa !24
  br label %bb20
bb32:
  %t128 = ptrtoint ptr %s0 to i64
  store i64 %t128, ptr %l66, !tbaa !24
  %t129 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eanySpawned_2elocal_2e5
  br i1 %t129, label %bb33, label %bb34
bb33:
  %t131 = call ptr @__olang_region_make(ptr %s0)
  %t132 = ptrtoint ptr %t131 to i64
  store i64 %t132, ptr %l66, !tbaa !24
  br label %bb34
bb34:
  %t133 = load i64, ptr %l66
  %t134 = inttoptr i64 %t133 to ptr
  %t136 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %t134, ptr %l6)
  store { i64, ptr } %t136, ptr %l69
  br label %bb35
bb35:
  %t137 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eanySpawned_2elocal_2e5
  br i1 %t137, label %bb36, label %bb37
bb36:
  %t139 = load i64, ptr %l66
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = load { i64, ptr }, ptr %l69
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = call ptr @__olang_region_or(ptr %t142, ptr null)
  %t144 = icmp ne ptr %t143, null
  %t145 = select i1 %t144, ptr %t143, ptr null
  %t146 = icmp eq ptr %t145, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t146)
  br label %bb37
bb37:
  %t147 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t147, ptr %l71, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t148, ptr %l5, !tbaa !27
  %t149 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eanySpawned_2elocal_2e5
  br i1 %t149, label %bb38, label %bb39
bb38:
  %t151 = load { i64, ptr }, ptr %l71
  %t152 = extractvalue { i64, ptr } %t151, 1
  call void @__olang_region_release(ptr %t152)
  store { i64, ptr } zeroinitializer, ptr %l71
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l73, !tbaa !29
  %t154 = load ptr, ptr %l3, !tbaa !29
  %t156 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t154)
  store %"compiler/source:Span" %t156, ptr %l75
  br label %bb41
bb41:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l76, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t158, ptr %l77, !tbaa !27
  %t159 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr ptr, ptr %t160, i64 0
  %t162 = load ptr, ptr %t161, !tbaa !39
  %t164 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t162)
  store %"compiler/source:Span" %t164, ptr %l79
  br label %bb42
bb42:
  %t165 = getelementptr %"compiler/source:Span", ptr %l79, i32 0, i32 0
  %t166 = load i32, ptr %t165, !tbaa !23
  store i32 %t166, ptr %l80, !tbaa !23
  %t169 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %a2)
  store %"compiler/source:Span" %t169, ptr %l82
  br label %bb43
bb43:
  %t170 = getelementptr %"compiler/source:Span", ptr %l82, i32 0, i32 0
  %t171 = load i32, ptr %t170, !tbaa !23
  %t172 = load i32, ptr %l80, !tbaa !23
  %t174 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t172, i32 %t171)
  store %"compiler/source:Span" %t174, ptr %l84
  br label %bb44
bb44:
  %t175 = load ptr, ptr %l76, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l84
  %t177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t175, %"compiler/source:Span" %t176)
  store { i64, ptr } %t177, ptr %l85
  br label %bb45
bb45:
  %t178 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t178, ptr %l86, !tbaa !27
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l87, !tbaa !29
  %t180 = load ptr, ptr %l3, !tbaa !29
  %t182 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t180)
  store %"compiler/source:Span" %t182, ptr %l89
  br label %bb46
bb46:
  %t183 = load ptr, ptr %l87, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l89
  %t185 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184)
  store { i64, ptr } %t185, ptr %l90
  br label %bb47
bb47:
  %t186 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawnedResult(ptr %v0, ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t186, { i64, ptr } %t187, { i64, ptr } %t188)
  store %"compiler/diagmsg:Msg" %t189, ptr %l91
  br label %bb48
bb48:
  %t190 = load ptr, ptr %l73, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l75
  %t192 = load %"compiler/diagmsg:Msg", ptr %l91
  %t193 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t190, %"compiler/source:Span" %t191, %"compiler/diagmsg:Msg" %t192)
  store i64 %t193, ptr %l92
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargForInference(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, i64 %a4, ptr %a5, i1 %a6, ptr %a7, ptr %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"compiler/check:litv"
  %l10 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca %"compiler/check:litv"
  %l17 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l34 = alloca i32
  %l36 = alloca i32
  %l40 = alloca i32
  %l42 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i32
  %l50 = alloca i32
  %l52 = alloca i32
  %l55 = alloca ptr
  %l56 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l76 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l86 = alloca ptr
  %l88 = alloca ptr
  %l90 = alloca i32
  %l95 = alloca i32
  %l97 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store %"compiler/check:litv" %t6, ptr %l15
  br label %bb1
bb1:
  %t7 = load %"compiler/check:litv", ptr %l15
  store %"compiler/check:litv" %t7, ptr %l9
  %t8 = getelementptr %"compiler/check:litv", ptr %l9, i32 0, i32 0
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i1 %t15, ptr %l20
  br label %bb4
bb4:
  %t16 = load i1, ptr %l20, !tbaa !21
  store i1 %t16, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l17, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = getelementptr %"compiler/check:litv", ptr %l9, i32 0, i32 0
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb7:
  br label %bb29
bb8:
  %t21 = getelementptr %"compiler/check:litv", ptr %l9, i32 0, i32 1
  %t22 = load i1, ptr %t21, !tbaa !21
  store i1 %t22, ptr %l22, !tbaa !21
  br label %bb11
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t28 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %t24, ptr %t25)
  store i1 %t28, ptr %l26
  br label %bb10
bb10:
  %t29 = load i1, ptr %l26, !tbaa !21
  store i1 %t29, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l22, !tbaa !21
  store i1 %t30, ptr %l10, !tbaa !21
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t37 = icmp slt i64 %t31, %t34
  br i1 %t37, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l31, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t40, ptr %l32, !tbaa !27
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i32, ptr %t44, i64 %t41
  %t46 = load i32, ptr %t45, !tbaa !33
  store i32 %t46, ptr %l34, !tbaa !23
  %t47 = load i1, ptr %l10, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb13:
  br label %bb28
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t54, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t56, ptr %l40
  br label %bb16
bb15:
  %t57 = getelementptr %"compiler/check:litv", ptr %l9, i32 0, i32 0
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb16:
  %t60 = load i32, ptr %l40, !tbaa !23
  store i32 %t60, ptr %l36, !tbaa !23
  br label %bb26
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t65 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t61, ptr %t62)
  store i1 %t65, ptr %l45
  br label %bb19
bb18:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb20
bb19:
  %t66 = load i1, ptr %l45, !tbaa !21
  store i1 %t66, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  %t67 = load i1, ptr %l42, !tbaa !21
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t73, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t75, ptr %l50
  br label %bb23
bb22:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t76)
  store i32 %t78, ptr %l52
  br label %bb24
bb23:
  %t79 = load i32, ptr %l50, !tbaa !23
  store i32 %t79, ptr %l46, !tbaa !23
  br label %bb25
bb24:
  %t80 = load i32, ptr %l52, !tbaa !23
  store i32 %t80, ptr %l46, !tbaa !23
  br label %bb25
bb25:
  %t81 = load i32, ptr %l46, !tbaa !23
  store i32 %t81, ptr %l36, !tbaa !23
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t83 = load ptr, ptr %l31, !tbaa !29
  %t84 = load i32, ptr %l34, !tbaa !23
  %t85 = load i32, ptr %l36, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v3, ptr %t83, i32 %t84, i32 %t85, ptr %t82, i1 true, i1 false)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  store ptr null, ptr %rv
  br label %ret
bb29:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t89 = load ptr, ptr %l55, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb30, label %bb31
bb30:
  %t92 = load ptr, ptr %l55, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 28}
  %t95 = icmp eq i64 %t93, 20
  store i1 %t95, ptr %l56, !tbaa !21
  br label %bb31
bb31:
  %t96 = load i1, ptr %l56, !tbaa !21
  br i1 %t96, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t98 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v4, ptr %a7, i64 %t98)
  br label %bb35
bb35:
  br label %bb71
bb36:
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t102 = load ptr, ptr %l61, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb37, label %bb38
bb37:
  %t105 = load ptr, ptr %l61, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 28}
  %t108 = icmp eq i64 %t106, 17
  store i1 %t108, ptr %l62, !tbaa !21
  br label %bb38
bb38:
  %t109 = load i1, ptr %l62, !tbaa !21
  br i1 %t109, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t110 = load ptr, ptr %l8, !tbaa !29
  %t111 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t110, i64 %t111)
  br label %bb42
bb42:
  br label %bb71
bb43:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t115 = load ptr, ptr %l67, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb44, label %bb45
bb44:
  %t118 = load ptr, ptr %l67, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 28}
  %t121 = icmp eq i64 %t119, 18
  store i1 %t121, ptr %l68, !tbaa !21
  br label %bb45
bb45:
  %t122 = load i1, ptr %l68, !tbaa !21
  br i1 %t122, label %bb46, label %bb47
bb46:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr }, ptr %t125, i32 0, i32 1
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l11, !tbaa !29
  br label %bb48
bb47:
  br label %bb55
bb48:
  %t129 = load ptr, ptr %l11, !tbaa !29
  %t131 = getelementptr %"compiler/ast:Compr", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb49, label %bb50
bb49:
  %t136 = load ptr, ptr %l11, !tbaa !29
  %t138 = getelementptr %"compiler/ast:Compr", ptr %t136, i32 0, i32 6
  %t139 = load i1, ptr %t138, !tbaa !21
  %t141 = xor i1 %t139, true
  store i1 %t141, ptr %l76, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb51
bb51:
  %t143 = load i1, ptr %l76, !tbaa !21
  br i1 %t143, label %bb52, label %bb53
bb52:
  %t144 = load ptr, ptr %l8, !tbaa !29
  %t145 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v5, ptr %t144, i64 %t145)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb71
bb55:
  %t148 = load ptr, ptr %l1, !tbaa !29
  store ptr %t148, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t149 = load ptr, ptr %l82, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb56, label %bb57
bb56:
  %t152 = load ptr, ptr %l82, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 28}
  %t155 = icmp eq i64 %t153, 23
  store i1 %t155, ptr %l83, !tbaa !21
  br label %bb57
bb57:
  %t156 = load i1, ptr %l83, !tbaa !21
  br i1 %t156, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb71
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb70
bb64:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l86, !tbaa !29
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l88, !tbaa !29
  br i1 %a6, label %bb65, label %bb66
bb65:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t164 = load i64, ptr %l4, !tbaa !24
  %t165 = load ptr, ptr %l5, !tbaa !29
  %t170 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v2, ptr %v3, ptr %t162, { i64, ptr } %t163, i64 %t164, ptr %t165)
  store i32 %t170, ptr %l95
  br label %bb67
bb66:
  %t171 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t171, ptr %l90, !tbaa !23
  br label %bb68
bb67:
  %t173 = load i32, ptr %l95, !tbaa !23
  store i32 %t173, ptr %l90, !tbaa !23
  br label %bb68
bb68:
  %t174 = load ptr, ptr %l86, !tbaa !29
  %t175 = load ptr, ptr %l88, !tbaa !29
  %t176 = load i32, ptr %l90, !tbaa !23
  %t177 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v6, ptr %t174, ptr %t175, i32 %t176)
  store ptr %t177, ptr %l97
  br label %bb69
bb69:
  %t178 = load ptr, ptr %l97, !tbaa !29
  store ptr %t178, ptr %rv
  br label %ret
bb70:
  call void @__olang_check_failed(ptr @olang_loc_87c1d8a585c28397_c34e6ad64e27f403)
  unreachable
bb71:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca %"compiler/check:ownerAt"
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca %"compiler/check:ownerAt"
  %l22 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l34 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i32
  %l77 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca ptr
  %l89 = alloca ptr
  %l92 = alloca { i64, ptr }
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %l98 = alloca ptr
  %l106 = alloca ptr
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t123 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %t1, ptr %a3)
  store %"compiler/check:ownerAt" %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load %"compiler/check:ownerAt", ptr %l15
  store %"compiler/check:ownerAt" %t6, ptr %l5
  %t7 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t12 = icmp eq i32 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t15, i32 %t17)
  store i1 %t20, ptr %l22
  br label %bb5
bb5:
  %t21 = load i1, ptr %l22, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t25 = load i32, ptr %l4, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t22, i32 %t24, i32 %t25)
  store i1 %t29, ptr %l27
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t30 = load i1, ptr %l27, !tbaa !21
  store i1 %t30, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l23, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store ptr null, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load i32, ptr %l4, !tbaa !23
  %t40 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 1
  %t41 = load i1, ptr %t40, !tbaa !21
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t36, i32 %t38, i32 %t39, i1 %t41)
  store i64 %t46, ptr %l34
  br label %bb13
bb13:
  %t47 = load i64, ptr %l34, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp slt i64 %t48, 0
  br i1 %t50, label %bb14, label %bb15
bb14:
  store ptr null, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load %"compiler/source:Span", ptr %l2
  %t56 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %t53, i64 %t54, %"compiler/source:Span" %t55, i32 %t57)
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l43, !tbaa !29
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t66)
  store i64 %t68, ptr %l45
  br label %bb18
bb18:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t69, i64 %t70)
  store i64 %t71, ptr %l46
  br label %bb19
bb19:
  %t72 = load i64, ptr %l46, !tbaa !24
  store i64 %t72, ptr %l7, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = icmp eq i64 %t73, 0
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l49, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t78, ptr %l50
  %t79 = load i64, ptr %l6, !tbaa !24
  store i64 %t79, ptr %l51, !tbaa !24
  %t80 = icmp sge i64 0, 0
  br i1 %t80, label %bb22, label %bb23
bb21:
  br label %bb27
bb22:
  %t82 = icmp sle i64 0, 2305843009213693951
  br i1 %t82, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_82b0d2a61edf3c68_78216e4ccea776dc)
  unreachable
bb24:
  %t84 = mul i64 0, 4
  %t85 = insertvalue { i64, ptr } undef, i64 0, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t87 = load ptr, ptr %l49, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l50
  %t89 = load i64, ptr %l51, !tbaa !24
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v2, ptr %v2, ptr %t87, %"compiler/source:Span" %t88, i64 %t89, { i64, ptr } %t86)
  store ptr %t91, ptr %l55
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_82b0d2a61edf3c68_78216e4ccea776dc)
  unreachable
bb26:
  %t92 = load ptr, ptr %l55, !tbaa !29
  store ptr %t92, ptr %rv
  br label %ret
bb27:
  %t94 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 1
  %t95 = load i1, ptr %t94, !tbaa !21
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb28, label %bb29
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr %"compiler/check:ownerAt", ptr %l5, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v2, ptr %t102, i64 %t103, i32 %t105)
  store { i64, ptr } %t109, ptr %l64
  br label %bb30
bb29:
  %t110 = load i64, ptr %l7, !tbaa !24
  store i64 %t110, ptr %l65, !tbaa !24
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t111, ptr %l66, !tbaa !23
  %t112 = load i64, ptr %l65, !tbaa !24
  %t113 = icmp sge i64 %t112, 0
  br i1 %t113, label %bb31, label %bb32
bb30:
  %t115 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t115, ptr %l59, !tbaa !27
  br label %bb35
bb31:
  %t116 = load i64, ptr %l65, !tbaa !24
  %t117 = icmp sle i64 %t116, 2305843009213693951
  br i1 %t117, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e54de2b85f89ec55_546f3093ddc3c1a9)
  unreachable
bb33:
  %t119 = load i64, ptr %l65, !tbaa !24
  %t120 = mul i64 %t119, 4
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  %t122 = load i32, ptr %l66, !tbaa !23
  store i64 0, ptr %t123
  br label %fill.124
fill.124:
  %t127 = load i64, ptr %t123
  %t128 = icmp slt i64 %t127, %t119
  br i1 %t128, label %fillb.125, label %filld.126
fillb.125:
  %t129 = getelementptr i32, ptr %t121, i64 %t127
  store i32 %t122, ptr %t129
  %t130 = add i64 %t127, 1
  store i64 %t130, ptr %t123
  br label %fill.124
filld.126:
  %t131 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t121, 1
  store { i64, ptr } %t132, ptr %l59, !tbaa !27
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e54de2b85f89ec55_546f3093ddc3c1a9)
  unreachable
bb35:
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t134, ptr %lp8
  %t135 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t136 = load ptr, ptr %lp8
  store { i64, ptr } %t135, ptr %t136, !tbaa !27
  %t137 = load ptr, ptr %lp8
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l11, !tbaa !24
  br label %bb36
bb36:
  %t144 = load i64, ptr %l10, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t152 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t152, ptr %l77, !tbaa !27
  %t153 = load i64, ptr %l10, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t161 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t164 = icmp eq i32 %t158, %t161
  br i1 %t164, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l83, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t167, ptr %l84
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l85, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t173 = load i64, ptr %l6, !tbaa !24
  %t176 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s7, ptr %t172, i64 %t173)
  store ptr %t176, ptr %l89
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t177 = load ptr, ptr %l89, !tbaa !29
  %t179 = getelementptr %"compiler/ast:Func", ptr %t177, i32 0, i32 2
  %t180 = load i32, ptr %t179, !tbaa !23
  %t181 = load ptr, ptr %l85, !tbaa !29
  %t183 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s7, ptr %t181, i32 %t180)
  store { i64, ptr } %t183, ptr %l92
  br label %bb43
bb43:
  %t184 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  %t186 = extractvalue { i64, ptr } %t184, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t192 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNotValue(ptr %s7, ptr %v0, { i64, ptr } %t190)
  store %"compiler/diagmsg:Msg" %t192, ptr %l94
  br label %bb44
bb44:
  %t193 = load ptr, ptr %l83, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l84
  %t195 = load %"compiler/diagmsg:Msg", ptr %l94
  %t196 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t193, %"compiler/source:Span" %t194, %"compiler/diagmsg:Msg" %t195)
  store i64 %t196, ptr %l95
  br label %bb45
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t197, %"compiler/source:Span" %a1)
  store ptr %t201, ptr %l98
  br label %bb46
bb46:
  %t202 = load ptr, ptr %l98, !tbaa !29
  call void @__olang_scope_close(ptr %s7)
  store ptr %t202, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t204 = load i64, ptr %l10, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l10, !tbaa !24
  br label %bb36
bb49:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l2
  %t210 = load i64, ptr %l6, !tbaa !24
  %t211 = load ptr, ptr %lp8
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v2, ptr %v2, ptr %t208, %"compiler/source:Span" %t209, i64 %t210, { i64, ptr } %t212)
  store ptr %t217, ptr %l106
  br label %bb50
bb50:
  %t218 = load ptr, ptr %l106, !tbaa !29
  store ptr %t218, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecPointerArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i32
  %l26 = alloca i1
  %l33 = alloca i32
  %l36 = alloca i32
  %l39 = alloca i1
  %l42 = alloca i1
  %l49 = alloca i32
  %l52 = alloca i1
  %l55 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l72 = alloca i32
  %l75 = alloca i1
  %l78 = alloca i1
  %l83 = alloca i32
  %l84 = alloca i32
  %l88 = alloca i32
  %l90 = alloca i1
  %l91 = alloca i32
  %l95 = alloca i32
  %l102 = alloca i1
  %l103 = alloca i1
  %l104 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca i1
  %l109 = alloca i1
  %l114 = alloca i32
  %l121 = alloca i32
  %l124 = alloca ptr
  %l125 = alloca i32
  %l128 = alloca i32
  %l129 = alloca i1
  %l130 = alloca i1
  %l131 = alloca ptr
  %l134 = alloca i32
  %l135 = alloca i1
  %l140 = alloca ptr
  %l144 = alloca i1
  %l145 = alloca i1
  %l148 = alloca i1
  %l149 = alloca i1
  %l150 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca i1
  %l155 = alloca i1
  %l158 = alloca i1
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_7362f3ae74bf0a7_8f389ee36c95dce3)
  unreachable
bb11:
  %t10 = load i1, ptr %l12, !tbaa !21
  %t13 = xor i1 %t10, true
  br i1 %t13, label %bb12, label %bb13
bb12:
  store ptr null, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t16)
  store i32 %t19, ptr %l22
  br label %bb15
bb15:
  %t20 = load i32, ptr %l22, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load i32, ptr %l6, !tbaa !23
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t25 = icmp eq i32 %t21, %t22
  br i1 %t25, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb18
bb17:
  %t27 = load i32, ptr %l6, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t31 = icmp eq i32 %t27, %t28
  store i1 %t31, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t33 = load i1, ptr %l26, !tbaa !21
  br i1 %t33, label %bb19, label %bb20
bb19:
  store ptr null, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l33
  br label %bb22
bb22:
  %t40 = load i32, ptr %l33, !tbaa !23
  store i32 %t40, ptr %l7, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l7, !tbaa !23
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l36
  br label %bb23
bb23:
  %t46 = load i32, ptr %l36, !tbaa !23
  store i32 %t46, ptr %l8, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l39
  br label %bb24
bb24:
  %t52 = load i1, ptr %l39, !tbaa !21
  br i1 %t52, label %bb25, label %bb26
bb25:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l6, !tbaa !23
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l42
  br label %bb27
bb26:
  br label %bb40
bb27:
  %t58 = load i1, ptr %l42, !tbaa !21
  br i1 %t58, label %bb28, label %bb29
bb28:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l8, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l49
  br label %bb31
bb31:
  %t72 = load i32, ptr %l49, !range !{i32 0, i32 33}
  %t74 = trunc i64 19 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb35
bb33:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l7, !tbaa !23
  %t81 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t77, i32 %t78, i64 0)
  store i1 %t81, ptr %l55
  br label %bb34
bb34:
  %t82 = load i1, ptr %l55, !tbaa !21
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb35
bb35:
  %t83 = load i1, ptr %l52, !tbaa !21
  br i1 %t83, label %bb36, label %bb37
bb36:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t86 = load i32, ptr %l3, !tbaa !23
  %t87 = load %"compiler/source:Span", ptr %l4
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v2, ptr %v3, ptr %t84, ptr %t85, i32 %t86, %"compiler/source:Span" %t87)
  store ptr %t92, ptr %l60
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t93 = load ptr, ptr %l60, !tbaa !29
  store ptr %t93, ptr %rv
  br label %ret
bb39:
  store ptr null, ptr %rv
  br label %ret
bb40:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l63, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l66
  br label %bb41
bb41:
  %t102 = load ptr, ptr %l63, !tbaa !29
  %t103 = load i32, ptr %l66, !tbaa !23
  %t104 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t104, ptr %l67
  br label %bb42
bb42:
  %t105 = load i32, ptr %l67, !tbaa !23
  store i32 %t105, ptr %l9, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l9, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l72
  br label %bb43
bb43:
  %t116 = load i32, ptr %l72, !range !{i32 0, i32 33}
  %t118 = trunc i64 19 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb44, label %bb45
bb44:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l6, !tbaa !23
  %t125 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCStrRef(ptr %v0, ptr %t121, i32 %t122)
  store i1 %t125, ptr %l78
  br label %bb46
bb45:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb47
bb46:
  %t126 = load i1, ptr %l78, !tbaa !21
  store i1 %t126, ptr %l75, !tbaa !21
  br label %bb47
bb47:
  %t127 = load i1, ptr %l75, !tbaa !21
  br i1 %t127, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l9, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l83
  br label %bb50
bb49:
  br label %bb59
bb50:
  %t138 = load i32, ptr %l83, !tbaa !23
  store i32 %t138, ptr %l10, !tbaa !23
  %t139 = load i32, ptr %l10, !tbaa !23
  store i32 %t139, ptr %l84, !tbaa !23
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t145, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t147, ptr %l88
  br label %bb51
bb51:
  %t148 = load i32, ptr %l84, !tbaa !23
  %t149 = load i32, ptr %l88, !tbaa !23
  %t150 = icmp eq i32 %t148, %t149
  br i1 %t150, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb55
bb53:
  %t152 = load i32, ptr %l10, !tbaa !23
  store i32 %t152, ptr %l91, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  %t160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s8, ptr %t158, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i32 %t160, ptr %l95
  br label %bb54
bb54:
  %t161 = load i32, ptr %l91, !tbaa !23
  %t162 = load i32, ptr %l95, !tbaa !23
  %t163 = icmp eq i32 %t161, %t162
  store i1 %t163, ptr %l90, !tbaa !21
  br label %bb55
bb55:
  %t165 = load i1, ptr %l90, !tbaa !21
  br i1 %t165, label %bb56, label %bb57
bb56:
  %t166 = load ptr, ptr %l2, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  store ptr %t166, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s8)
  store ptr null, ptr %rv
  br label %ret
bb59:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l3, !tbaa !23
  %t174 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t170, i32 %t171)
  store i1 %t174, ptr %l102
  br label %bb60
bb60:
  %t175 = load i1, ptr %l102, !tbaa !21
  br i1 %t175, label %bb61, label %bb62
bb61:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l104, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l3, !tbaa !23
  %t181 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t181, ptr %l107
  br label %bb63
bb62:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb65
bb63:
  %t182 = load ptr, ptr %l104, !tbaa !29
  %t183 = load i32, ptr %l107, !tbaa !23
  %t184 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %t182, i32 %t183)
  store i1 %t184, ptr %l108
  br label %bb64
bb64:
  %t185 = load i1, ptr %l108, !tbaa !21
  store i1 %t185, ptr %l103, !tbaa !21
  br label %bb65
bb65:
  %t186 = load i1, ptr %l103, !tbaa !21
  br i1 %t186, label %bb66, label %bb67
bb66:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l8, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l114
  br label %bb68
bb67:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb69
bb68:
  %t197 = load i32, ptr %l114, !range !{i32 0, i32 33}
  %t199 = trunc i64 19 to i32
  %t200 = icmp eq i32 %t197, %t199
  store i1 %t200, ptr %l109, !tbaa !21
  br label %bb69
bb69:
  %t202 = load i1, ptr %l109, !tbaa !21
  br i1 %t202, label %bb70, label %bb71
bb70:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load i32, ptr %l8, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l121
  br label %bb72
bb71:
  br label %bb84
bb72:
  %t213 = load i32, ptr %l121, !tbaa !23
  store i32 %t213, ptr %l11, !tbaa !23
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  store ptr %t219, ptr %l124, !tbaa !29
  %t220 = load i32, ptr %l11, !tbaa !23
  store i32 %t220, ptr %l125, !tbaa !23
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i32, ptr %l3, !tbaa !23
  %t225 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t221, i32 %t222)
  store i32 %t225, ptr %l128
  br label %bb73
bb73:
  %t226 = load ptr, ptr %l124, !tbaa !29
  %t227 = load i32, ptr %l125, !tbaa !23
  %t228 = load i32, ptr %l128, !tbaa !23
  %t229 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t226, i32 %t227, i32 %t228)
  store i1 %t229, ptr %l129
  br label %bb74
bb74:
  %t230 = load i1, ptr %l129, !tbaa !21
  br i1 %t230, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb79
bb76:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l131, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l11, !tbaa !23
  %t236 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t232, i32 %t233)
  store i32 %t236, ptr %l134
  br label %bb77
bb77:
  %t237 = load ptr, ptr %l131, !tbaa !29
  %t238 = load i32, ptr %l134, !tbaa !23
  %t239 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %t237, i32 %t238)
  store i1 %t239, ptr %l135
  br label %bb78
bb78:
  %t240 = load i1, ptr %l135, !tbaa !21
  store i1 %t240, ptr %l130, !tbaa !21
  br label %bb79
bb79:
  %t241 = load i1, ptr %l130, !tbaa !21
  br i1 %t241, label %bb80, label %bb81
bb80:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l2, !tbaa !29
  %t244 = load i32, ptr %l3, !tbaa !23
  %t245 = load %"compiler/source:Span", ptr %l4
  %t250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v2, ptr %v3, ptr %t242, ptr %t243, i32 %t244, %"compiler/source:Span" %t245)
  store ptr %t250, ptr %l140
  br label %bb82
bb81:
  br label %bb83
bb82:
  %t251 = load ptr, ptr %l140, !tbaa !29
  store ptr %t251, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load i32, ptr %l3, !tbaa !23
  %t257 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t253, i32 %t254)
  store i1 %t257, ptr %l144
  br label %bb85
bb85:
  %t258 = load i1, ptr %l144, !tbaa !21
  br i1 %t258, label %bb86, label %bb87
bb86:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i32, ptr %l6, !tbaa !23
  %t263 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %t259, i32 %t260)
  store i1 %t263, ptr %l148
  br label %bb88
bb87:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb89
bb88:
  %t264 = load i1, ptr %l148, !tbaa !21
  store i1 %t264, ptr %l145, !tbaa !21
  br label %bb89
bb89:
  %t265 = load i1, ptr %l145, !tbaa !21
  br i1 %t265, label %bb90, label %bb91
bb90:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l150, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l3, !tbaa !23
  %t271 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t267, i32 %t268)
  store i32 %t271, ptr %l153
  br label %bb92
bb91:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb98
bb92:
  %t272 = load ptr, ptr %l150, !tbaa !29
  %t273 = load i32, ptr %l153, !tbaa !23
  %t274 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %t272, i32 %t273)
  store i1 %t274, ptr %l154
  br label %bb93
bb93:
  %t275 = load i1, ptr %l154, !tbaa !21
  br i1 %t275, label %bb94, label %bb95
bb94:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb97
bb95:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i32, ptr %l3, !tbaa !23
  %t280 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t276, i32 %t277)
  store i1 %t280, ptr %l158
  br label %bb96
bb96:
  %t281 = load i1, ptr %l158, !tbaa !21
  store i1 %t281, ptr %l155, !tbaa !21
  br label %bb97
bb97:
  %t282 = load i1, ptr %l155, !tbaa !21
  store i1 %t282, ptr %l149, !tbaa !21
  br label %bb98
bb98:
  %t283 = load i1, ptr %l149, !tbaa !21
  br i1 %t283, label %bb99, label %bb100
bb99:
  %t284 = load ptr, ptr %l2, !tbaa !29
  store ptr %t284, ptr %rv
  br label %ret
bb100:
  br label %bb101
bb101:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/generic:Origin"
  %l3 = alloca i32
  %l4 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 51
  %t7 = load %"compiler/generic:Origin", ptr %t6
  store %"compiler/generic:Origin" %t7, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 27
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 49
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %t19, i64 %a1)
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load %"compiler/generic:Origin", ptr %l2
  %t30 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 51
  store %"compiler/generic:Origin" %t27, ptr %t30
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 27
  store i32 %t32, ptr %t35, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l4, !tbaa !23
  %t40 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 49
  store i32 %t37, ptr %t40, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i64
  %l14 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Body", ptr %a1, i32 0, i32 1
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l2
  %t6 = load { i64, [2 x i64] }, ptr %l2
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t12 = getelementptr { i32, i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  %t15 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t16 = getelementptr { i32, i32 }, ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t19 = load i32, ptr %l4, !tbaa !23
  %t21 = icmp eq i32 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = sext i32 %t23 to i64
  store i64 %t25, ptr %l14, !tbaa !24
  br label %bb6
bb5:
  store i64 -1, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t27 = load i64, ptr %l14, !tbaa !24
  store i64 %t27, ptr %l7, !tbaa !24
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7351608f8313d577_54e294ea81fa84bb)
  unreachable
bb12:
  %t28 = load i64, ptr %l7, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataAsFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l21 = alloca i64
  %l25 = alloca %"compiler/source:Span"
  %l31 = alloca i32
  %l43 = alloca ptr
  %rv = alloca ptr
  %t54 = alloca { i64, [5 x i64] }, align 8
  %t74 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l5
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l6, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t24, i32 0, i32 3
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l7, !tbaa !29
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t32 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i64 %t32, ptr %l21
  br label %bb6
bb6:
  %t34 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp ne i64 %t34, %a4
  br i1 %t36, label %bb7, label %bb8
bb7:
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t39, ptr %l25
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l3, !tbaa !23
  %t47 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t45, i32 %t46, i64 %t47)
  store i32 %t51, ptr %l31
  br label %bb10
bb10:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l7, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 0
  store i64 1, ptr %t55
  %t56 = load %"compiler/source:Span", ptr %l25
  %t57 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t56, 0
  %t58 = load i32, ptr %l31, !tbaa !23
  %t59 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t57, i32 %t58, 1
  %t61 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t59, i64 %t52, 2
  %t63 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t61, ptr %t53, 3
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t63, ptr %t64
  %t65 = load { i64, [5 x i64] }, ptr %t54
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t65, ptr %t67
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l2
  %t71 = load %"compiler/source:Span", ptr %l2
  %t72 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 0
  store i64 2, ptr %t75
  %t77 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t71, 0
  %t79 = insertvalue { %"compiler/source:Span", i32, ptr } %t77, i32 %t72, 1
  %t81 = insertvalue { %"compiler/source:Span", i32, ptr } %t79, ptr %t67, 2
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t81, ptr %t82
  %t83 = load { i64, [4 x i64] }, ptr %t74
  %t85 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t83, ptr %t85
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t69, %"compiler/source:Span" %t70, ptr %t85)
  store ptr %t89, ptr %l43
  br label %bb11
bb11:
  %t90 = load ptr, ptr %l43, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store ptr null, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_3ca681ba130ec9b7_181dd48ce58d3c73)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaredCtor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
  %l48 = alloca i64
  %l51 = alloca ptr
  %l54 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i32
  %l61 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:TypeDecl", ptr %t13, i32 0, i32 1
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp sgt i64 %t18, 0
  store i1 %t20, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/ast:TypeDecl", ptr %t23, i32 0, i32 3
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 5}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr { i64, [6 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { ptr }, ptr %t39, i32 0, i32 0
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/ast:StructBody", ptr %t43, i32 0, i32 5
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb35
bb18:
  %t52 = load ptr, ptr %l3, !tbaa !29
  store ptr %t52, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb19, label %bb20
bb19:
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 5}
  %t59 = icmp eq i64 %t57, 3
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t60 = load i1, ptr %l31, !tbaa !21
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr { i64, [6 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { ptr, ptr }, ptr %t63, i32 0, i32 1
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb30
bb23:
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb26
bb25:
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Func", ptr %t71, i32 0, i32 5
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t78 = icmp sgt i64 %t76, 0
  store i1 %t78, ptr %l38, !tbaa !21
  br label %bb26
bb26:
  %t80 = load i1, ptr %l38, !tbaa !21
  br i1 %t80, label %bb27, label %bb28
bb27:
  br label %ret
bb28:
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
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_f558fce6a2b003e7_933c1b66dd113bdb)
  unreachable
bb35:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load i64, ptr %l1, !tbaa !24
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr %"compiler/ast:TypeDecl", ptr %t86, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t93 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t84, i64 %t85, i32 %t89)
  store i64 %t93, ptr %l48
  br label %bb36
bb36:
  %t94 = load i64, ptr %l48, !tbaa !24
  store i64 %t94, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp slt i64 %t95, 0
  br i1 %t97, label %bb37, label %bb38
bb37:
  br label %ret
bb38:
  br label %bb39
bb39:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l51, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  store ptr %t105, ptr %l54, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t111 = load i64, ptr %l6, !tbaa !24
  %t115 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t109, i64 %t110, i64 %t111)
  store i32 %t115, ptr %l59
  br label %bb40
bb40:
  %t116 = load ptr, ptr %l54, !tbaa !29
  %t117 = load i32, ptr %l59, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t116, i32 %t117, i32 0)
  store i32 %t118, ptr %l60
  br label %bb41
bb41:
  %t119 = load ptr, ptr %l51, !tbaa !29
  %t120 = load i32, ptr %l60, !tbaa !23
  %t121 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t119, i32 %t120)
  store i64 %t121, ptr %l61
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i1
  %l27 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l45 = alloca ptr
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb20
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l20, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  store ptr %t29, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t30 = load ptr, ptr %l23, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l23, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 28}
  %t36 = icmp eq i64 %t34, 24
  store i1 %t36, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l24, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 0
  %t42 = load %"compiler/source:Span", ptr %t41
  store %"compiler/source:Span" %t42, ptr %l6
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t46, i32 0, i32 1
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l7, !tbaa !23
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l27, !tbaa !29
  br label %bb12
bb11:
  %t58 = load ptr, ptr %l5, !tbaa !29
  store ptr %t58, ptr %l27, !tbaa !29
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l27, !tbaa !29
  store ptr %t60, ptr %l9, !tbaa !29
  %t61 = load ptr, ptr %l9, !tbaa !29
  store ptr %t61, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t62 = load ptr, ptr %l36, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l36, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 28}
  %t68 = icmp eq i64 %t66, 20
  store i1 %t68, ptr %l37, !tbaa !21
  br label %bb14
bb14:
  %t69 = load i1, ptr %l37, !tbaa !21
  %t70 = xor i1 %t69, true
  br i1 %t70, label %bb15, label %bb16
bb15:
  %t73 = load ptr, ptr %l9, !tbaa !29
  %t75 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %a0, ptr %t73, i32 %t75)
  store ptr %t79, ptr %l45
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t80 = load i64, ptr %l3, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l3, !tbaa !24
  br label %bb4
bb20:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropAxes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l24 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisValue(ptr %v0, ptr %v1, ptr %s2, ptr %t23, ptr %t21)
  store ptr %t27, ptr %l19
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb6
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb1
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t32, %"compiler/source:Span" %a1)
  store ptr %t36, ptr %l24
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l24, !tbaa !29
  store ptr %t37, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l26 = alloca i32
  %l30 = alloca %"compiler/typed:Block"
  %rv = alloca ptr
  %t59 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l3
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %t22, %"compiler/source:Span" %t23, ptr %t24)
  store ptr %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l16, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb19
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t31)
  store %"compiler/source:Span" %t33, ptr %l19
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l19
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t34, %"compiler/source:Span" %t35, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d6, i32 0, i32 1) })
  br label %bb12
bb12:
  store %"compiler/source:Span" %a1, ptr %l20
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t37)
  store ptr %t39, ptr %l22
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t42 = getelementptr %"compiler/check:frame", ptr %t40, i32 0, i32 7
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = trunc i64 %t43 to i32
  store i32 %t45, ptr %l26, !tbaa !23
  %t47 = icmp sge i64 0, 0
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t49 = icmp sle i64 0, 1152921504606846975
  br i1 %t49, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_823a266be2210958_13324b84b1c75d64)
  unreachable
bb16:
  %t51 = mul i64 0, 8
  %t52 = insertvalue { i64, ptr } undef, i64 0, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t54 = load i32, ptr %l26, !tbaa !23
  %t56 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t54, { i64, ptr } %t53)
  store %"compiler/typed:Block" %t56, ptr %l30
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_823a266be2210958_13324b84b1c75d64)
  unreachable
bb18:
  %t57 = load %"compiler/typed:Block", ptr %l30
  %t58 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t57, ptr %t58
  store { i64, [3 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [3 x i64] }, ptr %t59, i32 0, i32 0
  store i64 11, ptr %t60
  %t61 = load %"compiler/source:Span", ptr %l20
  %t62 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t61, 0
  %t64 = insertvalue { %"compiler/source:Span", ptr } %t62, ptr %t58, 1
  %t65 = getelementptr { i64, [3 x i64] }, ptr %t59, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t64, ptr %t65
  %t66 = load { i64, [3 x i64] }, ptr %t59
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t66, ptr %t68
  store ptr %t68, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1e005f55cee69fc6_5b8ec7c8c2bbfa8a)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca i32
  %l15 = alloca i32
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %lp34 = alloca ptr
  %lp35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca i32
  %l49 = alloca i32
  %l53 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i1
  %l69 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l83 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca i32
  %l92 = alloca i32
  %l95 = alloca ptr
  %l99 = alloca ptr
  %l105 = alloca ptr
  %l108 = alloca i32
  %l111 = alloca i32
  %l116 = alloca i32
  %l119 = alloca i1
  %l124 = alloca i32
  %l127 = alloca i1
  %l132 = alloca i32
  %l137 = alloca i32
  %l143 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca ptr
  %l152 = alloca i32
  %l154 = alloca ptr
  %l157 = alloca i32
  %l160 = alloca i32
  %l167 = alloca i32
  %l170 = alloca ptr
  %l171 = alloca ptr
  %l176 = alloca i32
  %l178 = alloca ptr
  %l181 = alloca i32
  %l184 = alloca i32
  %l191 = alloca i32
  %l194 = alloca i1
  %l199 = alloca i32
  %l202 = alloca i1
  %l207 = alloca i1
  %l212 = alloca i1
  %l218 = alloca i1
  %l219 = alloca ptr
  %l220 = alloca ptr
  %l225 = alloca i32
  %l228 = alloca ptr
  %l231 = alloca i32
  %l234 = alloca i32
  %l237 = alloca ptr
  %l238 = alloca ptr
  %l243 = alloca i32
  %l246 = alloca ptr
  %l249 = alloca i32
  %l252 = alloca i32
  %l260 = alloca i1
  %l265 = alloca i1
  %l266 = alloca ptr
  %l267 = alloca ptr
  %l270 = alloca i1
  %l271 = alloca i1
  %l274 = alloca i1
  %l275 = alloca i32
  %l281 = alloca i32
  %l285 = alloca ptr
  %l288 = alloca i32
  %l293 = alloca i1
  %l294 = alloca ptr
  %l295 = alloca ptr
  %l298 = alloca i1
  %l299 = alloca i1
  %l302 = alloca i1
  %l303 = alloca i32
  %l309 = alloca i32
  %l313 = alloca ptr
  %l316 = alloca i32
  %l322 = alloca i32
  %l325 = alloca i1
  %l330 = alloca i32
  %l333 = alloca i1
  %l336 = alloca ptr
  %l341 = alloca i32
  %l346 = alloca i32
  %l347 = alloca i1
  %l348 = alloca i1
  %l351 = alloca ptr
  %l354 = alloca i1
  %l355 = alloca i1
  %l358 = alloca ptr
  %l361 = alloca i1
  %l364 = alloca ptr
  %l367 = alloca ptr
  %l370 = alloca i32
  %l371 = alloca i32
  %l372 = alloca i32
  %l373 = alloca ptr
  %l374 = alloca ptr
  %l377 = alloca i1
  %l378 = alloca i1
  %l381 = alloca i1
  %l382 = alloca i32
  %l388 = alloca i32
  %l392 = alloca ptr
  %l393 = alloca ptr
  %l394 = alloca ptr
  %l397 = alloca i1
  %l398 = alloca i1
  %l401 = alloca i1
  %l402 = alloca i32
  %l408 = alloca i32
  %l412 = alloca ptr
  %l415 = alloca i32
  %l418 = alloca i32
  %l425 = alloca ptr
  %l426 = alloca %"compiler/source:Span"
  %l429 = alloca { i64, ptr }
  %l430 = alloca { i64, ptr }
  %l433 = alloca { i64, ptr }
  %l435 = alloca %"compiler/diagmsg:Msg"
  %l436 = alloca i64
  %l440 = alloca ptr
  %l443 = alloca i64
  %l449 = alloca ptr
  %l450 = alloca ptr
  %l454 = alloca %"compiler/source:Span"
  %l458 = alloca { i64, [3 x i64] }
  %l461 = alloca { i64, ptr }
  %l463 = alloca %"compiler/diagmsg:Msg"
  %l464 = alloca i64
  %l468 = alloca ptr
  %l471 = alloca i1
  %l474 = alloca i1
  %l475 = alloca i1
  %l478 = alloca i1
  %l479 = alloca i1
  %l484 = alloca i1
  %l485 = alloca i1
  %l490 = alloca i1
  %l493 = alloca i64
  %l499 = alloca i64
  %l514 = alloca i64
  %l524 = alloca ptr
  %l525 = alloca %"compiler/source:Span"
  %l526 = alloca i32
  %l527 = alloca i32
  %l531 = alloca ptr
  %l535 = alloca ptr
  %l537 = alloca ptr
  %l538 = alloca ptr
  %l539 = alloca %"compiler/source:Span"
  %l540 = alloca i32
  %l541 = alloca i32
  %l545 = alloca ptr
  %l549 = alloca ptr
  %l551 = alloca ptr
  %l552 = alloca ptr
  %l553 = alloca %"compiler/source:Span"
  %l554 = alloca i32
  %l555 = alloca i32
  %l559 = alloca ptr
  %l563 = alloca ptr
  %l565 = alloca ptr
  %l566 = alloca ptr
  %l567 = alloca %"compiler/source:Span"
  %l568 = alloca %"compiler/source:Span"
  %l573 = alloca i32
  %l579 = alloca ptr
  %l580 = alloca ptr
  %l581 = alloca %"compiler/source:Span"
  %l582 = alloca %"compiler/source:Span"
  %l587 = alloca i32
  %l593 = alloca ptr
  %l594 = alloca ptr
  %l595 = alloca %"compiler/source:Span"
  %l596 = alloca %"compiler/source:Span"
  %l597 = alloca i64
  %l599 = alloca ptr
  %l602 = alloca { i64, ptr }
  %l605 = alloca { i64, ptr }
  %l609 = alloca ptr
  %l610 = alloca %"compiler/source:Span"
  %l611 = alloca i32
  %l612 = alloca ptr
  %l616 = alloca ptr
  %l619 = alloca %"compiler/typed:Cond"
  %l622 = alloca %"compiler/source:Span"
  %l623 = alloca i32
  %l627 = alloca { i64, ptr }
  %l628 = alloca %"compiler/source:Span"
  %l629 = alloca i32
  %l634 = alloca %"compiler/typed:Cond"
  %l638 = alloca %"compiler/typed:Seq"
  %l643 = alloca ptr
  %l647 = alloca ptr
  %l651 = alloca ptr
  %l652 = alloca %"compiler/source:Span"
  %l653 = alloca %"compiler/source:Span"
  %l654 = alloca i64
  %l656 = alloca ptr
  %l659 = alloca { i64, ptr }
  %l661 = alloca ptr
  %l663 = alloca { i64, ptr }
  %l668 = alloca ptr
  %l671 = alloca ptr
  %l675 = alloca ptr
  %l679 = alloca i1
  %l680 = alloca i1
  %l683 = alloca i1
  %l684 = alloca i1
  %l687 = alloca i1
  %l688 = alloca i1
  %l691 = alloca i1
  %l692 = alloca i1
  %l697 = alloca i32
  %l704 = alloca ptr
  %l706 = alloca ptr
  %l709 = alloca ptr
  %l712 = alloca ptr
  %l716 = alloca ptr
  %l720 = alloca i1
  %l723 = alloca ptr
  %l724 = alloca ptr
  %l728 = alloca ptr
  %l736 = alloca ptr
  %l739 = alloca ptr
  %l743 = alloca ptr
  %l747 = alloca i1
  %l748 = alloca i1
  %l751 = alloca i1
  %l752 = alloca i32
  %l758 = alloca i32
  %l762 = alloca i1
  %l763 = alloca i1
  %l766 = alloca i1
  %l767 = alloca i1
  %l772 = alloca i1
  %l773 = alloca i1
  %l778 = alloca i1
  %l783 = alloca i32
  %l785 = alloca ptr
  %l789 = alloca ptr
  %l791 = alloca ptr
  %l795 = alloca ptr
  %l798 = alloca i64
  %l805 = alloca ptr
  %l806 = alloca %"compiler/source:Span"
  %l807 = alloca i32
  %l811 = alloca ptr
  %l815 = alloca { i64, ptr }
  %l816 = alloca ptr
  %l819 = alloca ptr
  %l823 = alloca ptr
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca ptr
  %t945 = alloca { i64, [1 x i64] }, align 8
  %t964 = alloca { i64, [3 x i64] }, align 8
  %t981 = alloca { i64, [1 x i64] }, align 8
  %t1000 = alloca { i64, [3 x i64] }, align 8
  %t1109 = alloca { i64, [4 x i64] }, align 8
  %t1143 = alloca { i64, [4 x i64] }, align 8
  %t1213 = alloca { i64, [5 x i64] }, align 8
  %t1247 = alloca { i64, [5 x i64] }, align 8
  %t1264 = alloca { i64, [5 x i64] }, align 8
  %t1630 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l46
  br label %bb1
bb1:
  %t5 = load i32, ptr %l46, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t6)
  store i32 %t9, ptr %l49
  br label %bb2
bb2:
  %t10 = load i32, ptr %l49, !tbaa !23
  store i32 %t10, ptr %l6, !tbaa !23
  %t11 = load i32, ptr %l5, !tbaa !23
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t15 = icmp eq i32 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i32, ptr %l6, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t21 = icmp eq i32 %t17, %t18
  store i1 %t21, ptr %l53, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l53, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t24 = load i32, ptr %l5, !tbaa !23
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t28 = icmp ne i32 %t24, %t25
  br i1 %t28, label %bb8, label %bb9
bb7:
  br label %bb29
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l60, !tbaa !29
  br label %bb10
bb9:
  %t32 = load ptr, ptr %l4, !tbaa !29
  store ptr %t32, ptr %l60, !tbaa !29
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l60, !tbaa !29
  store ptr %t34, ptr %l7, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l63, !tbaa !29
  %t36 = load ptr, ptr %l7, !tbaa !29
  store ptr %t36, ptr %l65, !tbaa !29
  %t38 = load ptr, ptr %l65, !tbaa !29
  %t39 = call ptr @__olang_scope_of(ptr %t38, ptr null)
  %t40 = ptrtoint ptr %t39 to i64
  %t42 = inttoptr i64 %t40 to ptr
  %t43 = load ptr, ptr %l65, !tbaa !29
  %t44 = call i32 @compiler_2fcheck_2etypeOf(ptr %t42, ptr %t43)
  store i32 %t44, ptr %l67
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l63, !tbaa !29
  %t46 = load i32, ptr %l67, !tbaa !23
  %t47 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t47, ptr %l68
  br label %bb12
bb12:
  %t48 = load i1, ptr %l68, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb17
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l72, !tbaa !29
  %t55 = load ptr, ptr %l7, !tbaa !29
  store ptr %t55, ptr %l74, !tbaa !29
  %t57 = load ptr, ptr %l74, !tbaa !29
  %t58 = call ptr @__olang_scope_of(ptr %t57, ptr null)
  %t59 = ptrtoint ptr %t58 to i64
  %t61 = inttoptr i64 %t59 to ptr
  %t62 = load ptr, ptr %l74, !tbaa !29
  %t63 = call i32 @compiler_2fcheck_2etypeOf(ptr %t61, ptr %t62)
  store i32 %t63, ptr %l76
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l72, !tbaa !29
  %t65 = load i32, ptr %l76, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t66, ptr %l77
  br label %bb16
bb16:
  %t67 = load i32, ptr %l77, !range !{i32 0, i32 33}
  %t69 = trunc i64 21 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l69, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l69, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l80, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t74, ptr %l81
  %t75 = load ptr, ptr %l7, !tbaa !29
  store ptr %t75, ptr %l83, !tbaa !29
  %t77 = load ptr, ptr %l83, !tbaa !29
  %t78 = call ptr @__olang_scope_of(ptr %t77, ptr null)
  %t79 = ptrtoint ptr %t78 to i64
  %t81 = inttoptr i64 %t79 to ptr
  %t82 = load ptr, ptr %l83, !tbaa !29
  %t83 = call i32 @compiler_2fcheck_2etypeOf(ptr %t81, ptr %t82)
  store i32 %t83, ptr %l85
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t84 = load ptr, ptr %l80, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l81
  %t86 = load i32, ptr %l85, !tbaa !23
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v3, ptr %t84, %"compiler/source:Span" %t85, i32 %t86)
  store ptr %t87, ptr %l86
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l86, !tbaa !29
  store ptr %t88, ptr %l8, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l87, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t90, ptr %l88
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t91, ptr %l89, !tbaa !23
  %t92 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t94 = trunc i64 93 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb22, label %bb23
bb22:
  store i32 19, ptr %l92
  br label %bb24
bb23:
  store i32 14, ptr %l92
  br label %bb24
bb24:
  %t99 = load ptr, ptr %l7, !tbaa !29
  store ptr %t99, ptr %l95, !tbaa !29
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = load ptr, ptr %l95, !tbaa !29
  %t103 = call ptr @__olang_scope_of(ptr %t102, ptr null)
  %t104 = ptrtoint ptr %t103 to i64
  %t106 = inttoptr i64 %t104 to ptr
  %t107 = load ptr, ptr %l87, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l88
  %t109 = load i32, ptr %l89, !tbaa !23
  %t110 = load i32, ptr %l92, !range !{i32 0, i32 51}
  %t111 = load ptr, ptr %l95, !tbaa !29
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t106, ptr %v3, ptr %v3, ptr %t107, %"compiler/source:Span" %t108, i32 %t109, i32 %t110, ptr %t111, ptr %t100)
  store ptr %t113, ptr %l99
  br label %bb25
bb25:
  %t114 = load ptr, ptr %l99, !tbaa !29
  store ptr %t114, ptr %rv
  br label %ret
bb26:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t115, %"compiler/source:Span" %t116, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb27
bb27:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l1
  %t121 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t119, %"compiler/source:Span" %t120, i32 %t121, i64 0)
  store ptr %t125, ptr %l105
  br label %bb28
bb28:
  %t126 = load ptr, ptr %l105, !tbaa !29
  store ptr %t126, ptr %rv
  br label %ret
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i32, ptr %l5, !tbaa !23
  %t131 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l108
  br label %bb30
bb30:
  %t132 = load i32, ptr %l108, !tbaa !23
  store i32 %t132, ptr %l9, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l6, !tbaa !23
  %t137 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l111
  br label %bb31
bb31:
  %t138 = load i32, ptr %l111, !tbaa !23
  store i32 %t138, ptr %l10, !tbaa !23
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l9, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l116
  br label %bb32
bb32:
  %t149 = load i32, ptr %l116, !range !{i32 0, i32 33}
  %t151 = trunc i64 21 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb33, label %bb34
bb33:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %l10, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t159, i32 %t160)
  store i32 %t163, ptr %l124
  br label %bb35
bb34:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb36
bb35:
  %t164 = load i32, ptr %l124, !range !{i32 0, i32 33}
  %t166 = trunc i64 21 to i32
  %t167 = icmp eq i32 %t164, %t166
  store i1 %t167, ptr %l119, !tbaa !21
  br label %bb36
bb36:
  %t169 = load i1, ptr %l119, !tbaa !21
  br i1 %t169, label %bb37, label %bb38
bb37:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/check:Checker", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/generic:Program", ptr %t173, i32 0, i32 2
  %t176 = load i32, ptr %l9, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t175, i32 %t176)
  store i32 %t179, ptr %l132
  br label %bb39
bb38:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb41
bb39:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l10, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l137
  br label %bb40
bb40:
  %t190 = load i32, ptr %l132, !tbaa !23
  %t191 = load i32, ptr %l137, !tbaa !23
  %t192 = icmp ne i32 %t190, %t191
  store i1 %t192, ptr %l127, !tbaa !21
  br label %bb41
bb41:
  %t194 = load i1, ptr %l127, !tbaa !21
  br i1 %t194, label %bb42, label %bb43
bb42:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t201 = load i32, ptr %l10, !tbaa !23
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t200, i32 %t201)
  store i32 %t204, ptr %l143
  br label %bb44
bb43:
  br label %bb60
bb44:
  %t205 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t206 = load i32, ptr %l143, !tbaa !23
  %t208 = icmp eq i32 %t206, %t205
  br i1 %t208, label %bb45, label %bb46
bb45:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l146, !tbaa !29
  %t211 = load ptr, ptr %l3, !tbaa !29
  store ptr %t211, ptr %l147, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l9, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l152
  br label %bb47
bb46:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load i32, ptr %l9, !tbaa !23
  %t231 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t227, i32 %t228)
  store i32 %t231, ptr %l167
  br label %bb51
bb47:
  %t232 = load %"compiler/source:Span", ptr %l1
  %t233 = load ptr, ptr %l146, !tbaa !29
  %t234 = load ptr, ptr %l147, !tbaa !29
  %t235 = load i32, ptr %l152, !tbaa !23
  %t237 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t233, ptr %t234, i32 %t235, %"compiler/source:Span" %t232)
  store ptr %t237, ptr %l154
  br label %bb48
bb48:
  %t238 = load ptr, ptr %l154, !tbaa !29
  store ptr %t238, ptr %l3, !tbaa !29
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t242 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t239)
  store i32 %t242, ptr %l157
  br label %bb49
bb49:
  %t243 = load i32, ptr %l157, !tbaa !23
  store i32 %t243, ptr %l11, !tbaa !23
  %t244 = load ptr, ptr %l3, !tbaa !29
  %t247 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t244)
  store i32 %t247, ptr %l160
  br label %bb50
bb50:
  %t248 = load i32, ptr %l160, !tbaa !23
  %t249 = load i32, ptr %l11, !tbaa !23
  store i32 %t249, ptr %l5, !tbaa !23
  store i32 %t248, ptr %l9, !tbaa !23
  br label %bb59
bb51:
  %t253 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t254 = load i32, ptr %l167, !tbaa !23
  %t256 = icmp eq i32 %t254, %t253
  br i1 %t256, label %bb52, label %bb53
bb52:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l170, !tbaa !29
  %t259 = load ptr, ptr %l4, !tbaa !29
  store ptr %t259, ptr %l171, !tbaa !29
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/check:Checker", ptr %t260, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = getelementptr %"compiler/generic:Program", ptr %t263, i32 0, i32 2
  %t266 = load i32, ptr %l10, !tbaa !23
  %t269 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %t265, i32 %t266)
  store i32 %t269, ptr %l176
  br label %bb54
bb53:
  br label %bb58
bb54:
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load ptr, ptr %l170, !tbaa !29
  %t272 = load ptr, ptr %l171, !tbaa !29
  %t273 = load i32, ptr %l176, !tbaa !23
  %t275 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t271, ptr %t272, i32 %t273, %"compiler/source:Span" %t270)
  store ptr %t275, ptr %l178
  br label %bb55
bb55:
  %t276 = load ptr, ptr %l178, !tbaa !29
  store ptr %t276, ptr %l4, !tbaa !29
  %t277 = load ptr, ptr %l4, !tbaa !29
  %t280 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t277)
  store i32 %t280, ptr %l181
  br label %bb56
bb56:
  %t281 = load i32, ptr %l181, !tbaa !23
  store i32 %t281, ptr %l13, !tbaa !23
  %t282 = load ptr, ptr %l4, !tbaa !29
  %t285 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t282)
  store i32 %t285, ptr %l184
  br label %bb57
bb57:
  %t286 = load i32, ptr %l184, !tbaa !23
  %t287 = load i32, ptr %l13, !tbaa !23
  store i32 %t287, ptr %l6, !tbaa !23
  store i32 %t286, ptr %l10, !tbaa !23
  br label %bb58
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 2
  %t297 = load i32, ptr %l9, !tbaa !23
  %t300 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t296, i32 %t297)
  store i32 %t300, ptr %l191
  br label %bb61
bb61:
  %t301 = load i32, ptr %l191, !range !{i32 0, i32 33}
  %t303 = trunc i64 21 to i32
  %t304 = icmp eq i32 %t301, %t303
  br i1 %t304, label %bb62, label %bb63
bb62:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/check:Checker", ptr %t306, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = getelementptr %"compiler/generic:Program", ptr %t309, i32 0, i32 2
  %t312 = load i32, ptr %l10, !tbaa !23
  %t315 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t311, i32 %t312)
  store i32 %t315, ptr %l199
  br label %bb64
bb63:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb65
bb64:
  %t316 = load i32, ptr %l199, !range !{i32 0, i32 33}
  %t318 = trunc i64 21 to i32
  %t319 = icmp eq i32 %t316, %t318
  store i1 %t319, ptr %l194, !tbaa !21
  br label %bb65
bb65:
  %t321 = load i1, ptr %l194, !tbaa !21
  br i1 %t321, label %bb66, label %bb67
bb66:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/check:Checker", ptr %t322, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = getelementptr %"compiler/generic:Program", ptr %t325, i32 0, i32 2
  %t328 = load i32, ptr %l9, !tbaa !23
  %t331 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t327, i32 %t328)
  store i1 %t331, ptr %l207
  br label %bb68
bb67:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb70
bb68:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/check:Checker", ptr %t332, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !29
  %t337 = getelementptr %"compiler/generic:Program", ptr %t335, i32 0, i32 2
  %t338 = load i32, ptr %l10, !tbaa !23
  %t341 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t337, i32 %t338)
  store i1 %t341, ptr %l212
  br label %bb69
bb69:
  %t342 = load i1, ptr %l207, !tbaa !21
  %t343 = load i1, ptr %l212, !tbaa !21
  %t344 = icmp ne i1 %t342, %t343
  store i1 %t344, ptr %l202, !tbaa !21
  br label %bb70
bb70:
  %t346 = load i1, ptr %l202, !tbaa !21
  br i1 %t346, label %bb71, label %bb72
bb71:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/check:Checker", ptr %t347, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !29
  %t352 = getelementptr %"compiler/generic:Program", ptr %t350, i32 0, i32 2
  %t353 = load i32, ptr %l10, !tbaa !23
  %t356 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t352, i32 %t353)
  store i1 %t356, ptr %l218
  br label %bb73
bb72:
  br label %bb85
bb73:
  %t357 = load i1, ptr %l218, !tbaa !21
  br i1 %t357, label %bb74, label %bb75
bb74:
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l219, !tbaa !29
  %t359 = load ptr, ptr %l3, !tbaa !29
  store ptr %t359, ptr %l220, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = getelementptr %"compiler/generic:Program", ptr %t363, i32 0, i32 2
  %t366 = load i32, ptr %l9, !tbaa !23
  %t369 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t365, i32 %t366)
  store i32 %t369, ptr %l225
  br label %bb76
bb75:
  %t370 = load ptr, ptr %l0, !tbaa !29
  store ptr %t370, ptr %l237, !tbaa !29
  %t371 = load ptr, ptr %l4, !tbaa !29
  store ptr %t371, ptr %l238, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/check:Checker", ptr %t372, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Program", ptr %t375, i32 0, i32 2
  %t378 = load i32, ptr %l10, !tbaa !23
  %t381 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t377, i32 %t378)
  store i32 %t381, ptr %l243
  br label %bb80
bb76:
  %t382 = load %"compiler/source:Span", ptr %l1
  %t383 = load ptr, ptr %l220, !tbaa !29
  %t384 = call ptr @__olang_scope_of(ptr %t383, ptr null)
  %t385 = ptrtoint ptr %t384 to i64
  %t387 = inttoptr i64 %t385 to ptr
  %t388 = load ptr, ptr %l219, !tbaa !29
  %t389 = load ptr, ptr %l220, !tbaa !29
  %t390 = load i32, ptr %l225, !tbaa !23
  %t392 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t387, ptr %v0, ptr %t388, ptr %t389, i32 %t390, %"compiler/source:Span" %t382)
  store ptr %t392, ptr %l228
  br label %bb77
bb77:
  %t393 = load ptr, ptr %l228, !tbaa !29
  store ptr %t393, ptr %l3, !tbaa !29
  %t394 = load ptr, ptr %l3, !tbaa !29
  %t397 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t394)
  store i32 %t397, ptr %l231
  br label %bb78
bb78:
  %t398 = load i32, ptr %l231, !tbaa !23
  store i32 %t398, ptr %l15, !tbaa !23
  %t399 = load ptr, ptr %l3, !tbaa !29
  %t402 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t399)
  store i32 %t402, ptr %l234
  br label %bb79
bb79:
  %t403 = load i32, ptr %l234, !tbaa !23
  %t404 = load i32, ptr %l15, !tbaa !23
  store i32 %t404, ptr %l5, !tbaa !23
  store i32 %t403, ptr %l9, !tbaa !23
  br label %bb84
bb80:
  %t408 = load %"compiler/source:Span", ptr %l1
  %t409 = load ptr, ptr %l238, !tbaa !29
  %t410 = call ptr @__olang_scope_of(ptr %t409, ptr null)
  %t411 = ptrtoint ptr %t410 to i64
  %t413 = inttoptr i64 %t411 to ptr
  %t414 = load ptr, ptr %l237, !tbaa !29
  %t415 = load ptr, ptr %l238, !tbaa !29
  %t416 = load i32, ptr %l243, !tbaa !23
  %t418 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t413, ptr %v0, ptr %t414, ptr %t415, i32 %t416, %"compiler/source:Span" %t408)
  store ptr %t418, ptr %l246
  br label %bb81
bb81:
  %t419 = load ptr, ptr %l246, !tbaa !29
  store ptr %t419, ptr %l4, !tbaa !29
  %t420 = load ptr, ptr %l4, !tbaa !29
  %t423 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t420)
  store i32 %t423, ptr %l249
  br label %bb82
bb82:
  %t424 = load i32, ptr %l249, !tbaa !23
  store i32 %t424, ptr %l17, !tbaa !23
  %t425 = load ptr, ptr %l4, !tbaa !29
  %t428 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t425)
  store i32 %t428, ptr %l252
  br label %bb83
bb83:
  %t429 = load i32, ptr %l252, !tbaa !23
  %t430 = load i32, ptr %l17, !tbaa !23
  store i32 %t430, ptr %l6, !tbaa !23
  store i32 %t429, ptr %l10, !tbaa !23
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/check:Checker", ptr %t434, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !29
  %t439 = getelementptr %"compiler/generic:Program", ptr %t437, i32 0, i32 2
  %t440 = load i32, ptr %l9, !tbaa !23
  %t441 = load i32, ptr %l10, !tbaa !23
  %t445 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t439, i32 %t440, i32 %t441)
  store i1 %t445, ptr %l260
  br label %bb86
bb86:
  %t446 = load i1, ptr %l260, !tbaa !21
  %t447 = xor i1 %t446, true
  br i1 %t447, label %bb87, label %bb88
bb87:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load i32, ptr %l9, !tbaa !23
  %t451 = load i32, ptr %l10, !tbaa !23
  %t455 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t449, i32 %t450, i32 %t451)
  store i1 %t455, ptr %l265
  br label %bb89
bb88:
  br label %bb171
bb89:
  %t456 = load i1, ptr %l265, !tbaa !21
  br i1 %t456, label %bb90, label %bb91
bb90:
  %t457 = load ptr, ptr %l0, !tbaa !29
  store ptr %t457, ptr %l266, !tbaa !29
  %t458 = load ptr, ptr %l3, !tbaa !29
  store ptr %t458, ptr %l267, !tbaa !29
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load i32, ptr %l5, !tbaa !23
  %t463 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t459, i32 %t460)
  store i1 %t463, ptr %l270
  br label %bb92
bb91:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load i32, ptr %l10, !tbaa !23
  %t466 = load i32, ptr %l9, !tbaa !23
  %t470 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t464, i32 %t465, i32 %t466)
  store i1 %t470, ptr %l293
  br label %bb103
bb92:
  %t471 = load i1, ptr %l270, !tbaa !21
  br i1 %t471, label %bb93, label %bb94
bb93:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load i32, ptr %l6, !tbaa !23
  %t476 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t472, i32 %t473)
  store i1 %t476, ptr %l274
  br label %bb95
bb94:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb96
bb95:
  %t477 = load i1, ptr %l274, !tbaa !21
  store i1 %t477, ptr %l271, !tbaa !21
  br label %bb96
bb96:
  %t478 = load i1, ptr %l271, !tbaa !21
  br i1 %t478, label %bb97, label %bb98
bb97:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/check:Checker", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t484 = getelementptr %"compiler/generic:Program", ptr %t482, i32 0, i32 2
  %t485 = load i32, ptr %l10, !tbaa !23
  %t486 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t490 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t484, i32 %t485, i64 %t486)
  store i32 %t490, ptr %l281
  br label %bb99
bb98:
  %t491 = load i32, ptr %l10, !tbaa !23
  store i32 %t491, ptr %l275, !tbaa !23
  br label %bb100
bb99:
  %t493 = load i32, ptr %l281, !tbaa !23
  store i32 %t493, ptr %l275, !tbaa !23
  br label %bb100
bb100:
  %t494 = load %"compiler/source:Span", ptr %l1
  %t495 = load ptr, ptr %l267, !tbaa !29
  %t496 = call ptr @__olang_scope_of(ptr %t495, ptr null)
  %t497 = ptrtoint ptr %t496 to i64
  %t499 = inttoptr i64 %t497 to ptr
  %t500 = load ptr, ptr %l266, !tbaa !29
  %t501 = load ptr, ptr %l267, !tbaa !29
  %t502 = load i32, ptr %l275, !tbaa !23
  %t504 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t499, ptr %v0, ptr %t500, ptr %t501, i32 %t502, %"compiler/source:Span" %t494)
  store ptr %t504, ptr %l285
  br label %bb101
bb101:
  %t505 = load ptr, ptr %l285, !tbaa !29
  store ptr %t505, ptr %l3, !tbaa !29
  %t506 = load ptr, ptr %l3, !tbaa !29
  %t509 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t506)
  store i32 %t509, ptr %l288
  br label %bb102
bb102:
  %t510 = load i32, ptr %l288, !tbaa !23
  store i32 %t510, ptr %l5, !tbaa !23
  %t511 = load i32, ptr %l10, !tbaa !23
  store i32 %t511, ptr %l9, !tbaa !23
  br label %bb170
bb103:
  %t513 = load i1, ptr %l293, !tbaa !21
  br i1 %t513, label %bb104, label %bb105
bb104:
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l294, !tbaa !29
  %t515 = load ptr, ptr %l4, !tbaa !29
  store ptr %t515, ptr %l295, !tbaa !29
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load i32, ptr %l5, !tbaa !23
  %t520 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t516, i32 %t517)
  store i1 %t520, ptr %l298
  br label %bb106
bb105:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/check:Checker", ptr %t521, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !29
  %t526 = getelementptr %"compiler/generic:Program", ptr %t524, i32 0, i32 2
  %t527 = load i32, ptr %l9, !tbaa !23
  %t530 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t526, i32 %t527)
  store i32 %t530, ptr %l322
  br label %bb117
bb106:
  %t531 = load i1, ptr %l298, !tbaa !21
  br i1 %t531, label %bb107, label %bb108
bb107:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i32, ptr %l6, !tbaa !23
  %t536 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t532, i32 %t533)
  store i1 %t536, ptr %l302
  br label %bb109
bb108:
  store i1 false, ptr %l299, !tbaa !21
  br label %bb110
bb109:
  %t537 = load i1, ptr %l302, !tbaa !21
  store i1 %t537, ptr %l299, !tbaa !21
  br label %bb110
bb110:
  %t538 = load i1, ptr %l299, !tbaa !21
  br i1 %t538, label %bb111, label %bb112
bb111:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"compiler/check:Checker", ptr %t539, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !29
  %t544 = getelementptr %"compiler/generic:Program", ptr %t542, i32 0, i32 2
  %t545 = load i32, ptr %l9, !tbaa !23
  %t546 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t550 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t544, i32 %t545, i64 %t546)
  store i32 %t550, ptr %l309
  br label %bb113
bb112:
  %t551 = load i32, ptr %l9, !tbaa !23
  store i32 %t551, ptr %l303, !tbaa !23
  br label %bb114
bb113:
  %t553 = load i32, ptr %l309, !tbaa !23
  store i32 %t553, ptr %l303, !tbaa !23
  br label %bb114
bb114:
  %t554 = load %"compiler/source:Span", ptr %l1
  %t555 = load ptr, ptr %l295, !tbaa !29
  %t556 = call ptr @__olang_scope_of(ptr %t555, ptr null)
  %t557 = ptrtoint ptr %t556 to i64
  %t559 = inttoptr i64 %t557 to ptr
  %t560 = load ptr, ptr %l294, !tbaa !29
  %t561 = load ptr, ptr %l295, !tbaa !29
  %t562 = load i32, ptr %l303, !tbaa !23
  %t564 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t559, ptr %v0, ptr %t560, ptr %t561, i32 %t562, %"compiler/source:Span" %t554)
  store ptr %t564, ptr %l313
  br label %bb115
bb115:
  %t565 = load ptr, ptr %l313, !tbaa !29
  store ptr %t565, ptr %l4, !tbaa !29
  %t566 = load ptr, ptr %l4, !tbaa !29
  %t569 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t566)
  store i32 %t569, ptr %l316
  br label %bb116
bb116:
  %t570 = load i32, ptr %l316, !tbaa !23
  store i32 %t570, ptr %l6, !tbaa !23
  %t571 = load i32, ptr %l9, !tbaa !23
  store i32 %t571, ptr %l10, !tbaa !23
  br label %bb169
bb117:
  %t573 = load i32, ptr %l322, !range !{i32 0, i32 33}
  %t575 = trunc i64 19 to i32
  %t576 = icmp eq i32 %t573, %t575
  br i1 %t576, label %bb118, label %bb119
bb118:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/check:Checker", ptr %t578, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t583 = getelementptr %"compiler/generic:Program", ptr %t581, i32 0, i32 2
  %t584 = load i32, ptr %l10, !tbaa !23
  %t587 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t583, i32 %t584)
  store i32 %t587, ptr %l330
  br label %bb120
bb119:
  store i1 false, ptr %l325, !tbaa !21
  br label %bb121
bb120:
  %t588 = load i32, ptr %l330, !range !{i32 0, i32 33}
  %t590 = trunc i64 19 to i32
  %t591 = icmp eq i32 %t588, %t590
  store i1 %t591, ptr %l325, !tbaa !21
  br label %bb121
bb121:
  %t593 = load i1, ptr %l325, !tbaa !21
  br i1 %t593, label %bb122, label %bb123
bb122:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = getelementptr %"compiler/check:Checker", ptr %t594, i32 0, i32 1
  %t597 = load ptr, ptr %t596, !tbaa !29
  %t599 = getelementptr %"compiler/generic:Program", ptr %t597, i32 0, i32 2
  store ptr %t599, ptr %l336, !tbaa !29
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t602 = getelementptr %"compiler/check:Checker", ptr %t600, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !29
  %t605 = getelementptr %"compiler/generic:Program", ptr %t603, i32 0, i32 2
  %t606 = load i32, ptr %l9, !tbaa !23
  %t609 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t605, i32 %t606)
  store i32 %t609, ptr %l341
  br label %bb124
bb123:
  store i1 false, ptr %l333, !tbaa !21
  br label %bb127
bb124:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr %"compiler/check:Checker", ptr %t610, i32 0, i32 1
  %t613 = load ptr, ptr %t612, !tbaa !29
  %t615 = getelementptr %"compiler/generic:Program", ptr %t613, i32 0, i32 2
  %t616 = load i32, ptr %l10, !tbaa !23
  %t619 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t615, i32 %t616)
  store i32 %t619, ptr %l346
  br label %bb125
bb125:
  %t620 = load ptr, ptr %l336, !tbaa !29
  %t621 = load i32, ptr %l341, !tbaa !23
  %t622 = load i32, ptr %l346, !tbaa !23
  %t623 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t620, i32 %t621, i32 %t622)
  store i1 %t623, ptr %l347
  br label %bb126
bb126:
  %t624 = load i1, ptr %l347, !tbaa !21
  store i1 %t624, ptr %l333, !tbaa !21
  br label %bb127
bb127:
  %t625 = load i1, ptr %l333, !tbaa !21
  br i1 %t625, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l348, !tbaa !21
  br label %bb131
bb129:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t627 = load i32, ptr %l9, !tbaa !23
  %t628 = load ptr, ptr %l4, !tbaa !29
  store ptr %t628, ptr %l351, !tbaa !29
  %t629 = load i32, ptr %l10, !tbaa !23
  %t630 = load ptr, ptr %l351, !tbaa !29
  %t631 = call ptr @__olang_scope_of(ptr %t630, ptr null)
  %t632 = ptrtoint ptr %t631 to i64
  %t634 = inttoptr i64 %t632 to ptr
  %t637 = load ptr, ptr %l351, !tbaa !29
  %t639 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %t634, ptr %t626, i32 %t627, ptr %t637, i32 %t629)
  store i1 %t639, ptr %l354
  br label %bb130
bb130:
  %t640 = load i1, ptr %l354, !tbaa !21
  store i1 %t640, ptr %l348, !tbaa !21
  br label %bb131
bb131:
  %t641 = load i1, ptr %l348, !tbaa !21
  br i1 %t641, label %bb132, label %bb133
bb132:
  store i1 true, ptr %l355, !tbaa !21
  br label %bb135
bb133:
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t643 = load i32, ptr %l10, !tbaa !23
  %t644 = load ptr, ptr %l3, !tbaa !29
  store ptr %t644, ptr %l358, !tbaa !29
  %t645 = load i32, ptr %l9, !tbaa !23
  %t646 = load ptr, ptr %l358, !tbaa !29
  %t647 = call ptr @__olang_scope_of(ptr %t646, ptr null)
  %t648 = ptrtoint ptr %t647 to i64
  %t650 = inttoptr i64 %t648 to ptr
  %t653 = load ptr, ptr %l358, !tbaa !29
  %t655 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %t650, ptr %t642, i32 %t643, ptr %t653, i32 %t645)
  store i1 %t655, ptr %l361
  br label %bb134
bb134:
  %t656 = load i1, ptr %l361, !tbaa !21
  store i1 %t656, ptr %l355, !tbaa !21
  br label %bb135
bb135:
  %t657 = load i1, ptr %l355, !tbaa !21
  br i1 %t657, label %bb136, label %bb137
bb136:
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr %"compiler/check:Checker", ptr %t658, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !29
  %t663 = getelementptr %"compiler/generic:Program", ptr %t661, i32 0, i32 2
  store ptr %t663, ptr %l364, !tbaa !29
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t666 = getelementptr %"compiler/check:Checker", ptr %t664, i32 0, i32 1
  %t667 = load ptr, ptr %t666, !tbaa !29
  %t669 = getelementptr %"compiler/generic:Program", ptr %t667, i32 0, i32 2
  store ptr %t669, ptr %l367, !tbaa !29
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load i32, ptr %l9, !tbaa !23
  %t674 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t670, i32 %t671)
  store i32 %t674, ptr %l370
  br label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s16
  %t675 = load ptr, ptr %l0, !tbaa !29
  store ptr %t675, ptr %l425, !tbaa !29
  %t676 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t676, ptr %l426
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = load i32, ptr %l9, !tbaa !23
  %t681 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s16, ptr %t677, i32 %t678)
  store { i64, ptr } %t681, ptr %l429
  br label %bb163
bb138:
  %t682 = load ptr, ptr %l367, !tbaa !29
  %t683 = load i32, ptr %l370, !tbaa !23
  %t684 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t682, i32 %t683)
  store i32 %t684, ptr %l371
  br label %bb139
bb139:
  %t685 = load ptr, ptr %l364, !tbaa !29
  %t686 = load i32, ptr %l371, !tbaa !23
  %t687 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t685, i32 %t686, i32 0)
  store i32 %t687, ptr %l372
  br label %bb140
bb140:
  %t688 = load i32, ptr %l372, !tbaa !23
  store i32 %t688, ptr %l19, !tbaa !23
  %t689 = load ptr, ptr %l0, !tbaa !29
  store ptr %t689, ptr %l373, !tbaa !29
  %t690 = load ptr, ptr %l3, !tbaa !29
  store ptr %t690, ptr %l374, !tbaa !29
  %t691 = load ptr, ptr %l0, !tbaa !29
  %t692 = load i32, ptr %l5, !tbaa !23
  %t695 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t691, i32 %t692)
  store i1 %t695, ptr %l377
  br label %bb141
bb141:
  %t696 = load i1, ptr %l377, !tbaa !21
  br i1 %t696, label %bb142, label %bb143
bb142:
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t698 = load i32, ptr %l6, !tbaa !23
  %t701 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t697, i32 %t698)
  store i1 %t701, ptr %l381
  br label %bb144
bb143:
  store i1 false, ptr %l378, !tbaa !21
  br label %bb145
bb144:
  %t702 = load i1, ptr %l381, !tbaa !21
  store i1 %t702, ptr %l378, !tbaa !21
  br label %bb145
bb145:
  %t703 = load i1, ptr %l378, !tbaa !21
  br i1 %t703, label %bb146, label %bb147
bb146:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/check:Checker", ptr %t704, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !29
  %t709 = getelementptr %"compiler/generic:Program", ptr %t707, i32 0, i32 2
  %t710 = load i32, ptr %l19, !tbaa !23
  %t711 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t715 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t709, i32 %t710, i64 %t711)
  store i32 %t715, ptr %l388
  br label %bb148
bb147:
  %t716 = load i32, ptr %l19, !tbaa !23
  store i32 %t716, ptr %l382, !tbaa !23
  br label %bb149
bb148:
  %t718 = load i32, ptr %l388, !tbaa !23
  store i32 %t718, ptr %l382, !tbaa !23
  br label %bb149
bb149:
  %t719 = load %"compiler/source:Span", ptr %l1
  %t720 = load ptr, ptr %l374, !tbaa !29
  %t721 = call ptr @__olang_scope_of(ptr %t720, ptr null)
  %t722 = ptrtoint ptr %t721 to i64
  %t724 = inttoptr i64 %t722 to ptr
  %t725 = load ptr, ptr %l373, !tbaa !29
  %t726 = load ptr, ptr %l374, !tbaa !29
  %t727 = load i32, ptr %l382, !tbaa !23
  %t729 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t724, ptr %v0, ptr %t725, ptr %t726, i32 %t727, %"compiler/source:Span" %t719)
  store ptr %t729, ptr %l392
  br label %bb150
bb150:
  %t730 = load ptr, ptr %l392, !tbaa !29
  store ptr %t730, ptr %l3, !tbaa !29
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l393, !tbaa !29
  %t732 = load ptr, ptr %l4, !tbaa !29
  store ptr %t732, ptr %l394, !tbaa !29
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t734 = load i32, ptr %l5, !tbaa !23
  %t737 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t733, i32 %t734)
  store i1 %t737, ptr %l397
  br label %bb151
bb151:
  %t738 = load i1, ptr %l397, !tbaa !21
  br i1 %t738, label %bb152, label %bb153
bb152:
  %t739 = load ptr, ptr %l0, !tbaa !29
  %t740 = load i32, ptr %l6, !tbaa !23
  %t743 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t739, i32 %t740)
  store i1 %t743, ptr %l401
  br label %bb154
bb153:
  store i1 false, ptr %l398, !tbaa !21
  br label %bb155
bb154:
  %t744 = load i1, ptr %l401, !tbaa !21
  store i1 %t744, ptr %l398, !tbaa !21
  br label %bb155
bb155:
  %t745 = load i1, ptr %l398, !tbaa !21
  br i1 %t745, label %bb156, label %bb157
bb156:
  %t746 = load ptr, ptr %l0, !tbaa !29
  %t748 = getelementptr %"compiler/check:Checker", ptr %t746, i32 0, i32 1
  %t749 = load ptr, ptr %t748, !tbaa !29
  %t751 = getelementptr %"compiler/generic:Program", ptr %t749, i32 0, i32 2
  %t752 = load i32, ptr %l19, !tbaa !23
  %t753 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t757 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t751, i32 %t752, i64 %t753)
  store i32 %t757, ptr %l408
  br label %bb158
bb157:
  %t758 = load i32, ptr %l19, !tbaa !23
  store i32 %t758, ptr %l402, !tbaa !23
  br label %bb159
bb158:
  %t760 = load i32, ptr %l408, !tbaa !23
  store i32 %t760, ptr %l402, !tbaa !23
  br label %bb159
bb159:
  %t761 = load %"compiler/source:Span", ptr %l1
  %t762 = load ptr, ptr %l394, !tbaa !29
  %t763 = call ptr @__olang_scope_of(ptr %t762, ptr null)
  %t764 = ptrtoint ptr %t763 to i64
  %t766 = inttoptr i64 %t764 to ptr
  %t767 = load ptr, ptr %l393, !tbaa !29
  %t768 = load ptr, ptr %l394, !tbaa !29
  %t769 = load i32, ptr %l402, !tbaa !23
  %t771 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t766, ptr %v0, ptr %t767, ptr %t768, i32 %t769, %"compiler/source:Span" %t761)
  store ptr %t771, ptr %l412
  br label %bb160
bb160:
  %t772 = load ptr, ptr %l412, !tbaa !29
  store ptr %t772, ptr %l4, !tbaa !29
  %t773 = load ptr, ptr %l3, !tbaa !29
  %t776 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t773)
  store i32 %t776, ptr %l415
  br label %bb161
bb161:
  %t777 = load i32, ptr %l415, !tbaa !23
  store i32 %t777, ptr %l20, !tbaa !23
  %t778 = load ptr, ptr %l4, !tbaa !29
  %t781 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t778)
  store i32 %t781, ptr %l418
  br label %bb162
bb162:
  %t782 = load i32, ptr %l418, !tbaa !23
  %t783 = load i32, ptr %l20, !tbaa !23
  store i32 %t783, ptr %l5, !tbaa !23
  store i32 %t782, ptr %l6, !tbaa !23
  %t787 = load i32, ptr %l19, !tbaa !23
  %t789 = load i32, ptr %l19, !tbaa !23
  store i32 %t787, ptr %l9, !tbaa !23
  store i32 %t789, ptr %l10, !tbaa !23
  br label %bb168
bb163:
  %t795 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t796 = extractvalue { i64, ptr } %t795, 0
  %t797 = extractvalue { i64, ptr } %t795, 1
  %t798 = mul i64 %t796, 1
  %t799 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t798)
  call void @llvm.memcpy.p0.p0.i64(ptr %t799, ptr %t797, i64 %t798, i1 false)
  %t800 = insertvalue { i64, ptr } undef, i64 %t796, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t799, 1
  store { i64, ptr } %t801, ptr %l430, !tbaa !27
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t803 = load i32, ptr %l10, !tbaa !23
  %t806 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s16, ptr %t802, i32 %t803)
  store { i64, ptr } %t806, ptr %l433
  br label %bb164
bb164:
  %t807 = load { i64, ptr }, ptr %l433, !tbaa !27
  %t808 = extractvalue { i64, ptr } %t807, 0
  %t809 = extractvalue { i64, ptr } %t807, 1
  %t810 = mul i64 %t808, 1
  %t811 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t810)
  call void @llvm.memcpy.p0.p0.i64(ptr %t811, ptr %t809, i64 %t810, i1 false)
  %t812 = insertvalue { i64, ptr } undef, i64 %t808, 0
  %t813 = insertvalue { i64, ptr } %t812, ptr %t811, 1
  %t814 = load { i64, ptr }, ptr %l430, !tbaa !27
  %t816 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s16, ptr %s16, ptr %v0, { i64, ptr } %t814, { i64, ptr } %t813)
  store %"compiler/diagmsg:Msg" %t816, ptr %l435
  br label %bb165
bb165:
  %t817 = load ptr, ptr %l425, !tbaa !29
  %t818 = load %"compiler/source:Span", ptr %l426
  %t819 = load %"compiler/diagmsg:Msg", ptr %l435
  %t820 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t817, %"compiler/source:Span" %t818, %"compiler/diagmsg:Msg" %t819)
  store i64 %t820, ptr %l436
  br label %bb166
bb166:
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t822 = load %"compiler/source:Span", ptr %l1
  %t823 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t827 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t821, %"compiler/source:Span" %t822, i32 %t823, i64 0)
  store ptr %t827, ptr %l440
  br label %bb167
bb167:
  call void @__olang_scope_close(ptr %s16)
  %t828 = load ptr, ptr %l440, !tbaa !29
  store ptr %t828, ptr %rv
  br label %ret
bb168:
  br label %bb169
bb169:
  br label %bb170
bb170:
  br label %bb171
bb171:
  %t829 = load ptr, ptr %l0, !tbaa !29
  %t830 = load i32, ptr %l9, !tbaa !23
  %t833 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %t829, i32 %t830)
  store i64 %t833, ptr %l443
  br label %bb172
bb172:
  %t834 = load i64, ptr %l443, !tbaa !24
  store i64 %t834, ptr %l24, !tbaa !24
  %t835 = load i64, ptr %l24, !tbaa !24
  %t837 = icmp eq i64 %t835, -2
  br i1 %t837, label %bb173, label %bb174
bb173:
  store %olang.scope zeroinitializer, ptr %s17
  %t839 = load ptr, ptr %l0, !tbaa !29
  %t841 = getelementptr %"compiler/check:Checker", ptr %t839, i32 0, i32 1
  %t842 = load ptr, ptr %t841, !tbaa !29
  %t844 = getelementptr %"compiler/generic:Program", ptr %t842, i32 0, i32 0
  %t845 = load ptr, ptr %t844, !tbaa !29
  %t847 = getelementptr %"compiler/load:Loader", ptr %t845, i32 0, i32 4
  %t848 = load ptr, ptr %t847, !tbaa !29
  store ptr %t848, ptr %l449, !tbaa !29
  %t849 = load ptr, ptr %l0, !tbaa !29
  store ptr %t849, ptr %l450, !tbaa !29
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t852 = getelementptr %"compiler/check:Checker", ptr %t850, i32 0, i32 52
  %t853 = getelementptr %"compiler/source:Span", ptr %t852, i32 0, i32 0
  %t854 = load i32, ptr %t853, !tbaa !23
  %t856 = icmp sge i32 %t854, 0
  br i1 %t856, label %bb175, label %bb176
bb174:
  br label %bb183
bb175:
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t860 = getelementptr %"compiler/check:Checker", ptr %t858, i32 0, i32 52
  %t861 = load %"compiler/source:Span", ptr %t860
  store %"compiler/source:Span" %t861, ptr %l454
  br label %bb177
bb176:
  %t863 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t863, ptr %l454
  br label %bb177
bb177:
  %t865 = load ptr, ptr %l450, !tbaa !29
  %t866 = load %"compiler/source:Span", ptr %l454
  %t867 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t865, %"compiler/source:Span" %t866)
  store { i64, [3 x i64] } %t867, ptr %l458
  br label %bb178
bb178:
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t869 = load i32, ptr %l9, !tbaa !23
  %t872 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s17, ptr %t868, i32 %t869)
  store { i64, ptr } %t872, ptr %l461
  br label %bb179
bb179:
  %t873 = load { i64, ptr }, ptr %l461, !tbaa !27
  %t874 = extractvalue { i64, ptr } %t873, 0
  %t875 = extractvalue { i64, ptr } %t873, 1
  %t876 = mul i64 %t874, 1
  %t877 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t876)
  call void @llvm.memcpy.p0.p0.i64(ptr %t877, ptr %t875, i64 %t876, i1 false)
  %t878 = insertvalue { i64, ptr } undef, i64 %t874, 0
  %t879 = insertvalue { i64, ptr } %t878, ptr %t877, 1
  %t881 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %s17, ptr %s17, ptr %s17, ptr %s17, ptr %v0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } %t879, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t881, ptr %l463
  br label %bb180
bb180:
  %t882 = load ptr, ptr %l449, !tbaa !29
  %t883 = load { i64, [3 x i64] }, ptr %l458
  %t884 = load %"compiler/diagmsg:Msg", ptr %l463
  %t885 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t882, { i64, [3 x i64] } %t883, %"compiler/diagmsg:Msg" %t884)
  store i64 %t885, ptr %l464
  br label %bb181
bb181:
  %t886 = load ptr, ptr %l0, !tbaa !29
  %t887 = load %"compiler/source:Span", ptr %l1
  %t888 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t892 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t886, %"compiler/source:Span" %t887, i32 %t888, i64 0)
  store ptr %t892, ptr %l468
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s17)
  %t893 = load ptr, ptr %l468, !tbaa !29
  store ptr %t893, ptr %rv
  br label %ret
bb183:
  %t894 = load i64, ptr %l24, !tbaa !24
  %t896 = icmp sge i64 %t894, 0
  br i1 %t896, label %bb184, label %bb185
bb184:
  %t898 = load ptr, ptr %l0, !tbaa !29
  %t899 = load i32, ptr %l5, !tbaa !23
  %t902 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t898, i32 %t899)
  store i1 %t902, ptr %l474
  br label %bb186
bb185:
  store i1 false, ptr %l471, !tbaa !21
  br label %bb187
bb186:
  %t903 = load i1, ptr %l474, !tbaa !21
  store i1 %t903, ptr %l471, !tbaa !21
  br label %bb187
bb187:
  %t904 = load i1, ptr %l471, !tbaa !21
  br i1 %t904, label %bb188, label %bb189
bb188:
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t906 = load i32, ptr %l6, !tbaa !23
  %t909 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t905, i32 %t906)
  store i1 %t909, ptr %l478
  br label %bb190
bb189:
  store i1 false, ptr %l475, !tbaa !21
  br label %bb191
bb190:
  %t910 = load i1, ptr %l478, !tbaa !21
  store i1 %t910, ptr %l475, !tbaa !21
  br label %bb191
bb191:
  %t911 = load i1, ptr %l475, !tbaa !21
  br i1 %t911, label %bb192, label %bb193
bb192:
  %t912 = load ptr, ptr %l0, !tbaa !29
  %t914 = getelementptr %"compiler/check:Checker", ptr %t912, i32 0, i32 1
  %t915 = load ptr, ptr %t914, !tbaa !29
  %t917 = getelementptr %"compiler/generic:Program", ptr %t915, i32 0, i32 2
  %t918 = load i32, ptr %l5, !tbaa !23
  %t921 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t917, i32 %t918)
  store i1 %t921, ptr %l484
  br label %bb194
bb193:
  store i1 false, ptr %l479, !tbaa !21
  br label %bb199
bb194:
  %t922 = load i1, ptr %l484, !tbaa !21
  br i1 %t922, label %bb195, label %bb196
bb195:
  store i1 true, ptr %l485, !tbaa !21
  br label %bb198
bb196:
  %t923 = load ptr, ptr %l0, !tbaa !29
  %t925 = getelementptr %"compiler/check:Checker", ptr %t923, i32 0, i32 1
  %t926 = load ptr, ptr %t925, !tbaa !29
  %t928 = getelementptr %"compiler/generic:Program", ptr %t926, i32 0, i32 2
  %t929 = load i32, ptr %l6, !tbaa !23
  %t932 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t928, i32 %t929)
  store i1 %t932, ptr %l490
  br label %bb197
bb197:
  %t933 = load i1, ptr %l490, !tbaa !21
  store i1 %t933, ptr %l485, !tbaa !21
  br label %bb198
bb198:
  %t934 = load i1, ptr %l485, !tbaa !21
  store i1 %t934, ptr %l479, !tbaa !21
  br label %bb199
bb199:
  %t935 = load i1, ptr %l479, !tbaa !21
  br i1 %t935, label %bb200, label %bb201
bb200:
  %t936 = load ptr, ptr %l0, !tbaa !29
  %t938 = getelementptr %"compiler/check:Checker", ptr %t936, i32 0, i32 44
  %t940 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t938)
  store i64 %t940, ptr %l493
  br label %bb202
bb201:
  br label %bb239
bb202:
  %t941 = load i64, ptr %l493, !tbaa !24
  store i64 %t941, ptr %l25, !tbaa !24
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load %"compiler/source:Span", ptr %l1
  %t944 = load i32, ptr %l5, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t945
  %t946 = getelementptr { i64, [1 x i64] }, ptr %t945, i32 0, i32 0
  store i64 4, ptr %t946
  %t947 = load { i64, [1 x i64] }, ptr %t945
  %t953 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t942, i32 0, %"compiler/source:Span" %t943, i32 %t944, i32 1, { i64, [1 x i64] } %t947)
  store i64 %t953, ptr %l499
  br label %bb203
bb203:
  %t954 = load i64, ptr %l499, !tbaa !24
  store i64 %t954, ptr %l26, !tbaa !24
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t957 = getelementptr %"compiler/check:Checker", ptr %t955, i32 0, i32 44
  %t958 = load %"compiler/source:Span", ptr %l1
  %t959 = load i64, ptr %l26, !tbaa !24
  %t961 = trunc i64 %t959 to i32
  %t963 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t964
  %t965 = getelementptr { i64, [3 x i64] }, ptr %t964, i32 0, i32 0
  store i64 0, ptr %t965
  %t967 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t958, 0
  %t969 = insertvalue { %"compiler/source:Span", i32, ptr } %t967, i32 %t961, 1
  %t971 = insertvalue { %"compiler/source:Span", i32, ptr } %t969, ptr %t963, 2
  %t972 = getelementptr { i64, [3 x i64] }, ptr %t964, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t971, ptr %t972
  %t973 = load { i64, [3 x i64] }, ptr %t964
  %t975 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t973, ptr %t975
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t957, ptr %t975)
  br label %bb204
bb204:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t979 = load %"compiler/source:Span", ptr %l1
  %t980 = load i32, ptr %l6, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t981
  %t982 = getelementptr { i64, [1 x i64] }, ptr %t981, i32 0, i32 0
  store i64 4, ptr %t982
  %t983 = load { i64, [1 x i64] }, ptr %t981
  %t989 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t978, i32 0, %"compiler/source:Span" %t979, i32 %t980, i32 1, { i64, [1 x i64] } %t983)
  store i64 %t989, ptr %l514
  br label %bb205
bb205:
  %t990 = load i64, ptr %l514, !tbaa !24
  store i64 %t990, ptr %l27, !tbaa !24
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t993 = getelementptr %"compiler/check:Checker", ptr %t991, i32 0, i32 44
  %t994 = load %"compiler/source:Span", ptr %l1
  %t995 = load i64, ptr %l27, !tbaa !24
  %t997 = trunc i64 %t995 to i32
  %t999 = load ptr, ptr %l4, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t1000
  %t1001 = getelementptr { i64, [3 x i64] }, ptr %t1000, i32 0, i32 0
  store i64 0, ptr %t1001
  %t1003 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t994, 0
  %t1005 = insertvalue { %"compiler/source:Span", i32, ptr } %t1003, i32 %t997, 1
  %t1007 = insertvalue { %"compiler/source:Span", i32, ptr } %t1005, ptr %t999, 2
  %t1008 = getelementptr { i64, [3 x i64] }, ptr %t1000, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1007, ptr %t1008
  %t1009 = load { i64, [3 x i64] }, ptr %t1000
  %t1011 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1009, ptr %t1011
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t993, ptr %t1011)
  br label %bb206
bb206:
  %t1014 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1014, ptr %l524, !tbaa !29
  %t1015 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1015, ptr %l525
  %t1016 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1016, ptr %l526, !tbaa !23
  store i32 19, ptr %l527
  %t1017 = load ptr, ptr %l0, !tbaa !29
  %t1018 = load %"compiler/source:Span", ptr %l1
  %t1019 = load i64, ptr %l26, !tbaa !24
  %t1023 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1017, %"compiler/source:Span" %t1018, i64 %t1019)
  store ptr %t1023, ptr %l531
  br label %bb207
bb207:
  %t1024 = load ptr, ptr %l0, !tbaa !29
  %t1025 = load %"compiler/source:Span", ptr %l1
  %t1026 = load i32, ptr %l5, !tbaa !23
  %t1030 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t1024, %"compiler/source:Span" %t1025, i32 %t1026)
  store ptr %t1030, ptr %l535
  br label %bb208
bb208:
  %t1031 = load ptr, ptr %l535, !tbaa !29
  %t1032 = load ptr, ptr %l524, !tbaa !29
  %t1033 = load %"compiler/source:Span", ptr %l525
  %t1034 = load i32, ptr %l526, !tbaa !23
  %t1035 = load i32, ptr %l527, !range !{i32 0, i32 51}
  %t1036 = load ptr, ptr %l531, !tbaa !29
  %t1038 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1032, %"compiler/source:Span" %t1033, i32 %t1034, i32 %t1035, ptr %t1036, ptr %t1031)
  store ptr %t1038, ptr %l537
  br label %bb209
bb209:
  %t1039 = load ptr, ptr %l537, !tbaa !29
  store ptr %t1039, ptr %l28, !tbaa !29
  %t1040 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1040, ptr %l538, !tbaa !29
  %t1041 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1041, ptr %l539
  %t1042 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1042, ptr %l540, !tbaa !23
  store i32 19, ptr %l541
  %t1043 = load ptr, ptr %l0, !tbaa !29
  %t1044 = load %"compiler/source:Span", ptr %l1
  %t1045 = load i64, ptr %l27, !tbaa !24
  %t1049 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1043, %"compiler/source:Span" %t1044, i64 %t1045)
  store ptr %t1049, ptr %l545
  br label %bb210
bb210:
  %t1050 = load ptr, ptr %l0, !tbaa !29
  %t1051 = load %"compiler/source:Span", ptr %l1
  %t1052 = load i32, ptr %l6, !tbaa !23
  %t1056 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t1050, %"compiler/source:Span" %t1051, i32 %t1052)
  store ptr %t1056, ptr %l549
  br label %bb211
bb211:
  %t1057 = load ptr, ptr %l549, !tbaa !29
  %t1058 = load ptr, ptr %l538, !tbaa !29
  %t1059 = load %"compiler/source:Span", ptr %l539
  %t1060 = load i32, ptr %l540, !tbaa !23
  %t1061 = load i32, ptr %l541, !range !{i32 0, i32 51}
  %t1062 = load ptr, ptr %l545, !tbaa !29
  %t1064 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1058, %"compiler/source:Span" %t1059, i32 %t1060, i32 %t1061, ptr %t1062, ptr %t1057)
  store ptr %t1064, ptr %l551
  br label %bb212
bb212:
  %t1065 = load ptr, ptr %l551, !tbaa !29
  store ptr %t1065, ptr %l29, !tbaa !29
  %t1066 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1066, ptr %l552, !tbaa !29
  %t1067 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1067, ptr %l553
  %t1068 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1068, ptr %l554, !tbaa !23
  store i32 19, ptr %l555
  %t1069 = load ptr, ptr %l0, !tbaa !29
  %t1070 = load %"compiler/source:Span", ptr %l1
  %t1071 = load i64, ptr %l27, !tbaa !24
  %t1075 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1069, %"compiler/source:Span" %t1070, i64 %t1071)
  store ptr %t1075, ptr %l559
  br label %bb213
bb213:
  %t1076 = load ptr, ptr %l0, !tbaa !29
  %t1077 = load %"compiler/source:Span", ptr %l1
  %t1078 = load i32, ptr %l6, !tbaa !23
  %t1082 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t1076, %"compiler/source:Span" %t1077, i32 %t1078)
  store ptr %t1082, ptr %l563
  br label %bb214
bb214:
  %t1083 = load ptr, ptr %l563, !tbaa !29
  %t1084 = load ptr, ptr %l552, !tbaa !29
  %t1085 = load %"compiler/source:Span", ptr %l553
  %t1086 = load i32, ptr %l554, !tbaa !23
  %t1087 = load i32, ptr %l555, !range !{i32 0, i32 51}
  %t1088 = load ptr, ptr %l559, !tbaa !29
  %t1090 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v3, ptr %t1084, %"compiler/source:Span" %t1085, i32 %t1086, i32 %t1087, ptr %t1088, ptr %t1083)
  store ptr %t1090, ptr %l565
  br label %bb215
bb215:
  %t1091 = load ptr, ptr %l565, !tbaa !29
  store ptr %t1091, ptr %l30, !tbaa !29
  %t1092 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1092, ptr %l566, !tbaa !29
  %t1093 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1093, ptr %l567
  %t1094 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1094, ptr %l568
  %t1095 = load ptr, ptr %l0, !tbaa !29
  %t1097 = getelementptr %"compiler/check:Checker", ptr %t1095, i32 0, i32 1
  %t1098 = load ptr, ptr %t1097, !tbaa !29
  %t1100 = getelementptr %"compiler/generic:Program", ptr %t1098, i32 0, i32 2
  %t1101 = load i32, ptr %l5, !tbaa !23
  %t1104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t1100, i32 %t1101)
  store i32 %t1104, ptr %l573
  br label %bb216
bb216:
  %t1105 = load i64, ptr %l26, !tbaa !24
  %t1107 = trunc i64 %t1105 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t1109
  %t1110 = getelementptr { i64, [4 x i64] }, ptr %t1109, i32 0, i32 0
  store i64 0, ptr %t1110
  %t1111 = load %"compiler/source:Span", ptr %l568
  %t1112 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t1111, 0
  %t1113 = load i32, ptr %l573, !tbaa !23
  %t1114 = insertvalue { %"compiler/source:Span", i32, i32 } %t1112, i32 %t1113, 1
  %t1116 = insertvalue { %"compiler/source:Span", i32, i32 } %t1114, i32 %t1107, 2
  %t1117 = getelementptr { i64, [4 x i64] }, ptr %t1109, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t1116, ptr %t1117
  %t1118 = load { i64, [4 x i64] }, ptr %t1109
  %t1120 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t1118, ptr %t1120
  %t1121 = load ptr, ptr %l566, !tbaa !29
  %t1122 = load %"compiler/source:Span", ptr %l567
  %t1124 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t1121, %"compiler/source:Span" %t1122, ptr %t1120)
  store ptr %t1124, ptr %l579
  br label %bb217
bb217:
  %t1125 = load ptr, ptr %l579, !tbaa !29
  store ptr %t1125, ptr %l31, !tbaa !29
  %t1126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1126, ptr %l580, !tbaa !29
  %t1127 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1127, ptr %l581
  %t1128 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1128, ptr %l582
  %t1129 = load ptr, ptr %l0, !tbaa !29
  %t1131 = getelementptr %"compiler/check:Checker", ptr %t1129, i32 0, i32 1
  %t1132 = load ptr, ptr %t1131, !tbaa !29
  %t1134 = getelementptr %"compiler/generic:Program", ptr %t1132, i32 0, i32 2
  %t1135 = load i32, ptr %l6, !tbaa !23
  %t1138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t1134, i32 %t1135)
  store i32 %t1138, ptr %l587
  br label %bb218
bb218:
  %t1139 = load i64, ptr %l27, !tbaa !24
  %t1141 = trunc i64 %t1139 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t1143
  %t1144 = getelementptr { i64, [4 x i64] }, ptr %t1143, i32 0, i32 0
  store i64 0, ptr %t1144
  %t1145 = load %"compiler/source:Span", ptr %l582
  %t1146 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t1145, 0
  %t1147 = load i32, ptr %l587, !tbaa !23
  %t1148 = insertvalue { %"compiler/source:Span", i32, i32 } %t1146, i32 %t1147, 1
  %t1150 = insertvalue { %"compiler/source:Span", i32, i32 } %t1148, i32 %t1141, 2
  %t1151 = getelementptr { i64, [4 x i64] }, ptr %t1143, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t1150, ptr %t1151
  %t1152 = load { i64, [4 x i64] }, ptr %t1143
  %t1154 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t1152, ptr %t1154
  %t1155 = load ptr, ptr %l580, !tbaa !29
  %t1156 = load %"compiler/source:Span", ptr %l581
  %t1158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t1155, %"compiler/source:Span" %t1156, ptr %t1154)
  store ptr %t1158, ptr %l593
  br label %bb219
bb219:
  %t1159 = load ptr, ptr %l593, !tbaa !29
  store ptr %t1159, ptr %l32, !tbaa !29
  %t1160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1160, ptr %l594, !tbaa !29
  %t1161 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1161, ptr %l595
  %t1162 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1162, ptr %l596
  %t1163 = load i64, ptr %l24, !tbaa !24
  store i64 %t1163, ptr %l597, !tbaa !24
  %t1164 = load ptr, ptr %l31, !tbaa !29
  store ptr %t1164, ptr %l599, !tbaa !29
  %t1166 = icmp sge i64 0, 0
  br i1 %t1166, label %bb220, label %bb221
bb220:
  %t1168 = icmp sle i64 0, 1152921504606846975
  br i1 %t1168, label %bb222, label %bb223
bb221:
  call void @__olang_check_failed(ptr @olang_loc_1c2cb6c96b4eaee8_c1b953befa7e1dc)
  unreachable
bb222:
  %t1170 = mul i64 0, 8
  %t1171 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1172 = insertvalue { i64, ptr } %t1171, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1172, ptr %l602, !tbaa !27
  %t1173 = load ptr, ptr %l0, !tbaa !29
  %t1174 = load ptr, ptr %l32, !tbaa !29
  %t1177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v3, ptr %v0, ptr %t1173, ptr %t1174)
  store { i64, ptr } %t1177, ptr %l605
  br label %bb224
bb223:
  call void @__olang_check_failed(ptr @olang_loc_1c2cb6c96b4eaee8_c1b953befa7e1dc)
  unreachable
bb224:
  %t1178 = icmp sge i64 0, 0
  br i1 %t1178, label %bb225, label %bb226
bb225:
  %t1180 = icmp sle i64 0, 2305843009213693951
  br i1 %t1180, label %bb227, label %bb228
bb226:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb227:
  %t1182 = mul i64 0, 4
  %t1183 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1184 = insertvalue { i64, ptr } %t1183, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1185 = load ptr, ptr %l594, !tbaa !29
  %t1186 = load %"compiler/source:Span", ptr %l595
  %t1187 = load %"compiler/source:Span", ptr %l596
  %t1188 = load i64, ptr %l597, !tbaa !24
  %t1189 = load ptr, ptr %l599, !tbaa !29
  %t1190 = load { i64, ptr }, ptr %l602, !tbaa !27
  %t1191 = load { i64, ptr }, ptr %l605, !tbaa !27
  %t1193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t1185, %"compiler/source:Span" %t1186, %"compiler/source:Span" %t1187, i64 %t1188, ptr %t1189, { i64, ptr } %t1190, { i64, ptr } %t1191, { i64, ptr } %t1184)
  store ptr %t1193, ptr %l609
  br label %bb229
bb228:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb229:
  %t1194 = load ptr, ptr %l609, !tbaa !29
  store ptr %t1194, ptr %l33, !tbaa !29
  %t1195 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1195, ptr %l610
  %t1196 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1196, ptr %l611, !tbaa !23
  %t1197 = load ptr, ptr %l30, !tbaa !29
  store ptr %t1197, ptr %l612, !tbaa !29
  %t1198 = load ptr, ptr %l0, !tbaa !29
  %t1199 = load %"compiler/source:Span", ptr %l1
  %t1200 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t1198, %"compiler/source:Span" %t1199, i32 %t1200, i64 0)
  store ptr %t1204, ptr %l616
  br label %bb230
bb230:
  %t1205 = load ptr, ptr %l616, !tbaa !29
  %t1206 = load ptr, ptr %l33, !tbaa !29
  %t1207 = load ptr, ptr %l612, !tbaa !29
  %t1210 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t1207, ptr %t1205, ptr %t1206)
  store %"compiler/typed:Cond" %t1210, ptr %l619
  br label %bb231
bb231:
  %t1211 = load %"compiler/typed:Cond", ptr %l619
  %t1212 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t1211, ptr %t1212
  store { i64, [5 x i64] } zeroinitializer, ptr %t1213
  %t1214 = getelementptr { i64, [5 x i64] }, ptr %t1213, i32 0, i32 0
  store i64 11, ptr %t1214
  %t1215 = load %"compiler/source:Span", ptr %l610
  %t1216 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1215, 0
  %t1217 = load i32, ptr %l611, !tbaa !23
  %t1218 = insertvalue { %"compiler/source:Span", i32, ptr } %t1216, i32 %t1217, 1
  %t1220 = insertvalue { %"compiler/source:Span", i32, ptr } %t1218, ptr %t1212, 2
  %t1221 = getelementptr { i64, [5 x i64] }, ptr %t1213, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1220, ptr %t1221
  %t1222 = load { i64, [5 x i64] }, ptr %t1213
  %t1223 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store ptr %t1223, ptr %lp34
  %t1225 = load ptr, ptr %lp34
  store { i64, [5 x i64] } %t1222, ptr %t1225
  %t1226 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1226, ptr %l622
  %t1227 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1227, ptr %l623, !tbaa !23
  %t1228 = load ptr, ptr %l0, !tbaa !29
  %t1230 = getelementptr %"compiler/check:Checker", ptr %t1228, i32 0, i32 44
  %t1231 = load i64, ptr %l25, !tbaa !24
  %t1234 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1230, i64 %t1231)
  store { i64, ptr } %t1234, ptr %l627
  br label %bb232
bb232:
  %t1235 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1235, ptr %l628
  %t1236 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1236, ptr %l629, !tbaa !23
  %t1237 = load ptr, ptr %l28, !tbaa !29
  %t1238 = load ptr, ptr %l29, !tbaa !29
  %t1240 = load ptr, ptr %lp34
  %t1244 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t1237, ptr %t1238, ptr %t1240)
  store %"compiler/typed:Cond" %t1244, ptr %l634
  br label %bb233
bb233:
  %t1245 = load %"compiler/typed:Cond", ptr %l634
  %t1246 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t1245, ptr %t1246
  store { i64, [5 x i64] } zeroinitializer, ptr %t1247
  %t1248 = getelementptr { i64, [5 x i64] }, ptr %t1247, i32 0, i32 0
  store i64 11, ptr %t1248
  %t1249 = load %"compiler/source:Span", ptr %l628
  %t1250 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1249, 0
  %t1251 = load i32, ptr %l629, !tbaa !23
  %t1252 = insertvalue { %"compiler/source:Span", i32, ptr } %t1250, i32 %t1251, 1
  %t1254 = insertvalue { %"compiler/source:Span", i32, ptr } %t1252, ptr %t1246, 2
  %t1255 = getelementptr { i64, [5 x i64] }, ptr %t1247, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1254, ptr %t1255
  %t1256 = load { i64, [5 x i64] }, ptr %t1247
  %t1258 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t1256, ptr %t1258
  %t1259 = load { i64, ptr }, ptr %l627, !tbaa !27
  %t1261 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t1259, ptr %t1258, i1 false)
  store %"compiler/typed:Seq" %t1261, ptr %l638
  br label %bb234
bb234:
  %t1262 = load %"compiler/typed:Seq", ptr %l638
  %t1263 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t1262, ptr %t1263
  store { i64, [5 x i64] } zeroinitializer, ptr %t1264
  %t1265 = getelementptr { i64, [5 x i64] }, ptr %t1264, i32 0, i32 0
  store i64 12, ptr %t1265
  %t1266 = load %"compiler/source:Span", ptr %l622
  %t1267 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1266, 0
  %t1268 = load i32, ptr %l623, !tbaa !23
  %t1269 = insertvalue { %"compiler/source:Span", i32, ptr } %t1267, i32 %t1268, 1
  %t1271 = insertvalue { %"compiler/source:Span", i32, ptr } %t1269, ptr %t1263, 2
  %t1272 = getelementptr { i64, [5 x i64] }, ptr %t1264, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1271, ptr %t1272
  %t1273 = load { i64, [5 x i64] }, ptr %t1264
  %t1274 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store ptr %t1274, ptr %lp35
  %t1276 = load ptr, ptr %lp35
  store { i64, [5 x i64] } %t1273, ptr %t1276
  %t1277 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t1279 = trunc i64 94 to i32
  %t1280 = icmp eq i32 %t1277, %t1279
  br i1 %t1280, label %bb235, label %bb236
bb235:
  %t1282 = load ptr, ptr %l0, !tbaa !29
  %t1283 = load %"compiler/source:Span", ptr %l1
  %t1284 = load ptr, ptr %lp35
  %t1288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1282, %"compiler/source:Span" %t1283, ptr %t1284)
  store ptr %t1288, ptr %l647
  br label %bb237
bb236:
  %t1289 = load ptr, ptr %lp35
  store ptr %t1289, ptr %l643, !tbaa !29
  br label %bb238
bb237:
  %t1291 = load ptr, ptr %l647, !tbaa !29
  store ptr %t1291, ptr %l643, !tbaa !29
  br label %bb238
bb238:
  %t1292 = load ptr, ptr %l643, !tbaa !29
  store ptr %t1292, ptr %rv
  br label %ret
bb239:
  %t1293 = load i64, ptr %l24, !tbaa !24
  %t1295 = icmp sge i64 %t1293, 0
  br i1 %t1295, label %bb240, label %bb241
bb240:
  %t1297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1297, ptr %l651, !tbaa !29
  %t1298 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1298, ptr %l652
  %t1299 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1299, ptr %l653
  %t1300 = load i64, ptr %l24, !tbaa !24
  store i64 %t1300, ptr %l654, !tbaa !24
  %t1301 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1301, ptr %l656, !tbaa !29
  %t1303 = icmp sge i64 0, 0
  br i1 %t1303, label %bb242, label %bb243
bb241:
  br label %bb256
bb242:
  %t1305 = icmp sle i64 0, 1152921504606846975
  br i1 %t1305, label %bb244, label %bb245
bb243:
  call void @__olang_check_failed(ptr @olang_loc_bc0d2701821819b6_446831e810be806a)
  unreachable
bb244:
  %t1307 = mul i64 0, 8
  %t1308 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1309 = insertvalue { i64, ptr } %t1308, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1309, ptr %l659, !tbaa !27
  %t1310 = load ptr, ptr %l0, !tbaa !29
  %t1311 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1311, ptr %l661, !tbaa !29
  %t1312 = load ptr, ptr %l661, !tbaa !29
  %t1313 = call ptr @__olang_scope_of(ptr %t1312, ptr null)
  %t1314 = ptrtoint ptr %t1313 to i64
  %t1316 = inttoptr i64 %t1314 to ptr
  %t1318 = load ptr, ptr %l661, !tbaa !29
  %t1319 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %t1316, ptr %v0, ptr %t1310, ptr %t1318)
  store { i64, ptr } %t1319, ptr %l663
  br label %bb246
bb245:
  call void @__olang_check_failed(ptr @olang_loc_bc0d2701821819b6_446831e810be806a)
  unreachable
bb246:
  %t1320 = icmp sge i64 0, 0
  br i1 %t1320, label %bb247, label %bb248
bb247:
  %t1322 = icmp sle i64 0, 2305843009213693951
  br i1 %t1322, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb249:
  %t1324 = mul i64 0, 4
  %t1325 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1326 = insertvalue { i64, ptr } %t1325, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1327 = load ptr, ptr %l656, !tbaa !29
  %t1328 = call ptr @__olang_scope_of(ptr %t1327, ptr null)
  %t1329 = ptrtoint ptr %t1328 to i64
  %t1331 = inttoptr i64 %t1329 to ptr
  %t1332 = load ptr, ptr %l651, !tbaa !29
  %t1333 = load %"compiler/source:Span", ptr %l652
  %t1334 = load %"compiler/source:Span", ptr %l653
  %t1335 = load i64, ptr %l654, !tbaa !24
  %t1336 = load ptr, ptr %l656, !tbaa !29
  %t1337 = load { i64, ptr }, ptr %l659, !tbaa !27
  %t1338 = load { i64, ptr }, ptr %l663, !tbaa !27
  %t1340 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %t1331, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t1332, %"compiler/source:Span" %t1333, %"compiler/source:Span" %t1334, i64 %t1335, ptr %t1336, { i64, ptr } %t1337, { i64, ptr } %t1338, { i64, ptr } %t1326)
  store ptr %t1340, ptr %l668
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9)
  unreachable
bb251:
  %t1341 = load ptr, ptr %l668, !tbaa !29
  store ptr %t1341, ptr %l36, !tbaa !29
  %t1342 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t1344 = trunc i64 94 to i32
  %t1345 = icmp eq i32 %t1342, %t1344
  br i1 %t1345, label %bb252, label %bb253
bb252:
  %t1347 = load ptr, ptr %l0, !tbaa !29
  %t1348 = load %"compiler/source:Span", ptr %l1
  %t1349 = load ptr, ptr %l36, !tbaa !29
  %t1353 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1347, %"compiler/source:Span" %t1348, ptr %t1349)
  store ptr %t1353, ptr %l675
  br label %bb254
bb253:
  %t1354 = load ptr, ptr %l36, !tbaa !29
  store ptr %t1354, ptr %l671, !tbaa !29
  br label %bb255
bb254:
  %t1356 = load ptr, ptr %l675, !tbaa !29
  store ptr %t1356, ptr %l671, !tbaa !29
  br label %bb255
bb255:
  %t1357 = load ptr, ptr %l671, !tbaa !29
  store ptr %t1357, ptr %rv
  br label %ret
bb256:
  %t1358 = load ptr, ptr %l0, !tbaa !29
  %t1359 = load i32, ptr %l5, !tbaa !23
  %t1362 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1358, i32 %t1359)
  store i1 %t1362, ptr %l679
  br label %bb257
bb257:
  %t1363 = load i1, ptr %l679, !tbaa !21
  br i1 %t1363, label %bb258, label %bb259
bb258:
  %t1364 = load ptr, ptr %l0, !tbaa !29
  %t1365 = load i32, ptr %l6, !tbaa !23
  %t1368 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1364, i32 %t1365)
  store i1 %t1368, ptr %l683
  br label %bb260
bb259:
  store i1 false, ptr %l680, !tbaa !21
  br label %bb261
bb260:
  %t1369 = load i1, ptr %l683, !tbaa !21
  store i1 %t1369, ptr %l680, !tbaa !21
  br label %bb261
bb261:
  %t1370 = load i1, ptr %l680, !tbaa !21
  br i1 %t1370, label %bb262, label %bb263
bb262:
  %t1371 = load ptr, ptr %l0, !tbaa !29
  %t1372 = load i32, ptr %l9, !tbaa !23
  %t1375 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t1371, i32 %t1372)
  store i1 %t1375, ptr %l687
  br label %bb264
bb263:
  store i1 false, ptr %l684, !tbaa !21
  br label %bb273
bb264:
  %t1376 = load i1, ptr %l687, !tbaa !21
  br i1 %t1376, label %bb265, label %bb266
bb265:
  store i1 true, ptr %l688, !tbaa !21
  br label %bb268
bb266:
  %t1377 = load ptr, ptr %l0, !tbaa !29
  %t1378 = load i32, ptr %l9, !tbaa !23
  %t1381 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t1377, i32 %t1378)
  store i1 %t1381, ptr %l691
  br label %bb267
bb267:
  %t1382 = load i1, ptr %l691, !tbaa !21
  store i1 %t1382, ptr %l688, !tbaa !21
  br label %bb268
bb268:
  %t1383 = load i1, ptr %l688, !tbaa !21
  br i1 %t1383, label %bb269, label %bb270
bb269:
  store i1 true, ptr %l692, !tbaa !21
  br label %bb272
bb270:
  %t1384 = load ptr, ptr %l0, !tbaa !29
  %t1386 = getelementptr %"compiler/check:Checker", ptr %t1384, i32 0, i32 1
  %t1387 = load ptr, ptr %t1386, !tbaa !29
  %t1389 = getelementptr %"compiler/generic:Program", ptr %t1387, i32 0, i32 2
  %t1390 = load i32, ptr %l9, !tbaa !23
  %t1393 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1389, i32 %t1390)
  store i32 %t1393, ptr %l697
  br label %bb271
bb271:
  %t1394 = load i32, ptr %l697, !range !{i32 0, i32 33}
  %t1396 = trunc i64 29 to i32
  %t1397 = icmp eq i32 %t1394, %t1396
  store i1 %t1397, ptr %l692, !tbaa !21
  br label %bb272
bb272:
  %t1399 = load i1, ptr %l692, !tbaa !21
  store i1 %t1399, ptr %l684, !tbaa !21
  br label %bb273
bb273:
  %t1400 = load i1, ptr %l684, !tbaa !21
  br i1 %t1400, label %bb274, label %bb275
bb274:
  %t1401 = load ptr, ptr %l0, !tbaa !29
  %t1402 = load %"compiler/source:Span", ptr %l1
  %t1403 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1404 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1404, ptr %l704, !tbaa !29
  %t1405 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1405, ptr %l706, !tbaa !29
  %t1407 = load ptr, ptr %l704, !tbaa !29
  %t1408 = call ptr @__olang_scope_of(ptr %t1407, ptr null)
  %t1409 = ptrtoint ptr %t1408 to i64
  %t1410 = load ptr, ptr %l706, !tbaa !29
  %t1411 = call ptr @__olang_scope_of(ptr %t1410, ptr null)
  %t1412 = ptrtoint ptr %t1411 to i64
  %t1414 = inttoptr i64 %t1409 to ptr
  %t1416 = inttoptr i64 %t1412 to ptr
  %t1421 = load ptr, ptr %l704, !tbaa !29
  %t1422 = load ptr, ptr %l706, !tbaa !29
  %t1423 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t1414, ptr %t1416, ptr %v3, ptr %t1401, %"compiler/source:Span" %t1402, i32 %t1403, i32 19, ptr %t1421, ptr %t1422)
  store ptr %t1423, ptr %l709
  br label %bb276
bb275:
  br label %bb281
bb276:
  %t1424 = load ptr, ptr %l709, !tbaa !29
  store ptr %t1424, ptr %l37, !tbaa !29
  %t1425 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t1427 = trunc i64 94 to i32
  %t1428 = icmp eq i32 %t1425, %t1427
  br i1 %t1428, label %bb277, label %bb278
bb277:
  %t1430 = load ptr, ptr %l0, !tbaa !29
  %t1431 = load %"compiler/source:Span", ptr %l1
  %t1432 = load ptr, ptr %l37, !tbaa !29
  %t1436 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1430, %"compiler/source:Span" %t1431, ptr %t1432)
  store ptr %t1436, ptr %l716
  br label %bb279
bb278:
  %t1437 = load ptr, ptr %l37, !tbaa !29
  store ptr %t1437, ptr %l712, !tbaa !29
  br label %bb280
bb279:
  %t1439 = load ptr, ptr %l716, !tbaa !29
  store ptr %t1439, ptr %l712, !tbaa !29
  br label %bb280
bb280:
  %t1440 = load ptr, ptr %l712, !tbaa !29
  store ptr %t1440, ptr %rv
  br label %ret
bb281:
  %t1441 = load ptr, ptr %l0, !tbaa !29
  %t1442 = load i32, ptr %l9, !tbaa !23
  %t1445 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %t1441, i32 %t1442, i64 0)
  store i1 %t1445, ptr %l720
  br label %bb282
bb282:
  %t1446 = load i1, ptr %l720, !tbaa !21
  br i1 %t1446, label %bb283, label %bb284
bb283:
  %t1447 = load ptr, ptr %l0, !tbaa !29
  %t1448 = load %"compiler/source:Span", ptr %l1
  %t1449 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1449, ptr %l723, !tbaa !29
  %t1450 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1450, ptr %l724, !tbaa !29
  %t1451 = load i32, ptr %l9, !tbaa !23
  %t1452 = load ptr, ptr %l723, !tbaa !29
  %t1453 = call ptr @__olang_scope_of(ptr %t1452, ptr null)
  %t1454 = ptrtoint ptr %t1453 to i64
  %t1455 = load ptr, ptr %l724, !tbaa !29
  %t1456 = call ptr @__olang_scope_of(ptr %t1455, ptr null)
  %t1457 = ptrtoint ptr %t1456 to i64
  %t1459 = inttoptr i64 %t1454 to ptr
  %t1461 = inttoptr i64 %t1457 to ptr
  %t1464 = load ptr, ptr %l723, !tbaa !29
  %t1465 = load ptr, ptr %l724, !tbaa !29
  %t1467 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsEqual(ptr %v0, ptr %t1459, ptr %t1461, ptr %v3, ptr %t1447, %"compiler/source:Span" %t1448, ptr %t1464, ptr %t1465, i32 %t1451)
  store ptr %t1467, ptr %l728
  br label %bb285
bb284:
  br label %bb295
bb285:
  %t1468 = load ptr, ptr %l728, !tbaa !29
  store ptr %t1468, ptr %l38, !tbaa !29
  %t1469 = load ptr, ptr %l38, !tbaa !29
  %t1471 = icmp eq ptr %t1469, null
  br i1 %t1471, label %bb286, label %bb287
bb286:
  %t1473 = load ptr, ptr %l0, !tbaa !29
  %t1474 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t1473, %"compiler/source:Span" %t1474, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb288
bb287:
  br label %bb290
bb288:
  %t1477 = load ptr, ptr %l0, !tbaa !29
  %t1478 = load %"compiler/source:Span", ptr %l1
  %t1479 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1483 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t1477, %"compiler/source:Span" %t1478, i32 %t1479, i64 0)
  store ptr %t1483, ptr %l736
  br label %bb289
bb289:
  %t1484 = load ptr, ptr %l736, !tbaa !29
  store ptr %t1484, ptr %rv
  br label %ret
bb290:
  %t1485 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t1487 = trunc i64 94 to i32
  %t1488 = icmp eq i32 %t1485, %t1487
  br i1 %t1488, label %bb291, label %bb292
bb291:
  %t1490 = load ptr, ptr %l0, !tbaa !29
  %t1491 = load %"compiler/source:Span", ptr %l1
  %t1492 = load ptr, ptr %l38, !tbaa !29
  %t1496 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1490, %"compiler/source:Span" %t1491, ptr %t1492)
  store ptr %t1496, ptr %l743
  br label %bb293
bb292:
  %t1497 = load ptr, ptr %l38, !tbaa !29
  store ptr %t1497, ptr %l739, !tbaa !29
  br label %bb294
bb293:
  %t1499 = load ptr, ptr %l743, !tbaa !29
  store ptr %t1499, ptr %l739, !tbaa !29
  br label %bb294
bb294:
  %t1500 = load ptr, ptr %l739, !tbaa !29
  store ptr %t1500, ptr %rv
  br label %ret
bb295:
  %t1501 = load ptr, ptr %l0, !tbaa !29
  %t1502 = load i32, ptr %l5, !tbaa !23
  %t1505 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1501, i32 %t1502)
  store i1 %t1505, ptr %l747
  br label %bb296
bb296:
  %t1506 = load i1, ptr %l747, !tbaa !21
  br i1 %t1506, label %bb297, label %bb298
bb297:
  %t1507 = load ptr, ptr %l0, !tbaa !29
  %t1508 = load i32, ptr %l6, !tbaa !23
  %t1511 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1507, i32 %t1508)
  store i1 %t1511, ptr %l751
  br label %bb299
bb298:
  store i1 false, ptr %l748, !tbaa !21
  br label %bb300
bb299:
  %t1512 = load i1, ptr %l751, !tbaa !21
  store i1 %t1512, ptr %l748, !tbaa !21
  br label %bb300
bb300:
  %t1513 = load i1, ptr %l748, !tbaa !21
  br i1 %t1513, label %bb301, label %bb302
bb301:
  %t1514 = load ptr, ptr %l0, !tbaa !29
  %t1516 = getelementptr %"compiler/check:Checker", ptr %t1514, i32 0, i32 1
  %t1517 = load ptr, ptr %t1516, !tbaa !29
  %t1519 = getelementptr %"compiler/generic:Program", ptr %t1517, i32 0, i32 2
  %t1520 = load i32, ptr %l9, !tbaa !23
  %t1521 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t1525 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t1519, i32 %t1520, i64 %t1521)
  store i32 %t1525, ptr %l758
  br label %bb303
bb302:
  %t1526 = load i32, ptr %l9, !tbaa !23
  store i32 %t1526, ptr %l752, !tbaa !23
  br label %bb304
bb303:
  %t1528 = load i32, ptr %l758, !tbaa !23
  store i32 %t1528, ptr %l752, !tbaa !23
  br label %bb304
bb304:
  %t1529 = load i32, ptr %l752, !tbaa !23
  store i32 %t1529, ptr %l39, !tbaa !23
  %t1530 = load ptr, ptr %l0, !tbaa !29
  %t1531 = load i32, ptr %l5, !tbaa !23
  %t1534 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1530, i32 %t1531)
  store i1 %t1534, ptr %l762
  br label %bb305
bb305:
  %t1535 = load i1, ptr %l762, !tbaa !21
  br i1 %t1535, label %bb306, label %bb307
bb306:
  %t1536 = load ptr, ptr %l0, !tbaa !29
  %t1537 = load i32, ptr %l6, !tbaa !23
  %t1540 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1536, i32 %t1537)
  store i1 %t1540, ptr %l766
  br label %bb308
bb307:
  store i1 false, ptr %l763, !tbaa !21
  br label %bb309
bb308:
  %t1541 = load i1, ptr %l766, !tbaa !21
  store i1 %t1541, ptr %l763, !tbaa !21
  br label %bb309
bb309:
  %t1542 = load i1, ptr %l763, !tbaa !21
  br i1 %t1542, label %bb310, label %bb311
bb310:
  %t1543 = load ptr, ptr %l0, !tbaa !29
  %t1545 = getelementptr %"compiler/check:Checker", ptr %t1543, i32 0, i32 1
  %t1546 = load ptr, ptr %t1545, !tbaa !29
  %t1548 = getelementptr %"compiler/generic:Program", ptr %t1546, i32 0, i32 2
  %t1549 = load i32, ptr %l5, !tbaa !23
  %t1552 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1548, i32 %t1549)
  store i1 %t1552, ptr %l772
  br label %bb312
bb311:
  store i1 false, ptr %l767, !tbaa !21
  br label %bb317
bb312:
  %t1553 = load i1, ptr %l772, !tbaa !21
  br i1 %t1553, label %bb313, label %bb314
bb313:
  store i1 true, ptr %l773, !tbaa !21
  br label %bb316
bb314:
  %t1554 = load ptr, ptr %l0, !tbaa !29
  %t1556 = getelementptr %"compiler/check:Checker", ptr %t1554, i32 0, i32 1
  %t1557 = load ptr, ptr %t1556, !tbaa !29
  %t1559 = getelementptr %"compiler/generic:Program", ptr %t1557, i32 0, i32 2
  %t1560 = load i32, ptr %l6, !tbaa !23
  %t1563 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t1559, i32 %t1560)
  store i1 %t1563, ptr %l778
  br label %bb315
bb315:
  %t1564 = load i1, ptr %l778, !tbaa !21
  store i1 %t1564, ptr %l773, !tbaa !21
  br label %bb316
bb316:
  %t1565 = load i1, ptr %l773, !tbaa !21
  store i1 %t1565, ptr %l767, !tbaa !21
  br label %bb317
bb317:
  %t1566 = load i1, ptr %l767, !tbaa !21
  br i1 %t1566, label %bb318, label %bb319
bb318:
  %t1567 = load ptr, ptr %l0, !tbaa !29
  %t1569 = getelementptr %"compiler/check:Checker", ptr %t1567, i32 0, i32 1
  %t1570 = load ptr, ptr %t1569, !tbaa !29
  %t1572 = getelementptr %"compiler/generic:Program", ptr %t1570, i32 0, i32 2
  %t1573 = load i32, ptr %l39, !tbaa !23
  %t1576 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t1572, i32 %t1573)
  store i32 %t1576, ptr %l783
  br label %bb320
bb319:
  br label %bb321
bb320:
  %t1577 = load i32, ptr %l783, !tbaa !23
  store i32 %t1577, ptr %l39, !tbaa !23
  br label %bb321
bb321:
  %t1578 = load ptr, ptr %l0, !tbaa !29
  %t1579 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1579, ptr %l785, !tbaa !29
  %t1580 = load i32, ptr %l39, !tbaa !23
  %t1581 = load %"compiler/source:Span", ptr %l1
  %t1582 = load ptr, ptr %l785, !tbaa !29
  %t1583 = call ptr @__olang_scope_of(ptr %t1582, ptr null)
  %t1584 = ptrtoint ptr %t1583 to i64
  %t1586 = inttoptr i64 %t1584 to ptr
  %t1588 = load ptr, ptr %l785, !tbaa !29
  %t1591 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t1586, ptr %v3, ptr %t1578, ptr %t1588, i32 %t1580, %"compiler/source:Span" %t1581)
  store ptr %t1591, ptr %l789
  br label %bb322
bb322:
  %t1592 = load ptr, ptr %l789, !tbaa !29
  store ptr %t1592, ptr %l40, !tbaa !29
  %t1593 = load ptr, ptr %l0, !tbaa !29
  %t1594 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1594, ptr %l791, !tbaa !29
  %t1595 = load i32, ptr %l39, !tbaa !23
  %t1596 = load %"compiler/source:Span", ptr %l1
  %t1597 = load ptr, ptr %l791, !tbaa !29
  %t1598 = call ptr @__olang_scope_of(ptr %t1597, ptr null)
  %t1599 = ptrtoint ptr %t1598 to i64
  %t1601 = inttoptr i64 %t1599 to ptr
  %t1603 = load ptr, ptr %l791, !tbaa !29
  %t1606 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %t1601, ptr %v3, ptr %t1593, ptr %t1603, i32 %t1595, %"compiler/source:Span" %t1596)
  store ptr %t1606, ptr %l795
  br label %bb323
bb323:
  %t1607 = load ptr, ptr %l795, !tbaa !29
  store ptr %t1607, ptr %l41, !tbaa !29
  %t1608 = load ptr, ptr %l0, !tbaa !29
  %t1610 = getelementptr %"compiler/check:Checker", ptr %t1608, i32 0, i32 43
  %t1612 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t1610)
  store i64 %t1612, ptr %l798
  br label %bb324
bb324:
  %t1613 = load i64, ptr %l798, !tbaa !24
  store i64 %t1613, ptr %l42, !tbaa !24
  %t1614 = load ptr, ptr %l0, !tbaa !29
  %t1616 = getelementptr %"compiler/check:Checker", ptr %t1614, i32 0, i32 43
  %t1617 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t1616, ptr %t1617)
  br label %bb325
bb325:
  %t1620 = load ptr, ptr %l0, !tbaa !29
  %t1622 = getelementptr %"compiler/check:Checker", ptr %t1620, i32 0, i32 43
  %t1623 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t1622, ptr %t1623)
  br label %bb326
bb326:
  %t1626 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1626, ptr %l805, !tbaa !29
  %t1627 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1627, ptr %l806
  %t1628 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1628, ptr %l807, !tbaa !23
  %t1629 = load i32, ptr %l39, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t1630
  %t1631 = getelementptr { i64, [3 x i64] }, ptr %t1630, i32 0, i32 0
  store i64 4, ptr %t1631
  %t1633 = insertvalue { i32, i32 } undef, i32 0, 0
  %t1635 = insertvalue { i32, i32 } %t1633, i32 %t1629, 1
  %t1636 = getelementptr { i64, [3 x i64] }, ptr %t1630, i32 0, i32 1
  store { i32, i32 } %t1635, ptr %t1636
  %t1637 = load { i64, [3 x i64] }, ptr %t1630
  %t1639 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store { i64, [3 x i64] } %t1637, ptr %t1639
  store ptr %t1639, ptr %l811, !tbaa !29
  %t1640 = load ptr, ptr %l0, !tbaa !29
  %t1642 = getelementptr %"compiler/check:Checker", ptr %t1640, i32 0, i32 43
  %t1643 = load i64, ptr %l42, !tbaa !24
  %t1646 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1642, i64 %t1643)
  store { i64, ptr } %t1646, ptr %l815
  br label %bb327
bb327:
  %t1647 = load ptr, ptr %l805, !tbaa !29
  %t1648 = load %"compiler/source:Span", ptr %l806
  %t1649 = load i32, ptr %l807, !tbaa !23
  %t1650 = load ptr, ptr %l811, !tbaa !29
  %t1651 = load { i64, ptr }, ptr %l815, !tbaa !27
  %t1652 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t1647, %"compiler/source:Span" %t1648, i32 %t1649, ptr %t1650, { i64, ptr } %t1651)
  store ptr %t1652, ptr %l816
  br label %bb328
bb328:
  %t1653 = load ptr, ptr %l816, !tbaa !29
  store ptr %t1653, ptr %l43, !tbaa !29
  %t1654 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t1656 = trunc i64 94 to i32
  %t1657 = icmp eq i32 %t1654, %t1656
  br i1 %t1657, label %bb329, label %bb330
bb329:
  %t1659 = load ptr, ptr %l0, !tbaa !29
  %t1660 = load %"compiler/source:Span", ptr %l1
  %t1661 = load ptr, ptr %l43, !tbaa !29
  %t1665 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t1659, %"compiler/source:Span" %t1660, ptr %t1661)
  store ptr %t1665, ptr %l823
  br label %bb331
bb330:
  %t1666 = load ptr, ptr %l43, !tbaa !29
  store ptr %t1666, ptr %l819, !tbaa !29
  br label %bb332
bb331:
  %t1668 = load ptr, ptr %l823, !tbaa !29
  store ptr %t1668, ptr %l819, !tbaa !29
  br label %bb332
bb332:
  %t1669 = load ptr, ptr %l819, !tbaa !29
  store ptr %t1669, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/ast:Path"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i1
  %l21 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i1
  %l38 = alloca %"compiler/source:Span"
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/ast:Path"
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i32
  %l60 = alloca i1
  %l62 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i1
  %l72 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l81 = alloca i32
  %l83 = alloca i64
  %l86 = alloca i1
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l92 = alloca i1
  %l94 = alloca i1
  %l97 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca i64
  %l105 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l115 = alloca i32
  %l118 = alloca { i64, ptr }
  %l124 = alloca %"compiler/source:Span"
  %l125 = alloca { i64, [3 x i64] }
  %l128 = alloca { i64, ptr }
  %l130 = alloca %"compiler/diagmsg:Msg"
  %l131 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l9, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t5)
  store ptr %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l11, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 4
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t15 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %v1, ptr %t12, ptr %t10, ptr %t11)
  store i32 %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = load i32, ptr %l15, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load i32, ptr %l2, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t21 = icmp ne i32 %t17, %t18
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l21, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l26
  br label %bb5
bb4:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb7
bb5:
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t38 = load i32, ptr %l26, !tbaa !23
  %t39 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t39, ptr %l27
  br label %bb6
bb6:
  %t40 = load i1, ptr %l27, !tbaa !21
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t41 = load i1, ptr %l19, !tbaa !21
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t42 = load i32, ptr %l2, !tbaa !23
  %t43 = insertvalue { i64, i32 } undef, i64 0, 0
  %t45 = insertvalue { i64, i32 } %t43, i32 %t42, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t45, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Path", ptr %t47, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = icmp slt i64 %t54, 2
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t61 = insertvalue { i64, i32 } %t59, i32 %t58, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t61, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Path", ptr %t63, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  store %"compiler/source:Span" %t66, ptr %l38
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Path", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l40, !tbaa !27
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = sub i64 %t71, 1
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l43, !tbaa !24
  %t76 = icmp sge i64 0, 0
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp sle i64 0, %t78
  br i1 %t79, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4)
  unreachable
bb16:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4)
  unreachable
bb18:
  %t85 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l42, !tbaa !24
  %t88 = getelementptr i32, ptr %t86, i64 0
  %t89 = sub i64 %t87, 0
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  %t92 = load %"compiler/source:Span", ptr %l38
  %t94 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v1, ptr %s0, %"compiler/source:Span" %t92, { i64, ptr } %t91)
  store %"compiler/ast:Path" %t94, ptr %l48
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4)
  unreachable
bb20:
  %t95 = load %"compiler/ast:Path", ptr %l48
  store %"compiler/ast:Path" %t95, ptr %l4
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  store ptr %t99, ptr %l50, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t100)
  store ptr %t102, ptr %l52
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t105 = getelementptr %"compiler/check:frame", ptr %t103, i32 0, i32 4
  %t106 = load ptr, ptr %l50, !tbaa !29
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t106, ptr %t105, ptr %l4)
  store i32 %t109, ptr %l56
  br label %bb22
bb22:
  %t110 = load i32, ptr %l56, !tbaa !23
  store i32 %t110, ptr %l5, !tbaa !23
  %t111 = load i32, ptr %l5, !tbaa !23
  %t112 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t115 = icmp eq i32 %t111, %t112
  br i1 %t115, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb27
bb24:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  store ptr %t120, ptr %l62, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l5, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l67
  br label %bb25
bb25:
  %t131 = load ptr, ptr %l62, !tbaa !29
  %t132 = load i32, ptr %l67, !tbaa !23
  %t133 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t131, i32 %t132)
  store i1 %t133, ptr %l68
  br label %bb26
bb26:
  %t134 = load i1, ptr %l68, !tbaa !21
  store i1 %t134, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t135 = load i1, ptr %l60, !tbaa !21
  br i1 %t135, label %bb28, label %bb29
bb28:
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t137 = insertvalue { i64, i32 } undef, i64 -1, 0
  %t139 = insertvalue { i64, i32 } %t137, i32 %t136, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t139, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/ast:Path", ptr %t141, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l72, !tbaa !27
  %t145 = load i64, ptr %l3, !tbaa !24
  %t147 = sub i64 %t145, 1
  %t149 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i32, ptr %t150, i64 %t147
  %t152 = load i32, ptr %t151, !tbaa !33
  store i32 %t152, ptr %l6, !tbaa !23
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l76, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %l5, !tbaa !23
  %t164 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l81
  br label %bb31
bb31:
  %t165 = load i32, ptr %l6, !tbaa !23
  %t166 = load ptr, ptr %l76, !tbaa !29
  %t167 = load i32, ptr %l81, !tbaa !23
  %t169 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %t166, i32 %t167, i32 %t165)
  store i64 %t169, ptr %l83
  br label %bb32
bb32:
  %t170 = load i64, ptr %l83, !tbaa !24
  store i64 %t170, ptr %l7, !tbaa !24
  %t171 = load i64, ptr %l7, !tbaa !24
  %t173 = icmp sge i64 %t171, 0
  br i1 %t173, label %bb33, label %bb34
bb33:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l6, !tbaa !23
  %t179 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t175, i32 %t176)
  store { i64, ptr } %t179, ptr %l89
  br label %bb35
bb34:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb37
bb35:
  %t180 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t180, ptr %l90, !tbaa !27
  %t181 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i8, ptr %t182, i64 0
  %t184 = load i8, ptr %t183, !tbaa !32
  %t186 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t184)
  store i1 %t186, ptr %l92
  br label %bb36
bb36:
  %t187 = load i1, ptr %l92, !tbaa !21
  %t188 = xor i1 %t187, true
  store i1 %t188, ptr %l86, !tbaa !21
  br label %bb37
bb37:
  %t190 = load i1, ptr %l86, !tbaa !21
  br i1 %t190, label %bb38, label %bb39
bb38:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  store ptr %t196, ptr %l97, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l5, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l102
  br label %bb40
bb39:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb43
bb40:
  %t207 = load ptr, ptr %l97, !tbaa !29
  %t208 = load i32, ptr %l102, !tbaa !23
  %t209 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t207, i32 %t208)
  store i64 %t209, ptr %l103
  br label %bb41
bb41:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t210)
  store ptr %t212, ptr %l105
  br label %bb42
bb42:
  %t213 = load ptr, ptr %l105, !tbaa !29
  %t215 = getelementptr %"compiler/check:frame", ptr %t213, i32 0, i32 1
  %t216 = load i64, ptr %t215, !tbaa !24
  %t217 = load i64, ptr %l103, !tbaa !24
  %t219 = icmp ne i64 %t217, %t216
  store i1 %t219, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t221 = load i1, ptr %l94, !tbaa !21
  br i1 %t221, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s4
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/load:Loader", ptr %t228, i32 0, i32 4
  %t231 = load ptr, ptr %t230, !tbaa !29
  store ptr %t231, ptr %l112, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l113, !tbaa !29
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr %"compiler/ast:Path", ptr %t233, i32 0, i32 0
  %t236 = getelementptr %"compiler/source:Span", ptr %t235, i32 0, i32 1
  %t237 = load i32, ptr %t236, !tbaa !23
  store i32 %t237, ptr %l115, !tbaa !23
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i32, ptr %l6, !tbaa !23
  %t242 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t238, i32 %t239)
  store { i64, ptr } %t242, ptr %l118
  br label %bb46
bb45:
  br label %bb52
bb46:
  %t243 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  %t246 = trunc i64 %t244 to i32
  %t247 = load i32, ptr %l115, !tbaa !23
  %t249 = sub i32 %t247, %t246
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr %"compiler/ast:Path", ptr %t250, i32 0, i32 0
  %t253 = getelementptr %"compiler/source:Span", ptr %t252, i32 0, i32 1
  %t254 = load i32, ptr %t253, !tbaa !23
  %t257 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t249, i32 %t254)
  store %"compiler/source:Span" %t257, ptr %l124
  br label %bb47
bb47:
  %t258 = load ptr, ptr %l113, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l124
  %t260 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t258, %"compiler/source:Span" %t259)
  store { i64, [3 x i64] } %t260, ptr %l125
  br label %bb48
bb48:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i32, ptr %l6, !tbaa !23
  %t265 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s4, ptr %t261, i32 %t262)
  store { i64, ptr } %t265, ptr %l128
  br label %bb49
bb49:
  %t266 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t266, 0
  %t268 = extractvalue { i64, ptr } %t266, 1
  %t269 = mul i64 %t267, 1
  %t270 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t269)
  call void @llvm.memcpy.p0.p0.i64(ptr %t270, ptr %t268, i64 %t269, i1 false)
  %t271 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  %t274 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordIsPrivate(ptr %s4, ptr %v0, { i64, ptr } %t272)
  store %"compiler/diagmsg:Msg" %t274, ptr %l130
  br label %bb50
bb50:
  %t275 = load ptr, ptr %l112, !tbaa !29
  %t276 = load { i64, [3 x i64] }, ptr %l125
  %t277 = load %"compiler/diagmsg:Msg", ptr %l130
  %t278 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t275, { i64, [3 x i64] } %t276, %"compiler/diagmsg:Msg" %t277)
  store i64 %t278, ptr %l131
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb52:
  %t279 = load i64, ptr %l7, !tbaa !24
  %t280 = load i32, ptr %l5, !tbaa !23
  %t282 = insertvalue { i64, i32 } undef, i64 %t279, 0
  %t284 = insertvalue { i64, i32 } %t282, i32 %t280, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, i32 } %t284, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i32 }, ptr %rv
  ret { i64, i32 } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eevalOnly(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca ptr
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 1
  %t7 = load { i64, [2 x i64] }, ptr %t6
  %t11 = extractvalue { i64, [2 x i64] } %t7, 0
  %t12 = icmp eq i64 %t11, 7
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a993cda7425ca237_a63aa9ad7bf8dd03)
  unreachable
bb10:
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFound(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca %"compiler/effects:Facts"
  %l16 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca %"compiler/effects:Facts"
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:factRead", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call i32 @compiler_2feffects_2eFact_2eNamed(ptr %v1, { i64, ptr } %t4)
  store i32 %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load i32, ptr %l5, !range !{i32 0, i32 11}
  store i32 %t7, ptr %l2
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/check:factRead", ptr %t8, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp sge i64 %t11, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t15)
  store ptr %t17, ptr %l10
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/check:factRead", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t24 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %t22, i64 %t21)
  store %"compiler/effects:Facts" %t24, ptr %l13
  br label %bb5
bb5:
  %t25 = load i32, ptr %l2, !range !{i32 0, i32 11}
  %t28 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %s1, ptr %l13, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t30)
  store ptr %t32, ptr %l18
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 24
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/check:factRead", ptr %t36, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t35, i64 %t39)
  %t43 = extractvalue { i32, i64 } %t42, 1
  %t44 = extractvalue { i32, i64 } %t42, 0
  store i32 %t44, ptr %l25
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb10, label %ok.46, !prof !99
ok.46:
  store i64 %t43, ptr %l24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %l19, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l18, !tbaa !29
  %t49 = load i64, ptr %l19, !tbaa !24
  %t50 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/effects:Facts" %t50, ptr %l26
  br label %bb13
bb13:
  %t51 = load i32, ptr %l2, !range !{i32 0, i32 11}
  %t54 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %s0, ptr %l26, i32 %t51)
  store i1 %t54, ptr %l29
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsDrop(ptr %v0, ptr %a0, %"compiler/check:factsMark" %a1) #0 {
entry:
  %l1 = alloca %"compiler/check:factsMark"
  %l2 = alloca ptr
  %l4 = alloca ptr
  store %"compiler/check:factsMark" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 50
  %t8 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eTru_Hf06d897493074497da237c73fecd44cc(ptr %v0, ptr %t7, i64 %t9)
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 46
  %t15 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eTrunc_H529a97138f08f267b035acfeb838c9e0(ptr %v0, ptr %t14, i64 %t16)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 62
  %t22 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eTrun_Ha6093229c720e1f7d9f4f9cafee6beaf(ptr %v0, ptr %t21, i64 %t23)
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsUndecided(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:factRead"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/check:factRead"
  %l17 = alloca i1
  %l24 = alloca ptr
  %l30 = alloca { i64, [3 x i64] }
  %l32 = alloca %"compiler/diagmsg:Msg"
  %l33 = alloca i64
  %s2 = alloca %olang.scope
  %t55 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 67
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/check:factRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eAt_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/check:factRead" %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load %"compiler/check:factRead", ptr %l14
  store %"compiler/check:factRead" %t20, ptr %l3
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFound(ptr %v0, ptr %s2, ptr %t21, ptr %l3)
  store i1 %t24, ptr %l17
  br label %bb7
bb7:
  %t25 = load i1, ptr %l17, !tbaa !21
  %t27 = getelementptr %"compiler/check:factRead", ptr %l3, i32 0, i32 3
  %t28 = load i1, ptr %t27, !tbaa !21
  %t31 = icmp eq i1 %t25, %t28
  br i1 %t31, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 4
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l24, !tbaa !29
  %t43 = getelementptr %"compiler/check:factRead", ptr %l3, i32 0, i32 4
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = getelementptr %"compiler/check:factRead", ptr %l3, i32 0, i32 5
  %t46 = getelementptr %"compiler/source:Span", ptr %t45, i32 0, i32 0
  %t47 = load i32, ptr %t46, !tbaa !23
  %t49 = sext i32 %t47 to i64
  %t50 = getelementptr %"compiler/check:factRead", ptr %l3, i32 0, i32 5
  %t51 = getelementptr %"compiler/source:Span", ptr %t50, i32 0, i32 1
  %t52 = load i32, ptr %t51, !tbaa !23
  %t54 = sext i32 %t52 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 0
  store i64 3, ptr %t56
  %t58 = insertvalue { i64, i64, i64 } undef, i64 %t44, 0
  %t60 = insertvalue { i64, i64, i64 } %t58, i64 %t49, 1
  %t62 = insertvalue { i64, i64, i64 } %t60, i64 %t54, 2
  %t63 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 1
  store { i64, i64, i64 } %t62, ptr %t63
  %t64 = load { i64, [3 x i64] }, ptr %t55
  store { i64, [3 x i64] } %t64, ptr %l30
  %t65 = getelementptr %"compiler/check:factRead", ptr %l3, i32 0, i32 6
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactUndecided(ptr %v0, ptr %v0, { i64, ptr } %t66)
  store %"compiler/diagmsg:Msg" %t68, ptr %l32
  br label %bb11
bb11:
  %t69 = load ptr, ptr %l24, !tbaa !29
  %t70 = load { i64, [3 x i64] }, ptr %l30
  %t71 = load %"compiler/diagmsg:Msg", ptr %l32
  %t72 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t69, { i64, [3 x i64] } %t70, %"compiler/diagmsg:Msg" %t71)
  store i64 %t72, ptr %l33
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l2, !tbaa !24
  br label %bb1
bb14:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 20
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 20
  store ptr %t11, ptr %l6, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 20
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l9
  br label %bb4
bb3:
  %t17 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t19 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t17, 1
  call void @__olang_check_failed_text(ptr @olang_loc_fd7c4531a6f9112_8820f62eca2e3ad6, { i64, ptr } %t20)
  unreachable
bb4:
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = sub i64 %t21, 1
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %t23, i64 %t22)
  store ptr %t25, ptr %l11
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l11, !tbaa !29
  store ptr %t26, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHolds(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 106
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4, i1 true)
  br label %bb1
bb1:
  %t9 = xor i1 %a3, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 6
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %s0, ptr %t16, i64 %t17)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l16
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb6, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l15
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l17, !tbaa !24
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l17, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t38, ptr %l10, !tbaa !27
  br label %bb8
bb6:
  br label %bb7
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t39, ptr %l10, !tbaa !27
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l21, !tbaa !24
  %t43 = load i64, ptr %l21, !tbaa !24
  %t44 = mul i64 %t43, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  %t46 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l22, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l21, !tbaa !24
  %t53 = mul i64 %t52, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t49, ptr %t51, i64 %t53, i1 false)
  %t54 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t54, ptr %l4, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %v1, { i64, ptr } %t55, { i64, ptr } %t56)
  store i1 %t60, ptr %l26
  br label %bb9
bb9:
  %t61 = load i1, ptr %l26, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 6
  store ptr %t69, ptr %l30, !tbaa !29
  %t70 = load i64, ptr %l1, !tbaa !24
  store i64 %t70, ptr %l31, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t73, ptr %l33
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t74 = load i1, ptr %l33, !tbaa !21
  br i1 %t74, label %bb13, label %bb14
bb13:
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t75, ptr %l34, !tbaa !27
  br label %bb15
bb14:
  %t78 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t78, 1
  %t82 = extractvalue { i64, ptr } %t78, 0
  %t83 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t87 = extractvalue { i64, ptr } %t79, 1
  %t88 = extractvalue { i64, ptr } %t79, 0
  %t89 = add i64 %t85, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t81, i64 %t82)
  %t91 = getelementptr i8, ptr %t90, i64 %t82
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = getelementptr i8, ptr %t91, i64 %t84
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t90, 1
  store { i64, ptr } %t94, ptr %l34, !tbaa !27
  br label %bb15
bb15:
  %t96 = load ptr, ptr %l30, !tbaa !29
  %t97 = load i64, ptr %l31, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l34, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H7dde68908c71339667eba96ae7e6565c(ptr %v0, ptr %t96, i64 %t97, { i64, ptr } %t98)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlace(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l15 = alloca i64
  %l22 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i1
  %l32 = alloca i1
  %l37 = alloca i64
  %l41 = alloca i1
  %l44 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %t1, i32 %a3)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t10, i32 %a1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, i64 %a2)
  store i64 %t16, ptr %l15
  br label %bb5
bb5:
  %t17 = load i64, ptr %l15, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t26, i64 %t27)
  store i32 %t30, ptr %l22
  br label %bb9
bb9:
  %t31 = load i32, ptr %l22, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l27
  br label %bb10
bb10:
  %t42 = load i32, ptr %l27, !tbaa !23
  store i32 %t42, ptr %l6, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l6, !tbaa !23
  %t47 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l30
  br label %bb11
bb11:
  %t48 = load i1, ptr %l30, !tbaa !21
  %t49 = xor i1 %t48, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb15
bb13:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t56, i32 %t57)
  store i64 %t60, ptr %l37
  br label %bb14
bb14:
  %t61 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t62 = load i64, ptr %l37, !tbaa !24
  %t64 = and i64 %t62, %t61
  %t66 = icmp eq i64 %t64, 0
  store i1 %t66, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l44, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  %t81 = load i32, ptr %l5, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l49
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l44, !tbaa !29
  %t86 = load i32, ptr %l49, !tbaa !23
  %t87 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t85, i32 %t86)
  store { i64, ptr } %t87, ptr %l50
  br label %bb19
bb19:
  %t88 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  %t91 = icmp sgt i64 %t89, 0
  store i1 %t91, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t93 = load i1, ptr %l41, !tbaa !21
  br i1 %t93, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t95 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t95, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i64
  %l17 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l52 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l62 = alloca %"compiler/generic:varRow"
  %l64 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb2
bb2:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t7, i64 %t8)
  store i64 %t11, ptr %l16
  br label %bb3
bb3:
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t12)
  store i64 %t13, ptr %l17
  br label %bb4
bb4:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  store ptr %t20, ptr %l20, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t24, i64 %t25)
  store i32 %t28, ptr %l24
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = load i32, ptr %l24, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l25
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb12
bb9:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %l31, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l31, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l10, !tbaa !24
  store ptr %l2, ptr %l52, !tbaa !29
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = icmp eq i64 %t83, 0
  br i1 %t85, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb19
bb18:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l55, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t87, { i64, ptr } %t88)
  br label %bb20
bb20:
  store ptr %l2, ptr %l56, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l57, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t94 = load i64, ptr %l3, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t99 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t93, i64 %t94, i64 %t95)
  store %"compiler/generic:varRow" %t99, ptr %l62
  br label %bb21
bb21:
  %t100 = getelementptr %"compiler/generic:varRow", ptr %l62, i32 0, i32 1
  %t101 = load i32, ptr %t100, !tbaa !23
  %t102 = load ptr, ptr %l57, !tbaa !29
  %t104 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t102, i32 %t101)
  store { i64, ptr } %t104, ptr %l64
  br label %bb22
bb22:
  %t105 = load ptr, ptr %l56, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l64, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t105, { i64, ptr } %t106)
  br label %bb23
bb23:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb24
bb24:
  store ptr %l2, ptr %l66, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t109, ptr %l68, !tbaa !27
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  %t118 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t108, i32 %t115)
  store { i64, ptr } %t118, ptr %l71
  br label %bb25
bb25:
  %t119 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  %t121 = extractvalue { i64, ptr } %t119, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t126 = load ptr, ptr %l66, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t126, { i64, ptr } %t125)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb27:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l9, !tbaa !24
  br label %bb13
bb28:
  %t133 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t133, ptr %l76
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t134 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l17 = alloca ptr
  %l19 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2, ptr %l5
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t3, ptr %l6, !tbaa !23
  store i32 23, ptr %l7
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load %"compiler/source:Span", ptr %l1
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t4, %"compiler/source:Span" %t5, ptr %a2)
  store ptr %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l12, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l13
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t13)
  store i32 %t15, ptr %l15
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l13
  %t19 = load i32, ptr %l15, !tbaa !23
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t17, %"compiler/source:Span" %t18, i32 %t19, i64 %a3)
  store ptr %t21, ptr %l17
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l5
  %t25 = load i32, ptr %l6, !tbaa !23
  %t26 = load i32, ptr %l7, !range !{i32 0, i32 51}
  %t27 = load ptr, ptr %l11, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t23, %"compiler/source:Span" %t24, i32 %t25, i32 %t26, ptr %t27, ptr %t22)
  store ptr %t29, ptr %l19
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l19, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeTables(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca %"compiler/generic:AnyTable"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i1
  %l25 = alloca i64
  %l31 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l60 = alloca %"compiler/generic:AnyTable"
  %l62 = alloca %"compiler/generic:AnyTable"
  %l66 = alloca { i64, ptr }
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l103 = alloca i64
  %l104 = alloca i1
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 61
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l18
  br label %bb1
bb1:
  %t9 = load i64, ptr %l18, !tbaa !24
  %t10 = icmp eq i64 %t9, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb5
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 4
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l25
  br label %bb4
bb4:
  %t24 = load i64, ptr %l25, !tbaa !24
  %t25 = icmp sgt i64 %t24, 0
  store i1 %t25, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l20, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 9
  store ptr null, ptr %t30, !tbaa !29
  store i64 0, ptr %l1, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 61
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l31
  br label %bb9
bb9:
  %t39 = load i64, ptr %l31, !tbaa !24
  store i64 %t39, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb15
bb12:
  %t50 = load i64, ptr %l2, !tbaa !24
  %t51 = load i64, ptr %l1, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l3, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l38, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb14
bb14:
  %t66 = load i64, ptr %l38, !tbaa !24
  store i64 %t66, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t67 = load i64, ptr %l35, !tbaa !24
  store i64 %t67, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb42
bb18:
  br label %bb19
bb19:
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load i64, ptr %l5, !tbaa !24
  %t78 = load i64, ptr %l3, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 61
  %t95 = call %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %v0, ptr %t91, i64 %t84)
  store %"compiler/generic:AnyTable" %t95, ptr %l60
  br label %bb20
bb20:
  %t97 = call %"compiler/generic:AnyTable" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aAnyTable(ptr %s3, ptr %l60)
  store %"compiler/generic:AnyTable" %t97, ptr %l62
  br label %bb21
bb21:
  %t98 = load %"compiler/generic:AnyTable", ptr %l62
  store %"compiler/generic:AnyTable" %t98, ptr %l7
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = getelementptr %"compiler/generic:AnyTable", ptr %l7, i32 0, i32 1
  %t104 = load i32, ptr %t103, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t102, i32 %t104)
  store { i64, ptr } %t107, ptr %l66
  br label %bb22
bb22:
  %t108 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t108, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t109 = getelementptr %"compiler/generic:AnyTable", ptr %l7, i32 0, i32 5
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %t109)
  store i64 %t111, ptr %l68
  br label %bb23
bb23:
  %t112 = load i64, ptr %l68, !tbaa !24
  store i64 %t112, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = icmp sgt i64 %t113, %t114
  br i1 %t117, label %bb24, label %bb25
bb24:
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = icmp sgt i64 %t119, 0
  br i1 %t121, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb29
bb26:
  %t123 = load i64, ptr %l10, !tbaa !24
  %t124 = load i64, ptr %l9, !tbaa !24
  %t127 = sub i64 %t123, %t124
  %t128 = load i64, ptr %l11, !tbaa !24
  %t131 = add i64 %t127, %t128
  %t133 = sub i64 %t131, 1
  %t134 = load i64, ptr %l11, !tbaa !24
  %t137 = sdiv i64 %t133, %t134
  store i64 %t137, ptr %l75, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb28
bb28:
  %t139 = load i64, ptr %l75, !tbaa !24
  store i64 %t139, ptr %l72, !tbaa !24
  br label %bb29
bb29:
  %t140 = load i64, ptr %l72, !tbaa !24
  store i64 %t140, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb30
bb30:
  %t141 = load i64, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t149 = load i64, ptr %l9, !tbaa !24
  %t150 = load i64, ptr %l13, !tbaa !24
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = mul i64 %t150, %t151
  %t157 = add i64 %t149, %t154
  store i64 %t157, ptr %l14, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l93, !tbaa !29
  store ptr %l7, ptr %l94, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t160, ptr %l95, !tbaa !27
  %t161 = load i64, ptr %l14, !tbaa !24
  %t162 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t167 = srem i64 %t161, %t164
  %t169 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr %"compiler/generic:AnySlot", ptr %t170, i64 %t167
  store ptr %t171, ptr %l100, !tbaa !29
  %t172 = getelementptr %"compiler/generic:AnyTable", ptr %l7, i32 0, i32 5
  %t173 = load i64, ptr %l14, !tbaa !24
  %t176 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %t172, i64 %t173)
  store i64 %t176, ptr %l103
  br label %bb34
bb34:
  %t177 = load ptr, ptr %l93, !tbaa !29
  %t178 = load ptr, ptr %l94, !tbaa !29
  %t179 = load ptr, ptr %l100, !tbaa !29
  %t180 = load i64, ptr %l103, !tbaa !24
  %t181 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeSlot(ptr %v0, ptr %s3, ptr %v0, ptr %t177, ptr %t178, ptr %t179, i64 %t180)
  store i1 %t181, ptr %l104
  br label %bb35
bb35:
  %t182 = load i1, ptr %l104, !tbaa !21
  br i1 %t182, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t183 = load i64, ptr %l13, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l13, !tbaa !24
  br label %bb30
bb40:
  call void @__olang_scope_close(ptr %s3)
  br label %bb41
bb41:
  %t187 = load i64, ptr %l5, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l5, !tbaa !24
  br label %bb16
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsMark" %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca %"compiler/check:factsMark"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l27 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l52 = alloca { i64, ptr }
  %l56 = alloca %"compiler/check:nullNarrow"
  %l58 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i64
  %l65 = alloca %"compiler/check:nullNarrow"
  %l67 = alloca %"compiler/check:nullNarrow"
  %l73 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l98 = alloca { i64, ptr }
  %l102 = alloca %"compiler/check:narrowed"
  %l104 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i64
  %l111 = alloca %"compiler/check:narrowed"
  %l113 = alloca %"compiler/check:narrowed"
  %l119 = alloca i64
  %l123 = alloca i64
  %l126 = alloca i64
  %l144 = alloca { i64, ptr }
  %l148 = alloca %"compiler/check:errNarrow"
  %l150 = alloca i1
  %l152 = alloca ptr
  %l153 = alloca i64
  %l157 = alloca %"compiler/check:errNarrow"
  %l159 = alloca %"compiler/check:errNarrow"
  store %"compiler/check:factsMark" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l23
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l23, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 50
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l27
  br label %bb2
bb2:
  %t13 = load i64, ptr %l27, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb8
bb5:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l34, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l34, !tbaa !24
  store i64 %t40, ptr %l31, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l31, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  br label %bb22
bb11:
  br label %bb12
bb12:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t60, ptr %l52, !tbaa !27
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/check:frame", ptr %t61, i32 0, i32 50
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store %"compiler/check:nullNarrow" %t67, ptr %l56
  br label %bb13
bb13:
  %t68 = getelementptr %"compiler/check:nullNarrow", ptr %l56, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t72 = call i1 @compiler_2fcheck_2eassignsName(ptr %v1, ptr %v0, { i64, ptr } %t70, { i64, ptr } %t69)
  store i1 %t72, ptr %l58
  br label %bb14
bb14:
  %t73 = load i1, ptr %l58, !tbaa !21
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/check:frame", ptr %t74, i32 0, i32 50
  store ptr %t76, ptr %l60, !tbaa !29
  %t77 = load i64, ptr %l9, !tbaa !24
  store i64 %t77, ptr %l61, !tbaa !24
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t80 = getelementptr %"compiler/check:frame", ptr %t78, i32 0, i32 50
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  store %"compiler/check:nullNarrow" %t84, ptr %l65
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t85 = load i64, ptr @G_2ecompiler_2fcheck_2eWhyAssigned, !tbaa !24
  %t86 = load %"compiler/check:nullNarrow", ptr %l65
  %t88 = call %"compiler/check:nullNarrow" @compiler_2fcheck_2ecompiler_2fcheck_3anullNarrow_2eKilled(ptr %v0, ptr %v0, %"compiler/check:nullNarrow" %t86, i64 %t85)
  store %"compiler/check:nullNarrow" %t88, ptr %l67
  br label %bb18
bb18:
  %t89 = load ptr, ptr %l60, !tbaa !29
  %t90 = load i64, ptr %l61, !tbaa !24
  %t91 = load %"compiler/check:nullNarrow", ptr %l67
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v0, ptr %t89, i64 %t90, %"compiler/check:nullNarrow" %t91)
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb9
bb22:
  %t96 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 1
  %t97 = load i64, ptr %t96, !tbaa !24
  store i64 %t97, ptr %l10, !tbaa !24
  %t99 = load ptr, ptr %l3, !tbaa !29
  %t101 = getelementptr %"compiler/check:frame", ptr %t99, i32 0, i32 46
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t101)
  store i64 %t103, ptr %l73
  br label %bb23
bb23:
  %t104 = load i64, ptr %l73, !tbaa !24
  store i64 %t104, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = icmp sgt i64 %t105, %t106
  br i1 %t109, label %bb24, label %bb25
bb24:
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb29
bb26:
  %t115 = load i64, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l10, !tbaa !24
  %t119 = sub i64 %t115, %t116
  %t120 = load i64, ptr %l12, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t125 = sub i64 %t123, 1
  %t126 = load i64, ptr %l12, !tbaa !24
  %t129 = sdiv i64 %t125, %t126
  store i64 %t129, ptr %l80, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb28
bb28:
  %t131 = load i64, ptr %l80, !tbaa !24
  store i64 %t131, ptr %l77, !tbaa !24
  br label %bb29
bb29:
  %t132 = load i64, ptr %l77, !tbaa !24
  store i64 %t132, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb30
bb30:
  %t133 = load i64, ptr %l14, !tbaa !24
  %t134 = load i64, ptr %l13, !tbaa !24
  %t137 = icmp slt i64 %t133, %t134
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb31, label %bb32
bb31:
  br label %bb43
bb32:
  br label %bb33
bb33:
  %t141 = load i64, ptr %l10, !tbaa !24
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l12, !tbaa !24
  %t146 = mul i64 %t142, %t143
  %t149 = add i64 %t141, %t146
  store i64 %t149, ptr %l15, !tbaa !24
  %t151 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t151, ptr %l98, !tbaa !27
  %t152 = load ptr, ptr %l3, !tbaa !29
  %t154 = getelementptr %"compiler/check:frame", ptr %t152, i32 0, i32 46
  %t155 = load i64, ptr %l15, !tbaa !24
  %t158 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v0, ptr %t154, i64 %t155)
  store %"compiler/check:narrowed" %t158, ptr %l102
  br label %bb34
bb34:
  %t159 = getelementptr %"compiler/check:narrowed", ptr %l102, i32 0, i32 5
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t163 = call i1 @compiler_2fcheck_2eassignsName(ptr %v1, ptr %v0, { i64, ptr } %t161, { i64, ptr } %t160)
  store i1 %t163, ptr %l104
  br label %bb35
bb35:
  %t164 = load i1, ptr %l104, !tbaa !21
  br i1 %t164, label %bb36, label %bb37
bb36:
  %t165 = load ptr, ptr %l3, !tbaa !29
  %t167 = getelementptr %"compiler/check:frame", ptr %t165, i32 0, i32 46
  store ptr %t167, ptr %l106, !tbaa !29
  %t168 = load i64, ptr %l15, !tbaa !24
  store i64 %t168, ptr %l107, !tbaa !24
  %t169 = load ptr, ptr %l3, !tbaa !29
  %t171 = getelementptr %"compiler/check:frame", ptr %t169, i32 0, i32 46
  %t172 = load i64, ptr %l15, !tbaa !24
  %t175 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v0, ptr %t171, i64 %t172)
  store %"compiler/check:narrowed" %t175, ptr %l111
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t176 = load i64, ptr @G_2ecompiler_2fcheck_2eWhyAssigned, !tbaa !24
  %t177 = load %"compiler/check:narrowed", ptr %l111
  %t179 = call %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(ptr %v0, ptr %v0, %"compiler/check:narrowed" %t177, i64 %t176)
  store %"compiler/check:narrowed" %t179, ptr %l113
  br label %bb39
bb39:
  %t180 = load ptr, ptr %l106, !tbaa !29
  %t181 = load i64, ptr %l107, !tbaa !24
  %t182 = load %"compiler/check:narrowed", ptr %l113
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %v0, ptr %t180, i64 %t181, %"compiler/check:narrowed" %t182)
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t183 = load i64, ptr %l14, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l14, !tbaa !24
  br label %bb30
bb43:
  %t187 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 2
  %t188 = load i64, ptr %t187, !tbaa !24
  store i64 %t188, ptr %l16, !tbaa !24
  %t190 = load ptr, ptr %l3, !tbaa !29
  %t192 = getelementptr %"compiler/check:frame", ptr %t190, i32 0, i32 62
  %t194 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t192)
  store i64 %t194, ptr %l119
  br label %bb44
bb44:
  %t195 = load i64, ptr %l119, !tbaa !24
  store i64 %t195, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t196 = load i64, ptr %l17, !tbaa !24
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = icmp sgt i64 %t196, %t197
  br i1 %t200, label %bb45, label %bb46
bb45:
  %t202 = load i64, ptr %l18, !tbaa !24
  %t204 = icmp sgt i64 %t202, 0
  br i1 %t204, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb50
bb47:
  %t206 = load i64, ptr %l17, !tbaa !24
  %t207 = load i64, ptr %l16, !tbaa !24
  %t210 = sub i64 %t206, %t207
  %t211 = load i64, ptr %l18, !tbaa !24
  %t214 = add i64 %t210, %t211
  %t216 = sub i64 %t214, 1
  %t217 = load i64, ptr %l18, !tbaa !24
  %t220 = sdiv i64 %t216, %t217
  store i64 %t220, ptr %l126, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb49
bb49:
  %t222 = load i64, ptr %l126, !tbaa !24
  store i64 %t222, ptr %l123, !tbaa !24
  br label %bb50
bb50:
  %t223 = load i64, ptr %l123, !tbaa !24
  store i64 %t223, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb51
bb51:
  %t224 = load i64, ptr %l20, !tbaa !24
  %t225 = load i64, ptr %l19, !tbaa !24
  %t228 = icmp slt i64 %t224, %t225
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb52, label %bb53
bb52:
  br label %bb64
bb53:
  br label %bb54
bb54:
  %t232 = load i64, ptr %l16, !tbaa !24
  %t233 = load i64, ptr %l20, !tbaa !24
  %t234 = load i64, ptr %l18, !tbaa !24
  %t237 = mul i64 %t233, %t234
  %t240 = add i64 %t232, %t237
  store i64 %t240, ptr %l21, !tbaa !24
  %t242 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t242, ptr %l144, !tbaa !27
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t245 = getelementptr %"compiler/check:frame", ptr %t243, i32 0, i32 62
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %v0, ptr %t245, i64 %t246)
  store %"compiler/check:errNarrow" %t249, ptr %l148
  br label %bb55
bb55:
  %t250 = getelementptr %"compiler/check:errNarrow", ptr %l148, i32 0, i32 0
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t254 = call i1 @compiler_2fcheck_2eassignsName(ptr %v1, ptr %v0, { i64, ptr } %t252, { i64, ptr } %t251)
  store i1 %t254, ptr %l150
  br label %bb56
bb56:
  %t255 = load i1, ptr %l150, !tbaa !21
  br i1 %t255, label %bb57, label %bb58
bb57:
  %t256 = load ptr, ptr %l3, !tbaa !29
  %t258 = getelementptr %"compiler/check:frame", ptr %t256, i32 0, i32 62
  store ptr %t258, ptr %l152, !tbaa !29
  %t259 = load i64, ptr %l21, !tbaa !24
  store i64 %t259, ptr %l153, !tbaa !24
  %t260 = load ptr, ptr %l3, !tbaa !29
  %t262 = getelementptr %"compiler/check:frame", ptr %t260, i32 0, i32 62
  %t263 = load i64, ptr %l21, !tbaa !24
  %t266 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %v0, ptr %t262, i64 %t263)
  store %"compiler/check:errNarrow" %t266, ptr %l157
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t267 = load i64, ptr @G_2ecompiler_2fcheck_2eWhyAssigned, !tbaa !24
  %t268 = load %"compiler/check:errNarrow", ptr %l157
  %t270 = call %"compiler/check:errNarrow" @compiler_2fcheck_2ecompiler_2fcheck_3aerrNarrow_2eKilled(ptr %v0, ptr %v0, %"compiler/check:errNarrow" %t268, i64 %t267)
  store %"compiler/check:errNarrow" %t270, ptr %l159
  br label %bb60
bb60:
  %t271 = load ptr, ptr %l152, !tbaa !29
  %t272 = load i64, ptr %l153, !tbaa !24
  %t273 = load %"compiler/check:errNarrow", ptr %l159
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eSetA_H34a7475a189e9b126454728216b32261(ptr %v0, ptr %v0, ptr %t271, i64 %t272, %"compiler/check:errNarrow" %t273)
  br label %bb61
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t274 = load i64, ptr %l20, !tbaa !24
  %t276 = add i64 %t274, 1
  store i64 %t276, ptr %l20, !tbaa !24
  br label %bb51
bb64:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/check:laneNode"
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca { i64, i64, i64, i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %lp19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i64
  %l22 = alloca { i64, i64, i64 }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca { i64, i64, i64, i64, i64 }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i64
  %l41 = alloca %"compiler/source:Span"
  %l45 = alloca %"compiler/check:laneNode"
  %l52 = alloca ptr
  %l55 = alloca i1
  %l56 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i64
  %l68 = alloca ptr
  %l71 = alloca i64
  %l75 = alloca %"compiler/check:laneVals"
  %l80 = alloca ptr
  %l81 = alloca i32
  %l84 = alloca ptr
  %l86 = alloca i32
  %l88 = alloca i32
  %l89 = alloca i32
  %l93 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i1
  %l101 = alloca ptr
  %l105 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca i32
  %l108 = alloca i32
  %l112 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l116 = alloca i32
  %l118 = alloca ptr
  %l121 = alloca %"compiler/typed:Make"
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l137 = alloca i32
  %l139 = alloca ptr
  %l140 = alloca { i64, i64, i64, i64, i64 }
  %l146 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l148 = alloca i64
  %l149 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca i32
  %l163 = alloca ptr
  %l167 = alloca ptr
  %l169 = alloca %"compiler/typed:Elem"
  %l172 = alloca ptr
  %l173 = alloca %"compiler/source:Span"
  %l174 = alloca ptr
  %l179 = alloca ptr
  %l192 = alloca ptr
  %l198 = alloca i32
  %l201 = alloca i64
  %l205 = alloca { i64, i64, i64 }
  %l209 = alloca ptr
  %l210 = alloca %"compiler/source:Span"
  %l214 = alloca ptr
  %l215 = alloca { i64, i64, i64, i64, i64 }
  %l221 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca i64
  %l224 = alloca ptr
  %l228 = alloca ptr
  %l229 = alloca ptr
  %l230 = alloca ptr
  %l231 = alloca %"compiler/source:Span"
  %l236 = alloca ptr
  %l251 = alloca ptr
  %l252 = alloca %"compiler/source:Span"
  %l253 = alloca i32
  %l257 = alloca ptr
  %l258 = alloca ptr
  %l259 = alloca ptr
  %l263 = alloca i32
  %l265 = alloca %"compiler/typed:Collect"
  %l272 = alloca ptr
  %l273 = alloca %"compiler/source:Span"
  %l278 = alloca ptr
  %l280 = alloca %"compiler/source:Span"
  %l285 = alloca i32
  %l289 = alloca { i64, ptr }
  %l291 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t196 = alloca { i64, [5 x i64] }, align 8
  %t216 = alloca { i64, [3 x i64] }, align 8
  %t291 = alloca { i64, [4 x i64] }, align 8
  %t316 = alloca { i64, [4 x i64] }, align 8
  %t342 = alloca { i64, [3 x i64] }, align 8
  %t463 = alloca { i64, [3 x i64] }, align 8
  %t527 = alloca { i64, [5 x i64] }, align 8
  %t585 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l36
  br label %bb1
bb1:
  %t6 = load i64, ptr %l36, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t13)
  store %"compiler/source:Span" %t15, ptr %l41
  br label %bb5
bb5:
  %t16 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t16, ptr %l3
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 46
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/check:laneNode" %t23, ptr %l45
  br label %bb6
bb6:
  %t24 = load %"compiler/check:laneNode", ptr %l45
  store %"compiler/check:laneNode" %t24, ptr %l4
  %t25 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t30 = icmp eq i32 %t26, %t27
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l3
  %t34 = load i64, ptr %l2, !tbaa !24
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v2, ptr %t32, %"compiler/source:Span" %t33, i64 %t34)
  store ptr %t38, ptr %l52
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t39 = load ptr, ptr %l52, !tbaa !29
  store ptr %t39, ptr %rv
  br label %ret
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t42 = load i32, ptr %t41, !tbaa !23
  %t45 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t40, i32 %t42)
  store i1 %t45, ptr %l55
  br label %bb11
bb11:
  %t46 = load i1, ptr %l55, !tbaa !21
  br i1 %t46, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb15
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t54 = load i32, ptr %t53, !tbaa !23
  %t57 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t52, i32 %t54)
  store i1 %t57, ptr %l61
  br label %bb14
bb14:
  %t58 = load i1, ptr %l61, !tbaa !21
  store i1 %t58, ptr %l56, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l56, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l62, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t61, ptr %l63
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0)
  store %"compiler/diagmsg:Msg" %t62, ptr %l64
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t63 = load ptr, ptr %l62, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l63
  %t65 = load %"compiler/diagmsg:Msg", ptr %l64
  %t66 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t63, %"compiler/source:Span" %t64, %"compiler/diagmsg:Msg" %t65)
  store i64 %t66, ptr %l65
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l3
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t67, %"compiler/source:Span" %t68)
  store ptr %t71, ptr %l68
  br label %bb20
bb20:
  %t72 = load ptr, ptr %l68, !tbaa !29
  store ptr %t72, ptr %rv
  br label %ret
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 44
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l71
  br label %bb22
bb22:
  %t78 = load i64, ptr %l71, !tbaa !24
  store i64 %t78, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l3
  %t81 = load i64, ptr %l2, !tbaa !24
  %t85 = call %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v2, ptr %t79, %"compiler/source:Span" %t80, i64 %t81)
  store %"compiler/check:laneVals" %t85, ptr %l75
  br label %bb23
bb23:
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 80, i64 8)
  store ptr %t86, ptr %lp6
  %t87 = load %"compiler/check:laneVals", ptr %l75
  %t88 = load ptr, ptr %lp6
  store %"compiler/check:laneVals" %t87, ptr %t88
  store ptr null, ptr %l7, !tbaa !29
  %t89 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t90 = load i64, ptr %t89, !tbaa !24
  %t92 = icmp sge i64 %t90, 0
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l80, !tbaa !29
  %t100 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t101 = load i32, ptr %t100, !tbaa !23
  store i32 %t101, ptr %l81, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  store ptr %t107, ptr %l84, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t108)
  store i32 %t110, ptr %l86
  br label %bb26
bb25:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t118 = load i32, ptr %t117, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t116, i32 %t118, i32 0)
  store i32 %t121, ptr %l198
  br label %bb53
bb26:
  %t122 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = load ptr, ptr %l84, !tbaa !29
  %t125 = load i32, ptr %l86, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t124, i32 %t125, i64 %t123)
  store i32 %t127, ptr %l88
  br label %bb27
bb27:
  %t128 = load ptr, ptr %l80, !tbaa !29
  %t129 = load i32, ptr %l81, !tbaa !23
  %t130 = load i32, ptr %l88, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t128, i32 %t129, i32 %t130)
  store i32 %t131, ptr %l89
  br label %bb28
bb28:
  %t132 = load i32, ptr %l89, !tbaa !23
  store i32 %t132, ptr %l8, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l3
  %t135 = load i32, ptr %l8, !tbaa !23
  %t139 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t133, %"compiler/source:Span" %t134, i32 %t135)
  store i64 %t139, ptr %l93
  br label %bb29
bb29:
  %t140 = load i64, ptr %l93, !tbaa !24
  store i64 %t140, ptr %l9, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 43
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t143)
  store i64 %t145, ptr %l96
  br label %bb30
bb30:
  %t146 = load i64, ptr %l96, !tbaa !24
  store i64 %t146, ptr %l10, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t149 = load i32, ptr %t148, !tbaa !23
  %t152 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %t147, i32 %t149)
  store i1 %t152, ptr %l99
  br label %bb31
bb31:
  %t153 = load i1, ptr %l99, !tbaa !21
  br i1 %t153, label %bb32, label %bb33
bb32:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 43
  store ptr %t156, ptr %l101, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l3
  %t159 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t160 = load i32, ptr %t159, !tbaa !23
  %t164 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t157, %"compiler/source:Span" %t158, i32 %t160)
  store ptr %t164, ptr %l105
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t165 = load ptr, ptr %l101, !tbaa !29
  %t166 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t165, ptr %t166)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t167 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t167, ptr %l106
  %t168 = load i32, ptr %l8, !tbaa !23
  store i32 %t168, ptr %l107, !tbaa !23
  store i32 3, ptr %l108
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 43
  %t172 = load i64, ptr %l10, !tbaa !24
  %t175 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t171, i64 %t172)
  store { i64, ptr } %t175, ptr %l112
  br label %bb37
bb37:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l113, !tbaa !29
  %t177 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t177, ptr %l114
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t178)
  store i32 %t180, ptr %l116
  br label %bb38
bb38:
  %t181 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = load ptr, ptr %l113, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l114
  %t185 = load i32, ptr %l116, !tbaa !23
  %t187 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184, i32 %t185, i64 %t182)
  store ptr %t187, ptr %l118
  br label %bb39
bb39:
  %t188 = load ptr, ptr %l118, !tbaa !29
  %t189 = load i32, ptr %l108, !range !{i32 0, i32 5}
  %t190 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t193 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t189, i64 0, { i64, ptr } %t190, ptr %t188, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t193, ptr %l121
  br label %bb40
bb40:
  %t194 = load %"compiler/typed:Make", ptr %l121
  %t195 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t194, ptr %t195
  store { i64, [5 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 0
  store i64 7, ptr %t197
  %t198 = load %"compiler/source:Span", ptr %l106
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t198, 0
  %t200 = load i32, ptr %l107, !tbaa !23
  %t201 = insertvalue { %"compiler/source:Span", i32, ptr } %t199, i32 %t200, 1
  %t203 = insertvalue { %"compiler/source:Span", i32, ptr } %t201, ptr %t195, 2
  %t204 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t203, ptr %t204
  %t205 = load { i64, [5 x i64] }, ptr %t196
  %t206 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store ptr %t206, ptr %lp11
  %t208 = load ptr, ptr %lp11
  store { i64, [5 x i64] } %t205, ptr %t208
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l3
  %t211 = load i64, ptr %l9, !tbaa !24
  %t213 = trunc i64 %t211 to i32
  %t215 = load ptr, ptr %lp11
  store { i64, [3 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [3 x i64] }, ptr %t216, i32 0, i32 0
  store i64 0, ptr %t217
  %t219 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t210, 0
  %t221 = insertvalue { %"compiler/source:Span", i32, ptr } %t219, i32 %t213, 1
  %t223 = insertvalue { %"compiler/source:Span", i32, ptr } %t221, ptr %t215, 2
  %t224 = getelementptr { i64, [3 x i64] }, ptr %t216, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t223, ptr %t224
  %t225 = load { i64, [3 x i64] }, ptr %t216
  %t227 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t225, ptr %t227
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t209, ptr %t227)
  br label %bb41
bb41:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l132, !tbaa !29
  %t231 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t231, ptr %l133
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l134, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t233, ptr %l135
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t234)
  store i32 %t236, ptr %l137
  br label %bb42
bb42:
  %t237 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t238 = load i64, ptr %t237, !tbaa !24
  %t239 = load ptr, ptr %l134, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l135
  %t241 = load i32, ptr %l137, !tbaa !23
  %t243 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t239, %"compiler/source:Span" %t240, i32 %t241, i64 %t238)
  store ptr %t243, ptr %l139
  br label %bb43
bb43:
  %t244 = load ptr, ptr %l132, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l133
  %t246 = load ptr, ptr %l139, !tbaa !29
  %t247 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t244, %"compiler/source:Span" %t245, ptr %t246, i64 0)
  store { i64, i64, i64, i64, i64 } %t247, ptr %l140
  br label %bb44
bb44:
  %t248 = load { i64, i64, i64, i64, i64 }, ptr %l140
  store { i64, i64, i64, i64, i64 } %t248, ptr %l12
  %t249 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 0
  %t250 = load i64, ptr %t249, !tbaa !24
  store i64 %t250, ptr %l13, !tbaa !24
  %t252 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 1
  %t253 = load i64, ptr %t252, !tbaa !24
  store i64 %t253, ptr %l14, !tbaa !24
  %t255 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 2
  %t256 = load i64, ptr %t255, !tbaa !24
  store i64 %t256, ptr %l15, !tbaa !24
  %t258 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 3
  %t259 = load i64, ptr %t258, !tbaa !24
  store i64 %t259, ptr %l16, !tbaa !24
  %t261 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 4
  %t262 = load i64, ptr %t261, !tbaa !24
  store i64 %t262, ptr %l17, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l146, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t265, ptr %l147
  %t266 = load i64, ptr %l2, !tbaa !24
  store i64 %t266, ptr %l148, !tbaa !24
  %t267 = load ptr, ptr %lp6
  store ptr %t267, ptr %l149, !tbaa !29
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l3
  %t270 = load i64, ptr %l13, !tbaa !24
  %t274 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t268, %"compiler/source:Span" %t269, i64 %t270)
  store ptr %t274, ptr %l153
  br label %bb45
bb45:
  %t275 = load ptr, ptr %l146, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l147
  %t277 = load i64, ptr %l148, !tbaa !24
  %t278 = load ptr, ptr %l149, !tbaa !29
  %t279 = load ptr, ptr %l153, !tbaa !29
  %t280 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %t275, %"compiler/source:Span" %t276, i64 %t277, ptr %t278, ptr %t279)
  store ptr %t280, ptr %l154
  br label %bb46
bb46:
  %t281 = load ptr, ptr %l154, !tbaa !29
  store ptr %t281, ptr %l18, !tbaa !29
  %t282 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t282, ptr %l155
  %t283 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t284 = load i32, ptr %t283, !tbaa !23
  store i32 %t284, ptr %l156, !tbaa !23
  %t285 = load %"compiler/source:Span", ptr %l3
  %t286 = load i32, ptr %l8, !tbaa !23
  %t287 = load i64, ptr %l9, !tbaa !24
  %t289 = trunc i64 %t287 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 0
  store i64 0, ptr %t292
  %t294 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t285, 0
  %t296 = insertvalue { %"compiler/source:Span", i32, i32 } %t294, i32 %t286, 1
  %t298 = insertvalue { %"compiler/source:Span", i32, i32 } %t296, i32 %t289, 2
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t298, ptr %t299
  %t300 = load { i64, [4 x i64] }, ptr %t291
  %t302 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t300, ptr %t302
  store ptr %t302, ptr %l163, !tbaa !29
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l3
  %t305 = load i64, ptr %l13, !tbaa !24
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t303, %"compiler/source:Span" %t304, i64 %t305)
  store ptr %t309, ptr %l167
  br label %bb47
bb47:
  %t310 = load ptr, ptr %l163, !tbaa !29
  %t311 = load ptr, ptr %l167, !tbaa !29
  %t313 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t310, ptr %t311, i32 0)
  store %"compiler/typed:Elem" %t313, ptr %l169
  br label %bb48
bb48:
  %t314 = load %"compiler/typed:Elem", ptr %l169
  %t315 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t314, ptr %t315
  store { i64, [4 x i64] } zeroinitializer, ptr %t316
  %t317 = getelementptr { i64, [4 x i64] }, ptr %t316, i32 0, i32 0
  store i64 4, ptr %t317
  %t318 = load %"compiler/source:Span", ptr %l155
  %t319 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t318, 0
  %t320 = load i32, ptr %l156, !tbaa !23
  %t321 = insertvalue { %"compiler/source:Span", i32, ptr } %t319, i32 %t320, 1
  %t323 = insertvalue { %"compiler/source:Span", i32, ptr } %t321, ptr %t315, 2
  %t324 = getelementptr { i64, [4 x i64] }, ptr %t316, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t323, ptr %t324
  %t325 = load { i64, [4 x i64] }, ptr %t316
  %t326 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store ptr %t326, ptr %lp19
  %t328 = load ptr, ptr %lp19
  store { i64, [4 x i64] } %t325, ptr %t328
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l172, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t330, ptr %l173
  %t331 = load ptr, ptr %lp19
  store ptr %t331, ptr %l174, !tbaa !29
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load ptr, ptr %l18, !tbaa !29
  %t334 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t335 = load i32, ptr %t334, !tbaa !23
  %t336 = load %"compiler/source:Span", ptr %l3
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t332, ptr %t333, i32 %t335, %"compiler/source:Span" %t336)
  store ptr %t341, ptr %l179
  br label %bb49
bb49:
  store { i64, [3 x i64] } zeroinitializer, ptr %t342
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 0
  store i64 1, ptr %t343
  %t344 = load %"compiler/source:Span", ptr %l173
  %t345 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t344, 0
  %t346 = load ptr, ptr %l174, !tbaa !29
  %t347 = insertvalue { %"compiler/source:Span", ptr, ptr } %t345, ptr %t346, 1
  %t348 = load ptr, ptr %l179, !tbaa !29
  %t349 = insertvalue { %"compiler/source:Span", ptr, ptr } %t347, ptr %t348, 2
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t349, ptr %t350
  %t351 = load { i64, [3 x i64] }, ptr %t342
  %t353 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t351, ptr %t353
  %t354 = load ptr, ptr %l172, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t354, ptr %t353)
  br label %bb50
bb50:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l3
  %t358 = load i64, ptr %l13, !tbaa !24
  %t359 = load i64, ptr %l14, !tbaa !24
  %t360 = load i64, ptr %l15, !tbaa !24
  %t361 = load i64, ptr %l16, !tbaa !24
  %t362 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t356, %"compiler/source:Span" %t357, i64 %t358, i64 %t359, i64 %t360, i64 %t361, i64 %t362)
  br label %bb51
bb51:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l3
  %t372 = load i64, ptr %l9, !tbaa !24
  %t376 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t370, %"compiler/source:Span" %t371, i64 %t372)
  store ptr %t376, ptr %l192
  br label %bb52
bb52:
  %t377 = load ptr, ptr %l192, !tbaa !29
  store ptr %t377, ptr %l7, !tbaa !29
  br label %bb67
bb53:
  %t379 = load i32, ptr %l198, !tbaa !23
  store i32 %t379, ptr %l20, !tbaa !23
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 44
  %t384 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t382)
  store i64 %t384, ptr %l201
  br label %bb54
bb54:
  %t385 = load i64, ptr %l201, !tbaa !24
  store i64 %t385, ptr %l21, !tbaa !24
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load %"compiler/source:Span", ptr %l3
  %t391 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t386, i32 9, %"compiler/source:Span" %t387)
  store { i64, i64, i64 } %t391, ptr %l205
  br label %bb55
bb55:
  %t392 = load { i64, i64, i64 }, ptr %l205
  store { i64, i64, i64 } %t392, ptr %l22
  %t393 = getelementptr { i64, i64, i64 }, ptr %l22, i32 0, i32 0
  %t394 = load i64, ptr %t393, !tbaa !24
  store i64 %t394, ptr %l23, !tbaa !24
  %t396 = getelementptr { i64, i64, i64 }, ptr %l22, i32 0, i32 1
  %t397 = load i64, ptr %t396, !tbaa !24
  store i64 %t397, ptr %l24, !tbaa !24
  %t399 = getelementptr { i64, i64, i64 }, ptr %l22, i32 0, i32 2
  %t400 = load i64, ptr %t399, !tbaa !24
  store i64 %t400, ptr %l25, !tbaa !24
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l209, !tbaa !29
  %t403 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t403, ptr %l210
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load %"compiler/source:Span", ptr %l3
  %t406 = load ptr, ptr %lp6
  %t407 = getelementptr %"compiler/check:laneVals", ptr %t406, i32 0, i32 0
  %t408 = load i64, ptr %t407, !tbaa !24
  %t412 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t404, %"compiler/source:Span" %t405, i64 %t408)
  store ptr %t412, ptr %l214
  br label %bb56
bb56:
  %t413 = load ptr, ptr %l209, !tbaa !29
  %t414 = load %"compiler/source:Span", ptr %l210
  %t415 = load ptr, ptr %l214, !tbaa !29
  %t416 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t413, %"compiler/source:Span" %t414, ptr %t415, i64 0)
  store { i64, i64, i64, i64, i64 } %t416, ptr %l215
  br label %bb57
bb57:
  %t417 = load { i64, i64, i64, i64, i64 }, ptr %l215
  store { i64, i64, i64, i64, i64 } %t417, ptr %l26
  %t418 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 0
  %t419 = load i64, ptr %t418, !tbaa !24
  store i64 %t419, ptr %l27, !tbaa !24
  %t421 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 1
  %t422 = load i64, ptr %t421, !tbaa !24
  store i64 %t422, ptr %l28, !tbaa !24
  %t424 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 2
  %t425 = load i64, ptr %t424, !tbaa !24
  store i64 %t425, ptr %l29, !tbaa !24
  %t427 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 3
  %t428 = load i64, ptr %t427, !tbaa !24
  store i64 %t428, ptr %l30, !tbaa !24
  %t430 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 4
  %t431 = load i64, ptr %t430, !tbaa !24
  store i64 %t431, ptr %l31, !tbaa !24
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l221, !tbaa !29
  %t434 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t434, ptr %l222
  %t435 = load i64, ptr %l2, !tbaa !24
  store i64 %t435, ptr %l223, !tbaa !24
  %t436 = load ptr, ptr %lp6
  store ptr %t436, ptr %l224, !tbaa !29
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l3
  %t439 = load i64, ptr %l27, !tbaa !24
  %t443 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t437, %"compiler/source:Span" %t438, i64 %t439)
  store ptr %t443, ptr %l228
  br label %bb58
bb58:
  %t444 = load ptr, ptr %l221, !tbaa !29
  %t445 = load %"compiler/source:Span", ptr %l222
  %t446 = load i64, ptr %l223, !tbaa !24
  %t447 = load ptr, ptr %l224, !tbaa !29
  %t448 = load ptr, ptr %l228, !tbaa !29
  %t449 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t444, %"compiler/source:Span" %t445, i64 %t446, ptr %t447, ptr %t448)
  store ptr %t449, ptr %l229
  br label %bb59
bb59:
  %t450 = load ptr, ptr %l229, !tbaa !29
  %t451 = load ptr, ptr %l0, !tbaa !29
  store ptr %t451, ptr %l230, !tbaa !29
  %t452 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t452, ptr %l231
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t456 = load i32, ptr %t455, !tbaa !23
  %t457 = load %"compiler/source:Span", ptr %l3
  %t462 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t453, ptr %t450, i32 %t456, %"compiler/source:Span" %t457)
  store ptr %t462, ptr %l236
  br label %bb60
bb60:
  store { i64, [3 x i64] } zeroinitializer, ptr %t463
  %t464 = getelementptr { i64, [3 x i64] }, ptr %t463, i32 0, i32 0
  store i64 15, ptr %t464
  %t465 = load %"compiler/source:Span", ptr %l231
  %t466 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t465, 0
  %t467 = load ptr, ptr %l236, !tbaa !29
  %t468 = insertvalue { %"compiler/source:Span", ptr } %t466, ptr %t467, 1
  %t469 = getelementptr { i64, [3 x i64] }, ptr %t463, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t468, ptr %t469
  %t470 = load { i64, [3 x i64] }, ptr %t463
  %t472 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t470, ptr %t472
  %t473 = load ptr, ptr %l230, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t473, ptr %t472)
  br label %bb61
bb61:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load %"compiler/source:Span", ptr %l3
  %t477 = load i64, ptr %l27, !tbaa !24
  %t478 = load i64, ptr %l28, !tbaa !24
  %t479 = load i64, ptr %l29, !tbaa !24
  %t480 = load i64, ptr %l30, !tbaa !24
  %t481 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t475, %"compiler/source:Span" %t476, i64 %t477, i64 %t478, i64 %t479, i64 %t480, i64 %t481)
  br label %bb62
bb62:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l23, !tbaa !24
  %t491 = load i64, ptr %l24, !tbaa !24
  %t492 = load i64, ptr %l25, !tbaa !24
  %t493 = load i64, ptr %l21, !tbaa !24
  %t499 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t489, i64 %t490, i64 %t491, i64 %t492, i64 %t493)
  store ptr %t499, ptr %l251
  br label %bb63
bb63:
  %t500 = load ptr, ptr %l251, !tbaa !29
  store ptr %t500, ptr %l33, !tbaa !29
  %t501 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t501, ptr %l252
  %t502 = load i32, ptr %l20, !tbaa !23
  store i32 %t502, ptr %l253, !tbaa !23
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load %"compiler/source:Span", ptr %l3
  %t505 = load ptr, ptr %lp6
  %t506 = getelementptr %"compiler/check:laneVals", ptr %t505, i32 0, i32 0
  %t507 = load i64, ptr %t506, !tbaa !24
  %t511 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t503, %"compiler/source:Span" %t504, i64 %t507)
  store ptr %t511, ptr %l257
  br label %bb64
bb64:
  %t512 = load ptr, ptr %l257, !tbaa !29
  store ptr %t512, ptr %l258, !tbaa !29
  %t513 = load ptr, ptr %l33, !tbaa !29
  store ptr %t513, ptr %l259, !tbaa !29
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load %"compiler/source:Span", ptr %l3
  %t519 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t514, i32 3, %"compiler/source:Span" %t515)
  store i32 %t519, ptr %l263
  br label %bb65
bb65:
  %t520 = load ptr, ptr %l258, !tbaa !29
  %t521 = load ptr, ptr %l259, !tbaa !29
  %t522 = load i32, ptr %l263, !tbaa !23
  %t524 = call %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t520, ptr %t521, i32 %t522, i32 0, i1 true)
  store %"compiler/typed:Collect" %t524, ptr %l265
  br label %bb66
bb66:
  %t525 = load %"compiler/typed:Collect", ptr %l265
  %t526 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Collect" %t525, ptr %t526
  store { i64, [5 x i64] } zeroinitializer, ptr %t527
  %t528 = getelementptr { i64, [5 x i64] }, ptr %t527, i32 0, i32 0
  store i64 8, ptr %t528
  %t529 = load %"compiler/source:Span", ptr %l252
  %t530 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t529, 0
  %t531 = load i32, ptr %l253, !tbaa !23
  %t532 = insertvalue { %"compiler/source:Span", i32, ptr } %t530, i32 %t531, 1
  %t534 = insertvalue { %"compiler/source:Span", i32, ptr } %t532, ptr %t526, 2
  %t535 = getelementptr { i64, [5 x i64] }, ptr %t527, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t534, ptr %t535
  %t536 = load { i64, [5 x i64] }, ptr %t527
  %t538 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t536, ptr %t538
  store ptr %t538, ptr %l7, !tbaa !29
  br label %bb67
bb67:
  %t540 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 10
  %t541 = load i32, ptr %t540, !tbaa !23
  %t542 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t545 = icmp ne i32 %t541, %t542
  br i1 %t545, label %bb68, label %bb69
bb68:
  %t547 = load ptr, ptr %l0, !tbaa !29
  store ptr %t547, ptr %l272, !tbaa !29
  %t548 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t548, ptr %l273
  %t549 = load ptr, ptr %l7, !tbaa !29
  %t551 = icmp eq ptr %t549, null
  br i1 %t551, label %bb70, label %bb71
bb69:
  br label %bb74
bb70:
  call void @__olang_check_failed(ptr @olang_loc_34e811dc0ec4ef70_be6d979bbdd0f614)
  unreachable
bb71:
  br label %bb72
bb72:
  %t553 = load ptr, ptr %l7, !tbaa !29
  %t554 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 10
  %t555 = load i32, ptr %t554, !tbaa !23
  %t556 = load ptr, ptr %l272, !tbaa !29
  %t557 = load %"compiler/source:Span", ptr %l273
  %t560 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t556, %"compiler/source:Span" %t557, ptr %t553, i32 %t555)
  store ptr %t560, ptr %l278
  br label %bb73
bb73:
  %t561 = load ptr, ptr %l278, !tbaa !29
  store ptr %t561, ptr %l7, !tbaa !29
  br label %bb74
bb74:
  %t563 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t563, ptr %l280
  %t564 = load ptr, ptr %l7, !tbaa !29
  %t566 = icmp eq ptr %t564, null
  br i1 %t566, label %bb75, label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_6d548f41f8fa1c4f_7a636e93a1794123)
  unreachable
bb76:
  br label %bb77
bb77:
  %t568 = load ptr, ptr %l7, !tbaa !29
  %t571 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t568)
  store i32 %t571, ptr %l285
  br label %bb78
bb78:
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/check:Checker", ptr %t572, i32 0, i32 44
  %t575 = load i64, ptr %l5, !tbaa !24
  %t578 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t574, i64 %t575)
  store { i64, ptr } %t578, ptr %l289
  br label %bb79
bb79:
  %t579 = load ptr, ptr %l7, !tbaa !29
  %t580 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t582 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t580, ptr %t579, i1 false)
  store %"compiler/typed:Seq" %t582, ptr %l291
  br label %bb80
bb80:
  %t583 = load %"compiler/typed:Seq", ptr %l291
  %t584 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t583, ptr %t584
  store { i64, [5 x i64] } zeroinitializer, ptr %t585
  %t586 = getelementptr { i64, [5 x i64] }, ptr %t585, i32 0, i32 0
  store i64 12, ptr %t586
  %t587 = load %"compiler/source:Span", ptr %l280
  %t588 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t587, 0
  %t589 = load i32, ptr %l285, !tbaa !23
  %t590 = insertvalue { %"compiler/source:Span", i32, ptr } %t588, i32 %t589, 1
  %t592 = insertvalue { %"compiler/source:Span", i32, ptr } %t590, ptr %t584, 2
  %t593 = getelementptr { i64, [5 x i64] }, ptr %t585, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t592, ptr %t593
  %t594 = load { i64, [5 x i64] }, ptr %t585
  %t596 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t594, ptr %t596
  store ptr %t596, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l30 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t24, ptr %l19, !tbaa !27
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i32, ptr %t28, i64 %t25
  %t30 = load i32, ptr %t29, !tbaa !33
  store i32 %t30, ptr %l7, !tbaa !23
  %t32 = load i32, ptr %l7, !tbaa !23
  %t34 = icmp ne i32 %t32, 0
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l7, !tbaa !23
  %t41 = add i64 %a3, 1
  %t46 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %t36, i32 %t37, i32 %a2, i64 %t41)
  store i1 %t46, ptr %l30
  br label %bb8
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t47 = load i1, ptr %l30, !tbaa !21
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb2
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:pathMarks" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elivePaths(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca ptr
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"compiler/check:pathMarks"
  %l36 = alloca i64
  %l38 = alloca i1
  %l40 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  %l77 = alloca %"compiler/check:nullNarrow"
  %l80 = alloca i1
  %l84 = alloca %"compiler/check:nullNarrow"
  %l94 = alloca i64
  %l98 = alloca i64
  %l101 = alloca i64
  %l122 = alloca %"compiler/check:narrowed"
  %l125 = alloca i1
  %l129 = alloca %"compiler/check:narrowed"
  %l139 = alloca i64
  %l143 = alloca i64
  %l146 = alloca i64
  %l167 = alloca %"compiler/check:errNarrow"
  %l170 = alloca i1
  %l174 = alloca %"compiler/check:errNarrow"
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca %"compiler/check:pathMarks"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v1 to i64
  store i64 %t1, ptr %l21, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3apathMarks_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v1)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l21, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l21
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l23
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3apathMarks_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l21
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = ptrtoint ptr %v1 to i64
  store i64 %t21, ptr %l25, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3apathMarks_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v1)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l25
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l27
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3apathMarks_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l25
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = call ptr @__olang_region_home(ptr %t36)
  %t38 = icmp ne ptr %t37, null
  %t39 = select i1 %t38, ptr %t37, ptr null
  %t40 = icmp eq ptr %t39, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t40)
  br label %bb10
bb10:
  %t41 = ptrtoint ptr %v1 to i64
  store i64 %t41, ptr %l29, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3apathMarks_2e2
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v1)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l29
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l31
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3apathMarks_2e2
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l29
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = call ptr @__olang_region_home(ptr %t56)
  %t58 = icmp ne ptr %t57, null
  %t59 = select i1 %t58, ptr %t57, ptr null
  %t60 = icmp eq ptr %t59, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t60)
  br label %bb15
bb15:
  %t61 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t64 = call %"compiler/check:pathMarks" @compiler_2fcheck_3apathMarks_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63)
  store %"compiler/check:pathMarks" %t64, ptr %l33
  br label %bb16
bb16:
  %t65 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 96, i64 8)
  store ptr %t65, ptr %lp1
  %t66 = load %"compiler/check:pathMarks", ptr %l33
  %t67 = load ptr, ptr %lp1
  store %"compiler/check:pathMarks" %t66, ptr %t67
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 20
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l36
  br label %bb17
bb17:
  %t73 = load i64, ptr %l36, !tbaa !24
  %t74 = icmp eq i64 %t73, 0
  br i1 %t74, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb21
bb19:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t76)
  store ptr %t78, ptr %l40
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l40, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 53
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  store i1 %t84, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t86 = load i1, ptr %l38, !tbaa !21
  br i1 %t86, label %bb22, label %bb23
bb22:
  %t87 = load ptr, ptr %lp1
  %t88 = load %"compiler/check:pathMarks", ptr %t87
  store %"compiler/check:pathMarks" %t88, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t90)
  store ptr %t92, ptr %l46
  br label %bb25
bb25:
  %t93 = load ptr, ptr %l46, !tbaa !29
  store ptr %t93, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t94 = load ptr, ptr %l2, !tbaa !29
  %t96 = getelementptr %"compiler/check:frame", ptr %t94, i32 0, i32 50
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l49
  br label %bb26
bb26:
  %t99 = load i64, ptr %l49, !tbaa !24
  store i64 %t99, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t100 = load i64, ptr %l4, !tbaa !24
  %t101 = load i64, ptr %l3, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t106 = load i64, ptr %l5, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb32
bb29:
  %t110 = load i64, ptr %l4, !tbaa !24
  %t111 = load i64, ptr %l3, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l5, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l5, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l56, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb31
bb31:
  %t126 = load i64, ptr %l56, !tbaa !24
  store i64 %t126, ptr %l53, !tbaa !24
  br label %bb32
bb32:
  %t127 = load i64, ptr %l53, !tbaa !24
  store i64 %t127, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s3
  %t128 = load i64, ptr %l7, !tbaa !24
  %t129 = load i64, ptr %l6, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb35:
  br label %bb36
bb36:
  %t136 = load i64, ptr %l3, !tbaa !24
  %t137 = load i64, ptr %l7, !tbaa !24
  %t138 = load i64, ptr %l5, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l8, !tbaa !24
  %t146 = load ptr, ptr %l2, !tbaa !29
  %t148 = getelementptr %"compiler/check:frame", ptr %t146, i32 0, i32 50
  %t149 = load i64, ptr %l8, !tbaa !24
  %t152 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %s3, ptr %t148, i64 %t149)
  store %"compiler/check:nullNarrow" %t152, ptr %l77
  br label %bb37
bb37:
  %t153 = getelementptr %"compiler/check:nullNarrow", ptr %l77, i32 0, i32 3
  %t154 = load i1, ptr %t153, !tbaa !21
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb38, label %bb39
bb38:
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr %"compiler/check:frame", ptr %t158, i32 0, i32 50
  %t161 = load i64, ptr %l8, !tbaa !24
  %t164 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v0, ptr %t160, i64 %t161)
  store %"compiler/check:nullNarrow" %t164, ptr %l84
  br label %bb40
bb39:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb41
bb40:
  %t165 = getelementptr %"compiler/check:nullNarrow", ptr %l84, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t170 = icmp sgt i64 %t168, 1
  store i1 %t170, ptr %l80, !tbaa !21
  br label %bb41
bb41:
  %t172 = load i1, ptr %l80, !tbaa !21
  br i1 %t172, label %bb42, label %bb43
bb42:
  %t173 = load ptr, ptr %lp1
  %t174 = getelementptr %"compiler/check:pathMarks", ptr %t173, i32 0, i32 0
  %t175 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t174, i64 %t175)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s3)
  br label %bb46
bb46:
  %t178 = load i64, ptr %l7, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l7, !tbaa !24
  br label %bb33
bb47:
  store i64 0, ptr %l9, !tbaa !24
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t184 = getelementptr %"compiler/check:frame", ptr %t182, i32 0, i32 46
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l94
  br label %bb48
bb48:
  %t187 = load i64, ptr %l94, !tbaa !24
  store i64 %t187, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t188 = load i64, ptr %l10, !tbaa !24
  %t189 = load i64, ptr %l9, !tbaa !24
  %t192 = icmp sgt i64 %t188, %t189
  br i1 %t192, label %bb49, label %bb50
bb49:
  %t194 = load i64, ptr %l11, !tbaa !24
  %t196 = icmp sgt i64 %t194, 0
  br i1 %t196, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb54
bb51:
  %t198 = load i64, ptr %l10, !tbaa !24
  %t199 = load i64, ptr %l9, !tbaa !24
  %t202 = sub i64 %t198, %t199
  %t203 = load i64, ptr %l11, !tbaa !24
  %t206 = add i64 %t202, %t203
  %t208 = sub i64 %t206, 1
  %t209 = load i64, ptr %l11, !tbaa !24
  %t212 = sdiv i64 %t208, %t209
  store i64 %t212, ptr %l101, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb53
bb53:
  %t214 = load i64, ptr %l101, !tbaa !24
  store i64 %t214, ptr %l98, !tbaa !24
  br label %bb54
bb54:
  %t215 = load i64, ptr %l98, !tbaa !24
  store i64 %t215, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s7
  %t216 = load i64, ptr %l13, !tbaa !24
  %t217 = load i64, ptr %l12, !tbaa !24
  %t220 = icmp slt i64 %t216, %t217
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb69
bb57:
  br label %bb58
bb58:
  %t224 = load i64, ptr %l9, !tbaa !24
  %t225 = load i64, ptr %l13, !tbaa !24
  %t226 = load i64, ptr %l11, !tbaa !24
  %t229 = mul i64 %t225, %t226
  %t232 = add i64 %t224, %t229
  store i64 %t232, ptr %l14, !tbaa !24
  %t234 = load ptr, ptr %l2, !tbaa !29
  %t236 = getelementptr %"compiler/check:frame", ptr %t234, i32 0, i32 46
  %t237 = load i64, ptr %l14, !tbaa !24
  %t240 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %s7, ptr %t236, i64 %t237)
  store %"compiler/check:narrowed" %t240, ptr %l122
  br label %bb59
bb59:
  %t241 = getelementptr %"compiler/check:narrowed", ptr %l122, i32 0, i32 7
  %t242 = load i1, ptr %t241, !tbaa !21
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb60, label %bb61
bb60:
  %t246 = load ptr, ptr %l2, !tbaa !29
  %t248 = getelementptr %"compiler/check:frame", ptr %t246, i32 0, i32 46
  %t249 = load i64, ptr %l14, !tbaa !24
  %t252 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v0, ptr %t248, i64 %t249)
  store %"compiler/check:narrowed" %t252, ptr %l129
  br label %bb62
bb61:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb63
bb62:
  %t253 = getelementptr %"compiler/check:narrowed", ptr %l129, i32 0, i32 5
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t258 = icmp sgt i64 %t256, 1
  store i1 %t258, ptr %l125, !tbaa !21
  br label %bb63
bb63:
  %t260 = load i1, ptr %l125, !tbaa !21
  br i1 %t260, label %bb64, label %bb65
bb64:
  %t261 = load ptr, ptr %lp1
  %t262 = getelementptr %"compiler/check:pathMarks", ptr %t261, i32 0, i32 1
  %t263 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t262, i64 %t263)
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s7)
  br label %bb68
bb68:
  %t266 = load i64, ptr %l13, !tbaa !24
  %t268 = add i64 %t266, 1
  store i64 %t268, ptr %l13, !tbaa !24
  br label %bb55
bb69:
  store i64 0, ptr %l15, !tbaa !24
  %t270 = load ptr, ptr %l2, !tbaa !29
  %t272 = getelementptr %"compiler/check:frame", ptr %t270, i32 0, i32 62
  %t274 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t272)
  store i64 %t274, ptr %l139
  br label %bb70
bb70:
  %t275 = load i64, ptr %l139, !tbaa !24
  store i64 %t275, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t276 = load i64, ptr %l16, !tbaa !24
  %t277 = load i64, ptr %l15, !tbaa !24
  %t280 = icmp sgt i64 %t276, %t277
  br i1 %t280, label %bb71, label %bb72
bb71:
  %t282 = load i64, ptr %l17, !tbaa !24
  %t284 = icmp sgt i64 %t282, 0
  br i1 %t284, label %bb73, label %bb74
bb72:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb76
bb73:
  %t286 = load i64, ptr %l16, !tbaa !24
  %t287 = load i64, ptr %l15, !tbaa !24
  %t290 = sub i64 %t286, %t287
  %t291 = load i64, ptr %l17, !tbaa !24
  %t294 = add i64 %t290, %t291
  %t296 = sub i64 %t294, 1
  %t297 = load i64, ptr %l17, !tbaa !24
  %t300 = sdiv i64 %t296, %t297
  store i64 %t300, ptr %l146, !tbaa !24
  br label %bb75
bb74:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb75
bb75:
  %t302 = load i64, ptr %l146, !tbaa !24
  store i64 %t302, ptr %l143, !tbaa !24
  br label %bb76
bb76:
  %t303 = load i64, ptr %l143, !tbaa !24
  store i64 %t303, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s11
  %t304 = load i64, ptr %l19, !tbaa !24
  %t305 = load i64, ptr %l18, !tbaa !24
  %t308 = icmp slt i64 %t304, %t305
  %t310 = xor i1 %t308, true
  br i1 %t310, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s11)
  br label %bb91
bb79:
  br label %bb80
bb80:
  %t312 = load i64, ptr %l15, !tbaa !24
  %t313 = load i64, ptr %l19, !tbaa !24
  %t314 = load i64, ptr %l17, !tbaa !24
  %t317 = mul i64 %t313, %t314
  %t320 = add i64 %t312, %t317
  store i64 %t320, ptr %l20, !tbaa !24
  %t322 = load ptr, ptr %l2, !tbaa !29
  %t324 = getelementptr %"compiler/check:frame", ptr %t322, i32 0, i32 62
  %t325 = load i64, ptr %l20, !tbaa !24
  %t328 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %s11, ptr %t324, i64 %t325)
  store %"compiler/check:errNarrow" %t328, ptr %l167
  br label %bb81
bb81:
  %t329 = getelementptr %"compiler/check:errNarrow", ptr %l167, i32 0, i32 4
  %t330 = load i1, ptr %t329, !tbaa !21
  %t332 = xor i1 %t330, true
  br i1 %t332, label %bb82, label %bb83
bb82:
  %t334 = load ptr, ptr %l2, !tbaa !29
  %t336 = getelementptr %"compiler/check:frame", ptr %t334, i32 0, i32 62
  %t337 = load i64, ptr %l20, !tbaa !24
  %t340 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %v0, ptr %t336, i64 %t337)
  store %"compiler/check:errNarrow" %t340, ptr %l174
  br label %bb84
bb83:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb85
bb84:
  %t341 = getelementptr %"compiler/check:errNarrow", ptr %l174, i32 0, i32 0
  %t342 = load { i64, ptr }, ptr %t341, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t342, 0
  %t346 = icmp sgt i64 %t344, 1
  store i1 %t346, ptr %l170, !tbaa !21
  br label %bb85
bb85:
  %t348 = load i1, ptr %l170, !tbaa !21
  br i1 %t348, label %bb86, label %bb87
bb86:
  %t349 = load ptr, ptr %lp1
  %t350 = getelementptr %"compiler/check:pathMarks", ptr %t349, i32 0, i32 2
  %t351 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t350, i64 %t351)
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s11)
  br label %bb90
bb90:
  %t354 = load i64, ptr %l19, !tbaa !24
  %t356 = add i64 %t354, 1
  store i64 %t356, ptr %l19, !tbaa !24
  br label %bb77
bb91:
  %t358 = load ptr, ptr %lp1
  %t359 = load %"compiler/check:pathMarks", ptr %t358
  store %"compiler/check:pathMarks" %t359, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:pathMarks", ptr %rv
  ret %"compiler/check:pathMarks" %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalOrCapture(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeNarrowed(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l12
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t16 = load i64, ptr %l12, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  store i64 %t21, ptr %l15, !tbaa !24
  br label %bb7
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t25 = load i64, ptr %l15, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 20
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l21
  br label %bb9
bb9:
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = sub i64 %t32, 1
  %t34 = load i32, ptr %l1, !tbaa !23
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t40 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %t36, i64 %t33, i32 %t34, %"compiler/source:Span" %a2)
  store i64 %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load i64, ptr %l25, !tbaa !24
  store i64 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:litBuilder"
  %l7 = alloca ptr
  %l15 = alloca ptr
  %l20 = alloca i32
  %l25 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l32 = alloca %"compiler/source:Span"
  %l35 = alloca { i64, ptr }
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l50 = alloca i32
  %l52 = alloca ptr
  %l56 = alloca %"compiler/check:litBuilder"
  %l63 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca ptr
  %l73 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca i32
  %l86 = alloca ptr
  %l93 = alloca ptr
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l3, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t7, { i64, ptr } %t8)
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t11, %"compiler/source:Span" %t12)
  store ptr %t15, ptr %l15
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l15, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l20
  br label %bb6
bb6:
  %t27 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t29 = trunc i64 19 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %t32, { i64, ptr } %t33)
  store i64 %t36, ptr %l25
  br label %bb9
bb8:
  br label %bb21
bb9:
  %t37 = load i64, ptr %l25, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sge i64 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l28, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t43, ptr %l29, !tbaa !27
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 %t44
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t51 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t49)
  store %"compiler/source:Span" %t51, ptr %l32
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l3, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t52, i32 %t53)
  store { i64, ptr } %t56, ptr %l35
  br label %bb13
bb13:
  %t57 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  %t59 = extractvalue { i64, ptr } %t57, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t65 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %s3, ptr %v0, { i64, ptr } %t63)
  store %"compiler/diagmsg:Msg" %t65, ptr %l37
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l28, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l32
  %t68 = load %"compiler/diagmsg:Msg", ptr %l37
  %t69 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t66, %"compiler/source:Span" %t67, %"compiler/diagmsg:Msg" %t68)
  store i64 %t69, ptr %l38
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t70, { i64, ptr } %t71)
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l1
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t74, %"compiler/source:Span" %t75)
  store ptr %t78, ptr %l43
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  %t79 = load ptr, ptr %l43, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l44, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t81, ptr %l45
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l3, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l50
  br label %bb19
bb19:
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t93 = load ptr, ptr %l44, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l45
  %t95 = load i32, ptr %l50, !tbaa !23
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %t93, %"compiler/source:Span" %t94, i32 %t95, { i64, ptr } %t92, i1 false)
  store ptr %t97, ptr %l52
  br label %bb20
bb20:
  %t98 = load ptr, ptr %l52, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
bb21:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l2
  %t101 = load i32, ptr %l3, !tbaa !23
  %t105 = call %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %t99, %"compiler/source:Span" %t100, i32 %t101)
  store %"compiler/check:litBuilder" %t105, ptr %l56
  br label %bb22
bb22:
  %t106 = load %"compiler/check:litBuilder", ptr %l56
  store %"compiler/check:litBuilder" %t106, ptr %l6
  %t107 = getelementptr %"compiler/check:litBuilder", ptr %l6, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  %t110 = icmp slt i64 %t108, 0
  br i1 %t110, label %bb23, label %bb24
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t112, { i64, ptr } %t113)
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l1
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t116, %"compiler/source:Span" %t117)
  store ptr %t120, ptr %l63
  br label %bb26
bb26:
  %t121 = load ptr, ptr %l63, !tbaa !29
  store ptr %t121, ptr %rv
  br label %ret
bb27:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t126 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %t122, { i64, ptr } %t123)
  store i64 %t126, ptr %l66
  br label %bb28
bb28:
  %t127 = load i64, ptr %l66, !tbaa !24
  %t128 = icmp sge i64 %t127, 0
  br i1 %t128, label %bb29, label %bb30
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l1
  %t132 = getelementptr %"compiler/check:litBuilder", ptr %l6, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentriesLit(ptr %v0, ptr %v1, ptr %v2, ptr %t130, %"compiler/source:Span" %t131, i32 %t133, { i64, ptr } %t134)
  store ptr %t139, ptr %l73
  br label %bb31
bb30:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l1
  %t142 = getelementptr %"compiler/check:litBuilder", ptr %l6, i32 0, i32 1
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t149 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %t140, %"compiler/source:Span" %t141, i32 %t143, { i64, ptr } %t144, i1 true)
  store ptr %t149, ptr %l78
  br label %bb32
bb31:
  %t150 = load ptr, ptr %l73, !tbaa !29
  store ptr %t150, ptr %l68, !tbaa !29
  br label %bb33
bb32:
  %t151 = load ptr, ptr %l78, !tbaa !29
  store ptr %t151, ptr %l68, !tbaa !29
  br label %bb33
bb33:
  %t152 = load ptr, ptr %l68, !tbaa !29
  store ptr %t152, ptr %l7, !tbaa !29
  %t153 = load ptr, ptr %l7, !tbaa !29
  %t156 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t153)
  store i32 %t156, ptr %l81
  br label %bb34
bb34:
  %t157 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t158 = load i32, ptr %l81, !tbaa !23
  %t160 = icmp eq i32 %t158, %t157
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l1
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t162, %"compiler/source:Span" %t163)
  store ptr %t166, ptr %l86
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t167 = load ptr, ptr %l86, !tbaa !29
  store ptr %t167, ptr %rv
  br label %ret
bb38:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load %"compiler/source:Span", ptr %l1
  %t170 = load %"compiler/source:Span", ptr %l2
  %t171 = load %"compiler/check:litBuilder", ptr %l6
  %t172 = load i32, ptr %l3, !tbaa !23
  %t173 = load ptr, ptr %l7, !tbaa !29
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v2, ptr %v2, ptr %t168, %"compiler/source:Span" %t169, %"compiler/source:Span" %t170, %"compiler/check:litBuilder" %t171, i32 %t172, ptr %t173)
  store ptr %t180, ptr %l93
  br label %bb39
bb39:
  %t181 = load ptr, ptr %l93, !tbaa !29
  store ptr %t181, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [1 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca ptr
  %l8 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca { i64, [1 x i64] }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l28 = alloca i1
  %l29 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t5 = alloca { i64, [1 x i64] }, align 8
  %t18 = alloca { i64, [1 x i64] }, align 8
  %t59 = alloca { i64, [1 x i64] }, align 8
  %t63 = alloca { i64, [1 x i64] }, align 8
  %t68 = alloca { i64, [1 x i64] }, align 8
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
  store { i64, [1 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [1 x i64] }, ptr %t5, i32 0, i32 0
  store i64 4, ptr %t6
  %t7 = load { i64, [1 x i64] }, ptr %t5
  store { i64, [1 x i64] } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 8}
  %t16 = icmp eq i64 %t14, 3
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store { i64, [1 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [1 x i64] }, ptr %t18, i32 0, i32 0
  store i64 1, ptr %t19
  %t20 = load { i64, [1 x i64] }, ptr %t18
  store { i64, [1 x i64] } %t20, ptr %l6
  br label %bb31
bb9:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l13, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l2, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t41 = call { i64, [1 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkOf(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store { i64, [1 x i64] } %t41, ptr %l20
  br label %bb15
bb15:
  %t42 = load { i64, [1 x i64] }, ptr %l20
  store { i64, [1 x i64] } %t42, ptr %l6
  br label %bb31
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 0
  store i1 %t50, ptr %l22, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l22, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  store i1 %t57, ptr %l28
  br label %bb22
bb22:
  %t58 = load i1, ptr %l28, !tbaa !21
  br i1 %t58, label %bb23, label %bb24
bb23:
  store { i64, [1 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [1 x i64] }, ptr %t59, i32 0, i32 0
  store i64 4, ptr %t60
  %t61 = load { i64, [1 x i64] }, ptr %t59
  store { i64, [1 x i64] } %t61, ptr %l29
  br label %bb25
bb24:
  store { i64, [1 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [1 x i64] }, ptr %t63, i32 0, i32 0
  store i64 0, ptr %t64
  %t65 = load { i64, [1 x i64] }, ptr %t63
  store { i64, [1 x i64] } %t65, ptr %l29
  br label %bb25
bb25:
  %t67 = load { i64, [1 x i64] }, ptr %l29
  store { i64, [1 x i64] } %t67, ptr %l6
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, [1 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [1 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t70 = load { i64, [1 x i64] }, ptr %t68
  store { i64, [1 x i64] } %t70, ptr %l6
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_7175167c8688a627_14932d1cc2bc03fb)
  unreachable
bb31:
  %t72 = load { i64, [1 x i64] }, ptr %l6
  store { i64, [1 x i64] } %t72, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca { i64, i64, i64 }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca ptr
  %l59 = alloca { ptr, i32, i32 }
  %l60 = alloca ptr
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca i32
  %l78 = alloca %"compiler/source:Span"
  %l81 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca i1
  %l98 = alloca i64
  %l121 = alloca { i64, ptr }
  %l123 = alloca i32
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i32
  %l136 = alloca i1
  %l139 = alloca ptr
  %l144 = alloca i32
  %l145 = alloca { i64, ptr }
  %l150 = alloca i64
  %l153 = alloca i64
  %l171 = alloca ptr
  %l175 = alloca i1
  %l182 = alloca i32
  %l185 = alloca i1
  %l187 = alloca ptr
  %l192 = alloca i32
  %l193 = alloca i1
  %l195 = alloca ptr
  %l200 = alloca i32
  %l201 = alloca { i64, ptr }
  %l206 = alloca i64
  %l209 = alloca i64
  %l233 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l235 = alloca ptr
  %l236 = alloca i1
  %l252 = alloca { i64, ptr }
  %l256 = alloca i1
  %l259 = alloca ptr
  %l265 = alloca %"compiler/source:Span"
  %l266 = alloca %"compiler/diagmsg:Msg"
  %l267 = alloca i64
  %l272 = alloca { i64, i64, i64 }
  %l278 = alloca i64
  %l279 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l281 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l289 = alloca i64
  %l292 = alloca i64
  %l311 = alloca { i64, ptr }
  %l315 = alloca i1
  %l316 = alloca i1
  %l321 = alloca ptr
  %l323 = alloca %"compiler/source:Span"
  %l324 = alloca %"compiler/diagmsg:Msg"
  %l325 = alloca i64
  %l328 = alloca i1
  %l329 = alloca i1
  %l334 = alloca ptr
  %l336 = alloca %"compiler/source:Span"
  %l337 = alloca %"compiler/diagmsg:Msg"
  %l338 = alloca i64
  %l339 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l344 = alloca i1
  %l345 = alloca ptr
  %l347 = alloca %"compiler/source:Span"
  %l349 = alloca ptr
  %l351 = alloca ptr
  %l352 = alloca ptr
  %l359 = alloca ptr
  %l366 = alloca ptr
  %l369 = alloca ptr
  %l371 = alloca { i64, ptr }
  %l372 = alloca %"compiler/typed:Alt"
  %l385 = alloca i1
  %l387 = alloca i1
  %l391 = alloca ptr
  %l393 = alloca { i64, ptr }
  %l400 = alloca ptr
  %l406 = alloca ptr
  %l412 = alloca %"compiler/source:Span"
  %l413 = alloca ptr
  %l417 = alloca i32
  %l421 = alloca i1
  %l425 = alloca ptr
  %l431 = alloca %"compiler/source:Span"
  %l434 = alloca { i64, ptr }
  %l436 = alloca %"compiler/diagmsg:Msg"
  %l437 = alloca i64
  %l438 = alloca ptr
  %l444 = alloca %"compiler/source:Span"
  %l445 = alloca ptr
  %l447 = alloca ptr
  %l465 = alloca i1
  %l467 = alloca ptr
  %l468 = alloca ptr
  %l476 = alloca { ptr, i32, i32 }
  %l486 = alloca ptr
  %l487 = alloca ptr
  %l489 = alloca %"compiler/source:Span"
  %l491 = alloca { i64, ptr }
  %l496 = alloca %"compiler/typed:Arm"
  %l503 = alloca i1
  %l505 = alloca i64
  %l508 = alloca i64
  %l510 = alloca i64
  %l515 = alloca i1
  %l522 = alloca ptr
  %l523 = alloca ptr
  %l524 = alloca i32
  %l528 = alloca i1
  %l540 = alloca ptr
  %l544 = alloca %"compiler/source:Span"
  %l545 = alloca i32
  %l546 = alloca { i64, ptr }
  %l548 = alloca { i64, ptr }
  %l552 = alloca %"compiler/typed:Match"
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %rv = alloca ptr
  %t60 = alloca { i64, [1 x i64] }, align 8
  %t85 = alloca { i64, [3 x i64] }, align 8
  %t105 = alloca { i64, [4 x i64] }, align 8
  %t964 = alloca i64
  %t1027 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 13
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Match", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t4, ptr %t8, i32 %t10)
  store ptr %t14, ptr %l72
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l72, !tbaa !29
  store ptr %t15, ptr %l5, !tbaa !29
  %t16 = load ptr, ptr %l5, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t16)
  store i32 %t19, ptr %l75
  br label %bb2
bb2:
  %t20 = load i32, ptr %l75, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Match", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t24)
  store %"compiler/source:Span" %t26, ptr %l78
  br label %bb3
bb3:
  %t27 = load %"compiler/source:Span", ptr %l78
  store %"compiler/source:Span" %t27, ptr %l7
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 44
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l81
  br label %bb4
bb4:
  %t33 = load i64, ptr %l81, !tbaa !24
  store i64 %t33, ptr %l8, !tbaa !24
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v2, ptr %t34)
  store ptr %t36, ptr %l83
  br label %bb5
bb5:
  %t37 = load ptr, ptr %l83, !tbaa !29
  store ptr %t37, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t38 = load ptr, ptr %l9, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb6, label %bb7
bb6:
  %t44 = load ptr, ptr %l9, !tbaa !29
  store ptr %t44, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t45 = load ptr, ptr %l87, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb8, label %bb9
bb7:
  br label %bb19
bb8:
  %t48 = load ptr, ptr %l87, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 8}
  %t51 = icmp eq i64 %t49, 0
  store i1 %t51, ptr %l88, !tbaa !21
  br label %bb9
bb9:
  %t52 = load i1, ptr %l88, !tbaa !21
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 true, ptr %l10, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_b96b66026b1de457_faad65b8493662b3)
  unreachable
bb18:
  br label %bb19
bb19:
  %t53 = load i1, ptr %l10, !tbaa !21
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l7
  %t59 = load i32, ptr %l6, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [1 x i64] }, ptr %t60, i32 0, i32 0
  store i64 0, ptr %t61
  %t62 = load { i64, [1 x i64] }, ptr %t60
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t57, i32 0, %"compiler/source:Span" %t58, i32 %t59, i32 2, { i64, [1 x i64] } %t62)
  store i64 %t68, ptr %l98
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t69 = load i64, ptr %l98, !tbaa !24
  store i64 %t69, ptr %l11, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v2, ptr %t70, i64 %t71, ptr %t72)
  br label %bb23
bb23:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 44
  %t79 = load %"compiler/source:Span", ptr %l7
  %t80 = load i64, ptr %l11, !tbaa !24
  %t82 = trunc i64 %t80 to i32
  %t84 = load ptr, ptr %l5, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t85
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t85, i32 0, i32 0
  store i64 0, ptr %t86
  %t88 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t79, 0
  %t90 = insertvalue { %"compiler/source:Span", i32, ptr } %t88, i32 %t82, 1
  %t92 = insertvalue { %"compiler/source:Span", i32, ptr } %t90, ptr %t84, 2
  %t93 = getelementptr { i64, [3 x i64] }, ptr %t85, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t92, ptr %t93
  %t94 = load { i64, [3 x i64] }, ptr %t85
  %t96 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t94, ptr %t96
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t78, ptr %t96)
  br label %bb24
bb24:
  %t99 = load %"compiler/source:Span", ptr %l7
  %t100 = load i32, ptr %l6, !tbaa !23
  %t101 = load i64, ptr %l11, !tbaa !24
  %t103 = trunc i64 %t101 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 0
  store i64 0, ptr %t106
  %t108 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t99, 0
  %t110 = insertvalue { %"compiler/source:Span", i32, i32 } %t108, i32 %t100, 1
  %t112 = insertvalue { %"compiler/source:Span", i32, i32 } %t110, i32 %t103, 2
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t112, ptr %t113
  %t114 = load { i64, [4 x i64] }, ptr %t105
  %t116 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t114, ptr %t116
  store ptr %t116, ptr %l9, !tbaa !29
  br label %bb25
bb25:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 44
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v2, ptr %t120, i64 %t121)
  store { i64, ptr } %t124, ptr %l121
  br label %bb26
bb26:
  %t125 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t125, ptr %l12, !tbaa !27
  %t126 = load i1, ptr %l3, !tbaa !21
  br i1 %t126, label %bb27, label %bb28
bb27:
  store i32 %a4, ptr %l123, !tbaa !23
  br label %bb29
bb28:
  %t130 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t130, ptr %l123, !tbaa !23
  br label %bb29
bb29:
  %t132 = load i32, ptr %l123, !tbaa !23
  store i32 %t132, ptr %l13, !tbaa !23
  %t133 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t133, ptr %l14, !tbaa !23
  %t135 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %l127
  br label %bb30
bb30:
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  %t137 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %t137
  store ptr %t137, ptr %l15, !tbaa !29
  %t139 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l129
  br label %bb31
bb31:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129
  %t141 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %t141
  store ptr %t141, ptr %l16, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l6, !tbaa !23
  %t147 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l133
  br label %bb32
bb32:
  %t148 = load i32, ptr %l133, !tbaa !23
  store i32 %t148, ptr %l17, !tbaa !23
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l17, !tbaa !23
  %t153 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t149, i32 %t150)
  store i1 %t153, ptr %l136
  br label %bb33
bb33:
  %t154 = load i1, ptr %l136, !tbaa !21
  br i1 %t154, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  store i64 0, ptr %l18, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 2
  store ptr %t160, ptr %l139, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  %t167 = load i32, ptr %l17, !tbaa !23
  %t170 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t170, ptr %l144
  br label %bb36
bb35:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l17, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l182
  br label %bb52
bb36:
  %t181 = load ptr, ptr %l139, !tbaa !29
  %t182 = load i32, ptr %l144, !tbaa !23
  %t183 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s6, ptr %t181, i32 %t182)
  store { i64, ptr } %t183, ptr %l145
  br label %bb37
bb37:
  %t184 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  store i64 %t185, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t187 = load i64, ptr %l19, !tbaa !24
  %t188 = load i64, ptr %l18, !tbaa !24
  %t191 = icmp sgt i64 %t187, %t188
  br i1 %t191, label %bb38, label %bb39
bb38:
  %t193 = load i64, ptr %l20, !tbaa !24
  %t195 = icmp sgt i64 %t193, 0
  br i1 %t195, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb43
bb40:
  %t197 = load i64, ptr %l19, !tbaa !24
  %t198 = load i64, ptr %l18, !tbaa !24
  %t201 = sub i64 %t197, %t198
  %t202 = load i64, ptr %l20, !tbaa !24
  %t205 = add i64 %t201, %t202
  %t207 = sub i64 %t205, 1
  %t208 = load i64, ptr %l20, !tbaa !24
  %t211 = sdiv i64 %t207, %t208
  store i64 %t211, ptr %l153, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l153, !tbaa !24
  br label %bb42
bb42:
  %t213 = load i64, ptr %l153, !tbaa !24
  store i64 %t213, ptr %l150, !tbaa !24
  br label %bb43
bb43:
  %t214 = load i64, ptr %l150, !tbaa !24
  store i64 %t214, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb44
bb44:
  %t215 = load i64, ptr %l22, !tbaa !24
  %t216 = load i64, ptr %l21, !tbaa !24
  %t219 = icmp slt i64 %t215, %t216
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t223 = load i64, ptr %l18, !tbaa !24
  %t224 = load i64, ptr %l22, !tbaa !24
  %t225 = load i64, ptr %l20, !tbaa !24
  %t228 = mul i64 %t224, %t225
  %t231 = add i64 %t223, %t228
  %t233 = load ptr, ptr %l16, !tbaa !29
  store ptr %t233, ptr %l171, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i32, ptr %l17, !tbaa !23
  %t240 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %t234, i32 %t235, i64 %t231)
  store i1 %t240, ptr %l175
  br label %bb48
bb48:
  %t241 = load ptr, ptr %l171, !tbaa !29
  %t242 = load i1, ptr %l175, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t241, i1 %t242)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t243 = load i64, ptr %l22, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l22, !tbaa !24
  br label %bb44
bb51:
  call void @__olang_scope_close(ptr %s6)
  br label %bb76
bb52:
  %t247 = load i32, ptr %l182, !range !{i32 0, i32 33}
  %t249 = trunc i64 29 to i32
  %t250 = icmp eq i32 %t247, %t249
  br i1 %t250, label %bb53, label %bb54
bb53:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  store ptr %t255, ptr %l187, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/check:Checker", ptr %t256, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/generic:Program", ptr %t259, i32 0, i32 2
  %t262 = load i32, ptr %l17, !tbaa !23
  %t265 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t261, i32 %t262)
  store i32 %t265, ptr %l192
  br label %bb55
bb54:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb57
bb55:
  %t266 = load ptr, ptr %l187, !tbaa !29
  %t267 = load i32, ptr %l192, !tbaa !23
  %t268 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t266, i32 %t267)
  store i1 %t268, ptr %l193
  br label %bb56
bb56:
  %t269 = load i1, ptr %l193, !tbaa !21
  store i1 %t269, ptr %l185, !tbaa !21
  br label %bb57
bb57:
  %t270 = load i1, ptr %l185, !tbaa !21
  br i1 %t270, label %bb58, label %bb59
bb58:
  store i64 0, ptr %l24, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !29
  store ptr %t274, ptr %l195, !tbaa !29
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/check:Checker", ptr %t275, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !29
  %t280 = getelementptr %"compiler/generic:Program", ptr %t278, i32 0, i32 2
  %t281 = load i32, ptr %l17, !tbaa !23
  %t284 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t280, i32 %t281)
  store i32 %t284, ptr %l200
  br label %bb60
bb59:
  br label %bb75
bb60:
  %t285 = load ptr, ptr %l195, !tbaa !29
  %t286 = load i32, ptr %l200, !tbaa !23
  %t287 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t285, i32 %t286)
  store { i64, ptr } %t287, ptr %l201
  br label %bb61
bb61:
  %t288 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t288, 0
  store i64 %t289, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t291 = load i64, ptr %l25, !tbaa !24
  %t292 = load i64, ptr %l24, !tbaa !24
  %t295 = icmp sgt i64 %t291, %t292
  br i1 %t295, label %bb62, label %bb63
bb62:
  %t297 = load i64, ptr %l26, !tbaa !24
  %t299 = icmp sgt i64 %t297, 0
  br i1 %t299, label %bb64, label %bb65
bb63:
  store i64 0, ptr %l206, !tbaa !24
  br label %bb67
bb64:
  %t301 = load i64, ptr %l25, !tbaa !24
  %t302 = load i64, ptr %l24, !tbaa !24
  %t305 = sub i64 %t301, %t302
  %t306 = load i64, ptr %l26, !tbaa !24
  %t309 = add i64 %t305, %t306
  %t311 = sub i64 %t309, 1
  %t312 = load i64, ptr %l26, !tbaa !24
  %t315 = sdiv i64 %t311, %t312
  store i64 %t315, ptr %l209, !tbaa !24
  br label %bb66
bb65:
  store i64 0, ptr %l209, !tbaa !24
  br label %bb66
bb66:
  %t317 = load i64, ptr %l209, !tbaa !24
  store i64 %t317, ptr %l206, !tbaa !24
  br label %bb67
bb67:
  %t318 = load i64, ptr %l206, !tbaa !24
  store i64 %t318, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb68
bb68:
  %t319 = load i64, ptr %l28, !tbaa !24
  %t320 = load i64, ptr %l27, !tbaa !24
  %t323 = icmp slt i64 %t319, %t320
  %t325 = xor i1 %t323, true
  br i1 %t325, label %bb69, label %bb70
bb69:
  br label %bb74
bb70:
  br label %bb71
bb71:
  %t327 = load i64, ptr %l24, !tbaa !24
  %t328 = load i64, ptr %l28, !tbaa !24
  %t329 = load i64, ptr %l26, !tbaa !24
  %t332 = mul i64 %t328, %t329
  %t335 = add i64 %t327, %t332
  store i64 %t335, ptr %l29, !tbaa !24
  %t337 = load ptr, ptr %l16, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v2, ptr %t337, i1 false)
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t339 = load i64, ptr %l28, !tbaa !24
  %t341 = add i64 %t339, 1
  store i64 %t341, ptr %l28, !tbaa !24
  br label %bb68
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  store i1 false, ptr %l30, !tbaa !21
  store i1 false, ptr %l31, !tbaa !21
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/check:Checker", ptr %t343, i32 0, i32 158
  %t346 = load i1, ptr %t345, !tbaa !21
  store i1 %t346, ptr %l32, !tbaa !21
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/check:Checker", ptr %t348, i32 0, i32 158
  store i1 false, ptr %t350, !tbaa !21
  %t351 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t351, ptr %l233
  br label %bb77
bb77:
  %t352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l233
  %t353 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %t353
  store ptr %t353, ptr %l33, !tbaa !29
  store i64 -1, ptr %l34, !tbaa !24
  %t355 = load ptr, ptr %l9, !tbaa !29
  store ptr %t355, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t356 = load ptr, ptr %l235, !tbaa !29
  %t357 = icmp ne ptr %t356, null
  br i1 %t357, label %bb78, label %bb79
bb78:
  %t359 = load ptr, ptr %l235, !tbaa !29
  %t360 = load i64, ptr %t359, !range !{i64 0, i64 8}
  %t362 = icmp eq i64 %t360, 0
  store i1 %t362, ptr %l236, !tbaa !21
  br label %bb79
bb79:
  %t363 = load i1, ptr %l236, !tbaa !21
  br i1 %t363, label %bb80, label %bb81
bb80:
  %t364 = load ptr, ptr %l9, !tbaa !29
  %t366 = getelementptr { i64, [4 x i64] }, ptr %t364, i32 0, i32 1
  %t367 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t366, i32 0, i32 2
  %t368 = load i32, ptr %t367
  store i32 %t368, ptr %l35, !tbaa !23
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t370 = load i1, ptr %l10, !tbaa !21
  br i1 %t370, label %bb83, label %bb84
bb83:
  %t372 = load i32, ptr %l35, !tbaa !23
  %t374 = sext i32 %t372 to i64
  store i64 %t374, ptr %l34, !tbaa !24
  br label %bb85
bb84:
  br label %bb85
bb85:
  br label %bb91
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_d674b53a564350b6_2b0ed61f741ab932)
  unreachable
bb91:
  %t376 = load ptr, ptr %l2, !tbaa !29
  %t378 = getelementptr %"compiler/ast:Match", ptr %t376, i32 0, i32 3
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t381 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t383 = extractvalue { i64, ptr } %t381, 0
  store i64 %t383, ptr %l38, !tbaa !24
  br label %bb92
bb92:
  store %olang.scope zeroinitializer, ptr %s18
  %t385 = load i64, ptr %l37, !tbaa !24
  %t386 = load i64, ptr %l38, !tbaa !24
  %t389 = icmp slt i64 %t385, %t386
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s18)
  br label %bb226
bb94:
  br label %bb95
bb95:
  %t393 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t393, ptr %l252, !tbaa !27
  %t394 = load i64, ptr %l37, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l252, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr ptr, ptr %t397, i64 %t394
  %t399 = load ptr, ptr %t398, !tbaa !39
  store ptr %t399, ptr %l39, !tbaa !29
  %t401 = load i1, ptr %l30, !tbaa !21
  br i1 %t401, label %bb96, label %bb97
bb96:
  %t403 = load i1, ptr %l31, !tbaa !21
  %t405 = xor i1 %t403, true
  store i1 %t405, ptr %l256, !tbaa !21
  br label %bb98
bb97:
  store i1 false, ptr %l256, !tbaa !21
  br label %bb98
bb98:
  %t407 = load i1, ptr %l256, !tbaa !21
  br i1 %t407, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s19
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l259, !tbaa !29
  %t409 = load ptr, ptr %l39, !tbaa !29
  %t411 = getelementptr %"compiler/ast:Case", ptr %t409, i32 0, i32 0
  %t412 = getelementptr %"compiler/source:Span", ptr %t411, i32 0, i32 0
  %t413 = load i32, ptr %t412, !tbaa !23
  %t414 = load ptr, ptr %l39, !tbaa !29
  %t416 = getelementptr %"compiler/ast:Case", ptr %t414, i32 0, i32 0
  %t417 = getelementptr %"compiler/source:Span", ptr %t416, i32 0, i32 0
  %t418 = load i32, ptr %t417, !tbaa !23
  %t420 = add i32 %t418, 4
  %t423 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s19, i32 %t413, i32 %t420)
  store %"compiler/source:Span" %t423, ptr %l265
  br label %bb101
bb100:
  br label %bb104
bb101:
  %t424 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseAfterWildcard(ptr %v0)
  store %"compiler/diagmsg:Msg" %t424, ptr %l266
  br label %bb102
bb102:
  %t425 = load ptr, ptr %l259, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l265
  %t427 = load %"compiler/diagmsg:Msg", ptr %l266
  %t428 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t425, %"compiler/source:Span" %t426, %"compiler/diagmsg:Msg" %t427)
  store i64 %t428, ptr %l267
  br label %bb103
bb103:
  store i1 true, ptr %l31, !tbaa !21
  call void @__olang_scope_close(ptr %s19)
  br label %bb104
bb104:
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load ptr, ptr %l39, !tbaa !29
  %t432 = getelementptr %"compiler/ast:Case", ptr %t430, i32 0, i32 0
  %t433 = load %"compiler/source:Span", ptr %t432
  %t437 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t429, i32 1, %"compiler/source:Span" %t433)
  store { i64, i64, i64 } %t437, ptr %l272
  br label %bb105
bb105:
  %t438 = load { i64, i64, i64 }, ptr %l272
  store { i64, i64, i64 } %t438, ptr %l40
  %t439 = getelementptr { i64, i64, i64 }, ptr %l40, i32 0, i32 0
  %t440 = load i64, ptr %t439, !tbaa !24
  store i64 %t440, ptr %l41, !tbaa !24
  %t442 = getelementptr { i64, i64, i64 }, ptr %l40, i32 0, i32 1
  %t443 = load i64, ptr %t442, !tbaa !24
  store i64 %t443, ptr %l42, !tbaa !24
  %t445 = getelementptr { i64, i64, i64 }, ptr %l40, i32 0, i32 2
  %t446 = load i64, ptr %t445, !tbaa !24
  store i64 %t446, ptr %l43, !tbaa !24
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 44
  %t452 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t450)
  store i64 %t452, ptr %l278
  br label %bb106
bb106:
  %t453 = load i64, ptr %l278, !tbaa !24
  store i64 %t453, ptr %l44, !tbaa !24
  %t454 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t454, ptr %l279
  br label %bb107
bb107:
  %t455 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l279
  %t456 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t455, ptr %t456
  store ptr %t456, ptr %l45, !tbaa !29
  %t458 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s18, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t458, ptr %l281
  br label %bb108
bb108:
  %t459 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l281
  %t460 = call ptr @__olang_scope_alloc_a(ptr %s18, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t459, ptr %t460
  store ptr %t460, ptr %l46, !tbaa !29
  store i64 0, ptr %l47, !tbaa !24
  %t462 = load ptr, ptr %l39, !tbaa !29
  %t464 = getelementptr %"compiler/ast:Case", ptr %t462, i32 0, i32 1
  %t465 = load { i64, ptr }, ptr %t464, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t465, 0
  store i64 %t467, ptr %l48, !tbaa !24
  store i64 1, ptr %l49, !tbaa !24
  %t469 = load i64, ptr %l48, !tbaa !24
  %t470 = load i64, ptr %l47, !tbaa !24
  %t473 = icmp sgt i64 %t469, %t470
  br i1 %t473, label %bb109, label %bb110
bb109:
  %t475 = load i64, ptr %l49, !tbaa !24
  %t477 = icmp sgt i64 %t475, 0
  br i1 %t477, label %bb111, label %bb112
bb110:
  store i64 0, ptr %l289, !tbaa !24
  br label %bb114
bb111:
  %t479 = load i64, ptr %l48, !tbaa !24
  %t480 = load i64, ptr %l47, !tbaa !24
  %t483 = sub i64 %t479, %t480
  %t484 = load i64, ptr %l49, !tbaa !24
  %t487 = add i64 %t483, %t484
  %t489 = sub i64 %t487, 1
  %t490 = load i64, ptr %l49, !tbaa !24
  %t493 = sdiv i64 %t489, %t490
  store i64 %t493, ptr %l292, !tbaa !24
  br label %bb113
bb112:
  store i64 0, ptr %l292, !tbaa !24
  br label %bb113
bb113:
  %t495 = load i64, ptr %l292, !tbaa !24
  store i64 %t495, ptr %l289, !tbaa !24
  br label %bb114
bb114:
  %t496 = load i64, ptr %l289, !tbaa !24
  store i64 %t496, ptr %l50, !tbaa !24
  store i64 0, ptr %l51, !tbaa !24
  br label %bb115
bb115:
  %t497 = load i64, ptr %l51, !tbaa !24
  %t498 = load i64, ptr %l50, !tbaa !24
  %t501 = icmp slt i64 %t497, %t498
  %t503 = xor i1 %t501, true
  br i1 %t503, label %bb116, label %bb117
bb116:
  br label %bb174
bb117:
  br label %bb118
bb118:
  %t505 = load i64, ptr %l47, !tbaa !24
  %t506 = load i64, ptr %l51, !tbaa !24
  %t507 = load i64, ptr %l49, !tbaa !24
  %t510 = mul i64 %t506, %t507
  %t513 = add i64 %t505, %t510
  store i64 %t513, ptr %l52, !tbaa !24
  %t515 = load ptr, ptr %l39, !tbaa !29
  %t517 = getelementptr %"compiler/ast:Case", ptr %t515, i32 0, i32 1
  %t518 = load { i64, ptr }, ptr %t517, !tbaa !27
  store { i64, ptr } %t518, ptr %l311, !tbaa !27
  %t519 = load i64, ptr %l52, !tbaa !24
  %t521 = getelementptr { i64, ptr }, ptr %l311, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr ptr, ptr %t522, i64 %t519
  %t524 = load ptr, ptr %t523, !tbaa !39
  store ptr %t524, ptr %l53, !tbaa !29
  %t526 = load ptr, ptr %l53, !tbaa !29
  %t528 = call i1 @compiler_2fcheck_2eisWild(ptr %v1, ptr %t526)
  store i1 %t528, ptr %l315
  br label %bb119
bb119:
  %t529 = load i1, ptr %l315, !tbaa !21
  br i1 %t529, label %bb120, label %bb121
bb120:
  %t530 = load ptr, ptr %l39, !tbaa !29
  %t532 = getelementptr %"compiler/ast:Case", ptr %t530, i32 0, i32 1
  %t533 = load { i64, ptr }, ptr %t532, !tbaa !27
  %t535 = extractvalue { i64, ptr } %t533, 0
  %t537 = icmp sgt i64 %t535, 1
  store i1 %t537, ptr %l316, !tbaa !21
  br label %bb122
bb121:
  store i1 false, ptr %l316, !tbaa !21
  br label %bb122
bb122:
  %t539 = load i1, ptr %l316, !tbaa !21
  br i1 %t539, label %bb123, label %bb124
bb123:
  %t540 = load ptr, ptr %l0, !tbaa !29
  store ptr %t540, ptr %l321, !tbaa !29
  %t541 = load ptr, ptr %l53, !tbaa !29
  %t543 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t541)
  store %"compiler/source:Span" %t543, ptr %l323
  br label %bb125
bb124:
  br label %bb128
bb125:
  %t544 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWildcardNotAlone(ptr %v0)
  store %"compiler/diagmsg:Msg" %t544, ptr %l324
  br label %bb126
bb126:
  %t545 = load ptr, ptr %l321, !tbaa !29
  %t546 = load %"compiler/source:Span", ptr %l323
  %t547 = load %"compiler/diagmsg:Msg", ptr %l324
  %t548 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t545, %"compiler/source:Span" %t546, %"compiler/diagmsg:Msg" %t547)
  store i64 %t548, ptr %l325
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load ptr, ptr %l53, !tbaa !29
  %t553 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindsType(ptr %v0, ptr %v1, ptr %t549, ptr %t550)
  store i1 %t553, ptr %l328
  br label %bb129
bb129:
  %t554 = load i1, ptr %l328, !tbaa !21
  br i1 %t554, label %bb130, label %bb131
bb130:
  %t555 = load ptr, ptr %l39, !tbaa !29
  %t557 = getelementptr %"compiler/ast:Case", ptr %t555, i32 0, i32 1
  %t558 = load { i64, ptr }, ptr %t557, !tbaa !27
  %t560 = extractvalue { i64, ptr } %t558, 0
  %t562 = icmp sgt i64 %t560, 1
  store i1 %t562, ptr %l329, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l329, !tbaa !21
  br label %bb132
bb132:
  %t564 = load i1, ptr %l329, !tbaa !21
  br i1 %t564, label %bb133, label %bb134
bb133:
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l334, !tbaa !29
  %t566 = load ptr, ptr %l53, !tbaa !29
  %t568 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t566)
  store %"compiler/source:Span" %t568, ptr %l336
  br label %bb135
bb134:
  br label %bb138
bb135:
  %t569 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseAlone(ptr %v0)
  store %"compiler/diagmsg:Msg" %t569, ptr %l337
  br label %bb136
bb136:
  %t570 = load ptr, ptr %l334, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l336
  %t572 = load %"compiler/diagmsg:Msg", ptr %l337
  %t573 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t570, %"compiler/source:Span" %t571, %"compiler/diagmsg:Msg" %t572)
  store i64 %t573, ptr %l338
  br label %bb137
bb137:
  br label %bb138
bb138:
  %t574 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t574, ptr %l339
  br label %bb139
bb139:
  %t575 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l339
  %t576 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t575, ptr %t576
  store ptr %t576, ptr %l54, !tbaa !29
  store ptr null, ptr %l55, !tbaa !29
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load ptr, ptr %l53, !tbaa !29
  %t580 = load i64, ptr %l34, !tbaa !24
  %t584 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseName(ptr %v0, ptr %v1, ptr %t578, ptr %t579, i64 %t580)
  store i1 %t584, ptr %l344
  br label %bb140
bb140:
  %t585 = load i1, ptr %l344, !tbaa !21
  br i1 %t585, label %bb141, label %bb142
bb141:
  %t586 = load ptr, ptr %l0, !tbaa !29
  store ptr %t586, ptr %l345, !tbaa !29
  %t587 = load ptr, ptr %l53, !tbaa !29
  %t589 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t587)
  store %"compiler/source:Span" %t589, ptr %l347
  br label %bb143
bb142:
  %t590 = load ptr, ptr %l0, !tbaa !29
  store ptr %t590, ptr %l351, !tbaa !29
  %t591 = load ptr, ptr %l53, !tbaa !29
  store ptr %t591, ptr %l352, !tbaa !29
  %t592 = load ptr, ptr %l9, !tbaa !29
  %t594 = icmp eq ptr %t592, null
  br i1 %t594, label %bb145, label %bb146
bb143:
  %t596 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t597 = load ptr, ptr %l345, !tbaa !29
  %t598 = load %"compiler/source:Span", ptr %l347
  %t600 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t597, %"compiler/source:Span" %t598, i32 %t596, i64 1)
  store ptr %t600, ptr %l349
  br label %bb144
bb144:
  %t601 = load ptr, ptr %l349, !tbaa !29
  store ptr %t601, ptr %l55, !tbaa !29
  br label %bb149
bb145:
  call void @__olang_check_failed(ptr @olang_loc_43973455075247be_e5a2b369b5afd60a)
  unreachable
bb146:
  br label %bb147
bb147:
  %t603 = load ptr, ptr %l9, !tbaa !29
  %t604 = load i32, ptr %l6, !tbaa !23
  %t605 = load ptr, ptr %l54, !tbaa !29
  %t606 = load i64, ptr %l41, !tbaa !24
  %t607 = load ptr, ptr %l351, !tbaa !29
  %t608 = load ptr, ptr %l352, !tbaa !29
  %t613 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t607, ptr %t608, ptr %t603, i32 %t604, ptr %t605, i64 %t606)
  store ptr %t613, ptr %l359
  br label %bb148
bb148:
  %t614 = load ptr, ptr %l359, !tbaa !29
  store ptr %t614, ptr %l55, !tbaa !29
  br label %bb149
bb149:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t617 = load ptr, ptr %l54, !tbaa !29
  %t618 = load ptr, ptr %l46, !tbaa !29
  %t619 = load i64, ptr %l52, !tbaa !24
  %t620 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtNames(ptr %v0, ptr %v2, ptr %s18, ptr %v1, ptr %t616, ptr %t617, ptr %t618, i64 %t619, ptr %t620)
  br label %bb150
bb150:
  %t626 = load ptr, ptr %l45, !tbaa !29
  store ptr %t626, ptr %l366, !tbaa !29
  %t627 = load ptr, ptr %l55, !tbaa !29
  %t629 = icmp eq ptr %t627, null
  br i1 %t629, label %bb151, label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_65d4e94bd43e965_f352b379463fef11)
  unreachable
bb152:
  br label %bb153
bb153:
  %t631 = load ptr, ptr %l55, !tbaa !29
  store ptr %t631, ptr %l369, !tbaa !29
  %t632 = load ptr, ptr %l54, !tbaa !29
  %t634 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eToArra_H3abd86491fc74d55e8f3c029e6430268(ptr %v2, ptr %v2, ptr %t632)
  store { i64, ptr } %t634, ptr %l371
  br label %bb154
bb154:
  %t635 = load ptr, ptr %l369, !tbaa !29
  %t636 = load { i64, ptr }, ptr %l371, !tbaa !27
  %t637 = call %"compiler/typed:Alt" @compiler_2ftyped_3aAlt_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t635, { i64, ptr } %t636)
  store %"compiler/typed:Alt" %t637, ptr %l372
  br label %bb155
bb155:
  %t638 = load %"compiler/typed:Alt", ptr %l372
  %t639 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Alt" %t638, ptr %t639
  %t640 = load ptr, ptr %l366, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2ePush_3ccompiler_2ftyped_3aAlt_26_3e(ptr %v2, ptr %v2, ptr %t640, ptr %t639)
  br label %bb156
bb156:
  %t642 = load ptr, ptr %l39, !tbaa !29
  %t644 = getelementptr %"compiler/ast:Case", ptr %t642, i32 0, i32 3
  %t645 = load ptr, ptr %t644, !tbaa !29
  %t647 = icmp eq ptr %t645, null
  br i1 %t647, label %bb157, label %bb158
bb157:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load ptr, ptr %l53, !tbaa !29
  %t651 = load i32, ptr %l17, !tbaa !23
  %t652 = load ptr, ptr %l16, !tbaa !29
  %t653 = load i1, ptr %l30, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecover(ptr %v0, ptr %v1, ptr %v2, ptr %t649, ptr %t650, i32 %t651, ptr %t652, i1 %t653)
  br label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb160
bb160:
  %t659 = load ptr, ptr %l39, !tbaa !29
  %t661 = getelementptr %"compiler/ast:Case", ptr %t659, i32 0, i32 3
  %t662 = load ptr, ptr %t661, !tbaa !29
  %t664 = icmp eq ptr %t662, null
  br i1 %t664, label %bb161, label %bb162
bb161:
  %t666 = load ptr, ptr %l53, !tbaa !29
  %t668 = call i1 @compiler_2fcheck_2eisWild(ptr %v1, ptr %t666)
  store i1 %t668, ptr %l387
  br label %bb163
bb162:
  store i1 false, ptr %l385, !tbaa !21
  br label %bb164
bb163:
  %t669 = load i1, ptr %l387, !tbaa !21
  store i1 %t669, ptr %l385, !tbaa !21
  br label %bb164
bb164:
  %t670 = load i1, ptr %l385, !tbaa !21
  br i1 %t670, label %bb165, label %bb166
bb165:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb167
bb166:
  br label %bb167
bb167:
  %t671 = load ptr, ptr %l39, !tbaa !29
  %t673 = getelementptr %"compiler/ast:Case", ptr %t671, i32 0, i32 3
  %t674 = load ptr, ptr %t673, !tbaa !29
  %t676 = icmp eq ptr %t674, null
  br i1 %t676, label %bb168, label %bb169
bb168:
  %t678 = load ptr, ptr %l33, !tbaa !29
  store ptr %t678, ptr %l391, !tbaa !29
  %t679 = load ptr, ptr %l53, !tbaa !29
  %t681 = call { i64, ptr } @compiler_2fcheck_2epatRow(ptr %v1, ptr %v1, ptr %t679)
  store { i64, ptr } %t681, ptr %l393
  br label %bb170
bb169:
  br label %bb172
bb170:
  %t682 = load ptr, ptr %l391, !tbaa !29
  %t683 = load { i64, ptr }, ptr %l393, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v2, ptr %v1, ptr %t682, { i64, ptr } %t683)
  br label %bb171
bb171:
  br label %bb172
bb172:
  br label %bb173
bb173:
  %t684 = load i64, ptr %l51, !tbaa !24
  %t686 = add i64 %t684, 1
  store i64 %t686, ptr %l51, !tbaa !24
  br label %bb115
bb174:
  store ptr null, ptr %l56, !tbaa !29
  %t688 = load ptr, ptr %l39, !tbaa !29
  %t690 = getelementptr %"compiler/ast:Case", ptr %t688, i32 0, i32 3
  %t691 = load ptr, ptr %t690, !tbaa !29
  %t693 = icmp eq ptr %t691, null
  %t695 = xor i1 %t693, true
  br i1 %t695, label %bb175, label %bb176
bb175:
  %t697 = load ptr, ptr %l0, !tbaa !29
  store ptr %t697, ptr %l400, !tbaa !29
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t699 = load ptr, ptr %l39, !tbaa !29
  %t701 = getelementptr %"compiler/ast:Case", ptr %t699, i32 0, i32 3
  %t702 = load ptr, ptr %t701, !tbaa !29
  %t704 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t708 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t698, ptr %t702, i32 %t704)
  store ptr %t708, ptr %l406
  br label %bb177
bb176:
  br label %bb206
bb177:
  %t709 = load ptr, ptr %l39, !tbaa !29
  %t711 = getelementptr %"compiler/ast:Case", ptr %t709, i32 0, i32 3
  %t712 = load ptr, ptr %t711, !tbaa !29
  %t714 = icmp eq ptr %t712, null
  br i1 %t714, label %bb178, label %bb179
bb178:
  call void @__olang_check_failed(ptr @olang_loc_d6337ada1dd29694_8ce46a4ddad80bd8)
  unreachable
bb179:
  br label %bb180
bb180:
  %t716 = load ptr, ptr %l39, !tbaa !29
  %t718 = getelementptr %"compiler/ast:Case", ptr %t716, i32 0, i32 3
  %t719 = load ptr, ptr %t718, !tbaa !29
  %t721 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t719)
  store %"compiler/source:Span" %t721, ptr %l412
  br label %bb181
bb181:
  %t722 = load ptr, ptr %l400, !tbaa !29
  %t723 = load ptr, ptr %l406, !tbaa !29
  %t724 = load %"compiler/source:Span", ptr %l412
  %t725 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t722, ptr %t723, %"compiler/source:Span" %t724)
  store ptr %t725, ptr %l413
  br label %bb182
bb182:
  %t726 = load ptr, ptr %l413, !tbaa !29
  store ptr %t726, ptr %l56, !tbaa !29
  %t728 = load ptr, ptr %l56, !tbaa !29
  %t731 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t728)
  store i32 %t731, ptr %l417
  br label %bb183
bb183:
  %t732 = load i32, ptr %l417, !tbaa !23
  store i32 %t732, ptr %l57, !tbaa !23
  %t733 = load i32, ptr %l57, !tbaa !23
  %t734 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t737 = icmp ne i32 %t733, %t734
  br i1 %t737, label %bb184, label %bb185
bb184:
  %t739 = load i32, ptr %l57, !tbaa !23
  %t740 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t743 = icmp ne i32 %t739, %t740
  store i1 %t743, ptr %l421, !tbaa !21
  br label %bb186
bb185:
  store i1 false, ptr %l421, !tbaa !21
  br label %bb186
bb186:
  %t745 = load i1, ptr %l421, !tbaa !21
  br i1 %t745, label %bb187, label %bb188
bb187:
  store %olang.scope zeroinitializer, ptr %s31
  %t746 = load ptr, ptr %l0, !tbaa !29
  store ptr %t746, ptr %l425, !tbaa !29
  %t747 = load ptr, ptr %l39, !tbaa !29
  %t749 = getelementptr %"compiler/ast:Case", ptr %t747, i32 0, i32 3
  %t750 = load ptr, ptr %t749, !tbaa !29
  %t752 = icmp eq ptr %t750, null
  br i1 %t752, label %bb189, label %bb190
bb188:
  br label %bb201
bb189:
  call void @__olang_check_failed(ptr @olang_loc_922951d2017ae1a3_4c5f7ef571495bf7)
  unreachable
bb190:
  br label %bb191
bb191:
  %t754 = load ptr, ptr %l39, !tbaa !29
  %t756 = getelementptr %"compiler/ast:Case", ptr %t754, i32 0, i32 3
  %t757 = load ptr, ptr %t756, !tbaa !29
  %t759 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t757)
  store %"compiler/source:Span" %t759, ptr %l431
  br label %bb192
bb192:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t761 = load i32, ptr %l57, !tbaa !23
  %t764 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s31, ptr %t760, i32 %t761)
  store { i64, ptr } %t764, ptr %l434
  br label %bb193
bb193:
  %t765 = load { i64, ptr }, ptr %l434, !tbaa !27
  %t766 = extractvalue { i64, ptr } %t765, 0
  %t767 = extractvalue { i64, ptr } %t765, 1
  %t768 = mul i64 %t766, 1
  %t769 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t768)
  call void @llvm.memcpy.p0.p0.i64(ptr %t769, ptr %t767, i64 %t768, i1 false)
  %t770 = insertvalue { i64, ptr } undef, i64 %t766, 0
  %t771 = insertvalue { i64, ptr } %t770, ptr %t769, 1
  %t773 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGuardNotBool(ptr %s31, ptr %v0, { i64, ptr } %t771)
  store %"compiler/diagmsg:Msg" %t773, ptr %l436
  br label %bb194
bb194:
  %t774 = load ptr, ptr %l425, !tbaa !29
  %t775 = load %"compiler/source:Span", ptr %l431
  %t776 = load %"compiler/diagmsg:Msg", ptr %l436
  %t777 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t774, %"compiler/source:Span" %t775, %"compiler/diagmsg:Msg" %t776)
  store i64 %t777, ptr %l437
  br label %bb195
bb195:
  %t778 = load ptr, ptr %l0, !tbaa !29
  store ptr %t778, ptr %l438, !tbaa !29
  %t779 = load ptr, ptr %l39, !tbaa !29
  %t781 = getelementptr %"compiler/ast:Case", ptr %t779, i32 0, i32 3
  %t782 = load ptr, ptr %t781, !tbaa !29
  %t784 = icmp eq ptr %t782, null
  br i1 %t784, label %bb196, label %bb197
bb196:
  call void @__olang_check_failed(ptr @olang_loc_ce31ac887a0ebd22_30602d5443d77806)
  unreachable
bb197:
  br label %bb198
bb198:
  %t786 = load ptr, ptr %l39, !tbaa !29
  %t788 = getelementptr %"compiler/ast:Case", ptr %t786, i32 0, i32 3
  %t789 = load ptr, ptr %t788, !tbaa !29
  %t791 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t789)
  store %"compiler/source:Span" %t791, ptr %l444
  br label %bb199
bb199:
  %t792 = load ptr, ptr %l438, !tbaa !29
  %t793 = load %"compiler/source:Span", ptr %l444
  %t794 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t792, %"compiler/source:Span" %t793)
  store ptr %t794, ptr %l445
  br label %bb200
bb200:
  %t795 = load ptr, ptr %l445, !tbaa !29
  store ptr %t795, ptr %l56, !tbaa !29
  call void @__olang_scope_close(ptr %s31)
  br label %bb201
bb201:
  %t797 = load ptr, ptr %l0, !tbaa !29
  store ptr %t797, ptr %l447, !tbaa !29
  %t798 = load ptr, ptr %l39, !tbaa !29
  %t800 = getelementptr %"compiler/ast:Case", ptr %t798, i32 0, i32 3
  %t801 = load ptr, ptr %t800, !tbaa !29
  %t803 = icmp eq ptr %t801, null
  br i1 %t803, label %bb202, label %bb203
bb202:
  call void @__olang_check_failed(ptr @olang_loc_14962851291ac789_3280c2851d649aed)
  unreachable
bb203:
  br label %bb204
bb204:
  %t805 = load ptr, ptr %l39, !tbaa !29
  %t807 = getelementptr %"compiler/ast:Case", ptr %t805, i32 0, i32 3
  %t808 = load ptr, ptr %t807, !tbaa !29
  %t809 = load i64, ptr %l41, !tbaa !24
  %t810 = load ptr, ptr %l447, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t810, ptr %t808, i1 true, i64 %t809)
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t813 = load ptr, ptr %l39, !tbaa !29
  %t815 = getelementptr %"compiler/ast:Case", ptr %t813, i32 0, i32 4
  %t816 = load { i64, ptr }, ptr %t815, !tbaa !27
  %t818 = extractvalue { i64, ptr } %t816, 0
  %t820 = icmp sgt i64 %t818, 0
  br i1 %t820, label %bb207, label %bb208
bb207:
  %t822 = load ptr, ptr %l0, !tbaa !29
  %t823 = load ptr, ptr %l39, !tbaa !29
  %t825 = getelementptr %"compiler/ast:Case", ptr %t823, i32 0, i32 4
  %t826 = load { i64, ptr }, ptr %t825, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t822, { i64, ptr } %t826)
  br label %bb209
bb208:
  br label %bb210
bb209:
  br label %bb210
bb210:
  store ptr null, ptr %l58, !tbaa !29
  %t829 = load ptr, ptr %l39, !tbaa !29
  %t831 = getelementptr %"compiler/ast:Case", ptr %t829, i32 0, i32 5
  %t832 = load ptr, ptr %t831, !tbaa !29
  %t834 = icmp eq ptr %t832, null
  %t836 = xor i1 %t834, true
  br i1 %t836, label %bb211, label %bb212
bb211:
  %t838 = load i1, ptr %l3, !tbaa !21
  store i1 %t838, ptr %l465, !tbaa !21
  br label %bb213
bb212:
  store i1 false, ptr %l465, !tbaa !21
  br label %bb213
bb213:
  %t840 = load i1, ptr %l465, !tbaa !21
  br i1 %t840, label %bb214, label %bb215
bb214:
  %t841 = load ptr, ptr %l0, !tbaa !29
  store ptr %t841, ptr %l467, !tbaa !29
  %t842 = load ptr, ptr %l2, !tbaa !29
  store ptr %t842, ptr %l468, !tbaa !29
  %t843 = load ptr, ptr %l39, !tbaa !29
  %t845 = getelementptr %"compiler/ast:Case", ptr %t843, i32 0, i32 5
  %t846 = load ptr, ptr %t845, !tbaa !29
  %t848 = icmp eq ptr %t846, null
  br i1 %t848, label %bb216, label %bb217
bb215:
  br label %bb220
bb216:
  call void @__olang_check_failed(ptr @olang_loc_cfe87ec003b82748_d94fc5f0b326c124)
  unreachable
bb217:
  br label %bb218
bb218:
  %t850 = load ptr, ptr %l39, !tbaa !29
  %t852 = getelementptr %"compiler/ast:Case", ptr %t850, i32 0, i32 5
  %t853 = load ptr, ptr %t852, !tbaa !29
  %t854 = load i32, ptr %l13, !tbaa !23
  %t855 = load i32, ptr %l14, !tbaa !23
  %t856 = load ptr, ptr %l467, !tbaa !29
  %t857 = load ptr, ptr %l468, !tbaa !29
  %t861 = call { ptr, i32, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseValue(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %t856, ptr %t857, ptr %t853, i32 %t854, i32 %t855)
  store { ptr, i32, i32 } %t861, ptr %l476
  br label %bb219
bb219:
  %t862 = load { ptr, i32, i32 }, ptr %l476
  store { ptr, i32, i32 } %t862, ptr %l59
  %t863 = getelementptr { ptr, i32, i32 }, ptr %l59, i32 0, i32 0
  %t864 = load ptr, ptr %t863, !tbaa !29
  store ptr %t864, ptr %l58, !tbaa !29
  %t867 = getelementptr { ptr, i32, i32 }, ptr %l59, i32 0, i32 1
  %t868 = load i32, ptr %t867, !tbaa !23
  store i32 %t868, ptr %l13, !tbaa !23
  %t870 = getelementptr { ptr, i32, i32 }, ptr %l59, i32 0, i32 2
  %t871 = load i32, ptr %t870, !tbaa !23
  store i32 %t871, ptr %l14, !tbaa !23
  br label %bb220
bb220:
  %t873 = load ptr, ptr %l0, !tbaa !29
  %t874 = load i64, ptr %l41, !tbaa !24
  %t875 = load i64, ptr %l42, !tbaa !24
  %t876 = load i64, ptr %l43, !tbaa !24
  %t877 = load i64, ptr %l44, !tbaa !24
  %t883 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t873, i64 %t874, i64 %t875, i64 %t876, i64 %t877)
  store ptr %t883, ptr %l486
  br label %bb221
bb221:
  %t884 = load ptr, ptr %l486, !tbaa !29
  store ptr %t884, ptr %l60, !tbaa !29
  %t885 = load ptr, ptr %l15, !tbaa !29
  store ptr %t885, ptr %l487, !tbaa !29
  %t886 = load ptr, ptr %l39, !tbaa !29
  %t888 = getelementptr %"compiler/ast:Case", ptr %t886, i32 0, i32 0
  %t889 = load %"compiler/source:Span", ptr %t888
  store %"compiler/source:Span" %t889, ptr %l489
  %t890 = load ptr, ptr %l45, !tbaa !29
  %t892 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2eToArray_3ccompiler_2ftyped_3aAlt_26_3e(ptr %v2, ptr %v2, ptr %t890)
  store { i64, ptr } %t892, ptr %l491
  br label %bb222
bb222:
  %t893 = load ptr, ptr %l56, !tbaa !29
  %t894 = load ptr, ptr %l60, !tbaa !29
  %t896 = load ptr, ptr %l58, !tbaa !29
  %t897 = load %"compiler/source:Span", ptr %l489
  %t898 = load { i64, ptr }, ptr %l491, !tbaa !27
  %t902 = call %"compiler/typed:Arm" @compiler_2ftyped_3aArm_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v0, ptr %v2, %"compiler/source:Span" %t897, { i64, ptr } %t898, ptr %t893, ptr %t894, ptr %t896)
  store %"compiler/typed:Arm" %t902, ptr %l496
  br label %bb223
bb223:
  %t903 = load %"compiler/typed:Arm", ptr %l496
  %t904 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/typed:Arm" %t903, ptr %t904
  %t905 = load ptr, ptr %l487, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ePush_3ccompiler_2ftyped_3aArm_26_3e(ptr %v2, ptr %v2, ptr %t905, ptr %t904)
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s18)
  br label %bb225
bb225:
  %t907 = load i64, ptr %l37, !tbaa !24
  %t909 = add i64 %t907, 1
  store i64 %t909, ptr %l37, !tbaa !24
  br label %bb92
bb226:
  %t911 = load i1, ptr %l30, !tbaa !21
  store i1 %t911, ptr %l61, !tbaa !21
  %t913 = load i1, ptr %l61, !tbaa !21
  %t915 = xor i1 %t913, true
  br i1 %t915, label %bb227, label %bb228
bb227:
  %t917 = load ptr, ptr %l16, !tbaa !29
  %t919 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t917)
  store i64 %t919, ptr %l505
  br label %bb229
bb228:
  store i1 false, ptr %l503, !tbaa !21
  br label %bb230
bb229:
  %t920 = load i64, ptr %l505, !tbaa !24
  %t921 = icmp sgt i64 %t920, 0
  store i1 %t921, ptr %l503, !tbaa !21
  br label %bb230
bb230:
  %t923 = load i1, ptr %l503, !tbaa !21
  br i1 %t923, label %bb231, label %bb232
bb231:
  store i1 true, ptr %l61, !tbaa !21
  %t924 = load ptr, ptr %l16, !tbaa !29
  store ptr %t924, ptr %l62, !tbaa !29
  store i64 0, ptr %l63, !tbaa !24
  br label %bb233
bb232:
  br label %bb244
bb233:
  %t926 = load i64, ptr %l63, !tbaa !24
  store i64 %t926, ptr %l508, !tbaa !24
  %t927 = load ptr, ptr %l62, !tbaa !29
  %t929 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t927)
  store i64 %t929, ptr %l510
  br label %bb234
bb234:
  %t930 = load i64, ptr %l508, !tbaa !24
  %t931 = load i64, ptr %l510, !tbaa !24
  %t932 = icmp slt i64 %t930, %t931
  %t934 = xor i1 %t932, true
  br i1 %t934, label %bb235, label %bb236
bb235:
  br label %bb243
bb236:
  br label %bb237
bb237:
  %t936 = load ptr, ptr %l62, !tbaa !29
  %t937 = load i64, ptr %l63, !tbaa !24
  %t940 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t936, i64 %t937)
  store i1 %t940, ptr %l515
  br label %bb238
bb238:
  %t941 = load i1, ptr %l515, !tbaa !21
  %t944 = xor i1 %t941, true
  br i1 %t944, label %bb239, label %bb240
bb239:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb241
bb240:
  br label %bb241
bb241:
  br label %bb242
bb242:
  %t946 = load i64, ptr %l63, !tbaa !24
  %t948 = add i64 %t946, 1
  store i64 %t948, ptr %l63, !tbaa !24
  br label %bb233
bb243:
  br label %bb244
bb244:
  %t950 = load i1, ptr %l61, !tbaa !21
  %t952 = xor i1 %t950, true
  br i1 %t952, label %bb245, label %bb246
bb245:
  store %olang.scope zeroinitializer, ptr %s40
  %t954 = load ptr, ptr %l0, !tbaa !29
  store ptr %t954, ptr %l522, !tbaa !29
  %t955 = load ptr, ptr %l33, !tbaa !29
  store ptr %t955, ptr %l523, !tbaa !29
  %t956 = load i32, ptr %l17, !tbaa !23
  store i32 %t956, ptr %l524, !tbaa !23
  %t957 = icmp sge i64 1, 0
  br i1 %t957, label %bb247, label %bb248
bb246:
  br label %bb252
bb247:
  %t959 = icmp sle i64 1, 2305843009213693951
  br i1 %t959, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_a6a47d3964202a2d_3c9966e8358b9b71)
  unreachable
bb249:
  %t961 = mul i64 1, 4
  %t962 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t961)
  %t963 = load i32, ptr %l524, !tbaa !23
  store i64 0, ptr %t964
  br label %fill.965
fill.965:
  %t968 = load i64, ptr %t964
  %t969 = icmp slt i64 %t968, 1
  br i1 %t969, label %fillb.966, label %filld.967
fillb.966:
  %t970 = getelementptr i32, ptr %t962, i64 %t968
  store i32 %t963, ptr %t970
  %t971 = add i64 %t968, 1
  store i64 %t971, ptr %t964
  br label %fill.965
filld.967:
  %t972 = insertvalue { i64, ptr } undef, i64 1, 0
  %t973 = insertvalue { i64, ptr } %t972, ptr %t962, 1
  %t974 = load ptr, ptr %l522, !tbaa !29
  %t975 = load ptr, ptr %l523, !tbaa !29
  %t977 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v2, ptr %s40, ptr %t974, ptr %t975, { i64, ptr } %t973, i64 0)
  store i1 %t977, ptr %l528
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_a6a47d3964202a2d_3c9966e8358b9b71)
  unreachable
bb251:
  %t978 = load i1, ptr %l528, !tbaa !21
  store i1 %t978, ptr %l61, !tbaa !21
  call void @__olang_scope_close(ptr %s40)
  br label %bb252
bb252:
  %t979 = load ptr, ptr %l0, !tbaa !29
  %t981 = getelementptr %"compiler/check:Checker", ptr %t979, i32 0, i32 158
  %t982 = load i1, ptr %t981, !tbaa !21
  br i1 %t982, label %bb253, label %bb254
bb253:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb255
bb254:
  br label %bb255
bb255:
  %t984 = load ptr, ptr %l0, !tbaa !29
  %t985 = load i1, ptr %l32, !tbaa !21
  %t988 = getelementptr %"compiler/check:Checker", ptr %t984, i32 0, i32 158
  store i1 %t985, ptr %t988, !tbaa !21
  %t989 = load ptr, ptr %l0, !tbaa !29
  %t990 = load ptr, ptr %l2, !tbaa !29
  %t991 = load i32, ptr %l6, !tbaa !23
  %t992 = load ptr, ptr %l33, !tbaa !29
  %t993 = load ptr, ptr %l16, !tbaa !29
  %t994 = load i1, ptr %l61, !tbaa !21
  %t995 = load i1, ptr %l3, !tbaa !21
  %t1003 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchElse(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t989, ptr %t990, i32 %t991, ptr %t992, ptr %t993, i1 %t994, i1 %t995)
  store ptr %t1003, ptr %l540
  br label %bb256
bb256:
  %t1004 = load ptr, ptr %l540, !tbaa !29
  store ptr %t1004, ptr %l65, !tbaa !29
  %t1005 = load i1, ptr %l3, !tbaa !21
  %t1007 = xor i1 %t1005, true
  br i1 %t1007, label %bb257, label %bb258
bb257:
  %t1009 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t1009, ptr %l13, !tbaa !23
  br label %bb259
bb258:
  br label %bb259
bb259:
  store %"compiler/source:Span" %a1, ptr %l544
  %t1012 = load i32, ptr %l13, !tbaa !23
  store i32 %t1012, ptr %l545, !tbaa !23
  %t1013 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t1013, ptr %l546, !tbaa !27
  %t1014 = load ptr, ptr %l15, !tbaa !29
  %t1016 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eToArray_3ccompiler_2ftyped_3aArm_26_3e(ptr %v2, ptr %v2, ptr %t1014)
  store { i64, ptr } %t1016, ptr %l548
  br label %bb260
bb260:
  %t1017 = load ptr, ptr %l65, !tbaa !29
  %t1019 = load i1, ptr %l3, !tbaa !21
  %t1020 = load { i64, ptr }, ptr %l546, !tbaa !27
  %t1021 = load { i64, ptr }, ptr %l548, !tbaa !27
  %t1024 = call %"compiler/typed:Match" @compiler_2ftyped_3aMatch_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t1020, { i64, ptr } %t1021, ptr %t1017, i1 %t1019)
  store %"compiler/typed:Match" %t1024, ptr %l552
  br label %bb261
bb261:
  %t1025 = load %"compiler/typed:Match", ptr %l552
  %t1026 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/typed:Match" %t1025, ptr %t1026
  store { i64, [5 x i64] } zeroinitializer, ptr %t1027
  %t1028 = getelementptr { i64, [5 x i64] }, ptr %t1027, i32 0, i32 0
  store i64 13, ptr %t1028
  %t1029 = load %"compiler/source:Span", ptr %l544
  %t1030 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1029, 0
  %t1031 = load i32, ptr %l545, !tbaa !23
  %t1032 = insertvalue { %"compiler/source:Span", i32, ptr } %t1030, i32 %t1031, 1
  %t1034 = insertvalue { %"compiler/source:Span", i32, ptr } %t1032, ptr %t1026, 2
  %t1035 = getelementptr { i64, [5 x i64] }, ptr %t1027, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1034, ptr %t1035
  %t1036 = load { i64, [5 x i64] }, ptr %t1027
  %t1038 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1036, ptr %t1038
  store ptr %t1038, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emismatch(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i1
  %l32 = alloca i64
  %l34 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i64
  %l50 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca i64
  %l59 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l69 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca i32
  %l74 = alloca i64
  %l75 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l92 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i32
  %l100 = alloca i32
  %l102 = alloca ptr
  %l103 = alloca %"compiler/source:Span"
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l106 = alloca i64
  %l109 = alloca i32
  %l111 = alloca i32
  %l113 = alloca i1
  %l115 = alloca i1
  %l116 = alloca i1
  %l118 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l123 = alloca %"compiler/diagmsg:Msg"
  %l124 = alloca i64
  %l127 = alloca i32
  %l129 = alloca i32
  %l131 = alloca i1
  %l133 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l137 = alloca %"compiler/diagmsg:Msg"
  %l138 = alloca i64
  %l139 = alloca ptr
  %l140 = alloca %"compiler/source:Span"
  %l143 = alloca %"compiler/diagmsg:Msg"
  %l144 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l8, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e5
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i64, ptr %l8
  %t9 = inttoptr i64 %t8 to ptr
  %t12 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %t9, ptr %t6, i32 %t7)
  store { i64, ptr } %t12, ptr %l12
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e5
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l8
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = load { i64, ptr }, ptr %l12
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = call ptr @__olang_region_or(ptr %t18, ptr null)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t22)
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t23, ptr %l5, !tbaa !27
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t28 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %s0, ptr %t24, ptr %t25)
  store { i64, ptr } %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t29, ptr %l6, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t30, { i64, ptr } %t31)
  store i1 %t34, ptr %l19
  br label %bb7
bb7:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l21, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l24
  br label %bb10
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb10:
  %t42 = load ptr, ptr %l21, !tbaa !29
  %t43 = load i32, ptr %l24, !tbaa !23
  %t44 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t44, ptr %l25
  br label %bb11
bb11:
  %t45 = load i1, ptr %l25, !tbaa !21
  store i1 %t45, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l20, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l27, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l30
  br label %bb15
bb14:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb17
bb15:
  %t53 = load ptr, ptr %l27, !tbaa !29
  %t54 = load i32, ptr %l30, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t55, ptr %l31
  br label %bb16
bb16:
  %t56 = load i1, ptr %l31, !tbaa !21
  store i1 %t56, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l26, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t58 = ptrtoint ptr %s0 to i64
  store i64 %t58, ptr %l32, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e5
  br i1 %t59, label %bb20, label %bb21
bb19:
  br label %bb40
bb20:
  %t61 = call ptr @__olang_region_make(ptr %s0)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l32, !tbaa !24
  br label %bb21
bb21:
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t63, ptr %l34, !tbaa !27
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/load:Loader", ptr %t70, i32 0, i32 10
  store ptr %t72, ptr %l38, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  store ptr %t78, ptr %l41, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  store ptr %t84, ptr %l44, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l3, !tbaa !23
  %t89 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l47
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l44, !tbaa !29
  %t91 = load i32, ptr %l47, !tbaa !23
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t92, ptr %l48
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l41, !tbaa !29
  %t94 = load i32, ptr %l48, !tbaa !23
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t93, i32 %t94)
  store i64 %t95, ptr %l49
  br label %bb24
bb24:
  %t96 = load ptr, ptr %l38, !tbaa !29
  %t97 = load i64, ptr %l49, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  store ptr %t98, ptr %l50
  br label %bb25
bb25:
  %t99 = load ptr, ptr %l50, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t110 = extractvalue { i64, ptr } %t102, 1
  %t111 = extractvalue { i64, ptr } %t102, 0
  %t112 = add i64 %t108, %t111
  %t113 = load i64, ptr %l32
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t112)
  call void @olang_textcopy(ptr %t115, ptr %t104, i64 %t105)
  %t116 = getelementptr i8, ptr %t115, i64 %t105
  call void @olang_textcopy(ptr %t116, ptr %t106, i64 %t107)
  %t117 = getelementptr i8, ptr %t116, i64 %t107
  call void @olang_textcopy(ptr %t117, ptr %t110, i64 %t111)
  %t118 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t115, 1
  store { i64, ptr } %t119, ptr %l53, !tbaa !27
  %t120 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e5
  br i1 %t120, label %bb26, label %bb27
bb26:
  %t122 = load i64, ptr %l32
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = load { i64, ptr }, ptr %l53
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr null
  %t129 = icmp eq ptr %t128, %t123
  call void @__olang_region_settle(ptr %t123, i1 %t129)
  br label %bb27
bb27:
  %t130 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t130, ptr %l55, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t131, ptr %l5, !tbaa !27
  %t132 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e5
  br i1 %t132, label %bb28, label %bb29
bb28:
  %t134 = load { i64, ptr }, ptr %l55
  %t135 = extractvalue { i64, ptr } %t134, 1
  call void @__olang_region_release(ptr %t135)
  store { i64, ptr } zeroinitializer, ptr %l55
  br label %bb29
bb29:
  %t136 = ptrtoint ptr %s0 to i64
  store i64 %t136, ptr %l57, !tbaa !24
  %t137 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e6
  br i1 %t137, label %bb30, label %bb31
bb30:
  %t139 = call ptr @__olang_region_make(ptr %s0)
  %t140 = ptrtoint ptr %t139 to i64
  store i64 %t140, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t141 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t141, ptr %l59, !tbaa !27
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/load:Loader", ptr %t148, i32 0, i32 10
  store ptr %t150, ptr %l63, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  store ptr %t156, ptr %l66, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 2
  store ptr %t162, ptr %l69, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l2, !tbaa !23
  %t167 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l72
  br label %bb32
bb32:
  %t168 = load ptr, ptr %l69, !tbaa !29
  %t169 = load i32, ptr %l72, !tbaa !23
  %t170 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t168, i32 %t169)
  store i32 %t170, ptr %l73
  br label %bb33
bb33:
  %t171 = load ptr, ptr %l66, !tbaa !29
  %t172 = load i32, ptr %l73, !tbaa !23
  %t173 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t171, i32 %t172)
  store i64 %t173, ptr %l74
  br label %bb34
bb34:
  %t174 = load ptr, ptr %l63, !tbaa !29
  %t175 = load i64, ptr %l74, !tbaa !24
  %t176 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t174, i64 %t175)
  store ptr %t176, ptr %l75
  br label %bb35
bb35:
  %t177 = load ptr, ptr %l75, !tbaa !29
  %t179 = getelementptr %"compiler/load:Module", ptr %t177, i32 0, i32 2
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  %t181 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 1
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t186 = add i64 %t183, %t185
  %t188 = extractvalue { i64, ptr } %t180, 1
  %t189 = extractvalue { i64, ptr } %t180, 0
  %t190 = add i64 %t186, %t189
  %t191 = load i64, ptr %l57
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = call ptr @__olang_scope_alloc(ptr %t192, i64 %t190)
  call void @olang_textcopy(ptr %t193, ptr %t182, i64 %t183)
  %t194 = getelementptr i8, ptr %t193, i64 %t183
  call void @olang_textcopy(ptr %t194, ptr %t184, i64 %t185)
  %t195 = getelementptr i8, ptr %t194, i64 %t185
  call void @olang_textcopy(ptr %t195, ptr %t188, i64 %t189)
  %t196 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  store { i64, ptr } %t197, ptr %l78, !tbaa !27
  %t198 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e6
  br i1 %t198, label %bb36, label %bb37
bb36:
  %t200 = load i64, ptr %l57
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = load { i64, ptr }, ptr %l78
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = icmp eq ptr %t206, %t201
  call void @__olang_region_settle(ptr %t201, i1 %t207)
  br label %bb37
bb37:
  %t208 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t208, ptr %l80, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t209, ptr %l6, !tbaa !27
  %t210 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e6
  br i1 %t210, label %bb38, label %bb39
bb38:
  %t212 = load { i64, ptr }, ptr %l80
  %t213 = extractvalue { i64, ptr } %t212, 1
  call void @__olang_region_release(ptr %t213)
  store { i64, ptr } zeroinitializer, ptr %l80
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l82, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i32, ptr %l2, !tbaa !23
  %t219 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t215, i32 %t216)
  store i32 %t219, ptr %l85
  br label %bb41
bb41:
  %t220 = load ptr, ptr %l82, !tbaa !29
  %t221 = load i32, ptr %l85, !tbaa !23
  %t222 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t220, i32 %t221)
  store { i64, ptr } %t222, ptr %l86
  br label %bb42
bb42:
  %t223 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t223, ptr %l7, !tbaa !27
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 137
  %t227 = load i64, ptr %t226, !tbaa !24
  %t228 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t229 = load i32, ptr %t228, !tbaa !23
  %t231 = sext i32 %t229 to i64
  %t234 = icmp eq i64 %t227, %t231
  br i1 %t234, label %bb43, label %bb44
bb43:
  %t236 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t236, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t238, ptr %l94
  br label %bb45
bb44:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb46
bb45:
  %t239 = load i1, ptr %l94, !tbaa !21
  store i1 %t239, ptr %l92, !tbaa !21
  br label %bb46
bb46:
  %t240 = load i1, ptr %l92, !tbaa !21
  br i1 %t240, label %bb47, label %bb48
bb47:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i32, ptr %l2, !tbaa !23
  %t245 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t241, i32 %t242)
  store i32 %t245, ptr %l98
  br label %bb49
bb48:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb51
bb49:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t246)
  store i32 %t248, ptr %l100
  br label %bb50
bb50:
  %t249 = load i32, ptr %l98, !tbaa !23
  %t250 = load i32, ptr %l100, !tbaa !23
  %t251 = icmp eq i32 %t249, %t250
  store i1 %t251, ptr %l95, !tbaa !21
  br label %bb51
bb51:
  %t253 = load i1, ptr %l95, !tbaa !21
  br i1 %t253, label %bb52, label %bb53
bb52:
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l102, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t255, ptr %l103
  %t256 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t258 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextForLength(ptr %s0, ptr %v0, { i64, ptr } %t256)
  store %"compiler/diagmsg:Msg" %t258, ptr %l105
  br label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s5
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i32, ptr %l3, !tbaa !23
  %t263 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t259, i32 %t260)
  store i32 %t263, ptr %l109
  br label %bb56
bb54:
  %t264 = load ptr, ptr %l102, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l103
  %t266 = load %"compiler/diagmsg:Msg", ptr %l105
  %t267 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t264, %"compiler/source:Span" %t265, %"compiler/diagmsg:Msg" %t266)
  store i64 %t267, ptr %l106
  br label %bb55
bb55:
  br label %bb84
bb56:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t268)
  store i32 %t270, ptr %l111
  br label %bb57
bb57:
  %t271 = load i32, ptr %l109, !tbaa !23
  %t272 = load i32, ptr %l111, !tbaa !23
  %t273 = icmp eq i32 %t271, %t272
  br i1 %t273, label %bb58, label %bb59
bb58:
  %t275 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t277 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t275, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t277, ptr %l115
  br label %bb60
bb59:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb65
bb60:
  %t278 = load i1, ptr %l115, !tbaa !21
  br i1 %t278, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb64
bb62:
  %t279 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t281 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t279, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t281, ptr %l118
  br label %bb63
bb63:
  %t282 = load i1, ptr %l118, !tbaa !21
  store i1 %t282, ptr %l116, !tbaa !21
  br label %bb64
bb64:
  %t283 = load i1, ptr %l116, !tbaa !21
  store i1 %t283, ptr %l113, !tbaa !21
  br label %bb65
bb65:
  %t284 = load i1, ptr %l113, !tbaa !21
  br i1 %t284, label %bb66, label %bb67
bb66:
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l119, !tbaa !29
  %t286 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t286, ptr %l120
  %t287 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t288 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t291 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharsForText(ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t287, { i64, ptr } %t288)
  store %"compiler/diagmsg:Msg" %t291, ptr %l123
  br label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s7
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load i32, ptr %l3, !tbaa !23
  %t296 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t292, i32 %t293)
  store i32 %t296, ptr %l127
  br label %bb70
bb68:
  %t297 = load ptr, ptr %l119, !tbaa !29
  %t298 = load %"compiler/source:Span", ptr %l120
  %t299 = load %"compiler/diagmsg:Msg", ptr %l123
  %t300 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t297, %"compiler/source:Span" %t298, %"compiler/diagmsg:Msg" %t299)
  store i64 %t300, ptr %l124
  br label %bb69
bb69:
  br label %bb83
bb70:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t301)
  store i32 %t303, ptr %l129
  br label %bb71
bb71:
  %t304 = load i32, ptr %l127, !tbaa !23
  %t305 = load i32, ptr %l129, !tbaa !23
  %t306 = icmp eq i32 %t304, %t305
  br i1 %t306, label %bb72, label %bb73
bb72:
  %t308 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t310 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s7, { i64, ptr } %t308, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t310, ptr %l133
  br label %bb74
bb73:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb75
bb74:
  %t311 = load i1, ptr %l133, !tbaa !21
  store i1 %t311, ptr %l131, !tbaa !21
  br label %bb75
bb75:
  %t312 = load i1, ptr %l131, !tbaa !21
  br i1 %t312, label %bb76, label %bb77
bb76:
  %t313 = load ptr, ptr %l0, !tbaa !29
  store ptr %t313, ptr %l134, !tbaa !29
  %t314 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t314, ptr %l135
  %t315 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t317 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderForText(ptr %s0, ptr %v0, { i64, ptr } %t315)
  store %"compiler/diagmsg:Msg" %t317, ptr %l137
  br label %bb78
bb77:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l139, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t319, ptr %l140
  %t320 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t321 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t324 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t320, { i64, ptr } %t321)
  store %"compiler/diagmsg:Msg" %t324, ptr %l143
  br label %bb80
bb78:
  %t325 = load ptr, ptr %l134, !tbaa !29
  %t326 = load %"compiler/source:Span", ptr %l135
  %t327 = load %"compiler/diagmsg:Msg", ptr %l137
  %t328 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t325, %"compiler/source:Span" %t326, %"compiler/diagmsg:Msg" %t327)
  store i64 %t328, ptr %l138
  br label %bb79
bb79:
  br label %bb82
bb80:
  %t329 = load ptr, ptr %l139, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l140
  %t331 = load %"compiler/diagmsg:Msg", ptr %l143
  %t332 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t329, %"compiler/source:Span" %t330, %"compiler/diagmsg:Msg" %t331)
  store i64 %t332, ptr %l144
  br label %bb81
bb81:
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s7)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s5)
  br label %bb84
bb84:
  %t333 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t333, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emixedLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l33 = alloca %"compiler/diagmsg:Msg"
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l8, !tbaa !29
  %t8 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %a1)
  store %"compiler/source:Span" %t8, ptr %l10
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l10
  %t11 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t9, %"compiler/source:Span" %t10)
  store { i64, ptr } %t11, ptr %l11
  br label %bb3
bb3:
  %t12 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 1
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t14)
  call void @olang_textcopy(ptr %t15, ptr %t13, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l13, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t25, i32 %t26)
  store { i64, ptr } %t29, ptr %l16
  br label %bb4
bb4:
  %t30 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l17, !tbaa !27
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l18, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t38)
  store %"compiler/source:Span" %t40, ptr %l20
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l18, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l20
  %t43 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t41, %"compiler/source:Span" %t42)
  store { i64, ptr } %t43, ptr %l21
  br label %bb6
bb6:
  %t44 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t45, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = extractvalue { i64, ptr } %t49, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l23, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t61 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t57, i32 %a4)
  store { i64, ptr } %t61, ptr %l26
  br label %bb7
bb7:
  %t62 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  %t64 = extractvalue { i64, ptr } %t62, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l27, !tbaa !27
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l2, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t69, i32 %t70)
  store { i64, ptr } %t73, ptr %l30
  br label %bb8
bb8:
  %t74 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t76 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t74, i64 %t75)
  %t84 = getelementptr i8, ptr %t83, i64 %t75
  call void @olang_textcopy(ptr %t84, ptr %t77, i64 %t78)
  %t85 = getelementptr i8, ptr %t84, i64 %t78
  call void @olang_textcopy(ptr %t85, ptr %t80, i64 %t81)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t83, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = extractvalue { i64, ptr } %t87, 1
  %t91 = mul i64 %t89, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t91)
  call void @llvm.memcpy.p0.p0.i64(ptr %t92, ptr %t90, i64 %t91, i1 false)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  %t95 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t100 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralMixed(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t95, { i64, ptr } %t96, { i64, ptr } %t97, { i64, ptr } %t98, { i64, ptr } %t94)
  store %"compiler/diagmsg:Msg" %t100, ptr %l33
  br label %bb9
bb9:
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l7
  %t103 = load %"compiler/diagmsg:Msg", ptr %l33
  %t104 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t101, %"compiler/source:Span" %t102, %"compiler/diagmsg:Msg" %t103)
  store i64 %t104, ptr %l34
  br label %bb10
bb10:
  %t105 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t105, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca %"compiler/typed:Body"
  %rv = alloca i64
  %t34 = alloca %"compiler/typed:Body", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 18
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 18
  store ptr %t9, ptr %l10, !tbaa !29
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = trunc i64 %t10 to i32
  store i32 %t12, ptr %l13, !tbaa !23
  store { i64, [2 x i64] } %a1, ptr %l14
  store i32 %a2, ptr %l15, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 10
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t24, i64 %a3)
  store ptr %t28, ptr %l21
  br label %bb2
bb2:
  %t29 = load ptr, ptr %l21, !tbaa !29
  %t31 = getelementptr %"compiler/load:Module", ptr %t29, i32 0, i32 4
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = load i32, ptr %l13, !tbaa !23
  %t36 = load { i64, [2 x i64] }, ptr %l14
  %t37 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2ftyped_3aBody_2ector(ptr %t34, ptr %v0, i32 %t35, { i64, [2 x i64] } %t36, i32 %t37, i64 %t32, %"compiler/source:Span" %a4)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t34, i64 440, i1 false)
  br label %bb3
bb3:
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 440, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %l25, i64 440, i1 false)
  %t41 = load ptr, ptr %l10, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Hb4635a51dd989c2102029bfb32ae3a2f(ptr %v0, ptr %v0, ptr %t41, ptr %t40)
  br label %bb4
bb4:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t45, i64 0)
  br label %bb5
bb5:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 21
  %t50 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t49, i64 %t50)
  br label %bb6
bb6:
  %t53 = load i64, ptr %l5, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l22 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l11
  br label %bb4
bb4:
  %t14 = load i1, ptr %l11, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb9
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l16
  br label %bb8
bb8:
  %t23 = load i1, ptr %l16, !tbaa !21
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t31 = load i32, ptr %l3, !tbaa !23
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t29, i32 %t30, i32 %t31)
  store i32 %t35, ptr %l22
  br label %bb13
bb13:
  %t36 = load i32, ptr %l22, !tbaa !23
  %t37 = icmp sge i32 %t36, 0
  br i1 %t37, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l25, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l26
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l29
  br label %bb17
bb17:
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l30, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t54, i32 %t55)
  store { i64, ptr } %t58, ptr %l33
  br label %bb18
bb18:
  %t59 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l34, !tbaa !27
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l3, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t66, i32 %t67)
  store { i64, ptr } %t70, ptr %l37
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  %t78 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t81 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralDoesNotMeet(ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t78, { i64, ptr } %t79, { i64, ptr } %t77)
  store %"compiler/diagmsg:Msg" %t81, ptr %l39
  br label %bb20
bb20:
  %t82 = load ptr, ptr %l25, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l26
  %t84 = load %"compiler/diagmsg:Msg", ptr %l39
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t82, %"compiler/source:Span" %t83, %"compiler/diagmsg:Msg" %t84)
  store i64 %t85, ptr %l40
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullableArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l5, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb8
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l11, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l98 = alloca ptr
  %l102 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t3 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t1)
  store { i64, ptr } %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t4, ptr %l6, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load i1, ptr %l14, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l16, !tbaa !29
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t11)
  store i32 %t14, ptr %l19
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l16, !tbaa !29
  %t16 = load i32, ptr %l19, !tbaa !23
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l20
  br label %bb7
bb7:
  %t18 = load i32, ptr %l20, !tbaa !23
  store i32 %t18, ptr %l7, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l7, !tbaa !23
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l23
  br label %bb8
bb8:
  %t24 = load i1, ptr %l23, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l26, !tbaa !29
  %t29 = load i32, ptr %l7, !tbaa !23
  store i32 %t29, ptr %l27, !tbaa !23
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t30, ptr %l28, !tbaa !27
  %t31 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t31, ptr %l29
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t34 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t32)
  store { i64, ptr } %t34, ptr %l31
  br label %bb12
bb12:
  %t35 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t36 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %s0, { i64, ptr } %t35)
  store { i64, ptr } %t36, ptr %l32
  br label %bb13
bb13:
  %t37 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  %t39 = extractvalue { i64, ptr } %t37, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = load i32, ptr %l27, !tbaa !23
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t47 = load %"compiler/source:Span", ptr %l29
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s0, ptr %s0, ptr %t44, i32 %t45, { i64, ptr } %t46, i64 1, %"compiler/source:Span" %t47, { i64, ptr } %t43)
  store i64 %t49, ptr %l34
  br label %bb14
bb14:
  %t50 = load i64, ptr %l34, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l38, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l39, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l43
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l43, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Func", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load ptr, ptr %l39, !tbaa !29
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t70, i32 %t69)
  store { i64, ptr } %t72, ptr %l46
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 57
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l47, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 57
  store { i64, ptr } %t76, ptr %t78, !tbaa !27
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e57
  br i1 %t79, label %bb20, label %bb21
bb20:
  %t81 = load { i64, ptr }, ptr %l47
  %t82 = extractvalue { i64, ptr } %t81, 1
  call void @__olang_region_release(ptr %t82)
  store { i64, ptr } zeroinitializer, ptr %l47
  br label %bb21
bb21:
  %t83 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t85 = trunc i64 98 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb24
bb23:
  %t88 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t90 = trunc i64 97 to i32
  %t91 = icmp eq i32 %t88, %t90
  store i1 %t91, ptr %l51, !tbaa !21
  br label %bb24
bb24:
  %t93 = load i1, ptr %l51, !tbaa !21
  br i1 %t93, label %bb25, label %bb26
bb25:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l54, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t95, ptr %l55
  %t96 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t96, ptr %l56
  %t97 = load i64, ptr %l8, !tbaa !24
  store i64 %t97, ptr %l57, !tbaa !24
  %t98 = load ptr, ptr %l5, !tbaa !29
  store ptr %t98, ptr %l59, !tbaa !29
  %t100 = icmp sge i64 0, 0
  br i1 %t100, label %bb27, label %bb28
bb26:
  br label %bb41
bb27:
  %t102 = icmp sle i64 0, 1152921504606846975
  br i1 %t102, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_9311a1fdea965308_123228c6f8b4663c)
  unreachable
bb29:
  %t104 = mul i64 0, 8
  %t105 = insertvalue { i64, ptr } undef, i64 0, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t106, ptr %l62, !tbaa !27
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l4, !tbaa !29
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v0, ptr %t107, ptr %t108)
  store { i64, ptr } %t111, ptr %l65
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_9311a1fdea965308_123228c6f8b4663c)
  unreachable
bb31:
  %t112 = icmp sge i64 0, 0
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = icmp sle i64 0, 2305843009213693951
  br i1 %t114, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb34:
  %t116 = mul i64 0, 4
  %t117 = insertvalue { i64, ptr } undef, i64 0, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t119 = load ptr, ptr %l54, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l55
  %t121 = load %"compiler/source:Span", ptr %l56
  %t122 = load i64, ptr %l57, !tbaa !24
  %t123 = load ptr, ptr %l59, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t119, %"compiler/source:Span" %t120, %"compiler/source:Span" %t121, i64 %t122, ptr %t123, { i64, ptr } %t124, { i64, ptr } %t125, { i64, ptr } %t118)
  store ptr %t127, ptr %l69
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb36:
  %t128 = load ptr, ptr %l69, !tbaa !29
  store ptr %t128, ptr %l9, !tbaa !29
  %t129 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t131 = trunc i64 97 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb37, label %bb38
bb37:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  %t136 = load ptr, ptr %l9, !tbaa !29
  %t140 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t134, %"compiler/source:Span" %t135, ptr %t136)
  store ptr %t140, ptr %l76
  br label %bb39
bb38:
  %t141 = load ptr, ptr %l9, !tbaa !29
  store ptr %t141, ptr %l72, !tbaa !29
  br label %bb40
bb39:
  %t144 = load ptr, ptr %l76, !tbaa !29
  store ptr %t144, ptr %l72, !tbaa !29
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t146 = load ptr, ptr %l72, !tbaa !29
  store ptr %t146, ptr %rv
  br label %ret
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l80, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t148, ptr %l81
  %t149 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t149, ptr %l82
  %t150 = load i64, ptr %l8, !tbaa !24
  store i64 %t150, ptr %l83, !tbaa !24
  %t151 = load ptr, ptr %l4, !tbaa !29
  store ptr %t151, ptr %l85, !tbaa !29
  %t153 = icmp sge i64 0, 0
  br i1 %t153, label %bb42, label %bb43
bb42:
  %t155 = icmp sle i64 0, 1152921504606846975
  br i1 %t155, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_53860b63ce2a3756_eab450cf1ae092ca)
  unreachable
bb44:
  %t157 = mul i64 0, 8
  %t158 = insertvalue { i64, ptr } undef, i64 0, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t159, ptr %l88, !tbaa !27
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l5, !tbaa !29
  %t164 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v2, ptr %v0, ptr %t160, ptr %t161)
  store { i64, ptr } %t164, ptr %l91
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_53860b63ce2a3756_eab450cf1ae092ca)
  unreachable
bb46:
  %t165 = icmp sge i64 0, 0
  br i1 %t165, label %bb47, label %bb48
bb47:
  %t167 = icmp sle i64 0, 2305843009213693951
  br i1 %t167, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb49:
  %t169 = mul i64 0, 4
  %t170 = insertvalue { i64, ptr } undef, i64 0, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t172 = load ptr, ptr %l80, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l81
  %t174 = load %"compiler/source:Span", ptr %l82
  %t175 = load i64, ptr %l83, !tbaa !24
  %t176 = load ptr, ptr %l85, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t172, %"compiler/source:Span" %t173, %"compiler/source:Span" %t174, i64 %t175, ptr %t176, { i64, ptr } %t177, { i64, ptr } %t178, { i64, ptr } %t171)
  store ptr %t180, ptr %l95
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_6fa6db75017b9575_1d827b27b68e8189)
  unreachable
bb51:
  %t181 = load ptr, ptr %l95, !tbaa !29
  store ptr %t181, ptr %l10, !tbaa !29
  %t182 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t184 = trunc i64 99 to i32
  %t185 = icmp eq i32 %t182, %t184
  br i1 %t185, label %bb52, label %bb53
bb52:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t189 = load ptr, ptr %l10, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t187, %"compiler/source:Span" %t188, ptr %t189)
  store ptr %t193, ptr %l102
  br label %bb54
bb53:
  %t194 = load ptr, ptr %l10, !tbaa !29
  store ptr %t194, ptr %l98, !tbaa !29
  br label %bb55
bb54:
  %t197 = load ptr, ptr %l102, !tbaa !29
  store ptr %t197, ptr %l98, !tbaa !29
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  %t199 = load ptr, ptr %l98, !tbaa !29
  store ptr %t199, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca i8
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
  %t2 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t3 = load ptr, ptr %t2, !tbaa !27
  %t4 = getelementptr i8, ptr %t3, i64 0
  %t5 = load i8, ptr %t4, !tbaa !32
  %t7 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %t5)
  store i8 %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t9, 0
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l9, !tbaa !24
  %t15 = icmp sge i64 1, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = icmp sle i64 1, %t17
  br i1 %t18, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8ba315a61b976e68_980c0dda48bb0a1c)
  unreachable
bb4:
  %t20 = load i64, ptr %l8, !tbaa !24
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8ba315a61b976e68_980c0dda48bb0a1c)
  unreachable
bb6:
  %t24 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l8, !tbaa !24
  %t27 = getelementptr i8, ptr %t25, i64 1
  %t28 = sub i64 %t26, 1
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  %t31 = load i8, ptr %l4, !tbaa !22
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = extractvalue { i64, ptr } %t30, 0
  %t35 = add i64 1, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t35)
  store i8 %t31, ptr %t36
  %t37 = getelementptr i8, ptr %t36, i64 1
  call void @olang_textcopy(ptr %t37, ptr %t33, i64 %t34)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t36, 1
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8ba315a61b976e68_980c0dda48bb0a1c)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverImmut(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 3
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [6 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr, ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l18
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 4
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t40 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t37, ptr %t34, ptr %t35)
  store i32 %t40, ptr %l23
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l14, !tbaa !29
  %t42 = load i32, ptr %l23, !tbaa !23
  %t43 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t43, ptr %l24
  br label %bb8
bb8:
  %t44 = load i1, ptr %l24, !tbaa !21
  store i1 %t44, ptr %l6, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_e50f118683988667_19bbe448830cf623)
  unreachable
bb14:
  %t45 = load i1, ptr %l6, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epacked(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %lp10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %lp17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l34 = alloca i32
  %l39 = alloca i64
  %l42 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i64
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l71 = alloca i32
  %l72 = alloca i32
  %l73 = alloca i32
  %l79 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l84 = alloca i32
  %l85 = alloca i32
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l94 = alloca i64
  %l113 = alloca { i64, ptr }
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l150 = alloca i32
  %l151 = alloca { i64, ptr }
  %l154 = alloca %"compiler/source:Span"
  %l155 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca i32
  %l164 = alloca ptr
  %l166 = alloca i32
  %l168 = alloca i64
  %l169 = alloca i32
  %l170 = alloca i32
  %l171 = alloca ptr
  %l172 = alloca %"compiler/source:Span"
  %l173 = alloca i32
  %l174 = alloca i32
  %l176 = alloca { i64, ptr }
  %l180 = alloca i32
  %l182 = alloca %"compiler/typed:Make"
  %l192 = alloca i64
  %l195 = alloca i64
  %l214 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t312 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t4, i64 %t5)
  store i32 %t8, ptr %l34
  br label %bb1
bb1:
  %t9 = load i32, ptr %l34, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t19 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %t15, i32 %t9)
  store i64 %t19, ptr %l39
  br label %bb2
bb2:
  %t20 = load i64, ptr %l39, !tbaa !24
  store i64 %t20, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb5
bb4:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  store i1 %t31, ptr %l42, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l42, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = sub i64 %t36, 1
  store i64 %t38, ptr %l7, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l51, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l2, !tbaa !24
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueAfter(ptr %v0, ptr %t43, i64 %t44)
  store i64 %t47, ptr %l54
  br label %bb9
bb9:
  %t48 = load i64, ptr %l51, !tbaa !24
  %t49 = load i64, ptr %l54, !tbaa !24
  %t50 = sub i64 %t48, %t49
  store i64 %t50, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  br i1 %t56, label %bb10, label %bb11
bb10:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  %t63 = add i64 %t61, 1
  %t66 = icmp eq i64 %t60, %t63
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l65, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l66, !tbaa !29
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t70, ptr %l67, !tbaa !27
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 %t71
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t79 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t76)
  store i32 %t79, ptr %l71
  br label %bb15
bb14:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb18
bb15:
  %t80 = load ptr, ptr %l66, !tbaa !29
  %t81 = load i32, ptr %l71, !tbaa !23
  %t82 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t82, ptr %l72
  br label %bb16
bb16:
  %t83 = load ptr, ptr %l65, !tbaa !29
  %t84 = load i32, ptr %l72, !tbaa !23
  %t85 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t85, ptr %l73
  br label %bb17
bb17:
  %t86 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t87 = load i32, ptr %l73, !tbaa !23
  %t89 = icmp ne i32 %t87, %t86
  store i1 %t89, ptr %l64, !tbaa !21
  br label %bb18
bb18:
  %t91 = load i1, ptr %l64, !tbaa !21
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l79, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t101, ptr %l81, !tbaa !27
  %t102 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i32, ptr %t105, i64 %t102
  %t107 = load i32, ptr %t106, !tbaa !33
  %t110 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t100, i32 %t107)
  store i32 %t110, ptr %l84
  br label %bb22
bb22:
  %t111 = load ptr, ptr %l79, !tbaa !29
  %t112 = load i32, ptr %l84, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t113, ptr %l85
  br label %bb23
bb23:
  %t114 = load i32, ptr %l85, !tbaa !23
  store i32 %t114, ptr %l9, !tbaa !23
  %t115 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l86
  br label %bb24
bb24:
  %t116 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t116, ptr %lp10
  %t117 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  %t118 = load ptr, ptr %lp10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t117, ptr %t118
  store i64 0, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l7, !tbaa !24
  store i64 %t119, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t121 = load i64, ptr %l12, !tbaa !24
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = icmp sgt i64 %t121, %t122
  br i1 %t125, label %bb25, label %bb26
bb25:
  %t127 = load i64, ptr %l13, !tbaa !24
  %t129 = icmp sgt i64 %t127, 0
  br i1 %t129, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb30
bb27:
  %t131 = load i64, ptr %l12, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = sub i64 %t131, %t132
  %t136 = load i64, ptr %l13, !tbaa !24
  %t139 = add i64 %t135, %t136
  %t141 = sub i64 %t139, 1
  %t142 = load i64, ptr %l13, !tbaa !24
  %t145 = sdiv i64 %t141, %t142
  store i64 %t145, ptr %l94, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb29
bb29:
  %t147 = load i64, ptr %l94, !tbaa !24
  store i64 %t147, ptr %l91, !tbaa !24
  br label %bb30
bb30:
  %t148 = load i64, ptr %l91, !tbaa !24
  store i64 %t148, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  %t149 = load i64, ptr %l15, !tbaa !24
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = icmp slt i64 %t149, %t150
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb32, label %bb33
bb32:
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t157 = load i64, ptr %l11, !tbaa !24
  %t158 = load i64, ptr %l15, !tbaa !24
  %t159 = load i64, ptr %l13, !tbaa !24
  %t162 = mul i64 %t158, %t159
  %t165 = add i64 %t157, %t162
  %t167 = load ptr, ptr %lp10
  %t168 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t168, ptr %l113, !tbaa !27
  %t171 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr ptr, ptr %t172, i64 %t165
  %t174 = load ptr, ptr %t173, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v3, ptr %v2, ptr %t167, ptr %t174)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t177 = load i64, ptr %l15, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb31
bb37:
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l118
  br label %bb38
bb38:
  %t182 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t182, ptr %lp17
  %t183 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l118
  %t184 = load ptr, ptr %lp17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %t184
  %t185 = load i64, ptr %l7, !tbaa !24
  store i64 %t185, ptr %l18, !tbaa !24
  %t187 = load i64, ptr %l8, !tbaa !24
  store i64 %t187, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t189 = load i64, ptr %l19, !tbaa !24
  %t190 = load i64, ptr %l18, !tbaa !24
  %t193 = icmp sgt i64 %t189, %t190
  br i1 %t193, label %bb39, label %bb40
bb39:
  %t195 = load i64, ptr %l20, !tbaa !24
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb44
bb41:
  %t199 = load i64, ptr %l19, !tbaa !24
  %t200 = load i64, ptr %l18, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t204 = load i64, ptr %l20, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sub i64 %t207, 1
  %t210 = load i64, ptr %l20, !tbaa !24
  %t213 = sdiv i64 %t209, %t210
  store i64 %t213, ptr %l127, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb43
bb43:
  %t215 = load i64, ptr %l127, !tbaa !24
  store i64 %t215, ptr %l124, !tbaa !24
  br label %bb44
bb44:
  %t216 = load i64, ptr %l124, !tbaa !24
  store i64 %t216, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb45
bb45:
  %t217 = load i64, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l21, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb46, label %bb47
bb46:
  br label %bb53
bb47:
  br label %bb48
bb48:
  %t225 = load i64, ptr %l18, !tbaa !24
  %t226 = load i64, ptr %l22, !tbaa !24
  %t227 = load i64, ptr %l20, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  store i64 %t233, ptr %l23, !tbaa !24
  %t235 = load ptr, ptr %lp17
  store ptr %t235, ptr %l145, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l146, !tbaa !29
  %t237 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t237, ptr %l147, !tbaa !27
  %t238 = load i64, ptr %l23, !tbaa !24
  %t240 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr ptr, ptr %t241, i64 %t238
  %t243 = load ptr, ptr %t242, !tbaa !39
  store ptr %t243, ptr %l149, !tbaa !29
  %t244 = load i32, ptr %l9, !tbaa !23
  store i32 %t244, ptr %l150, !tbaa !23
  %t245 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t245, ptr %l151, !tbaa !27
  %t246 = load i64, ptr %l23, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr ptr, ptr %t249, i64 %t246
  %t251 = load ptr, ptr %t250, !tbaa !39
  %t253 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t251)
  store %"compiler/source:Span" %t253, ptr %l154
  br label %bb49
bb49:
  %t254 = load ptr, ptr %l146, !tbaa !29
  %t255 = load ptr, ptr %l149, !tbaa !29
  %t256 = load i32, ptr %l150, !tbaa !23
  %t257 = load %"compiler/source:Span", ptr %l154
  %t258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v3, ptr %t254, ptr %t255, i32 %t256, %"compiler/source:Span" %t257)
  store ptr %t258, ptr %l155
  br label %bb50
bb50:
  %t259 = load ptr, ptr %l145, !tbaa !29
  %t260 = load ptr, ptr %l155, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v3, ptr %v3, ptr %t259, ptr %t260)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t261 = load i64, ptr %l22, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l22, !tbaa !24
  br label %bb45
bb53:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/check:Checker", ptr %t265, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/generic:Program", ptr %t268, i32 0, i32 2
  store ptr %t270, ptr %l160, !tbaa !29
  %t271 = load i32, ptr %l9, !tbaa !23
  store i32 %t271, ptr %l161, !tbaa !23
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  store ptr %t277, ptr %l164, !tbaa !29
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t278)
  store i32 %t280, ptr %l166
  br label %bb54
bb54:
  %t281 = load ptr, ptr %lp17
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v3, ptr %t281)
  store i64 %t283, ptr %l168
  br label %bb55
bb55:
  %t284 = load ptr, ptr %l164, !tbaa !29
  %t285 = load i32, ptr %l166, !tbaa !23
  %t286 = load i64, ptr %l168, !tbaa !24
  %t287 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t284, i32 %t285, i64 %t286)
  store i32 %t287, ptr %l169
  br label %bb56
bb56:
  %t288 = load ptr, ptr %l160, !tbaa !29
  %t289 = load i32, ptr %l161, !tbaa !23
  %t290 = load i32, ptr %l169, !tbaa !23
  %t291 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t288, i32 %t289, i32 %t290)
  store i32 %t291, ptr %l170
  br label %bb57
bb57:
  %t292 = load i32, ptr %l170, !tbaa !23
  %t293 = load ptr, ptr %lp10
  store ptr %t293, ptr %l171, !tbaa !29
  %t294 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t294, ptr %l172
  store i32 %t292, ptr %l173, !tbaa !23
  store i32 2, ptr %l174
  %t296 = load ptr, ptr %lp17
  %t298 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v3, ptr %v3, ptr %t296)
  store { i64, ptr } %t298, ptr %l176
  br label %bb58
bb58:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load %"compiler/source:Span", ptr %l1
  %t304 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t299, i32 1, %"compiler/source:Span" %t300)
  store i32 %t304, ptr %l180
  br label %bb59
bb59:
  %t305 = load i32, ptr %l174, !range !{i32 0, i32 5}
  %t306 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t307 = load i32, ptr %l180, !tbaa !23
  %t309 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t305, i64 0, { i64, ptr } %t306, ptr null, i32 %t307, i32 0, i1 false)
  store %"compiler/typed:Make" %t309, ptr %l182
  br label %bb60
bb60:
  %t310 = load %"compiler/typed:Make", ptr %l182
  %t311 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 56, i64 8)
  store %"compiler/typed:Make" %t310, ptr %t311
  store { i64, [5 x i64] } zeroinitializer, ptr %t312
  %t313 = getelementptr { i64, [5 x i64] }, ptr %t312, i32 0, i32 0
  store i64 7, ptr %t313
  %t314 = load %"compiler/source:Span", ptr %l172
  %t315 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t314, 0
  %t316 = load i32, ptr %l173, !tbaa !23
  %t317 = insertvalue { %"compiler/source:Span", i32, ptr } %t315, i32 %t316, 1
  %t319 = insertvalue { %"compiler/source:Span", i32, ptr } %t317, ptr %t311, 2
  %t320 = getelementptr { i64, [5 x i64] }, ptr %t312, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t319, ptr %t320
  %t321 = load { i64, [5 x i64] }, ptr %t312
  %t323 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t321, ptr %t323
  %t324 = load ptr, ptr %l171, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v3, ptr %v3, ptr %t324, ptr %t323)
  br label %bb61
bb61:
  %t326 = load i64, ptr %l8, !tbaa !24
  store i64 %t326, ptr %l25, !tbaa !24
  %t328 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t328, 0
  store i64 %t330, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t332 = load i64, ptr %l26, !tbaa !24
  %t333 = load i64, ptr %l25, !tbaa !24
  %t336 = icmp sgt i64 %t332, %t333
  br i1 %t336, label %bb62, label %bb63
bb62:
  %t338 = load i64, ptr %l27, !tbaa !24
  %t340 = icmp sgt i64 %t338, 0
  br i1 %t340, label %bb64, label %bb65
bb63:
  store i64 0, ptr %l192, !tbaa !24
  br label %bb67
bb64:
  %t342 = load i64, ptr %l26, !tbaa !24
  %t343 = load i64, ptr %l25, !tbaa !24
  %t346 = sub i64 %t342, %t343
  %t347 = load i64, ptr %l27, !tbaa !24
  %t350 = add i64 %t346, %t347
  %t352 = sub i64 %t350, 1
  %t353 = load i64, ptr %l27, !tbaa !24
  %t356 = sdiv i64 %t352, %t353
  store i64 %t356, ptr %l195, !tbaa !24
  br label %bb66
bb65:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb66
bb66:
  %t358 = load i64, ptr %l195, !tbaa !24
  store i64 %t358, ptr %l192, !tbaa !24
  br label %bb67
bb67:
  %t359 = load i64, ptr %l192, !tbaa !24
  store i64 %t359, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb68
bb68:
  %t360 = load i64, ptr %l29, !tbaa !24
  %t361 = load i64, ptr %l28, !tbaa !24
  %t364 = icmp slt i64 %t360, %t361
  %t366 = xor i1 %t364, true
  br i1 %t366, label %bb69, label %bb70
bb69:
  br label %bb74
bb70:
  br label %bb71
bb71:
  %t368 = load i64, ptr %l25, !tbaa !24
  %t369 = load i64, ptr %l29, !tbaa !24
  %t370 = load i64, ptr %l27, !tbaa !24
  %t373 = mul i64 %t369, %t370
  %t376 = add i64 %t368, %t373
  %t378 = load ptr, ptr %lp10
  %t379 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t379, ptr %l214, !tbaa !27
  %t382 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr ptr, ptr %t383, i64 %t376
  %t385 = load ptr, ptr %t384, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v3, ptr %v2, ptr %t378, ptr %t385)
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t388 = load i64, ptr %l29, !tbaa !24
  %t390 = add i64 %t388, 1
  store i64 %t390, ptr %l29, !tbaa !24
  br label %bb68
bb74:
  %t392 = load ptr, ptr %lp10
  %t394 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v3, ptr %v3, ptr %t392)
  store { i64, ptr } %t394, ptr %l220
  br label %bb75
bb75:
  %t395 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t395, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l23 = alloca i32
  %l26 = alloca ptr
  %l31 = alloca i32
  %l33 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i32
  %l48 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l67 = alloca i1
  %l73 = alloca i32
  %l78 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l97 = alloca i1
  %l103 = alloca i1
  %l104 = alloca ptr
  %l109 = alloca i32
  %l111 = alloca i1
  %l114 = alloca i1
  %l119 = alloca ptr
  %l124 = alloca i32
  %l125 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l138 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l23
  br label %bb4
bb4:
  %t16 = load i32, ptr %l23, !range !{i32 0, i32 33}
  store i32 %t16, ptr %l3
  %t17 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t19 = trunc i64 19 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l26, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l31
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t35 = load i32, ptr %l31, !tbaa !23
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t34, i32 %t35, i64 %t33)
  store i1 %t37, ptr %l33
  br label %bb8
bb8:
  %t38 = load i1, ptr %l33, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
bb9:
  %t39 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t41 = trunc i64 18 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l40
  br label %bb12
bb11:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb13
bb12:
  %t52 = load i1, ptr %l40, !tbaa !21
  store i1 %t52, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l36, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l43
  br label %bb16
bb15:
  br label %bb54
bb16:
  %t59 = load i32, ptr %l43, !range !{i32 0, i32 6}
  %t61 = trunc i64 0 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l48, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l53
  br label %bb19
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l73
  br label %bb31
bb19:
  %t85 = load ptr, ptr %l48, !tbaa !29
  %t86 = load i32, ptr %l53, !tbaa !23
  %t87 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t85, i32 %t86)
  store { i64, ptr } %t87, ptr %l54
  br label %bb20
bb20:
  %t88 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t88, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  store i64 %t91, ptr %l6, !tbaa !24
  br label %bb21
bb21:
  %t93 = load i64, ptr %l5, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  br label %bb24
bb24:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l61, !tbaa !27
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i32, ptr %t105, i64 %t102
  %t107 = load i32, ptr %t106, !tbaa !33
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l2, !tbaa !24
  %t115 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t109, i32 %t107, i64 %t111)
  store i1 %t115, ptr %l67
  br label %bb25
bb25:
  %t116 = load i1, ptr %l67, !tbaa !21
  br i1 %t116, label %bb26, label %bb27
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t118 = load i64, ptr %l5, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l5, !tbaa !24
  br label %bb21
bb30:
  br label %bb53
bb31:
  %t122 = load i32, ptr %l73, !range !{i32 0, i32 6}
  %t124 = trunc i64 1 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb32, label %bb33
bb32:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  store ptr %t132, ptr %l78, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %l1, !tbaa !23
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l83
  br label %bb34
bb33:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l1, !tbaa !23
  %t147 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t143, i32 %t144)
  store i1 %t147, ptr %l103
  br label %bb46
bb34:
  %t148 = load ptr, ptr %l78, !tbaa !29
  %t149 = load i32, ptr %l83, !tbaa !23
  %t150 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t148, i32 %t149)
  store { i64, ptr } %t150, ptr %l84
  br label %bb35
bb35:
  %t151 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t151, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  store i64 %t154, ptr %l10, !tbaa !24
  br label %bb36
bb36:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb37, label %bb38
bb37:
  br label %bb45
bb38:
  br label %bb39
bb39:
  %t164 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t164, ptr %l91, !tbaa !27
  %t165 = load i64, ptr %l9, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i64, ptr %l2, !tbaa !24
  %t178 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t172, i32 %t170, i64 %t174)
  store i1 %t178, ptr %l97
  br label %bb40
bb40:
  %t179 = load i1, ptr %l97, !tbaa !21
  br i1 %t179, label %bb41, label %bb42
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t181 = load i64, ptr %l9, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l9, !tbaa !24
  br label %bb36
bb45:
  br label %bb52
bb46:
  %t185 = load i1, ptr %l103, !tbaa !21
  br i1 %t185, label %bb47, label %bb48
bb47:
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l104, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l1, !tbaa !23
  %t196 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l109
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t197 = load i64, ptr %l2, !tbaa !24
  %t198 = load ptr, ptr %l104, !tbaa !29
  %t199 = load i32, ptr %l109, !tbaa !23
  %t201 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t198, i32 %t199, i64 %t197)
  store i1 %t201, ptr %l111
  br label %bb50
bb50:
  %t202 = load i1, ptr %l111, !tbaa !21
  store i1 %t202, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t203 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t205 = trunc i64 23 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb57
bb56:
  %t208 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t210 = trunc i64 22 to i32
  %t211 = icmp eq i32 %t208, %t210
  store i1 %t211, ptr %l114, !tbaa !21
  br label %bb57
bb57:
  %t213 = load i1, ptr %l114, !tbaa !21
  br i1 %t213, label %bb58, label %bb59
bb58:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  store ptr %t219, ptr %l119, !tbaa !29
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l1, !tbaa !23
  %t229 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t225, i32 %t226)
  store i32 %t229, ptr %l124
  br label %bb60
bb59:
  br label %bb72
bb60:
  %t230 = load ptr, ptr %l119, !tbaa !29
  %t231 = load i32, ptr %l124, !tbaa !23
  %t232 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t230, i32 %t231)
  store { i64, ptr } %t232, ptr %l125
  br label %bb61
bb61:
  %t233 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t233, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t234 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  store i64 %t236, ptr %l14, !tbaa !24
  br label %bb62
bb62:
  %t238 = load i64, ptr %l13, !tbaa !24
  %t239 = load i64, ptr %l14, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb63, label %bb64
bb63:
  br label %bb71
bb64:
  br label %bb65
bb65:
  %t246 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t246, ptr %l132, !tbaa !27
  %t247 = load i64, ptr %l13, !tbaa !24
  %t249 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr i32, ptr %t250, i64 %t247
  %t252 = load i32, ptr %t251, !tbaa !33
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l2, !tbaa !24
  %t260 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %t254, i32 %t252, i64 %t256)
  store i1 %t260, ptr %l138
  br label %bb66
bb66:
  %t261 = load i1, ptr %l138, !tbaa !21
  br i1 %t261, label %bb67, label %bb68
bb67:
  store i1 true, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t263 = load i64, ptr %l13, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l13, !tbaa !24
  br label %bb62
bb71:
  br label %bb72
bb72:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l41 = alloca i1
  %l47 = alloca ptr
  %l51 = alloca ptr
  %l57 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l62 = alloca i1
  %l67 = alloca { i64, ptr }
  %l69 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t17, { i64, ptr } %t18)
  store ptr %t22, ptr %l18
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l18, !tbaa !29
  store ptr %t23, ptr %rv
  br label %ret
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t25 = load ptr, ptr %l19, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 28}
  %t31 = icmp eq i64 %t29, 3
  store i1 %t31, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t39, ptr %t40, { i64, ptr } %t41)
  store ptr %t45, ptr %l28
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l28, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb14:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t48 = load ptr, ptr %l29, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 28}
  %t54 = icmp eq i64 %t52, 5
  store i1 %t54, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t55 = load i1, ptr %l30, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t58, i32 0, i32 1
  %t60 = load i32, ptr %t59, !range !{i32 0, i32 113}
  store i32 %t60, ptr %l5
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l6, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t70, i32 0, i32 3
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l7, !tbaa !29
  br label %bb19
bb18:
  br label %bb41
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t74 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t76 = trunc i64 44 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t79 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t81 = trunc i64 45 to i32
  %t82 = icmp eq i32 %t79, %t81
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t85, ptr %t86, { i64, ptr } %t87)
  store ptr %t91, ptr %l47
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t92 = load ptr, ptr %l47, !tbaa !29
  store ptr %t92, ptr %l8, !tbaa !29
  %t93 = load ptr, ptr %l8, !tbaa !29
  %t95 = icmp eq ptr %t93, null
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb26, label %bb27
bb26:
  %t99 = load ptr, ptr %l8, !tbaa !29
  store ptr %t99, ptr %l51, !tbaa !29
  br label %bb29
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t102, ptr %t103, { i64, ptr } %t104)
  store ptr %t108, ptr %l57
  br label %bb28
bb28:
  %t109 = load ptr, ptr %l57, !tbaa !29
  store ptr %t109, ptr %l51, !tbaa !29
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  %t110 = load ptr, ptr %l51, !tbaa !29
  store ptr %t110, ptr %rv
  br label %ret
bb30:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l6, !tbaa !29
  %t115 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %s3, ptr %t111, ptr %t112)
  store { i64, ptr } %t115, ptr %l60
  br label %bb31
bb31:
  %t116 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t119 = call i1 @compiler_2fcheck_2esamePath(ptr %s3, ptr %v2, { i64, ptr } %t117, { i64, ptr } %t116)
  store i1 %t119, ptr %l62
  br label %bb32
bb32:
  %t120 = load i1, ptr %l62, !tbaa !21
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t121 = load ptr, ptr %l6, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  store ptr %t121, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l7, !tbaa !29
  %t128 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %s3, ptr %t124, ptr %t125)
  store { i64, ptr } %t128, ptr %l67
  br label %bb36
bb36:
  %t129 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t132 = call i1 @compiler_2fcheck_2esamePath(ptr %s3, ptr %v2, { i64, ptr } %t130, { i64, ptr } %t129)
  store i1 %t132, ptr %l69
  br label %bb37
bb37:
  %t133 = load i1, ptr %l69, !tbaa !21
  br i1 %t133, label %bb38, label %bb39
bb38:
  %t134 = load ptr, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  store ptr %t134, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s3)
  store ptr null, ptr %rv
  br label %ret
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store ptr null, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_35190b9c1eca8117_f4f6af082247e833)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeDeclares(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/names:Entry"
  %l12 = alloca i1
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l49 = alloca ptr
  %l58 = alloca ptr
  %l61 = alloca i64
  %l63 = alloca i64
  %l68 = alloca %"compiler/names:Entry"
  %l72 = alloca i1
  %l75 = alloca { i64, ptr }
  %l77 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @compiler_2fload_2ePublic(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load i1, ptr %l12, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 10
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l19
  br label %bb5
bb5:
  %t19 = load i64, ptr %l19, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb8:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l26, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l26, !tbaa !24
  store i64 %t46, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t47 = load i64, ptr %l23, !tbaa !24
  store i64 %t47, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb13, label %bb14
bb13:
  br label %bb38
bb14:
  br label %bb15
bb15:
  %t56 = load i64, ptr %l2, !tbaa !24
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l7, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/load:Loader", ptr %t72, i32 0, i32 10
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l49
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l49, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 3
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb17, label %bb18
bb17:
  br label %bb37
bb18:
  br label %bb19
bb19:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/names:Resolver", ptr %t92, i32 0, i32 1
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l58
  br label %bb20
bb20:
  %t99 = load ptr, ptr %l58, !tbaa !29
  %t101 = getelementptr %"compiler/names:Table", ptr %t99, i32 0, i32 0
  store ptr %t101, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t103 = load i64, ptr %l9, !tbaa !24
  store i64 %t103, ptr %l61, !tbaa !24
  %t104 = load ptr, ptr %l8, !tbaa !29
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l63
  br label %bb22
bb22:
  %t107 = load i64, ptr %l61, !tbaa !24
  %t108 = load i64, ptr %l63, !tbaa !24
  %t109 = icmp slt i64 %t107, %t108
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb23, label %bb24
bb23:
  br label %bb36
bb24:
  br label %bb25
bb25:
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t113, i64 %t114)
  store %"compiler/names:Entry" %t117, ptr %l68
  br label %bb26
bb26:
  %t118 = load %"compiler/names:Entry", ptr %l68
  store %"compiler/names:Entry" %t118, ptr %l10
  %t119 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 2
  %t120 = load i32, ptr %t119, !range !{i32 0, i32 9}
  %t122 = trunc i64 5 to i32
  %t123 = icmp eq i32 %t120, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb27, label %bb28
bb27:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 0
  %t129 = load i32, ptr %t128, !tbaa !23
  %t132 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t127, i32 %t129)
  store { i64, ptr } %t132, ptr %l75
  br label %bb29
bb28:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb31
bb29:
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t136 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t134, { i64, ptr } %t133)
  store i1 %t136, ptr %l77
  br label %bb30
bb30:
  %t137 = load i1, ptr %l77, !tbaa !21
  store i1 %t137, ptr %l72, !tbaa !21
  br label %bb31
bb31:
  %t138 = load i1, ptr %l72, !tbaa !21
  br i1 %t138, label %bb32, label %bb33
bb32:
  store i1 true, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l9, !tbaa !24
  br label %bb21
bb36:
  br label %bb37
bb37:
  %t144 = load i64, ptr %l6, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l6, !tbaa !24
  br label %bb12
bb38:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i64
  %l23 = alloca { i64, i32 }
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l50 = alloca i64
  %l68 = alloca ptr
  %l72 = alloca i32
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l104 = alloca i64
  %l111 = alloca i32
  %l115 = alloca ptr
  %l116 = alloca i64
  %l120 = alloca { i64, i32 }
  %l129 = alloca i1
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca i64
  %l138 = alloca i64
  %l143 = alloca i32
  %l147 = alloca i1
  %l151 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca ptr
  %l158 = alloca i64
  %l162 = alloca %"compiler/source:Span"
  %l165 = alloca { i64, ptr }
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i64
  %l171 = alloca i64
  %l173 = alloca i64
  %l178 = alloca i32
  %l183 = alloca i32
  %l192 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca i64
  %l196 = alloca ptr
  %l197 = alloca ptr
  %l200 = alloca i64
  %l201 = alloca %"compiler/source:Span"
  %l204 = alloca { i64, ptr }
  %l206 = alloca %"compiler/diagmsg:Msg"
  %l207 = alloca i64
  %l210 = alloca i1
  %l213 = alloca i1
  %l218 = alloca i64
  %l219 = alloca i64
  %l223 = alloca ptr
  %l224 = alloca ptr
  %l225 = alloca i64
  %l229 = alloca %"compiler/source:Span"
  %l230 = alloca ptr
  %l235 = alloca i64
  %l237 = alloca i32
  %l238 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l244 = alloca %"compiler/diagmsg:Msg"
  %l245 = alloca i64
  %s0 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %t7)
  store i1 %t9, ptr %l38
  br label %bb3
bb3:
  %t10 = load i1, ptr %l38, !tbaa !21
  store i1 %t10, ptr %l36, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l36, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t12)
  store ptr %t14, ptr %l40
  br label %bb8
bb8:
  %t15 = load ptr, ptr %l40, !tbaa !29
  store ptr %t15, ptr %l4, !tbaa !29
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l41
  br label %bb9
bb9:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l5
  store i64 %a2, ptr %l6, !tbaa !24
  store i64 %a3, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load i64, ptr %l8, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb12:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l50, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb14
bb14:
  %t48 = load i64, ptr %l50, !tbaa !24
  store i64 %t48, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t49 = load i64, ptr %l47, !tbaa !24
  store i64 %t49, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t50 = load i64, ptr %l10, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store ptr %l5, ptr %l68, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/check:frame", ptr %t68, i32 0, i32 28
  %t74 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t70, i64 %t66)
  store i32 %t74, ptr %l72
  br label %bb20
bb20:
  %t75 = load ptr, ptr %l68, !tbaa !29
  %t76 = load i32, ptr %l72, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t75, i32 %t76)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb16
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t81, ptr %l5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l77
  br label %bb24
bb24:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l12
  %t86 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t86, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l15, !tbaa !24
  br label %bb25
bb25:
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load i64, ptr %l15, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  br label %bb123
bb27:
  br label %bb28
bb28:
  %t100 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t100, ptr %l85, !tbaa !27
  %t101 = load i64, ptr %l14, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr ptr, ptr %t104, i64 %t101
  %t106 = load ptr, ptr %t105, !tbaa !39
  store ptr %t106, ptr %l16, !tbaa !29
  %t108 = load ptr, ptr %l16, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Catch", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t115 = icmp eq i64 %t113, 0
  br i1 %t115, label %bb29, label %bb30
bb29:
  br label %bb122
bb30:
  br label %bb31
bb31:
  %t117 = load ptr, ptr %l16, !tbaa !29
  %t119 = getelementptr %"compiler/ast:Catch", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  store i64 %t124, ptr %l19, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l18, !tbaa !24
  %t127 = load i64, ptr %l19, !tbaa !24
  %t130 = icmp slt i64 %t126, %t127
  %t132 = xor i1 %t130, true
  br i1 %t132, label %bb33, label %bb34
bb33:
  br label %bb121
bb34:
  br label %bb35
bb35:
  %t134 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t134, ptr %l100, !tbaa !27
  %t135 = load i64, ptr %l18, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr ptr, ptr %t138, i64 %t135
  %t140 = load ptr, ptr %t139, !tbaa !39
  store ptr %t140, ptr %l20, !tbaa !29
  %t142 = load ptr, ptr %l20, !tbaa !29
  store ptr %t142, ptr %l103, !tbaa !29
  %t143 = ptrtoint ptr %v1 to i64
  store i64 %t143, ptr %l104, !tbaa !24
  %t144 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t144, label %bb36, label %bb37
bb36:
  %t146 = load ptr, ptr %l103, !tbaa !29
  %t147 = call ptr @__olang_region_or(ptr %t146, ptr %v1)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l104, !tbaa !24
  br label %bb37
bb37:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load ptr, ptr %l4, !tbaa !29
  %t155 = getelementptr %"compiler/check:frame", ptr %t153, i32 0, i32 4
  %t156 = load ptr, ptr %l20, !tbaa !29
  %t157 = load i64, ptr %l104
  %t158 = inttoptr i64 %t157 to ptr
  %t162 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %t158, ptr %t152, ptr %t155, ptr %t156)
  store i32 %t162, ptr %l111
  br label %bb38
bb38:
  %t163 = load i32, ptr %l111, !tbaa !23
  store i32 %t163, ptr %l21, !tbaa !23
  store i64 -1, ptr %l22, !tbaa !24
  %t164 = load i32, ptr %l21, !tbaa !23
  %t165 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = icmp eq i32 %t164, %t165
  br i1 %t168, label %bb39, label %bb40
bb39:
  %t170 = load ptr, ptr %l20, !tbaa !29
  store ptr %t170, ptr %l115, !tbaa !29
  %t171 = ptrtoint ptr %v1 to i64
  store i64 %t171, ptr %l116, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t172, label %bb41, label %bb42
bb40:
  br label %bb44
bb41:
  %t174 = load ptr, ptr %l115, !tbaa !29
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr %v1)
  %t176 = ptrtoint ptr %t175 to i64
  store i64 %t176, ptr %l116, !tbaa !24
  br label %bb42
bb42:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l20, !tbaa !29
  %t179 = load i64, ptr %l116
  %t180 = inttoptr i64 %t179 to ptr
  %t183 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorWord(ptr %v0, ptr %t180, ptr %t177, ptr %t178)
  store { i64, i32 } %t183, ptr %l120
  br label %bb43
bb43:
  %t184 = load { i64, i32 }, ptr %l120
  store { i64, i32 } %t184, ptr %l23
  %t185 = getelementptr { i64, i32 }, ptr %l23, i32 0, i32 0
  %t186 = load i64, ptr %t185, !tbaa !24
  store i64 %t186, ptr %l22, !tbaa !24
  %t188 = getelementptr { i64, i32 }, ptr %l23, i32 0, i32 1
  %t189 = load i32, ptr %t188, !tbaa !23
  store i32 %t189, ptr %l21, !tbaa !23
  br label %bb44
bb44:
  %t191 = load i32, ptr %l21, !tbaa !23
  %t192 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t195 = icmp eq i32 %t191, %t192
  br i1 %t195, label %bb45, label %bb46
bb45:
  br label %bb120
bb46:
  br label %bb47
bb47:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t201 = load i32, ptr %l21, !tbaa !23
  %t204 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %t200, i32 %t201)
  store i1 %t204, ptr %l129
  br label %bb48
bb48:
  %t205 = load i1, ptr %l129, !tbaa !21
  br i1 %t205, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s12
  %t206 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s12, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l130
  br label %bb51
bb50:
  br label %bb77
bb51:
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, ptr %l24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t212 = load i32, ptr %l21, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %s12, ptr %t211, i32 %t212, ptr %l24)
  br label %bb52
bb52:
  store i1 false, ptr %l25, !tbaa !21
  store ptr %l24, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb53
bb53:
  %t217 = load i64, ptr %l27, !tbaa !24
  store i64 %t217, ptr %l136, !tbaa !24
  %t218 = load ptr, ptr %l26, !tbaa !29
  %t220 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s12, ptr %t218)
  store i64 %t220, ptr %l138
  br label %bb54
bb54:
  %t221 = load i64, ptr %l136, !tbaa !24
  %t222 = load i64, ptr %l138, !tbaa !24
  %t223 = icmp slt i64 %t221, %t222
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb55, label %bb56
bb55:
  br label %bb67
bb56:
  br label %bb57
bb57:
  %t227 = load ptr, ptr %l26, !tbaa !29
  %t228 = load i64, ptr %l27, !tbaa !24
  %t231 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s12, ptr %t227, i64 %t228)
  store i32 %t231, ptr %l143
  br label %bb58
bb58:
  %t232 = load i32, ptr %l143, !tbaa !23
  store i32 %t232, ptr %l28, !tbaa !23
  %t233 = load i32, ptr %l28, !tbaa !23
  %t234 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t237 = icmp ne i32 %t233, %t234
  br i1 %t237, label %bb59, label %bb60
bb59:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l28, !tbaa !23
  %t244 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrAmong(ptr %v0, ptr %s0, ptr %t239, i32 %t240, ptr %l12)
  store i1 %t244, ptr %l151
  br label %bb61
bb60:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb62
bb61:
  %t245 = load i1, ptr %l151, !tbaa !21
  store i1 %t245, ptr %l147, !tbaa !21
  br label %bb62
bb62:
  %t246 = load i1, ptr %l147, !tbaa !21
  br i1 %t246, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb65
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t247 = load i64, ptr %l27, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l27, !tbaa !24
  br label %bb53
bb67:
  %t251 = load i1, ptr %l25, !tbaa !21
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s17
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l156, !tbaa !29
  %t256 = load ptr, ptr %l20, !tbaa !29
  store ptr %t256, ptr %l157, !tbaa !29
  %t257 = ptrtoint ptr %v1 to i64
  store i64 %t257, ptr %l158, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t258, label %bb70, label %bb71
bb69:
  br label %bb76
bb70:
  %t260 = load ptr, ptr %l157, !tbaa !29
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr %v1)
  %t262 = ptrtoint ptr %t261 to i64
  store i64 %t262, ptr %l158, !tbaa !24
  br label %bb71
bb71:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l20, !tbaa !29
  %t265 = load i64, ptr %l158
  %t266 = inttoptr i64 %t265 to ptr
  %t269 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %t266, ptr %t263, ptr %t264, i64 0)
  store %"compiler/source:Span" %t269, ptr %l162
  br label %bb72
bb72:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load i32, ptr %l21, !tbaa !23
  %t274 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s17, ptr %t270, i32 %t271)
  store { i64, ptr } %t274, ptr %l165
  br label %bb73
bb73:
  %t275 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 0
  %t277 = extractvalue { i64, ptr } %t275, 1
  %t278 = mul i64 %t276, 1
  %t279 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t278)
  call void @llvm.memcpy.p0.p0.i64(ptr %t279, ptr %t277, i64 %t278, i1 false)
  %t280 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  %t283 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %s17, ptr %v0, { i64, ptr } %t281)
  store %"compiler/diagmsg:Msg" %t283, ptr %l167
  br label %bb74
bb74:
  %t284 = load ptr, ptr %l156, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l162
  %t286 = load %"compiler/diagmsg:Msg", ptr %l167
  %t287 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t284, %"compiler/source:Span" %t285, %"compiler/diagmsg:Msg" %t286)
  store i64 %t287, ptr %l168
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s17)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s12)
  br label %bb120
bb77:
  %t288 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t288, ptr %l29, !tbaa !23
  store ptr %l12, ptr %l30, !tbaa !29
  store i64 0, ptr %l31, !tbaa !24
  br label %bb78
bb78:
  %t291 = load i64, ptr %l31, !tbaa !24
  store i64 %t291, ptr %l171, !tbaa !24
  %t292 = load ptr, ptr %l30, !tbaa !29
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t292)
  store i64 %t294, ptr %l173
  br label %bb79
bb79:
  %t295 = load i64, ptr %l171, !tbaa !24
  %t296 = load i64, ptr %l173, !tbaa !24
  %t297 = icmp slt i64 %t295, %t296
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb80, label %bb81
bb80:
  br label %bb89
bb81:
  br label %bb82
bb82:
  %t301 = load ptr, ptr %l30, !tbaa !29
  %t302 = load i64, ptr %l31, !tbaa !24
  %t305 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t301, i64 %t302)
  store i32 %t305, ptr %l178
  br label %bb83
bb83:
  %t306 = load i32, ptr %l178, !tbaa !23
  store i32 %t306, ptr %l32, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 2
  %t313 = load i32, ptr %l32, !tbaa !23
  %t316 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t312, i32 %t313)
  store i32 %t316, ptr %l183
  br label %bb84
bb84:
  %t317 = load i32, ptr %l21, !tbaa !23
  %t318 = load i32, ptr %l183, !tbaa !23
  %t320 = icmp eq i32 %t318, %t317
  br i1 %t320, label %bb85, label %bb86
bb85:
  %t322 = load i32, ptr %l32, !tbaa !23
  store i32 %t322, ptr %l29, !tbaa !23
  br label %bb87
bb86:
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t324 = load i64, ptr %l31, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l31, !tbaa !24
  br label %bb78
bb89:
  %t328 = load i32, ptr %l29, !tbaa !23
  %t329 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t332 = icmp eq i32 %t328, %t329
  br i1 %t332, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s22
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l192, !tbaa !29
  %t335 = load ptr, ptr %l20, !tbaa !29
  store ptr %t335, ptr %l193, !tbaa !29
  %t336 = ptrtoint ptr %v1 to i64
  store i64 %t336, ptr %l194, !tbaa !24
  %t337 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t337, label %bb92, label %bb93
bb91:
  %t339 = load i64, ptr %l22, !tbaa !24
  %t341 = icmp sge i64 %t339, 0
  br i1 %t341, label %bb101, label %bb102
bb92:
  %t343 = load ptr, ptr %l193, !tbaa !29
  %t344 = call ptr @__olang_region_or(ptr %t343, ptr %v1)
  %t345 = ptrtoint ptr %t344 to i64
  store i64 %t345, ptr %l194, !tbaa !24
  br label %bb93
bb93:
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l196, !tbaa !29
  %t347 = load ptr, ptr %l20, !tbaa !29
  store ptr %t347, ptr %l197, !tbaa !29
  %t348 = load i64, ptr %l22, !tbaa !24
  %t350 = icmp sge i64 %t348, 0
  br i1 %t350, label %bb94, label %bb95
bb94:
  store i64 1, ptr %l200, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb96
bb96:
  %t352 = load i64, ptr %l194
  %t353 = inttoptr i64 %t352 to ptr
  %t354 = load ptr, ptr %l196, !tbaa !29
  %t355 = load ptr, ptr %l197, !tbaa !29
  %t356 = load i64, ptr %l200, !tbaa !24
  %t357 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %t353, ptr %t354, ptr %t355, i64 %t356)
  store %"compiler/source:Span" %t357, ptr %l201
  br label %bb97
bb97:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load i32, ptr %l21, !tbaa !23
  %t362 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s22, ptr %t358, i32 %t359)
  store { i64, ptr } %t362, ptr %l204
  br label %bb98
bb98:
  %t363 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t363, 0
  %t365 = extractvalue { i64, ptr } %t363, 1
  %t366 = mul i64 %t364, 1
  %t367 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t366)
  call void @llvm.memcpy.p0.p0.i64(ptr %t367, ptr %t365, i64 %t366, i1 false)
  %t368 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t367, 1
  %t371 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %s22, ptr %v0, { i64, ptr } %t369)
  store %"compiler/diagmsg:Msg" %t371, ptr %l206
  br label %bb99
bb99:
  %t372 = load ptr, ptr %l192, !tbaa !29
  %t373 = load %"compiler/source:Span", ptr %l201
  %t374 = load %"compiler/diagmsg:Msg", ptr %l206
  %t375 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t372, %"compiler/source:Span" %t373, %"compiler/diagmsg:Msg" %t374)
  store i64 %t375, ptr %l207
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s22)
  br label %bb119
bb101:
  %t376 = load i64, ptr %l22, !tbaa !24
  %t378 = icmp slt i64 %t376, 64
  store i1 %t378, ptr %l210, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb103
bb103:
  %t380 = load i1, ptr %l210, !tbaa !21
  br i1 %t380, label %bb104, label %bb105
bb104:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/check:Checker", ptr %t381, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  %t387 = load i32, ptr %l29, !tbaa !23
  %t390 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t386, i32 %t387)
  store i64 %t390, ptr %l218
  br label %bb106
bb105:
  store i1 false, ptr %l213, !tbaa !21
  br label %bb107
bb106:
  %t391 = load i64, ptr %l22, !tbaa !24
  store i64 %t391, ptr %l219, !tbaa !24
  %t392 = load i64, ptr %l219, !tbaa !24
  %t393 = load i64, ptr %l219, !tbaa !24
  %t394 = shl i64 1, %t393
  %t395 = load i64, ptr %l218, !tbaa !65
  %t397 = and i64 %t395, %t394
  %t399 = icmp eq i64 %t397, 0
  store i1 %t399, ptr %l213, !tbaa !21
  br label %bb107
bb107:
  %t401 = load i1, ptr %l213, !tbaa !21
  br i1 %t401, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s24
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l223, !tbaa !29
  %t403 = load ptr, ptr %l20, !tbaa !29
  store ptr %t403, ptr %l224, !tbaa !29
  %t404 = ptrtoint ptr %v1 to i64
  store i64 %t404, ptr %l225, !tbaa !24
  %t405 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t405, label %bb110, label %bb111
bb109:
  br label %bb118
bb110:
  %t407 = load ptr, ptr %l224, !tbaa !29
  %t408 = call ptr @__olang_region_or(ptr %t407, ptr %v1)
  %t409 = ptrtoint ptr %t408 to i64
  store i64 %t409, ptr %l225, !tbaa !24
  br label %bb111
bb111:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l20, !tbaa !29
  %t412 = load i64, ptr %l225
  %t413 = inttoptr i64 %t412 to ptr
  %t416 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %t413, ptr %t410, ptr %t411, i64 0)
  store %"compiler/source:Span" %t416, ptr %l229
  br label %bb112
bb112:
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l230, !tbaa !29
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"compiler/check:Checker", ptr %t418, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"compiler/generic:Program", ptr %t421, i32 0, i32 2
  %t424 = load i32, ptr %l21, !tbaa !23
  %t425 = load i64, ptr %l22, !tbaa !24
  store i64 %t425, ptr %l235, !tbaa !24
  %t426 = load i64, ptr %l235, !tbaa !24
  %t427 = load i64, ptr %l235, !tbaa !24
  %t428 = shl i64 1, %t427
  %t432 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t423, i32 %t424, i64 %t428)
  store i32 %t432, ptr %l237
  br label %bb113
bb113:
  %t433 = load ptr, ptr %l230, !tbaa !29
  %t434 = load i32, ptr %l237, !tbaa !23
  %t435 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s24, ptr %t433, i32 %t434)
  store { i64, ptr } %t435, ptr %l238
  br label %bb114
bb114:
  %t436 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t437 = extractvalue { i64, ptr } %t436, 0
  %t438 = extractvalue { i64, ptr } %t436, 1
  %t439 = mul i64 %t437, 1
  %t440 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t439)
  call void @llvm.memcpy.p0.p0.i64(ptr %t440, ptr %t438, i64 %t439, i1 false)
  %t441 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t440, 1
  store { i64, ptr } %t442, ptr %l239, !tbaa !27
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load i32, ptr %l29, !tbaa !23
  %t447 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s24, ptr %t443, i32 %t444)
  store { i64, ptr } %t447, ptr %l242
  br label %bb115
bb115:
  %t448 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t449 = extractvalue { i64, ptr } %t448, 0
  %t450 = extractvalue { i64, ptr } %t448, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t455 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t457 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchWordNotProduced(ptr %s24, ptr %s24, ptr %v0, { i64, ptr } %t455, { i64, ptr } %t454)
  store %"compiler/diagmsg:Msg" %t457, ptr %l244
  br label %bb116
bb116:
  %t458 = load ptr, ptr %l223, !tbaa !29
  %t459 = load %"compiler/source:Span", ptr %l229
  %t460 = load %"compiler/diagmsg:Msg", ptr %l244
  %t461 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t458, %"compiler/source:Span" %t459, %"compiler/diagmsg:Msg" %t460)
  store i64 %t461, ptr %l245
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s24)
  br label %bb118
bb118:
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t462 = load i64, ptr %l18, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l18, !tbaa !24
  br label %bb32
bb121:
  br label %bb122
bb122:
  %t466 = load i64, ptr %l14, !tbaa !24
  %t468 = add i64 %t466, 1
  store i64 %t468, ptr %l14, !tbaa !24
  br label %bb25
bb123:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epureFnArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca { i64, ptr }
  %l39 = alloca i1
  %l42 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca i32
  %l50 = alloca i1
  %l54 = alloca { i64, ptr }
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l10, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l11, !tbaa !21
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
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l9, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_42b7ee39aba059b7_e006ddb4ec8c71b3)
  unreachable
bb11:
  %t25 = load i64, ptr %l9, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l23, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l26, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 18
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t45, i64 %t46)
  store ptr %t49, ptr %l30
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %t52, !tbaa !23
  %t54 = load ptr, ptr %l26, !tbaa !29
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t54, i32 %t53)
  store i32 %t56, ptr %l33
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l23, !tbaa !29
  %t58 = load i32, ptr %l33, !tbaa !23
  %t59 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t57, i32 %t58)
  store { i64, ptr } %t59, ptr %l34
  br label %bb17
bb17:
  %t60 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t60, ptr %l6, !tbaa !27
  %t61 = load i64, ptr %l2, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t67 = icmp sge i64 %t61, %t64
  br i1 %t67, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb22
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l42, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t81, ptr %l46, !tbaa !27
  %t82 = load i64, ptr %l2, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i32, ptr %t85, i64 %t82
  %t87 = load i32, ptr %t86, !tbaa !33
  %t90 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t80, i32 %t87)
  store i32 %t90, ptr %l49
  br label %bb20
bb20:
  %t91 = load ptr, ptr %l42, !tbaa !29
  %t92 = load i32, ptr %l49, !tbaa !23
  %t93 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesPure(ptr %v0, ptr %t91, i32 %t92)
  store i1 %t93, ptr %l50
  br label %bb21
bb21:
  %t94 = load i1, ptr %l50, !tbaa !21
  %t95 = xor i1 %t94, true
  store i1 %t95, ptr %l39, !tbaa !21
  br label %bb22
bb22:
  %t97 = load i1, ptr %l39, !tbaa !21
  br i1 %t97, label %bb23, label %bb24
bb23:
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Call", ptr %t99, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l54, !tbaa !27
  %t103 = load i64, ptr %l2, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr ptr, ptr %t106, i64 %t103
  %t108 = load ptr, ptr %t107, !tbaa !39
  %t110 = call i1 @compiler_2fcheck_2efnWritten(ptr %v1, ptr %t108)
  store i1 %t110, ptr %l57
  br label %bb26
bb26:
  %t111 = load i1, ptr %l57, !tbaa !21
  store i1 %t111, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca %"compiler/generic:Desc"
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %l39 = alloca %"compiler/check:reflVal"
  %l41 = alloca i1
  %l43 = alloca i64
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"compiler/check:reflVal"
  %l52 = alloca i1
  %l57 = alloca i64
  %l60 = alloca %"compiler/check:reflVal"
  %l61 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i32
  %l65 = alloca %"compiler/check:reflVal"
  %l67 = alloca i1
  %l73 = alloca i1
  %l74 = alloca %"compiler/check:reflVal"
  %l76 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i1
  %l84 = alloca i1
  %l86 = alloca %"compiler/check:reflVal"
  %l88 = alloca i1
  %l89 = alloca i64
  %l94 = alloca i64
  %l99 = alloca i64
  %l100 = alloca %"compiler/check:reflVal"
  %l102 = alloca i1
  %l103 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l111 = alloca i1
  %l117 = alloca i64
  %l122 = alloca i1
  %l124 = alloca i1
  %l125 = alloca %"compiler/check:reflVal"
  %l128 = alloca %"compiler/check:reflVal"
  %l129 = alloca i64
  %l132 = alloca %"compiler/check:reflVal"
  %l133 = alloca %"compiler/check:reflVal"
  %l136 = alloca %"compiler/check:reflVal"
  %l139 = alloca i64
  %l142 = alloca i64
  %l146 = alloca i1
  %l147 = alloca i64
  %l152 = alloca %"compiler/check:reflVal"
  %l154 = alloca i1
  %l158 = alloca i32
  %l163 = alloca i32
  %l167 = alloca i1
  %l170 = alloca ptr
  %l175 = alloca i32
  %l176 = alloca i32
  %l180 = alloca %"compiler/check:reflVal"
  %l183 = alloca ptr
  %l188 = alloca i32
  %l189 = alloca i64
  %l190 = alloca %"compiler/check:reflVal"
  %l191 = alloca %"compiler/check:reflVal"
  %l194 = alloca i32
  %l197 = alloca %"compiler/check:reflVal"
  %l201 = alloca %"compiler/check:reflVal"
  %l205 = alloca %"compiler/generic:Desc"
  %l208 = alloca i1
  %l209 = alloca i64
  %l213 = alloca { i64, ptr }
  %l215 = alloca %"compiler/check:reflVal"
  %l217 = alloca i1
  %l218 = alloca i1
  %l224 = alloca ptr
  %l227 = alloca %"compiler/check:reflVal"
  %l229 = alloca i1
  %l230 = alloca i1
  %l236 = alloca i64
  %l239 = alloca %"compiler/check:reflVal"
  %l241 = alloca %"compiler/check:reflVal"
  %l242 = alloca %"compiler/check:reflVal"
  %l244 = alloca i1
  %l245 = alloca i1
  %l247 = alloca i1
  %l248 = alloca i1
  %l252 = alloca ptr
  %l253 = alloca %"compiler/generic:Desc"
  %l255 = alloca i1
  %l256 = alloca i64
  %l259 = alloca %"compiler/check:reflVal"
  %l261 = alloca %"compiler/check:reflVal"
  %l262 = alloca %"compiler/check:reflVal"
  %l263 = alloca %"compiler/check:reflVal"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflVal"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  store i32 %t11, ptr %l18
  br label %bb2
bb2:
  %t12 = load i32, ptr %l18, !tbaa !23
  store i32 %t12, ptr %l4, !tbaa !23
  %t13 = load i32, ptr %l4, !tbaa !23
  %t15 = icmp sge i32 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l4, !tbaa !23
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l24
  br label %bb5
bb4:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb5:
  %t22 = load i1, ptr %l24, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %t23, ptr %t24)
  store i1 %t27, ptr %l28
  br label %bb8
bb7:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb9
bb8:
  %t28 = load i1, ptr %l28, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l25, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t34 = load i32, ptr %l2, !tbaa !23
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t32, i32 %t33, i32 %t34)
  store i1 %t38, ptr %l34
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb13
bb12:
  %t39 = load i1, ptr %l34, !tbaa !21
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l30, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s1
  %t44 = load i32, ptr %l4, !tbaa !23
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t48 = icmp eq i32 %t44, %t45
  br i1 %t48, label %bb17, label %bb18
bb16:
  br label %bb124
bb17:
  %t50 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t50, ptr %l39
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t51 = load %"compiler/check:reflVal", ptr %l39
  store %"compiler/check:reflVal" %t51, ptr %rv
  br label %ret
bb20:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t54, ptr %l41
  br label %bb21
bb21:
  %t55 = load i1, ptr %l41, !tbaa !21
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 159
  store i1 true, ptr %t58, !tbaa !21
  %t59 = ptrtoint ptr %v2 to i64
  store i64 %t59, ptr %l43, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3areflVal_2e3
  br i1 %t60, label %bb24, label %bb25
bb23:
  br label %bb28
bb24:
  %t62 = call ptr @__olang_region_make(ptr %v2)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l43, !tbaa !24
  br label %bb25
bb25:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t68 = load i32, ptr %l4, !tbaa !23
  %t69 = load i64, ptr %l43
  %t70 = inttoptr i64 %t69 to ptr
  %t73 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflName(ptr %v0, ptr %t70, ptr %t67, i32 %t68)
  store { i64, ptr } %t73, ptr %l48
  br label %bb26
bb26:
  %t74 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t75 = load i64, ptr %l43
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = extractvalue { i64, ptr } %t74, 0
  %t78 = extractvalue { i64, ptr } %t74, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %t76, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t84 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervText(ptr %v2, ptr %v2, { i64, ptr } %t82)
  store %"compiler/check:reflVal" %t84, ptr %l50
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t85 = load %"compiler/check:reflVal", ptr %l50
  store %"compiler/check:reflVal" %t85, ptr %rv
  br label %ret
bb28:
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t86, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t88, ptr %l52
  br label %bb29
bb29:
  %t89 = load i1, ptr %l52, !tbaa !21
  br i1 %t89, label %bb30, label %bb31
bb30:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 159
  store i1 true, ptr %t92, !tbaa !21
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i32, ptr %l4, !tbaa !23
  %t100 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflKind(ptr %v0, ptr %t96, i32 %t97)
  store i64 %t100, ptr %l57
  br label %bb32
bb31:
  br label %bb39
bb32:
  %t101 = load i64, ptr %l57, !tbaa !24
  store i64 %t101, ptr %l5, !tbaa !24
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = icmp slt i64 %t102, 0
  br i1 %t104, label %bb33, label %bb34
bb33:
  %t106 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t106, ptr %l60
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t107 = load %"compiler/check:reflVal", ptr %l60
  store %"compiler/check:reflVal" %t107, ptr %rv
  br label %ret
bb36:
  %t108 = load i64, ptr @G_2ecompiler_2fcheck_2eRvCase, !tbaa !24
  store i64 %t108, ptr %l61, !tbaa !24
  %t109 = load i64, ptr %l5, !tbaa !24
  store i64 %t109, ptr %l62, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeKindType(ptr %v0, ptr %t110)
  store i32 %t112, ptr %l64
  br label %bb37
bb37:
  %t113 = load i64, ptr %l61, !tbaa !24
  %t114 = load i64, ptr %l62, !tbaa !24
  %t115 = load i32, ptr %l64, !tbaa !23
  %t116 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v2, ptr %v2, i1 true, i64 %t113, i64 %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, i32 %t115)
  store %"compiler/check:reflVal" %t116, ptr %l65
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t117 = load %"compiler/check:reflVal", ptr %l65
  store %"compiler/check:reflVal" %t117, ptr %rv
  br label %ret
bb39:
  %t118 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t118, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t120, ptr %l67
  br label %bb40
bb40:
  %t121 = load i1, ptr %l67, !tbaa !21
  br i1 %t121, label %bb41, label %bb42
bb41:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 159
  store i1 true, ptr %t124, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  %t131 = load i32, ptr %l4, !tbaa !23
  %t134 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t130, i32 %t131)
  store i1 %t134, ptr %l73
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t135 = load i1, ptr %l73, !tbaa !21
  %t136 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t135)
  store %"compiler/check:reflVal" %t136, ptr %l74
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t137 = load %"compiler/check:reflVal", ptr %l74
  store %"compiler/check:reflVal" %t137, ptr %rv
  br label %ret
bb45:
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t138, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t140, ptr %l76
  br label %bb46
bb46:
  %t141 = load i1, ptr %l76, !tbaa !21
  br i1 %t141, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb50
bb48:
  %t142 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t142, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t144, ptr %l79
  br label %bb49
bb49:
  %t145 = load i1, ptr %l79, !tbaa !21
  store i1 %t145, ptr %l77, !tbaa !21
  br label %bb50
bb50:
  %t146 = load i1, ptr %l77, !tbaa !21
  br i1 %t146, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s7
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 159
  store i1 true, ptr %t149, !tbaa !21
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = load i32, ptr %l4, !tbaa !23
  %t157 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t153, i32 %t154)
  store i1 %t157, ptr %l84
  br label %bb53
bb52:
  br label %bb65
bb53:
  %t158 = load i1, ptr %l84, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb54, label %bb55
bb54:
  %t161 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t161, ptr %l86
  br label %bb56
bb55:
  br label %bb57
bb56:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t162 = load %"compiler/check:reflVal", ptr %l86
  store %"compiler/check:reflVal" %t162, ptr %rv
  br label %ret
bb57:
  %t163 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t165 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t163, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t165, ptr %l88
  br label %bb58
bb58:
  %t166 = load i1, ptr %l88, !tbaa !21
  br i1 %t166, label %bb59, label %bb60
bb59:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l4, !tbaa !23
  %t176 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t172, i32 %t173)
  store i64 %t176, ptr %l94
  br label %bb61
bb60:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr %l4, !tbaa !23
  %t186 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t182, i32 %t183)
  store i64 %t186, ptr %l99
  br label %bb62
bb61:
  %t187 = load i64, ptr %l94, !tbaa !24
  store i64 %t187, ptr %l89, !tbaa !24
  br label %bb63
bb62:
  %t188 = load i64, ptr %l99, !tbaa !24
  store i64 %t188, ptr %l89, !tbaa !24
  br label %bb63
bb63:
  %t189 = load i64, ptr %l89, !tbaa !24
  %t190 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t189)
  store %"compiler/check:reflVal" %t190, ptr %l100
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t191 = load %"compiler/check:reflVal", ptr %l100
  store %"compiler/check:reflVal" %t191, ptr %rv
  br label %ret
bb65:
  %t192 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t194 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t192, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t194, ptr %l102
  br label %bb66
bb66:
  %t195 = load i1, ptr %l102, !tbaa !21
  br i1 %t195, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb70
bb68:
  %t196 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t198 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t196, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t198, ptr %l105
  br label %bb69
bb69:
  %t199 = load i1, ptr %l105, !tbaa !21
  store i1 %t199, ptr %l103, !tbaa !21
  br label %bb70
bb70:
  %t200 = load i1, ptr %l103, !tbaa !21
  br i1 %t200, label %bb71, label %bb72
bb71:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/check:Checker", ptr %t201, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t206 = getelementptr %"compiler/generic:Program", ptr %t204, i32 0, i32 2
  %t207 = load i32, ptr %l4, !tbaa !23
  %t210 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t206, i32 %t207)
  store i1 %t210, ptr %l111
  br label %bb73
bb72:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb74
bb73:
  %t211 = load i1, ptr %l111, !tbaa !21
  store i1 %t211, ptr %l106, !tbaa !21
  br label %bb74
bb74:
  %t212 = load i1, ptr %l106, !tbaa !21
  br i1 %t212, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s9
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 159
  store i1 true, ptr %t215, !tbaa !21
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/check:Checker", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = getelementptr %"compiler/generic:Program", ptr %t219, i32 0, i32 2
  %t222 = load i32, ptr %l4, !tbaa !23
  %t225 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t221, i32 %t222)
  store i64 %t225, ptr %l117
  br label %bb77
bb76:
  br label %bb104
bb77:
  %t226 = load i64, ptr %l117, !tbaa !24
  store i64 %t226, ptr %l6, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 2
  %t233 = load i32, ptr %l4, !tbaa !23
  %t236 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t232, i32 %t233)
  store i1 %t236, ptr %l122
  br label %bb78
bb78:
  %t237 = load i1, ptr %l122, !tbaa !21
  br i1 %t237, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s10
  %t238 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t240 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t238, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t240, ptr %l124
  br label %bb81
bb80:
  br label %bb91
bb81:
  %t241 = load i1, ptr %l124, !tbaa !21
  br i1 %t241, label %bb82, label %bb83
bb82:
  %t242 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 0)
  store %"compiler/check:reflVal" %t242, ptr %l125
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t243 = load %"compiler/check:reflVal", ptr %l125
  store %"compiler/check:reflVal" %t243, ptr %rv
  br label %ret
bb85:
  %t244 = load i64, ptr %l6, !tbaa !24
  %t246 = icmp slt i64 %t244, 64
  br i1 %t246, label %bb86, label %bb87
bb86:
  %t248 = load i64, ptr %l6, !tbaa !24
  store i64 %t248, ptr %l129, !tbaa !24
  %t249 = load i64, ptr %l129, !tbaa !24
  %t250 = load i64, ptr %l129, !tbaa !24
  %t251 = shl i64 1, %t250
  %t253 = sub i64 %t251, 1
  %t255 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t253)
  store %"compiler/check:reflVal" %t255, ptr %l132
  br label %bb88
bb87:
  %t256 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t256, ptr %l133
  br label %bb89
bb88:
  %t257 = load %"compiler/check:reflVal", ptr %l132
  store %"compiler/check:reflVal" %t257, ptr %l128
  br label %bb90
bb89:
  %t258 = load %"compiler/check:reflVal", ptr %l133
  store %"compiler/check:reflVal" %t258, ptr %l128
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t259 = load %"compiler/check:reflVal", ptr %l128
  store %"compiler/check:reflVal" %t259, ptr %rv
  br label %ret
bb91:
  %t260 = load i64, ptr %l6, !tbaa !24
  %t262 = icmp sgt i64 %t260, 64
  br i1 %t262, label %bb92, label %bb93
bb92:
  %t264 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t264, ptr %l136
  br label %bb94
bb93:
  br label %bb95
bb94:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t265 = load %"compiler/check:reflVal", ptr %l136
  store %"compiler/check:reflVal" %t265, ptr %rv
  br label %ret
bb95:
  %t266 = load i64, ptr %l6, !tbaa !24
  %t268 = icmp eq i64 %t266, 64
  br i1 %t268, label %bb96, label %bb97
bb96:
  %t270 = sub i64 -9223372036854775807, 1
  store i64 %t270, ptr %l139, !tbaa !24
  br label %bb98
bb97:
  %t272 = load i64, ptr %l6, !tbaa !24
  %t274 = sub i64 %t272, 1
  store i64 %t274, ptr %l142, !tbaa !24
  %t275 = load i64, ptr %l142, !tbaa !24
  %t276 = load i64, ptr %l142, !tbaa !24
  %t277 = shl i64 1, %t276
  %t279 = sub i64 0, %t277
  store i64 %t279, ptr %l139, !tbaa !24
  br label %bb98
bb98:
  %t281 = load i64, ptr %l139, !tbaa !24
  store i64 %t281, ptr %l7, !tbaa !24
  %t282 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t284 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t282, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t284, ptr %l146
  br label %bb99
bb99:
  %t285 = load i1, ptr %l146, !tbaa !21
  br i1 %t285, label %bb100, label %bb101
bb100:
  %t286 = load i64, ptr %l7, !tbaa !24
  store i64 %t286, ptr %l147, !tbaa !24
  br label %bb102
bb101:
  %t288 = load i64, ptr %l7, !tbaa !24
  %t290 = add i64 %t288, 1
  %t292 = sub i64 0, %t290
  store i64 %t292, ptr %l147, !tbaa !24
  br label %bb102
bb102:
  %t294 = load i64, ptr %l147, !tbaa !24
  %t295 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t294)
  store %"compiler/check:reflVal" %t295, ptr %l152
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t296 = load %"compiler/check:reflVal", ptr %l152
  store %"compiler/check:reflVal" %t296, ptr %rv
  br label %ret
bb104:
  %t297 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t299 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t297, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t299, ptr %l154
  br label %bb105
bb105:
  %t300 = load i1, ptr %l154, !tbaa !21
  br i1 %t300, label %bb106, label %bb107
bb106:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 159
  store i1 true, ptr %t303, !tbaa !21
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i32, ptr %l4, !tbaa !23
  %t308 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t304, i32 %t305)
  store i32 %t308, ptr %l158
  br label %bb108
bb107:
  br label %bb122
bb108:
  %t309 = load i32, ptr %l158, !tbaa !23
  store i32 %t309, ptr %l8, !tbaa !23
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/check:Checker", ptr %t310, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t315 = getelementptr %"compiler/generic:Program", ptr %t313, i32 0, i32 2
  %t316 = load i32, ptr %l8, !tbaa !23
  %t319 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t315, i32 %t316)
  store i32 %t319, ptr %l163
  br label %bb109
bb109:
  %t320 = load i32, ptr %l163, !range !{i32 0, i32 33}
  %t322 = trunc i64 19 to i32
  %t323 = icmp eq i32 %t320, %t322
  %t325 = xor i1 %t323, true
  br i1 %t325, label %bb110, label %bb111
bb110:
  store i1 true, ptr %l167, !tbaa !21
  br label %bb114
bb111:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/check:Checker", ptr %t327, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !29
  %t332 = getelementptr %"compiler/generic:Program", ptr %t330, i32 0, i32 2
  store ptr %t332, ptr %l170, !tbaa !29
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/check:Checker", ptr %t333, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t338 = getelementptr %"compiler/generic:Program", ptr %t336, i32 0, i32 2
  %t339 = load i32, ptr %l8, !tbaa !23
  %t342 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t338, i32 %t339)
  store i32 %t342, ptr %l175
  br label %bb112
bb112:
  %t343 = load ptr, ptr %l170, !tbaa !29
  %t344 = load i32, ptr %l175, !tbaa !23
  %t345 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t343, i32 %t344)
  store i32 %t345, ptr %l176
  br label %bb113
bb113:
  %t346 = load i32, ptr %l176, !range !{i32 0, i32 33}
  %t348 = trunc i64 26 to i32
  %t349 = icmp eq i32 %t346, %t348
  %t351 = xor i1 %t349, true
  store i1 %t351, ptr %l167, !tbaa !21
  br label %bb114
bb114:
  %t353 = load i1, ptr %l167, !tbaa !21
  br i1 %t353, label %bb115, label %bb116
bb115:
  %t354 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t354, ptr %l180
  br label %bb117
bb116:
  br label %bb118
bb117:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t355 = load %"compiler/check:reflVal", ptr %l180
  store %"compiler/check:reflVal" %t355, ptr %rv
  br label %ret
bb118:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t361 = getelementptr %"compiler/generic:Program", ptr %t359, i32 0, i32 2
  store ptr %t361, ptr %l183, !tbaa !29
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/check:Checker", ptr %t362, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t367 = getelementptr %"compiler/generic:Program", ptr %t365, i32 0, i32 2
  %t368 = load i32, ptr %l8, !tbaa !23
  %t371 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t367, i32 %t368)
  store i32 %t371, ptr %l188
  br label %bb119
bb119:
  %t372 = load ptr, ptr %l183, !tbaa !29
  %t373 = load i32, ptr %l188, !tbaa !23
  %t374 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t372, i32 %t373)
  store i64 %t374, ptr %l189
  br label %bb120
bb120:
  %t375 = load i64, ptr %l189, !tbaa !24
  %t376 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t375)
  store %"compiler/check:reflVal" %t376, ptr %l190
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t377 = load %"compiler/check:reflVal", ptr %l190
  store %"compiler/check:reflVal" %t377, ptr %rv
  br label %ret
bb122:
  %t378 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t378, ptr %l191
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t379 = load %"compiler/check:reflVal", ptr %l191
  store %"compiler/check:reflVal" %t379, ptr %rv
  br label %ret
bb124:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l1, !tbaa !29
  %t384 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t380, ptr %t381)
  store i32 %t384, ptr %l194
  br label %bb125
bb125:
  %t385 = load i32, ptr %l194, !tbaa !23
  store i32 %t385, ptr %l9, !tbaa !23
  %t386 = load i32, ptr %l9, !tbaa !23
  %t388 = icmp slt i32 %t386, 0
  br i1 %t388, label %bb126, label %bb127
bb126:
  %t390 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t390, ptr %l197
  br label %bb128
bb127:
  br label %bb129
bb128:
  call void @__olang_scope_close(ptr %s0)
  %t391 = load %"compiler/check:reflVal", ptr %l197
  store %"compiler/check:reflVal" %t391, ptr %rv
  br label %ret
bb129:
  %t392 = load i32, ptr %l9, !tbaa !23
  %t393 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t396 = icmp eq i32 %t392, %t393
  br i1 %t396, label %bb130, label %bb131
bb130:
  %t398 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t398, ptr %l201
  br label %bb132
bb131:
  br label %bb133
bb132:
  call void @__olang_scope_close(ptr %s0)
  %t399 = load %"compiler/check:reflVal", ptr %l201
  store %"compiler/check:reflVal" %t399, ptr %rv
  br label %ret
bb133:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/check:Checker", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load i32, ptr %l9, !tbaa !23
  %t407 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t403, i32 %t404)
  store %"compiler/generic:Desc" %t407, ptr %l205
  br label %bb134
bb134:
  %t408 = load %"compiler/generic:Desc", ptr %l205
  store %"compiler/generic:Desc" %t408, ptr %l10
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/check:Checker", ptr %t409, i32 0, i32 159
  store i1 true, ptr %t411, !tbaa !21
  %t412 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t414 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t412, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t414, ptr %l208
  br label %bb135
bb135:
  %t415 = load i1, ptr %l208, !tbaa !21
  br i1 %t415, label %bb136, label %bb137
bb136:
  %t416 = ptrtoint ptr %v2 to i64
  store i64 %t416, ptr %l209, !tbaa !24
  %t417 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3areflVal_2e3
  br i1 %t417, label %bb138, label %bb139
bb137:
  br label %bb142
bb138:
  %t419 = call ptr @__olang_region_make(ptr %v2)
  %t420 = ptrtoint ptr %t419 to i64
  store i64 %t420, ptr %l209, !tbaa !24
  br label %bb139
bb139:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load %"compiler/generic:Desc", ptr %l10
  %t423 = load i64, ptr %l209
  %t424 = inttoptr i64 %t423 to ptr
  %t427 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %t424, ptr %t421, %"compiler/generic:Desc" %t422)
  store { i64, ptr } %t427, ptr %l213
  br label %bb140
bb140:
  %t428 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t429 = load i64, ptr %l209
  %t430 = inttoptr i64 %t429 to ptr
  %t431 = extractvalue { i64, ptr } %t428, 0
  %t432 = extractvalue { i64, ptr } %t428, 1
  %t433 = mul i64 %t431, 1
  %t434 = call ptr @__olang_scope_alloc(ptr %t430, i64 %t433)
  call void @llvm.memcpy.p0.p0.i64(ptr %t434, ptr %t432, i64 %t433, i1 false)
  %t435 = insertvalue { i64, ptr } undef, i64 %t431, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t434, 1
  %t438 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervText(ptr %v2, ptr %v2, { i64, ptr } %t436)
  store %"compiler/check:reflVal" %t438, ptr %l215
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s0)
  %t439 = load %"compiler/check:reflVal", ptr %l215
  store %"compiler/check:reflVal" %t439, ptr %rv
  br label %ret
bb142:
  %t440 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t442 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t440, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t442, ptr %l217
  br label %bb143
bb143:
  %t443 = load i1, ptr %l217, !tbaa !21
  br i1 %t443, label %bb144, label %bb145
bb144:
  %t444 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t445 = load i64, ptr %t444, !tbaa !24
  %t446 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t449 = icmp eq i64 %t445, %t446
  store i1 %t449, ptr %l218, !tbaa !21
  br label %bb146
bb145:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb146
bb146:
  %t451 = load i1, ptr %l218, !tbaa !21
  br i1 %t451, label %bb147, label %bb148
bb147:
  store %olang.scope zeroinitializer, ptr %s18
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load %"compiler/generic:Desc", ptr %l10
  %t456 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamDefault(ptr %v0, ptr %s18, ptr %t452, %"compiler/generic:Desc" %t453)
  store ptr %t456, ptr %l224
  br label %bb149
bb148:
  br label %bb151
bb149:
  %t457 = load ptr, ptr %l224, !tbaa !29
  %t458 = icmp eq ptr %t457, null
  %t460 = xor i1 %t458, true
  %t462 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v2, i1 %t460)
  store %"compiler/check:reflVal" %t462, ptr %l227
  br label %bb150
bb150:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  %t463 = load %"compiler/check:reflVal", ptr %l227
  store %"compiler/check:reflVal" %t463, ptr %rv
  br label %ret
bb151:
  %t464 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t466 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t464, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t466, ptr %l229
  br label %bb152
bb152:
  %t467 = load i1, ptr %l229, !tbaa !21
  br i1 %t467, label %bb153, label %bb154
bb153:
  %t468 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t469 = load i64, ptr %t468, !tbaa !24
  %t470 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t473 = icmp eq i64 %t469, %t470
  store i1 %t473, ptr %l230, !tbaa !21
  br label %bb155
bb154:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb155
bb155:
  %t475 = load i1, ptr %l230, !tbaa !21
  br i1 %t475, label %bb156, label %bb157
bb156:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load %"compiler/generic:Desc", ptr %l10
  %t480 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldOffset(ptr %v0, ptr %t476, %"compiler/generic:Desc" %t477)
  store i64 %t480, ptr %l236
  br label %bb158
bb157:
  br label %bb164
bb158:
  %t481 = load i64, ptr %l236, !tbaa !24
  store i64 %t481, ptr %l11, !tbaa !24
  %t482 = load i64, ptr %l11, !tbaa !24
  %t484 = icmp sge i64 %t482, 0
  br i1 %t484, label %bb159, label %bb160
bb159:
  %t486 = load i64, ptr %l11, !tbaa !24
  %t488 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t486)
  store %"compiler/check:reflVal" %t488, ptr %l241
  br label %bb161
bb160:
  %t489 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t489, ptr %l242
  br label %bb162
bb161:
  %t490 = load %"compiler/check:reflVal", ptr %l241
  store %"compiler/check:reflVal" %t490, ptr %l239
  br label %bb163
bb162:
  %t491 = load %"compiler/check:reflVal", ptr %l242
  store %"compiler/check:reflVal" %t491, ptr %l239
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s0)
  %t492 = load %"compiler/check:reflVal", ptr %l239
  store %"compiler/check:reflVal" %t492, ptr %rv
  br label %ret
bb164:
  %t493 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t495 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t493, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t495, ptr %l244
  br label %bb165
bb165:
  %t496 = load i1, ptr %l244, !tbaa !21
  br i1 %t496, label %bb166, label %bb167
bb166:
  store i1 true, ptr %l245, !tbaa !21
  br label %bb169
bb167:
  %t497 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t499 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t497, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t499, ptr %l247
  br label %bb168
bb168:
  %t500 = load i1, ptr %l247, !tbaa !21
  store i1 %t500, ptr %l245, !tbaa !21
  br label %bb169
bb169:
  %t501 = load i1, ptr %l245, !tbaa !21
  br i1 %t501, label %bb170, label %bb171
bb170:
  %t502 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t503 = load i64, ptr %t502, !tbaa !24
  %t504 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t507 = icmp eq i64 %t503, %t504
  store i1 %t507, ptr %l248, !tbaa !21
  br label %bb172
bb171:
  store i1 false, ptr %l248, !tbaa !21
  br label %bb172
bb172:
  %t509 = load i1, ptr %l248, !tbaa !21
  br i1 %t509, label %bb173, label %bb174
bb173:
  store %olang.scope zeroinitializer, ptr %s20
  %t510 = load ptr, ptr %l0, !tbaa !29
  store ptr %t510, ptr %l252, !tbaa !29
  %t511 = load %"compiler/generic:Desc", ptr %l10
  store %"compiler/generic:Desc" %t511, ptr %l253
  %t512 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t514 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s20, { i64, ptr } %t512, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t514, ptr %l255
  br label %bb175
bb174:
  br label %bb182
bb175:
  %t515 = load ptr, ptr %l252, !tbaa !29
  %t516 = load %"compiler/generic:Desc", ptr %l253
  %t517 = load i1, ptr %l255, !tbaa !21
  %t518 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldBits(ptr %v0, ptr %t515, %"compiler/generic:Desc" %t516, i1 %t517)
  store i64 %t518, ptr %l256
  br label %bb176
bb176:
  %t519 = load i64, ptr %l256, !tbaa !24
  store i64 %t519, ptr %l12, !tbaa !24
  %t520 = load i64, ptr %l12, !tbaa !24
  %t522 = icmp sge i64 %t520, 0
  br i1 %t522, label %bb177, label %bb178
bb177:
  %t524 = load i64, ptr %l12, !tbaa !24
  %t526 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v2, i64 %t524)
  store %"compiler/check:reflVal" %t526, ptr %l261
  br label %bb179
bb178:
  %t527 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t527, ptr %l262
  br label %bb180
bb179:
  %t528 = load %"compiler/check:reflVal", ptr %l261
  store %"compiler/check:reflVal" %t528, ptr %l259
  br label %bb181
bb180:
  %t529 = load %"compiler/check:reflVal", ptr %l262
  store %"compiler/check:reflVal" %t529, ptr %l259
  br label %bb181
bb181:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  %t530 = load %"compiler/check:reflVal", ptr %l259
  store %"compiler/check:reflVal" %t530, ptr %rv
  br label %ret
bb182:
  %t531 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t531, ptr %l263
  br label %bb183
bb183:
  call void @__olang_scope_close(ptr %s0)
  %t532 = load %"compiler/check:reflVal", ptr %l263
  store %"compiler/check:reflVal" %t532, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflHasAttr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l5 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, i32 }
  %l13 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca i1
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca %"compiler/check:reflVal"
  %l32 = alloca i32
  %l35 = alloca %"compiler/check:reflVal"
  %l40 = alloca %"compiler/check:reflVal"
  %l42 = alloca { i64, ptr }
  %l45 = alloca i32
  %l49 = alloca %"compiler/check:reflVal"
  %l53 = alloca { i64, i32 }
  %l57 = alloca %"compiler/check:reflVal"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflVal"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l13
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t6, ptr %l4
  %t7 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l4, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t10 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l4, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l15, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l16, !tbaa !24
  %t14 = load i64, ptr %l16, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t28, ptr %l19
  br label %bb2
bb2:
  %t29 = load i1, ptr %l19, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = icmp ne i64 %t34, 1
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb8
bb7:
  %t41 = extractvalue { i64, ptr } %a3, 0
  %t43 = icmp ne i64 %t41, 0
  store i1 %t43, ptr %l25, !tbaa !21
  br label %bb8
bb8:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t46 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t46, ptr %l29
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load %"compiler/check:reflVal", ptr %l29
  store %"compiler/check:reflVal" %t47, ptr %rv
  br label %ret
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %s0, ptr %t48, ptr %t49)
  store i32 %t52, ptr %l32
  br label %bb13
bb13:
  %t53 = load i32, ptr %l32, !tbaa !23
  store i32 %t53, ptr %l7, !tbaa !23
  %t54 = load i32, ptr %l7, !tbaa !23
  %t56 = icmp slt i32 %t54, 0
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t58 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t58, ptr %l35
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load %"compiler/check:reflVal", ptr %l35
  store %"compiler/check:reflVal" %t59, ptr %rv
  br label %ret
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 159
  store i1 true, ptr %t62, !tbaa !21
  %t63 = load i32, ptr %l7, !tbaa !23
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t67 = icmp eq i32 %t63, %t64
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t69, ptr %l40
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t70 = load %"compiler/check:reflVal", ptr %l40
  store %"compiler/check:reflVal" %t70, ptr %rv
  br label %ret
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t72, ptr %l42, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 0
  %t76 = load ptr, ptr %t75, !tbaa !39
  %t80 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v2, ptr %t71, ptr %t76)
  store i32 %t80, ptr %l45
  br label %bb22
bb22:
  %t81 = load i32, ptr %l45, !tbaa !23
  store i32 %t81, ptr %l8, !tbaa !23
  %t82 = load i32, ptr %l8, !tbaa !23
  %t83 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t86 = icmp eq i32 %t82, %t83
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t88 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v4)
  store %"compiler/check:reflVal" %t88, ptr %l49
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load %"compiler/check:reflVal", ptr %l49
  store %"compiler/check:reflVal" %t89, ptr %rv
  br label %ret
bb26:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l7, !tbaa !23
  %t92 = load i32, ptr %l8, !tbaa !23
  %t96 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %t90, i32 %t91, i32 %t92)
  store { i64, i32 } %t96, ptr %l53
  br label %bb27
bb27:
  %t97 = load { i64, i32 }, ptr %l53
  store { i64, i32 } %t97, ptr %l9
  %t98 = getelementptr { i64, i32 }, ptr %l9, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  %t103 = icmp sge i64 %t99, 0
  %t105 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v4, i1 %t103)
  store %"compiler/check:reflVal" %t105, ptr %l57
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t106 = load %"compiler/check:reflVal", ptr %l57
  store %"compiler/check:reflVal" %t106, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"compiler/check:reflList"
  %l5 = alloca { { i64, ptr }, { i64, ptr } }
  %l6 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca i1
  %l17 = alloca %"compiler/check:reflVal"
  %l20 = alloca %"compiler/check:reflList"
  %l23 = alloca %"compiler/check:reflVal"
  %l28 = alloca %"compiler/check:reflVal"
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca { { i64, ptr }, { i64, ptr } }
  %l42 = alloca i1
  %l43 = alloca %"compiler/check:reflVal"
  %l46 = alloca %"compiler/check:reflVal"
  %l47 = alloca %"compiler/check:reflVal"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflVal"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a2)
  store { i64, ptr } %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load i1, ptr %l11, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  %t13 = extractvalue { i64, ptr } %a3, 0
  %t15 = icmp ne i64 %t13, 0
  store i1 %t15, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t18, ptr %l17
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load %"compiler/check:reflVal", ptr %l17
  store %"compiler/check:reflVal" %t19, ptr %rv
  br label %ret
bb9:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t20, ptr %a1)
  store %"compiler/check:reflList" %t24, ptr %l20
  br label %bb10
bb10:
  %t25 = load %"compiler/check:reflList", ptr %l20
  store %"compiler/check:reflList" %t25, ptr %l4
  %t26 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 0
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t31, ptr %l23
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load %"compiler/check:reflVal", ptr %l23
  store %"compiler/check:reflVal" %t32, ptr %rv
  br label %ret
bb14:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 159
  store i1 true, ptr %t35, !tbaa !21
  %t36 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 1
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t41 = icmp eq i32 %t37, %t38
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t43, ptr %l28
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load %"compiler/check:reflVal", ptr %l28
  store %"compiler/check:reflVal" %t44, ptr %rv
  br label %ret
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l30, !tbaa !29
  %t49 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  store i32 %t50, ptr %l31, !tbaa !23
  %t51 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 2
  %t52 = load i64, ptr %t51, !tbaa !24
  store i64 %t52, ptr %l32, !tbaa !24
  %t53 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 3
  %t54 = load i64, ptr %t53, !tbaa !24
  store i64 %t54, ptr %l33, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t55)
  store ptr %t57, ptr %l35
  br label %bb19
bb19:
  %t58 = load ptr, ptr %l35, !tbaa !29
  %t60 = getelementptr %"compiler/check:frame", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load ptr, ptr %l30, !tbaa !29
  %t63 = load i32, ptr %l31, !tbaa !23
  %t64 = load i64, ptr %l32, !tbaa !24
  %t65 = load i64, ptr %l33, !tbaa !24
  %t67 = call { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %s0, ptr %t62, i32 %t63, i64 %t64, i64 %t65, i64 %t61)
  store { { i64, ptr }, { i64, ptr } } %t67, ptr %l38
  br label %bb20
bb20:
  %t68 = load { { i64, ptr }, { i64, ptr } }, ptr %l38
  store { { i64, ptr }, { i64, ptr } } %t68, ptr %l5
  %t69 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l6, !tbaa !27
  %t72 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 1
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t73, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t77, ptr %l42
  br label %bb21
bb21:
  %t78 = load i1, ptr %l42, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v3, i64 %t81)
  store %"compiler/check:reflVal" %t83, ptr %l46
  br label %bb24
bb23:
  %t84 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t84, ptr %l47
  br label %bb25
bb24:
  %t85 = load %"compiler/check:reflVal", ptr %l46
  store %"compiler/check:reflVal" %t85, ptr %l43
  br label %bb26
bb25:
  %t86 = load %"compiler/check:reflVal", ptr %l47
  store %"compiler/check:reflVal" %t86, ptr %l43
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load %"compiler/check:reflVal", ptr %l43
  store %"compiler/check:reflVal" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflName(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l19 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l33 = alloca i64
  %l34 = alloca ptr
  %l39 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 4
  %t7 = getelementptr %"compiler/generic:Context", ptr %t6, i32 0, i32 3
  %t11 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t7, i32 %a2)
  %t12 = extractvalue { i32, i32 } %t11, 1
  %t13 = extractvalue { i32, i32 } %t11, 0
  store i32 %t13, ptr %l11
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i32 %t12, ptr %l10
  br label %bb2
bb2:
  %t16 = load i32, ptr %l10, !tbaa !23
  store i32 %t16, ptr %l4, !tbaa !23
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i32 -1, ptr %l4, !tbaa !23
  br label %bb5
bb5:
  %t17 = load i32, ptr %l4, !tbaa !23
  store i32 %t17, ptr %l3, !tbaa !23
  %t18 = load i32, ptr %l3, !tbaa !23
  %t20 = icmp slt i32 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  store ptr null, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l19
  br label %bb9
bb9:
  %t33 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t35 = trunc i64 26 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t39, ptr %l23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l28
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t55, i32 %t56)
  store i64 %t59, ptr %l33
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l22, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l23
  %t62 = load i32, ptr %l28, !tbaa !23
  %t63 = load i64, ptr %l33, !tbaa !24
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t60, %"compiler/source:Span" %t61, i32 %t62, i64 %t63)
  store ptr %t64, ptr %l34
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l34, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l1
  %t69 = load i32, ptr %l3, !tbaa !23
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %t67, %"compiler/source:Span" %t68, i32 %t69)
  store ptr %t73, ptr %l39
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l39, !tbaa !29
  store ptr %t74, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %lp3 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l13 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 159
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 159
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %t9, ptr %a1)
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l11
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb2, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l10
  br label %bb1
bb1:
  %t18 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t18, ptr %l7, !tbaa !27
  br label %bb4
bb2:
  %t19 = load i32, ptr %l11, !tbaa !23
  %t20 = ashr i32 %t19, 16
  %t22 = icmp eq i32 %t20, 1
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 159
  %t27 = load i1, ptr %t26, !tbaa !21
  %t30 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 160
  store i1 %t27, ptr %t30, !tbaa !21
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i1, ptr %l2, !tbaa !21
  %t35 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 159
  store i1 %t32, ptr %t35, !tbaa !21
  %t37 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t37, ptr %rv
  br label %ret
bb4:
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t38, ptr %lp3
  %t39 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t40 = load ptr, ptr %lp3
  store { i64, ptr } %t39, ptr %t40, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 159
  %t45 = load i1, ptr %t44, !tbaa !21
  %t48 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 160
  store i1 %t45, ptr %t48, !tbaa !21
  %t49 = load ptr, ptr %lp3
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l23, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  store i64 %t52, ptr %l24, !tbaa !24
  %t53 = load i64, ptr %l24, !tbaa !24
  %t54 = mul i64 %t53, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l25, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = load i64, ptr %l24, !tbaa !24
  %t63 = mul i64 %t62, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t59, ptr %t61, i64 %t63, i1 false)
  %t64 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t64, ptr %l23, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i1, ptr %l2, !tbaa !21
  %t69 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 159
  store i1 %t66, ptr %t69, !tbaa !21
  %t70 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t71 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t70, 1
  store { i32, { i64, ptr } } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca i64
  %l17 = alloca i64
  %l23 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca ptr
  %l43 = alloca i1
  %l49 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t24 = alloca { i64, [3 x i64] }, align 8
  %t89 = alloca { i64, [3 x i64] }, align 8
  %t115 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l8, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l14, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 18
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l17
  br label %bb4
bb4:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = icmp sge i64 %t19, %t20
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 0
  store i64 0, ptr %t25
  %t26 = load { i64, [3 x i64] }, ptr %t24
  store { i64, [3 x i64] } %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 18
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t30, i64 %t31)
  store ptr %t34, ptr %l23
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l23, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 1
  %t38 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t38, ptr %l3
  %t40 = load { i64, [2 x i64] }, ptr %l3
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 0
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t45 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t46 = getelementptr { i64 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l4, !tbaa !24
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l32
  br label %bb13
bb13:
  %t57 = load i64, ptr %l32, !tbaa !24
  store i64 %t57, ptr %l5, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l36
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Func", ptr %t66, i32 0, i32 3
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Sig", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l6, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t78 = icmp eq i64 %t76, 0
  br i1 %t78, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb17
bb16:
  %t80 = load i64, ptr %l1, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t86 = icmp sge i64 %t80, %t83
  store i1 %t86, ptr %l43, !tbaa !21
  br label %bb17
bb17:
  %t88 = load i1, ptr %l43, !tbaa !21
  br i1 %t88, label %bb18, label %bb19
bb18:
  store { i64, [3 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t91 = load { i64, [3 x i64] }, ptr %t89
  store { i64, [3 x i64] } %t91, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l49, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t97, i64 %t98)
  store i64 %t101, ptr %l53
  br label %bb21
bb21:
  %t102 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t102, ptr %l54, !tbaa !27
  %t103 = load i64, ptr %l1, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr ptr, ptr %t106, i64 %t103
  %t108 = load ptr, ptr %t107, !tbaa !39
  %t110 = load ptr, ptr %l49, !tbaa !29
  %t111 = load i64, ptr %l53, !tbaa !24
  %t113 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t110, i64 %t111, ptr %t108)
  store { i64, [3 x i64] } %t113, ptr %l58
  br label %bb22
bb22:
  %t114 = load { i64, [3 x i64] }, ptr %l58
  store { i64, [3 x i64] } %t114, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, [3 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [3 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t117 = load { i64, [3 x i64] }, ptr %t115
  store { i64, [3 x i64] } %t117, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_6b233227628ca57_40576c0d91c202cb)
  unreachable
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l8, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t18, ptr %l12, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l13, !tbaa !24
  %t21 = load i64, ptr %l13, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l14, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t32, ptr %l12, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t34 = load i32, ptr %l1, !tbaa !23
  %t36 = icmp ne i32 %t34, 0
  br i1 %t36, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t38, i32 %t39)
  store { i64, ptr } %t42, ptr %l19
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t43 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t45 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t43, i64 %t44)
  %t53 = getelementptr i8, ptr %t52, i64 %t44
  call void @olang_textcopy(ptr %t53, ptr %t46, i64 %t47)
  %t54 = getelementptr i8, ptr %t53, i64 %t47
  call void @olang_textcopy(ptr %t54, ptr %t49, i64 %t50)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t52, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t56, ptr %rv
  br label %ret
bb9:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t58, ptr %l22, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l23, !tbaa !24
  %t61 = load i64, ptr %l23, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l24, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l23, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t72, ptr %l22, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca %"compiler/typed:Local"
  %l34 = alloca i1
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l60 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l81 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l92 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l102 = alloca i1
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
  store i1 false, ptr %rv
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
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l16, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l3, !tbaa !23
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %t27, i64 %t30)
  store i1 %t33, ptr %l26
  br label %bb9
bb9:
  %t34 = load i1, ptr %l26, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t35)
  store ptr %t37, ptr %l29
  br label %bb12
bb12:
  %t38 = load i32, ptr %l3, !tbaa !23
  %t39 = load ptr, ptr %l29, !tbaa !29
  %t41 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t39, i32 %t38)
  store %"compiler/typed:Local" %t41, ptr %l31
  br label %bb13
bb13:
  %t42 = getelementptr %"compiler/typed:Local", ptr %l31, i32 0, i32 4
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 7}
  %t45 = trunc i64 5 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l37
  br label %bb16
bb15:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb17
bb16:
  %t53 = load i1, ptr %l37, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l34, !tbaa !21
  store i1 %t56, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t57 = load i1, ptr %l27, !tbaa !21
  store i1 %t57, ptr %l14, !tbaa !21
  br label %bb66
bb19:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t59 = load ptr, ptr %l39, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l39, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 8}
  %t65 = icmp eq i64 %t63, 1
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l40, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t69, i32 0, i32 2
  %t71 = load i64, ptr %t70
  store i64 %t71, ptr %l4, !tbaa !24
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t75, i32 0, i32 3
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l5, !tbaa !23
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i32, ptr %l5, !tbaa !23
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutableGlobal(ptr %v0, ptr %t79, i64 %t80, i32 %t81)
  store i1 %t85, ptr %l50
  br label %bb25
bb25:
  %t86 = load i1, ptr %l50, !tbaa !21
  store i1 %t86, ptr %l14, !tbaa !21
  br label %bb66
bb26:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t88 = load ptr, ptr %l51, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb27, label %bb28
bb27:
  %t91 = load ptr, ptr %l51, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 8}
  %t94 = icmp eq i64 %t92, 2
  store i1 %t94, ptr %l52, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l52, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t98, i32 0, i32 2
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l6, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i1 %t107, ptr %l60
  br label %bb32
bb32:
  %t108 = load i1, ptr %l60, !tbaa !21
  store i1 %t108, ptr %l14, !tbaa !21
  br label %bb66
bb33:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t110 = load ptr, ptr %l61, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb34, label %bb35
bb34:
  %t113 = load ptr, ptr %l61, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 8}
  %t116 = icmp eq i64 %t114, 3
  store i1 %t116, ptr %l62, !tbaa !21
  br label %bb35
bb35:
  %t117 = load i1, ptr %l62, !tbaa !21
  br i1 %t117, label %bb36, label %bb37
bb36:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l7, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l7, !tbaa !29
  %t129 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  store i1 %t129, ptr %l70
  br label %bb39
bb39:
  %t130 = load i1, ptr %l70, !tbaa !21
  store i1 %t130, ptr %l14, !tbaa !21
  br label %bb66
bb40:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t132 = load ptr, ptr %l71, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb41, label %bb42
bb41:
  %t135 = load ptr, ptr %l71, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 8}
  %t138 = icmp eq i64 %t136, 4
  store i1 %t138, ptr %l72, !tbaa !21
  br label %bb42
bb42:
  %t139 = load i1, ptr %l72, !tbaa !21
  br i1 %t139, label %bb43, label %bb44
bb43:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t142, i32 0, i32 2
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l8, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l8, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Elem", ptr %t147, i32 0, i32 0
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t154 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t146, ptr %t150)
  store i1 %t154, ptr %l81
  br label %bb46
bb46:
  %t155 = load i1, ptr %l81, !tbaa !21
  store i1 %t155, ptr %l14, !tbaa !21
  br label %bb66
bb47:
  %t156 = load ptr, ptr %l1, !tbaa !29
  store ptr %t156, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t157 = load ptr, ptr %l82, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb48, label %bb49
bb48:
  %t160 = load ptr, ptr %l82, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 8}
  %t163 = icmp eq i64 %t161, 5
  store i1 %t163, ptr %l83, !tbaa !21
  br label %bb49
bb49:
  %t164 = load i1, ptr %l83, !tbaa !21
  br i1 %t164, label %bb50, label %bb51
bb50:
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t167, i32 0, i32 2
  %t169 = load ptr, ptr %t168
  store ptr %t169, ptr %l9, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l9, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Payload", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t179 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t171, ptr %t175)
  store i1 %t179, ptr %l92
  br label %bb53
bb53:
  %t180 = load i1, ptr %l92, !tbaa !21
  store i1 %t180, ptr %l14, !tbaa !21
  br label %bb66
bb54:
  %t181 = load ptr, ptr %l1, !tbaa !29
  store ptr %t181, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t182 = load ptr, ptr %l93, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb55, label %bb56
bb55:
  %t185 = load ptr, ptr %l93, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 8}
  %t188 = icmp eq i64 %t186, 6
  store i1 %t188, ptr %l94, !tbaa !21
  br label %bb56
bb56:
  %t189 = load i1, ptr %l94, !tbaa !21
  br i1 %t189, label %bb57, label %bb58
bb57:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t192, i32 0, i32 2
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l10, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l10, !tbaa !29
  %t201 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %t196, ptr %t197)
  store i1 %t201, ptr %l102
  br label %bb60
bb60:
  %t202 = load i1, ptr %l102, !tbaa !21
  store i1 %t202, ptr %l14, !tbaa !21
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_29e885d4e6352517_4af5f3c2b7cab7a3)
  unreachable
bb66:
  %t203 = load i1, ptr %l14, !tbaa !21
  store i1 %t203, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/check:roArg"
  %l14 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/check:roArg"
  %l20 = alloca ptr
  %l21 = alloca %"compiler/typed:Local"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca %"compiler/check:roFn"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca %"compiler/typed:Local"
  %l34 = alloca { i64, ptr }
  %l38 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l66 = alloca i64
  %l68 = alloca i64
  %l73 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %l77 = alloca i1
  %l78 = alloca i1
  %l82 = alloca i1
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca %"compiler/check:roArg"
  %l104 = alloca ptr
  %l107 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l108 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i64
  %l117 = alloca i64
  %l119 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca %"compiler/typed:Local"
  %l128 = alloca ptr
  %l129 = alloca { i64, [3 x i64] }
  %l130 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca i64
  %l141 = alloca ptr
  %l142 = alloca i64
  %l149 = alloca { i64, [3 x i64] }
  %l152 = alloca { i64, ptr }
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l160 = alloca i64
  %l162 = alloca i64
  %l167 = alloca %"compiler/check:roArg"
  %l169 = alloca ptr
  %l172 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l173 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i64
  %l182 = alloca i64
  %l184 = alloca ptr
  %l188 = alloca i32
  %l189 = alloca %"compiler/typed:Local"
  %l193 = alloca ptr
  %l194 = alloca { i64, [3 x i64] }
  %l195 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca %"compiler/diagmsg:Msg"
  %l201 = alloca i64
  %l205 = alloca ptr
  %l206 = alloca i64
  %l213 = alloca { i64, [3 x i64] }
  %l216 = alloca { i64, ptr }
  %l218 = alloca %"compiler/diagmsg:Msg"
  %l223 = alloca i64
  %l225 = alloca i64
  %l230 = alloca %"compiler/check:roFn"
  %l234 = alloca ptr
  %l238 = alloca i64
  %l242 = alloca i64
  %l245 = alloca i64
  %l264 = alloca ptr
  %l267 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l268 = alloca i1
  %l270 = alloca ptr
  %l274 = alloca i32
  %l275 = alloca %"compiler/typed:Local"
  %l278 = alloca { i64, ptr }
  %l282 = alloca ptr
  %l283 = alloca { i64, [3 x i64] }
  %l284 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l289 = alloca %"compiler/diagmsg:Msg"
  %l290 = alloca i64
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %t245 = alloca { i64, [3 x i64] }, align 8
  %t405 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleDeep(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  store i64 0, ptr %l1, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 91
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H67a76800a926d51a69ae01614492ac41(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l38
  br label %bb2
bb2:
  %t8 = load i64, ptr %l38, !tbaa !24
  %t9 = add i64 %t8, 1
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l46, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l46, !tbaa !24
  store i64 %t37, ptr %l43, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l43, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb34
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l6, !tbaa !24
  store i1 false, ptr %l7, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 91
  store ptr %t59, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l9, !tbaa !24
  store i64 %t61, ptr %l66, !tbaa !24
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H67a76800a926d51a69ae01614492ac41(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l68
  br label %bb14
bb14:
  %t65 = load i64, ptr %l66, !tbaa !24
  %t66 = load i64, ptr %l68, !tbaa !24
  %t67 = icmp slt i64 %t65, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  br label %bb29
bb16:
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l8, !tbaa !29
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = call %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__Hba570a70bf3ed1beae1003f5c2a372b5(ptr %v0, ptr %t71, i64 %t72)
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t75, ptr %l73
  br label %bb18
bb18:
  %t76 = load %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l73
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t76, ptr %l10
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 90
  %t80 = getelementptr %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l10, i32 0, i32 1
  %t81 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t80
  %t84 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t79, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t81)
  store i1 %t84, ptr %l77
  br label %bb19
bb19:
  %t85 = load i1, ptr %l77, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 90
  %t89 = getelementptr %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l10, i32 0, i32 0
  %t90 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t89
  %t93 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t88, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t90)
  store i1 %t93, ptr %l82
  br label %bb22
bb21:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb23
bb22:
  %t94 = load i1, ptr %l82, !tbaa !21
  %t95 = xor i1 %t94, true
  store i1 %t95, ptr %l78, !tbaa !21
  br label %bb23
bb23:
  %t97 = load i1, ptr %l78, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 90
  %t101 = getelementptr %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l10, i32 0, i32 0
  %t102 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t101
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t100, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t102, i1 true)
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb13
bb29:
  %t109 = load i1, ptr %l7, !tbaa !21
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t113 = load i64, ptr %l5, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l5, !tbaa !24
  br label %bb9
bb34:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 92
  store ptr %t119, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t121 = load i64, ptr %l12, !tbaa !24
  store i64 %t121, ptr %l95, !tbaa !24
  %t122 = load ptr, ptr %l11, !tbaa !29
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eLen_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l97
  br label %bb36
bb36:
  %t125 = load i64, ptr %l95, !tbaa !24
  %t126 = load i64, ptr %l97, !tbaa !24
  %t127 = icmp slt i64 %t125, %t126
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb38:
  br label %bb39
bb39:
  %t131 = load ptr, ptr %l11, !tbaa !29
  %t132 = load i64, ptr %l12, !tbaa !24
  %t135 = call %"compiler/check:roArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eAt_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v0, ptr %t131, i64 %t132)
  store %"compiler/check:roArg" %t135, ptr %l102
  br label %bb40
bb40:
  %t136 = load %"compiler/check:roArg", ptr %l102
  store %"compiler/check:roArg" %t136, ptr %l13
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 90
  store ptr %t139, ptr %l104, !tbaa !29
  %t140 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 0
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 1
  %t143 = load i64, ptr %t142, !tbaa !24
  %t146 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s10, i64 %t141, i64 %t143)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t146, ptr %l107
  br label %bb41
bb41:
  %t147 = load ptr, ptr %l104, !tbaa !29
  %t148 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l107
  %t149 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t147, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t148)
  store i1 %t149, ptr %l108
  br label %bb42
bb42:
  %t150 = load i1, ptr %l108, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb44:
  br label %bb45
bb45:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 18
  %t156 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 0
  %t157 = load i64, ptr %t156, !tbaa !24
  %t160 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t155, i64 %t157)
  store ptr %t160, ptr %l113
  br label %bb46
bb46:
  %t161 = load ptr, ptr %l113, !tbaa !29
  store ptr %t161, ptr %l14, !tbaa !29
  %t162 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 1
  %t163 = load i64, ptr %t162, !tbaa !24
  store i64 %t163, ptr %l114, !tbaa !24
  %t164 = load ptr, ptr %l14, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Body", ptr %t164, i32 0, i32 5
  %t168 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t166)
  store i64 %t168, ptr %l117
  br label %bb47
bb47:
  %t169 = load i64, ptr %l114, !tbaa !24
  %t170 = load i64, ptr %l117, !tbaa !24
  %t171 = icmp sge i64 %t169, %t170
  br i1 %t171, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb49:
  br label %bb50
bb50:
  %t173 = load ptr, ptr %l14, !tbaa !29
  store ptr %t173, ptr %l119, !tbaa !29
  %t174 = load ptr, ptr %l14, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Body", ptr %t174, i32 0, i32 5
  %t177 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 1
  %t178 = load i64, ptr %t177, !tbaa !24
  %t181 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t176, i64 %t178)
  store i32 %t181, ptr %l123
  br label %bb51
bb51:
  %t182 = load ptr, ptr %l119, !tbaa !29
  %t183 = load i32, ptr %l123, !tbaa !23
  %t184 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t182, i32 %t183)
  store %"compiler/typed:Local" %t184, ptr %l124
  br label %bb52
bb52:
  %t185 = load %"compiler/typed:Local", ptr %l124
  store %"compiler/typed:Local" %t185, ptr %l15
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/check:Checker", ptr %t186, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t191 = getelementptr %"compiler/generic:Program", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/load:Loader", ptr %t192, i32 0, i32 4
  %t195 = load ptr, ptr %t194, !tbaa !29
  store ptr %t195, ptr %l128, !tbaa !29
  %t196 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 2
  %t197 = load { i64, [3 x i64] }, ptr %t196
  store { i64, [3 x i64] } %t197, ptr %l129
  %t198 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 3
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l130, !tbaa !27
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t202 = load i32, ptr %t201, !tbaa !23
  %t205 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t200, i32 %t202)
  store { i64, ptr } %t205, ptr %l133
  br label %bb53
bb53:
  %t206 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 4
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  %t208 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 5
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t214 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyArg(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t210, { i64, ptr } %t211, { i64, ptr } %t207, { i64, ptr } %t209)
  store %"compiler/diagmsg:Msg" %t214, ptr %l136
  br label %bb54
bb54:
  %t215 = load ptr, ptr %l128, !tbaa !29
  %t216 = load { i64, [3 x i64] }, ptr %l129
  %t217 = load %"compiler/diagmsg:Msg", ptr %l136
  %t218 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t215, { i64, [3 x i64] } %t216, %"compiler/diagmsg:Msg" %t217)
  store i64 %t218, ptr %l137
  br label %bb55
bb55:
  %t219 = load i64, ptr %l137, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = getelementptr %"compiler/load:Loader", ptr %t226, i32 0, i32 4
  %t229 = load ptr, ptr %t228, !tbaa !29
  store ptr %t229, ptr %l141, !tbaa !29
  store i64 %t219, ptr %l142, !tbaa !24
  %t231 = load ptr, ptr %l14, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Body", ptr %t231, i32 0, i32 3
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 1
  %t236 = getelementptr %"compiler/source:Span", ptr %t235, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t240 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 1
  %t241 = getelementptr %"compiler/source:Span", ptr %t240, i32 0, i32 1
  %t242 = load i32, ptr %t241, !tbaa !23
  %t244 = sext i32 %t242 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 0
  store i64 3, ptr %t246
  %t248 = insertvalue { i64, i64, i64 } undef, i64 %t234, 0
  %t250 = insertvalue { i64, i64, i64 } %t248, i64 %t239, 1
  %t252 = insertvalue { i64, i64, i64 } %t250, i64 %t244, 2
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 1
  store { i64, i64, i64 } %t252, ptr %t253
  %t254 = load { i64, [3 x i64] }, ptr %t245
  store { i64, [3 x i64] } %t254, ptr %l149
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t257 = load i32, ptr %t256, !tbaa !23
  %t260 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s10, ptr %t255, i32 %t257)
  store { i64, ptr } %t260, ptr %l152
  br label %bb56
bb56:
  %t261 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 0
  %t263 = extractvalue { i64, ptr } %t261, 1
  %t264 = mul i64 %t262, 1
  %t265 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t264)
  call void @llvm.memcpy.p0.p0.i64(ptr %t265, ptr %t263, i64 %t264, i1 false)
  %t266 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  %t269 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s10, ptr %v0, { i64, ptr } %t267)
  store %"compiler/diagmsg:Msg" %t269, ptr %l154
  br label %bb57
bb57:
  %t270 = load ptr, ptr %l141, !tbaa !29
  %t271 = load i64, ptr %l142, !tbaa !24
  %t272 = load { i64, [3 x i64] }, ptr %l149
  %t273 = load %"compiler/diagmsg:Msg", ptr %l154
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t270, i64 %t271, { i64, [3 x i64] } %t272, %"compiler/diagmsg:Msg" %t273)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb59:
  %t274 = load i64, ptr %l12, !tbaa !24
  %t276 = add i64 %t274, 1
  store i64 %t276, ptr %l12, !tbaa !24
  br label %bb35
bb60:
  %t278 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrReceivers(ptr %v0, ptr %t278)
  br label %bb61
bb61:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 99
  store ptr %t282, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb62
bb62:
  store %olang.scope zeroinitializer, ptr %s15
  %t284 = load i64, ptr %l18, !tbaa !24
  store i64 %t284, ptr %l160, !tbaa !24
  %t285 = load ptr, ptr %l17, !tbaa !29
  %t287 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eLen_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %t285)
  store i64 %t287, ptr %l162
  br label %bb63
bb63:
  %t288 = load i64, ptr %l160, !tbaa !24
  %t289 = load i64, ptr %l162, !tbaa !24
  %t290 = icmp slt i64 %t288, %t289
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s15)
  br label %bb87
bb65:
  br label %bb66
bb66:
  %t294 = load ptr, ptr %l17, !tbaa !29
  %t295 = load i64, ptr %l18, !tbaa !24
  %t298 = call %"compiler/check:roArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eAt_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v0, ptr %t294, i64 %t295)
  store %"compiler/check:roArg" %t298, ptr %l167
  br label %bb67
bb67:
  %t299 = load %"compiler/check:roArg", ptr %l167
  store %"compiler/check:roArg" %t299, ptr %l19
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/check:Checker", ptr %t300, i32 0, i32 90
  store ptr %t302, ptr %l169, !tbaa !29
  %t303 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 0
  %t304 = load i64, ptr %t303, !tbaa !24
  %t305 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 1
  %t306 = load i64, ptr %t305, !tbaa !24
  %t309 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s15, i64 %t304, i64 %t306)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t309, ptr %l172
  br label %bb68
bb68:
  %t310 = load ptr, ptr %l169, !tbaa !29
  %t311 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l172
  %t312 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t310, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t311)
  store i1 %t312, ptr %l173
  br label %bb69
bb69:
  %t313 = load i1, ptr %l173, !tbaa !21
  %t314 = xor i1 %t313, true
  br i1 %t314, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb71:
  br label %bb72
bb72:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/check:Checker", ptr %t316, i32 0, i32 18
  %t319 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 0
  %t320 = load i64, ptr %t319, !tbaa !24
  %t323 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t318, i64 %t320)
  store ptr %t323, ptr %l178
  br label %bb73
bb73:
  %t324 = load ptr, ptr %l178, !tbaa !29
  store ptr %t324, ptr %l20, !tbaa !29
  %t325 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 1
  %t326 = load i64, ptr %t325, !tbaa !24
  store i64 %t326, ptr %l179, !tbaa !24
  %t327 = load ptr, ptr %l20, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Body", ptr %t327, i32 0, i32 5
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t329)
  store i64 %t331, ptr %l182
  br label %bb74
bb74:
  %t332 = load i64, ptr %l179, !tbaa !24
  %t333 = load i64, ptr %l182, !tbaa !24
  %t334 = icmp sge i64 %t332, %t333
  br i1 %t334, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb76:
  br label %bb77
bb77:
  %t336 = load ptr, ptr %l20, !tbaa !29
  store ptr %t336, ptr %l184, !tbaa !29
  %t337 = load ptr, ptr %l20, !tbaa !29
  %t339 = getelementptr %"compiler/typed:Body", ptr %t337, i32 0, i32 5
  %t340 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 1
  %t341 = load i64, ptr %t340, !tbaa !24
  %t344 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t339, i64 %t341)
  store i32 %t344, ptr %l188
  br label %bb78
bb78:
  %t345 = load ptr, ptr %l184, !tbaa !29
  %t346 = load i32, ptr %l188, !tbaa !23
  %t347 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t345, i32 %t346)
  store %"compiler/typed:Local" %t347, ptr %l189
  br label %bb79
bb79:
  %t348 = load %"compiler/typed:Local", ptr %l189
  store %"compiler/typed:Local" %t348, ptr %l21
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/check:Checker", ptr %t349, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = getelementptr %"compiler/generic:Program", ptr %t352, i32 0, i32 0
  %t355 = load ptr, ptr %t354, !tbaa !29
  %t357 = getelementptr %"compiler/load:Loader", ptr %t355, i32 0, i32 4
  %t358 = load ptr, ptr %t357, !tbaa !29
  store ptr %t358, ptr %l193, !tbaa !29
  %t359 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 2
  %t360 = load { i64, [3 x i64] }, ptr %t359
  store { i64, [3 x i64] } %t360, ptr %l194
  %t361 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 3
  %t362 = load { i64, ptr }, ptr %t361, !tbaa !27
  store { i64, ptr } %t362, ptr %l195, !tbaa !27
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t365 = load i32, ptr %t364, !tbaa !23
  %t368 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t363, i32 %t365)
  store { i64, ptr } %t368, ptr %l198
  br label %bb80
bb80:
  %t369 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 4
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !27
  %t371 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t374 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefKept(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t371, { i64, ptr } %t372, { i64, ptr } %t370)
  store %"compiler/diagmsg:Msg" %t374, ptr %l200
  br label %bb81
bb81:
  %t375 = load ptr, ptr %l193, !tbaa !29
  %t376 = load { i64, [3 x i64] }, ptr %l194
  %t377 = load %"compiler/diagmsg:Msg", ptr %l200
  %t378 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t375, { i64, [3 x i64] } %t376, %"compiler/diagmsg:Msg" %t377)
  store i64 %t378, ptr %l201
  br label %bb82
bb82:
  %t379 = load i64, ptr %l201, !tbaa !24
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 0
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/load:Loader", ptr %t386, i32 0, i32 4
  %t389 = load ptr, ptr %t388, !tbaa !29
  store ptr %t389, ptr %l205, !tbaa !29
  store i64 %t379, ptr %l206, !tbaa !24
  %t391 = load ptr, ptr %l20, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Body", ptr %t391, i32 0, i32 3
  %t394 = load i64, ptr %t393, !tbaa !24
  %t395 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t396 = getelementptr %"compiler/source:Span", ptr %t395, i32 0, i32 0
  %t397 = load i32, ptr %t396, !tbaa !23
  %t399 = sext i32 %t397 to i64
  %t400 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t401 = getelementptr %"compiler/source:Span", ptr %t400, i32 0, i32 1
  %t402 = load i32, ptr %t401, !tbaa !23
  %t404 = sext i32 %t402 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t405
  %t406 = getelementptr { i64, [3 x i64] }, ptr %t405, i32 0, i32 0
  store i64 3, ptr %t406
  %t408 = insertvalue { i64, i64, i64 } undef, i64 %t394, 0
  %t410 = insertvalue { i64, i64, i64 } %t408, i64 %t399, 1
  %t412 = insertvalue { i64, i64, i64 } %t410, i64 %t404, 2
  %t413 = getelementptr { i64, [3 x i64] }, ptr %t405, i32 0, i32 1
  store { i64, i64, i64 } %t412, ptr %t413
  %t414 = load { i64, [3 x i64] }, ptr %t405
  store { i64, [3 x i64] } %t414, ptr %l213
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t417 = load i32, ptr %t416, !tbaa !23
  %t420 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s15, ptr %t415, i32 %t417)
  store { i64, ptr } %t420, ptr %l216
  br label %bb83
bb83:
  %t421 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 0
  %t423 = extractvalue { i64, ptr } %t421, 1
  %t424 = mul i64 %t422, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t425, ptr %t423, i64 %t424, i1 false)
  %t426 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  %t429 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s15, ptr %v0, { i64, ptr } %t427)
  store %"compiler/diagmsg:Msg" %t429, ptr %l218
  br label %bb84
bb84:
  %t430 = load ptr, ptr %l205, !tbaa !29
  %t431 = load i64, ptr %l206, !tbaa !24
  %t432 = load { i64, [3 x i64] }, ptr %l213
  %t433 = load %"compiler/diagmsg:Msg", ptr %l218
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t430, i64 %t431, { i64, [3 x i64] } %t432, %"compiler/diagmsg:Msg" %t433)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb86:
  %t434 = load i64, ptr %l18, !tbaa !24
  %t436 = add i64 %t434, 1
  store i64 %t436, ptr %l18, !tbaa !24
  br label %bb62
bb87:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/check:Checker", ptr %t438, i32 0, i32 93
  store ptr %t440, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb88
bb88:
  %t442 = load i64, ptr %l24, !tbaa !24
  store i64 %t442, ptr %l223, !tbaa !24
  %t443 = load ptr, ptr %l23, !tbaa !29
  %t445 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eLen_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %t443)
  store i64 %t445, ptr %l225
  br label %bb89
bb89:
  %t446 = load i64, ptr %l223, !tbaa !24
  %t447 = load i64, ptr %l225, !tbaa !24
  %t448 = icmp slt i64 %t446, %t447
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb90, label %bb91
bb90:
  br label %bb120
bb91:
  br label %bb92
bb92:
  %t452 = load ptr, ptr %l23, !tbaa !29
  %t453 = load i64, ptr %l24, !tbaa !24
  %t456 = call %"compiler/check:roFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eAt_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t452, i64 %t453)
  store %"compiler/check:roFn" %t456, ptr %l230
  br label %bb93
bb93:
  %t457 = load %"compiler/check:roFn", ptr %l230
  store %"compiler/check:roFn" %t457, ptr %l25
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/check:Checker", ptr %t458, i32 0, i32 18
  %t461 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 0
  %t462 = load i64, ptr %t461, !tbaa !24
  %t465 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t460, i64 %t462)
  store ptr %t465, ptr %l234
  br label %bb94
bb94:
  %t466 = load ptr, ptr %l234, !tbaa !29
  store ptr %t466, ptr %l26, !tbaa !29
  %t467 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 1
  %t468 = load i64, ptr %t467, !tbaa !24
  store i64 %t468, ptr %l27, !tbaa !24
  %t470 = load ptr, ptr %l26, !tbaa !29
  %t472 = getelementptr %"compiler/typed:Body", ptr %t470, i32 0, i32 5
  %t474 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t472)
  store i64 %t474, ptr %l238
  br label %bb95
bb95:
  %t475 = load i64, ptr %l238, !tbaa !24
  store i64 %t475, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t476 = load i64, ptr %l28, !tbaa !24
  %t477 = load i64, ptr %l27, !tbaa !24
  %t480 = icmp sgt i64 %t476, %t477
  br i1 %t480, label %bb96, label %bb97
bb96:
  %t482 = load i64, ptr %l29, !tbaa !24
  %t484 = icmp sgt i64 %t482, 0
  br i1 %t484, label %bb98, label %bb99
bb97:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb101
bb98:
  %t486 = load i64, ptr %l28, !tbaa !24
  %t487 = load i64, ptr %l27, !tbaa !24
  %t490 = sub i64 %t486, %t487
  %t491 = load i64, ptr %l29, !tbaa !24
  %t494 = add i64 %t490, %t491
  %t496 = sub i64 %t494, 1
  %t497 = load i64, ptr %l29, !tbaa !24
  %t500 = sdiv i64 %t496, %t497
  store i64 %t500, ptr %l245, !tbaa !24
  br label %bb100
bb99:
  store i64 0, ptr %l245, !tbaa !24
  br label %bb100
bb100:
  %t502 = load i64, ptr %l245, !tbaa !24
  store i64 %t502, ptr %l242, !tbaa !24
  br label %bb101
bb101:
  %t503 = load i64, ptr %l242, !tbaa !24
  store i64 %t503, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb102
bb102:
  store %olang.scope zeroinitializer, ptr %s22
  %t504 = load i64, ptr %l31, !tbaa !24
  %t505 = load i64, ptr %l30, !tbaa !24
  %t508 = icmp slt i64 %t504, %t505
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb103, label %bb104
bb103:
  call void @__olang_scope_close(ptr %s22)
  br label %bb118
bb104:
  br label %bb105
bb105:
  %t512 = load i64, ptr %l27, !tbaa !24
  %t513 = load i64, ptr %l31, !tbaa !24
  %t514 = load i64, ptr %l29, !tbaa !24
  %t517 = mul i64 %t513, %t514
  %t520 = add i64 %t512, %t517
  store i64 %t520, ptr %l32, !tbaa !24
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t524 = getelementptr %"compiler/check:Checker", ptr %t522, i32 0, i32 90
  store ptr %t524, ptr %l264, !tbaa !29
  %t525 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 0
  %t526 = load i64, ptr %t525, !tbaa !24
  %t527 = load i64, ptr %l32, !tbaa !24
  %t530 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s22, i64 %t526, i64 %t527)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t530, ptr %l267
  br label %bb106
bb106:
  %t531 = load ptr, ptr %l264, !tbaa !29
  %t532 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l267
  %t533 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t531, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t532)
  store i1 %t533, ptr %l268
  br label %bb107
bb107:
  %t534 = load i1, ptr %l268, !tbaa !21
  %t535 = xor i1 %t534, true
  br i1 %t535, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s22)
  br label %bb117
bb109:
  br label %bb110
bb110:
  %t537 = load ptr, ptr %l26, !tbaa !29
  store ptr %t537, ptr %l270, !tbaa !29
  %t538 = load ptr, ptr %l26, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Body", ptr %t538, i32 0, i32 5
  %t541 = load i64, ptr %l32, !tbaa !24
  %t544 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t540, i64 %t541)
  store i32 %t544, ptr %l274
  br label %bb111
bb111:
  %t545 = load ptr, ptr %l270, !tbaa !29
  %t546 = load i32, ptr %l274, !tbaa !23
  %t547 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t545, i32 %t546)
  store %"compiler/typed:Local" %t547, ptr %l275
  br label %bb112
bb112:
  %t548 = load %"compiler/typed:Local", ptr %l275
  store %"compiler/typed:Local" %t548, ptr %l33
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = getelementptr %"compiler/typed:Local", ptr %l33, i32 0, i32 2
  %t551 = load i32, ptr %t550, !tbaa !23
  %t554 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %s22, ptr %t549, i32 0, i32 %t551)
  store { i64, ptr } %t554, ptr %l278
  br label %bb113
bb113:
  %t555 = load { i64, ptr }, ptr %l278, !tbaa !27
  store { i64, ptr } %t555, ptr %l34, !tbaa !27
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr %"compiler/check:Checker", ptr %t556, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !29
  %t561 = getelementptr %"compiler/generic:Program", ptr %t559, i32 0, i32 0
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/load:Loader", ptr %t562, i32 0, i32 4
  %t565 = load ptr, ptr %t564, !tbaa !29
  store ptr %t565, ptr %l282, !tbaa !29
  %t566 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 2
  %t567 = load { i64, [3 x i64] }, ptr %t566
  store { i64, [3 x i64] } %t567, ptr %l283
  %t568 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 3
  %t569 = load { i64, ptr }, ptr %t568, !tbaa !27
  store { i64, ptr } %t569, ptr %l284, !tbaa !27
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = getelementptr %"compiler/typed:Local", ptr %l33, i32 0, i32 0
  %t572 = load i32, ptr %t571, !tbaa !23
  %t575 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t570, i32 %t572)
  store { i64, ptr } %t575, ptr %l287
  br label %bb114
bb114:
  %t576 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t577 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t578 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t580 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyFuncValue(ptr %v0, ptr %v0, ptr %s22, ptr %v0, { i64, ptr } %t577, { i64, ptr } %t578, { i64, ptr } %t576)
  store %"compiler/diagmsg:Msg" %t580, ptr %l289
  br label %bb115
bb115:
  %t581 = load ptr, ptr %l282, !tbaa !29
  %t582 = load { i64, [3 x i64] }, ptr %l283
  %t583 = load %"compiler/diagmsg:Msg", ptr %l289
  %t584 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t581, { i64, [3 x i64] } %t582, %"compiler/diagmsg:Msg" %t583)
  store i64 %t584, ptr %l290
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s22)
  br label %bb118
bb117:
  %t585 = load i64, ptr %l31, !tbaa !24
  %t587 = add i64 %t585, 1
  store i64 %t587, ptr %l31, !tbaa !24
  br label %bb102
bb118:
  br label %bb119
bb119:
  %t589 = load i64, ptr %l24, !tbaa !24
  %t591 = add i64 %t589, 1
  store i64 %t591, ptr %l24, !tbaa !24
  br label %bb88
bb120:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca ptr
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
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l56 = alloca i1
  %l60 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l88 = alloca i64
  %l112 = alloca { i64, ptr }
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l150 = alloca %"compiler/source:Span"
  %l162 = alloca i64
  %l165 = alloca i64
  %l184 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l191 = alloca { i64, ptr }
  %rv = alloca ptr
  %t259 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l3, !tbaa !29
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l30, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l32
  br label %bb3
bb3:
  %t11 = load i64, ptr %l30, !tbaa !24
  %t12 = load i64, ptr %l32, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb81
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  store { i64, ptr } %t21, ptr %l37
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t24, ptr %l39, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 0
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %t23, ptr %t28)
  store i1 %t31, ptr %l41
  br label %bb8
bb8:
  %t32 = load i1, ptr %l41, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l3, !tbaa !29
  store ptr %t33, ptr %l42, !tbaa !29
  %t34 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t34, ptr %l43, !tbaa !27
  %t35 = icmp sge i64 0, 0
  br i1 %t35, label %bb11, label %bb12
bb10:
  br label %bb17
bb11:
  %t37 = icmp sle i64 0, 1152921504606846975
  br i1 %t37, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_e4bef59f129059d8_aff2623e63fdc5dc)
  unreachable
bb13:
  %t39 = mul i64 0, 8
  %t40 = insertvalue { i64, ptr } undef, i64 0, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t46 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t43, { i64, ptr } %t41, i64 %t42)
  store { i64, ptr } %t46, ptr %l48
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_e4bef59f129059d8_aff2623e63fdc5dc)
  unreachable
bb15:
  %t47 = load ptr, ptr %l42, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l48, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v2, ptr %v1, ptr %t47, { i64, ptr } %t48)
  br label %bb16
bb16:
  br label %bb80
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t50, ptr %l50, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr ptr, ptr %t52, i64 0
  %t54 = load ptr, ptr %t53, !tbaa !39
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %t49, ptr %t54)
  store ptr %t57, ptr %l52
  br label %bb18
bb18:
  %t58 = load ptr, ptr %l52, !tbaa !29
  store ptr %t58, ptr %l7, !tbaa !29
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = getelementptr %"compiler/check:elemsShape", ptr %t59, i32 0, i32 1
  %t62 = load i64, ptr %t61, !tbaa !24
  %t64 = icmp eq i64 %t62, -2
  br i1 %t64, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb24
bb20:
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t68 = getelementptr %"compiler/check:elemsShape", ptr %t66, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = icmp eq i64 %t69, -1
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t75 = getelementptr %"compiler/check:elemsShape", ptr %t73, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp ne i64 %t78, %t79
  store i1 %t82, ptr %l60, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb23
bb23:
  %t84 = load i1, ptr %l60, !tbaa !21
  store i1 %t84, ptr %l56, !tbaa !21
  br label %bb24
bb24:
  %t85 = load i1, ptr %l56, !tbaa !21
  br i1 %t85, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb30
bb26:
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/check:elemsShape", ptr %t86, i32 0, i32 1
  %t89 = load i64, ptr %t88, !tbaa !24
  %t91 = icmp sge i64 %t89, 0
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = getelementptr %"compiler/check:elemsShape", ptr %t93, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t100 = sub i64 %t98, 1
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  store i1 %t104, ptr %l70, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l70, !tbaa !21
  store i1 %t106, ptr %l66, !tbaa !21
  br label %bb30
bb30:
  %t107 = load i1, ptr %l66, !tbaa !21
  br i1 %t107, label %bb31, label %bb32
bb31:
  br label %bb80
bb32:
  br label %bb33
bb33:
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l77
  br label %bb34
bb34:
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t110 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %t110
  store ptr %t110, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  %t112 = load ptr, ptr %l7, !tbaa !29
  %t114 = getelementptr %"compiler/check:elemsShape", ptr %t112, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sgt i64 %t119, %t120
  br i1 %t123, label %bb35, label %bb36
bb35:
  %t125 = load i64, ptr %l11, !tbaa !24
  %t127 = icmp sgt i64 %t125, 0
  br i1 %t127, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb40
bb37:
  %t129 = load i64, ptr %l10, !tbaa !24
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = sub i64 %t129, %t130
  %t134 = load i64, ptr %l11, !tbaa !24
  %t137 = add i64 %t133, %t134
  %t139 = sub i64 %t137, 1
  %t140 = load i64, ptr %l11, !tbaa !24
  %t143 = sdiv i64 %t139, %t140
  store i64 %t143, ptr %l88, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb39
bb39:
  %t145 = load i64, ptr %l88, !tbaa !24
  store i64 %t145, ptr %l85, !tbaa !24
  br label %bb40
bb40:
  %t146 = load i64, ptr %l85, !tbaa !24
  store i64 %t146, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb41
bb41:
  %t147 = load i64, ptr %l13, !tbaa !24
  %t148 = load i64, ptr %l12, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb42, label %bb43
bb42:
  br label %bb64
bb43:
  br label %bb44
bb44:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t156 = load i64, ptr %l13, !tbaa !24
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = mul i64 %t156, %t157
  %t163 = add i64 %t155, %t160
  store i64 %t163, ptr %l14, !tbaa !24
  %t165 = load i64, ptr %l14, !tbaa !24
  %t166 = load ptr, ptr %l7, !tbaa !29
  %t168 = getelementptr %"compiler/check:elemsShape", ptr %t166, i32 0, i32 1
  %t169 = load i64, ptr %t168, !tbaa !24
  %t172 = icmp ne i64 %t165, %t169
  br i1 %t172, label %bb45, label %bb46
bb45:
  %t174 = load ptr, ptr %l8, !tbaa !29
  %t175 = load ptr, ptr %l7, !tbaa !29
  %t177 = getelementptr %"compiler/check:elemsShape", ptr %t175, i32 0, i32 0
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l112, !tbaa !27
  %t179 = load i64, ptr %l14, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr ptr, ptr %t182, i64 %t179
  %t184 = load ptr, ptr %t183, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v2, ptr %t174, ptr %t184)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb63
bb48:
  store i64 0, ptr %l15, !tbaa !24
  %t187 = load i64, ptr %l2, !tbaa !24
  %t188 = load ptr, ptr %l7, !tbaa !29
  %t190 = getelementptr %"compiler/check:elemsShape", ptr %t188, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t195 = sub i64 %t193, 1
  %t198 = sub i64 %t187, %t195
  store i64 %t198, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t200 = load i64, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l15, !tbaa !24
  %t204 = icmp sgt i64 %t200, %t201
  br i1 %t204, label %bb49, label %bb50
bb49:
  %t206 = load i64, ptr %l17, !tbaa !24
  %t208 = icmp sgt i64 %t206, 0
  br i1 %t208, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb54
bb51:
  %t210 = load i64, ptr %l16, !tbaa !24
  %t211 = load i64, ptr %l15, !tbaa !24
  %t214 = sub i64 %t210, %t211
  %t215 = load i64, ptr %l17, !tbaa !24
  %t218 = add i64 %t214, %t215
  %t220 = sub i64 %t218, 1
  %t221 = load i64, ptr %l17, !tbaa !24
  %t224 = sdiv i64 %t220, %t221
  store i64 %t224, ptr %l127, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb53
bb53:
  %t226 = load i64, ptr %l127, !tbaa !24
  store i64 %t226, ptr %l124, !tbaa !24
  br label %bb54
bb54:
  %t227 = load i64, ptr %l124, !tbaa !24
  store i64 %t227, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb55
bb55:
  %t228 = load i64, ptr %l19, !tbaa !24
  %t229 = load i64, ptr %l18, !tbaa !24
  %t232 = icmp slt i64 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb56, label %bb57
bb56:
  br label %bb62
bb57:
  br label %bb58
bb58:
  %t236 = load i64, ptr %l15, !tbaa !24
  %t237 = load i64, ptr %l19, !tbaa !24
  %t238 = load i64, ptr %l17, !tbaa !24
  %t241 = mul i64 %t237, %t238
  %t244 = add i64 %t236, %t241
  store i64 %t244, ptr %l20, !tbaa !24
  %t246 = load ptr, ptr %l8, !tbaa !29
  store ptr %t246, ptr %l145, !tbaa !29
  %t247 = load ptr, ptr %l7, !tbaa !29
  %t249 = getelementptr %"compiler/check:elemsShape", ptr %t247, i32 0, i32 0
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  store { i64, ptr } %t250, ptr %l147, !tbaa !27
  %t251 = load i64, ptr %l14, !tbaa !24
  %t253 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr ptr, ptr %t254, i64 %t251
  %t256 = load ptr, ptr %t255, !tbaa !39
  %t258 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v2, ptr %t256)
  store %"compiler/source:Span" %t258, ptr %l150
  br label %bb59
bb59:
  store { i64, [4 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 0
  store i64 0, ptr %t260
  %t261 = load %"compiler/source:Span", ptr %l150
  %t262 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t261, 0
  %t263 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 1
  store { %"compiler/source:Span" } %t262, ptr %t263
  %t264 = load { i64, [4 x i64] }, ptr %t259
  %t266 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t264, ptr %t266
  %t267 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v2, ptr %t267, ptr %t266)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t269 = load i64, ptr %l19, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l19, !tbaa !24
  br label %bb55
bb62:
  br label %bb63
bb63:
  %t273 = load i64, ptr %l13, !tbaa !24
  %t275 = add i64 %t273, 1
  store i64 %t275, ptr %l13, !tbaa !24
  br label %bb41
bb64:
  store i64 1, ptr %l21, !tbaa !24
  %t277 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t277, 0
  store i64 %t279, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t281 = load i64, ptr %l22, !tbaa !24
  %t282 = load i64, ptr %l21, !tbaa !24
  %t285 = icmp sgt i64 %t281, %t282
  br i1 %t285, label %bb65, label %bb66
bb65:
  %t287 = load i64, ptr %l23, !tbaa !24
  %t289 = icmp sgt i64 %t287, 0
  br i1 %t289, label %bb67, label %bb68
bb66:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb70
bb67:
  %t291 = load i64, ptr %l22, !tbaa !24
  %t292 = load i64, ptr %l21, !tbaa !24
  %t295 = sub i64 %t291, %t292
  %t296 = load i64, ptr %l23, !tbaa !24
  %t299 = add i64 %t295, %t296
  %t301 = sub i64 %t299, 1
  %t302 = load i64, ptr %l23, !tbaa !24
  %t305 = sdiv i64 %t301, %t302
  store i64 %t305, ptr %l165, !tbaa !24
  br label %bb69
bb68:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb69
bb69:
  %t307 = load i64, ptr %l165, !tbaa !24
  store i64 %t307, ptr %l162, !tbaa !24
  br label %bb70
bb70:
  %t308 = load i64, ptr %l162, !tbaa !24
  store i64 %t308, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb71
bb71:
  %t309 = load i64, ptr %l25, !tbaa !24
  %t310 = load i64, ptr %l24, !tbaa !24
  %t313 = icmp slt i64 %t309, %t310
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb72, label %bb73
bb72:
  br label %bb77
bb73:
  br label %bb74
bb74:
  %t317 = load i64, ptr %l21, !tbaa !24
  %t318 = load i64, ptr %l25, !tbaa !24
  %t319 = load i64, ptr %l23, !tbaa !24
  %t322 = mul i64 %t318, %t319
  %t325 = add i64 %t317, %t322
  %t327 = load ptr, ptr %l8, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t328, ptr %l184, !tbaa !27
  %t331 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr ptr, ptr %t332, i64 %t325
  %t334 = load ptr, ptr %t333, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v1, ptr %t327, ptr %t334)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t337 = load i64, ptr %l25, !tbaa !24
  %t339 = add i64 %t337, 1
  store i64 %t339, ptr %l25, !tbaa !24
  br label %bb71
bb77:
  %t341 = load ptr, ptr %l3, !tbaa !29
  store ptr %t341, ptr %l189, !tbaa !29
  %t342 = load ptr, ptr %l8, !tbaa !29
  %t344 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v2, ptr %v2, ptr %t342)
  store { i64, ptr } %t344, ptr %l191
  br label %bb78
bb78:
  %t345 = load ptr, ptr %l189, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l191, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v2, ptr %v2, ptr %t345, { i64, ptr } %t346)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t347 = load i64, ptr %l5, !tbaa !24
  %t349 = add i64 %t347, 1
  store i64 %t349, ptr %l5, !tbaa !24
  br label %bb2
bb81:
  %t351 = load ptr, ptr %l3, !tbaa !29
  store ptr %t351, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleDropOrder(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"compiler/typed:DropHolding"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l24 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l29 = alloca i1
  %l30 = alloca i64
  %l33 = alloca i64
  %l38 = alloca ptr
  %l43 = alloca %"compiler/typed:DropHolding"
  %l45 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca i64
  %l83 = alloca i64
  %l86 = alloca i64
  %l90 = alloca i1
  %l91 = alloca i1
  %l95 = alloca i1
  %l105 = alloca i64
  %l109 = alloca i64
  %l112 = alloca i64
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t44 = alloca %"compiler/typed:DropHolding", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 74
  %t5 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l23
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l1
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %l1)
  %t9 = extractvalue { i32, i64 } %t8, 1
  %t10 = extractvalue { i32, i64 } %t8, 0
  store i32 %t10, ptr %l27
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store i64 %t9, ptr %l26
  br label %bb3
bb3:
  %t13 = load i64, ptr %l26, !tbaa !24
  store i64 %t13, ptr %l24, !tbaa !24
  br label %bb6
bb4:
  %t14 = load i32, ptr %l27, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l29, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb6:
  %t18 = load i64, ptr %l24, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l30, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 18
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l33
  br label %bb7
bb7:
  %t25 = load i64, ptr %l30, !tbaa !24
  %t26 = load i64, ptr %l33, !tbaa !24
  %t27 = icmp sge i64 %t25, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 18
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store ptr %t35, ptr %l38
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l38, !tbaa !29
  store ptr %t36, ptr %l3, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2eDropHolding_2eJudged(ptr %t44, ptr %v0, ptr %v0, ptr %s2, ptr %t42, ptr %t43)
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t44, i64 224, i1 false)
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l43, i64 224, i1 false)
  store i64 0, ptr %l5, !tbaa !24
  %t47 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 0
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t47)
  store i64 %t49, ptr %l45
  br label %bb13
bb13:
  %t50 = load i64, ptr %l45, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp sgt i64 %t51, %t52
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t59 = icmp sgt i64 %t57, 0
  br i1 %t59, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb19
bb16:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = sub i64 %t61, %t62
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t65, %t66
  %t71 = sub i64 %t69, 1
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = sdiv i64 %t71, %t72
  store i64 %t75, ptr %l52, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb18
bb18:
  %t77 = load i64, ptr %l52, !tbaa !24
  store i64 %t77, ptr %l49, !tbaa !24
  br label %bb19
bb19:
  %t78 = load i64, ptr %l49, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb21, label %bb22
bb21:
  br label %bb45
bb22:
  br label %bb23
bb23:
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = mul i64 %t88, %t89
  %t95 = add i64 %t87, %t92
  store i64 %t95, ptr %l10, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s6
  %t97 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 2
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s2, ptr %s6, ptr %t97, i64 %t98)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l72
  br label %bb24
bb24:
  %t103 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s6, ptr %l72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %l74
  br label %bb25
bb25:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  %t105 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %t105
  store ptr %t105, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  %t107 = load i64, ptr %l12, !tbaa !24
  store i64 %t107, ptr %l76, !tbaa !24
  %t108 = load ptr, ptr %l11, !tbaa !29
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s6, ptr %t108)
  store i64 %t110, ptr %l78
  br label %bb27
bb27:
  %t111 = load i64, ptr %l76, !tbaa !24
  %t112 = load i64, ptr %l78, !tbaa !24
  %t113 = icmp slt i64 %t111, %t112
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb28, label %bb29
bb28:
  br label %bb43
bb29:
  br label %bb30
bb30:
  %t117 = load ptr, ptr %l11, !tbaa !29
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s6, ptr %t117, i64 %t118)
  store i64 %t121, ptr %l83
  br label %bb31
bb31:
  %t122 = load i64, ptr %l83, !tbaa !24
  store i64 %t122, ptr %l13, !tbaa !24
  %t123 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 0
  %t124 = load i64, ptr %l10, !tbaa !24
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l86
  br label %bb32
bb32:
  %t128 = load i64, ptr %l86, !tbaa !24
  store i64 %t128, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t134 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %s2, ptr %l4, i64 %t129, i64 %t130)
  store i1 %t134, ptr %l90
  br label %bb33
bb33:
  %t135 = load i1, ptr %l90, !tbaa !21
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t136 = load i64, ptr %l14, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t141 = call i1 @compiler_2fcheck_2eregisteredBefore(ptr %s2, ptr %l4, i64 %t136, i64 %t137)
  store i1 %t141, ptr %l95
  br label %bb36
bb35:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb37
bb36:
  %t142 = load i1, ptr %l95, !tbaa !21
  store i1 %t142, ptr %l91, !tbaa !21
  br label %bb37
bb37:
  %t143 = load i1, ptr %l91, !tbaa !21
  br i1 %t143, label %bb38, label %bb39
bb38:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l3, !tbaa !29
  %t146 = load i64, ptr %l14, !tbaa !24
  %t147 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCycle(ptr %v0, ptr %v0, ptr %t144, ptr %t145, i64 %t146, i64 %t147)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t152 = load i64, ptr %l12, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l12, !tbaa !24
  br label %bb26
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l9, !tbaa !24
  br label %bb20
bb45:
  store i64 0, ptr %l15, !tbaa !24
  %t160 = getelementptr %"compiler/typed:DropHolding", ptr %l4, i32 0, i32 3
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t160)
  store i64 %t162, ptr %l105
  br label %bb46
bb46:
  %t163 = load i64, ptr %l105, !tbaa !24
  store i64 %t163, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t164 = load i64, ptr %l16, !tbaa !24
  %t165 = load i64, ptr %l15, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb47, label %bb48
bb47:
  %t170 = load i64, ptr %l17, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb52
bb49:
  %t174 = load i64, ptr %l16, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l17, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l17, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l112, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb51
bb51:
  %t190 = load i64, ptr %l112, !tbaa !24
  store i64 %t190, ptr %l109, !tbaa !24
  br label %bb52
bb52:
  %t191 = load i64, ptr %l109, !tbaa !24
  store i64 %t191, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb53
bb53:
  %t192 = load i64, ptr %l19, !tbaa !24
  %t193 = load i64, ptr %l18, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t200 = load i64, ptr %l15, !tbaa !24
  %t201 = load i64, ptr %l19, !tbaa !24
  %t202 = load i64, ptr %l17, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropRegistered(ptr %v0, ptr %v0, ptr %s2, ptr %t210, ptr %t211, ptr %l4, i64 %t208)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t217 = load i64, ptr %l19, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l19, !tbaa !24
  br label %bb53
bb59:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb60:
  br label %bb2
bb61:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l16 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  %t5 = xor i1 %t3, true
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l7, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l8, !tbaa !29
  %t9 = load i32, ptr %l3, !tbaa !23
  store i32 %t9, ptr %l9, !tbaa !23
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t10)
  store %"compiler/source:Span" %t12, ptr %l11
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = load %"compiler/source:Span", ptr %l11
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v3, ptr %t13, ptr %t14, i32 %t15, %"compiler/source:Span" %t16)
  store ptr %t17, ptr %l12
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l12, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v3, ptr %t19, ptr %t20, i32 %t21)
  store ptr %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l16, !tbaa !29
  store ptr %t26, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftInRange(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i32
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i32
  %l37 = alloca i1
  %l44 = alloca i64
  %l51 = alloca i64
  %l59 = alloca i1
  %l61 = alloca i1
  %l64 = alloca i64
  %l69 = alloca i64
  %l78 = alloca i64
  %l83 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l102 = alloca { i64, ptr }
  %l106 = alloca %"compiler/diagmsg:Msg"
  %l107 = alloca i64
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i32, ptr %l14, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l19
  br label %bb2
bb2:
  %t17 = load i1, ptr %l19, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t22 = load ptr, ptr %l22, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l22, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l23, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l5, !tbaa !23
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t38, i32 0, i32 2
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l6, !tbaa !24
  br label %bb10
bb9:
  br label %bb50
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l5, !tbaa !23
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l32
  br label %bb11
bb11:
  %t47 = load i32, ptr %l32, !tbaa !23
  store i32 %t47, ptr %l7, !tbaa !23
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l7, !tbaa !23
  %t57 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l37
  br label %bb12
bb12:
  %t58 = load i1, ptr %l37, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l7, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l44
  br label %bb16
bb16:
  %t72 = load i64, ptr %l44, !tbaa !24
  store i64 %t72, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  store i64 %t73, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t75, 64
  br i1 %t77, label %bb17, label %bb18
bb17:
  store i64 64, ptr %l8, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t79 = load i64, ptr %l8, !tbaa !24
  %t81 = icmp slt i64 %t79, 64
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  store i64 %t84, ptr %l51, !tbaa !24
  %t85 = load i64, ptr %l51, !tbaa !24
  %t86 = load i64, ptr %l51, !tbaa !24
  %t87 = shl i64 1, %t86
  %t89 = sub i64 %t87, 1
  %t92 = and i64 %t83, %t89
  store i64 %t92, ptr %l9, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  %t100 = load i32, ptr %l7, !tbaa !23
  %t103 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t99, i32 %t100)
  store i1 %t103, ptr %l59
  br label %bb22
bb21:
  br label %bb29
bb22:
  %t104 = load i1, ptr %l59, !tbaa !21
  %t105 = xor i1 %t104, true
  br i1 %t105, label %bb23, label %bb24
bb23:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l8, !tbaa !24
  %t110 = sub i64 %t108, 1
  store i64 %t110, ptr %l64, !tbaa !24
  %t112 = load i64, ptr %l64, !tbaa !24
  %t113 = load i64, ptr %l64, !tbaa !24
  %t114 = ashr i64 %t107, %t113
  %t116 = and i64 %t114, 1
  %t118 = icmp eq i64 %t116, 1
  store i1 %t118, ptr %l61, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t120 = load i1, ptr %l61, !tbaa !21
  br i1 %t120, label %bb26, label %bb27
bb26:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t122 = load i64, ptr %l8, !tbaa !24
  store i64 %t122, ptr %l69, !tbaa !24
  %t123 = load i64, ptr %l69, !tbaa !24
  %t124 = load i64, ptr %l69, !tbaa !24
  %t125 = shl i64 1, %t124
  %t127 = sub i64 %t125, 1
  %t129 = xor i64 %t127, -1
  %t132 = or i64 %t121, %t129
  store i64 %t132, ptr %l9, !tbaa !24
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l4, !tbaa !23
  %t143 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t139, i32 %t140)
  store i64 %t143, ptr %l78
  br label %bb30
bb30:
  %t144 = load i64, ptr %l78, !tbaa !24
  store i64 %t144, ptr %l10, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l7, !tbaa !23
  %t154 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t150, i32 %t151)
  store i1 %t154, ptr %l83
  br label %bb31
bb31:
  %t155 = load i1, ptr %l83, !tbaa !21
  br i1 %t155, label %bb32, label %bb33
bb32:
  %t156 = load i64, ptr %l8, !tbaa !24
  %t158 = icmp eq i64 %t156, 64
  store i1 %t158, ptr %l84, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb34
bb34:
  %t160 = load i1, ptr %l84, !tbaa !21
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t161 = load i64, ptr %l9, !tbaa !24
  %t163 = icmp slt i64 %t161, 0
  store i1 %t163, ptr %l87, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t165 = load i1, ptr %l87, !tbaa !21
  br i1 %t165, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb40
bb39:
  %t168 = load i64, ptr %l9, !tbaa !24
  %t170 = icmp slt i64 %t168, 0
  store i1 %t170, ptr %l91, !tbaa !21
  br label %bb40
bb40:
  %t172 = load i1, ptr %l91, !tbaa !21
  br i1 %t172, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb43
bb42:
  %t173 = load i64, ptr %l9, !tbaa !24
  %t174 = load i64, ptr %l10, !tbaa !24
  %t177 = icmp sge i64 %t173, %t174
  store i1 %t177, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t179 = load i1, ptr %l94, !tbaa !21
  br i1 %t179, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l98, !tbaa !29
  store %"compiler/source:Span" %a3, ptr %l99
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i32, ptr %l1, !tbaa !23
  %t186 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t182, i32 %t183)
  store { i64, ptr } %t186, ptr %l102
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t187 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t194 = load i64, ptr %l9, !tbaa !24
  %t195 = load i64, ptr %l10, !tbaa !24
  %t199 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftOutOfRange(ptr %s7, ptr %v0, { i64, ptr } %t193, i64 %t194, i64 %t195)
  store %"compiler/diagmsg:Msg" %t199, ptr %l106
  br label %bb47
bb47:
  %t200 = load ptr, ptr %l98, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l99
  %t202 = load %"compiler/diagmsg:Msg", ptr %l106
  %t203 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t200, %"compiler/source:Span" %t201, %"compiler/diagmsg:Msg" %t202)
  store i64 %t203, ptr %l107
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s7)
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_a580fa67a95f3737_235a3d78a5401c13)
  unreachable
bb55:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslice(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l8 = alloca ptr
  %l13 = alloca ptr
  %l20 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v4, ptr %t1, ptr %a2)
  store ptr %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l8, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  %t15 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t11, %"compiler/source:Span" %t12)
  store ptr %t15, ptr %l13
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t16 = load ptr, ptr %l13, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l1
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v4, ptr %v2, ptr %v3, ptr %v4, ptr %t17, %"compiler/source:Span" %t18, ptr %t19, ptr %a3, ptr %a4, i32 1)
  store ptr %t28, ptr %l20
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l20, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %rv = alloca { i64, ptr }
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t10, i64 %a1)
  store { i64, ptr } %t14, ptr %l8
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t15, ptr %l9, !tbaa !27
  %t16 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  store i64 %t19, ptr %l11, !tbaa !24
  %t20 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l13, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l14, !tbaa !24
  %t26 = load i64, ptr %l11, !tbaa !24
  %t27 = icmp sge i64 %t26, 0
  br i1 %t27, label %bb2, label %bb3
bb2:
  %t29 = load i64, ptr %l11, !tbaa !24
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = icmp sle i64 %t29, %t30
  br i1 %t31, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_acadf2af31b93e38_18751a402ed16b84)
  unreachable
bb4:
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = load i64, ptr %l14, !tbaa !24
  %t35 = icmp sle i64 %t33, %t34
  br i1 %t35, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_acadf2af31b93e38_18751a402ed16b84)
  unreachable
bb6:
  %t37 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l11, !tbaa !24
  %t40 = load i64, ptr %l13, !tbaa !24
  %t41 = getelementptr i8, ptr %t38, i64 %t39
  %t42 = sub i64 %t40, %t39
  %t43 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = extractvalue { i64, ptr } %t44, 0
  %t48 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t46, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_acadf2af31b93e38_18751a402ed16b84)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuppliedSat(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4, i32 %a5, i32 %a6, { i64, ptr } %a7, { i64, ptr } %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l21 = alloca i64
  %l26 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca i32
  %l37 = alloca i32
  %l41 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l48 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a5, ptr %l5
  store i32 %a6, ptr %l6
  store { i64, ptr } %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @compiler_2fcheck_2esatOp(ptr %v3, { i64, ptr } %a7)
  store i32 %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load i32, ptr %l12, !range !{i32 0, i32 51}
  store i32 %t4, ptr %l9
  %t5 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp ne i64 %t7, 1
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l16, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l17
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s1, ptr %v0, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) }, i64 %t15)
  store %"compiler/diagmsg:Msg" %t17, ptr %l20
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t18 = load ptr, ptr %l16, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l17
  %t20 = load %"compiler/diagmsg:Msg", ptr %l20
  %t21 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t18, %"compiler/source:Span" %t19, %"compiler/diagmsg:Msg" %t20)
  store i64 %t21, ptr %l21
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t22, { i64, ptr } %t23)
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l1
  %t30 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t26, %"compiler/source:Span" %t27)
  store ptr %t30, ptr %l26
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l26, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t31, ptr %rv
  br label %ret
bb8:
  %t33 = load i32, ptr %l9, !range !{i32 0, i32 51}
  %t35 = trunc i64 50 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l32
  br label %bb11
bb10:
  %t41 = load i32, ptr %l5, !tbaa !23
  store i32 %t41, ptr %l30, !tbaa !23
  br label %bb12
bb11:
  %t43 = load i32, ptr %l32, !tbaa !23
  store i32 %t43, ptr %l30, !tbaa !23
  br label %bb12
bb12:
  %t44 = load i32, ptr %l30, !tbaa !23
  store i32 %t44, ptr %l10, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l34, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %l35
  %t47 = load i32, ptr %l5, !tbaa !23
  store i32 %t47, ptr %l36, !tbaa !23
  %t48 = load i32, ptr %l9, !range !{i32 0, i32 51}
  store i32 %t48, ptr %l37
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l1
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v2, ptr %t49, ptr %a4, %"compiler/source:Span" %t51)
  store ptr %t55, ptr %l41
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t57, ptr %l43, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 0
  %t61 = load ptr, ptr %t60, !tbaa !39
  %t62 = load i32, ptr %l10, !tbaa !23
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v4, ptr %v0, ptr %t56, ptr %t61, i32 %t62)
  store ptr %t66, ptr %l46
  br label %bb14
bb14:
  %t67 = load ptr, ptr %l46, !tbaa !29
  %t68 = load ptr, ptr %l34, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l35
  %t70 = load i32, ptr %l36, !tbaa !23
  %t71 = load i32, ptr %l37, !range !{i32 0, i32 51}
  %t72 = load ptr, ptr %l41, !tbaa !29
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v5, ptr %t68, %"compiler/source:Span" %t69, i32 %t70, i32 %t71, ptr %t72, ptr %t67)
  store ptr %t74, ptr %l48
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l48, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t2, ptr %t3, i32 %t5)
  store ptr %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i32, ptr %l2, !tbaa !23
  store i32 %t10, ptr %l9, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store %"compiler/source:Span" %t15, ptr %l12
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load i32, ptr %l9, !tbaa !23
  %t19 = load %"compiler/source:Span", ptr %l12
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v2, ptr %t16, ptr %t17, i32 %t18, %"compiler/source:Span" %t19)
  store ptr %t20, ptr %l13
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l13, !tbaa !29
  store ptr %t21, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3, i1 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca { i64, [3 x i64] }
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l34 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l52 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca { i64, [3 x i64] }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca i64
  %l72 = alloca i32
  %l75 = alloca ptr
  %l80 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l85 = alloca ptr
  %l91 = alloca { i64, [3 x i64] }
  %l95 = alloca { i64, ptr }
  %l97 = alloca %"compiler/diagmsg:Msg"
  %l98 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l127 = alloca { i64, ptr }
  %l137 = alloca i1
  %l139 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l150 = alloca { i64, [3 x i64] }
  %l154 = alloca { i64, ptr }
  %l156 = alloca %"compiler/diagmsg:Msg"
  %l157 = alloca i64
  %l163 = alloca ptr
  %l169 = alloca { i64, [3 x i64] }
  %l172 = alloca { i64, ptr }
  %l173 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca i64
  %l178 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca { i64, [3 x i64] }
  %l183 = alloca { i64, ptr }
  %l184 = alloca %"compiler/diagmsg:Msg"
  %l185 = alloca i64
  %l188 = alloca ptr
  %l189 = alloca i1
  %l194 = alloca ptr
  %l195 = alloca i64
  %l196 = alloca ptr
  %l197 = alloca ptr
  %l198 = alloca i1
  %l199 = alloca i1
  %l202 = alloca ptr
  %l203 = alloca i64
  %l209 = alloca %"compiler/source:Span"
  %l211 = alloca i64
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t88 = alloca { i64, [3 x i64] }, align 8
  %t148 = alloca { i64, [3 x i64] }, align 8
  %t284 = alloca { i64, [3 x i64] }, align 8
  %t335 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i1 %a3, ptr %l3
  store i1 %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 10
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l34
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l34, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 4
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l6, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/load:Loader", ptr %t31, i32 0, i32 4
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l7, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l10, !tbaa !24
  br label %bb5
bb5:
  %t42 = load i64, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l10, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb6, label %bb7
bb6:
  br label %bb91
bb7:
  br label %bb8
bb8:
  %t50 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t50, ptr %l48, !tbaa !27
  %t51 = load i64, ptr %l9, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  store ptr %t56, ptr %l11, !tbaa !29
  %t58 = load ptr, ptr %l11, !tbaa !29
  store ptr %t58, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t59 = load ptr, ptr %l51, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb9, label %bb10
bb9:
  %t62 = load ptr, ptr %l51, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 11}
  %t65 = icmp eq i64 %t63, 8
  store i1 %t65, ptr %l52, !tbaa !21
  br label %bb10
bb10:
  %t66 = load i1, ptr %l52, !tbaa !21
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t67 = load ptr, ptr %l11, !tbaa !29
  %t69 = getelementptr { i64, [8 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t69, i32 0, i32 0
  %t71 = load %"compiler/source:Span", ptr %t70
  store %"compiler/source:Span" %t71, ptr %l12
  %t73 = load ptr, ptr %l11, !tbaa !29
  %t75 = getelementptr { i64, [8 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t75, i32 0, i32 1
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l13, !tbaa !29
  br label %bb13
bb12:
  br label %bb72
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t84 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 1
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = sext i32 %t85 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 0
  store i64 3, ptr %t89
  %t91 = insertvalue { i64, i64, i64 } undef, i64 %t79, 0
  %t93 = insertvalue { i64, i64, i64 } %t91, i64 %t83, 1
  %t95 = insertvalue { i64, i64, i64 } %t93, i64 %t87, 2
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 1
  store { i64, i64, i64 } %t95, ptr %t96
  %t97 = load { i64, [3 x i64] }, ptr %t88
  store { i64, [3 x i64] } %t97, ptr %l14
  %t99 = load i1, ptr %l3, !tbaa !21
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb14, label %bb15
bb14:
  %t103 = load ptr, ptr %l7, !tbaa !29
  store ptr %t103, ptr %l67, !tbaa !29
  %t104 = load { i64, [3 x i64] }, ptr %l14
  store { i64, [3 x i64] } %t104, ptr %l68
  %t105 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetPlace(ptr %v0)
  store %"compiler/diagmsg:Msg" %t105, ptr %l69
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t106 = load ptr, ptr %l67, !tbaa !29
  %t107 = load { i64, [3 x i64] }, ptr %l68
  %t108 = load %"compiler/diagmsg:Msg", ptr %l69
  %t109 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t106, { i64, [3 x i64] } %t107, %"compiler/diagmsg:Msg" %t108)
  store i64 %t109, ptr %l70
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb18:
  %t110 = load ptr, ptr %l13, !tbaa !29
  %t112 = call i32 @compiler_2fcheck_2esetName(ptr %v1, ptr %t110)
  store i32 %t112, ptr %l72
  br label %bb19
bb19:
  %t113 = load i32, ptr %l72, !tbaa !23
  store i32 %t113, ptr %l15, !tbaa !23
  %t114 = load i32, ptr %l15, !tbaa !23
  %t116 = icmp ne i32 %t114, 0
  br i1 %t116, label %bb20, label %bb21
bb20:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t122 = load i64, ptr %l1, !tbaa !24
  %t123 = load i32, ptr %l15, !tbaa !23
  %t127 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %s4, ptr %t121, i64 %t122, i32 %t123)
  store ptr %t127, ptr %l80
  br label %bb22
bb21:
  store ptr null, ptr %l75, !tbaa !29
  br label %bb23
bb22:
  %t128 = load ptr, ptr %l80, !tbaa !29
  store ptr %t128, ptr %l75, !tbaa !29
  br label %bb23
bb23:
  %t129 = load ptr, ptr %l75, !tbaa !29
  store ptr %t129, ptr %l16, !tbaa !29
  %t130 = load ptr, ptr %l13, !tbaa !29
  %t132 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t130)
  store %"compiler/source:Span" %t132, ptr %l82
  br label %bb24
bb24:
  %t133 = load %"compiler/source:Span", ptr %l82
  store %"compiler/source:Span" %t133, ptr %l17
  %t134 = load ptr, ptr %l16, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t138 = load ptr, ptr %l7, !tbaa !29
  store ptr %t138, ptr %l85, !tbaa !29
  %t139 = load i64, ptr %l6, !tbaa !24
  %t140 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  %t144 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t145 = load i32, ptr %t144, !tbaa !23
  %t147 = sext i32 %t145 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [3 x i64] }, ptr %t148, i32 0, i32 0
  store i64 3, ptr %t149
  %t151 = insertvalue { i64, i64, i64 } undef, i64 %t139, 0
  %t153 = insertvalue { i64, i64, i64 } %t151, i64 %t143, 1
  %t155 = insertvalue { i64, i64, i64 } %t153, i64 %t147, 2
  %t156 = getelementptr { i64, [3 x i64] }, ptr %t148, i32 0, i32 1
  store { i64, i64, i64 } %t155, ptr %t156
  %t157 = load { i64, [3 x i64] }, ptr %t148
  store { i64, [3 x i64] } %t157, ptr %l91
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i64, ptr %l6, !tbaa !24
  %t160 = load %"compiler/source:Span", ptr %l17
  %t164 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %s6, ptr %t158, i64 %t159, %"compiler/source:Span" %t160)
  store { i64, ptr } %t164, ptr %l95
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t165 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  %t167 = extractvalue { i64, ptr } %t165, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %s6, ptr %v0, { i64, ptr } %t171)
  store %"compiler/diagmsg:Msg" %t173, ptr %l97
  br label %bb28
bb28:
  %t174 = load ptr, ptr %l85, !tbaa !29
  %t175 = load { i64, [3 x i64] }, ptr %l91
  %t176 = load %"compiler/diagmsg:Msg", ptr %l97
  %t177 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t174, { i64, [3 x i64] } %t175, %"compiler/diagmsg:Msg" %t176)
  store i64 %t177, ptr %l98
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb30:
  store i64 -1, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t178 = load ptr, ptr %l16, !tbaa !29
  %t180 = getelementptr %"compiler/ast:VarDecl", ptr %t178, i32 0, i32 0
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  store i64 %t183, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t185 = load i64, ptr %l20, !tbaa !24
  %t186 = load i64, ptr %l19, !tbaa !24
  %t189 = icmp sgt i64 %t185, %t186
  br i1 %t189, label %bb31, label %bb32
bb31:
  %t191 = load i64, ptr %l21, !tbaa !24
  %t193 = icmp sgt i64 %t191, 0
  br i1 %t193, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb36
bb33:
  %t195 = load i64, ptr %l20, !tbaa !24
  %t196 = load i64, ptr %l19, !tbaa !24
  %t199 = sub i64 %t195, %t196
  %t200 = load i64, ptr %l21, !tbaa !24
  %t203 = add i64 %t199, %t200
  %t205 = sub i64 %t203, 1
  %t206 = load i64, ptr %l21, !tbaa !24
  %t209 = sdiv i64 %t205, %t206
  store i64 %t209, ptr %l108, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb35
bb35:
  %t211 = load i64, ptr %l108, !tbaa !24
  store i64 %t211, ptr %l105, !tbaa !24
  br label %bb36
bb36:
  %t212 = load i64, ptr %l105, !tbaa !24
  store i64 %t212, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb37
bb37:
  %t213 = load i64, ptr %l23, !tbaa !24
  %t214 = load i64, ptr %l22, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb38, label %bb39
bb38:
  br label %bb45
bb39:
  br label %bb40
bb40:
  %t221 = load i64, ptr %l19, !tbaa !24
  %t222 = load i64, ptr %l23, !tbaa !24
  %t223 = load i64, ptr %l21, !tbaa !24
  %t226 = mul i64 %t222, %t223
  %t229 = add i64 %t221, %t226
  store i64 %t229, ptr %l24, !tbaa !24
  %t231 = load ptr, ptr %l16, !tbaa !29
  %t233 = getelementptr %"compiler/ast:VarDecl", ptr %t231, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l127, !tbaa !27
  %t235 = load i64, ptr %l24, !tbaa !24
  %t237 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr i32, ptr %t238, i64 %t235
  %t240 = load i32, ptr %t239, !tbaa !33
  %t241 = load i32, ptr %l15, !tbaa !23
  %t244 = icmp eq i32 %t240, %t241
  br i1 %t244, label %bb41, label %bb42
bb41:
  %t246 = load i64, ptr %l24, !tbaa !24
  store i64 %t246, ptr %l18, !tbaa !24
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t248 = load i64, ptr %l23, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l23, !tbaa !24
  br label %bb37
bb45:
  %t252 = load i64, ptr %l18, !tbaa !24
  %t254 = icmp slt i64 %t252, 0
  br i1 %t254, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb48
bb47:
  %t256 = load ptr, ptr %l16, !tbaa !29
  %t258 = getelementptr %"compiler/ast:VarDecl", ptr %t256, i32 0, i32 1
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l139, !tbaa !27
  %t260 = load i64, ptr %l18, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr %"compiler/source:Span", ptr %t263, i64 %t260
  %t265 = getelementptr %"compiler/source:Span", ptr %t264, i32 0, i32 0
  %t266 = load i32, ptr %t265, !tbaa !23
  %t267 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 0
  %t268 = load i32, ptr %t267, !tbaa !23
  %t271 = icmp sgt i32 %t266, %t268
  store i1 %t271, ptr %l137, !tbaa !21
  br label %bb48
bb48:
  %t273 = load i1, ptr %l137, !tbaa !21
  br i1 %t273, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s11
  %t274 = load ptr, ptr %l7, !tbaa !29
  store ptr %t274, ptr %l144, !tbaa !29
  %t275 = load i64, ptr %l6, !tbaa !24
  %t276 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t277 = load i32, ptr %t276, !tbaa !23
  %t279 = sext i32 %t277 to i64
  %t280 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t281 = load i32, ptr %t280, !tbaa !23
  %t283 = sext i32 %t281 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t284
  %t285 = getelementptr { i64, [3 x i64] }, ptr %t284, i32 0, i32 0
  store i64 3, ptr %t285
  %t287 = insertvalue { i64, i64, i64 } undef, i64 %t275, 0
  %t289 = insertvalue { i64, i64, i64 } %t287, i64 %t279, 1
  %t291 = insertvalue { i64, i64, i64 } %t289, i64 %t283, 2
  %t292 = getelementptr { i64, [3 x i64] }, ptr %t284, i32 0, i32 1
  store { i64, i64, i64 } %t291, ptr %t292
  %t293 = load { i64, [3 x i64] }, ptr %t284
  store { i64, [3 x i64] } %t293, ptr %l150
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i64, ptr %l6, !tbaa !24
  %t296 = load %"compiler/source:Span", ptr %l17
  %t300 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %s11, ptr %t294, i64 %t295, %"compiler/source:Span" %t296)
  store { i64, ptr } %t300, ptr %l154
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t301 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 0
  %t303 = extractvalue { i64, ptr } %t301, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t309 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %s11, ptr %v0, { i64, ptr } %t307)
  store %"compiler/diagmsg:Msg" %t309, ptr %l156
  br label %bb52
bb52:
  %t310 = load ptr, ptr %l144, !tbaa !29
  %t311 = load { i64, [3 x i64] }, ptr %l150
  %t312 = load %"compiler/diagmsg:Msg", ptr %l156
  %t313 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t310, { i64, [3 x i64] } %t311, %"compiler/diagmsg:Msg" %t312)
  store i64 %t313, ptr %l157
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb54:
  %t314 = load i64, ptr %l18, !tbaa !24
  %t315 = load ptr, ptr %l16, !tbaa !29
  %t317 = getelementptr %"compiler/ast:VarDecl", ptr %t315, i32 0, i32 3
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t323 = icmp slt i64 %t314, %t320
  br i1 %t323, label %bb55, label %bb56
bb55:
  %t325 = load ptr, ptr %l7, !tbaa !29
  store ptr %t325, ptr %l163, !tbaa !29
  %t326 = load i64, ptr %l6, !tbaa !24
  %t327 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t328 = load i32, ptr %t327, !tbaa !23
  %t330 = sext i32 %t328 to i64
  %t331 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t332 = load i32, ptr %t331, !tbaa !23
  %t334 = sext i32 %t332 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t335
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 0
  store i64 3, ptr %t336
  %t338 = insertvalue { i64, i64, i64 } undef, i64 %t326, 0
  %t340 = insertvalue { i64, i64, i64 } %t338, i64 %t330, 1
  %t342 = insertvalue { i64, i64, i64 } %t340, i64 %t334, 2
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  store { i64, i64, i64 } %t342, ptr %t343
  %t344 = load { i64, [3 x i64] }, ptr %t335
  store { i64, [3 x i64] } %t344, ptr %l169
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i32, ptr %l15, !tbaa !23
  %t349 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t345, i32 %t346)
  store { i64, ptr } %t349, ptr %l172
  br label %bb57
bb56:
  br label %bb60
bb57:
  %t350 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t351 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetHasValue(ptr %v0, ptr %v0, { i64, ptr } %t350)
  store %"compiler/diagmsg:Msg" %t351, ptr %l173
  br label %bb58
bb58:
  %t352 = load ptr, ptr %l163, !tbaa !29
  %t353 = load { i64, [3 x i64] }, ptr %l169
  %t354 = load %"compiler/diagmsg:Msg", ptr %l173
  %t355 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t352, { i64, [3 x i64] } %t353, %"compiler/diagmsg:Msg" %t354)
  store i64 %t355, ptr %l174
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb60:
  %t356 = load i1, ptr %l4, !tbaa !21
  br i1 %t356, label %bb61, label %bb62
bb61:
  %t358 = load ptr, ptr %l5, !tbaa !29
  %t359 = load i32, ptr %l15, !tbaa !23
  %t362 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v2, ptr %t358, i32 %t359)
  store i1 %t362, ptr %l178
  br label %bb63
bb62:
  br label %bb71
bb63:
  %t363 = load i1, ptr %l178, !tbaa !21
  br i1 %t363, label %bb64, label %bb65
bb64:
  %t364 = load ptr, ptr %l7, !tbaa !29
  store ptr %t364, ptr %l179, !tbaa !29
  %t365 = load { i64, [3 x i64] }, ptr %l14
  store { i64, [3 x i64] } %t365, ptr %l180
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load i32, ptr %l15, !tbaa !23
  %t370 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t366, i32 %t367)
  store { i64, ptr } %t370, ptr %l183
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t371 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t372 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTwice(ptr %v0, ptr %v0, { i64, ptr } %t371)
  store %"compiler/diagmsg:Msg" %t372, ptr %l184
  br label %bb67
bb67:
  %t373 = load ptr, ptr %l179, !tbaa !29
  %t374 = load { i64, [3 x i64] }, ptr %l180
  %t375 = load %"compiler/diagmsg:Msg", ptr %l184
  %t376 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t373, { i64, [3 x i64] } %t374, %"compiler/diagmsg:Msg" %t375)
  store i64 %t376, ptr %l185
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t377 = load ptr, ptr %l5, !tbaa !29
  %t378 = load i32, ptr %l15, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v2, ptr %t377, i32 %t378, i1 true)
  br label %bb70
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s4)
  br label %bb89
bb72:
  %t381 = load ptr, ptr %l11, !tbaa !29
  store ptr %t381, ptr %l188, !tbaa !29
  store i1 false, ptr %l189, !tbaa !21
  %t382 = load ptr, ptr %l188, !tbaa !29
  %t383 = icmp ne ptr %t382, null
  br i1 %t383, label %bb73, label %bb74
bb73:
  %t385 = load ptr, ptr %l188, !tbaa !29
  %t386 = load i64, ptr %t385, !range !{i64 0, i64 11}
  %t388 = icmp eq i64 %t386, 7
  store i1 %t388, ptr %l189, !tbaa !21
  br label %bb74
bb74:
  %t389 = load i1, ptr %l189, !tbaa !21
  br i1 %t389, label %bb75, label %bb76
bb75:
  %t390 = load ptr, ptr %l11, !tbaa !29
  %t392 = getelementptr { i64, [8 x i64] }, ptr %t390, i32 0, i32 1
  %t393 = getelementptr { %"compiler/source:Span", ptr }, ptr %t392, i32 0, i32 1
  %t394 = load ptr, ptr %t393
  store ptr %t394, ptr %l25, !tbaa !29
  br label %bb77
bb76:
  br label %bb84
bb77:
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l194, !tbaa !29
  %t397 = load i64, ptr %l1, !tbaa !24
  store i64 %t397, ptr %l195, !tbaa !24
  %t398 = load ptr, ptr %l25, !tbaa !29
  store ptr %t398, ptr %l196, !tbaa !29
  %t399 = load ptr, ptr %l25, !tbaa !29
  store ptr %t399, ptr %l197, !tbaa !29
  %t400 = load i1, ptr %l3, !tbaa !21
  store i1 %t400, ptr %l198, !tbaa !21
  %t401 = load i1, ptr %l4, !tbaa !21
  store i1 %t401, ptr %l199, !tbaa !21
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/check:Checker", ptr %t402, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t407 = getelementptr %"compiler/generic:Program", ptr %t405, i32 0, i32 0
  %t408 = load ptr, ptr %t407, !tbaa !29
  store ptr %t408, ptr %l202, !tbaa !29
  %t409 = load i64, ptr %l1, !tbaa !24
  store i64 %t409, ptr %l203, !tbaa !24
  %t410 = load ptr, ptr %l25, !tbaa !29
  %t412 = getelementptr %"compiler/ast:TopIf", ptr %t410, i32 0, i32 0
  %t413 = load ptr, ptr %t412, !tbaa !29
  %t415 = icmp eq ptr %t413, null
  br i1 %t415, label %bb78, label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_c6f64016a09fc530_b8b2abed7e41fd2c)
  unreachable
bb79:
  br label %bb80
bb80:
  %t417 = load ptr, ptr %l25, !tbaa !29
  %t419 = getelementptr %"compiler/ast:TopIf", ptr %t417, i32 0, i32 0
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t420)
  store %"compiler/source:Span" %t422, ptr %l209
  br label %bb81
bb81:
  %t423 = getelementptr %"compiler/source:Span", ptr %l209, i32 0, i32 0
  %t424 = load i32, ptr %t423, !tbaa !23
  %t425 = load ptr, ptr %l202, !tbaa !29
  %t426 = load i64, ptr %l203, !tbaa !24
  %t428 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t425, i64 %t426, i32 %t424)
  store i64 %t428, ptr %l211
  br label %bb82
bb82:
  %t429 = load ptr, ptr %l5, !tbaa !29
  %t430 = load ptr, ptr %l194, !tbaa !29
  %t431 = load i64, ptr %l195, !tbaa !24
  %t432 = load ptr, ptr %l196, !tbaa !29
  %t433 = load ptr, ptr %l197, !tbaa !29
  %t434 = load i1, ptr %l198, !tbaa !21
  %t435 = load i1, ptr %l199, !tbaa !21
  %t436 = load i64, ptr %l211, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIf(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t430, i64 %t431, ptr %t432, ptr %t433, i1 %t434, i1 %t435, i64 %t436, i64 0, ptr %t429)
  br label %bb83
bb83:
  br label %bb89
bb84:
  br i1 true, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_37fb0db160a44e56_e10956c528b68142)
  unreachable
bb89:
  br label %bb90
bb90:
  %t438 = load i64, ptr %l9, !tbaa !24
  %t440 = add i64 %t438, 1
  store i64 %t440, ptr %l9, !tbaa !24
  br label %bb5
bb91:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeHasEq(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i64
  %l18 = alloca i1
  %l19 = alloca i1
  %l24 = alloca i32
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %t13, i32 %t14)
  store i64 %t17, ptr %l13
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = icmp ne i64 %t18, -1
  store i1 %t19, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l24
  br label %bb13
bb12:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb14
bb13:
  %t39 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t41 = trunc i64 19 to i32
  %t42 = icmp eq i32 %t39, %t41
  %t44 = xor i1 %t42, true
  store i1 %t44, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l19, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = add i64 %a2, 1
  %t56 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsHaveEq(ptr %v0, ptr %t48, i32 %t49, i64 %t52)
  store i1 %t56, ptr %l33
  br label %bb18
bb18:
  %t57 = load i1, ptr %l33, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l18 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l60 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l77 = alloca { i64, ptr }
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l80 = alloca i64
  %l85 = alloca i32
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l92 = alloca { i64, ptr }
  %l95 = alloca %"compiler/diagmsg:Msg"
  %l96 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l101 = alloca { i64, ptr }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 1
  %t7 = load i64, ptr %t6, !tbaa !24
  %t8 = load i32, ptr %l2, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t13 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t7, i64 %t10)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l14
  br label %bb2
bb2:
  %t14 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14, ptr %l4
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 100
  %t18 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t17, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18)
  store i1 %t21, ptr %l18
  br label %bb3
bb3:
  %t22 = load i1, ptr %l18, !tbaa !21
  br i1 %t22, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 100
  %t26 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t25, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26, i1 true)
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t33, ptr %l24
  br label %bb8
bb8:
  %t34 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t34, ptr %l5, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t39 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v0, ptr %s0, ptr %t35, { i64, ptr } %t36, i1 false)
  store { i64, ptr } %t39, ptr %l27
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 0
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t51 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportedTypeNamed(ptr %v0, ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t48)
  store { i64, ptr } %t51, ptr %l33
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t52, ptr %l34, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t53, ptr %l6, !tbaa !27
  %t54 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eunknownType_2elocal_2e6
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load { i64, ptr }, ptr %l34
  %t57 = extractvalue { i64, ptr } %t56, 1
  call void @__olang_region_release(ptr %t57)
  store { i64, ptr } zeroinitializer, ptr %l34
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = icmp eq i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estdTypeModule(ptr %v0, ptr %v0, ptr %s0, ptr %t64, { i64, ptr } %t65)
  store { i64, ptr } %t68, ptr %l42
  br label %bb18
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l39, !tbaa !27
  br label %bb19
bb18:
  %t69 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l39, !tbaa !27
  br label %bb19
bb19:
  %t77 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t80 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t78, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t80, ptr %l45
  br label %bb20
bb20:
  %t81 = load i1, ptr %l45, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l47, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t85, ptr %l48
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l2, !tbaa !23
  %t90 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s3, ptr %t86, i32 %t87)
  store { i64, ptr } %t90, ptr %l51
  br label %bb23
bb22:
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t95 = icmp eq i64 %t93, 0
  br i1 %t95, label %bb26, label %bb27
bb23:
  %t97 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t109 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeStd(ptr %s3, ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t103, { i64, ptr } %t104, { i64, ptr } %t105)
  store %"compiler/diagmsg:Msg" %t109, ptr %l55
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l47, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l48
  %t112 = load %"compiler/diagmsg:Msg", ptr %l55
  %t113 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t110, %"compiler/source:Span" %t111, %"compiler/diagmsg:Msg" %t112)
  store i64 %t113, ptr %l56
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb51
bb26:
  store i1 %a3, ptr %l60, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb28
bb28:
  %t116 = load i1, ptr %l60, !tbaa !21
  br i1 %t116, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l62, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t118, ptr %l63
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l2, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s5, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l66
  br label %bb31
bb30:
  %t124 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t128 = icmp eq i64 %t126, 0
  br i1 %t128, label %bb34, label %bb35
bb31:
  %t130 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  %t132 = extractvalue { i64, ptr } %t130, 1
  %t133 = mul i64 %t131, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  %t138 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownConstraint(ptr %s5, ptr %v0, { i64, ptr } %t136)
  store %"compiler/diagmsg:Msg" %t138, ptr %l68
  br label %bb32
bb32:
  %t139 = load ptr, ptr %l62, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l63
  %t141 = load %"compiler/diagmsg:Msg", ptr %l68
  %t142 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t139, %"compiler/source:Span" %t140, %"compiler/diagmsg:Msg" %t141)
  store i64 %t142, ptr %l69
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb50
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l73, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t144, ptr %l74
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l2, !tbaa !23
  %t149 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s7, ptr %t145, i32 %t146)
  store { i64, ptr } %t149, ptr %l77
  br label %bb36
bb35:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t155, { i64, ptr } %t156)
  store i32 %t159, ptr %l85
  br label %bb39
bb36:
  %t160 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t168 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownType(ptr %s7, ptr %v0, { i64, ptr } %t166)
  store %"compiler/diagmsg:Msg" %t168, ptr %l79
  br label %bb37
bb37:
  %t169 = load ptr, ptr %l73, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l74
  %t171 = load %"compiler/diagmsg:Msg", ptr %l79
  %t172 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t169, %"compiler/source:Span" %t170, %"compiler/diagmsg:Msg" %t171)
  store i64 %t172, ptr %l80
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb49
bb39:
  %t173 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t174 = load i32, ptr %l85, !tbaa !23
  %t176 = icmp ne i32 %t174, %t173
  br i1 %t176, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s9
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l88, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t179, ptr %l89
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i32, ptr %l2, !tbaa !23
  %t184 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s9, ptr %t180, i32 %t181)
  store { i64, ptr } %t184, ptr %l92
  br label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s10
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l97, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t186, ptr %l98
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l2, !tbaa !23
  %t191 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s10, ptr %t187, i32 %t188)
  store { i64, ptr } %t191, ptr %l101
  br label %bb45
bb42:
  %t192 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t194 = extractvalue { i64, ptr } %t192, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  %t199 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %s9, ptr %s0, ptr %v0, { i64, ptr } %t198, { i64, ptr } %t199)
  store %"compiler/diagmsg:Msg" %t202, ptr %l95
  br label %bb43
bb43:
  %t203 = load ptr, ptr %l88, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l89
  %t205 = load %"compiler/diagmsg:Msg", ptr %l95
  %t206 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t203, %"compiler/source:Span" %t204, %"compiler/diagmsg:Msg" %t205)
  store i64 %t206, ptr %l96
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s9)
  br label %bb48
bb45:
  %t207 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  %t209 = extractvalue { i64, ptr } %t207, 1
  %t210 = mul i64 %t208, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  %t214 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t217 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeMeant(ptr %s10, ptr %s0, ptr %v0, { i64, ptr } %t213, { i64, ptr } %t214)
  store %"compiler/diagmsg:Msg" %t217, ptr %l104
  br label %bb46
bb46:
  %t218 = load ptr, ptr %l97, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l98
  %t220 = load %"compiler/diagmsg:Msg", ptr %l104
  %t221 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t218, %"compiler/source:Span" %t219, %"compiler/diagmsg:Msg" %t220)
  store i64 %t221, ptr %l105
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s10)
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunpin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t8 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 64
  store %"compiler/source:Span" %a1, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 65
  store i64 %a2, ptr %t16, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 26
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17, i32 %t19)
  store ptr %t23, ptr %l16
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l16, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 28}
  %t32 = icmp eq i64 %t30, 27
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t36, i32 0, i32 0
  %t38 = load %"compiler/source:Span", ptr %t37
  store %"compiler/source:Span" %t38, ptr %l4
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t42, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43
  store { i64, ptr } %t44, ptr %l5, !tbaa !27
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t47, ptr %l26
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t48, ptr %l27, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l33
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i32, ptr %l33, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t62, ptr %l34
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l25, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l26
  %t65 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t66 = load i32, ptr %l34, !tbaa !23
  %t67 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %t63, %"compiler/source:Span" %t64, { i64, ptr } %t65, i32 %t66)
  store ptr %t67, ptr %l35
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l35, !tbaa !29
  store ptr %t68, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t69, ptr %t70, i32 %t72)
  store ptr %t76, ptr %l40
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l40, !tbaa !29
  store ptr %t77, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_25d34c17bb450b97_945eabbb6879394b)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalksAny(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l10, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t22 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %t16, i64 %t17, i32 %a2)
  store i32 %t22, ptr %l15
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l16
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l7, !tbaa !29
  %t27 = load i32, ptr %l16, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l17
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp eq i64 %t32, 0
  br i1 %t34, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t38, ptr %l23, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 0
  %t42 = load i32, ptr %t41, !tbaa !33
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t37, i32 %t42)
  store i32 %t45, ptr %l25
  br label %bb7
bb7:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l4, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l4, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l30
  br label %bb8
bb8:
  %t57 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t59 = trunc i64 25 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb9, label %bb10
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l38
  br label %bb11
bb10:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb13
bb11:
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t72)
  store i64 %t74, ptr %l40
  br label %bb12
bb12:
  %t75 = load i64, ptr %l38, !tbaa !24
  %t76 = load i64, ptr %l40, !tbaa !24
  %t77 = icmp eq i64 %t75, %t76
  store i1 %t77, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t79 = load i1, ptr %l33, !tbaa !21
  store i1 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l10 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t12, i32 %t13)
  store i64 %t16, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t18 = load i64, ptr %l10, !tbaa !24
  %t20 = and i64 %t18, %t17
  %t22 = icmp ne i64 %t20, 0
  store i1 %t22, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l5, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2edeclaredFact(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb9
bb7:
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t12, ptr %l8
  br label %bb8
bb8:
  %t13 = load i1, ptr %l8, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb13
bb11:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t17, ptr %l11
  br label %bb12
bb12:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load i1, ptr %l9, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca %"compiler/ast:Path"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l2, !tbaa !29
  br label %bb2
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 28}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t20 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l1, i32 %t20)
  br label %bb8
bb8:
  br label %bb23
bb9:
  %t23 = load ptr, ptr %l2, !tbaa !29
  store ptr %t23, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 28}
  %t30 = icmp eq i64 %t28, 12
  store i1 %t30, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t31 = load i1, ptr %l17, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l4, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l5, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t44 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l1, i32 %t44)
  br label %bb15
bb15:
  %t47 = load ptr, ptr %l4, !tbaa !29
  store ptr %t47, ptr %l2, !tbaa !29
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4687f82547dc647_2449c09f4feab02b)
  unreachable
bb21:
  br label %bb22
bb22:
  br label %bb2
bb23:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eRevers_Hae6dce760a5809d9fde696c8bce52839(ptr %s0, ptr %l1)
  br label %bb24
bb24:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t51)
  store %"compiler/source:Span" %t53, ptr %l30
  br label %bb25
bb25:
  %t54 = ptrtoint ptr %v1 to i64
  store i64 %t54, ptr %l31, !tbaa !24
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aPath_2e1
  br i1 %t55, label %bb26, label %bb27
bb26:
  %t57 = call ptr @__olang_region_make(ptr %v1)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l31, !tbaa !24
  br label %bb27
bb27:
  %t59 = load i64, ptr %l31
  %t60 = inttoptr i64 %t59 to ptr
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %t60, ptr %l1)
  store { i64, ptr } %t62, ptr %l34
  br label %bb28
bb28:
  %t63 = load %"compiler/source:Span", ptr %l30
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t63, { i64, ptr } %t64)
  store %"compiler/ast:Path" %t65, ptr %l35
  br label %bb29
bb29:
  %t66 = load %"compiler/ast:Path", ptr %l35
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:Path" %t66, ptr %t67
  call void @__olang_scope_close(ptr %s0)
  store ptr %t67, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2eisData(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_730002831f996ad7_70057565365c117b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2elitText(ptr %v0, %"compiler/check:litv" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %l3 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/check:litv" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 6
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 7
  %t5 = load i1, ptr %t4, !tbaa !21
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  %t7 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t8 = load i128, ptr %t7
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_u128(ptr null, i128 %t8)
  %t13 = add i64 %t10, %t12
  %t14 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t13)
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = getelementptr i8, ptr %t14, i64 %t10
  %t16 = call i64 @__olang_fmt_u128(ptr %t15, i128 %t8)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t14, 1
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  %t20 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t21 = load i128, ptr %t20
  %t23 = call i64 @__olang_fmt_u128(ptr null, i128 %t21)
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = call i64 @__olang_fmt_u128(ptr %t24, i128 %t21)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  br label %bb5
bb5:
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t29, ptr %rv
  br label %ret
bb6:
  %t30 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 2
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t34 = load i64, ptr %t33, !tbaa !24
  %t37 = call i64 @__olang_fmt_u64(ptr null, i64 %t34)
  %t38 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t37)
  %t39 = call i64 @__olang_fmt_u64(ptr %t38, i64 %t34)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t38, 1
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  br label %bb9
bb8:
  %t43 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  %t48 = call i64 @__olang_fmt_i64(ptr %t47, i64 %t44)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l9, !tbaa !27
  br label %bb9
bb9:
  %t52 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2enullValue(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l20 = alloca i1
  %l26 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:Match", ptr %a0, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l4, !tbaa !29
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Case", ptr %t26, i32 0, i32 5
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = getelementptr %"compiler/ast:Case", ptr %t35, i32 0, i32 5
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_29f8057051902f50_e91b4d9ed5822c7c)
  unreachable
bb8:
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Case", ptr %t42, i32 0, i32 5
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %t45)
  store i1 %t47, ptr %l26
  br label %bb10
bb10:
  %t48 = load i1, ptr %l26, !tbaa !21
  store i1 %t48, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t49 = load i1, ptr %l20, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb1
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb36
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 2
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb19
bb14:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb15, label %bb16
bb15:
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 3
  store i1 %t41, ptr %l20, !tbaa !21
  br label %bb16
bb16:
  %t42 = load i1, ptr %l20, !tbaa !21
  br i1 %t42, label %bb17, label %bb18
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l1, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l26
  br label %bb20
bb20:
  %t52 = load i1, ptr %l26, !tbaa !21
  store i1 %t52, ptr %l4, !tbaa !21
  br label %bb36
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t54 = load ptr, ptr %l27, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 9
  store i1 %t60, ptr %l28, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l28, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t64, i32 0, i32 2
  %t66 = load i32, ptr %t65, !range !{i32 0, i32 51}
  store i32 %t66, ptr %l2
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t70, i32 0, i32 4
  %t72 = load { i64, ptr }, ptr %t71
  store { i64, ptr } %t72, ptr %l3, !tbaa !27
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t74 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t76 = trunc i64 29 to i32
  %t77 = icmp eq i32 %t74, %t76
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t83 = call i1 @compiler_2fcheck_2eplainIndexes(ptr %v0, { i64, ptr } %t81)
  store i1 %t83, ptr %l40
  br label %bb29
bb28:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb30
bb29:
  %t84 = load i1, ptr %l40, !tbaa !21
  store i1 %t84, ptr %l38, !tbaa !21
  br label %bb30
bb30:
  %t85 = load i1, ptr %l38, !tbaa !21
  store i1 %t85, ptr %l4, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_5e0248e79c45fbe7_9eea68ca563d9803)
  unreachable
bb36:
  %t86 = load i1, ptr %l4, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList() #0 {
entry:
  %l1 = alloca %"compiler/check:reflList"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflList"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t3 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s0, i1 false, i32 %t1, i64 0, i64 -1)
  store %"compiler/check:reflList" %t3, ptr %l1
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load %"compiler/check:reflList", ptr %l1
  store %"compiler/check:reflList" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflList", ptr %rv
  ret %"compiler/check:reflList" %rr
}

define dso_local %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %l4 = alloca %"compiler/check:signMag"
  %l9 = alloca %"compiler/check:signMag"
  %l16 = alloca %"compiler/check:signMag"
  %l20 = alloca %"compiler/check:signMag"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/check:signMag"
  store %"compiler/check:litv" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 6
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t4 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 7
  %t5 = load i1, ptr %t4, !tbaa !21
  %t6 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 8
  %t7 = load i128, ptr %t6
  %t10 = call %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %s1, i1 %t5, i128 %t7)
  store %"compiler/check:signMag" %t10, ptr %l4
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t11 = load %"compiler/check:signMag", ptr %l4
  store %"compiler/check:signMag" %t11, ptr %rv
  br label %ret
bb4:
  %t12 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 2
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = zext i64 %t16 to i128
  %t21 = call %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %s2, i1 false, i128 %t19)
  store %"compiler/check:signMag" %t21, ptr %l9
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t22 = load %"compiler/check:signMag", ptr %l9
  store %"compiler/check:signMag" %t22, ptr %rv
  br label %ret
bb8:
  %t23 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = icmp slt i64 %t24, 0
  br i1 %t26, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t28 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = sub i64 0, %t29
  %t34 = zext i64 %t32 to i128
  %t36 = call %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %s3, i1 true, i128 %t34)
  store %"compiler/check:signMag" %t36, ptr %l16
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t37 = load %"compiler/check:signMag", ptr %l16
  store %"compiler/check:signMag" %t37, ptr %rv
  br label %ret
bb12:
  %t38 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = zext i64 %t39 to i128
  %t44 = call %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %s0, i1 false, i128 %t42)
  store %"compiler/check:signMag" %t44, ptr %l20
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load %"compiler/check:signMag", ptr %l20
  store %"compiler/check:signMag" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:signMag", ptr %rv
  ret %"compiler/check:signMag" %rr
}

define dso_local void @compiler_2fcheck_2estoredCatches(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l16 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Catch", ptr %t29, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t33 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %t32, ptr %t33)
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Catch", ptr %t36, i32 0, i32 3
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %t39, ptr %t40)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb4
bb11:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2etextBytes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l19 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load i64, ptr %l8, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t12, ptr %lp1
  %t14 = load ptr, ptr %lp1
  store { i64, ptr } %t11, ptr %t14, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_7873eed4a01e5678_b9c164dc568d47a4)
  unreachable
bb3:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb6
bb6:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t32
  %t37 = load i8, ptr %t36, !tbaa !32
  %t43 = load ptr, ptr %lp1
  %t45 = getelementptr { i64, ptr }, ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t29
  store i8 %t37, ptr %t47, !tbaa !32
  br label %bb7
bb7:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l3, !tbaa !24
  br label %bb3
bb8:
  %t52 = load ptr, ptr %lp1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:UnrollAsk" @compiler_2fcheck_3aUnrollAsk_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:UnrollAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:UnrollAsk" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/check:UnrollAsk" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/check:UnrollAsk" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:UnrollAsk" %t14, i32 %a3, 3
  store %"compiler/check:UnrollAsk" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:UnrollAsk", ptr %rv
  ret %"compiler/check:UnrollAsk" %rr
}

define dso_local %"compiler/check:heldCand" @compiler_2fcheck_3aheldCand_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:heldCand"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:heldCand" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/check:heldCand" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/check:heldCand" %t10, i64 %a2, 2
  store %"compiler/check:heldCand" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:heldCand", ptr %rv
  ret %"compiler/check:heldCand" %rr
}

define dso_local %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:roOrigin"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:roOrigin" undef, ptr %a0, 0
  %t8 = insertvalue %"compiler/check:roOrigin" %t6, i1 %a1, 1
  store %"compiler/check:roOrigin" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:roOrigin", ptr %rv
  ret %"compiler/check:roOrigin" %rr
}

define dso_local %"compiler/check:setAt" @compiler_2fcheck_3asetAt_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, i32 %a5) #0 {
entry:
  %rv = alloca %"compiler/check:setAt"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/check:setAt" undef, ptr %a0, 0
  %t16 = insertvalue %"compiler/check:setAt" %t14, i64 %a1, 1
  %t18 = insertvalue %"compiler/check:setAt" %t16, { i64, ptr } %a2, 2
  %t20 = insertvalue %"compiler/check:setAt" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/check:setAt" %t20, %"compiler/source:Span" %a4, 4
  %t24 = insertvalue %"compiler/check:setAt" %t22, i32 %a5, 5
  store %"compiler/check:setAt" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:setAt", ptr %rv
  ret %"compiler/check:setAt" %rr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
declare ptr @__olang_scope_of(ptr, ptr) noinline
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
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eanySpawned_2elocal_2e5 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
declare void @__olang_region_release(ptr) noinline
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"CVoid" }>, align 8
@.d6 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an else of this kind" }>, align 8
@.d7 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"'==' between null and a value" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'=='" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d11 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"'==' on an array or enum whose parts declare Eq (E10a)" }>, align 8
@.d12 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"the checker asked for a frame with none open" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"RefMut" }>, align 8
@.d17 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"instantiated here" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", with " }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
define linkonce_odr %"compiler/generic:AnyTable" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aAnyTable(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/generic:AnyTable"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/generic:AnyTable"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/generic:AnyTable", ptr %a0
  store %"compiler/generic:AnyTable" %t2, ptr %l1
  %t3 = getelementptr %"compiler/generic:AnyTable", ptr %l1, i32 0, i32 5
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/generic:AnyTable", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/generic:AnyTable", ptr %l1
  store %"compiler/generic:AnyTable" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:AnyTable", ptr %rv
  ret %"compiler/generic:AnyTable" %rr
}

@olang_2esole_2ecompiler_2fcheck_3apathMarks_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_home(ptr)
@olang_2esole_2ecompiler_2fcheck_3apathMarks_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3apathMarks_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e5 = weak hidden constant i1 false
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2emismatch_2elocal_2e6 = weak hidden constant i1 false
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d24 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Array<Char>" }>, align 8
@.d25 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Vec<Char>" }>, align 8
@.d26 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"StringBuilder" }>, align 8
@.d27 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c">[...]" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e57 = weak hidden constant i1 false
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3areflVal_2e3 = weak hidden constant i1 false
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Nullable" }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d35 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d38 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Max" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@.d43 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"HasDefault" }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Offset" }>, align 8
@.d45 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"BitOffset" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d48 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"HasAttr" }>, align 8
@.d49 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"from its parts" }>, align 8
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"with '" }>, align 8
@.d53 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".Copy()'" }>, align 8
@.d54 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"with 'Copy()'" }>, align 8
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

@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eunknownType_2elocal_2e6 = weak hidden constant i1 false
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"NoReturn" }>, align 8
@.d59 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Exported" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Extern" }>, align 8
@.d61 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Commutes" }>, align 8
@olang_2esole_2ecompiler_2fast_3aPath_2e1 = weak hidden constant i1 false
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
declare i64 @__olang_fmt_u128(ptr, i128)
declare i64 @__olang_fmt_u64(ptr, i64)
declare i64 @__olang_fmt_i64(ptr, i64)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@olang_loc_980c9dc24d8ab357_bac7a576dce6b97b = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eendedWhy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnySlot" %a1)
declare i1 @compiler_2fcheck_2ehasNamed(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_e1138a3bee8dfd28_1d9c93b07a3bbf3c = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyDefault(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultCopiesRecv(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNoCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_ecdebd42147a0915_28ece6113815da89 = external constant [0 x i8]
@olang_loc_b35cdd4155941ff6_f61ebbb89c67ebca = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNoMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseNotAny(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOpenInspected(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_50e8912350a6e3a7_8e15953db4ede8db = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMemberCase(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawned(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawnedResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFloat(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_87c1d8a585c28397_c34e6ad64e27f403 = external constant [0 x i8]
declare %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderVisible(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_82b0d2a61edf3c68_78216e4ccea776dc = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_e54de2b85f89ec55_546f3093ddc3c1a9 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7362f3ae74bf0a7_8f389ee36c95dce3 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCStrRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7351608f8313d577_54e294ea81fa84bb = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_3ca681ba130ec9b7_181dd48ce58d3c73 = external constant [0 x i8]
@olang_loc_f558fce6a2b003e7_933c1b66dd113bdb = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_823a266be2210958_13324b84b1c75d64 = external constant [0 x i8]
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@olang_loc_1e005f55cee69fc6_5b8ec7c8c2bbfa8a = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUntagged(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeMismatch(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
@olang_loc_1c2cb6c96b4eaee8_c1b953befa7e1dc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_7ec9c6dbabf95ed5_e8695782fec42ca9 = external constant [0 x i8]
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_bc0d2701821819b6_446831e810be806a = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartsEqual(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_40b38b3f39a757f8_637d931d9ca8f3a4 = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a993cda7425ca237_a63aa9ad7bf8dd03 = external constant [0 x i8]
declare i32 @compiler_2feffects_2eFact_2eNamed(ptr %v0, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eTru_Hf06d897493074497da237c73fecd44cc(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eTrunc_H529a97138f08f267b035acfeb838c9e0(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eTrun_Ha6093229c720e1f7d9f4f9cafee6beaf(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eLen_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %a0)
declare %"compiler/check:factRead" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2eAt_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactUndecided(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
@olang_loc_fd7c4531a6f9112_8820f62eca2e3ad6 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H7dde68908c71339667eba96ae7e6565c(ptr %v0, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeSlot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %a0)
declare %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2fcheck_2eWhyAssigned = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:nullNarrow" @compiler_2fcheck_2ecompiler_2fcheck_3anullNarrow_2eKilled(ptr %v0, ptr %v1, %"compiler/check:nullNarrow" %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:nullNarrow" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(ptr %v0, ptr %v1, %"compiler/check:narrowed" %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:narrowed" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/check:errNarrow" @compiler_2fcheck_2ecompiler_2fcheck_3aerrNarrow_2eKilled(ptr %v0, ptr %v1, %"compiler/check:errNarrow" %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eSetA_H34a7475a189e9b126454728216b32261(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:errNarrow" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0)
declare %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i1 %a4)
@olang_loc_34e811dc0ec4ef70_be6d979bbdd0f614 = external constant [0 x i8]
@olang_loc_6d548f41f8fa1c4f_7a636e93a1794123 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/check:pathMarks" @compiler_2fcheck_3apathMarks_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeNarrowed(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, i1 %a4)
declare %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentriesLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/check:litBuilder" %a3, i32 %a4, ptr %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7175167c8688a627_14932d1cc2bc03fb = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_b96b66026b1de457_faad65b8493662b3 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d674b53a564350b6_2b0ed61f741ab932 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseAfterWildcard(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWildcardNotAlone(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindsType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseAlone(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_43973455075247be_e5a2b369b5afd60a = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtNames(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, ptr %a4)
@olang_loc_65d4e94bd43e965_f352b379463fef11 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2eToArra_H3abd86491fc74d55e8f3c029e6430268(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Alt" @compiler_2ftyped_3aAlt_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2ePush_3ccompiler_2ftyped_3aAlt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecover(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3, i1 %a4)
declare { i64, ptr } @compiler_2fcheck_2epatRow(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_d6337ada1dd29694_8ce46a4ddad80bd8 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
@olang_loc_922951d2017ae1a3_4c5f7ef571495bf7 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGuardNotBool(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_ce31ac887a0ebd22_30602d5443d77806 = external constant [0 x i8]
@olang_loc_14962851291ac789_3280c2851d649aed = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_cfe87ec003b82748_d94fc5f0b326c124 = external constant [0 x i8]
declare { ptr, i32, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2eToArray_3ccompiler_2ftyped_3aAlt_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Arm" @compiler_2ftyped_3aArm_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, %"compiler/source:Span" %a0, { i64, ptr } %a1, ptr %a2, ptr %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ePush_3ccompiler_2ftyped_3aArm_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a6a47d3964202a2d_3c9966e8358b9b71 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchElse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, i1 %a5, i1 %a6)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eToArray_3ccompiler_2ftyped_3aArm_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Match" @compiler_2ftyped_3aMatch_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, i1 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTextForLength(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharsForText(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderForText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralMixed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_3aBody_2ector(ptr %out, ptr %v0, i32 %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Hb4635a51dd989c2102029bfb32ae3a2f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralDoesNotMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
@olang_loc_9311a1fdea965308_123228c6f8b4663c = external constant [0 x i8]
@olang_loc_6fa6db75017b9575_1d827b27b68e8189 = external constant [0 x i8]
@olang_loc_53860b63ce2a3756_eab450cf1ae092ca = external constant [0 x i8]
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %a0)
@olang_loc_8ba315a61b976e68_980c0dda48bb0a1c = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e50f118683988667_19bbe448830cf623 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueAfter(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_35190b9c1eca8117_f4f6af082247e833 = external constant [0 x i8]
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrAmong(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNotProduced(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchWordNotProduced(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_42b7ee39aba059b7_e006ddb4ec8c71b3 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesPure(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2efnWritten(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflName(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflKind(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eRvCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeKindType(ptr %v0, ptr %a0)
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v0, i1 %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v0, i64 %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldOffset(ptr %v0, ptr %a0, %"compiler/generic:Desc" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldBits(ptr %v0, ptr %a0, %"compiler/generic:Desc" %a1, i1 %a2)
declare { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_6b233227628ca57_40576c0d91c202cb = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutableGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_29e885d4e6352517_4af5f3c2b7cab7a3 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleDeep(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H67a76800a926d51a69ae01614492ac41(ptr %v0, ptr %a0)
declare %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__Hba570a70bf3ed1beae1003f5c2a372b5(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eLen_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %a0)
declare %"compiler/check:roArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eAt_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrReceivers(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefKept(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eLen_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %a0)
declare %"compiler/check:roFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eAt_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyFuncValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e4bef59f129059d8_aff2623e63fdc5dc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2eDropHolding_2eJudged(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2eregisteredBefore(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCycle(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropRegistered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftOutOfRange(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_a580fa67a95f3737_235a3d78a5401c13 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, i32 %a5)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_acadf2af31b93e38_18751a402ed16b84 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2esatOp(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetPlace(ptr %v0)
declare i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetHasValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_c6f64016a09fc530_b8b2abed7e41fd2c = external constant [0 x i8]
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4, i1 %a5, i64 %a6, i64 %a7, ptr %a8)
@olang_loc_37fb0db160a44e56_e10956c528b68142 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportedTypeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estdTypeModule(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeStd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownConstraint(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, i32 %a3)
@olang_loc_25d34c17bb450b97_945eabbb6879394b = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4687f82547dc647_2449c09f4feab02b = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eRevers_Hae6dce760a5809d9fde696c8bce52839(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_730002831f996ad7_70057565365c117b = external constant [0 x i8]
@olang_loc_29f8057051902f50_e91b4d9ed5822c7c = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eplainIndexes(ptr %v0, { i64, ptr } %a0)
@olang_loc_5e0248e79c45fbe7_9eea68ca563d9803 = external constant [0 x i8]
declare %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %v0, i1 %a0, i32 %a1, i64 %a2, i64 %a3)
declare %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %v0, i1 %a0, i128 %a1)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
@olang_loc_7873eed4a01e5678_b9c164dc568d47a4 = external constant [0 x i8]

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
