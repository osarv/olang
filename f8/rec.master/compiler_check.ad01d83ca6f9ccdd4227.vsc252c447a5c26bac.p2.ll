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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/check:effectPlace" = type { i64, i64, %"compiler/source:Span", ptr, i32, i32 }
%"compiler/effects:Verdict" = type { { i64, ptr }, { i64, ptr }, i1, i32, { i64, ptr }, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/check:litBuilder" = type { i64, i32 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
%"compiler/check:weakPlace" = type { { i64, [3 x i64] }, { i64, ptr }, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32, i32 }
%"compiler/check:signMag" = type { i1, i128 }
define dso_local i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
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
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t35 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %t28, { i64, ptr } %a1)
  store i1 %t35, ptr %l23
  br label %bb8
bb8:
  %t36 = load i1, ptr %l23, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyInstance(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i64
  %l23 = alloca i32
  %l26 = alloca i64
  %l31 = alloca ptr
  %l35 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l44 = alloca i32
  %l45 = alloca i32
  %l49 = alloca { i64, ptr }
  %l54 = alloca i1
  %l65 = alloca i32
  %l81 = alloca ptr
  %l84 = alloca i32
  %l85 = alloca i32
  %l96 = alloca ptr
  %rv = alloca ptr
  %t75 = alloca { i64, [5 x i64] }, align 8
  %t128 = alloca { i64, [4 x i64] }, align 8
  %t140 = alloca { i64, [4 x i64] }, align 8
  %t153 = alloca { i64, [5 x i64] }, align 8
  %t192 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l13, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t7)
  store i32 %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = load i32, ptr %l16, !tbaa !23
  %t13 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t13, ptr %l17
  br label %bb2
bb2:
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t15 = load i64, ptr %l17, !tbaa !24
  %t17 = and i64 %t15, %t14
  store i64 %t17, ptr %l5, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l23
  br label %bb3
bb3:
  %t27 = load i32, ptr %l23, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 43
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l26
  br label %bb4
bb4:
  %t33 = load i64, ptr %l26, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 43
  %t37 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb5
bb5:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 43
  store ptr %t42, ptr %l31, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l1
  %t45 = load i32, ptr %l3, !tbaa !23
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t43, %"compiler/source:Span" %t44, i32 %t45, i64 0)
  store ptr %t49, ptr %l35
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l31, !tbaa !29
  %t51 = load ptr, ptr %l35, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t50, ptr %t51)
  br label %bb7
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l6, !tbaa !23
  %t59 = load i64, ptr %l5, !tbaa !24
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t57, i32 %t58, i64 %t59)
  store i32 %t63, ptr %l41
  br label %bb8
bb8:
  %t64 = load i32, ptr %l41, !tbaa !23
  %t65 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t65, ptr %l42
  store i32 %t64, ptr %l43, !tbaa !23
  store i32 42, ptr %l44
  store i32 %a4, ptr %l45
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 43
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t70, i64 %t71)
  store { i64, ptr } %t74, ptr %l49
  br label %bb9
bb9:
  store { i64, [5 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 0
  store i64 9, ptr %t76
  %t77 = load %"compiler/source:Span", ptr %l42
  %t78 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t77, 0
  %t79 = load i32, ptr %l43, !tbaa !23
  %t80 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t78, i32 %t79, 1
  %t81 = load i32, ptr %l44, !range !{i32 0, i32 51}
  %t82 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t80, i32 %t81, 2
  %t83 = load i32, ptr %l45, !range !{i32 0, i32 4}
  %t84 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t82, i32 %t83, 3
  %t85 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t86 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t84, { i64, ptr } %t85, 4
  %t87 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t86, ptr %t87
  %t88 = load { i64, [5 x i64] }, ptr %t75
  %t90 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t88, ptr %t90
  store ptr %t90, ptr %l9, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %t92, i32 %t93)
  store i1 %t96, ptr %l54
  br label %bb10
bb10:
  %t97 = load i1, ptr %l54, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb11, label %bb12
bb11:
  %t100 = load ptr, ptr %l9, !tbaa !29
  store ptr %t100, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t102 = load i32, ptr %l6, !tbaa !23
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = icmp ne i32 %t102, %t103
  br i1 %t106, label %bb14, label %bb15
bb14:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l3, !tbaa !23
  %t115 = load i64, ptr %l5, !tbaa !24
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t113, i32 %t114, i64 %t115)
  store i32 %t119, ptr %l65
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t120 = load i32, ptr %l65, !tbaa !23
  %t121 = load %"compiler/source:Span", ptr %l1
  %t123 = load %"compiler/source:Span", ptr %l1
  %t124 = load i32, ptr %l3, !tbaa !23
  %t125 = load %"compiler/source:Span", ptr %l1
  %t126 = load i32, ptr %l6, !tbaa !23
  %t127 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t128
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 0
  store i64 2, ptr %t129
  %t131 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t125, 0
  %t133 = insertvalue { %"compiler/source:Span", i32, ptr } %t131, i32 %t126, 1
  %t135 = insertvalue { %"compiler/source:Span", i32, ptr } %t133, ptr %t127, 2
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t135, ptr %t136
  %t137 = load { i64, [4 x i64] }, ptr %t128
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t137, ptr %t139
  store { i64, [4 x i64] } zeroinitializer, ptr %t140
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 0
  store i64 3, ptr %t141
  %t143 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t123, 0
  %t145 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t143, i32 %t124, 1
  %t147 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t145, ptr %t139, 2
  %t148 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t147, i64 0, 3
  %t149 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t148, ptr %t149
  %t150 = load { i64, [4 x i64] }, ptr %t140
  %t152 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t150, ptr %t152
  store { i64, [5 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t153, i32 0, i32 0
  store i64 3, ptr %t154
  %t156 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t121, 0
  %t158 = insertvalue { %"compiler/source:Span", i32, ptr } %t156, i32 %t120, 1
  %t160 = insertvalue { %"compiler/source:Span", i32, ptr } %t158, ptr %t152, 2
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t153, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t160, ptr %t161
  %t162 = load { i64, [5 x i64] }, ptr %t153
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t162, ptr %t164
  store ptr %t164, ptr %rv
  br label %ret
bb17:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  store ptr %t171, ptr %l81, !tbaa !29
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l3, !tbaa !23
  %t176 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l84
  br label %bb18
bb18:
  %t177 = load ptr, ptr %l81, !tbaa !29
  %t178 = load i32, ptr %l84, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t179, ptr %l85
  br label %bb19
bb19:
  %t180 = load i32, ptr %l85, !range !{i32 0, i32 33}
  %t182 = trunc i64 19 to i32
  %t183 = icmp eq i32 %t180, %t182
  br i1 %t183, label %bb20, label %bb21
bb20:
  %t185 = load ptr, ptr %l9, !tbaa !29
  store ptr %t185, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t189 = load %"compiler/source:Span", ptr %l1
  %t190 = load i32, ptr %l3, !tbaa !23
  %t191 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 0
  store i64 2, ptr %t193
  %t195 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t189, 0
  %t197 = insertvalue { %"compiler/source:Span", i32, ptr } %t195, i32 %t190, 1
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } %t197, ptr %t191, 2
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t199, ptr %t200
  %t201 = load { i64, [4 x i64] }, ptr %t192
  %t203 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t201, ptr %t203
  %t207 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t187, %"compiler/source:Span" %t188, ptr %t203)
  store ptr %t207, ptr %l96
  br label %bb23
bb23:
  %t208 = load ptr, ptr %l96, !tbaa !29
  store ptr %t208, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca %"compiler/diagmsg:Msg"
  %l20 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l35 = alloca i32
  %l43 = alloca ptr
  %l46 = alloca i1
  %l48 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l66 = alloca i32
  %l71 = alloca i32
  %l74 = alloca i1
  %l79 = alloca i32
  %l81 = alloca i1
  %l84 = alloca ptr
  %l89 = alloca i32
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca i32
  %l97 = alloca i1
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca i32
  %l112 = alloca { i64, ptr }
  %l113 = alloca i32
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca { i64, ptr }
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca ptr
  %l131 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sgt i64 %t9, 2
  store i1 %t11, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l11, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l15, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t15, ptr %l16
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %v0, i64 1, i64 2, i64 %t18)
  store %"compiler/diagmsg:Msg" %t20, ptr %l19
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l16
  %t23 = load %"compiler/diagmsg:Msg", ptr %l19
  %t24 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t21, %"compiler/source:Span" %t22, %"compiler/diagmsg:Msg" %t23)
  store i64 %t24, ptr %l20
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t25, %"compiler/source:Span" %t26)
  store ptr %t29, ptr %l23
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l23, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t35, ptr %l26
  br label %bb10
bb10:
  %t36 = load i1, ptr %l26, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t37, { i64, ptr } %t38)
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l1
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t41, %"compiler/source:Span" %t42)
  store ptr %t45, ptr %l31
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l31, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb15:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i32 %t52, ptr %l35
  br label %bb16
bb16:
  %t53 = load i32, ptr %l35, !tbaa !23
  store i32 %t53, ptr %l5, !tbaa !23
  %t54 = load i32, ptr %l5, !tbaa !23
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t58 = icmp eq i32 %t54, %t55
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t60, { i64, ptr } %t61)
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l1
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t64, %"compiler/source:Span" %t65)
  store ptr %t68, ptr %l43
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l43, !tbaa !29
  store ptr %t69, ptr %rv
  br label %ret
bb21:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l5, !tbaa !23
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l46
  br label %bb22
bb22:
  %t75 = load i1, ptr %l46, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb25
bb24:
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t82 = icmp ne i64 %t80, 2
  store i1 %t82, ptr %l48, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l48, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t87 = load i32, ptr %l5, !tbaa !23
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t89 = load i32, ptr %l4, !tbaa !23
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %t85, %"compiler/source:Span" %t86, i32 %t87, { i64, ptr } %t88, i32 %t89, ptr null)
  store ptr %t95, ptr %l57
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t96 = load ptr, ptr %l57, !tbaa !29
  store ptr %t96, ptr %rv
  br label %ret
bb29:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l59, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 1
  %t102 = load ptr, ptr %t101, !tbaa !39
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t97, ptr %t102, i32 %t104)
  store ptr %t108, ptr %l63
  br label %bb30
bb30:
  %t109 = load ptr, ptr %l63, !tbaa !29
  store ptr %t109, ptr %l6, !tbaa !29
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t113 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t110)
  store i32 %t113, ptr %l66
  br label %bb31
bb31:
  %t114 = load i32, ptr %l66, !tbaa !23
  store i32 %t114, ptr %l7, !tbaa !23
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l7, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l71
  br label %bb32
bb32:
  %t125 = load i32, ptr %l71, !range !{i32 0, i32 33}
  %t127 = trunc i64 19 to i32
  %t128 = icmp eq i32 %t125, %t127
  br i1 %t128, label %bb33, label %bb34
bb33:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l7, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l79
  br label %bb35
bb34:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb36
bb35:
  %t140 = load i32, ptr %l79, !tbaa !23
  %t141 = icmp ne i32 %t140, 0
  store i1 %t141, ptr %l74, !tbaa !21
  br label %bb36
bb36:
  %t143 = load i1, ptr %l74, !tbaa !21
  br i1 %t143, label %bb37, label %bb38
bb37:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/generic:Program", ptr %t147, i32 0, i32 2
  store ptr %t149, ptr %l84, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l7, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l89
  br label %bb39
bb38:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb43
bb39:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  store ptr %t165, ptr %l92, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i32, ptr %l5, !tbaa !23
  %t170 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t170, ptr %l95
  br label %bb40
bb40:
  %t171 = load ptr, ptr %l92, !tbaa !29
  %t172 = load i32, ptr %l95, !tbaa !23
  %t173 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t173, ptr %l96
  br label %bb41
bb41:
  %t174 = load ptr, ptr %l84, !tbaa !29
  %t175 = load i32, ptr %l89, !tbaa !23
  %t176 = load i32, ptr %l96, !tbaa !23
  %t177 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t174, i32 %t175, i32 %t176)
  store i1 %t177, ptr %l97
  br label %bb42
bb42:
  %t178 = load i1, ptr %l97, !tbaa !21
  store i1 %t178, ptr %l81, !tbaa !21
  br label %bb43
bb43:
  %t179 = load i1, ptr %l81, !tbaa !21
  br i1 %t179, label %bb44, label %bb45
bb44:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load %"compiler/source:Span", ptr %l1
  %t182 = load i32, ptr %l7, !tbaa !23
  %t183 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t184 = load i32, ptr %l4, !tbaa !23
  %t185 = load ptr, ptr %l6, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t180, %"compiler/source:Span" %t181, i32 %t182, { i64, ptr } %t183, i32 %t184, ptr %t185)
  store ptr %t193, ptr %l105
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t194 = load ptr, ptr %l105, !tbaa !29
  store ptr %t194, ptr %rv
  br label %ret
bb47:
  %t195 = load i32, ptr %l7, !tbaa !23
  %t196 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t199 = icmp ne i32 %t195, %t196
  br i1 %t199, label %bb48, label %bb49
bb48:
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l109, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t202, ptr %l110
  %t203 = load i32, ptr %l5, !tbaa !23
  store i32 %t203, ptr %l111, !tbaa !23
  %t204 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t204, ptr %l112, !tbaa !27
  %t205 = load i32, ptr %l4, !tbaa !23
  store i32 %t205, ptr %l113, !tbaa !23
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l114, !tbaa !29
  %t207 = load ptr, ptr %l6, !tbaa !29
  store ptr %t207, ptr %l115, !tbaa !29
  %t208 = load i32, ptr %l5, !tbaa !23
  store i32 %t208, ptr %l116, !tbaa !23
  %t209 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t209, ptr %l117, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr ptr, ptr %t211, i64 1
  %t213 = load ptr, ptr %t212, !tbaa !39
  %t215 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t213)
  store %"compiler/source:Span" %t215, ptr %l119
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t216 = load ptr, ptr %l114, !tbaa !29
  %t217 = load ptr, ptr %l115, !tbaa !29
  %t218 = load i32, ptr %l116, !tbaa !23
  %t219 = load %"compiler/source:Span", ptr %l119
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v3, ptr %v0, ptr %t216, ptr %t217, i32 %t218, %"compiler/source:Span" %t219)
  store ptr %t220, ptr %l120
  br label %bb51
bb51:
  %t221 = load ptr, ptr %l120, !tbaa !29
  %t222 = load ptr, ptr %l109, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l110
  %t224 = load i32, ptr %l111, !tbaa !23
  %t225 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t226 = load i32, ptr %l113, !tbaa !23
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %t222, %"compiler/source:Span" %t223, i32 %t224, { i64, ptr } %t225, i32 %t226, ptr %t221)
  store ptr %t228, ptr %l122
  br label %bb52
bb52:
  %t229 = load ptr, ptr %l122, !tbaa !29
  store ptr %t229, ptr %rv
  br label %ret
bb53:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l123, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t231, ptr %l124, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr ptr, ptr %t233, i64 0
  %t235 = load ptr, ptr %t234, !tbaa !39
  store ptr %t235, ptr %l125, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t236)
  store i32 %t238, ptr %l127
  br label %bb54
bb54:
  %t239 = load ptr, ptr %l123, !tbaa !29
  %t240 = load ptr, ptr %l125, !tbaa !29
  %t241 = load i32, ptr %l127, !tbaa !23
  %t242 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v0, ptr %t239, ptr %t240, i32 %t241)
  store ptr %t242, ptr %l128
  br label %bb55
bb55:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l1
  %t247 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t243, %"compiler/source:Span" %t244)
  store ptr %t247, ptr %l131
  br label %bb56
bb56:
  %t248 = load ptr, ptr %l131, !tbaa !29
  store ptr %t248, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrRead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, i32 }
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca i1
  %l28 = alloca i32
  %l35 = alloca i1
  %l39 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l55 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l61 = alloca i32
  %l67 = alloca ptr
  %l72 = alloca { i64, i32 }
  %l76 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca i32
  %l82 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca %"compiler/source:Span"
  %l92 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i32
  %l103 = alloca ptr
  %l105 = alloca ptr
  %l109 = alloca i32
  %l110 = alloca i1
  %l113 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/source:Span"
  %l132 = alloca i64
  %l135 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l141 = alloca ptr
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t182 = alloca i64
  %t233 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a2)
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l17
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t6, ptr %l5
  %t7 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l6, !tbaa !29
  %t10 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l5, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l19, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l20, !tbaa !24
  %t14 = load i64, ptr %l20, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l21, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l20, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t25, ptr %l7, !tbaa !27
  %t26 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l5, i32 0, i32 2
  %t27 = load %"compiler/source:Span", ptr %t26
  store %"compiler/source:Span" %t27, ptr %l8
  %t29 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t31, ptr %l24
  br label %bb2
bb2:
  %t32 = load i1, ptr %l24, !tbaa !21
  br i1 %t32, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l6, !tbaa !29
  %t38 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %s0, ptr %t34, ptr %t35)
  store i32 %t38, ptr %l28
  br label %bb6
bb6:
  %t39 = load i32, ptr %l28, !tbaa !23
  store i32 %t39, ptr %l9, !tbaa !23
  %t40 = load i32, ptr %l9, !tbaa !23
  %t42 = icmp slt i32 %t40, 0
  br i1 %t42, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t45 = load i32, ptr %l9, !tbaa !23
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t49 = icmp eq i32 %t45, %t46
  br i1 %t49, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb12
bb11:
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t55 = icmp ne i64 %t53, 1
  store i1 %t55, ptr %l35, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l35, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb15
bb14:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = icmp ne i64 %t60, 0
  store i1 %t62, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t64 = load i1, ptr %l39, !tbaa !21
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t65 = load i32, ptr %l9, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = icmp ne i32 %t65, %t66
  br i1 %t69, label %bb18, label %bb19
bb17:
  br label %bb25
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l46, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t72, ptr %l47
  %t73 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t75 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrRead(ptr %s0, ptr %v0, { i64, ptr } %t73)
  store %"compiler/diagmsg:Msg" %t75, ptr %l49
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t76 = load ptr, ptr %l46, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l47
  %t78 = load %"compiler/diagmsg:Msg", ptr %l49
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t76, %"compiler/source:Span" %t77, %"compiler/diagmsg:Msg" %t78)
  store i64 %t79, ptr %l50
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t80, { i64, ptr } %t81)
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t84, %"compiler/source:Span" %t85)
  store ptr %t88, ptr %l55
  br label %bb24
bb24:
  %t89 = load ptr, ptr %l55, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t89, ptr %rv
  br label %ret
bb25:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l58, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 0
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v2, ptr %t91, ptr %t96)
  store i32 %t100, ptr %l61
  br label %bb26
bb26:
  %t101 = load i32, ptr %l61, !tbaa !23
  store i32 %t101, ptr %l10, !tbaa !23
  %t102 = load i32, ptr %l10, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t106 = icmp eq i32 %t102, %t103
  br i1 %t106, label %bb27, label %bb28
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t108, %"compiler/source:Span" %t109)
  store ptr %t112, ptr %l67
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t113 = load ptr, ptr %l67, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t113, ptr %rv
  br label %ret
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l9, !tbaa !23
  %t117 = load i32, ptr %l10, !tbaa !23
  %t121 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %t115, i32 %t116, i32 %t117)
  store { i64, i32 } %t121, ptr %l72
  br label %bb31
bb31:
  %t122 = load { i64, i32 }, ptr %l72
  store { i64, i32 } %t122, ptr %l11
  %t123 = getelementptr { i64, i32 }, ptr %l11, i32 0, i32 0
  %t124 = load i64, ptr %t123, !tbaa !24
  store i64 %t124, ptr %l12, !tbaa !24
  %t126 = getelementptr { i64, i32 }, ptr %l11, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  store i32 %t127, ptr %l13, !tbaa !23
  %t129 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t131, ptr %l76
  br label %bb32
bb32:
  %t132 = load i1, ptr %l76, !tbaa !21
  br i1 %t132, label %bb33, label %bb34
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l77, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t134, ptr %l78
  %t135 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t135, ptr %l79, !tbaa !23
  %t136 = load i64, ptr %l12, !tbaa !24
  %t138 = icmp sge i64 %t136, 0
  br i1 %t138, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  store i64 1, ptr %l82, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb37
bb37:
  %t140 = load ptr, ptr %l77, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l78
  %t142 = load i32, ptr %l79, !tbaa !23
  %t143 = load i64, ptr %l82, !tbaa !24
  %t144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t140, %"compiler/source:Span" %t141, i32 %t142, i64 %t143)
  store ptr %t144, ptr %l83
  br label %bb38
bb38:
  %t145 = load ptr, ptr %l83, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t145, ptr %rv
  br label %ret
bb39:
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = icmp slt i64 %t147, 0
  br i1 %t149, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l87, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t152, ptr %l88
  %t153 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t153, ptr %l89
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %s7, ptr %s7, ptr %t157, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i64 %t159, ptr %l92
  br label %bb42
bb41:
  br label %bb56
bb42:
  %t160 = icmp sge i64 0, 0
  br i1 %t160, label %bb43, label %bb44
bb43:
  %t162 = icmp sle i64 0, 1152921504606846975
  br i1 %t162, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb45:
  %t164 = mul i64 0, 8
  %t165 = insertvalue { i64, ptr } undef, i64 0, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t166, ptr %l95, !tbaa !27
  %t167 = icmp sge i64 0, 0
  br i1 %t167, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb47:
  %t169 = icmp sle i64 0, 1152921504606846975
  br i1 %t169, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb49:
  %t171 = mul i64 0, 8
  %t172 = insertvalue { i64, ptr } undef, i64 0, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t173, ptr %l98, !tbaa !27
  %t174 = load i32, ptr %l10, !tbaa !23
  store i32 %t174, ptr %l99, !tbaa !23
  %t175 = icmp sge i64 1, 0
  br i1 %t175, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb51:
  %t177 = icmp sle i64 1, 2305843009213693951
  br i1 %t177, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb53:
  %t179 = mul i64 1, 4
  %t180 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t179)
  %t181 = load i32, ptr %l99, !tbaa !23
  store i64 0, ptr %t182
  br label %fill.183
fill.183:
  %t186 = load i64, ptr %t182
  %t187 = icmp slt i64 %t186, 1
  br i1 %t187, label %fillb.184, label %filld.185
fillb.184:
  %t188 = getelementptr i32, ptr %t180, i64 %t186
  store i32 %t181, ptr %t188
  %t189 = add i64 %t186, 1
  store i64 %t189, ptr %t182
  br label %fill.183
filld.185:
  %t190 = insertvalue { i64, ptr } undef, i64 1, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t180, 1
  %t192 = load ptr, ptr %l87, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l88
  %t194 = load %"compiler/source:Span", ptr %l89
  %t195 = load i64, ptr %l92, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t199 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t192, %"compiler/source:Span" %t193, %"compiler/source:Span" %t194, i64 %t195, ptr null, { i64, ptr } %t196, { i64, ptr } %t197, { i64, ptr } %t191)
  store ptr %t199, ptr %l103
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb55:
  %t200 = load ptr, ptr %l103, !tbaa !29
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t200, ptr %rv
  br label %ret
bb56:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l105, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l12, !tbaa !24
  %t205 = load i32, ptr %l13, !tbaa !23
  %t209 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t203, i64 %t204, i32 %t205)
  store i32 %t209, ptr %l109
  br label %bb57
bb57:
  %t210 = load ptr, ptr %l105, !tbaa !29
  %t211 = load i32, ptr %l109, !tbaa !23
  %t212 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t210, i32 %t211)
  store i1 %t212, ptr %l110
  br label %bb58
bb58:
  %t213 = load i1, ptr %l110, !tbaa !21
  br i1 %t213, label %bb59, label %bb60
bb59:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load %"compiler/source:Span", ptr %l1
  %t218 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t214, %"compiler/source:Span" %t215)
  store ptr %t218, ptr %l113
  br label %bb61
bb60:
  br label %bb62
bb61:
  %t219 = load ptr, ptr %l113, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t219, ptr %rv
  br label %ret
bb62:
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l115, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t222, ptr %l116
  %t223 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t223, ptr %l117
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l12, !tbaa !24
  %t226 = load i32, ptr %l13, !tbaa !23
  %t230 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t224, i64 %t225, i32 %t226)
  store i32 %t230, ptr %l121
  br label %bb63
bb63:
  %t231 = load i64, ptr %l12, !tbaa !24
  %t232 = load i32, ptr %l13, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t233
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 0
  store i64 1, ptr %t234
  %t235 = load %"compiler/source:Span", ptr %l117
  %t236 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t235, 0
  %t237 = load i32, ptr %l121, !tbaa !23
  %t238 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t236, i32 %t237, 1
  %t240 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t238, i64 %t231, 2
  %t242 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t240, i32 %t232, 3
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t242, ptr %t243
  %t244 = load { i64, [4 x i64] }, ptr %t233
  %t246 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t244, ptr %t246
  %t247 = load ptr, ptr %l115, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l116
  %t250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v4, ptr %v4, ptr %t247, %"compiler/source:Span" %t248, ptr %t246)
  store ptr %t250, ptr %l126
  br label %bb64
bb64:
  %t251 = load ptr, ptr %l126, !tbaa !29
  store ptr %t251, ptr %l14, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l127, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t253, ptr %l128
  %t254 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t254, ptr %l129
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t260 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %s0, ptr %s0, ptr %t258, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i64 %t260, ptr %l132
  br label %bb65
bb65:
  %t261 = icmp sge i64 0, 0
  br i1 %t261, label %bb66, label %bb67
bb66:
  %t263 = icmp sle i64 0, 1152921504606846975
  br i1 %t263, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_f2b973fcab239364_d01bf2cd68c3b6a8)
  unreachable
bb68:
  %t265 = mul i64 0, 8
  %t266 = insertvalue { i64, ptr } undef, i64 0, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t267, ptr %l135, !tbaa !27
  %t268 = load ptr, ptr %l14, !tbaa !29
  %t269 = mul i64 1, 8
  %t270 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t269)
  %t271 = insertvalue { i64, ptr } undef, i64 1, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  store { i64, ptr } %t272, ptr %l137, !tbaa !27
  %t274 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr ptr, ptr %t275, i64 0
  store ptr %t268, ptr %t276, !tbaa !39
  %t277 = icmp sge i64 0, 0
  br i1 %t277, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_f2b973fcab239364_d01bf2cd68c3b6a8)
  unreachable
bb70:
  %t279 = icmp sle i64 0, 2305843009213693951
  br i1 %t279, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_1778b9e962c2fcc7_ba3812a15af6740b)
  unreachable
bb72:
  %t281 = mul i64 0, 4
  %t282 = insertvalue { i64, ptr } undef, i64 0, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t284 = load ptr, ptr %l127, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l128
  %t286 = load %"compiler/source:Span", ptr %l129
  %t287 = load i64, ptr %l132, !tbaa !24
  %t288 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t289 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t291 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t284, %"compiler/source:Span" %t285, %"compiler/source:Span" %t286, i64 %t287, ptr null, { i64, ptr } %t288, { i64, ptr } %t289, { i64, ptr } %t283)
  store ptr %t291, ptr %l141
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_1778b9e962c2fcc7_ba3812a15af6740b)
  unreachable
bb74:
  %t292 = load ptr, ptr %l141, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t292, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
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
  %l10 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
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
  store ptr %t5, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t6 = load ptr, ptr %l13, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l13, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 1
  store i1 %t12, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l14, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l4, !tbaa !24
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t28, i32 0, i32 3
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load i32, ptr %l5, !tbaa !23
  %t36 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aGlobal(ptr %v0, ptr %v1, ptr %t32, ptr %t33, i64 %t34, i32 %t35, i32 %t36)
  br label %bb9
bb9:
  br label %bb51
bb10:
  %t42 = load ptr, ptr %l2, !tbaa !29
  store ptr %t42, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t43 = load ptr, ptr %l28, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 8}
  %t49 = icmp eq i64 %t47, 2
  store i1 %t49, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t50 = load i1, ptr %l29, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l6, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t59 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t57, ptr %t58, ptr %t59)
  br label %bb16
bb16:
  br label %bb51
bb17:
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t65 = load ptr, ptr %l38, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb18, label %bb19
bb18:
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 8}
  %t71 = icmp eq i64 %t69, 3
  store i1 %t71, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l39, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t81 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t79, ptr %t80, ptr %t81)
  br label %bb23
bb23:
  br label %bb51
bb24:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t87 = load ptr, ptr %l48, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 4
  store i1 %t93, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l49, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l8, !tbaa !29
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Elem", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, ptr %t106)
  br label %bb30
bb30:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Elem", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t111, ptr %t112, ptr %t116)
  br label %bb31
bb31:
  br label %bb51
bb32:
  %t121 = load ptr, ptr %l2, !tbaa !29
  store ptr %t121, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t122 = load ptr, ptr %l64, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb33, label %bb34
bb33:
  %t125 = load ptr, ptr %l64, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 8}
  %t128 = icmp eq i64 %t126, 5
  store i1 %t128, ptr %l65, !tbaa !21
  br label %bb34
bb34:
  %t129 = load i1, ptr %l65, !tbaa !21
  br i1 %t129, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t132, i32 0, i32 2
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l9, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t138 = load ptr, ptr %l9, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Payload", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t136, ptr %t137, ptr %t141)
  br label %bb38
bb38:
  br label %bb51
bb39:
  %t146 = load ptr, ptr %l2, !tbaa !29
  store ptr %t146, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t147 = load ptr, ptr %l75, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb40, label %bb41
bb40:
  %t150 = load ptr, ptr %l75, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 8}
  %t153 = icmp eq i64 %t151, 6
  store i1 %t153, ptr %l76, !tbaa !21
  br label %bb41
bb41:
  %t154 = load i1, ptr %l76, !tbaa !21
  br i1 %t154, label %bb42, label %bb43
bb42:
  %t155 = load ptr, ptr %l2, !tbaa !29
  %t157 = getelementptr { i64, [4 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t157, i32 0, i32 2
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l10, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t163 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t161, ptr %t162, ptr %t163)
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
  call void @__olang_check_failed(ptr @olang_loc_b2a10b57ca8f7dfa_ebdfac3cc9f6695e)
  unreachable
bb51:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i1
  %l43 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l52 = alloca i32
  %l69 = alloca ptr
  %l70 = alloca i32
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca ptr
  %l85 = alloca i64
  %l91 = alloca i1
  %l95 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l146 = alloca ptr
  %l151 = alloca i32
  %l160 = alloca ptr
  %l165 = alloca i32
  %l166 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l24, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l24, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l2, !tbaa !23
  %t14 = icmp eq i32 %t12, 0
  store i1 %t14, ptr %l28, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l28, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb10
bb8:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/check:b5aWalk", ptr %t17, i32 0, i32 5
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v1, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l35
  br label %bb9
bb9:
  %t24 = load i1, ptr %l35, !tbaa !21
  store i1 %t24, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t25 = load i1, ptr %l31, !tbaa !21
  br i1 %t25, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr %"compiler/check:b5aWalk", ptr %t26, i32 0, i32 5
  %t29 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v1, ptr %t28, i32 %t29, i1 true)
  br label %bb14
bb14:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l43
  br label %bb15
bb15:
  %t42 = load i32, ptr %l43, !range !{i32 0, i32 33}
  store i32 %t42, ptr %l4
  %t43 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t45 = trunc i64 20 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l46, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l47, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l52
  br label %bb19
bb19:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = add i64 %t60, 1
  %t63 = load ptr, ptr %l46, !tbaa !29
  %t64 = load ptr, ptr %l47, !tbaa !29
  %t65 = load i32, ptr %l52, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t63, ptr %t64, i32 %t65, i64 %t62)
  br label %bb20
bb20:
  br label %bb86
bb21:
  %t67 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t69 = trunc i64 18 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb60
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t73 = insertvalue [2 x { i64, ptr }] %t72, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t75 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store [2 x { i64, ptr }] %t73, ptr %t75
  store ptr %t75, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t77 = load ptr, ptr %l5
  store i64 2, ptr %l7, !tbaa !24
  br label %bb25
bb25:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb26, label %bb27
bb26:
  br label %bb37
bb27:
  br label %bb28
bb28:
  %t88 = load ptr, ptr %l5
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = getelementptr [2 x { i64, ptr }], ptr %t88, i64 0, i64 %t89
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !37
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l69, !tbaa !29
  %t99 = load i32, ptr %l2, !tbaa !23
  store i32 %t99, ptr %l70, !tbaa !23
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = getelementptr %"compiler/types:Table", ptr %t105, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l73, !tbaa !29
  %t109 = load ptr, ptr %l73, !tbaa !29
  %t110 = call ptr @__olang_scope_of(ptr %t109, ptr null)
  %t111 = ptrtoint ptr %t110 to i64
  %t113 = inttoptr i64 %t111 to ptr
  %t114 = load ptr, ptr @__olang_prog_scope
  %t115 = load ptr, ptr %l73, !tbaa !29
  %t117 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t113, ptr %t114, ptr %t115, { i64, ptr } %t93)
  store i32 %t117, ptr %l76
  br label %bb29
bb29:
  %t118 = load ptr, ptr %l69, !tbaa !29
  %t119 = load i32, ptr %l70, !tbaa !23
  %t120 = load i32, ptr %l76, !tbaa !23
  %t121 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t118, i32 %t119, i32 %t120)
  store i64 %t121, ptr %l77
  br label %bb30
bb30:
  %t122 = load i64, ptr %l77, !tbaa !24
  store i64 %t122, ptr %l9, !tbaa !24
  %t123 = load i64, ptr %l9, !tbaa !24
  %t125 = icmp sge i64 %t123, 0
  br i1 %t125, label %bb31, label %bb32
bb31:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l80, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l81, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l9, !tbaa !24
  %t131 = load i32, ptr %l2, !tbaa !23
  %t135 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStrBody(ptr %v0, ptr %t129, i64 %t130, i32 %t131)
  store i64 %t135, ptr %l85
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t136 = load ptr, ptr %l80, !tbaa !29
  %t137 = load ptr, ptr %l81, !tbaa !29
  %t138 = load i64, ptr %l85, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %t136, ptr %t137, i64 %t138)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb35:
  br label %bb36
bb36:
  %t139 = load i64, ptr %l6, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l6, !tbaa !24
  br label %bb25
bb37:
  call void @__olang_scope_close(ptr %s4)
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l2, !tbaa !23
  %t150 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l91
  br label %bb38
bb38:
  %t151 = load i1, ptr %l91, !tbaa !21
  %t152 = xor i1 %t151, true
  br i1 %t152, label %bb39, label %bb40
bb39:
  br label %ret
bb40:
  br label %bb41
bb41:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  store ptr %t159, ptr %l95, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  %t166 = load i32, ptr %l2, !tbaa !23
  %t169 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l100
  br label %bb42
bb42:
  %t170 = load ptr, ptr %l95, !tbaa !29
  %t171 = load i32, ptr %l100, !tbaa !23
  %t172 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t170, i32 %t171)
  store { i64, ptr } %t172, ptr %l101
  br label %bb43
bb43:
  %t173 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t173, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  store i64 %t176, ptr %l12, !tbaa !24
  br label %bb44
bb44:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t182 = icmp slt i64 %t178, %t179
  %t184 = xor i1 %t182, true
  br i1 %t184, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t186, ptr %l108, !tbaa !27
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i32, ptr %t190, i64 %t187
  %t192 = load i32, ptr %t191, !tbaa !33
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = load i64, ptr %l3, !tbaa !24
  %t199 = add i64 %t197, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t194, ptr %t195, i32 %t192, i64 %t199)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t204 = load i64, ptr %l11, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l11, !tbaa !24
  br label %bb44
bb50:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/generic:Program", ptr %t211, i32 0, i32 2
  store ptr %t213, ptr %l120, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 2
  %t220 = load i32, ptr %l2, !tbaa !23
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t219, i32 %t220)
  store i32 %t223, ptr %l125
  br label %bb51
bb51:
  %t224 = load ptr, ptr %l120, !tbaa !29
  %t225 = load i32, ptr %l125, !tbaa !23
  %t226 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t224, i32 %t225)
  store { i64, ptr } %t226, ptr %l126
  br label %bb52
bb52:
  %t227 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t227, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  store i64 %t230, ptr %l16, !tbaa !24
  br label %bb53
bb53:
  %t232 = load i64, ptr %l15, !tbaa !24
  %t233 = load i64, ptr %l16, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb54, label %bb55
bb54:
  br label %bb59
bb55:
  br label %bb56
bb56:
  %t240 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t240, ptr %l133, !tbaa !27
  %t241 = load i64, ptr %l15, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 %t241
  %t246 = load i32, ptr %t245, !tbaa !33
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t251 = load i64, ptr %l3, !tbaa !24
  %t253 = add i64 %t251, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t248, ptr %t249, i32 %t246, i64 %t253)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t258 = load i64, ptr %l15, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l15, !tbaa !24
  br label %bb53
bb59:
  br label %bb86
bb60:
  %t262 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t264 = trunc i64 19 to i32
  %t265 = icmp eq i32 %t262, %t264
  br i1 %t265, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l145, !tbaa !29
  %t268 = load ptr, ptr %l1, !tbaa !29
  store ptr %t268, ptr %l146, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 2
  %t275 = load i32, ptr %l2, !tbaa !23
  %t278 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t274, i32 %t275)
  store i32 %t278, ptr %l151
  br label %bb64
bb64:
  %t279 = load i64, ptr %l3, !tbaa !24
  %t281 = add i64 %t279, 1
  %t282 = load ptr, ptr %l145, !tbaa !29
  %t283 = load ptr, ptr %l146, !tbaa !29
  %t284 = load i32, ptr %l151, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t282, ptr %t283, i32 %t284, i64 %t281)
  br label %bb65
bb65:
  br label %bb86
bb66:
  %t286 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t288 = trunc i64 22 to i32
  %t289 = icmp eq i32 %t286, %t288
  br i1 %t289, label %bb67, label %bb68
bb67:
  br label %bb71
bb68:
  %t291 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t293 = trunc i64 23 to i32
  %t294 = icmp eq i32 %t291, %t293
  br i1 %t294, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb81
bb71:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/check:Checker", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 2
  store ptr %t301, ptr %l160, !tbaa !29
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t307 = getelementptr %"compiler/generic:Program", ptr %t305, i32 0, i32 2
  %t308 = load i32, ptr %l2, !tbaa !23
  %t311 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t307, i32 %t308)
  store i32 %t311, ptr %l165
  br label %bb72
bb72:
  %t312 = load ptr, ptr %l160, !tbaa !29
  %t313 = load i32, ptr %l165, !tbaa !23
  %t314 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t312, i32 %t313)
  store { i64, ptr } %t314, ptr %l166
  br label %bb73
bb73:
  %t315 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t315, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t316 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  store i64 %t318, ptr %l20, !tbaa !24
  br label %bb74
bb74:
  %t320 = load i64, ptr %l19, !tbaa !24
  %t321 = load i64, ptr %l20, !tbaa !24
  %t324 = icmp slt i64 %t320, %t321
  %t326 = xor i1 %t324, true
  br i1 %t326, label %bb75, label %bb76
bb75:
  br label %bb80
bb76:
  br label %bb77
bb77:
  %t328 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t328, ptr %l173, !tbaa !27
  %t329 = load i64, ptr %l19, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr i32, ptr %t332, i64 %t329
  %t334 = load i32, ptr %t333, !tbaa !33
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load ptr, ptr %l1, !tbaa !29
  %t339 = load i64, ptr %l3, !tbaa !24
  %t341 = add i64 %t339, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStr(ptr %v0, ptr %v1, ptr %t336, ptr %t337, i32 %t334, i64 %t341)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t346 = load i64, ptr %l19, !tbaa !24
  %t348 = add i64 %t346, 1
  store i64 %t348, ptr %l19, !tbaa !24
  br label %bb74
bb80:
  br label %bb86
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_4235fda77c59946a_df60ad3f0caa2a66)
  unreachable
bb86:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNameTaken(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l73 = alloca i1
  %l75 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i1
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l88 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l98 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca i64
  %l106 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t13, i32 %t14, i32 %t15)
  store i1 %t19, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t20 = load i1, ptr %l14, !tbaa !21
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l17, !tbaa !24
  %t25 = load i64, ptr %l17, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l18, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l17, !tbaa !24
  %t35 = mul i64 %t34, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %t33, i64 %t35, i1 false)
  %t36 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t36, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t37 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t38)
  store i1 %t40, ptr %l20
  br label %bb10
bb10:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb14
bb12:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t44, ptr %l23
  br label %bb13
bb13:
  %t45 = load i1, ptr %l23, !tbaa !21
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l21, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb18
bb16:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t47, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t49, ptr %l26
  br label %bb17
bb17:
  %t50 = load i1, ptr %l26, !tbaa !21
  store i1 %t50, ptr %l24, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb22
bb20:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t54, ptr %l29
  br label %bb21
bb21:
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb22
bb22:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb26
bb24:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t59, ptr %l32
  br label %bb25
bb25:
  %t60 = load i1, ptr %l32, !tbaa !21
  store i1 %t60, ptr %l30, !tbaa !21
  br label %bb26
bb26:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb30
bb28:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t64, ptr %l35
  br label %bb29
bb29:
  %t65 = load i1, ptr %l35, !tbaa !21
  store i1 %t65, ptr %l33, !tbaa !21
  br label %bb30
bb30:
  %t66 = load i1, ptr %l33, !tbaa !21
  br i1 %t66, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb34
bb32:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t67, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t69, ptr %l38
  br label %bb33
bb33:
  %t70 = load i1, ptr %l38, !tbaa !21
  store i1 %t70, ptr %l36, !tbaa !21
  br label %bb34
bb34:
  %t71 = load i1, ptr %l36, !tbaa !21
  br i1 %t71, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb38
bb36:
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t72, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t74, ptr %l41
  br label %bb37
bb37:
  %t75 = load i1, ptr %l41, !tbaa !21
  store i1 %t75, ptr %l39, !tbaa !21
  br label %bb38
bb38:
  %t76 = load i1, ptr %l39, !tbaa !21
  br i1 %t76, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb42
bb40:
  %t77 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t79, ptr %l44
  br label %bb41
bb41:
  %t80 = load i1, ptr %l44, !tbaa !21
  store i1 %t80, ptr %l42, !tbaa !21
  br label %bb42
bb42:
  %t81 = load i1, ptr %l42, !tbaa !21
  br i1 %t81, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb46
bb44:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t82, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t84, ptr %l47
  br label %bb45
bb45:
  %t85 = load i1, ptr %l47, !tbaa !21
  store i1 %t85, ptr %l45, !tbaa !21
  br label %bb46
bb46:
  %t86 = load i1, ptr %l45, !tbaa !21
  br i1 %t86, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb50
bb48:
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t89, ptr %l50
  br label %bb49
bb49:
  %t90 = load i1, ptr %l50, !tbaa !21
  store i1 %t90, ptr %l48, !tbaa !21
  br label %bb50
bb50:
  %t91 = load i1, ptr %l48, !tbaa !21
  br i1 %t91, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb54
bb52:
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t92, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t94, ptr %l53
  br label %bb53
bb53:
  %t95 = load i1, ptr %l53, !tbaa !21
  store i1 %t95, ptr %l51, !tbaa !21
  br label %bb54
bb54:
  %t96 = load i1, ptr %l51, !tbaa !21
  br i1 %t96, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb58
bb56:
  %t97 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t97, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t99, ptr %l56
  br label %bb57
bb57:
  %t100 = load i1, ptr %l56, !tbaa !21
  store i1 %t100, ptr %l54, !tbaa !21
  br label %bb58
bb58:
  %t101 = load i1, ptr %l54, !tbaa !21
  br i1 %t101, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb62
bb60:
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t102, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t104, ptr %l59
  br label %bb61
bb61:
  %t105 = load i1, ptr %l59, !tbaa !21
  store i1 %t105, ptr %l57, !tbaa !21
  br label %bb62
bb62:
  %t106 = load i1, ptr %l57, !tbaa !21
  br i1 %t106, label %bb63, label %bb64
bb63:
  store { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t107, ptr %l61, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l62, !tbaa !24
  %t110 = load i64, ptr %l62, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l63, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l62, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t121, ptr %l61, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l1, !tbaa !23
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t127, ptr %l66
  br label %bb66
bb66:
  %t128 = load i1, ptr %l66, !tbaa !21
  br i1 %t128, label %bb67, label %bb68
bb67:
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t131, ptr %l69
  br label %bb69
bb68:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb90
bb69:
  %t132 = load i1, ptr %l69, !tbaa !21
  br i1 %t132, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb73
bb71:
  %t133 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t133, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t135, ptr %l72
  br label %bb72
bb72:
  %t136 = load i1, ptr %l72, !tbaa !21
  store i1 %t136, ptr %l70, !tbaa !21
  br label %bb73
bb73:
  %t137 = load i1, ptr %l70, !tbaa !21
  br i1 %t137, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb77
bb75:
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t138, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t140, ptr %l75
  br label %bb76
bb76:
  %t141 = load i1, ptr %l75, !tbaa !21
  store i1 %t141, ptr %l73, !tbaa !21
  br label %bb77
bb77:
  %t142 = load i1, ptr %l73, !tbaa !21
  br i1 %t142, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb81
bb79:
  %t143 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t143, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t145, ptr %l78
  br label %bb80
bb80:
  %t146 = load i1, ptr %l78, !tbaa !21
  store i1 %t146, ptr %l76, !tbaa !21
  br label %bb81
bb81:
  %t147 = load i1, ptr %l76, !tbaa !21
  br i1 %t147, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb85
bb83:
  %t148 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t150 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t148, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t150, ptr %l81
  br label %bb84
bb84:
  %t151 = load i1, ptr %l81, !tbaa !21
  store i1 %t151, ptr %l79, !tbaa !21
  br label %bb85
bb85:
  %t152 = load i1, ptr %l79, !tbaa !21
  br i1 %t152, label %bb86, label %bb87
bb86:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb89
bb87:
  %t153 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t155 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t153, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t155, ptr %l84
  br label %bb88
bb88:
  %t156 = load i1, ptr %l84, !tbaa !21
  store i1 %t156, ptr %l82, !tbaa !21
  br label %bb89
bb89:
  %t157 = load i1, ptr %l82, !tbaa !21
  store i1 %t157, ptr %l67, !tbaa !21
  br label %bb90
bb90:
  %t158 = load i1, ptr %l67, !tbaa !21
  br i1 %t158, label %bb91, label %bb92
bb91:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l85, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t159, ptr %l86, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  store i64 %t161, ptr %l87, !tbaa !24
  %t162 = load i64, ptr %l87, !tbaa !24
  %t163 = mul i64 %t162, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l88, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l87, !tbaa !24
  %t172 = mul i64 %t171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t168, ptr %t170, i64 %t172, i1 false)
  %t173 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t173, ptr %l86, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t174 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t174, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t177 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t175, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t177, ptr %l90
  br label %bb94
bb94:
  %t178 = load i1, ptr %l90, !tbaa !21
  br i1 %t178, label %bb95, label %bb96
bb95:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i32, ptr %l1, !tbaa !23
  %t183 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t179, i32 %t180)
  store i1 %t183, ptr %l94
  br label %bb97
bb96:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb98
bb97:
  %t184 = load i1, ptr %l94, !tbaa !21
  store i1 %t184, ptr %l91, !tbaa !21
  br label %bb98
bb98:
  %t185 = load i1, ptr %l91, !tbaa !21
  br i1 %t185, label %bb99, label %bb100
bb99:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l1, !tbaa !23
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v0, ptr %t186, i32 %t187)
  store ptr %t190, ptr %l98
  br label %bb101
bb100:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb102
bb101:
  %t191 = load ptr, ptr %l98, !tbaa !29
  %t193 = getelementptr %"compiler/check:rawTable", ptr %t191, i32 0, i32 0
  %t194 = load i32, ptr %t193, !tbaa !23
  %t195 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t198 = icmp ne i32 %t194, %t195
  store i1 %t198, ptr %l95, !tbaa !21
  br label %bb102
bb102:
  %t200 = load i1, ptr %l95, !tbaa !21
  br i1 %t200, label %bb103, label %bb104
bb103:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t201, ptr %l104, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  store i64 %t203, ptr %l105, !tbaa !24
  %t204 = load i64, ptr %l105, !tbaa !24
  %t205 = mul i64 %t204, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t205)
  %t207 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  store { i64, ptr } %t208, ptr %l106, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = load i64, ptr %l105, !tbaa !24
  %t214 = mul i64 %t213, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t210, ptr %t212, i64 %t214, i1 false)
  %t215 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t215, ptr %l104, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t216 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t216, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t217, ptr %l108, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  store i64 %t219, ptr %l109, !tbaa !24
  %t220 = load i64, ptr %l109, !tbaa !24
  %t221 = mul i64 %t220, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t221)
  %t223 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  store { i64, ptr } %t224, ptr %l110, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = load i64, ptr %l109, !tbaa !24
  %t230 = mul i64 %t229, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t226, ptr %t228, i64 %t230, i1 false)
  %t231 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t231, ptr %l108, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t232 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t232, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i64 %a4, i64 %a5, i1 %a6, i32 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l28 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 28
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  store i1 %t6, ptr %l8, !tbaa !21
  %t8 = load i1, ptr %l8, !tbaa !21
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l14, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t11)
  store ptr %t13, ptr %l16
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t14 = load ptr, ptr %l16, !tbaa !29
  %t16 = getelementptr %"compiler/check:frame", ptr %t14, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 28
  store i64 %t17, ptr %t20, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 29
  store %"compiler/source:Span" %a1, ptr %t25
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargDefault(ptr %v0, ptr %v1, ptr %v2, ptr %t26, %"compiler/source:Span" %a2, ptr %a3, i64 %a4, i64 %a5, i1 %a6, i32 %a7)
  store ptr %t40, ptr %l28
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l28, !tbaa !29
  store ptr %t41, ptr %l9, !tbaa !29
  %t42 = load i1, ptr %l8, !tbaa !21
  br i1 %t42, label %bb6, label %bb7
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 28
  store i64 -1, ptr %t46, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l9, !tbaa !29
  store ptr %t47, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca %"compiler/names:Ref"
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l65 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l69 = alloca i1
  %l72 = alloca i1
  %l75 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca %"compiler/source:Span"
  %l82 = alloca { i64, ptr }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l85 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 1
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
  store ptr %t14, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t15 = load ptr, ptr %l12, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 28}
  %t21 = icmp eq i64 %t19, 0
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", ptr }, ptr %t26, i32 0, i32 1
  %t28 = load ptr, ptr %t27
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32 }, ptr %t30, i32 0, i32 0
  %t32 = load %"compiler/source:Span", ptr %t31
  store %"compiler/source:Span" %t32, ptr %l3
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32 }, ptr %t40, i32 0, i32 1
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l4, !tbaa !23
  br label %bb19
bb9:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l22, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 9}
  %t51 = icmp eq i64 %t49, 4
  store i1 %t51, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t52 = load i1, ptr %l23, !tbaa !21
  br i1 %t52, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr }, ptr %t55, i32 0, i32 1
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb16
bb14:
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 28}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t65 = load i1, ptr %l29, !tbaa !21
  store i1 %t65, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t66 = load i1, ptr %l26, !tbaa !21
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr }, ptr %t69, i32 0, i32 1
  %t71 = load ptr, ptr %t70
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32 }, ptr %t73, i32 0, i32 0
  %t75 = load %"compiler/source:Span", ptr %t74
  store %"compiler/source:Span" %t75, ptr %l3
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr }, ptr %t79, i32 0, i32 1
  %t81 = load ptr, ptr %t80
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32 }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l4, !tbaa !23
  br label %bb19
bb18:
  br label %bb44
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  store ptr %t93, ptr %l40, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t94)
  store ptr %t96, ptr %l42
  br label %bb20
bb20:
  %t97 = load ptr, ptr %l42, !tbaa !29
  %t99 = getelementptr %"compiler/check:frame", ptr %t97, i32 0, i32 2
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t103 = load ptr, ptr %l40, !tbaa !29
  %t106 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t103, i64 %t100, i32 %t102)
  store %"compiler/names:Ref" %t106, ptr %l46
  br label %bb21
bb21:
  %t107 = load %"compiler/names:Ref", ptr %l46
  store %"compiler/names:Ref" %t107, ptr %l5
  %t108 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t109 = load i32, ptr %t108, !range !{i32 0, i32 9}
  %t111 = trunc i64 0 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s2
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l49, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t115, ptr %l50
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l4, !tbaa !23
  %t120 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s2, ptr %t116, i32 %t117)
  store { i64, ptr } %t120, ptr %l53
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t121 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  %t123 = extractvalue { i64, ptr } %t121, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t129 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseUnknownName(ptr %s2, ptr %v0, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t129, ptr %l55
  br label %bb25
bb25:
  %t130 = load ptr, ptr %l49, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l50
  %t132 = load %"compiler/diagmsg:Msg", ptr %l55
  %t133 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t130, %"compiler/source:Span" %t131, %"compiler/diagmsg:Msg" %t132)
  store i64 %t133, ptr %l56
  br label %bb26
bb26:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 101
  store ptr %t136, ptr %l58, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t137)
  store ptr %t139, ptr %l60
  br label %bb27
bb27:
  %t140 = load ptr, ptr %l60, !tbaa !29
  %t142 = getelementptr %"compiler/check:frame", ptr %t140, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = load i32, ptr %l4, !tbaa !23
  %t146 = sext i32 %t144 to i64
  %t149 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t143, i64 %t146)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t149, ptr %l65
  br label %bb28
bb28:
  %t150 = load ptr, ptr %l58, !tbaa !29
  %t151 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l65
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t150, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t151, i1 true)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb30:
  %t153 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t154 = load i32, ptr %t153, !range !{i32 0, i32 9}
  %t156 = trunc i64 1 to i32
  %t157 = icmp eq i32 %t154, %t156
  br i1 %t157, label %bb31, label %bb32
bb31:
  %t159 = load i64, ptr %l2, !tbaa !24
  %t161 = icmp sge i64 %t159, 0
  store i1 %t161, ptr %l69, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb33
bb33:
  %t163 = load i1, ptr %l69, !tbaa !21
  br i1 %t163, label %bb34, label %bb35
bb34:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i32, ptr %l4, !tbaa !23
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t164, i32 %t165)
  store i64 %t168, ptr %l75
  br label %bb36
bb35:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb37
bb36:
  %t169 = load i64, ptr %l2, !tbaa !24
  %t170 = load i64, ptr %l75, !tbaa !24
  %t172 = icmp eq i64 %t170, %t169
  store i1 %t172, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t174 = load i1, ptr %l72, !tbaa !21
  br i1 %t174, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s3
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l78, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t176, ptr %l79
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l4, !tbaa !23
  %t181 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s3, ptr %t177, i32 %t178)
  store { i64, ptr } %t181, ptr %l82
  br label %bb40
bb39:
  br label %bb43
bb40:
  %t182 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsSubject(ptr %s3, ptr %v0, { i64, ptr } %t188)
  store %"compiler/diagmsg:Msg" %t190, ptr %l84
  br label %bb41
bb41:
  %t191 = load ptr, ptr %l78, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l79
  %t193 = load %"compiler/diagmsg:Msg", ptr %l84
  %t194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t191, %"compiler/source:Span" %t192, %"compiler/diagmsg:Msg" %t193)
  store i64 %t194, ptr %l85
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_3cf4b7359f29899a_630bdcef83a186)
  unreachable
bb49:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i32
  %l9 = alloca { i64, ptr }
  %l13 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:CaseDecl", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"compiler/source:Span", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/ast:CaseDecl", ptr %t6, i32 0, i32 0
  %t9 = getelementptr %"compiler/source:Span", ptr %t8, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/ast:CaseDecl", ptr %t12, i32 0, i32 1
  %t15 = load i32, ptr %t14, !tbaa !23
  %t18 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %a0, i32 %t15)
  store { i64, ptr } %t18, ptr %l9
  br label %bb1
bb1:
  %t19 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  %t22 = trunc i64 %t20 to i32
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = add i32 %t23, %t22
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t26, i32 %t25)
  store %"compiler/source:Span" %t28, ptr %l13
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t29, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp13 = alloca ptr
  %lp14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca ptr
  %l30 = alloca i1
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca ptr
  %l49 = alloca i1
  %l60 = alloca i1
  %l66 = alloca { i64, ptr }
  %l68 = alloca i1
  %l72 = alloca { i64, ptr }
  %l74 = alloca i1
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i32
  %l84 = alloca i1
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l117 = alloca ptr
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l125 = alloca ptr
  %l130 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l150 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l152 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l153 = alloca ptr
  %l158 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l160 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca ptr
  %l166 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t2 = load ptr, ptr %l15, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = load i1, ptr %l2, !tbaa !21
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t16, ptr %t17, i1 %t18, { i64, ptr } %t19, ptr %t20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l26
  br label %bb6
bb6:
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v4, ptr %l26)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l28
  br label %bb7
bb7:
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %rv
  br label %ret
bb8:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t31 = load ptr, ptr %l29, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l29, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 28}
  %t37 = icmp eq i64 %t35, 3
  store i1 %t37, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l30, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 113}
  store i32 %t43, ptr %l6
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l7, !tbaa !29
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t51 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t53 = trunc i64 47 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t58 = load i1, ptr %l2, !tbaa !21
  %t60 = xor i1 %t58, true
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t56, ptr %t57, i1 %t60, { i64, ptr } %t61, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l45
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v4, ptr %l45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l47
  br label %bb17
bb17:
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %rv
  br label %ret
bb18:
  br label %bb85
bb19:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t73 = load ptr, ptr %l48, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t76 = load ptr, ptr %l48, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 28}
  %t79 = icmp eq i64 %t77, 5
  store i1 %t79, ptr %l49, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l49, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84, !range !{i32 0, i32 113}
  store i32 %t85, ptr %l8
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l9, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t95, i32 0, i32 3
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l10, !tbaa !29
  br label %bb24
bb23:
  br label %bb80
bb24:
  %t99 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t101 = trunc i64 93 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb27
bb26:
  %t104 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t106 = trunc i64 94 to i32
  %t107 = icmp eq i32 %t104, %t106
  store i1 %t107, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t109 = load i1, ptr %l60, !tbaa !21
  br i1 %t109, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t110 = load ptr, ptr %l9, !tbaa !29
  store ptr %t110, ptr %l11, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l9, !tbaa !29
  %t116 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPath(ptr %v0, ptr %v1, ptr %s5, ptr %t112, ptr %t113)
  store { i64, ptr } %t116, ptr %l66
  br label %bb30
bb29:
  br label %bb49
bb30:
  %t117 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t120 = call i1 @compiler_2fcheck_2esamePath(ptr %s5, ptr %v2, { i64, ptr } %t118, { i64, ptr } %t117)
  store i1 %t120, ptr %l68
  br label %bb31
bb31:
  %t121 = load i1, ptr %l68, !tbaa !21
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t122 = load ptr, ptr %l10, !tbaa !29
  store ptr %t122, ptr %l11, !tbaa !29
  br label %bb39
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l10, !tbaa !29
  %t128 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPath(ptr %v0, ptr %v1, ptr %s7, ptr %t124, ptr %t125)
  store { i64, ptr } %t128, ptr %l72
  br label %bb34
bb34:
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t132 = call i1 @compiler_2fcheck_2esamePath(ptr %s7, ptr %v2, { i64, ptr } %t130, { i64, ptr } %t129)
  store i1 %t132, ptr %l74
  br label %bb35
bb35:
  %t133 = load i1, ptr %l74, !tbaa !21
  %t134 = xor i1 %t133, true
  br i1 %t134, label %bb36, label %bb37
bb36:
  %t136 = load ptr, ptr %l4, !tbaa !29
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t136
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l11, !tbaa !29
  %t144 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %s5, ptr %t140, ptr %t141)
  %t145 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t144, 1
  %t146 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t144, 0
  store i32 %t146, ptr %l82
  %t147 = icmp ne i32 %t146, 0
  br i1 %t147, label %bb41, label %ok.148, !prof !99
ok.148:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %l81
  br label %bb40
bb40:
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %l78
  br label %bb43
bb41:
  %t150 = load i32, ptr %l82, !tbaa !23
  %t151 = ashr i32 %t150, 16
  %t153 = icmp eq i32 %t151, 1
  store i1 %t153, ptr %l84, !tbaa !21
  br label %bb42
bb42:
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t154
  call void @__olang_scope_close(ptr %s5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %rv
  br label %ret
bb43:
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l12
  %t159 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t161 = trunc i64 93 to i32
  %t162 = icmp eq i32 %t159, %t161
  %t163 = load i1, ptr %l2, !tbaa !21
  %t166 = icmp eq i1 %t162, %t163
  br i1 %t166, label %bb44, label %bb45
bb44:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l4, !tbaa !29
  %t173 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v3, ptr %s5, ptr %v4, ptr %t168, ptr %t169, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t173, ptr %l95
  br label %bb46
bb45:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l4, !tbaa !29
  %t179 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v3, ptr %s5, ptr %v4, ptr %t174, ptr %t175, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l99
  br label %bb47
bb46:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l91
  br label %bb48
bb47:
  %t181 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l91
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s5)
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %rv
  br label %ret
bb49:
  %t183 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t185 = trunc i64 44 to i32
  %t186 = icmp eq i32 %t183, %t185
  br i1 %t186, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s10
  %t188 = load i1, ptr %l2, !tbaa !21
  br i1 %t188, label %bb52, label %bb53
bb51:
  br label %bb64
bb52:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l9, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t193 = load ptr, ptr %l4, !tbaa !29
  %t198 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t190, ptr %t191, i1 true, { i64, ptr } %t192, ptr %t193)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t198, ptr %l107
  br label %bb54
bb53:
  br label %bb58
bb54:
  %t200 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v4, ptr %l107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l109
  br label %bb55
bb55:
  %t201 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t201, ptr %lp13
  %t202 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109
  %t203 = load ptr, ptr %lp13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t202, ptr %t203
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l10, !tbaa !29
  %t206 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t207 = load ptr, ptr %lp13
  %t212 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %v4, ptr %t204, ptr %t205, i1 true, { i64, ptr } %t206, ptr %t207)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t212, ptr %l114
  br label %bb56
bb56:
  %t214 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v4, ptr %l114)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %l116
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s10)
  %t215 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t215, ptr %rv
  br label %ret
bb58:
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l117, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l9, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t220 = load ptr, ptr %l4, !tbaa !29
  %t225 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t217, ptr %t218, i1 false, { i64, ptr } %t219, ptr %t220)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %l122
  br label %bb59
bb59:
  %t227 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l122)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t227, ptr %l124
  br label %bb60
bb60:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l124
  %t229 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %t229
  store ptr %t229, ptr %l125, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l10, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t233 = load ptr, ptr %l4, !tbaa !29
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t230, ptr %t231, i1 false, { i64, ptr } %t232, ptr %t233)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l130
  br label %bb61
bb61:
  %t240 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l130)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %l132
  br label %bb62
bb62:
  %t241 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132
  %t242 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t241, ptr %t242
  %t243 = load ptr, ptr %l117, !tbaa !29
  %t244 = load ptr, ptr %l125, !tbaa !29
  %t246 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v3, ptr %v3, ptr %v4, ptr %t243, ptr %t244, ptr %t242)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t246, ptr %l134
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s10)
  %t247 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t247, ptr %rv
  br label %ret
bb64:
  %t248 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t250 = trunc i64 45 to i32
  %t251 = icmp eq i32 %t248, %t250
  br i1 %t251, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s12
  %t253 = load i1, ptr %l2, !tbaa !21
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb67, label %bb68
bb66:
  br label %bb79
bb67:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l9, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t260 = load ptr, ptr %l4, !tbaa !29
  %t265 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t257, ptr %t258, i1 false, { i64, ptr } %t259, ptr %t260)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t265, ptr %l143
  br label %bb69
bb68:
  br label %bb73
bb69:
  %t267 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v4, ptr %l143)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t267, ptr %l145
  br label %bb70
bb70:
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t268, ptr %lp14
  %t269 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145
  %t270 = load ptr, ptr %lp14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %t270
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l10, !tbaa !29
  %t273 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t274 = load ptr, ptr %lp14
  %t279 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %v4, ptr %t271, ptr %t272, i1 false, { i64, ptr } %t273, ptr %t274)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t279, ptr %l150
  br label %bb71
bb71:
  %t281 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v4, ptr %l150)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l152
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s12)
  %t282 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l152
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %rv
  br label %ret
bb73:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l153, !tbaa !29
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l9, !tbaa !29
  %t286 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t287 = load ptr, ptr %l4, !tbaa !29
  %t292 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t284, ptr %t285, i1 true, { i64, ptr } %t286, ptr %t287)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %l158
  br label %bb74
bb74:
  %t294 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l158)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %l160
  br label %bb75
bb75:
  %t295 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l160
  %t296 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t295, ptr %t296
  store ptr %t296, ptr %l161, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load ptr, ptr %l10, !tbaa !29
  %t299 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t300 = load ptr, ptr %l4, !tbaa !29
  %t305 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtNarrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t297, ptr %t298, i1 true, { i64, ptr } %t299, ptr %t300)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t305, ptr %l166
  br label %bb76
bb76:
  %t307 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v3, ptr %l166)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t307, ptr %l168
  br label %bb77
bb77:
  %t308 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  %t309 = call ptr @__olang_scope_alloc_a(ptr %s12, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %t309
  %t310 = load ptr, ptr %l153, !tbaa !29
  %t311 = load ptr, ptr %l161, !tbaa !29
  %t313 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v3, ptr %v3, ptr %v4, ptr %t310, ptr %t311, ptr %t309)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t313, ptr %l170
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s12)
  %t314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t314, ptr %rv
  br label %ret
bb79:
  br label %bb85
bb80:
  br i1 true, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_e75bf8e677cd64fa_b74b0f73d6209566)
  unreachable
bb85:
  %t315 = load ptr, ptr %l4, !tbaa !29
  %t317 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t315
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t317, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommutesRule(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l17 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l31 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca i64
  %l74 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l78 = alloca i32
  %l79 = alloca i32
  %l82 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca i32
  %l87 = alloca i32
  %l93 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l99 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l106 = alloca i64
  %l110 = alloca i1
  %l116 = alloca i64
  %l119 = alloca i1
  %l126 = alloca ptr
  %l129 = alloca ptr
  %l133 = alloca i32
  %l134 = alloca i32
  %l135 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l141 = alloca ptr
  %l143 = alloca { i64, ptr }
  %l145 = alloca i32
  %l146 = alloca i32
  %l148 = alloca i1
  %l154 = alloca ptr
  %l158 = alloca i1
  %l164 = alloca i1
  %l165 = alloca { i64, ptr }
  %l167 = alloca i1
  %l168 = alloca { i64, ptr }
  %l170 = alloca i1
  %l171 = alloca { i64, ptr }
  %l173 = alloca i1
  %l174 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l176 = alloca %"compiler/source:Span"
  %l177 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l188 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l193 = alloca ptr
  %l196 = alloca { i64, ptr }
  %l199 = alloca %"compiler/diagmsg:Msg"
  %l200 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l17
  br label %bb1
bb1:
  %t9 = load i64, ptr %l17, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t10, i64 -1, i64 %t9, i32 %t12, i32 0)
  store ptr %t16, ptr %l21
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t21 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store %"compiler/source:Span" %t21, ptr %l24
  br label %bb3
bb3:
  %t22 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t22, ptr %l5
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t26, i64 %t27)
  store i32 %t30, ptr %l28
  br label %bb4
bb4:
  %t31 = load i32, ptr %l28, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l31, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t43, i32 %t31)
  store i32 %t47, ptr %l36
  br label %bb5
bb5:
  %t48 = load ptr, ptr %l31, !tbaa !29
  %t49 = load i32, ptr %l36, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t48, i32 %t49)
  store { i64, ptr } %t50, ptr %l37
  br label %bb6
bb6:
  %t51 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t51, ptr %l7, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t54, ptr %l39
  br label %bb7
bb7:
  %t55 = load i1, ptr %l39, !tbaa !21
  br i1 %t55, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb11
bb9:
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t56, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t58, ptr %l42
  br label %bb10
bb10:
  %t59 = load i1, ptr %l42, !tbaa !21
  store i1 %t59, ptr %l40, !tbaa !21
  br label %bb11
bb11:
  %t60 = load i1, ptr %l40, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb15
bb13:
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t63, ptr %l45
  br label %bb14
bb14:
  %t64 = load i1, ptr %l45, !tbaa !21
  store i1 %t64, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t65 = load i1, ptr %l43, !tbaa !21
  br i1 %t65, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb19
bb17:
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t66, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t68, ptr %l48
  br label %bb18
bb18:
  %t69 = load i1, ptr %l48, !tbaa !21
  store i1 %t69, ptr %l46, !tbaa !21
  br label %bb19
bb19:
  %t70 = load i1, ptr %l46, !tbaa !21
  br i1 %t70, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb23
bb21:
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t73, ptr %l51
  br label %bb22
bb22:
  %t74 = load i1, ptr %l51, !tbaa !21
  store i1 %t74, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t75 = load i1, ptr %l49, !tbaa !21
  %t78 = xor i1 %t75, true
  br i1 %t78, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb26
bb25:
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  store i1 %t85, ptr %l54, !tbaa !21
  br label %bb26
bb26:
  %t87 = load i1, ptr %l54, !tbaa !21
  br i1 %t87, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb29
bb28:
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t92 = icmp ne i64 %t90, 2
  store i1 %t92, ptr %l58, !tbaa !21
  br label %bb29
bb29:
  %t94 = load i1, ptr %l58, !tbaa !21
  br i1 %t94, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s1
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l62, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t96, ptr %l63
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s1, ptr %t97, i32 %t101)
  store { i64, ptr } %t104, ptr %l67
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t105 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %s1, ptr %v0, { i64, ptr } %t111)
  store %"compiler/diagmsg:Msg" %t113, ptr %l69
  br label %bb33
bb33:
  %t114 = load ptr, ptr %l62, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l63
  %t116 = load %"compiler/diagmsg:Msg", ptr %l69
  %t117 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t114, %"compiler/source:Span" %t115, %"compiler/diagmsg:Msg" %t116)
  store i64 %t117, ptr %l70
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s1)
  %t118 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t118)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb36:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  store ptr %t125, ptr %l74, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t127, ptr %l76, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i32, ptr %t129, i64 0
  %t131 = load i32, ptr %t130, !tbaa !33
  %t134 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t126, i32 %t131)
  store i32 %t134, ptr %l78
  br label %bb37
bb37:
  %t135 = load ptr, ptr %l74, !tbaa !29
  %t136 = load i32, ptr %l78, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t137, ptr %l79
  br label %bb38
bb38:
  %t138 = load i32, ptr %l79, !tbaa !23
  store i32 %t138, ptr %l9, !tbaa !23
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  store ptr %t144, ptr %l82, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t146, ptr %l84, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i32, ptr %t148, i64 1
  %t150 = load i32, ptr %t149, !tbaa !33
  %t153 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t145, i32 %t150)
  store i32 %t153, ptr %l86
  br label %bb39
bb39:
  %t154 = load ptr, ptr %l82, !tbaa !29
  %t155 = load i32, ptr %l86, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t156, ptr %l87
  br label %bb40
bb40:
  %t157 = load i32, ptr %l87, !tbaa !23
  store i32 %t157, ptr %l10, !tbaa !23
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l9, !tbaa !23
  %t165 = load i32, ptr %l10, !tbaa !23
  %t169 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t163, i32 %t164, i32 %t165)
  store i1 %t169, ptr %l93
  br label %bb41
bb41:
  %t170 = load i1, ptr %l93, !tbaa !21
  br i1 %t170, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s3
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l94, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t172, ptr %l95
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t176 = getelementptr %"compiler/ast:Func", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %t176, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s3, ptr %t173, i32 %t177)
  store { i64, ptr } %t180, ptr %l99
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t181 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  store { i64, ptr } %t187, ptr %l100, !tbaa !27
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l10, !tbaa !23
  %t192 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t188, i32 %t189)
  store { i64, ptr } %t192, ptr %l103
  br label %bb45
bb45:
  %t193 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  %t195 = extractvalue { i64, ptr } %t193, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesSameType(ptr %s3, ptr %s3, ptr %v0, { i64, ptr } %t200, { i64, ptr } %t199)
  store %"compiler/diagmsg:Msg" %t202, ptr %l105
  br label %bb46
bb46:
  %t203 = load ptr, ptr %l94, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l95
  %t205 = load %"compiler/diagmsg:Msg", ptr %l105
  %t206 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t203, %"compiler/source:Span" %t204, %"compiler/diagmsg:Msg" %t205)
  store i64 %t206, ptr %l106
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s3)
  %t207 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t207)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l10, !tbaa !23
  %t213 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t209, i32 %t210)
  store i1 %t213, ptr %l110
  br label %bb50
bb50:
  %t214 = load i1, ptr %l110, !tbaa !21
  %t215 = xor i1 %t214, true
  br i1 %t215, label %bb51, label %bb52
bb51:
  %t217 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t217)
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb54:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l10, !tbaa !23
  %t221 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t225 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v2, ptr %t219, i32 %t220, { i64, ptr } %t221, i64 1)
  store i64 %t225, ptr %l116
  br label %bb55
bb55:
  %t226 = load i64, ptr %l116, !tbaa !24
  store i64 %t226, ptr %l11, !tbaa !24
  %t227 = load i64, ptr %l11, !tbaa !24
  %t229 = icmp slt i64 %t227, 0
  br i1 %t229, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb58
bb57:
  %t231 = load i64, ptr %l11, !tbaa !24
  %t232 = load i64, ptr %l1, !tbaa !24
  %t235 = icmp eq i64 %t231, %t232
  store i1 %t235, ptr %l119, !tbaa !21
  br label %bb58
bb58:
  %t237 = load i1, ptr %l119, !tbaa !21
  br i1 %t237, label %bb59, label %bb60
bb59:
  %t238 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t238)
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb62:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/check:Checker", ptr %t240, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t245 = getelementptr %"compiler/generic:Program", ptr %t243, i32 0, i32 2
  store ptr %t245, ptr %l126, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/check:Checker", ptr %t246, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 2
  store ptr %t251, ptr %l129, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load i64, ptr %l11, !tbaa !24
  %t259 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t255, i64 %t256)
  store i32 %t259, ptr %l133
  br label %bb63
bb63:
  %t260 = load ptr, ptr %l129, !tbaa !29
  %t261 = load i32, ptr %l133, !tbaa !23
  %t262 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t260, i32 %t261)
  store i32 %t262, ptr %l134
  br label %bb64
bb64:
  %t263 = load ptr, ptr %l126, !tbaa !29
  %t264 = load i32, ptr %l134, !tbaa !23
  %t265 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t263, i32 %t264)
  store { i64, ptr } %t265, ptr %l135
  br label %bb65
bb65:
  %t266 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  store ptr %t272, ptr %l138, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  store ptr %t278, ptr %l141, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  store { i64, ptr } %t266, ptr %l143, !tbaa !27
  %t281 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i32, ptr %t282, i64 1
  %t284 = load i32, ptr %t283, !tbaa !33
  %t287 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t279, i32 %t284)
  store i32 %t287, ptr %l145
  br label %bb66
bb66:
  %t288 = load ptr, ptr %l141, !tbaa !29
  %t289 = load i32, ptr %l145, !tbaa !23
  %t290 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t288, i32 %t289)
  store i32 %t290, ptr %l146
  br label %bb67
bb67:
  %t291 = load i32, ptr %l9, !tbaa !23
  %t292 = load ptr, ptr %l138, !tbaa !29
  %t293 = load i32, ptr %l146, !tbaa !23
  %t295 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t292, i32 %t293, i32 %t291)
  store i1 %t295, ptr %l148
  br label %bb68
bb68:
  %t296 = load i1, ptr %l148, !tbaa !21
  %t297 = xor i1 %t296, true
  br i1 %t297, label %bb69, label %bb70
bb69:
  %t299 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t299)
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb72:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t305 = load i64, ptr %l11, !tbaa !24
  %t308 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t304, i64 %t305)
  store ptr %t308, ptr %l154
  br label %bb73
bb73:
  %t309 = load ptr, ptr %l154, !tbaa !29
  %t311 = getelementptr %"compiler/ast:Func", ptr %t309, i32 0, i32 3
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = getelementptr %"compiler/ast:Sig", ptr %t312, i32 0, i32 5
  %t315 = load i1, ptr %t314, !tbaa !21
  br i1 %t315, label %bb74, label %bb75
bb74:
  %t317 = load i64, ptr %l11, !tbaa !24
  %t318 = load i64, ptr %l1, !tbaa !24
  %t321 = icmp sgt i64 %t317, %t318
  store i1 %t321, ptr %l158, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb76
bb76:
  %t323 = load i1, ptr %l158, !tbaa !21
  br i1 %t323, label %bb77, label %bb78
bb77:
  %t324 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t324)
  br label %bb79
bb78:
  br label %bb80
bb79:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb80:
  %t326 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t326, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t328, ptr %l164
  br label %bb81
bb81:
  %t329 = load i1, ptr %l164, !tbaa !21
  br i1 %t329, label %bb82, label %bb83
bb82:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l165, !tbaa !27
  br label %bb96
bb83:
  %t330 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t332 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t330, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t332, ptr %l167
  br label %bb84
bb84:
  %t333 = load i1, ptr %l167, !tbaa !21
  br i1 %t333, label %bb85, label %bb86
bb85:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l168, !tbaa !27
  br label %bb95
bb86:
  %t334 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t336 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t334, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t336, ptr %l170
  br label %bb87
bb87:
  %t337 = load i1, ptr %l170, !tbaa !21
  br i1 %t337, label %bb88, label %bb89
bb88:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l171, !tbaa !27
  br label %bb94
bb89:
  %t338 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t340 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t338, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t340, ptr %l173
  br label %bb90
bb90:
  %t341 = load i1, ptr %l173, !tbaa !21
  br i1 %t341, label %bb91, label %bb92
bb91:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l174, !tbaa !27
  br label %bb93
bb92:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l174, !tbaa !27
  br label %bb93
bb93:
  %t342 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t342, ptr %l171, !tbaa !27
  br label %bb94
bb94:
  %t343 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t343, ptr %l168, !tbaa !27
  br label %bb95
bb95:
  %t344 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t344, ptr %l165, !tbaa !27
  br label %bb96
bb96:
  %t345 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l175, !tbaa !29
  %t347 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t347, ptr %l176
  store { i64, ptr } %t345, ptr %l177, !tbaa !27
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l9, !tbaa !23
  %t353 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t349, i32 %t350)
  store { i64, ptr } %t353, ptr %l180
  br label %bb97
bb97:
  %t354 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 0
  %t356 = extractvalue { i64, ptr } %t354, 1
  %t357 = mul i64 %t355, 1
  %t358 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t357)
  call void @llvm.memcpy.p0.p0.i64(ptr %t358, ptr %t356, i64 %t357, i1 false)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t358, 1
  store { i64, ptr } %t360, ptr %l181, !tbaa !27
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l10, !tbaa !23
  %t365 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t361, i32 %t362)
  store { i64, ptr } %t365, ptr %l184
  br label %bb98
bb98:
  %t366 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t366, 0
  %t368 = extractvalue { i64, ptr } %t366, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  store { i64, ptr } %t372, ptr %l185, !tbaa !27
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load i32, ptr %l10, !tbaa !23
  %t377 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t373, i32 %t374)
  store { i64, ptr } %t377, ptr %l188
  br label %bb99
bb99:
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l189, !tbaa !29
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t381 = getelementptr %"compiler/check:Checker", ptr %t379, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !29
  %t383 = load i64, ptr %l11, !tbaa !24
  %t386 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t382, i64 %t383)
  store ptr %t386, ptr %l193
  br label %bb100
bb100:
  %t387 = load ptr, ptr %l193, !tbaa !29
  %t389 = getelementptr %"compiler/ast:Func", ptr %t387, i32 0, i32 2
  %t390 = load i32, ptr %t389, !tbaa !23
  %t391 = load ptr, ptr %l189, !tbaa !29
  %t393 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t391, i32 %t390)
  store { i64, ptr } %t393, ptr %l196
  br label %bb101
bb101:
  %t394 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t395 = extractvalue { i64, ptr } %t394, 1
  %t396 = extractvalue { i64, ptr } %t394, 0
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = add i64 %t399, %t402
  %t404 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t403)
  call void @olang_textcopy(ptr %t404, ptr %t395, i64 %t396)
  %t405 = getelementptr i8, ptr %t404, i64 %t396
  call void @olang_textcopy(ptr %t405, ptr %t397, i64 %t398)
  %t406 = getelementptr i8, ptr %t405, i64 %t398
  call void @olang_textcopy(ptr %t406, ptr %t401, i64 %t402)
  %t407 = insertvalue { i64, ptr } undef, i64 %t403, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t404, 1
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t411 = extractvalue { i64, ptr } %t408, 1
  %t412 = mul i64 %t410, 1
  %t413 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t413, ptr %t411, i64 %t412, i1 false)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  %t416 = load ptr, ptr @__olang_prog_scope
  %t417 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t419 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t421 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesClash(ptr %t416, ptr %s0, ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t417, { i64, ptr } %t418, { i64, ptr } %t419, { i64, ptr } %t415)
  store %"compiler/diagmsg:Msg" %t421, ptr %l199
  br label %bb102
bb102:
  %t422 = load ptr, ptr %l175, !tbaa !29
  %t423 = load %"compiler/source:Span", ptr %l176
  %t424 = load %"compiler/diagmsg:Msg", ptr %l199
  %t425 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t422, %"compiler/source:Span" %t423, %"compiler/diagmsg:Msg" %t424)
  store i64 %t425, ptr %l200
  br label %bb103
bb103:
  %t426 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t426)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdReads(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l33 = alloca { i64, ptr }
  %l42 = alloca i1
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca i1
  %l79 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l99 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca i1
  %l104 = alloca i1
  %l105 = alloca { i64, ptr }
  %l108 = alloca i1
  %l109 = alloca i1
  %l110 = alloca { i64, ptr }
  %l116 = alloca i1
  %rv = alloca i1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
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
  store { i64, ptr } %t14, ptr %l17
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t17 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  store i64 %t20, ptr %l20, !tbaa !24
  %t21 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t22 = load i32, ptr %t21, !tbaa !23
  %t24 = sext i32 %t22 to i64
  store i64 %t24, ptr %l22, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l23, !tbaa !24
  %t27 = load i64, ptr %l20, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb2, label %bb3
bb2:
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = load i64, ptr %l22, !tbaa !24
  %t32 = icmp sle i64 %t30, %t31
  br i1 %t32, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f259f6ca06e66809_b1ef05920a904ef5)
  unreachable
bb4:
  %t34 = load i64, ptr %l22, !tbaa !24
  %t35 = load i64, ptr %l23, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f259f6ca06e66809_b1ef05920a904ef5)
  unreachable
bb6:
  %t38 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l20, !tbaa !24
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = getelementptr i8, ptr %t39, i64 %t40
  %t43 = sub i64 %t41, %t40
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  store i1 false, ptr %l7, !tbaa !21
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f259f6ca06e66809_b1ef05920a904ef5)
  unreachable
bb8:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t53 = icmp slt i64 %t47, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb9, label %bb10
bb9:
  br label %bb63
bb10:
  br label %bb11
bb11:
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t57, ptr %l33, !tbaa !27
  %t58 = load i64, ptr %l6, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i8, ptr %t61, i64 %t58
  %t63 = load i8, ptr %t62, !tbaa !32
  %t67 = icmp eq i8 %t63, 34
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t69 = load i1, ptr %l7, !tbaa !21
  %t71 = xor i1 %t69, true
  store i1 %t71, ptr %l7, !tbaa !21
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t73 = load i1, ptr %l7, !tbaa !21
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = add i64 %t77, %t80
  %t84 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t89 = icmp sle i64 %t83, %t86
  store i1 %t89, ptr %l42, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t91 = load i1, ptr %l42, !tbaa !21
  br i1 %t91, label %bb18, label %bb19
bb18:
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l51, !tbaa !27
  %t93 = load i64, ptr %l6, !tbaa !24
  store i64 %t93, ptr %l52, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t100 = add i64 %t94, %t97
  store i64 %t100, ptr %l56, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l57, !tbaa !24
  %t103 = load i64, ptr %l52, !tbaa !24
  %t104 = icmp sge i64 %t103, 0
  br i1 %t104, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb27
bb20:
  %t106 = load i64, ptr %l52, !tbaa !24
  %t107 = load i64, ptr %l56, !tbaa !24
  %t108 = icmp sle i64 %t106, %t107
  br i1 %t108, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798)
  unreachable
bb22:
  %t110 = load i64, ptr %l56, !tbaa !24
  %t111 = load i64, ptr %l57, !tbaa !24
  %t112 = icmp sle i64 %t110, %t111
  br i1 %t112, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798)
  unreachable
bb24:
  %t114 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l52, !tbaa !24
  %t117 = load i64, ptr %l56, !tbaa !24
  %t118 = getelementptr i8, ptr %t115, i64 %t116
  %t119 = sub i64 %t117, %t116
  %t120 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t121, { i64, ptr } %t122)
  store i1 %t125, ptr %l63
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798)
  unreachable
bb26:
  %t126 = load i1, ptr %l63, !tbaa !21
  store i1 %t126, ptr %l50, !tbaa !21
  br label %bb27
bb27:
  %t127 = load i1, ptr %l50, !tbaa !21
  br i1 %t127, label %bb28, label %bb29
bb28:
  %t128 = load i64, ptr %l6, !tbaa !24
  %t130 = icmp eq i64 %t128, 0
  br i1 %t130, label %bb30, label %bb31
bb29:
  br label %bb61
bb30:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb43
bb31:
  %t132 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t132, ptr %l67, !tbaa !27
  %t133 = load i64, ptr %l6, !tbaa !24
  %t135 = sub i64 %t133, 1
  %t137 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t135
  %t140 = load i8, ptr %t139, !tbaa !32
  %t142 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t140)
  store i1 %t142, ptr %l71
  br label %bb32
bb32:
  %t143 = load i1, ptr %l71, !tbaa !21
  br i1 %t143, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb36
bb34:
  %t144 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t144, ptr %l73, !tbaa !27
  %t145 = load i64, ptr %l6, !tbaa !24
  %t147 = sub i64 %t145, 1
  %t149 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 %t147
  %t152 = load i8, ptr %t151, !tbaa !32
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t152)
  store i1 %t154, ptr %l77
  br label %bb35
bb35:
  %t155 = load i1, ptr %l77, !tbaa !21
  store i1 %t155, ptr %l72, !tbaa !21
  br label %bb36
bb36:
  %t156 = load i1, ptr %l72, !tbaa !21
  br i1 %t156, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb39
bb38:
  %t157 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t157, ptr %l79, !tbaa !27
  %t158 = load i64, ptr %l6, !tbaa !24
  %t160 = sub i64 %t158, 1
  %t162 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t160
  %t165 = load i8, ptr %t164, !tbaa !32
  %t167 = icmp eq i8 %t165, 95
  store i1 %t167, ptr %l78, !tbaa !21
  br label %bb39
bb39:
  %t169 = load i1, ptr %l78, !tbaa !21
  br i1 %t169, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb42
bb41:
  %t170 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t170, ptr %l85, !tbaa !27
  %t171 = load i64, ptr %l6, !tbaa !24
  %t173 = sub i64 %t171, 1
  %t175 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t173
  %t178 = load i8, ptr %t177, !tbaa !32
  %t180 = icmp eq i8 %t178, 46
  store i1 %t180, ptr %l84, !tbaa !21
  br label %bb42
bb42:
  %t182 = load i1, ptr %l84, !tbaa !21
  %t183 = xor i1 %t182, true
  store i1 %t183, ptr %l66, !tbaa !21
  br label %bb43
bb43:
  %t185 = load i1, ptr %l66, !tbaa !21
  store i1 %t185, ptr %l9, !tbaa !21
  %t186 = load i64, ptr %l6, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t192 = add i64 %t186, %t189
  store i64 %t192, ptr %l10, !tbaa !24
  %t194 = load i64, ptr %l10, !tbaa !24
  %t195 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t200 = icmp sge i64 %t194, %t197
  br i1 %t200, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb54
bb45:
  %t202 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t202, ptr %l100, !tbaa !27
  %t203 = load i64, ptr %l10, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i8, ptr %t206, i64 %t203
  %t208 = load i8, ptr %t207, !tbaa !32
  %t210 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t208)
  store i1 %t210, ptr %l103
  br label %bb46
bb46:
  %t211 = load i1, ptr %l103, !tbaa !21
  br i1 %t211, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb50
bb48:
  %t212 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t212, ptr %l105, !tbaa !27
  %t213 = load i64, ptr %l10, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i8, ptr %t216, i64 %t213
  %t218 = load i8, ptr %t217, !tbaa !32
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t218)
  store i1 %t220, ptr %l108
  br label %bb49
bb49:
  %t221 = load i1, ptr %l108, !tbaa !21
  store i1 %t221, ptr %l104, !tbaa !21
  br label %bb50
bb50:
  %t222 = load i1, ptr %l104, !tbaa !21
  br i1 %t222, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb53
bb52:
  %t223 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t223, ptr %l110, !tbaa !27
  %t224 = load i64, ptr %l10, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr i8, ptr %t227, i64 %t224
  %t229 = load i8, ptr %t228, !tbaa !32
  %t231 = icmp eq i8 %t229, 95
  store i1 %t231, ptr %l109, !tbaa !21
  br label %bb53
bb53:
  %t233 = load i1, ptr %l109, !tbaa !21
  %t234 = xor i1 %t233, true
  store i1 %t234, ptr %l99, !tbaa !21
  br label %bb54
bb54:
  %t236 = load i1, ptr %l99, !tbaa !21
  store i1 %t236, ptr %l11, !tbaa !21
  %t237 = load i1, ptr %l9, !tbaa !21
  br i1 %t237, label %bb55, label %bb56
bb55:
  %t239 = load i1, ptr %l11, !tbaa !21
  store i1 %t239, ptr %l116, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb57
bb57:
  %t241 = load i1, ptr %l116, !tbaa !21
  br i1 %t241, label %bb58, label %bb59
bb58:
  store i1 true, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t243 = load i64, ptr %l6, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l6, !tbaa !24
  br label %bb62
bb62:
  br label %bb8
bb63:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyEffects(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i1
  %l18 = alloca i64
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca %"compiler/effects:Facts"
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i64
  %l58 = alloca i64
  %l61 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 76
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l18
  br label %bb4
bb4:
  %t21 = load i64, ptr %l18, !tbaa !24
  %t22 = icmp sgt i64 %t21, 0
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 9
  store ptr null, ptr %t27, !tbaa !29
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l21
  br label %bb9
bb9:
  %t29 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l1
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 76
  store ptr %t32, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t34 = load i64, ptr %l3, !tbaa !24
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l26
  br label %bb11
bb11:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l26, !tbaa !24
  %t40 = icmp slt i64 %t38, %t39
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb50
bb13:
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t44, i64 %t45)
  store i64 %t48, ptr %l31
  br label %bb15
bb15:
  %t49 = load i64, ptr %l31, !tbaa !24
  store i64 %t49, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t50)
  store i1 %t53, ptr %l34
  br label %bb16
bb16:
  %t54 = load i1, ptr %l34, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb18:
  br label %bb19
bb19:
  %t55 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t55, i1 true)
  br label %bb20
bb20:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t58)
  store ptr %t60, ptr %l38
  br label %bb21
bb21:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = load ptr, ptr %l38, !tbaa !29
  %t64 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t62, i64 %t61)
  store %"compiler/effects:Facts" %t64, ptr %l40
  br label %bb22
bb22:
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecopyDoes(ptr %s3, ptr %s3, ptr %l40)
  store { i64, ptr } %t66, ptr %l42
  br label %bb23
bb23:
  %t67 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t67, ptr %l5, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t70 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t68, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t70, ptr %l44
  br label %bb24
bb24:
  %t71 = load i1, ptr %l44, !tbaa !21
  br i1 %t71, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb26:
  br label %bb27
bb27:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 18
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l48
  br label %bb28
bb28:
  %t79 = load ptr, ptr %l48, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 1
  %t82 = load { i64, [2 x i64] }, ptr %t81
  store { i64, [2 x i64] } %t82, ptr %l6
  %t84 = load { i64, [2 x i64] }, ptr %l6
  %t86 = extractvalue { i64, [2 x i64] } %t84, 0
  %t87 = icmp eq i64 %t86, 0
  br i1 %t87, label %bb29, label %bb30
bb29:
  %t89 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t90 = getelementptr { i64 }, ptr %t89, i32 0, i32 0
  %t91 = load i64, ptr %t90
  store i64 %t91, ptr %l7, !tbaa !24
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l58
  br label %bb32
bb32:
  %t101 = load i64, ptr %l58, !tbaa !24
  store i64 %t101, ptr %l51, !tbaa !24
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i64 -1, ptr %l51, !tbaa !24
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_d80c9f6a0018af5a_89f102f42b80e70e)
  unreachable
bb38:
  %t102 = load i64, ptr %l51, !tbaa !24
  store i64 %t102, ptr %l8, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = icmp slt i64 %t103, 0
  br i1 %t105, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb40:
  br label %bb41
bb41:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l61, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i64, ptr %l8, !tbaa !24
  %t115 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t111, i64 %t112)
  store i64 %t115, ptr %l65
  br label %bb42
bb42:
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t117 = load ptr, ptr %l61, !tbaa !29
  %t118 = load i64, ptr %l65, !tbaa !24
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t117, i64 -1, i64 %t118, i32 %t116, i32 0)
  store ptr %t120, ptr %l67
  br label %bb43
bb43:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l68, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l69, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l73
  br label %bb44
bb44:
  %t131 = load ptr, ptr %l69, !tbaa !29
  %t132 = load ptr, ptr %l73, !tbaa !29
  %t133 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t131, ptr %t132)
  store %"compiler/source:Span" %t133, ptr %l74
  br label %bb45
bb45:
  %t134 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyDoesMore(ptr %s3, ptr %v0, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l76
  br label %bb46
bb46:
  %t137 = load ptr, ptr %l68, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l74
  %t139 = load %"compiler/diagmsg:Msg", ptr %l76
  %t140 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l77
  br label %bb47
bb47:
  %t141 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t141)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb49:
  %t143 = load i64, ptr %l3, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l3, !tbaa !24
  br label %bb10
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l61 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l65 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l145 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca i1
  %l158 = alloca ptr
  %l159 = alloca i64
  %l160 = alloca ptr
  %l163 = alloca ptr
  %l164 = alloca i64
  %l170 = alloca %"compiler/source:Span"
  %l172 = alloca i64
  %l173 = alloca ptr
  %l174 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l199 = alloca ptr
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store { i64, ptr } %a2, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb93
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l36, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l7, !tbaa !29
  %t23 = load ptr, ptr %l7, !tbaa !29
  store ptr %t23, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t24 = load ptr, ptr %l39, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l39, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 3
  store i1 %t30, ptr %l40, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l40, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l7, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l8, !tbaa !29
  br label %bb9
bb8:
  br label %bb19
bb9:
  %t38 = load ptr, ptr %l8, !tbaa !29
  %t40 = getelementptr %"compiler/ast:VarDecl", ptr %t38, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s5
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l11, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t55, ptr %l53, !tbaa !27
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 %t56
  %t61 = load i32, ptr %t60, !tbaa !33
  store i32 %t61, ptr %l12, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 33
  store ptr %t65, ptr %l57, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = load i32, ptr %l12, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t72 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t66, i64 %t69)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72, ptr %l61
  br label %bb14
bb14:
  %t73 = load ptr, ptr %l57, !tbaa !29
  %t74 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l61
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t73, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t74)
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load i32, ptr %l12, !tbaa !23
  %t81 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %t75, i64 %t76, i32 %t77)
  store i64 %t81, ptr %l65
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb17
bb17:
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l10, !tbaa !24
  br label %bb10
bb18:
  br label %bb91
bb19:
  %t86 = load ptr, ptr %l7, !tbaa !29
  store ptr %t86, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t87 = load ptr, ptr %l68, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb20, label %bb21
bb20:
  %t90 = load ptr, ptr %l68, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 11}
  %t93 = icmp eq i64 %t91, 6
  store i1 %t93, ptr %l69, !tbaa !21
  br label %bb21
bb21:
  %t94 = load i1, ptr %l69, !tbaa !21
  br i1 %t94, label %bb22, label %bb23
bb22:
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t97 = getelementptr { i64, [8 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t97, i32 0, i32 0
  %t99 = load %"compiler/source:Span", ptr %t98
  store %"compiler/source:Span" %t99, ptr %l13
  %t101 = load ptr, ptr %l7, !tbaa !29
  %t103 = getelementptr { i64, [8 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t103, i32 0, i32 1
  %t105 = load %"compiler/source:Span", ptr %t104
  store %"compiler/source:Span" %t105, ptr %l14
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t109 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load { i64, ptr }, ptr %t110
  store { i64, ptr } %t111, ptr %l15, !tbaa !27
  %t113 = load ptr, ptr %l7, !tbaa !29
  %t115 = getelementptr { i64, [8 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t115, i32 0, i32 3
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l16, !tbaa !29
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t119 = load i64, ptr %l1, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 12
  %t129 = load i64, ptr %t128, !tbaa !24
  %t132 = icmp eq i64 %t119, %t129
  br i1 %t132, label %bb25, label %bb26
bb25:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load %"compiler/source:Span", ptr %l14
  %t137 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestTarget(ptr %v0, ptr %v1, ptr %t134, i64 %t135, %"compiler/source:Span" %t136, ptr %t137)
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l1, !tbaa !24
  %t144 = load %"compiler/source:Span", ptr %l13
  %t145 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t146 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestBody(ptr %v0, ptr %v1, ptr %t142, i64 %t143, %"compiler/source:Span" %t144, { i64, ptr } %t145, i64 %t146)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t152 = load i64, ptr %l3, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l3, !tbaa !24
  br label %bb91
bb30:
  %t156 = load ptr, ptr %l7, !tbaa !29
  store ptr %t156, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t157 = load ptr, ptr %l97, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb31, label %bb32
bb31:
  %t160 = load ptr, ptr %l97, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 11}
  %t163 = icmp eq i64 %t161, 2
  store i1 %t163, ptr %l98, !tbaa !21
  br label %bb32
bb32:
  %t164 = load i1, ptr %l98, !tbaa !21
  br i1 %t164, label %bb33, label %bb34
bb33:
  %t165 = load ptr, ptr %l7, !tbaa !29
  %t167 = getelementptr { i64, [8 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", ptr }, ptr %t167, i32 0, i32 0
  %t169 = load %"compiler/source:Span", ptr %t168
  store %"compiler/source:Span" %t169, ptr %l17
  %t171 = load ptr, ptr %l7, !tbaa !29
  %t173 = getelementptr { i64, [8 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", ptr }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l18, !tbaa !29
  br label %bb35
bb34:
  br label %bb41
bb35:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i64, ptr %l1, !tbaa !24
  %t179 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %t177, i64 %t178, ptr %t179)
  br label %bb36
bb36:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i64, ptr %l1, !tbaa !24
  %t185 = load %"compiler/source:Span", ptr %l17
  %t186 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeRules(ptr %v0, ptr %v1, ptr %t183, i64 %t184, %"compiler/source:Span" %t185, ptr %t186)
  br label %bb37
bb37:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaredCtor(ptr %v0, ptr %v1, ptr %t192, i64 %t193, ptr %t194)
  br label %bb38
bb38:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load i64, ptr %l1, !tbaa !24
  %t201 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitSets(ptr %v0, ptr %v1, ptr %t199, i64 %t200, ptr %t201)
  br label %bb39
bb39:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l1, !tbaa !24
  %t208 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitHeader(ptr %v0, ptr %v1, ptr %t206, i64 %t207, ptr %t208)
  br label %bb40
bb40:
  br label %bb91
bb41:
  %t213 = load ptr, ptr %l7, !tbaa !29
  store ptr %t213, ptr %l125, !tbaa !29
  store i1 false, ptr %l126, !tbaa !21
  %t214 = load ptr, ptr %l125, !tbaa !29
  %t215 = icmp ne ptr %t214, null
  br i1 %t215, label %bb42, label %bb43
bb42:
  %t217 = load ptr, ptr %l125, !tbaa !29
  %t218 = load i64, ptr %t217, !range !{i64 0, i64 11}
  %t220 = icmp eq i64 %t218, 0
  store i1 %t220, ptr %l126, !tbaa !21
  br label %bb43
bb43:
  %t221 = load i1, ptr %l126, !tbaa !21
  br i1 %t221, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i64, ptr %l1, !tbaa !24
  %t224 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %t222, i64 %t223, ptr %t224)
  br label %bb47
bb47:
  br label %bb91
bb48:
  %t228 = load ptr, ptr %l7, !tbaa !29
  store ptr %t228, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t229 = load ptr, ptr %l132, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb49, label %bb50
bb49:
  %t232 = load ptr, ptr %l132, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 11}
  %t235 = icmp eq i64 %t233, 9
  store i1 %t235, ptr %l133, !tbaa !21
  br label %bb50
bb50:
  %t236 = load i1, ptr %l133, !tbaa !21
  br i1 %t236, label %bb51, label %bb52
bb51:
  %t237 = load ptr, ptr %l7, !tbaa !29
  %t239 = getelementptr { i64, [8 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t239, i32 0, i32 0
  %t241 = load %"compiler/source:Span", ptr %t240
  store %"compiler/source:Span" %t241, ptr %l19
  %t243 = load ptr, ptr %l7, !tbaa !29
  %t245 = getelementptr { i64, [8 x i64] }, ptr %t243, i32 0, i32 1
  %t246 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t245, i32 0, i32 1
  %t247 = load ptr, ptr %t246
  store ptr %t247, ptr %l20, !tbaa !29
  %t249 = load ptr, ptr %l7, !tbaa !29
  %t251 = getelementptr { i64, [8 x i64] }, ptr %t249, i32 0, i32 1
  %t252 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t251, i32 0, i32 2
  %t253 = load ptr, ptr %t252
  store ptr %t253, ptr %l21, !tbaa !29
  br label %bb53
bb52:
  br label %bb57
bb53:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l1, !tbaa !24
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t261 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t255, i64 -1, i64 %t256, i32 %t257, i32 0)
  store ptr %t261, ptr %l145
  br label %bb54
bb54:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i64, ptr %l1, !tbaa !24
  %t264 = load %"compiler/source:Span", ptr %l19
  %t265 = load ptr, ptr %l20, !tbaa !29
  %t266 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopAssert(ptr %v0, ptr %v1, ptr %v1, ptr %t262, i64 %t263, %"compiler/source:Span" %t264, ptr %t265, ptr %t266)
  br label %bb55
bb55:
  %t272 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t272)
  br label %bb56
bb56:
  br label %bb91
bb57:
  %t274 = load ptr, ptr %l7, !tbaa !29
  store ptr %t274, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t275 = load ptr, ptr %l152, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb58, label %bb59
bb58:
  %t278 = load ptr, ptr %l152, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 11}
  %t281 = icmp eq i64 %t279, 7
  store i1 %t281, ptr %l153, !tbaa !21
  br label %bb59
bb59:
  %t282 = load i1, ptr %l153, !tbaa !21
  br i1 %t282, label %bb60, label %bb61
bb60:
  %t283 = load ptr, ptr %l7, !tbaa !29
  %t285 = getelementptr { i64, [8 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { %"compiler/source:Span", ptr }, ptr %t285, i32 0, i32 1
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l22, !tbaa !29
  br label %bb62
bb61:
  br label %bb69
bb62:
  %t289 = load ptr, ptr %l0, !tbaa !29
  store ptr %t289, ptr %l158, !tbaa !29
  %t290 = load i64, ptr %l1, !tbaa !24
  store i64 %t290, ptr %l159, !tbaa !24
  %t291 = load ptr, ptr %l22, !tbaa !29
  store ptr %t291, ptr %l160, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 0
  %t298 = load ptr, ptr %t297, !tbaa !29
  store ptr %t298, ptr %l163, !tbaa !29
  %t299 = load i64, ptr %l1, !tbaa !24
  store i64 %t299, ptr %l164, !tbaa !24
  %t300 = load ptr, ptr %l22, !tbaa !29
  %t302 = getelementptr %"compiler/ast:TopIf", ptr %t300, i32 0, i32 0
  %t303 = load ptr, ptr %t302, !tbaa !29
  %t305 = icmp eq ptr %t303, null
  br i1 %t305, label %bb63, label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_9f7e5ad647601e13_a7b1cb3e26ad346f)
  unreachable
bb64:
  br label %bb65
bb65:
  %t307 = load ptr, ptr %l22, !tbaa !29
  %t309 = getelementptr %"compiler/ast:TopIf", ptr %t307, i32 0, i32 0
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t310)
  store %"compiler/source:Span" %t312, ptr %l170
  br label %bb66
bb66:
  %t313 = getelementptr %"compiler/source:Span", ptr %l170, i32 0, i32 0
  %t314 = load i32, ptr %t313, !tbaa !23
  %t315 = load ptr, ptr %l163, !tbaa !29
  %t316 = load i64, ptr %l164, !tbaa !24
  %t318 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t315, i64 %t316, i32 %t314)
  store i64 %t318, ptr %l172
  br label %bb67
bb67:
  %t319 = load ptr, ptr %l158, !tbaa !29
  %t320 = load i64, ptr %l159, !tbaa !24
  %t321 = load ptr, ptr %l160, !tbaa !29
  %t322 = load i64, ptr %l172, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclsIf(ptr %v0, ptr %v1, ptr %t319, i64 %t320, ptr %t321, i64 %t322, i64 0)
  br label %bb68
bb68:
  br label %bb91
bb69:
  %t323 = load ptr, ptr %l7, !tbaa !29
  store ptr %t323, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t324 = load ptr, ptr %l173, !tbaa !29
  %t325 = icmp ne ptr %t324, null
  br i1 %t325, label %bb70, label %bb71
bb70:
  %t327 = load ptr, ptr %l173, !tbaa !29
  %t328 = load i64, ptr %t327, !range !{i64 0, i64 11}
  %t330 = icmp eq i64 %t328, 10
  store i1 %t330, ptr %l174, !tbaa !21
  br label %bb71
bb71:
  %t331 = load i1, ptr %l174, !tbaa !21
  br i1 %t331, label %bb72, label %bb73
bb72:
  %t332 = load ptr, ptr %l7, !tbaa !29
  %t334 = getelementptr { i64, [8 x i64] }, ptr %t332, i32 0, i32 1
  %t335 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t334, i32 0, i32 2
  %t336 = load { i64, ptr }, ptr %t335
  store { i64, ptr } %t336, ptr %l23, !tbaa !27
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i64, ptr %l1, !tbaa !24
  %t340 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %t338, i64 %t339, { i64, ptr } %t340)
  br label %bb75
bb75:
  br label %bb91
bb76:
  %t344 = load ptr, ptr %l7, !tbaa !29
  store ptr %t344, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t345 = load ptr, ptr %l182, !tbaa !29
  %t346 = icmp ne ptr %t345, null
  br i1 %t346, label %bb77, label %bb78
bb77:
  %t348 = load ptr, ptr %l182, !tbaa !29
  %t349 = load i64, ptr %t348, !range !{i64 0, i64 11}
  %t351 = icmp eq i64 %t349, 5
  store i1 %t351, ptr %l183, !tbaa !21
  br label %bb78
bb78:
  %t352 = load i1, ptr %l183, !tbaa !21
  br i1 %t352, label %bb79, label %bb80
bb79:
  %t353 = load ptr, ptr %l7, !tbaa !29
  %t355 = getelementptr { i64, [8 x i64] }, ptr %t353, i32 0, i32 1
  %t356 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t355, i32 0, i32 0
  %t357 = load %"compiler/source:Span", ptr %t356
  store %"compiler/source:Span" %t357, ptr %l24
  %t359 = load ptr, ptr %l7, !tbaa !29
  %t361 = getelementptr { i64, [8 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t361, i32 0, i32 1
  %t363 = load i32, ptr %t362
  store i32 %t363, ptr %l25, !tbaa !23
  %t365 = load ptr, ptr %l7, !tbaa !29
  %t367 = getelementptr { i64, [8 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t367, i32 0, i32 2
  %t369 = load { i64, ptr }, ptr %t368
  store { i64, ptr } %t369, ptr %l26, !tbaa !27
  %t371 = load ptr, ptr %l7, !tbaa !29
  %t373 = getelementptr { i64, [8 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t373, i32 0, i32 3
  %t375 = load { i64, ptr }, ptr %t374
  store { i64, ptr } %t375, ptr %l27, !tbaa !27
  %t377 = load ptr, ptr %l7, !tbaa !29
  %t379 = getelementptr { i64, [8 x i64] }, ptr %t377, i32 0, i32 1
  %t380 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t379, i32 0, i32 4
  %t381 = load { i64, ptr }, ptr %t380
  store { i64, ptr } %t381, ptr %l28, !tbaa !27
  br label %bb81
bb80:
  br label %bb86
bb81:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load i64, ptr %l1, !tbaa !24
  %t385 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t389 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t383, i64 -1, i64 %t384, i32 %t385, i32 0)
  store ptr %t389, ptr %l199
  br label %bb82
bb82:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load i64, ptr %l1, !tbaa !24
  %t392 = load %"compiler/source:Span", ptr %l24
  %t393 = load i32, ptr %l25, !tbaa !23
  %t394 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t395 = load { i64, ptr }, ptr %l27, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorDeclRules(ptr %v0, ptr %v1, ptr %v1, ptr %t390, i64 %t391, %"compiler/source:Span" %t392, i32 %t393, { i64, ptr } %t394, { i64, ptr } %t395)
  br label %bb83
bb83:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load i64, ptr %l1, !tbaa !24
  %t404 = load i32, ptr %l25, !tbaa !23
  %t405 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRules(ptr %v0, ptr %v1, ptr %t402, i64 %t403, i32 %t404, { i64, ptr } %t405)
  br label %bb84
bb84:
  %t410 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t410)
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
  call void @__olang_check_failed(ptr @olang_loc_575e4285282f1c6b_a969c68061cd7c57)
  unreachable
bb91:
  br label %bb92
bb92:
  %t412 = load i64, ptr %l5, !tbaa !24
  %t414 = add i64 %t412, 1
  store i64 %t414, ptr %l5, !tbaa !24
  br label %bb1
bb93:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultBinds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, i64 %a5, i1 %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca i1
  %l32 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l64 = alloca { i64, ptr }
  %l69 = alloca i32
  %l74 = alloca i32
  %l78 = alloca i1
  %l83 = alloca i64
  %l86 = alloca i1
  %l88 = alloca { i64, ptr }
  %l93 = alloca i64
  %l102 = alloca i1
  %l109 = alloca i1
  %l112 = alloca { i64, ptr }
  %l118 = alloca i64
  %l125 = alloca ptr
  %l130 = alloca i32
  %l133 = alloca ptr
  %l134 = alloca i32
  %l137 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store i1 %a6, ptr %l6
  store ptr %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l25
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l25, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = load i1, ptr %l6, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Func", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l27, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l27, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l32, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t22 = load i64, ptr %l32, !tbaa !24
  store i64 %t22, ptr %l9, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 4
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l10, !tbaa !29
  store i64 %a5, ptr %l11, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t40 = load i64, ptr %l12, !tbaa !24
  %t41 = load i64, ptr %l11, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load i64, ptr %l13, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb13
bb10:
  %t50 = load i64, ptr %l12, !tbaa !24
  %t51 = load i64, ptr %l11, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l13, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l13, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l46, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l46, !tbaa !24
  store i64 %t66, ptr %l43, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l43, !tbaa !24
  store i64 %t67, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l15, !tbaa !24
  %t69 = load i64, ptr %l14, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb15, label %bb16
bb15:
  br label %bb50
bb16:
  br label %bb17
bb17:
  %t76 = load i64, ptr %l11, !tbaa !24
  %t77 = load i64, ptr %l15, !tbaa !24
  %t78 = load i64, ptr %l13, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l16, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t86, ptr %l64, !tbaa !27
  %t87 = load i64, ptr %l16, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i32, ptr %t90, i64 %t87
  %t92 = load i32, ptr %t91, !tbaa !33
  store i32 %t92, ptr %l17, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l17, !tbaa !23
  %t98 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t98, ptr %l69
  br label %bb18
bb18:
  %t99 = load i32, ptr %l69, !tbaa !23
  store i32 %t99, ptr %l18, !tbaa !23
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = load i32, ptr %l18, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t105, i32 %t106)
  store i32 %t109, ptr %l74
  br label %bb19
bb19:
  %t110 = load i32, ptr %l74, !range !{i32 0, i32 33}
  %t112 = trunc i64 25 to i32
  %t113 = icmp eq i32 %t110, %t112
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb23
bb21:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l18, !tbaa !23
  %t126 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t122, i32 %t123)
  store i64 %t126, ptr %l83
  br label %bb22
bb22:
  %t128 = load i64, ptr %l83, !tbaa !24
  %t130 = icmp ne i64 %t128, %a3
  store i1 %t130, ptr %l78, !tbaa !21
  br label %bb23
bb23:
  %t132 = load i1, ptr %l78, !tbaa !21
  br i1 %t132, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb27
bb25:
  %t133 = load ptr, ptr %l7, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Binding", ptr %t133, i32 0, i32 2
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l88, !tbaa !27
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l18, !tbaa !23
  %t146 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t146, ptr %l93
  br label %bb26
bb26:
  %t147 = load i64, ptr %l93, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i32, ptr %t149, i64 %t147
  %t151 = load i32, ptr %t150, !tbaa !33
  %t152 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t155 = icmp ne i32 %t151, %t152
  store i1 %t155, ptr %l86, !tbaa !21
  br label %bb27
bb27:
  %t157 = load i1, ptr %l86, !tbaa !21
  br i1 %t157, label %bb28, label %bb29
bb28:
  br label %bb49
bb29:
  br label %bb30
bb30:
  %t158 = load i64, ptr %l16, !tbaa !24
  %t159 = load i64, ptr %l9, !tbaa !24
  %t162 = sub i64 %t158, %t159
  store i64 %t162, ptr %l19, !tbaa !24
  %t164 = load i64, ptr %l19, !tbaa !24
  %t166 = icmp slt i64 %t164, 0
  br i1 %t166, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb33
bb32:
  %t168 = load i64, ptr %l19, !tbaa !24
  %t169 = load ptr, ptr %l8, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Func", ptr %t169, i32 0, i32 3
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/ast:Sig", ptr %t172, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t180 = icmp sge i64 %t168, %t177
  store i1 %t180, ptr %l102, !tbaa !21
  br label %bb33
bb33:
  %t182 = load i1, ptr %l102, !tbaa !21
  br i1 %t182, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb36
bb35:
  %t183 = load ptr, ptr %l8, !tbaa !29
  %t185 = getelementptr %"compiler/ast:Func", ptr %t183, i32 0, i32 3
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/ast:Sig", ptr %t186, i32 0, i32 0
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l112, !tbaa !27
  %t190 = load i64, ptr %l19, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  %t197 = getelementptr %"compiler/ast:Param", ptr %t195, i32 0, i32 3
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = icmp eq ptr %t198, null
  store i1 %t200, ptr %l109, !tbaa !21
  br label %bb36
bb36:
  %t202 = load i1, ptr %l109, !tbaa !21
  br i1 %t202, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t203 = load ptr, ptr %l10, !tbaa !29
  %t205 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t203)
  store i64 %t205, ptr %l118
  br label %bb40
bb40:
  %t206 = load i64, ptr %l118, !tbaa !24
  store i64 %t206, ptr %l20, !tbaa !24
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l2, !tbaa !24
  %t210 = load i64, ptr %l16, !tbaa !24
  %t211 = load i1, ptr %l6, !tbaa !21
  %t212 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t219 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v0, ptr %t207, %"compiler/source:Span" %a1, i64 %t209, i64 %t210, i1 %t211, i32 %t212, i32 0)
  store ptr %t219, ptr %l125
  br label %bb41
bb41:
  %t220 = load ptr, ptr %l125, !tbaa !29
  store ptr %t220, ptr %l21, !tbaa !29
  %t221 = load ptr, ptr %l10, !tbaa !29
  %t222 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t221, i64 %t222)
  br label %bb42
bb42:
  %t225 = load ptr, ptr %l21, !tbaa !29
  %t228 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t225)
  store i32 %t228, ptr %l130
  br label %bb43
bb43:
  %t229 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t230 = load i32, ptr %l130, !tbaa !23
  %t232 = icmp ne i32 %t230, %t229
  br i1 %t232, label %bb44, label %bb45
bb44:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l133, !tbaa !29
  %t235 = load i32, ptr %l17, !tbaa !23
  store i32 %t235, ptr %l134, !tbaa !23
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l21, !tbaa !29
  %t240 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v0, ptr %t236, ptr %t237)
  store i32 %t240, ptr %l137
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t241 = load ptr, ptr %l7, !tbaa !29
  %t242 = load ptr, ptr %l133, !tbaa !29
  %t243 = load i32, ptr %l134, !tbaa !23
  %t244 = load i32, ptr %l137, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v2, ptr %t242, i32 %t243, i32 %t244, ptr %t241, i1 false, i1 false)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t246 = load i64, ptr %l15, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l15, !tbaa !24
  br label %bb14
bb50:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l8 = alloca i1
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
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Block", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t10)
  store i1 %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load i1, ptr %l8, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
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
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffS(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  store i1 %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseHolds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l20 = alloca i1
  %l24 = alloca ptr
  %l32 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
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
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 22}
  %t13 = icmp eq i64 %t11, 5
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:If", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_50a05787c39822f3_4820228f4f4dc477)
  unreachable
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/ast:If", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Branch", ptr %t31, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 4
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l24, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/ast:If", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_50a05787c39822f3_4820228f4f4dc477)
  unreachable
bb15:
  br label %bb16
bb16:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/ast:If", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Branch", ptr %t59, i32 0, i32 2
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = load ptr, ptr %l24, !tbaa !29
  %t66 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %t64, i64 %t63)
  store i1 %t66, ptr %l32
  br label %bb17
bb17:
  %t67 = load i1, ptr %l32, !tbaa !21
  store i1 %t67, ptr %l20, !tbaa !21
  br label %bb18
bb18:
  %t68 = load i1, ptr %l20, !tbaa !21
  br i1 %t68, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb22
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/ast:If", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseHolds(ptr %v0, ptr %v1, ptr %t69, ptr %t73)
  store i1 %t76, ptr %l37
  br label %bb21
bb21:
  %t77 = load i1, ptr %l37, !tbaa !21
  store i1 %t77, ptr %l33, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l33, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_a066d2ce16f881cb_b1c9ea2c2a0314f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeep(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 44
  %t8 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrHolder(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca i64
  %l21 = alloca %"compiler/source:Span"
  %l24 = alloca i32
  %rv = alloca ptr
  %t48 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equietPlace(ptr %v0, ptr %v1, ptr %v3, ptr %t7, ptr %t8)
  store ptr %t11, ptr %l9
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l9, !tbaa !29
  store ptr %t12, ptr %rv
  br label %ret
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t14, ptr %l11, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i32, ptr %t16, i64 0
  %t18 = load i32, ptr %t17, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %t13, i32 %t18)
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l14, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i32, ptr %t24, i64 0
  %t26 = load i32, ptr %t25, !tbaa !33
  %t29 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t21, i32 %t26)
  store i64 %t29, ptr %l16
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t36)
  store %"compiler/source:Span" %t38, ptr %l21
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t39, i64 %t40)
  store i32 %t43, ptr %l24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = trunc i64 %t44 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 0
  store i64 0, ptr %t49
  %t50 = load %"compiler/source:Span", ptr %l21
  %t51 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t50, 0
  %t52 = load i32, ptr %l24, !tbaa !23
  %t53 = insertvalue { %"compiler/source:Span", i32, i32 } %t51, i32 %t52, 1
  %t55 = insertvalue { %"compiler/source:Span", i32, i32 } %t53, i32 %t46, 2
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t55, ptr %t56
  %t57 = load { i64, [4 x i64] }, ptr %t48
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t57, ptr %t59
  store ptr %t59, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNarrowed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i32
  %l8 = alloca i32
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l33 = alloca i32
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l46 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l52 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load i32, ptr %l8, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l13
  br label %bb2
bb2:
  %t16 = load i1, ptr %l13, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 62
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l20
  br label %bb6
bb6:
  %t27 = load i64, ptr %l20, !tbaa !24
  %t28 = icmp eq i64 %t27, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb10
bb9:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t38, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l27, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t41, ptr %l28, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l33
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t52)
  store %"compiler/source:Span" %t54, ptr %l35
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l27, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t57 = load i32, ptr %l33, !tbaa !23
  %t58 = load %"compiler/source:Span", ptr %l35
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v2, ptr %s0, ptr %t55, { i64, ptr } %t56, i32 %t57, %"compiler/source:Span" %t58)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l36
  br label %bb16
bb16:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l4
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  store ptr %t64, ptr %l38, !tbaa !29
  %t66 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t66, ptr %l40
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l38, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %s0, ptr %t67, { i64, ptr } %t68)
  store i32 %t69, ptr %l41
  br label %bb18
bb18:
  %t70 = load i32, ptr %l41, !tbaa !23
  store i32 %t70, ptr %l5, !tbaa !23
  %t71 = load i32, ptr %l5, !tbaa !23
  %t72 = load i32, ptr %l3, !tbaa !23
  %t75 = icmp eq i32 %t71, %t72
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t77 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t77, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l46, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t80)
  store %"compiler/source:Span" %t82, ptr %l48
  br label %bb22
bb22:
  %t83 = load i32, ptr %l5, !tbaa !23
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load ptr, ptr %l46, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l48
  %t90 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %t85, %"compiler/source:Span" %t86, i32 %t83, i32 20, ptr %t84, ptr null)
  store ptr %t90, ptr %l52
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load ptr, ptr %l52, !tbaa !29
  store ptr %t91, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportRules(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, [3 x i64] }
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca i64
  %l31 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca { i64, [3 x i64] }
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca i64
  %l62 = alloca i1
  %l64 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca { i64, [3 x i64] }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %l77 = alloca i1
  %l78 = alloca i1
  %l80 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca { i64, [3 x i64] }
  %l87 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %l94 = alloca i32
  %l97 = alloca ptr
  %l102 = alloca i32
  %l103 = alloca { i64, ptr }
  %l111 = alloca i64
  %l114 = alloca i64
  %l136 = alloca { i64, ptr }
  %l142 = alloca i1
  %l145 = alloca i1
  %l148 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l156 = alloca i64
  %l158 = alloca i64
  %l160 = alloca i64
  %l164 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l171 = alloca { i64, [3 x i64] }
  %l174 = alloca { i64, ptr }
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l177 = alloca i64
  %l184 = alloca i32
  %l188 = alloca i1
  %l192 = alloca i1
  %l203 = alloca i1
  %l206 = alloca i1
  %l207 = alloca i1
  %l210 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca i64
  %l219 = alloca { i64, ptr }
  %l221 = alloca %"compiler/source:Span"
  %l223 = alloca i64
  %l226 = alloca { i64, ptr }
  %l233 = alloca %"compiler/source:Span"
  %l236 = alloca { i64, [3 x i64] }
  %l239 = alloca { i64, ptr }
  %l241 = alloca %"compiler/diagmsg:Msg"
  %l242 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t63 = alloca { i64, [3 x i64] }, align 8
  %t349 = alloca { i64, [3 x i64] }, align 8
  %t503 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l21
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l21, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l25
  br label %bb2
bb2:
  %t18 = load i64, ptr %l25, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t18)
  store ptr %t31, ptr %l31
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l31, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 4
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Func", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t37, i32 %t41)
  store { i64, ptr } %t44, ptr %l37
  br label %bb4
bb4:
  %t45 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Func", ptr %t47, i32 0, i32 0
  %t50 = getelementptr %"compiler/source:Span", ptr %t49, i32 0, i32 0
  %t51 = load i32, ptr %t50, !tbaa !23
  %t53 = sext i32 %t51 to i64
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 0
  %t57 = getelementptr %"compiler/source:Span", ptr %t56, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = sext i32 %t58 to i64
  %t62 = add i64 %t60, 6
  store { i64, [3 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t63, i32 0, i32 0
  store i64 3, ptr %t64
  %t66 = insertvalue { i64, i64, i64 } undef, i64 %t46, 0
  %t68 = insertvalue { i64, i64, i64 } %t66, i64 %t53, 1
  %t70 = insertvalue { i64, i64, i64 } %t68, i64 %t62, 2
  %t71 = getelementptr { i64, [3 x i64] }, ptr %t63, i32 0, i32 1
  store { i64, i64, i64 } %t70, ptr %t71
  %t72 = load { i64, [3 x i64] }, ptr %t63
  store { i64, [3 x i64] } %t72, ptr %l6
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb5, label %bb6
bb5:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/load:Loader", ptr %t89, i32 0, i32 4
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l54, !tbaa !29
  %t93 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t93, ptr %l55
  %t94 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportMethod(ptr %v0)
  store %"compiler/diagmsg:Msg" %t94, ptr %l56
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t95 = load ptr, ptr %l54, !tbaa !29
  %t96 = load { i64, [3 x i64] }, ptr %l55
  %t97 = load %"compiler/diagmsg:Msg", ptr %l56
  %t98 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t95, { i64, [3 x i64] } %t96, %"compiler/diagmsg:Msg" %t97)
  store i64 %t98, ptr %l57
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Func", ptr %t99, i32 0, i32 5
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t106 = icmp sgt i64 %t104, 0
  br i1 %t106, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb14
bb11:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  store ptr %t111, ptr %l64, !tbaa !29
  %t112 = load i64, ptr %l1, !tbaa !24
  %t114 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t112)
  store i64 %t114, ptr %l66
  br label %bb12
bb12:
  %t115 = load ptr, ptr %l64, !tbaa !29
  %t116 = load i64, ptr %l66, !tbaa !24
  %t117 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t115, i64 %t116)
  store i64 %t117, ptr %l67
  br label %bb13
bb13:
  %t118 = load i64, ptr %l67, !tbaa !24
  %t119 = icmp sgt i64 %t118, 0
  store i1 %t119, ptr %l62, !tbaa !21
  br label %bb14
bb14:
  %t121 = load i1, ptr %l62, !tbaa !21
  br i1 %t121, label %bb15, label %bb16
bb15:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/load:Loader", ptr %t128, i32 0, i32 4
  %t131 = load ptr, ptr %t130, !tbaa !29
  store ptr %t131, ptr %l72, !tbaa !29
  %t132 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t132, ptr %l73
  %t133 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportGeneric(ptr %v0)
  store %"compiler/diagmsg:Msg" %t133, ptr %l74
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = load { i64, [3 x i64] }, ptr %l73
  %t136 = load %"compiler/diagmsg:Msg", ptr %l74
  %t137 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t134, { i64, [3 x i64] } %t135, %"compiler/diagmsg:Msg" %t136)
  store i64 %t137, ptr %l75
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  %t138 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t138, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t140, ptr %l77
  br label %bb20
bb20:
  %t141 = load i1, ptr %l77, !tbaa !21
  br i1 %t141, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb24
bb22:
  %t142 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t142, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t144, ptr %l80
  br label %bb23
bb23:
  %t145 = load i1, ptr %l80, !tbaa !21
  store i1 %t145, ptr %l78, !tbaa !21
  br label %bb24
bb24:
  %t146 = load i1, ptr %l78, !tbaa !21
  br i1 %t146, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/load:Loader", ptr %t153, i32 0, i32 4
  %t156 = load ptr, ptr %t155, !tbaa !29
  store ptr %t156, ptr %l84, !tbaa !29
  %t157 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t157, ptr %l85
  %t158 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t160 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s3, { i64, ptr } %t158)
  store { i64, ptr } %t160, ptr %l87
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t161 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  %t169 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportName(ptr %s3, ptr %v0, { i64, ptr } %t167)
  store %"compiler/diagmsg:Msg" %t169, ptr %l89
  br label %bb28
bb28:
  %t170 = load ptr, ptr %l84, !tbaa !29
  %t171 = load { i64, [3 x i64] }, ptr %l85
  %t172 = load %"compiler/diagmsg:Msg", ptr %l89
  %t173 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t170, { i64, [3 x i64] } %t171, %"compiler/diagmsg:Msg" %t172)
  store i64 %t173, ptr %l90
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t178 = load i64, ptr %l1, !tbaa !24
  %t181 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t177, i64 %t178)
  store i32 %t181, ptr %l94
  br label %bb31
bb31:
  %t182 = load i32, ptr %l94, !tbaa !23
  store i32 %t182, ptr %l7, !tbaa !23
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  store ptr %t188, ptr %l97, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l7, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l102
  br label %bb32
bb32:
  %t199 = load ptr, ptr %l97, !tbaa !29
  %t200 = load i32, ptr %l102, !tbaa !23
  %t201 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t199, i32 %t200)
  store { i64, ptr } %t201, ptr %l103
  br label %bb33
bb33:
  %t202 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t202, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t203 = load ptr, ptr %l2, !tbaa !29
  %t205 = getelementptr %"compiler/ast:Func", ptr %t203, i32 0, i32 3
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Sig", ptr %t206, i32 0, i32 0
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  store i64 %t211, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t213 = load i64, ptr %l10, !tbaa !24
  %t214 = load i64, ptr %l9, !tbaa !24
  %t217 = icmp sgt i64 %t213, %t214
  br i1 %t217, label %bb34, label %bb35
bb34:
  %t219 = load i64, ptr %l11, !tbaa !24
  %t221 = icmp sgt i64 %t219, 0
  br i1 %t221, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb39
bb36:
  %t223 = load i64, ptr %l10, !tbaa !24
  %t224 = load i64, ptr %l9, !tbaa !24
  %t227 = sub i64 %t223, %t224
  %t228 = load i64, ptr %l11, !tbaa !24
  %t231 = add i64 %t227, %t228
  %t233 = sub i64 %t231, 1
  %t234 = load i64, ptr %l11, !tbaa !24
  %t237 = sdiv i64 %t233, %t234
  store i64 %t237, ptr %l114, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb38
bb38:
  %t239 = load i64, ptr %l114, !tbaa !24
  store i64 %t239, ptr %l111, !tbaa !24
  br label %bb39
bb39:
  %t240 = load i64, ptr %l111, !tbaa !24
  store i64 %t240, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s5
  %t241 = load i64, ptr %l13, !tbaa !24
  %t242 = load i64, ptr %l12, !tbaa !24
  %t245 = icmp slt i64 %t241, %t242
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb42:
  br label %bb43
bb43:
  %t249 = load i64, ptr %l9, !tbaa !24
  %t250 = load i64, ptr %l13, !tbaa !24
  %t251 = load i64, ptr %l11, !tbaa !24
  %t254 = mul i64 %t250, %t251
  %t257 = add i64 %t249, %t254
  store i64 %t257, ptr %l14, !tbaa !24
  %t259 = load i64, ptr %l14, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t265 = icmp sge i64 %t259, %t262
  br i1 %t265, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb45:
  br label %bb46
bb46:
  %t267 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t267, ptr %l136, !tbaa !27
  %t268 = load i64, ptr %l14, !tbaa !24
  %t270 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr i32, ptr %t271, i64 %t268
  %t273 = load i32, ptr %t272, !tbaa !33
  store i32 %t273, ptr %l15, !tbaa !23
  %t275 = load i32, ptr %l15, !tbaa !23
  %t276 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t279 = icmp eq i32 %t275, %t276
  br i1 %t279, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb50
bb48:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load i32, ptr %l15, !tbaa !23
  %t285 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportParam(ptr %v0, ptr %t281, i32 %t282)
  store i1 %t285, ptr %l145
  br label %bb49
bb49:
  %t286 = load i1, ptr %l145, !tbaa !21
  store i1 %t286, ptr %l142, !tbaa !21
  br label %bb50
bb50:
  %t287 = load i1, ptr %l142, !tbaa !21
  br i1 %t287, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb52:
  br label %bb53
bb53:
  %t288 = load ptr, ptr %l2, !tbaa !29
  %t290 = getelementptr %"compiler/ast:Func", ptr %t288, i32 0, i32 3
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t293 = getelementptr %"compiler/ast:Sig", ptr %t291, i32 0, i32 0
  %t294 = load { i64, ptr }, ptr %t293, !tbaa !27
  store { i64, ptr } %t294, ptr %l148, !tbaa !27
  %t295 = load i64, ptr %l14, !tbaa !24
  %t297 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr ptr, ptr %t298, i64 %t295
  %t300 = load ptr, ptr %t299, !tbaa !39
  %t302 = getelementptr %"compiler/ast:Param", ptr %t300, i32 0, i32 0
  %t303 = load %"compiler/source:Span", ptr %t302
  store %"compiler/source:Span" %t303, ptr %l16
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 0
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = getelementptr %"compiler/load:Loader", ptr %t311, i32 0, i32 4
  %t314 = load ptr, ptr %t313, !tbaa !29
  store ptr %t314, ptr %l155, !tbaa !29
  %t315 = load i64, ptr %l4, !tbaa !24
  store i64 %t315, ptr %l156, !tbaa !24
  %t316 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t317 = load i32, ptr %t316, !tbaa !23
  %t319 = sext i32 %t317 to i64
  store i64 %t319, ptr %l158, !tbaa !24
  %t320 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t321 = load i32, ptr %t320, !tbaa !23
  %t323 = sext i32 %t321 to i64
  store i64 %t323, ptr %l160, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load ptr, ptr %l2, !tbaa !29
  %t327 = getelementptr %"compiler/ast:Func", ptr %t325, i32 0, i32 3
  %t328 = load ptr, ptr %t327, !tbaa !29
  %t330 = getelementptr %"compiler/ast:Sig", ptr %t328, i32 0, i32 0
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !27
  store { i64, ptr } %t331, ptr %l164, !tbaa !27
  %t332 = load i64, ptr %l14, !tbaa !24
  %t334 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr ptr, ptr %t335, i64 %t332
  %t337 = load ptr, ptr %t336, !tbaa !39
  %t339 = getelementptr %"compiler/ast:Param", ptr %t337, i32 0, i32 1
  %t340 = load i32, ptr %t339, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s5, ptr %t324, i32 %t340)
  store { i64, ptr } %t343, ptr %l168
  br label %bb54
bb54:
  %t344 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = load i64, ptr %l160, !tbaa !24
  %t348 = add i64 %t346, %t345
  store { i64, [3 x i64] } zeroinitializer, ptr %t349
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t349, i32 0, i32 0
  store i64 3, ptr %t350
  %t351 = load i64, ptr %l156, !tbaa !24
  %t352 = insertvalue { i64, i64, i64 } undef, i64 %t351, 0
  %t353 = load i64, ptr %l158, !tbaa !24
  %t354 = insertvalue { i64, i64, i64 } %t352, i64 %t353, 1
  %t356 = insertvalue { i64, i64, i64 } %t354, i64 %t348, 2
  %t357 = getelementptr { i64, [3 x i64] }, ptr %t349, i32 0, i32 1
  store { i64, i64, i64 } %t356, ptr %t357
  %t358 = load { i64, [3 x i64] }, ptr %t349
  store { i64, [3 x i64] } %t358, ptr %l171
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i32, ptr %l15, !tbaa !23
  %t363 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t359, i32 %t360)
  store { i64, ptr } %t363, ptr %l174
  br label %bb55
bb55:
  %t364 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 0
  %t366 = extractvalue { i64, ptr } %t364, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  %t372 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportType(ptr %s5, ptr %v0, { i64, ptr } %t370)
  store %"compiler/diagmsg:Msg" %t372, ptr %l176
  br label %bb56
bb56:
  %t373 = load ptr, ptr %l155, !tbaa !29
  %t374 = load { i64, [3 x i64] }, ptr %l171
  %t375 = load %"compiler/diagmsg:Msg", ptr %l176
  %t376 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t373, { i64, [3 x i64] } %t374, %"compiler/diagmsg:Msg" %t375)
  store i64 %t376, ptr %l177
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb58:
  %t377 = load i64, ptr %l13, !tbaa !24
  %t379 = add i64 %t377, 1
  store i64 %t379, ptr %l13, !tbaa !24
  br label %bb40
bb59:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/check:Checker", ptr %t381, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  %t387 = load i32, ptr %l7, !tbaa !23
  %t390 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t386, i32 %t387)
  store i32 %t390, ptr %l184
  br label %bb60
bb60:
  %t391 = load i32, ptr %l184, !tbaa !23
  store i32 %t391, ptr %l17, !tbaa !23
  %t392 = load i32, ptr %l17, !tbaa !23
  %t393 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t396 = icmp eq i32 %t392, %t393
  br i1 %t396, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l188, !tbaa !21
  br label %bb63
bb62:
  %t398 = load i32, ptr %l17, !tbaa !23
  %t399 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t402 = icmp eq i32 %t398, %t399
  store i1 %t402, ptr %l188, !tbaa !21
  br label %bb63
bb63:
  %t404 = load i1, ptr %l188, !tbaa !21
  br i1 %t404, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l192, !tbaa !21
  br label %bb66
bb65:
  %t405 = load ptr, ptr %l2, !tbaa !29
  %t407 = getelementptr %"compiler/ast:Func", ptr %t405, i32 0, i32 3
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/ast:Sig", ptr %t408, i32 0, i32 1
  %t411 = load { i64, ptr }, ptr %t410, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t415 = icmp eq i64 %t413, 0
  store i1 %t415, ptr %l192, !tbaa !21
  br label %bb66
bb66:
  %t417 = load i1, ptr %l192, !tbaa !21
  br i1 %t417, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb68:
  br label %bb69
bb69:
  %t418 = load ptr, ptr %l2, !tbaa !29
  %t420 = getelementptr %"compiler/ast:Func", ptr %t418, i32 0, i32 3
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"compiler/ast:Sig", ptr %t421, i32 0, i32 1
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !27
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t428 = icmp sgt i64 %t426, 1
  br i1 %t428, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb77
bb71:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load i32, ptr %l17, !tbaa !23
  %t434 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t430, i32 %t431)
  store i1 %t434, ptr %l206
  br label %bb72
bb72:
  %t435 = load i1, ptr %l206, !tbaa !21
  br i1 %t435, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l207, !tbaa !21
  br label %bb76
bb74:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i32, ptr %l17, !tbaa !23
  %t440 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportArray(ptr %v0, ptr %t436, i32 %t437)
  store i1 %t440, ptr %l210
  br label %bb75
bb75:
  %t441 = load i1, ptr %l210, !tbaa !21
  store i1 %t441, ptr %l207, !tbaa !21
  br label %bb76
bb76:
  %t442 = load i1, ptr %l207, !tbaa !21
  %t443 = xor i1 %t442, true
  store i1 %t443, ptr %l203, !tbaa !21
  br label %bb77
bb77:
  %t445 = load i1, ptr %l203, !tbaa !21
  br i1 %t445, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s10
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/check:Checker", ptr %t446, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t451 = getelementptr %"compiler/generic:Program", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = getelementptr %"compiler/load:Loader", ptr %t452, i32 0, i32 4
  %t455 = load ptr, ptr %t454, !tbaa !29
  store ptr %t455, ptr %l215, !tbaa !29
  %t456 = load i64, ptr %l4, !tbaa !24
  store i64 %t456, ptr %l216, !tbaa !24
  %t457 = load ptr, ptr %l2, !tbaa !29
  %t459 = getelementptr %"compiler/ast:Func", ptr %t457, i32 0, i32 3
  %t460 = load ptr, ptr %t459, !tbaa !29
  %t462 = getelementptr %"compiler/ast:Sig", ptr %t460, i32 0, i32 1
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l219, !tbaa !27
  %t464 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr ptr, ptr %t465, i64 0
  %t467 = load ptr, ptr %t466, !tbaa !39
  %t469 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t467)
  store %"compiler/source:Span" %t469, ptr %l221
  br label %bb80
bb79:
  br label %bb85
bb80:
  %t470 = getelementptr %"compiler/source:Span", ptr %l221, i32 0, i32 0
  %t471 = load i32, ptr %t470, !tbaa !23
  %t473 = sext i32 %t471 to i64
  store i64 %t473, ptr %l223, !tbaa !24
  %t474 = load ptr, ptr %l2, !tbaa !29
  %t476 = getelementptr %"compiler/ast:Func", ptr %t474, i32 0, i32 3
  %t477 = load ptr, ptr %t476, !tbaa !29
  %t479 = getelementptr %"compiler/ast:Sig", ptr %t477, i32 0, i32 1
  %t480 = load { i64, ptr }, ptr %t479, !tbaa !27
  store { i64, ptr } %t480, ptr %l226, !tbaa !27
  %t481 = load ptr, ptr %l2, !tbaa !29
  %t483 = getelementptr %"compiler/ast:Func", ptr %t481, i32 0, i32 3
  %t484 = load ptr, ptr %t483, !tbaa !29
  %t486 = getelementptr %"compiler/ast:Sig", ptr %t484, i32 0, i32 1
  %t487 = load { i64, ptr }, ptr %t486, !tbaa !27
  %t489 = extractvalue { i64, ptr } %t487, 0
  %t491 = sub i64 %t489, 1
  %t493 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr ptr, ptr %t494, i64 %t491
  %t496 = load ptr, ptr %t495, !tbaa !39
  %t498 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t496)
  store %"compiler/source:Span" %t498, ptr %l233
  br label %bb81
bb81:
  %t499 = getelementptr %"compiler/source:Span", ptr %l233, i32 0, i32 1
  %t500 = load i32, ptr %t499, !tbaa !23
  %t502 = sext i32 %t500 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t503
  %t504 = getelementptr { i64, [3 x i64] }, ptr %t503, i32 0, i32 0
  store i64 3, ptr %t504
  %t505 = load i64, ptr %l216, !tbaa !24
  %t506 = insertvalue { i64, i64, i64 } undef, i64 %t505, 0
  %t507 = load i64, ptr %l223, !tbaa !24
  %t508 = insertvalue { i64, i64, i64 } %t506, i64 %t507, 1
  %t510 = insertvalue { i64, i64, i64 } %t508, i64 %t502, 2
  %t511 = getelementptr { i64, [3 x i64] }, ptr %t503, i32 0, i32 1
  store { i64, i64, i64 } %t510, ptr %t511
  %t512 = load { i64, [3 x i64] }, ptr %t503
  store { i64, [3 x i64] } %t512, ptr %l236
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i32, ptr %l17, !tbaa !23
  %t517 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t513, i32 %t514)
  store { i64, ptr } %t517, ptr %l239
  br label %bb82
bb82:
  %t518 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t519 = extractvalue { i64, ptr } %t518, 0
  %t520 = extractvalue { i64, ptr } %t518, 1
  %t521 = mul i64 %t519, 1
  %t522 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t521)
  call void @llvm.memcpy.p0.p0.i64(ptr %t522, ptr %t520, i64 %t521, i1 false)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  %t526 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportResult(ptr %s10, ptr %v0, { i64, ptr } %t524)
  store %"compiler/diagmsg:Msg" %t526, ptr %l241
  br label %bb83
bb83:
  %t527 = load ptr, ptr %l215, !tbaa !29
  %t528 = load { i64, [3 x i64] }, ptr %l236
  %t529 = load %"compiler/diagmsg:Msg", ptr %l241
  %t530 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t527, { i64, [3 x i64] } %t528, %"compiler/diagmsg:Msg" %t529)
  store i64 %t530, ptr %l242
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s10)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactOwner(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodNamed(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t9 = icmp ne i64 %t7, %a2
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t11, ptr %l10, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l12, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l11, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t25, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l13, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 28}
  %t34 = icmp eq i64 %t32, 12
  store i1 %t34, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l14, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb12
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l19, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t43)
  store %"compiler/source:Span" %t45, ptr %l21
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l19, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l21
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s2, ptr %t46, %"compiler/source:Span" %t47)
  store { i64, ptr } %t48, ptr %l22
  br label %bb11
bb11:
  %t49 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t49, ptr %l23, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l24, !tbaa !24
  %t52 = load i64, ptr %l24, !tbaa !24
  %t53 = mul i64 %t52, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l25, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l24, !tbaa !24
  %t62 = mul i64 %t61, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %t60, i64 %t62, i1 false)
  %t63 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t63, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  %t64 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t64, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t65, ptr %l27, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l28, !tbaa !24
  %t68 = load i64, ptr %l28, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l29, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l28, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t79, ptr %l27, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t80, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_ce477a1e17d80ea_6907ddc3684fedfe)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca i1
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 14
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l2, !tbaa !23
  %t9 = load i32, ptr %l2, !tbaa !23
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t13 = icmp eq i32 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l14
  br label %bb4
bb4:
  %t20 = load i1, ptr %l14, !tbaa !21
  %t21 = xor i1 %t20, true
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l11, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  store ptr %t31, ptr %l19, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l24
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l19, !tbaa !29
  %t43 = load i32, ptr %l24, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t42, i32 %t43)
  store { i64, ptr } %t44, ptr %l25
  br label %bb10
bb10:
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t45, ptr %l3, !tbaa !27
  %t46 = load i64, ptr %l1, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t52 = icmp slt i64 %t46, %t49
  br i1 %t52, label %bb11, label %bb12
bb11:
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t54, ptr %l31, !tbaa !27
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 %t55
  %t60 = load i32, ptr %t59, !tbaa !33
  store i32 %t60, ptr %l30, !tbaa !23
  br label %bb13
bb12:
  %t62 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t62, ptr %l30, !tbaa !23
  br label %bb13
bb13:
  %t64 = load i32, ptr %l30, !tbaa !23
  store i32 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeWritten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l18 = alloca { i64, [3 x i64] }
  %l23 = alloca i1
  %l35 = alloca { i64, ptr }
  %l46 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t88 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/ast:VarDecl", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t20 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v2, ptr %t10, i64 %t11, ptr %t15)
  store { i64, [3 x i64] } %t20, ptr %l18
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t21 = load { i64, [3 x i64] }, ptr %l18
  store { i64, [3 x i64] } %t21, ptr %rv
  br label %ret
bb4:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/ast:StructBody", ptr %t22, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/ast:VarDecl", ptr %t31, i32 0, i32 4
  %t34 = load i1, ptr %t33, !tbaa !21
  %t36 = xor i1 %t34, true
  store i1 %t36, ptr %l23, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/ast:StructBody", ptr %t39, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l7, !tbaa !24
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t56 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t56, ptr %l35, !tbaa !27
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 %t57
  %t62 = load ptr, ptr %t61, !tbaa !39
  store ptr %t62, ptr %l8, !tbaa !29
  %t64 = load ptr, ptr %l8, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Param", ptr %t64, i32 0, i32 1
  %t67 = load i32, ptr %t66, !tbaa !23
  %t71 = icmp eq i32 %t67, %a4
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t75 = load ptr, ptr %l8, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Param", ptr %t75, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t82 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %t73, i64 %t74, ptr %t78)
  store { i64, [3 x i64] } %t82, ptr %l46
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t83 = load { i64, [3 x i64] }, ptr %l46
  store { i64, [3 x i64] } %t83, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb10
bb19:
  br label %bb20
bb20:
  store { i64, [3 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 0
  store i64 0, ptr %t89
  %t90 = load { i64, [3 x i64] }, ptr %t88
  store { i64, [3 x i64] } %t90, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/generic:Origin"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l41 = alloca ptr
  %l46 = alloca i64
  %l51 = alloca i1
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, ptr }
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca i1
  %l80 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l89 = alloca { i64, ptr }
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %l94 = alloca ptr
  %l96 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l127 = alloca { i64, ptr }
  %l135 = alloca i64
  %l138 = alloca i1
  %l143 = alloca i64
  %l146 = alloca i32
  %l151 = alloca i32
  %l156 = alloca i1
  %l160 = alloca ptr
  %l162 = alloca ptr
  %l163 = alloca i64
  %l164 = alloca i32
  %l167 = alloca { i64, [3 x i64] }
  %l168 = alloca i1
  %l171 = alloca ptr
  %l174 = alloca i1
  %l178 = alloca i1
  %l183 = alloca ptr
  %l187 = alloca i32
  %l192 = alloca ptr
  %l195 = alloca %"compiler/generic:Origin"
  %l200 = alloca i64
  %l206 = alloca i1
  %l207 = alloca ptr
  %l211 = alloca i32
  %l213 = alloca i1
  %l217 = alloca ptr
  %l220 = alloca i64
  %l224 = alloca i32
  %l227 = alloca i1
  %l230 = alloca ptr
  %l235 = alloca i32
  %l240 = alloca i32
  %l243 = alloca i32
  %l248 = alloca i32
  %l249 = alloca i32
  %l251 = alloca ptr
  %l252 = alloca i64
  %l255 = alloca { i64, [3 x i64] }
  %l256 = alloca i64
  %l258 = alloca ptr
  %l262 = alloca ptr
  %l265 = alloca { i64, ptr }
  %l268 = alloca %"compiler/check:roFn"
  %l272 = alloca ptr
  %l276 = alloca i1
  %l280 = alloca i64
  %l283 = alloca ptr
  %l288 = alloca i32
  %l289 = alloca { i64, ptr }
  %l294 = alloca ptr
  %l295 = alloca i32
  %l300 = alloca i64
  %l301 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t633 = alloca { i64, [4 x i64] }, align 8
  %t641 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 0, ptr %l4, !tbaa !23
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t8, i64 %t9)
  store i1 %t12, ptr %l27
  br label %bb3
bb2:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i1, ptr %l27, !tbaa !21
  %t14 = xor i1 %t13, true
  store i1 %t14, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l23, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l31, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t21)
  store i64 %t23, ptr %l33
  br label %bb7
bb6:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb7:
  %t24 = load ptr, ptr %l31, !tbaa !29
  %t25 = load i64, ptr %l33, !tbaa !24
  %t26 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t24, i64 %t25)
  store i64 %t26, ptr %l34
  br label %bb8
bb8:
  %t27 = load i64, ptr %l34, !tbaa !24
  %t28 = icmp sgt i64 %t27, 0
  store i1 %t28, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l29, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t31)
  store i64 %t33, ptr %l37
  br label %bb12
bb11:
  br label %bb77
bb12:
  %t34 = load i64, ptr %l37, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store ptr %t42, ptr %l41
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l41, !tbaa !29
  store ptr %t43, ptr %l6, !tbaa !29
  %t44 = load ptr, ptr %l6, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Func", ptr %t44, i32 0, i32 5
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Func", ptr %t53, i32 0, i32 5
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l46, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i64, ptr %l46, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l6, !tbaa !29
  %t63 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t61)
  store i1 %t63, ptr %l51
  br label %bb17
bb17:
  %t64 = load i1, ptr %l51, !tbaa !21
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l55
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t73 = load i64, ptr %l55, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t78 = load i64, ptr %l5, !tbaa !24
  %t81 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t77, i64 %t78)
  store i64 %t81, ptr %l59
  br label %bb22
bb22:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l59, !tbaa !24
  %t85 = icmp sgt i64 %t83, %t82
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l62, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t88, ptr %l63
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t92 = getelementptr %"compiler/ast:Func", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %t92, !tbaa !23
  %t96 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t89, i32 %t93)
  store { i64, ptr } %t96, ptr %l67
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t97 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthsNotAValue(ptr %v0, ptr %v0, { i64, ptr } %t97)
  store %"compiler/diagmsg:Msg" %t98, ptr %l68
  br label %bb26
bb26:
  %t99 = load ptr, ptr %l62, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l63
  %t101 = load %"compiler/diagmsg:Msg", ptr %l68
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t99, %"compiler/source:Span" %t100, %"compiler/diagmsg:Msg" %t101)
  store i64 %t102, ptr %l69
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l1
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t103, %"compiler/source:Span" %t104)
  store ptr %t107, ptr %l72
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t108 = load ptr, ptr %l72, !tbaa !29
  store ptr %t108, ptr %rv
  br label %ret
bb29:
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = icmp eq i64 %t111, 0
  br i1 %t113, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb33
bb31:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i64, ptr %l5, !tbaa !24
  %t122 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l80
  br label %bb32
bb32:
  %t123 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t126 = load i64, ptr %l80, !tbaa !24
  %t128 = icmp ne i64 %t126, %t125
  store i1 %t128, ptr %l76, !tbaa !21
  br label %bb33
bb33:
  %t130 = load i1, ptr %l76, !tbaa !21
  br i1 %t130, label %bb34, label %bb35
bb34:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l84, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t132, ptr %l85
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l6, !tbaa !29
  %t136 = getelementptr %"compiler/ast:Func", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %t136, !tbaa !23
  %t140 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t133, i32 %t137)
  store { i64, ptr } %t140, ptr %l89
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t141 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t142 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotAValue(ptr %v0, ptr %v0, { i64, ptr } %t141)
  store %"compiler/diagmsg:Msg" %t142, ptr %l90
  br label %bb37
bb37:
  %t143 = load ptr, ptr %l84, !tbaa !29
  %t144 = load %"compiler/source:Span", ptr %l85
  %t145 = load %"compiler/diagmsg:Msg", ptr %l90
  %t146 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t143, %"compiler/source:Span" %t144, %"compiler/diagmsg:Msg" %t145)
  store i64 %t146, ptr %l91
  br label %bb38
bb38:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l1
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t147, %"compiler/source:Span" %t148)
  store ptr %t151, ptr %l94
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t152 = load ptr, ptr %l94, !tbaa !29
  store ptr %t152, ptr %rv
  br label %ret
bb40:
  %t153 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  store i64 %t155, ptr %l96, !tbaa !24
  %t156 = load i64, ptr %l96, !tbaa !24
  %t157 = icmp sge i64 %t156, 0
  br i1 %t157, label %bb41, label %bb42
bb41:
  %t159 = load i64, ptr %l96, !tbaa !24
  %t160 = icmp sle i64 %t159, 2305843009213693951
  br i1 %t160, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_de04a3fa462e2701_a46741d0a252ba9d)
  unreachable
bb43:
  %t162 = load i64, ptr %l96, !tbaa !24
  %t163 = mul i64 %t162, 4
  %t164 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  store i64 %t170, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t172 = load i64, ptr %l10, !tbaa !24
  %t173 = load i64, ptr %l9, !tbaa !24
  %t176 = icmp sgt i64 %t172, %t173
  br i1 %t176, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_de04a3fa462e2701_a46741d0a252ba9d)
  unreachable
bb45:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t180 = icmp sgt i64 %t178, 0
  br i1 %t180, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb50
bb47:
  %t182 = load i64, ptr %l10, !tbaa !24
  %t183 = load i64, ptr %l9, !tbaa !24
  %t186 = sub i64 %t182, %t183
  %t187 = load i64, ptr %l11, !tbaa !24
  %t190 = add i64 %t186, %t187
  %t192 = sub i64 %t190, 1
  %t193 = load i64, ptr %l11, !tbaa !24
  %t196 = sdiv i64 %t192, %t193
  store i64 %t196, ptr %l108, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb49
bb49:
  %t198 = load i64, ptr %l108, !tbaa !24
  store i64 %t198, ptr %l105, !tbaa !24
  br label %bb50
bb50:
  %t199 = load i64, ptr %l105, !tbaa !24
  store i64 %t199, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb51
bb51:
  %t200 = load i64, ptr %l13, !tbaa !24
  %t201 = load i64, ptr %l12, !tbaa !24
  %t204 = icmp slt i64 %t200, %t201
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb52, label %bb53
bb52:
  br label %bb56
bb53:
  br label %bb54
bb54:
  %t208 = load i64, ptr %l9, !tbaa !24
  %t209 = load i64, ptr %l13, !tbaa !24
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = mul i64 %t209, %t210
  %t216 = add i64 %t208, %t213
  store i64 %t216, ptr %l14, !tbaa !24
  %t218 = load i64, ptr %l14, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t219, ptr %l127, !tbaa !27
  %t220 = load i64, ptr %l14, !tbaa !24
  %t222 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr i32, ptr %t223, i64 %t220
  %t225 = load i32, ptr %t224, !tbaa !33
  %t228 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr i32, ptr %t229, i64 %t218
  store i32 %t225, ptr %t230, !tbaa !33
  br label %bb55
bb55:
  %t231 = load i64, ptr %l13, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l13, !tbaa !24
  br label %bb51
bb56:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/check:Checker", ptr %t235, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t239 = load i64, ptr %l2, !tbaa !24
  %t242 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %t238, i64 %t239)
  store i64 %t242, ptr %l135
  br label %bb57
bb57:
  %t243 = load i64, ptr %l135, !tbaa !24
  store i64 %t243, ptr %l15, !tbaa !24
  %t244 = load i64, ptr %l15, !tbaa !24
  %t246 = icmp sge i64 %t244, 0
  br i1 %t246, label %bb58, label %bb59
bb58:
  %t248 = load i64, ptr %l15, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t254 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t257 = icmp eq i32 %t253, %t254
  store i1 %t257, ptr %l138, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb60
bb60:
  %t259 = load i1, ptr %l138, !tbaa !21
  br i1 %t259, label %bb61, label %bb62
bb61:
  %t260 = load i64, ptr %l15, !tbaa !24
  store i64 %t260, ptr %l143, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t264, i32 0)
  store i32 %t266, ptr %l146
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t267 = load i32, ptr %l146, !tbaa !23
  %t268 = load i64, ptr %l143, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr i32, ptr %t270, i64 %t268
  store i32 %t267, ptr %t271, !tbaa !33
  br label %bb64
bb64:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  %t278 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t281 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s1, ptr %t277, { i64, ptr } %t278)
  store i32 %t281, ptr %l151
  br label %bb65
bb65:
  %t282 = load i32, ptr %l151, !tbaa !23
  store i32 %t282, ptr %l4, !tbaa !23
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load i64, ptr %l5, !tbaa !24
  %t285 = load i32, ptr %l4, !tbaa !23
  %t286 = load %"compiler/source:Span", ptr %l1
  %t291 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %t283, i64 %t284, i32 %t285, %"compiler/source:Span" %t286)
  store i1 %t291, ptr %l156
  br label %bb66
bb66:
  %t292 = load i1, ptr %l156, !tbaa !21
  %t293 = xor i1 %t292, true
  br i1 %t293, label %bb67, label %bb68
bb67:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load %"compiler/source:Span", ptr %l1
  %t299 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t295, %"compiler/source:Span" %t296)
  store ptr %t299, ptr %l160
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t300 = load ptr, ptr %l160, !tbaa !29
  store ptr %t300, ptr %rv
  br label %ret
bb70:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !29
  store ptr %t304, ptr %l162, !tbaa !29
  %t305 = load i64, ptr %l2, !tbaa !24
  store i64 %t305, ptr %l163, !tbaa !24
  %t306 = load i32, ptr %l4, !tbaa !23
  store i32 %t306, ptr %l164, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i64, ptr %l2, !tbaa !24
  %t311 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %t307, i64 %t308)
  store { i64, [3 x i64] } %t311, ptr %l167
  br label %bb71
bb71:
  %t312 = load ptr, ptr %l162, !tbaa !29
  %t313 = load i64, ptr %l163, !tbaa !24
  %t314 = load i32, ptr %l164, !tbaa !23
  %t315 = load { i64, [3 x i64] }, ptr %l167
  %t316 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %t312, i64 %t313, i32 %t314, { i64, [3 x i64] } %t315)
  store i1 %t316, ptr %l168
  br label %bb72
bb72:
  %t317 = load i1, ptr %l168, !tbaa !21
  br i1 %t317, label %bb73, label %bb74
bb73:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l1
  %t322 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t318, %"compiler/source:Span" %t319)
  store ptr %t322, ptr %l171
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t323 = load ptr, ptr %l171, !tbaa !29
  store ptr %t323, ptr %rv
  br label %ret
bb76:
  call void @__olang_scope_close(ptr %s1)
  br label %bb77
bb77:
  %t324 = load i64, ptr %l2, !tbaa !24
  %t326 = icmp slt i64 %t324, 0
  br i1 %t326, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb81
bb79:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/check:Checker", ptr %t328, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t332 = load i64, ptr %l2, !tbaa !24
  %t335 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t331, i64 %t332)
  store i1 %t335, ptr %l178
  br label %bb80
bb80:
  %t336 = load i1, ptr %l178, !tbaa !21
  store i1 %t336, ptr %l174, !tbaa !21
  br label %bb81
bb81:
  %t337 = load i1, ptr %l174, !tbaa !21
  br i1 %t337, label %bb82, label %bb83
bb82:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t338, %"compiler/source:Span" %t339, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l1
  %t346 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t342, %"compiler/source:Span" %t343)
  store ptr %t346, ptr %l183
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t347 = load ptr, ptr %l183, !tbaa !29
  store ptr %t347, ptr %rv
  br label %ret
bb86:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/check:Checker", ptr %t348, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !29
  %t352 = load i64, ptr %l2, !tbaa !24
  %t355 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t351, i64 %t352)
  store i32 %t355, ptr %l187
  br label %bb87
bb87:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t361 = getelementptr %"compiler/generic:Program", ptr %t359, i32 0, i32 51
  %t362 = load %"compiler/generic:Origin", ptr %t361
  store %"compiler/generic:Origin" %t362, ptr %l16
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  store ptr %t367, ptr %l192, !tbaa !29
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load %"compiler/source:Span", ptr %l1
  %t372 = call %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %t368, %"compiler/source:Span" %t369)
  store %"compiler/generic:Origin" %t372, ptr %l195
  br label %bb88
bb88:
  %t373 = load %"compiler/generic:Origin", ptr %l195
  %t374 = load ptr, ptr %l192, !tbaa !29
  %t375 = getelementptr %"compiler/generic:Program", ptr %t374, i32 0, i32 51
  store %"compiler/generic:Origin" %t373, ptr %t375
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/check:Checker", ptr %t376, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !29
  %t380 = load i64, ptr %l2, !tbaa !24
  %t381 = load i32, ptr %l4, !tbaa !23
  %t385 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t379, i64 %t380, i32 %t381)
  store i64 %t385, ptr %l200
  br label %bb89
bb89:
  %t386 = load i64, ptr %l200, !tbaa !24
  store i64 %t386, ptr %l17, !tbaa !24
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = getelementptr %"compiler/check:Checker", ptr %t387, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !29
  %t391 = load %"compiler/generic:Origin", ptr %l16
  %t394 = getelementptr %"compiler/generic:Program", ptr %t390, i32 0, i32 51
  store %"compiler/generic:Origin" %t391, ptr %t394
  %t395 = load i32, ptr %l4, !tbaa !23
  %t397 = icmp ne i32 %t395, 0
  br i1 %t397, label %bb90, label %bb91
bb90:
  %t399 = load ptr, ptr %l0, !tbaa !29
  store ptr %t399, ptr %l207, !tbaa !29
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/check:Checker", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load i64, ptr %l17, !tbaa !24
  %t407 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t403, i64 %t404)
  store i32 %t407, ptr %l211
  br label %bb92
bb91:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb94
bb92:
  %t408 = load %"compiler/source:Span", ptr %l1
  %t409 = load ptr, ptr %l207, !tbaa !29
  %t410 = load i32, ptr %l211, !tbaa !23
  %t412 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t409, i32 %t410, %"compiler/source:Span" %t408)
  store i1 %t412, ptr %l213
  br label %bb93
bb93:
  %t413 = load i1, ptr %l213, !tbaa !21
  %t414 = xor i1 %t413, true
  store i1 %t414, ptr %l206, !tbaa !21
  br label %bb94
bb94:
  %t416 = load i1, ptr %l206, !tbaa !21
  br i1 %t416, label %bb95, label %bb96
bb95:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load %"compiler/source:Span", ptr %l1
  %t421 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t417, %"compiler/source:Span" %t418)
  store ptr %t421, ptr %l217
  br label %bb97
bb96:
  br label %bb98
bb97:
  call void @__olang_scope_close(ptr %s0)
  %t422 = load ptr, ptr %l217, !tbaa !29
  store ptr %t422, ptr %rv
  br label %ret
bb98:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i64, ptr %l17, !tbaa !24
  %t427 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t423, i64 %t424)
  store i64 %t427, ptr %l220
  br label %bb99
bb99:
  %t428 = load i64, ptr %l220, !tbaa !24
  store i64 %t428, ptr %l18, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/check:Checker", ptr %t429, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t433 = load i64, ptr %l17, !tbaa !24
  %t436 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t432, i64 %t433)
  store i32 %t436, ptr %l224
  br label %bb100
bb100:
  %t437 = load i32, ptr %l224, !tbaa !23
  store i32 %t437, ptr %l19, !tbaa !23
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i32, ptr %l19, !tbaa !23
  %t442 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t438, i32 %t439)
  store i1 %t442, ptr %l227
  br label %bb101
bb101:
  %t443 = load i1, ptr %l227, !tbaa !21
  br i1 %t443, label %bb102, label %bb103
bb102:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/check:Checker", ptr %t444, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !29
  %t449 = getelementptr %"compiler/generic:Program", ptr %t447, i32 0, i32 2
  store ptr %t449, ptr %l230, !tbaa !29
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/check:Checker", ptr %t450, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !29
  %t455 = getelementptr %"compiler/generic:Program", ptr %t453, i32 0, i32 2
  %t456 = load i32, ptr %l19, !tbaa !23
  %t459 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t455, i32 %t456)
  store i32 %t459, ptr %l235
  br label %bb104
bb103:
  br label %bb109
bb104:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/check:Checker", ptr %t460, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !29
  %t465 = getelementptr %"compiler/generic:Program", ptr %t463, i32 0, i32 2
  %t466 = load i32, ptr %l19, !tbaa !23
  %t469 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t465, i32 %t466)
  store i32 %t469, ptr %l240
  br label %bb105
bb105:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i64, ptr %l18, !tbaa !24
  %t474 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t470, i64 %t471)
  store i32 %t474, ptr %l243
  br label %bb106
bb106:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/check:Checker", ptr %t475, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !29
  %t480 = getelementptr %"compiler/generic:Program", ptr %t478, i32 0, i32 2
  %t481 = load i32, ptr %l19, !tbaa !23
  %t484 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t480, i32 %t481)
  store i32 %t484, ptr %l248
  br label %bb107
bb107:
  %t485 = load ptr, ptr %l230, !tbaa !29
  %t486 = load i32, ptr %l235, !tbaa !23
  %t487 = load i32, ptr %l240, !tbaa !23
  %t488 = load i32, ptr %l243, !tbaa !23
  %t489 = load i32, ptr %l248, !tbaa !23
  %t490 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t485, i32 %t486, i32 %t487, i32 %t488, i32 %t489, i64 0, i1 false, i32 0, i64 0)
  store i32 %t490, ptr %l249
  br label %bb108
bb108:
  %t491 = load i32, ptr %l249, !tbaa !23
  store i32 %t491, ptr %l19, !tbaa !23
  br label %bb109
bb109:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t494 = getelementptr %"compiler/check:Checker", ptr %t492, i32 0, i32 93
  store ptr %t494, ptr %l251, !tbaa !29
  %t495 = load i64, ptr %l18, !tbaa !24
  store i64 %t495, ptr %l252, !tbaa !24
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load %"compiler/source:Span", ptr %l1
  %t500 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t496, %"compiler/source:Span" %t497)
  store { i64, [3 x i64] } %t500, ptr %l255
  br label %bb110
bb110:
  %t501 = ptrtoint ptr %v0 to i64
  store i64 %t501, ptr %l256, !tbaa !24
  %t502 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroFn_2e3
  br i1 %t502, label %bb111, label %bb112
bb111:
  %t504 = call ptr @__olang_region_make(ptr %v0)
  %t505 = ptrtoint ptr %t504 to i64
  store i64 %t505, ptr %l256, !tbaa !24
  br label %bb112
bb112:
  %t506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t506, ptr %l258, !tbaa !29
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/check:Checker", ptr %t507, i32 0, i32 1
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t511 = load i64, ptr %l2, !tbaa !24
  %t514 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t510, i64 %t511)
  store ptr %t514, ptr %l262
  br label %bb113
bb113:
  %t515 = load ptr, ptr %l262, !tbaa !29
  %t517 = getelementptr %"compiler/ast:Func", ptr %t515, i32 0, i32 2
  %t518 = load i32, ptr %t517, !tbaa !23
  %t519 = load ptr, ptr %l258, !tbaa !29
  %t521 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t519, i32 %t518)
  store { i64, ptr } %t521, ptr %l265
  br label %bb114
bb114:
  %t522 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t524 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t525 = extractvalue { i64, ptr } %t524, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = add i64 %t523, %t526
  %t528 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t529 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t530 = add i64 %t527, %t529
  %t531 = load i64, ptr %l256
  %t532 = inttoptr i64 %t531 to ptr
  %t533 = call ptr @__olang_scope_alloc(ptr %t532, i64 %t530)
  call void @olang_textcopy(ptr %t533, ptr %t522, i64 %t523)
  %t534 = getelementptr i8, ptr %t533, i64 %t523
  call void @olang_textcopy(ptr %t534, ptr %t525, i64 %t526)
  %t535 = getelementptr i8, ptr %t534, i64 %t526
  call void @olang_textcopy(ptr %t535, ptr %t528, i64 %t529)
  %t536 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t537 = insertvalue { i64, ptr } %t536, ptr %t533, 1
  %t539 = load i64, ptr %l256
  %t540 = inttoptr i64 %t539 to ptr
  %t541 = extractvalue { i64, ptr } %t537, 0
  %t542 = extractvalue { i64, ptr } %t537, 1
  %t543 = mul i64 %t541, 1
  %t544 = call ptr @__olang_scope_alloc(ptr %t540, i64 %t543)
  call void @llvm.memcpy.p0.p0.i64(ptr %t544, ptr %t542, i64 %t543, i1 false)
  %t545 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t544, 1
  %t547 = load i64, ptr %l252, !tbaa !24
  %t548 = load { i64, [3 x i64] }, ptr %l255
  %t550 = call %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v0, i64 %t547, i64 0, { i64, [3 x i64] } %t548, { i64, ptr } %t546)
  store %"compiler/check:roFn" %t550, ptr %l268
  br label %bb115
bb115:
  %t551 = load ptr, ptr %l251, !tbaa !29
  %t552 = load %"compiler/check:roFn", ptr %l268
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t551, %"compiler/check:roFn" %t552)
  br label %bb116
bb116:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t555 = getelementptr %"compiler/check:Checker", ptr %t553, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !29
  %t557 = load i64, ptr %l2, !tbaa !24
  %t560 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t556, i64 %t557)
  store ptr %t560, ptr %l272
  br label %bb117
bb117:
  %t561 = load ptr, ptr %l272, !tbaa !29
  store ptr %t561, ptr %l20, !tbaa !29
  %t562 = load ptr, ptr %l20, !tbaa !29
  %t564 = getelementptr %"compiler/ast:Func", ptr %t562, i32 0, i32 1
  %t565 = load ptr, ptr %t564, !tbaa !29
  %t567 = icmp eq ptr %t565, null
  br i1 %t567, label %bb118, label %bb119
bb118:
  %t569 = load ptr, ptr %l20, !tbaa !29
  %t571 = getelementptr %"compiler/ast:Func", ptr %t569, i32 0, i32 3
  %t572 = load ptr, ptr %t571, !tbaa !29
  %t574 = getelementptr %"compiler/ast:Sig", ptr %t572, i32 0, i32 0
  %t575 = load { i64, ptr }, ptr %t574, !tbaa !27
  %t577 = extractvalue { i64, ptr } %t575, 0
  store i64 %t577, ptr %l280, !tbaa !24
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/check:Checker", ptr %t578, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t583 = getelementptr %"compiler/generic:Program", ptr %t581, i32 0, i32 2
  store ptr %t583, ptr %l283, !tbaa !29
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t586 = getelementptr %"compiler/check:Checker", ptr %t584, i32 0, i32 1
  %t587 = load ptr, ptr %t586, !tbaa !29
  %t589 = getelementptr %"compiler/generic:Program", ptr %t587, i32 0, i32 2
  %t590 = load i32, ptr %l19, !tbaa !23
  %t593 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t589, i32 %t590)
  store i32 %t593, ptr %l288
  br label %bb120
bb119:
  store i1 false, ptr %l276, !tbaa !21
  br label %bb122
bb120:
  %t594 = load ptr, ptr %l283, !tbaa !29
  %t595 = load i32, ptr %l288, !tbaa !23
  %t596 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t594, i32 %t595)
  store { i64, ptr } %t596, ptr %l289
  br label %bb121
bb121:
  %t597 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t597, 0
  %t599 = load i64, ptr %l280, !tbaa !24
  %t601 = icmp eq i64 %t599, %t598
  store i1 %t601, ptr %l276, !tbaa !21
  br label %bb122
bb122:
  %t603 = load i1, ptr %l276, !tbaa !21
  br i1 %t603, label %bb123, label %bb124
bb123:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/check:Checker", ptr %t604, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t609 = getelementptr %"compiler/generic:Program", ptr %t607, i32 0, i32 2
  store ptr %t609, ptr %l294, !tbaa !29
  %t610 = load i32, ptr %l19, !tbaa !23
  store i32 %t610, ptr %l295, !tbaa !23
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = getelementptr %"compiler/check:Checker", ptr %t611, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !29
  %t615 = load ptr, ptr %l20, !tbaa !29
  %t617 = getelementptr %"compiler/ast:Func", ptr %t615, i32 0, i32 3
  %t618 = load ptr, ptr %t617, !tbaa !29
  %t621 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v0, ptr %t614, ptr %t618)
  store i64 %t621, ptr %l300
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t622 = load ptr, ptr %l294, !tbaa !29
  %t623 = load i32, ptr %l295, !tbaa !23
  %t624 = load i64, ptr %l300, !tbaa !24
  %t625 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t622, i32 %t623, i64 %t624)
  store i32 %t625, ptr %l301
  br label %bb126
bb126:
  %t626 = load i32, ptr %l301, !tbaa !23
  store i32 %t626, ptr %l19, !tbaa !23
  br label %bb127
bb127:
  %t627 = load %"compiler/source:Span", ptr %l1
  %t628 = load i32, ptr %l19, !tbaa !23
  %t629 = load i64, ptr %l18, !tbaa !24
  %t631 = trunc i64 %t629 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t633
  %t634 = getelementptr { i64, [4 x i64] }, ptr %t633, i32 0, i32 0
  store i64 0, ptr %t634
  %t636 = insertvalue { i32 } undef, i32 %t631, 0
  %t637 = getelementptr { i64, [4 x i64] }, ptr %t633, i32 0, i32 1
  store { i32 } %t636, ptr %t637
  %t638 = load { i64, [4 x i64] }, ptr %t633
  %t640 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t638, ptr %t640
  store { i64, [5 x i64] } zeroinitializer, ptr %t641
  %t642 = getelementptr { i64, [5 x i64] }, ptr %t641, i32 0, i32 0
  store i64 15, ptr %t642
  %t644 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t627, 0
  %t646 = insertvalue { %"compiler/source:Span", i32, ptr } %t644, i32 %t628, 1
  %t648 = insertvalue { %"compiler/source:Span", i32, ptr } %t646, ptr %t640, 2
  %t649 = getelementptr { i64, [5 x i64] }, ptr %t641, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t648, ptr %t649
  %t650 = load { i64, [5 x i64] }, ptr %t641
  %t652 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t650, ptr %t652
  call void @__olang_scope_close(ptr %s0)
  store ptr %t652, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca %"compiler/check:litv"
  %l13 = alloca ptr
  %l14 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/check:litv"
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca %"compiler/check:litv"
  %l36 = alloca ptr
  %l37 = alloca i1
  %l44 = alloca i32
  %l48 = alloca %"compiler/check:litv"
  %l49 = alloca %"compiler/check:litv"
  %l50 = alloca ptr
  %l51 = alloca i1
  %l60 = alloca i32
  %l63 = alloca %"compiler/check:litv"
  %l66 = alloca %"compiler/check:litv"
  %l67 = alloca %"compiler/check:litv"
  %l68 = alloca %"compiler/check:litv"
  %rv = alloca %"compiler/check:litv"
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
  %t5 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t5, ptr %l12
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/check:litv", ptr %l12
  store %"compiler/check:litv" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t8 = load ptr, ptr %l13, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 28}
  %t14 = icmp eq i64 %t12, 1
  store i1 %t14, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l14, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l2
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32 }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 113}
  store i32 %t26, ptr %l3
  br label %bb9
bb8:
  br label %bb12
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l2
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t28, %"compiler/source:Span" %t29)
  store { i64, ptr } %t32, ptr %l23
  br label %bb10
bb10:
  %t33 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t34 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t36 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofText(ptr %v0, { i64, ptr } %t34, i32 %t33)
  store %"compiler/check:litv" %t36, ptr %l25
  br label %bb11
bb11:
  %t37 = load %"compiler/check:litv", ptr %l25
  store %"compiler/check:litv" %t37, ptr %rv
  br label %ret
bb12:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t39 = load ptr, ptr %l26, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 28}
  %t45 = icmp eq i64 %t43, 2
  store i1 %t45, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t58 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t53, ptr %t54)
  store %"compiler/check:litv" %t58, ptr %l35
  br label %bb18
bb18:
  %t59 = load %"compiler/check:litv", ptr %l35
  store %"compiler/check:litv" %t59, ptr %rv
  br label %ret
bb19:
  %t60 = load ptr, ptr %l1, !tbaa !29
  store ptr %t60, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t64 = load ptr, ptr %l36, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 28}
  %t67 = icmp eq i64 %t65, 3
  store i1 %t67, ptr %l37, !tbaa !21
  br label %bb21
bb21:
  %t68 = load i1, ptr %l37, !tbaa !21
  br i1 %t68, label %bb22, label %bb23
bb22:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 1
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 113}
  store i32 %t73, ptr %l5
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l6, !tbaa !29
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t81 = load i32, ptr %l5, !range !{i32 0, i32 113}
  store i32 %t81, ptr %l44
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l6, !tbaa !29
  %t87 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  store %"compiler/check:litv" %t87, ptr %l48
  br label %bb25
bb25:
  %t88 = load i32, ptr %l44, !range !{i32 0, i32 113}
  %t89 = load %"compiler/check:litv", ptr %l48
  %t90 = call %"compiler/check:litv" @compiler_2fcheck_2efoldUnary(i32 %t88, %"compiler/check:litv" %t89)
  store %"compiler/check:litv" %t90, ptr %l49
  br label %bb26
bb26:
  %t91 = load %"compiler/check:litv", ptr %l49
  store %"compiler/check:litv" %t91, ptr %rv
  br label %ret
bb27:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t93 = load ptr, ptr %l50, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb28, label %bb29
bb28:
  %t96 = load ptr, ptr %l50, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 28}
  %t99 = icmp eq i64 %t97, 5
  store i1 %t99, ptr %l51, !tbaa !21
  br label %bb29
bb29:
  %t100 = load i1, ptr %l51, !tbaa !21
  br i1 %t100, label %bb30, label %bb31
bb30:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t103, i32 0, i32 1
  %t105 = load i32, ptr %t104, !range !{i32 0, i32 113}
  store i32 %t105, ptr %l7
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l8, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t115, i32 0, i32 3
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l9, !tbaa !29
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t119 = load i32, ptr %l7, !range !{i32 0, i32 113}
  store i32 %t119, ptr %l60
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l8, !tbaa !29
  %t124 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %t120, ptr %t121)
  store %"compiler/check:litv" %t124, ptr %l63
  br label %bb33
bb33:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l9, !tbaa !29
  %t129 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %t125, ptr %t126)
  store %"compiler/check:litv" %t129, ptr %l66
  br label %bb34
bb34:
  %t130 = load i32, ptr %l60, !range !{i32 0, i32 113}
  %t131 = load %"compiler/check:litv", ptr %l63
  %t132 = load %"compiler/check:litv", ptr %l66
  %t133 = call %"compiler/check:litv" @compiler_2fcheck_2efoldBinary(i32 %t130, %"compiler/check:litv" %t131, %"compiler/check:litv" %t132)
  store %"compiler/check:litv" %t133, ptr %l67
  br label %bb35
bb35:
  %t134 = load %"compiler/check:litv", ptr %l67
  store %"compiler/check:litv" %t134, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t135 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t135, ptr %l68
  br label %bb40
bb40:
  %t136 = load %"compiler/check:litv", ptr %l68
  store %"compiler/check:litv" %t136, ptr %rv
  br label %ret
bb41:
  call void @__olang_check_failed(ptr @olang_loc_18ec9fb825b0f3da_76c21f303b4292b6)
  unreachable
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l48 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l53 = alloca %"compiler/generic:Context"
  %l54 = alloca ptr
  %l56 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca i64
  %s6 = alloca %olang.scope
  %t87 = alloca %"compiler/generic:Context", align 8
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
  br label %bb53
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l21, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t24 = load ptr, ptr %l24, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l24, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l25, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenTypeDecl(ptr %v0, ptr %v1, ptr %t38, i64 %t39, ptr %t40)
  br label %bb10
bb10:
  br label %bb51
bb11:
  %t45 = load ptr, ptr %l6, !tbaa !29
  store ptr %t45, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t46 = load ptr, ptr %l34, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l34, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 11}
  %t52 = icmp eq i64 %t50, 3
  store i1 %t52, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l35, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t56 = getelementptr { i64, [8 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", ptr }, ptr %t56, i32 0, i32 1
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l8, !tbaa !29
  br label %bb16
bb15:
  br label %bb26
bb16:
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t62 = getelementptr %"compiler/ast:VarDecl", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s6)
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t77 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t77, ptr %l48, !tbaa !27
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 %t78
  %t83 = load i32, ptr %t82, !tbaa !33
  store i32 %t83, ptr %l12, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l51, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t87, ptr %s6, i64 %t86, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t87, i64 160, i1 false)
  br label %bb21
bb21:
  %t89 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %l53, i64 160, i1 false)
  store ptr %t89, ptr %l54, !tbaa !29
  %t90 = load ptr, ptr %l8, !tbaa !29
  %t92 = getelementptr %"compiler/ast:VarDecl", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %t92, !tbaa !29
  store ptr %t93, ptr %l56, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l12, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t94, i32 %t95)
  store { i64, ptr } %t98, ptr %l59
  br label %bb22
bb22:
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t101 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = add i64 %t100, %t103
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t107 = add i64 %t104, %t106
  %t108 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t107)
  call void @olang_textcopy(ptr %t108, ptr %t99, i64 %t100)
  %t109 = getelementptr i8, ptr %t108, i64 %t100
  call void @olang_textcopy(ptr %t109, ptr %t102, i64 %t103)
  %t110 = getelementptr i8, ptr %t109, i64 %t103
  call void @olang_textcopy(ptr %t110, ptr %t105, i64 %t106)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t108, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = extractvalue { i64, ptr } %t112, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load ptr, ptr %l51, !tbaa !29
  %t121 = load ptr, ptr %l54, !tbaa !29
  %t122 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %s6, ptr %v1, ptr %s6, ptr %t120, ptr %t121, ptr %t122, { i64, ptr } %t119, i64 -1, i64 -1, i1 true)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s6)
  br label %bb24
bb24:
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l10, !tbaa !24
  br label %bb17
bb25:
  br label %bb51
bb26:
  %t128 = load ptr, ptr %l6, !tbaa !29
  store ptr %t128, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t129 = load ptr, ptr %l64, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb27, label %bb28
bb27:
  %t132 = load ptr, ptr %l64, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 11}
  %t135 = icmp eq i64 %t133, 7
  store i1 %t135, ptr %l65, !tbaa !21
  br label %bb28
bb28:
  %t136 = load i1, ptr %l65, !tbaa !21
  br i1 %t136, label %bb29, label %bb30
bb29:
  %t137 = load ptr, ptr %l6, !tbaa !29
  %t139 = getelementptr { i64, [8 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", ptr }, ptr %t139, i32 0, i32 1
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l13, !tbaa !29
  br label %bb31
bb30:
  br label %bb46
bb31:
  %t143 = load ptr, ptr %l13, !tbaa !29
  %t145 = getelementptr %"compiler/ast:TopIf", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb32, label %bb33
bb32:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l74, !tbaa !29
  %t153 = load i64, ptr %l1, !tbaa !24
  store i64 %t153, ptr %l75, !tbaa !24
  %t154 = load ptr, ptr %l13, !tbaa !29
  %t156 = getelementptr %"compiler/ast:TopIf", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  br i1 %t159, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_40d363cef29e2dc3_da67730fe5a0874f)
  unreachable
bb35:
  br label %bb36
bb36:
  %t161 = load ptr, ptr %l13, !tbaa !29
  %t163 = getelementptr %"compiler/ast:TopIf", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t167 = getelementptr %"compiler/ast:TopBranch", ptr %t164, i32 0, i32 1
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  %t169 = load ptr, ptr %l74, !tbaa !29
  %t170 = load i64, ptr %l75, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %t169, i64 %t170, { i64, ptr } %t168)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t172 = load ptr, ptr %l13, !tbaa !29
  %t174 = getelementptr %"compiler/ast:TopIf", ptr %t172, i32 0, i32 3
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = icmp eq ptr %t175, null
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb39, label %bb40
bb39:
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l87, !tbaa !29
  %t182 = load i64, ptr %l1, !tbaa !24
  store i64 %t182, ptr %l88, !tbaa !24
  %t183 = load ptr, ptr %l13, !tbaa !29
  %t185 = getelementptr %"compiler/ast:TopIf", ptr %t183, i32 0, i32 3
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = icmp eq ptr %t186, null
  br i1 %t188, label %bb41, label %bb42
bb40:
  br label %bb45
bb41:
  call void @__olang_check_failed(ptr @olang_loc_db68d589b432834_a1faf5a9fb6b5a70)
  unreachable
bb42:
  br label %bb43
bb43:
  %t190 = load ptr, ptr %l13, !tbaa !29
  %t192 = getelementptr %"compiler/ast:TopIf", ptr %t190, i32 0, i32 3
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t196 = getelementptr %"compiler/ast:TopBranch", ptr %t193, i32 0, i32 1
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t198 = load ptr, ptr %l87, !tbaa !29
  %t199 = load i64, ptr %l88, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenDecls(ptr %v0, ptr %v1, ptr %t198, i64 %t199, { i64, ptr } %t197)
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
  call void @__olang_check_failed(ptr @olang_loc_49068bc24a947660_4b301fa97abc34fc)
  unreachable
bb51:
  br label %bb52
bb52:
  %t201 = load i64, ptr %l4, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l4, !tbaa !24
  br label %bb1
bb53:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenEnd(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t8 = alloca { i64, [3 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store %"compiler/source:Span" %a1, ptr %l2
  %t4 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d56, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  store { i64, [3 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [3 x i64] }, ptr %t8, i32 0, i32 0
  store i64 7, ptr %t9
  %t10 = load %"compiler/source:Span", ptr %l2
  %t11 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t10, 0
  %t12 = load i32, ptr %l5, !tbaa !23
  %t13 = insertvalue { %"compiler/source:Span", i32, i64 } %t11, i32 %t12, 1
  %t14 = insertvalue { %"compiler/source:Span", i32, i64 } %t13, i64 0, 2
  %t15 = getelementptr { i64, [3 x i64] }, ptr %t8, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t14, ptr %t15
  %t16 = load { i64, [3 x i64] }, ptr %t8
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store { i64, [3 x i64] } %t16, ptr %t18
  call void @__olang_scope_close(ptr %s0)
  store ptr %t18, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenLambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca %"compiler/typed:Local"
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca ptr
  %l24 = alloca i64
  %lp25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l37 = alloca i64
  %l49 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i32
  %l66 = alloca i32
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca i64
  %l72 = alloca %"compiler/generic:Context"
  %l74 = alloca %"compiler/generic:Context"
  %l76 = alloca %"compiler/generic:Context"
  %l82 = alloca ptr
  %l85 = alloca ptr
  %l88 = alloca i32
  %l90 = alloca ptr
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l97 = alloca { i64, ptr }
  %l101 = alloca i64
  %l106 = alloca ptr
  %l112 = alloca %"compiler/typed:Local"
  %l117 = alloca ptr
  %l118 = alloca ptr
  %l123 = alloca %"compiler/typed:Local"
  %l124 = alloca i32
  %l127 = alloca ptr
  %l130 = alloca i32
  %l140 = alloca ptr
  %l141 = alloca %"compiler/typed:Capture"
  %l158 = alloca i64
  %l160 = alloca i64
  %l165 = alloca i32
  %l172 = alloca %"compiler/typed:Local"
  %l175 = alloca i1
  %l178 = alloca { i64, ptr }
  %l179 = alloca i1
  %l180 = alloca ptr
  %l183 = alloca i64
  %l187 = alloca i64
  %l193 = alloca ptr
  %l196 = alloca i32
  %l197 = alloca i1
  %l199 = alloca ptr
  %l208 = alloca i32
  %l212 = alloca ptr
  %l216 = alloca i1
  %l219 = alloca i1
  %l220 = alloca i1
  %l223 = alloca i1
  %l232 = alloca ptr
  %l235 = alloca i1
  %l236 = alloca i1
  %l241 = alloca i1
  %l242 = alloca { i64, [1 x i64] }
  %l251 = alloca i64
  %l266 = alloca { i64, ptr }
  %l268 = alloca ptr
  %l281 = alloca { i64, ptr }
  %l282 = alloca %"compiler/typed:Block"
  %l284 = alloca i1
  %l293 = alloca { i64, ptr }
  %l301 = alloca ptr
  %l302 = alloca ptr
  %l306 = alloca %"compiler/source:Span"
  %l307 = alloca ptr
  %l311 = alloca { i64, ptr }
  %l312 = alloca %"compiler/typed:Block"
  %l314 = alloca ptr
  %l318 = alloca ptr
  %l321 = alloca { i64, ptr }
  %l326 = alloca %"compiler/source:Span"
  %l327 = alloca i32
  %l330 = alloca i32
  %l331 = alloca { i64, ptr }
  %l335 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca ptr
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t93 = alloca %"compiler/generic:Context", align 8
  %t294 = alloca { i64, [1 x i64] }, align 8
  %t323 = alloca { i64, [4 x i64] }, align 8
  %t353 = alloca { i64, [1 x i64] }, align 8
  %t527 = alloca { i64, [4 x i64] }, align 8
  %t564 = alloca { i64, [1 x i64] }, align 8
  %t568 = alloca { i64, [1 x i64] }, align 8
  %t597 = alloca { i64, [3 x i64] }, align 8
  %t767 = alloca { i64, [4 x i64] }, align 8
  %t779 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 0
  %t4 = load %"compiler/source:Span", ptr %t3
  store %"compiler/source:Span" %t4, ptr %l5
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l34
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l34, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 20
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l37
  br label %bb2
bb2:
  %t15 = load i64, ptr %l37, !tbaa !24
  %t16 = sub i64 %t15, 1
  store i64 %t16, ptr %l7, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l6, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = trunc i64 %t22 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 4, ptr %t27
  %t29 = insertvalue { i32 } undef, i32 %t24, 0
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  store { i32 } %t29, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t26
  %t32 = load i32, ptr %l2, !tbaa !23
  %t33 = load ptr, ptr %l6, !tbaa !29
  %t35 = getelementptr %"compiler/check:frame", ptr %t33, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load %"compiler/source:Span", ptr %l5
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t18, { i64, [2 x i64] } %t31, i32 %t32, i64 %t36, %"compiler/source:Span" %t37)
  store i64 %t43, ptr %l49
  br label %bb3
bb3:
  %t44 = load i64, ptr %l49, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 23
  %t48 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t47, i64 %t48, i64 1)
  br label %bb4
bb4:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l53, !tbaa !29
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l54, !tbaa !24
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr %"compiler/check:frame", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l56, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l2, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l61
  br label %bb5
bb5:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l2, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l66
  br label %bb6
bb6:
  %t77 = load ptr, ptr %l53, !tbaa !29
  %t78 = load i64, ptr %l54, !tbaa !24
  %t79 = load i64, ptr %l56, !tbaa !24
  %t80 = load i32, ptr %l61, !tbaa !23
  %t81 = load i32, ptr %l66, !tbaa !23
  %t82 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t77, i64 %t78, i64 %t79, i32 %t80, i32 %t81)
  store ptr %t82, ptr %l67
  br label %bb7
bb7:
  %t83 = load ptr, ptr %l67, !tbaa !29
  store ptr %t83, ptr %l9, !tbaa !29
  %t84 = load ptr, ptr %l9, !tbaa !29
  store ptr %t84, ptr %l68, !tbaa !29
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l69, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t86, label %bb8, label %bb9
bb8:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l69, !tbaa !24
  br label %bb9
bb9:
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t92 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l72, ptr %t92, i64 160, i1 false)
  %t94 = load i64, ptr %l69
  %t95 = inttoptr i64 %t94 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t93, ptr %t95, ptr %l72)
  call void @llvm.memmove.p0.p0.i64(ptr %l74, ptr %t93, i64 160, i1 false)
  br label %bb10
bb10:
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t97, label %bb11, label %bb12
bb11:
  %t99 = load i64, ptr %l69
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t102 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t101, i32 0, i32 2
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = call ptr @__olang_region_home(ptr %t105)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr null
  %t109 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t110 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t109, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = call ptr @__olang_region_or(ptr %t112, ptr null)
  %t114 = call ptr @__olang_region_home(ptr %t113)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr %t108
  %t117 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t117, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr %t116
  %t125 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t126 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t125, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = call ptr @__olang_region_or(ptr %t128, ptr null)
  %t130 = call ptr @__olang_region_home(ptr %t129)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr %t124
  %t133 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 1
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = call ptr @__olang_region_home(ptr %t137)
  %t139 = icmp ne ptr %t138, null
  %t140 = select i1 %t139, ptr %t138, ptr %t132
  %t141 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t142 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t141, i32 0, i32 0
  %t143 = load { i64, ptr }, ptr %t142
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = call ptr @__olang_region_or(ptr %t144, ptr null)
  %t146 = call ptr @__olang_region_home(ptr %t145)
  %t147 = icmp ne ptr %t146, null
  %t148 = select i1 %t147, ptr %t146, ptr %t140
  %t149 = icmp eq ptr %t148, %t100
  call void @__olang_region_settle(ptr %t100, i1 %t149)
  br label %bb12
bb12:
  %t150 = load ptr, ptr %l68, !tbaa !29
  %t151 = getelementptr %"compiler/check:frame", ptr %t150, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l76, ptr %t151, i64 160, i1 false)
  %t152 = load ptr, ptr %l68, !tbaa !29
  %t153 = getelementptr %"compiler/check:frame", ptr %t152, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t153, ptr %l74, i64 160, i1 false)
  %t154 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t154, label %bb13, label %bb14
bb13:
  %t156 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t156, i32 0, i32 2
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = call ptr @__olang_region_home(ptr %t160)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr null
  %t164 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t164, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = call ptr @__olang_region_home(ptr %t168)
  %t170 = icmp ne ptr %t169, null
  %t171 = select i1 %t170, ptr %t169, ptr %t163
  %t172 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t173 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t172, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = call ptr @__olang_region_home(ptr %t176)
  %t178 = icmp ne ptr %t177, null
  %t179 = select i1 %t178, ptr %t177, ptr %t171
  %t180 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t181 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t180, i32 0, i32 2
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = call ptr @__olang_region_home(ptr %t184)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr %t179
  %t188 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t189 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t188, i32 0, i32 1
  %t190 = load { i64, ptr }, ptr %t189
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = call ptr @__olang_region_or(ptr %t191, ptr null)
  %t193 = call ptr @__olang_region_home(ptr %t192)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr %t187
  %t196 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t196, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = call ptr @__olang_region_home(ptr %t200)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr %t195
  call void @__olang_region_drop(ptr %t203)
  store %"compiler/generic:Context" zeroinitializer, ptr %l76
  br label %bb14
bb14:
  %t204 = load ptr, ptr %l9, !tbaa !29
  %t205 = load i64, ptr %l7, !tbaa !24
  %t208 = getelementptr %"compiler/check:frame", ptr %t204, i32 0, i32 19
  store i64 %t205, ptr %t208, !tbaa !24
  %t209 = load ptr, ptr %l9, !tbaa !29
  %t211 = getelementptr %"compiler/check:frame", ptr %t209, i32 0, i32 20
  store i1 true, ptr %t211, !tbaa !21
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t212)
  store ptr %t214, ptr %l82
  br label %bb15
bb15:
  %t215 = load ptr, ptr %l82, !tbaa !29
  %t217 = getelementptr %"compiler/typed:Body", ptr %t215, i32 0, i32 14
  store i1 true, ptr %t217, !tbaa !21
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t218)
  store ptr %t220, ptr %l85
  br label %bb16
bb16:
  %t221 = load %"compiler/source:Span", ptr %l5
  %t222 = load ptr, ptr %l85, !tbaa !29
  %t225 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t222, i32 -1, i32 0, %"compiler/source:Span" %t221)
  store i32 %t225, ptr %l88
  br label %bb17
bb17:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t226)
  store ptr %t228, ptr %l90
  br label %bb18
bb18:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/check:Checker", ptr %t229, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !29
  store ptr %t232, ptr %l92, !tbaa !29
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t233)
  store ptr %t235, ptr %l94
  br label %bb19
bb19:
  %t236 = load ptr, ptr %l94, !tbaa !29
  %t238 = getelementptr %"compiler/typed:Body", ptr %t236, i32 0, i32 2
  %t239 = load i32, ptr %t238, !tbaa !23
  %t240 = load ptr, ptr %l92, !tbaa !29
  %t242 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t240, i32 %t239)
  store { i64, ptr } %t242, ptr %l97
  br label %bb20
bb20:
  %t243 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  %t245 = extractvalue { i64, ptr } %t243, 1
  %t246 = mul i64 %t244, 8
  %t247 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t250 = load ptr, ptr %l90, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t250, { i64, ptr } %t249)
  br label %bb21
bb21:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 44
  %t256 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t254)
  store i64 %t256, ptr %l101
  br label %bb22
bb22:
  %t257 = load i64, ptr %l101, !tbaa !24
  store i64 %t257, ptr %l10, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/check:Checker", ptr %t258, i32 0, i32 18
  %t261 = load ptr, ptr %l6, !tbaa !29
  %t263 = getelementptr %"compiler/check:frame", ptr %t261, i32 0, i32 0
  %t264 = load i64, ptr %t263, !tbaa !24
  %t267 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t260, i64 %t264)
  store ptr %t267, ptr %l106
  br label %bb23
bb23:
  %t268 = load ptr, ptr %l106, !tbaa !29
  store ptr %t268, ptr %l11, !tbaa !29
  %t269 = load i64, ptr %l4, !tbaa !24
  %t271 = icmp sge i64 %t269, 0
  br i1 %t271, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s1
  %t273 = load ptr, ptr %l11, !tbaa !29
  %t275 = getelementptr %"compiler/typed:Body", ptr %t273, i32 0, i32 7
  %t276 = load i64, ptr %l4, !tbaa !24
  %t279 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t275, i64 %t276)
  store %"compiler/typed:Local" %t279, ptr %l112
  br label %bb26
bb25:
  br label %bb34
bb26:
  %t280 = getelementptr %"compiler/typed:Local", ptr %l112, i32 0, i32 2
  %t281 = load i32, ptr %t280, !tbaa !23
  store i32 %t281, ptr %l12, !tbaa !23
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/check:Checker", ptr %t283, i32 0, i32 18
  %t286 = load i64, ptr %l8, !tbaa !24
  %t289 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t285, i64 %t286)
  store ptr %t289, ptr %l117
  br label %bb27
bb27:
  %t290 = load ptr, ptr %l117, !tbaa !29
  store ptr %t290, ptr %l13, !tbaa !29
  %t291 = load ptr, ptr %l13, !tbaa !29
  store ptr %t291, ptr %l118, !tbaa !29
  %t292 = load %"compiler/source:Span", ptr %l5
  %t293 = load i32, ptr %l12, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t294
  %t295 = getelementptr { i64, [1 x i64] }, ptr %t294, i32 0, i32 0
  store i64 4, ptr %t295
  %t296 = load { i64, [1 x i64] }, ptr %t294
  %t301 = call %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %s1, i32 0, %"compiler/source:Span" %t292, i32 %t293, i32 0, i32 5, { i64, [1 x i64] } %t296)
  store %"compiler/typed:Local" %t301, ptr %l123
  br label %bb28
bb28:
  %t302 = load ptr, ptr %l118, !tbaa !29
  %t303 = load %"compiler/typed:Local", ptr %l123
  %t304 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %t302, %"compiler/typed:Local" %t303)
  store i32 %t304, ptr %l124
  br label %bb29
bb29:
  %t305 = load i32, ptr %l124, !tbaa !23
  %t306 = sext i32 %t305 to i64
  store i64 %t306, ptr %l14, !tbaa !24
  %t308 = load ptr, ptr %l9, !tbaa !29
  %t310 = getelementptr %"compiler/check:frame", ptr %t308, i32 0, i32 30
  store ptr %t310, ptr %l127, !tbaa !29
  %t311 = load i64, ptr %l14, !tbaa !24
  %t313 = trunc i64 %t311 to i32
  store i32 %t313, ptr %l130, !tbaa !23
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load %"compiler/source:Span", ptr %l5
  %t317 = load %"compiler/source:Span", ptr %l5
  %t318 = load i32, ptr %l12, !tbaa !23
  %t319 = load i64, ptr %l4, !tbaa !24
  %t321 = trunc i64 %t319 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t323
  %t324 = getelementptr { i64, [4 x i64] }, ptr %t323, i32 0, i32 0
  store i64 0, ptr %t324
  %t326 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t317, 0
  %t328 = insertvalue { %"compiler/source:Span", i32, i32 } %t326, i32 %t318, 1
  %t330 = insertvalue { %"compiler/source:Span", i32, i32 } %t328, i32 %t321, 2
  %t331 = getelementptr { i64, [4 x i64] }, ptr %t323, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t330, ptr %t331
  %t332 = load { i64, [4 x i64] }, ptr %t323
  %t334 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t332, ptr %t334
  %t338 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t315, %"compiler/source:Span" %t316, ptr %t334)
  store ptr %t338, ptr %l140
  br label %bb30
bb30:
  %t339 = load i32, ptr %l130, !tbaa !23
  %t340 = load ptr, ptr %l140, !tbaa !29
  %t341 = call %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v0, i32 %t339, ptr %t340)
  store %"compiler/typed:Capture" %t341, ptr %l141
  br label %bb31
bb31:
  %t342 = load %"compiler/typed:Capture", ptr %l141
  %t343 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store %"compiler/typed:Capture" %t342, ptr %t343
  %t344 = load ptr, ptr %l127, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v0, ptr %t344, ptr %t343)
  br label %bb32
bb32:
  %t346 = load ptr, ptr %l13, !tbaa !29
  %t348 = getelementptr %"compiler/typed:Body", ptr %t346, i32 0, i32 6
  %t349 = load i64, ptr %l14, !tbaa !24
  %t351 = trunc i64 %t349 to i32
  store { i64, [1 x i64] } zeroinitializer, ptr %t353
  %t354 = getelementptr { i64, [1 x i64] }, ptr %t353, i32 0, i32 0
  store i64 4, ptr %t354
  %t356 = insertvalue { i32 } undef, i32 %t351, 0
  %t357 = getelementptr { i64, [1 x i64] }, ptr %t353, i32 0, i32 1
  store { i32 } %t356, ptr %t357
  %t358 = load { i64, [1 x i64] }, ptr %t353
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t348, { i64, [1 x i64] } %t358)
  br label %bb33
bb33:
  %t361 = load ptr, ptr %l13, !tbaa !29
  %t362 = load i64, ptr %l14, !tbaa !24
  %t364 = trunc i64 %t362 to i32
  %t368 = getelementptr %"compiler/typed:Body", ptr %t361, i32 0, i32 15
  store i32 %t364, ptr %t368, !tbaa !23
  %t369 = load ptr, ptr %l13, !tbaa !29
  %t371 = getelementptr %"compiler/typed:Body", ptr %t369, i32 0, i32 16
  store i1 true, ptr %t371, !tbaa !21
  %t372 = load ptr, ptr %l9, !tbaa !29
  %t373 = load i64, ptr %l14, !tbaa !24
  %t376 = getelementptr %"compiler/check:frame", ptr %t372, i32 0, i32 21
  store i64 %t373, ptr %t376, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb34:
  store i64 -1, ptr %l15, !tbaa !24
  %t377 = load ptr, ptr %l11, !tbaa !29
  %t379 = getelementptr %"compiler/typed:Body", ptr %t377, i32 0, i32 5
  store ptr %t379, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s3
  %t381 = load i64, ptr %l17, !tbaa !24
  store i64 %t381, ptr %l158, !tbaa !24
  %t382 = load ptr, ptr %l16, !tbaa !29
  %t384 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t382)
  store i64 %t384, ptr %l160
  br label %bb36
bb36:
  %t385 = load i64, ptr %l158, !tbaa !24
  %t386 = load i64, ptr %l160, !tbaa !24
  %t387 = icmp slt i64 %t385, %t386
  %t389 = xor i1 %t387, true
  br i1 %t389, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  br label %bb91
bb38:
  br label %bb39
bb39:
  %t391 = load ptr, ptr %l16, !tbaa !29
  %t392 = load i64, ptr %l17, !tbaa !24
  %t395 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t391, i64 %t392)
  store i32 %t395, ptr %l165
  br label %bb40
bb40:
  %t396 = load i32, ptr %l165, !tbaa !23
  %t397 = load i64, ptr %l15, !tbaa !24
  %t399 = add i64 %t397, 1
  store i64 %t399, ptr %l15, !tbaa !24
  %t401 = load ptr, ptr %l11, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Body", ptr %t401, i32 0, i32 7
  %t406 = sext i32 %t396 to i64
  %t409 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t403, i64 %t406)
  store %"compiler/typed:Local" %t409, ptr %l172
  br label %bb41
bb41:
  %t410 = load %"compiler/typed:Local", ptr %l172
  store %"compiler/typed:Local" %t410, ptr %l19
  %t411 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 0
  %t412 = load i32, ptr %t411, !tbaa !23
  %t414 = icmp eq i32 %t412, 0
  br i1 %t414, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l175, !tbaa !21
  br label %bb46
bb43:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 0
  %t418 = load i32, ptr %t417, !tbaa !23
  %t421 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t416, i32 %t418)
  store { i64, ptr } %t421, ptr %l178
  br label %bb44
bb44:
  %t422 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t423 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t422, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t423, ptr %l179
  br label %bb45
bb45:
  %t424 = load i1, ptr %l179, !tbaa !21
  store i1 %t424, ptr %l175, !tbaa !21
  br label %bb46
bb46:
  %t425 = load i1, ptr %l175, !tbaa !21
  br i1 %t425, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s3)
  br label %bb90
bb48:
  br label %bb49
bb49:
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l180, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 20
  %t431 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t429)
  store i64 %t431, ptr %l183
  br label %bb50
bb50:
  %t432 = load i64, ptr %l183, !tbaa !24
  %t433 = sub i64 %t432, 1
  %t434 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 0
  %t435 = load i32, ptr %t434, !tbaa !23
  %t436 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t437 = load %"compiler/source:Span", ptr %t436
  %t438 = load ptr, ptr %l180, !tbaa !29
  %t442 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %t438, i64 %t433, i32 %t435, %"compiler/source:Span" %t437)
  store i64 %t442, ptr %l187
  br label %bb51
bb51:
  %t443 = load i64, ptr %l187, !tbaa !24
  store i64 %t443, ptr %l20, !tbaa !24
  %t444 = load i64, ptr %l20, !tbaa !24
  %t446 = icmp slt i64 %t444, 0
  br i1 %t446, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s3)
  br label %bb90
bb53:
  br label %bb54
bb54:
  %t448 = load i64, ptr %l15, !tbaa !24
  %t452 = icmp eq i64 %t448, %a3
  br i1 %t452, label %bb55, label %bb56
bb55:
  %t454 = load ptr, ptr %l0, !tbaa !29
  store ptr %t454, ptr %l193, !tbaa !29
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i64, ptr %l20, !tbaa !24
  %t459 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t455, i64 %t456)
  store i32 %t459, ptr %l196
  br label %bb57
bb56:
  br label %bb64
bb57:
  %t460 = load ptr, ptr %l193, !tbaa !29
  %t461 = load i32, ptr %l196, !tbaa !23
  %t462 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t460, i32 %t461)
  store i1 %t462, ptr %l197
  br label %bb58
bb58:
  %t463 = load i1, ptr %l197, !tbaa !21
  br i1 %t463, label %bb59, label %bb60
bb59:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t464)
  store ptr %t466, ptr %l199
  br label %bb61
bb60:
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t468 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t469 = load %"compiler/source:Span", ptr %t468
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t467, %"compiler/source:Span" %t469, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb62
bb61:
  %t472 = load ptr, ptr %l199, !tbaa !29
  %t473 = load i64, ptr %l20, !tbaa !24
  %t475 = trunc i64 %t473 to i32
  %t479 = getelementptr %"compiler/typed:Body", ptr %t472, i32 0, i32 15
  store i32 %t475, ptr %t479, !tbaa !23
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load i64, ptr %l20, !tbaa !24
  %t484 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t480, i64 %t481)
  store i32 %t484, ptr %l208
  br label %bb65
bb65:
  %t485 = load i32, ptr %l208, !tbaa !23
  store i32 %t485, ptr %l21, !tbaa !23
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t488 = load %"compiler/source:Span", ptr %t487
  %t489 = load i64, ptr %l20, !tbaa !24
  %t493 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t486, %"compiler/source:Span" %t488, i64 %t489)
  store ptr %t493, ptr %l212
  br label %bb66
bb66:
  %t494 = load ptr, ptr %l212, !tbaa !29
  store ptr %t494, ptr %l22, !tbaa !29
  %t495 = load i32, ptr %l21, !tbaa !23
  %t496 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 2
  %t497 = load i32, ptr %t496, !tbaa !23
  %t500 = icmp ne i32 %t495, %t497
  br i1 %t500, label %bb67, label %bb68
bb67:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load i32, ptr %l21, !tbaa !23
  %t506 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t502, i32 %t503)
  store i1 %t506, ptr %l219
  br label %bb69
bb68:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb70
bb69:
  %t507 = load i1, ptr %l219, !tbaa !21
  store i1 %t507, ptr %l216, !tbaa !21
  br label %bb70
bb70:
  %t508 = load i1, ptr %l216, !tbaa !21
  br i1 %t508, label %bb71, label %bb72
bb71:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 2
  %t511 = load i32, ptr %t510, !tbaa !23
  %t514 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t509, i32 %t511)
  store i1 %t514, ptr %l223
  br label %bb73
bb72:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb74
bb73:
  %t515 = load i1, ptr %l223, !tbaa !21
  %t516 = xor i1 %t515, true
  store i1 %t516, ptr %l220, !tbaa !21
  br label %bb74
bb74:
  %t518 = load i1, ptr %l220, !tbaa !21
  br i1 %t518, label %bb75, label %bb76
bb75:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t520 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t521 = load %"compiler/source:Span", ptr %t520
  %t522 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t523 = load %"compiler/source:Span", ptr %t522
  %t524 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 2
  %t525 = load i32, ptr %t524, !tbaa !23
  %t526 = load ptr, ptr %l22, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t527
  %t528 = getelementptr { i64, [4 x i64] }, ptr %t527, i32 0, i32 0
  store i64 2, ptr %t528
  %t530 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t523, 0
  %t532 = insertvalue { %"compiler/source:Span", i32, ptr } %t530, i32 %t525, 1
  %t534 = insertvalue { %"compiler/source:Span", i32, ptr } %t532, ptr %t526, 2
  %t535 = getelementptr { i64, [4 x i64] }, ptr %t527, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t534, ptr %t535
  %t536 = load { i64, [4 x i64] }, ptr %t527
  %t538 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t536, ptr %t538
  %t542 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t519, %"compiler/source:Span" %t521, ptr %t538)
  store ptr %t542, ptr %l232
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t543 = load ptr, ptr %l232, !tbaa !29
  store ptr %t543, ptr %l22, !tbaa !29
  br label %bb78
bb78:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 2
  %t546 = load i32, ptr %t545, !tbaa !23
  %t549 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t544, i32 %t546)
  store i1 %t549, ptr %l235
  br label %bb79
bb79:
  %t550 = load i1, ptr %l235, !tbaa !21
  br i1 %t550, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l236, !tbaa !21
  br label %bb83
bb81:
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/check:Checker", ptr %t551, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !29
  %t556 = getelementptr %"compiler/generic:Program", ptr %t554, i32 0, i32 2
  %t557 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 2
  %t558 = load i32, ptr %t557, !tbaa !23
  %t561 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t556, i32 %t558)
  store i1 %t561, ptr %l241
  br label %bb82
bb82:
  %t562 = load i1, ptr %l241, !tbaa !21
  store i1 %t562, ptr %l236, !tbaa !21
  br label %bb83
bb83:
  %t563 = load i1, ptr %l236, !tbaa !21
  br i1 %t563, label %bb84, label %bb85
bb84:
  store { i64, [1 x i64] } zeroinitializer, ptr %t564
  %t565 = getelementptr { i64, [1 x i64] }, ptr %t564, i32 0, i32 0
  store i64 4, ptr %t565
  %t566 = load { i64, [1 x i64] }, ptr %t564
  store { i64, [1 x i64] } %t566, ptr %l242
  br label %bb86
bb85:
  store { i64, [1 x i64] } zeroinitializer, ptr %t568
  %t569 = getelementptr { i64, [1 x i64] }, ptr %t568, i32 0, i32 0
  store i64 0, ptr %t569
  %t570 = load { i64, [1 x i64] }, ptr %t568
  store { i64, [1 x i64] } %t570, ptr %l242
  br label %bb86
bb86:
  %t572 = load { i64, [1 x i64] }, ptr %l242
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 0
  %t575 = load i32, ptr %t574, !tbaa !23
  %t576 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t577 = load %"compiler/source:Span", ptr %t576
  %t578 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 2
  %t579 = load i32, ptr %t578, !tbaa !23
  %t587 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t573, i32 %t575, %"compiler/source:Span" %t577, i32 %t579, i32 1, { i64, [1 x i64] } %t572)
  store i64 %t587, ptr %l251
  br label %bb87
bb87:
  %t588 = load i64, ptr %l251, !tbaa !24
  store i64 %t588, ptr %l24, !tbaa !24
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t590 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t591 = load %"compiler/source:Span", ptr %t590
  %t592 = load i64, ptr %l24, !tbaa !24
  %t594 = trunc i64 %t592 to i32
  %t596 = load ptr, ptr %l22, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t597
  %t598 = getelementptr { i64, [3 x i64] }, ptr %t597, i32 0, i32 0
  store i64 0, ptr %t598
  %t600 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t591, 0
  %t602 = insertvalue { %"compiler/source:Span", i32, ptr } %t600, i32 %t594, 1
  %t604 = insertvalue { %"compiler/source:Span", i32, ptr } %t602, ptr %t596, 2
  %t605 = getelementptr { i64, [3 x i64] }, ptr %t597, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t604, ptr %t605
  %t606 = load { i64, [3 x i64] }, ptr %t597
  %t608 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t606, ptr %t608
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t589, ptr %t608)
  br label %bb88
bb88:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t612 = load i64, ptr %l24, !tbaa !24
  %t613 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 1
  %t614 = load %"compiler/source:Span", ptr %t613
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t611, i64 %t612, %"compiler/source:Span" %t614, i1 true)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s3)
  br label %bb90
bb90:
  %t618 = load i64, ptr %l17, !tbaa !24
  %t620 = add i64 %t618, 1
  store i64 %t620, ptr %l17, !tbaa !24
  br label %bb35
bb91:
  %t622 = load ptr, ptr %l1, !tbaa !29
  %t624 = getelementptr %"compiler/ast:Func", ptr %t622, i32 0, i32 4
  %t625 = load { i64, ptr }, ptr %t624, !tbaa !27
  store { i64, ptr } %t625, ptr %l266, !tbaa !27
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t628 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t626)
  store ptr %t628, ptr %l268
  br label %bb92
bb92:
  %t629 = load ptr, ptr %l268, !tbaa !29
  %t631 = getelementptr %"compiler/check:frame", ptr %t629, i32 0, i32 43
  %t632 = load { i64, ptr }, ptr %l266, !tbaa !27
  call void @compiler_2fcheck_2estoredIn(ptr %v1, ptr %v0, { i64, ptr } %t632, ptr %t631)
  br label %bb93
bb93:
  %t634 = load ptr, ptr %l1, !tbaa !29
  %t636 = getelementptr %"compiler/ast:Func", ptr %t634, i32 0, i32 4
  %t637 = load { i64, ptr }, ptr %t636, !tbaa !27
  %t639 = extractvalue { i64, ptr } %t637, 0
  %t641 = icmp sgt i64 %t639, 0
  br i1 %t641, label %bb94, label %bb95
bb94:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load ptr, ptr %l1, !tbaa !29
  %t646 = getelementptr %"compiler/ast:Func", ptr %t644, i32 0, i32 4
  %t647 = load { i64, ptr }, ptr %t646, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t643, { i64, ptr } %t647)
  br label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb97
bb97:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t652 = getelementptr %"compiler/check:Checker", ptr %t650, i32 0, i32 44
  %t653 = load i64, ptr %l10, !tbaa !24
  %t656 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t652, i64 %t653)
  store { i64, ptr } %t656, ptr %l281
  br label %bb98
bb98:
  %t657 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t658 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t657)
  store %"compiler/typed:Block" %t658, ptr %l282
  br label %bb99
bb99:
  %t659 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store ptr %t659, ptr %lp25
  %t660 = load %"compiler/typed:Block", ptr %l282
  %t661 = load ptr, ptr %lp25
  store %"compiler/typed:Block" %t660, ptr %t661
  %t662 = load ptr, ptr %lp25
  %t664 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t662)
  store i1 %t664, ptr %l284
  br label %bb100
bb100:
  %t665 = load i1, ptr %l284, !tbaa !21
  %t666 = xor i1 %t665, true
  br i1 %t666, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s12
  %t668 = load ptr, ptr %lp25
  %t669 = getelementptr %"compiler/typed:Block", ptr %t668, i32 0, i32 1
  %t670 = load { i64, ptr }, ptr %t669, !tbaa !27
  store { i64, ptr } %t670, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t672 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t674 = extractvalue { i64, ptr } %t672, 0
  store i64 %t674, ptr %l28, !tbaa !24
  br label %bb103
bb102:
  br label %bb115
bb103:
  %t676 = load i64, ptr %l27, !tbaa !24
  %t677 = load i64, ptr %l28, !tbaa !24
  %t680 = icmp slt i64 %t676, %t677
  %t682 = xor i1 %t680, true
  br i1 %t682, label %bb104, label %bb105
bb104:
  br label %bb109
bb105:
  br label %bb106
bb106:
  %t684 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t684, ptr %l293, !tbaa !27
  %t685 = load i64, ptr %l27, !tbaa !24
  %t687 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t688 = load ptr, ptr %t687, !tbaa !27
  %t689 = getelementptr ptr, ptr %t688, i64 %t685
  %t690 = load ptr, ptr %t689, !tbaa !39
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t694 = getelementptr %"compiler/check:Checker", ptr %t692, i32 0, i32 44
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t694, ptr %t690)
  br label %bb107
bb107:
  br label %bb108
bb108:
  %t698 = load i64, ptr %l27, !tbaa !24
  %t700 = add i64 %t698, 1
  store i64 %t700, ptr %l27, !tbaa !24
  br label %bb103
bb109:
  %t702 = load ptr, ptr %l0, !tbaa !29
  store ptr %t702, ptr %l301, !tbaa !29
  %t703 = load ptr, ptr %l0, !tbaa !29
  store ptr %t703, ptr %l302, !tbaa !29
  %t704 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t705 = load i32, ptr %t704, !tbaa !23
  %t707 = sub i32 %t705, 1
  %t708 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t709 = load i32, ptr %t708, !tbaa !23
  %t712 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s12, i32 %t707, i32 %t709)
  store %"compiler/source:Span" %t712, ptr %l306
  br label %bb110
bb110:
  %t713 = load ptr, ptr %l302, !tbaa !29
  %t714 = load %"compiler/source:Span", ptr %l306
  %t715 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenEnd(ptr %v0, ptr %v0, ptr %t713, %"compiler/source:Span" %t714)
  store ptr %t715, ptr %l307
  br label %bb111
bb111:
  %t716 = load ptr, ptr %l301, !tbaa !29
  %t717 = load ptr, ptr %l307, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t716, ptr %t717)
  br label %bb112
bb112:
  %t718 = load ptr, ptr %l0, !tbaa !29
  %t720 = getelementptr %"compiler/check:Checker", ptr %t718, i32 0, i32 44
  %t721 = load i64, ptr %l10, !tbaa !24
  %t724 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t720, i64 %t721)
  store { i64, ptr } %t724, ptr %l311
  br label %bb113
bb113:
  %t725 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t726 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t725)
  store %"compiler/typed:Block" %t726, ptr %l312
  br label %bb114
bb114:
  %t727 = load %"compiler/typed:Block", ptr %l312
  %t728 = load ptr, ptr %lp25
  store %"compiler/typed:Block" %t727, ptr %t728
  call void @__olang_scope_close(ptr %s12)
  br label %bb115
bb115:
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t731 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t729)
  store ptr %t731, ptr %l314
  br label %bb116
bb116:
  %t732 = load ptr, ptr %l314, !tbaa !29
  %t733 = load ptr, ptr %lp25
  %t736 = getelementptr %"compiler/typed:Body", ptr %t732, i32 0, i32 11
  store ptr %t733, ptr %t736, !tbaa !29
  %t737 = load ptr, ptr %l0, !tbaa !29
  %t739 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t737)
  store ptr %t739, ptr %l318
  br label %bb117
bb117:
  %t740 = load ptr, ptr %l318, !tbaa !29
  %t742 = getelementptr %"compiler/check:frame", ptr %t740, i32 0, i32 30
  %t744 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v2, ptr %t742)
  store { i64, ptr } %t744, ptr %l321
  br label %bb118
bb118:
  %t745 = load { i64, ptr }, ptr %l321, !tbaa !27
  store { i64, ptr } %t745, ptr %l30, !tbaa !27
  %t746 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t746)
  br label %bb119
bb119:
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t750 = getelementptr %"compiler/check:Checker", ptr %t748, i32 0, i32 23
  %t751 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t750, i64 %t751, i64 2)
  br label %bb120
bb120:
  %t754 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t754, ptr %l326
  %t755 = load i32, ptr %l2, !tbaa !23
  store i32 %t755, ptr %l327, !tbaa !23
  %t756 = load i64, ptr %l8, !tbaa !24
  %t758 = trunc i64 %t756 to i32
  store i32 %t758, ptr %l330, !tbaa !23
  %t760 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t760, ptr %l331, !tbaa !27
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t762 = load %"compiler/source:Span", ptr %l5
  %t766 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t761, i32 5, %"compiler/source:Span" %t762)
  store i32 %t766, ptr %l335
  br label %bb121
bb121:
  store { i64, [4 x i64] } zeroinitializer, ptr %t767
  %t768 = getelementptr { i64, [4 x i64] }, ptr %t767, i32 0, i32 0
  store i64 1, ptr %t768
  %t769 = load i32, ptr %l330, !tbaa !23
  %t770 = insertvalue { i32, { i64, ptr }, i32 } undef, i32 %t769, 0
  %t771 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t772 = insertvalue { i32, { i64, ptr }, i32 } %t770, { i64, ptr } %t771, 1
  %t773 = load i32, ptr %l335, !tbaa !23
  %t774 = insertvalue { i32, { i64, ptr }, i32 } %t772, i32 %t773, 2
  %t775 = getelementptr { i64, [4 x i64] }, ptr %t767, i32 0, i32 1
  store { i32, { i64, ptr }, i32 } %t774, ptr %t775
  %t776 = load { i64, [4 x i64] }, ptr %t767
  %t778 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t776, ptr %t778
  store { i64, [5 x i64] } zeroinitializer, ptr %t779
  %t780 = getelementptr { i64, [5 x i64] }, ptr %t779, i32 0, i32 0
  store i64 15, ptr %t780
  %t781 = load %"compiler/source:Span", ptr %l326
  %t782 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t781, 0
  %t783 = load i32, ptr %l327, !tbaa !23
  %t784 = insertvalue { %"compiler/source:Span", i32, ptr } %t782, i32 %t783, 1
  %t786 = insertvalue { %"compiler/source:Span", i32, ptr } %t784, ptr %t778, 2
  %t787 = getelementptr { i64, [5 x i64] }, ptr %t779, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t786, ptr %t787
  %t788 = load { i64, [5 x i64] }, ptr %t779
  %t790 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t788, ptr %t790
  call void @__olang_scope_close(ptr %s0)
  store ptr %t790, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenResultMet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l24 = alloca { i64, ptr }
  %l28 = alloca i1
  %l33 = alloca i1
  store i64 %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp eq i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb10, label %bb11
bb10:
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t36, ptr %l24, !tbaa !27
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr ptr, ptr %t40, i64 %t37
  %t42 = load ptr, ptr %t41, !tbaa !39
  store ptr %t42, ptr %l7, !tbaa !29
  %t44 = load ptr, ptr %l7, !tbaa !29
  %t46 = call i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v1, ptr %t44)
  store i1 %t46, ptr %l28
  br label %bb13
bb13:
  %t47 = load i1, ptr %l28, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t51 = load ptr, ptr %l7, !tbaa !29
  %t55 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %t51)
  store i1 %t55, ptr %l33
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb9
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
  call void @__olang_check_failed(ptr @olang_loc_48c434cc052a730a_3ea1b318a5aaa0d6)
  unreachable
bb25:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstHoldsItself(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i1
  %l19 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l36 = alloca i64
  %l54 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i1
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca %"compiler/source:Span"
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i1, ptr %l15, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l19, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l24
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = load i32, ptr %l24, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store { i64, ptr } %t30, ptr %l25
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v1, ptr %s0, ptr %a3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l27
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb10:
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l36, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l36, !tbaa !24
  store i64 %t66, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l33, !tbaa !24
  store i64 %t67, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb15, label %bb16
bb15:
  br label %bb31
bb16:
  br label %bb17
bb17:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  store i64 %t86, ptr %l54, !tbaa !24
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l5)
  store i64 %t88, ptr %l56
  br label %bb18
bb18:
  %t89 = load i64, ptr %l54, !tbaa !24
  %t90 = load i64, ptr %l56, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t94, ptr %l60, !tbaa !27
  %t95 = load i64, ptr %l11, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  %t101 = load i32, ptr %l1, !tbaa !23
  %t105 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %t93, i32 %t100, i32 %t101, i64 0)
  store i1 %t105, ptr %l64
  br label %bb21
bb20:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb22
bb21:
  %t106 = load i1, ptr %l64, !tbaa !21
  store i1 %t106, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t107 = load i1, ptr %l58, !tbaa !21
  br i1 %t107, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l65, !tbaa !29
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l5, i64 %t109)
  store %"compiler/source:Span" %t112, ptr %l68
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t113, i32 %t114)
  store { i64, ptr } %t117, ptr %l71
  br label %bb26
bb26:
  %t118 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %s4, ptr %v0, { i64, ptr } %t124)
  store %"compiler/diagmsg:Msg" %t126, ptr %l73
  br label %bb27
bb27:
  %t127 = load ptr, ptr %l65, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l68
  %t129 = load %"compiler/diagmsg:Msg", ptr %l73
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l74
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  br label %bb30
bb30:
  %t131 = load i64, ptr %l10, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l10, !tbaa !24
  br label %bb14
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejudgeEffects(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:effectPlace"
  %lp4 = alloca ptr
  %l5 = alloca { i64, [3 x i64] }
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l16 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca %"compiler/check:effectPlace"
  %l30 = alloca ptr
  %l34 = alloca %"compiler/effects:Verdict"
  %l36 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca { i64, [3 x i64] }
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca { i64, [3 x i64] }
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca i64
  %l87 = alloca { i64, [3 x i64] }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t83 = alloca { i64, [3 x i64] }, align 8
  %t224 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 69
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l16
  br label %bb4
bb4:
  %t21 = load i64, ptr %l16, !tbaa !24
  %t22 = icmp sgt i64 %t21, 0
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 9
  store ptr null, ptr %t27, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 69
  store ptr %t30, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %l21, !tbaa !24
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l23
  br label %bb10
bb10:
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = load i64, ptr %l23, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb12:
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = call %"compiler/check:effectPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eAt_H2c6933398e42ebe4f85d63d17b1157eb(ptr %v0, ptr %v0, ptr %t42, i64 %t43)
  store %"compiler/check:effectPlace" %t46, ptr %l28
  br label %bb14
bb14:
  %t47 = load %"compiler/check:effectPlace", ptr %l28
  store %"compiler/check:effectPlace" %t47, ptr %l3
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t48)
  store ptr %t50, ptr %l30
  br label %bb15
bb15:
  %t51 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 5
  %t56 = load i32, ptr %t55, !tbaa !23
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t61 = call %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eJudge(ptr %v0, ptr %v0, ptr %v0, ptr %t57, i64 %t52, ptr %t54, i32 %t56)
  store %"compiler/effects:Verdict" %t61, ptr %l34
  br label %bb16
bb16:
  %t62 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store ptr %t62, ptr %lp4
  %t63 = load %"compiler/effects:Verdict", ptr %l34
  %t64 = load ptr, ptr %lp4
  store %"compiler/effects:Verdict" %t63, ptr %t64
  %t65 = load ptr, ptr %lp4
  %t66 = getelementptr %"compiler/effects:Verdict", ptr %t65, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t67, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t69, ptr %l36
  br label %bb17
bb17:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb19:
  br label %bb20
bb20:
  %t71 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 2
  %t74 = getelementptr %"compiler/source:Span", ptr %t73, i32 0, i32 0
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t78 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 2
  %t79 = getelementptr %"compiler/source:Span", ptr %t78, i32 0, i32 1
  %t80 = load i32, ptr %t79, !tbaa !23
  %t82 = sext i32 %t80 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [3 x i64] }, ptr %t83, i32 0, i32 0
  store i64 3, ptr %t84
  %t86 = insertvalue { i64, i64, i64 } undef, i64 %t72, 0
  %t88 = insertvalue { i64, i64, i64 } %t86, i64 %t77, 1
  %t90 = insertvalue { i64, i64, i64 } %t88, i64 %t82, 2
  %t91 = getelementptr { i64, [3 x i64] }, ptr %t83, i32 0, i32 1
  store { i64, i64, i64 } %t90, ptr %t91
  %t92 = load { i64, [3 x i64] }, ptr %t83
  store { i64, [3 x i64] } %t92, ptr %l5
  %t94 = load ptr, ptr %lp4
  %t95 = getelementptr %"compiler/effects:Verdict", ptr %t94, i32 0, i32 2
  %t96 = load i1, ptr %t95, !tbaa !21
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/load:Loader", ptr %t106, i32 0, i32 4
  %t109 = load ptr, ptr %t108, !tbaa !29
  store ptr %t109, ptr %l48, !tbaa !29
  %t110 = load { i64, [3 x i64] }, ptr %l5
  store { i64, [3 x i64] } %t110, ptr %l49
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %lp4
  %t113 = getelementptr %"compiler/effects:Verdict", ptr %t112, i32 0, i32 3
  %t114 = load i32, ptr %t113, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t111, i32 %t114)
  store { i64, ptr } %t117, ptr %l52
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t118 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  store { i64, ptr } %t124, ptr %l53, !tbaa !27
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 5
  %t127 = load i32, ptr %t126, !tbaa !23
  %t130 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t125, i32 %t127)
  store { i64, ptr } %t130, ptr %l56
  br label %bb24
bb24:
  %t131 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load ptr, ptr %lp4
  %t139 = getelementptr %"compiler/effects:Verdict", ptr %t138, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %s5, ptr %s5, ptr %v0, ptr %v0, { i64, ptr } %t141, { i64, ptr } %t137, { i64, ptr } %t140)
  store %"compiler/diagmsg:Msg" %t144, ptr %l59
  br label %bb25
bb25:
  %t145 = load ptr, ptr %l48, !tbaa !29
  %t146 = load { i64, [3 x i64] }, ptr %l49
  %t147 = load %"compiler/diagmsg:Msg", ptr %l59
  %t148 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t145, { i64, [3 x i64] } %t146, %"compiler/diagmsg:Msg" %t147)
  store i64 %t148, ptr %l60
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb27:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/load:Loader", ptr %t155, i32 0, i32 4
  %t158 = load ptr, ptr %t157, !tbaa !29
  store ptr %t158, ptr %l64, !tbaa !29
  %t159 = load { i64, [3 x i64] }, ptr %l5
  store { i64, [3 x i64] } %t159, ptr %l65
  %t160 = load ptr, ptr %lp4
  %t161 = getelementptr %"compiler/effects:Verdict", ptr %t160, i32 0, i32 4
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l66, !tbaa !27
  %t163 = load ptr, ptr %lp4
  %t164 = getelementptr %"compiler/effects:Verdict", ptr %t163, i32 0, i32 1
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l67, !tbaa !27
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:effectPlace", ptr %l3, i32 0, i32 5
  %t168 = load i32, ptr %t167, !tbaa !23
  %t171 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t166, i32 %t168)
  store { i64, ptr } %t171, ptr %l70
  br label %bb28
bb28:
  %t172 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 0
  %t174 = extractvalue { i64, ptr } %t172, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t179 = load ptr, ptr %lp4
  %t180 = getelementptr %"compiler/effects:Verdict", ptr %t179, i32 0, i32 0
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t186 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEffectBeyond(ptr %v0, ptr %v0, ptr %s3, ptr %v0, ptr %v0, { i64, ptr } %t182, { i64, ptr } %t183, { i64, ptr } %t178, { i64, ptr } %t181)
  store %"compiler/diagmsg:Msg" %t186, ptr %l73
  br label %bb29
bb29:
  %t187 = load ptr, ptr %l64, !tbaa !29
  %t188 = load { i64, [3 x i64] }, ptr %l65
  %t189 = load %"compiler/diagmsg:Msg", ptr %l73
  %t190 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t187, { i64, [3 x i64] } %t188, %"compiler/diagmsg:Msg" %t189)
  store i64 %t190, ptr %l74
  br label %bb30
bb30:
  %t191 = load i64, ptr %l74, !tbaa !24
  store i64 %t191, ptr %l6, !tbaa !24
  %t192 = load ptr, ptr %lp4
  %t193 = getelementptr %"compiler/effects:Verdict", ptr %t192, i32 0, i32 5
  %t194 = load i64, ptr %t193, !tbaa !24
  %t196 = icmp sge i64 %t194, 0
  br i1 %t196, label %bb31, label %bb32
bb31:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/check:Checker", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = getelementptr %"compiler/generic:Program", ptr %t201, i32 0, i32 0
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t206 = getelementptr %"compiler/load:Loader", ptr %t204, i32 0, i32 4
  %t207 = load ptr, ptr %t206, !tbaa !29
  store ptr %t207, ptr %l80, !tbaa !29
  %t208 = load i64, ptr %l6, !tbaa !24
  store i64 %t208, ptr %l81, !tbaa !24
  %t209 = load ptr, ptr %lp4
  %t210 = getelementptr %"compiler/effects:Verdict", ptr %t209, i32 0, i32 5
  %t211 = load i64, ptr %t210, !tbaa !24
  %t212 = load ptr, ptr %lp4
  %t213 = getelementptr %"compiler/effects:Verdict", ptr %t212, i32 0, i32 6
  %t214 = getelementptr %"compiler/source:Span", ptr %t213, i32 0, i32 0
  %t215 = load i32, ptr %t214, !tbaa !23
  %t217 = sext i32 %t215 to i64
  %t218 = load ptr, ptr %lp4
  %t219 = getelementptr %"compiler/effects:Verdict", ptr %t218, i32 0, i32 6
  %t220 = getelementptr %"compiler/source:Span", ptr %t219, i32 0, i32 1
  %t221 = load i32, ptr %t220, !tbaa !23
  %t223 = sext i32 %t221 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t224
  %t225 = getelementptr { i64, [3 x i64] }, ptr %t224, i32 0, i32 0
  store i64 3, ptr %t225
  %t227 = insertvalue { i64, i64, i64 } undef, i64 %t211, 0
  %t229 = insertvalue { i64, i64, i64 } %t227, i64 %t217, 1
  %t231 = insertvalue { i64, i64, i64 } %t229, i64 %t223, 2
  %t232 = getelementptr { i64, [3 x i64] }, ptr %t224, i32 0, i32 1
  store { i64, i64, i64 } %t231, ptr %t232
  %t233 = load { i64, [3 x i64] }, ptr %t224
  store { i64, [3 x i64] } %t233, ptr %l87
  %t234 = load ptr, ptr %lp4
  %t235 = getelementptr %"compiler/effects:Verdict", ptr %t234, i32 0, i32 7
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  %t238 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteEffect(ptr %v0, ptr %v0, { i64, ptr } %t236)
  store %"compiler/diagmsg:Msg" %t238, ptr %l89
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t239 = load ptr, ptr %l80, !tbaa !29
  %t240 = load i64, ptr %l81, !tbaa !24
  %t241 = load { i64, [3 x i64] }, ptr %l87
  %t242 = load %"compiler/diagmsg:Msg", ptr %l89
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t239, i64 %t240, { i64, [3 x i64] } %t241, %"compiler/diagmsg:Msg" %t242)
  br label %bb34
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb36:
  %t243 = load i64, ptr %l2, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l2, !tbaa !24
  br label %bb9
bb37:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i1
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i1
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %l54 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca i32
  %l66 = alloca i32
  %l77 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l93 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca i64
  %l109 = alloca { i64, ptr }
  %l111 = alloca %"compiler/diagmsg:Msg"
  %l112 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca i64
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca { i64, ptr }
  %l151 = alloca i64
  %l153 = alloca { i64, ptr }
  %l157 = alloca i32
  %l161 = alloca i1
  %l163 = alloca { i64, ptr }
  %l166 = alloca i1
  %l168 = alloca i1
  %l174 = alloca { i64, ptr }
  %l177 = alloca i1
  %l182 = alloca i1
  %l184 = alloca { i64, ptr }
  %l187 = alloca i1
  %l189 = alloca i1
  %l192 = alloca ptr
  %l196 = alloca i32
  %l198 = alloca { i64, ptr }
  %l201 = alloca i32
  %l202 = alloca i1
  %l204 = alloca { i64, ptr }
  %l210 = alloca ptr
  %l214 = alloca i1
  %l215 = alloca i1
  %l217 = alloca { i64, ptr }
  %l220 = alloca i1
  %l221 = alloca i1
  %l224 = alloca ptr
  %l228 = alloca i32
  %l230 = alloca { i64, ptr }
  %l233 = alloca i32
  %l234 = alloca i1
  %l235 = alloca i1
  %l241 = alloca i64
  %l247 = alloca ptr
  %l248 = alloca { i64, ptr }
  %l251 = alloca %"compiler/source:Span"
  %l254 = alloca { i64, ptr }
  %l256 = alloca %"compiler/diagmsg:Msg"
  %l257 = alloca i64
  %l260 = alloca ptr
  %l264 = alloca i1
  %l266 = alloca { i64, ptr }
  %l269 = alloca i1
  %l272 = alloca { i64, ptr }
  %l275 = alloca ptr
  %l276 = alloca { i64, ptr }
  %l279 = alloca %"compiler/source:Span"
  %l281 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l287 = alloca %"compiler/diagmsg:Msg"
  %l288 = alloca i64
  %l291 = alloca ptr
  %l303 = alloca i64
  %l312 = alloca i64
  %l315 = alloca i64
  %l333 = alloca i64
  %l337 = alloca { i64, ptr }
  %l341 = alloca i32
  %l347 = alloca i32
  %l351 = alloca ptr
  %l356 = alloca i32
  %l357 = alloca i32
  %l361 = alloca i1
  %l362 = alloca ptr
  %l367 = alloca i32
  %l368 = alloca i1
  %l374 = alloca i32
  %l379 = alloca i1
  %l385 = alloca i1
  %l393 = alloca ptr
  %l395 = alloca ptr
  %l401 = alloca i32
  %l405 = alloca i1
  %l406 = alloca ptr
  %l411 = alloca i32
  %l412 = alloca i1
  %l418 = alloca i32
  %l422 = alloca i32
  %l427 = alloca i32
  %l432 = alloca i32
  %l434 = alloca ptr
  %l437 = alloca i64
  %l439 = alloca ptr
  %l444 = alloca { i64, [2 x i64] }
  %l452 = alloca i32
  %l456 = alloca i64
  %l466 = alloca ptr
  %l467 = alloca ptr
  %l468 = alloca i64
  %l471 = alloca %"compiler/generic:Context"
  %l473 = alloca %"compiler/generic:Context"
  %l475 = alloca %"compiler/generic:Context"
  %l484 = alloca ptr
  %l487 = alloca i32
  %l492 = alloca i64
  %l495 = alloca i64
  %l514 = alloca { i64, ptr }
  %l518 = alloca { i64, ptr }
  %l525 = alloca { i64, ptr }
  %l529 = alloca { i64, ptr }
  %l536 = alloca { i64, ptr }
  %l544 = alloca ptr
  %l546 = alloca ptr
  %l548 = alloca ptr
  %l551 = alloca { i64, ptr }
  %l556 = alloca ptr
  %l558 = alloca ptr
  %l570 = alloca ptr
  %l571 = alloca ptr
  %l574 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l576 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l578 = alloca i32
  %l586 = alloca i32
  %l588 = alloca ptr
  %l594 = alloca i1
  %l596 = alloca ptr
  %l600 = alloca i1
  %l603 = alloca i1
  %l605 = alloca ptr
  %l606 = alloca %"compiler/source:Span"
  %l609 = alloca { i64, ptr }
  %l611 = alloca %"compiler/diagmsg:Msg"
  %l612 = alloca i64
  %l614 = alloca ptr
  %l617 = alloca { i64, ptr }
  %l623 = alloca ptr
  %l624 = alloca i64
  %l627 = alloca { i64, [3 x i64] }
  %l628 = alloca %"compiler/check:roFn"
  %l632 = alloca i32
  %l635 = alloca ptr
  %l636 = alloca i32
  %l641 = alloca i64
  %l642 = alloca i32
  %l645 = alloca ptr
  %l646 = alloca i32
  %l651 = alloca i64
  %l652 = alloca i32
  %l653 = alloca %"compiler/source:Span"
  %l654 = alloca i32
  %l657 = alloca i32
  %l658 = alloca { i64, ptr }
  %l662 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %rv = alloca ptr
  %t900 = alloca { i64, [2 x i64] }, align 8
  %t964 = alloca %"compiler/generic:Context", align 8
  %t1472 = alloca { i64, [4 x i64] }, align 8
  %t1484 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 4
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l46, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  %t14 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %t10, %"compiler/source:Span" %t11)
  store %"compiler/source:Span" %t14, ptr %l49
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t15 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnHere(ptr %s1, ptr %v0, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t15, ptr %l50
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l46, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l49
  %t18 = load %"compiler/diagmsg:Msg", ptr %l50
  %t19 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t16, %"compiler/source:Span" %t17, %"compiler/diagmsg:Msg" %t18)
  store i64 %t19, ptr %l51
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t20, %"compiler/source:Span" %t21)
  store ptr %t24, ptr %l54
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t25 = load ptr, ptr %l54, !tbaa !29
  store ptr %t25, ptr %rv
  br label %ret
bb7:
  %t26 = load i32, ptr %l3, !tbaa !23
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t30 = icmp ne i32 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l63
  br label %bb10
bb9:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb11
bb10:
  %t42 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t44 = trunc i64 21 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l58, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l58, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load i32, ptr %l3, !tbaa !23
  store i32 %t48, ptr %l66, !tbaa !23
  br label %bb14
bb13:
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t50, ptr %l66, !tbaa !23
  br label %bb14
bb14:
  %t52 = load i32, ptr %l66, !tbaa !23
  store i32 %t52, ptr %l4, !tbaa !23
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Func", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Sig", ptr %t56, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l5, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l6, !tbaa !24
  %t65 = load i32, ptr %l4, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = icmp ne i32 %t65, %t66
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l80, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l4, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l85
  br label %bb17
bb16:
  %t87 = icmp sge i64 0, 0
  br i1 %t87, label %bb19, label %bb20
bb17:
  %t89 = load ptr, ptr %l80, !tbaa !29
  %t90 = load i32, ptr %l85, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t89, i32 %t90)
  store { i64, ptr } %t91, ptr %l86
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t92, ptr %l77, !tbaa !27
  br label %bb23
bb19:
  %t93 = icmp sle i64 0, 2305843009213693951
  br i1 %t93, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d264b31a2a0953e1_a8a3a5518784125d)
  unreachable
bb21:
  %t95 = mul i64 0, 4
  %t96 = insertvalue { i64, ptr } undef, i64 0, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t97, ptr %l77, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d264b31a2a0953e1_a8a3a5518784125d)
  unreachable
bb23:
  %t99 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t99, ptr %l7, !tbaa !27
  %t100 = load i32, ptr %l4, !tbaa !23
  %t101 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t104 = icmp ne i32 %t100, %t101
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = load i64, ptr %l6, !tbaa !24
  %t112 = icmp ne i64 %t108, %t109
  store i1 %t112, ptr %l93, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb26
bb26:
  %t114 = load i1, ptr %l93, !tbaa !21
  br i1 %t114, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s2
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l98, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t116, ptr %l99
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l4, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t117, i32 %t118)
  store { i64, ptr } %t121, ptr %l102
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t122 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  %t124 = extractvalue { i64, ptr } %t122, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l103, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l105, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t136 = icmp eq i64 %t134, 1
  br i1 %t136, label %bb30, label %bb31
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l109, !tbaa !27
  br label %bb32
bb31:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l109, !tbaa !27
  br label %bb32
bb32:
  %t138 = load i64, ptr %l6, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t140 = load i64, ptr %l105, !tbaa !24
  %t141 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t143 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaArity(ptr %s2, ptr %s2, ptr %v0, { i64, ptr } %t139, i64 %t140, { i64, ptr } %t141, i64 %t138)
  store %"compiler/diagmsg:Msg" %t143, ptr %l111
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l98, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l99
  %t146 = load %"compiler/diagmsg:Msg", ptr %l111
  %t147 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t144, %"compiler/source:Span" %t145, %"compiler/diagmsg:Msg" %t146)
  store i64 %t147, ptr %l112
  br label %bb34
bb34:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l1
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t148, %"compiler/source:Span" %t149)
  store ptr %t152, ptr %l115
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t153 = load ptr, ptr %l115, !tbaa !29
  store ptr %t153, ptr %rv
  br label %ret
bb36:
  %t154 = load i64, ptr %l6, !tbaa !24
  store i64 %t154, ptr %l116, !tbaa !24
  %t155 = load i64, ptr %l116, !tbaa !24
  %t156 = icmp sge i64 %t155, 0
  br i1 %t156, label %bb37, label %bb38
bb37:
  %t158 = load i64, ptr %l116, !tbaa !24
  %t159 = icmp sle i64 %t158, 2305843009213693951
  br i1 %t159, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_3e7f35b161741bd4_701c2e32dccd3eb0)
  unreachable
bb39:
  %t161 = load i64, ptr %l116, !tbaa !24
  %t162 = mul i64 %t161, 4
  %t163 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t162)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  store { i64, ptr } %t165, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t167 = load i64, ptr %l6, !tbaa !24
  store i64 %t167, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t169 = load i64, ptr %l10, !tbaa !24
  %t170 = load i64, ptr %l9, !tbaa !24
  %t173 = icmp sgt i64 %t169, %t170
  br i1 %t173, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_3e7f35b161741bd4_701c2e32dccd3eb0)
  unreachable
bb41:
  %t175 = load i64, ptr %l11, !tbaa !24
  %t177 = icmp sgt i64 %t175, 0
  br i1 %t177, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb46
bb43:
  %t179 = load i64, ptr %l10, !tbaa !24
  %t180 = load i64, ptr %l9, !tbaa !24
  %t183 = sub i64 %t179, %t180
  %t184 = load i64, ptr %l11, !tbaa !24
  %t187 = add i64 %t183, %t184
  %t189 = sub i64 %t187, 1
  %t190 = load i64, ptr %l11, !tbaa !24
  %t193 = sdiv i64 %t189, %t190
  store i64 %t193, ptr %l127, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb45
bb45:
  %t195 = load i64, ptr %l127, !tbaa !24
  store i64 %t195, ptr %l124, !tbaa !24
  br label %bb46
bb46:
  %t196 = load i64, ptr %l124, !tbaa !24
  store i64 %t196, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb47
bb47:
  %t197 = load i64, ptr %l13, !tbaa !24
  %t198 = load i64, ptr %l12, !tbaa !24
  %t201 = icmp slt i64 %t197, %t198
  %t203 = xor i1 %t201, true
  br i1 %t203, label %bb48, label %bb49
bb48:
  br label %bb113
bb49:
  br label %bb50
bb50:
  %t205 = load i64, ptr %l9, !tbaa !24
  %t206 = load i64, ptr %l13, !tbaa !24
  %t207 = load i64, ptr %l11, !tbaa !24
  %t210 = mul i64 %t206, %t207
  %t213 = add i64 %t205, %t210
  store i64 %t213, ptr %l14, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t215, ptr %l145, !tbaa !27
  %t216 = load i64, ptr %l14, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr ptr, ptr %t219, i64 %t216
  %t221 = load ptr, ptr %t220, !tbaa !39
  %t223 = getelementptr %"compiler/ast:Param", ptr %t221, i32 0, i32 2
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = icmp eq ptr %t224, null
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb51, label %bb52
bb51:
  %t230 = load i64, ptr %l14, !tbaa !24
  store i64 %t230, ptr %l151, !tbaa !24
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t232, ptr %l153, !tbaa !27
  %t233 = load i64, ptr %l14, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr ptr, ptr %t236, i64 %t233
  %t238 = load ptr, ptr %t237, !tbaa !39
  %t240 = getelementptr %"compiler/ast:Param", ptr %t238, i32 0, i32 2
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t244 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t231, ptr %t241)
  store i32 %t244, ptr %l157
  br label %bb53
bb52:
  %t245 = load i32, ptr %l4, !tbaa !23
  %t246 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t249 = icmp ne i32 %t245, %t246
  br i1 %t249, label %bb100, label %bb101
bb53:
  %t251 = load i32, ptr %l157, !tbaa !23
  %t252 = load i64, ptr %l151, !tbaa !24
  %t253 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i32, ptr %t254, i64 %t252
  store i32 %t251, ptr %t255, !tbaa !33
  %t256 = load i32, ptr %l4, !tbaa !23
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t260 = icmp ne i32 %t256, %t257
  br i1 %t260, label %bb54, label %bb55
bb54:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t263, ptr %l163, !tbaa !27
  %t264 = load i64, ptr %l14, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr i32, ptr %t267, i64 %t264
  %t269 = load i32, ptr %t268, !tbaa !33
  %t272 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t262, i32 %t269, i64 -1)
  store i1 %t272, ptr %l166
  br label %bb56
bb55:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb57
bb56:
  %t273 = load i1, ptr %l166, !tbaa !21
  %t274 = xor i1 %t273, true
  store i1 %t274, ptr %l161, !tbaa !21
  br label %bb57
bb57:
  %t276 = load i1, ptr %l161, !tbaa !21
  br i1 %t276, label %bb58, label %bb59
bb58:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/check:Checker", ptr %t277, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !29
  %t282 = getelementptr %"compiler/generic:Program", ptr %t280, i32 0, i32 2
  %t283 = load i64, ptr %l14, !tbaa !24
  %t285 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr i32, ptr %t286, i64 %t283
  %t288 = load i32, ptr %t287, !tbaa !33
  %t289 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t289, ptr %l174, !tbaa !27
  %t290 = load i64, ptr %l14, !tbaa !24
  %t292 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !27
  %t294 = getelementptr i32, ptr %t293, i64 %t290
  %t295 = load i32, ptr %t294, !tbaa !33
  %t299 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t282, i32 %t288, i32 %t295)
  store i1 %t299, ptr %l177
  br label %bb60
bb59:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb61
bb60:
  %t300 = load i1, ptr %l177, !tbaa !21
  %t301 = xor i1 %t300, true
  store i1 %t301, ptr %l168, !tbaa !21
  br label %bb61
bb61:
  %t303 = load i1, ptr %l168, !tbaa !21
  br i1 %t303, label %bb62, label %bb63
bb62:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i64, ptr %l14, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i32, ptr %t308, i64 %t305
  %t310 = load i32, ptr %t309, !tbaa !33
  %t313 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t304, i32 %t310)
  store i1 %t313, ptr %l182
  br label %bb64
bb63:
  br label %bb99
bb64:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t315, ptr %l184, !tbaa !27
  %t316 = load i64, ptr %l14, !tbaa !24
  %t318 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr i32, ptr %t319, i64 %t316
  %t321 = load i32, ptr %t320, !tbaa !33
  %t324 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t314, i32 %t321)
  store i1 %t324, ptr %l187
  br label %bb65
bb65:
  %t325 = load i1, ptr %l182, !tbaa !21
  %t326 = load i1, ptr %l187, !tbaa !21
  %t327 = icmp ne i1 %t325, %t326
  br i1 %t327, label %bb66, label %bb67
bb66:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/check:Checker", ptr %t329, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = getelementptr %"compiler/generic:Program", ptr %t332, i32 0, i32 2
  store ptr %t334, ptr %l192, !tbaa !29
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load i64, ptr %l14, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i32, ptr %t339, i64 %t336
  %t341 = load i32, ptr %t340, !tbaa !33
  %t344 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t335, i32 %t341)
  store i32 %t344, ptr %l196
  br label %bb68
bb67:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb71
bb68:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t346, ptr %l198, !tbaa !27
  %t347 = load i64, ptr %l14, !tbaa !24
  %t349 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr i32, ptr %t350, i64 %t347
  %t352 = load i32, ptr %t351, !tbaa !33
  %t355 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t345, i32 %t352)
  store i32 %t355, ptr %l201
  br label %bb69
bb69:
  %t356 = load ptr, ptr %l192, !tbaa !29
  %t357 = load i32, ptr %l196, !tbaa !23
  %t358 = load i32, ptr %l201, !tbaa !23
  %t359 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t356, i32 %t357, i32 %t358)
  store i1 %t359, ptr %l202
  br label %bb70
bb70:
  %t360 = load i1, ptr %l202, !tbaa !21
  store i1 %t360, ptr %l189, !tbaa !21
  br label %bb71
bb71:
  %t361 = load i1, ptr %l189, !tbaa !21
  br i1 %t361, label %bb72, label %bb73
bb72:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t363, ptr %l204, !tbaa !27
  %t364 = load i64, ptr %l14, !tbaa !24
  %t366 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr ptr, ptr %t367, i64 %t364
  %t369 = load ptr, ptr %t368, !tbaa !39
  %t371 = getelementptr %"compiler/ast:Param", ptr %t369, i32 0, i32 0
  %t372 = load %"compiler/source:Span", ptr %t371
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t362, %"compiler/source:Span" %t372, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load %"compiler/source:Span", ptr %l1
  %t379 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t375, %"compiler/source:Span" %t376)
  store ptr %t379, ptr %l210
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  %t380 = load ptr, ptr %l210, !tbaa !29
  store ptr %t380, ptr %rv
  br label %ret
bb76:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i64, ptr %l14, !tbaa !24
  %t384 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = getelementptr i32, ptr %t385, i64 %t382
  %t387 = load i32, ptr %t386, !tbaa !33
  %t390 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t381, i32 %t387)
  store i1 %t390, ptr %l214
  br label %bb77
bb77:
  %t391 = load i1, ptr %l214, !tbaa !21
  br i1 %t391, label %bb78, label %bb79
bb78:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t393, ptr %l217, !tbaa !27
  %t394 = load i64, ptr %l14, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr i32, ptr %t397, i64 %t394
  %t399 = load i32, ptr %t398, !tbaa !33
  %t402 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t392, i32 %t399)
  store i1 %t402, ptr %l220
  br label %bb80
bb79:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb81
bb80:
  %t403 = load i1, ptr %l220, !tbaa !21
  store i1 %t403, ptr %l215, !tbaa !21
  br label %bb81
bb81:
  %t404 = load i1, ptr %l215, !tbaa !21
  br i1 %t404, label %bb82, label %bb83
bb82:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/generic:Program", ptr %t408, i32 0, i32 2
  store ptr %t410, ptr %l224, !tbaa !29
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load i64, ptr %l14, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i32, ptr %t415, i64 %t412
  %t417 = load i32, ptr %t416, !tbaa !33
  %t420 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t411, i32 %t417)
  store i32 %t420, ptr %l228
  br label %bb84
bb83:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb87
bb84:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t422, ptr %l230, !tbaa !27
  %t423 = load i64, ptr %l14, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l230, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr i32, ptr %t426, i64 %t423
  %t428 = load i32, ptr %t427, !tbaa !33
  %t431 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t421, i32 %t428)
  store i32 %t431, ptr %l233
  br label %bb85
bb85:
  %t432 = load ptr, ptr %l224, !tbaa !29
  %t433 = load i32, ptr %l228, !tbaa !23
  %t434 = load i32, ptr %l233, !tbaa !23
  %t435 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t432, i32 %t433, i32 %t434)
  store i1 %t435, ptr %l234
  br label %bb86
bb86:
  %t436 = load i1, ptr %l234, !tbaa !21
  store i1 %t436, ptr %l221, !tbaa !21
  br label %bb87
bb87:
  %t437 = load i1, ptr %l221, !tbaa !21
  br i1 %t437, label %bb88, label %bb89
bb88:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/check:Checker", ptr %t438, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t443 = getelementptr %"compiler/generic:Program", ptr %t441, i32 0, i32 2
  %t444 = load i64, ptr %l14, !tbaa !24
  %t446 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr i32, ptr %t447, i64 %t444
  %t449 = load i32, ptr %t448, !tbaa !33
  %t452 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t443, i32 %t449)
  store i64 %t452, ptr %l241
  br label %bb90
bb89:
  store i1 false, ptr %l235, !tbaa !21
  br label %bb91
bb90:
  %t453 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t454 = load i64, ptr %l241, !tbaa !24
  %t456 = and i64 %t454, %t453
  %t458 = icmp eq i64 %t456, 0
  store i1 %t458, ptr %l235, !tbaa !21
  br label %bb91
bb91:
  %t460 = load i1, ptr %l235, !tbaa !21
  %t463 = xor i1 %t460, true
  br i1 %t463, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s8
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l247, !tbaa !29
  %t466 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t466, ptr %l248, !tbaa !27
  %t467 = load i64, ptr %l14, !tbaa !24
  %t469 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = getelementptr ptr, ptr %t470, i64 %t467
  %t472 = load ptr, ptr %t471, !tbaa !39
  %t474 = getelementptr %"compiler/ast:Param", ptr %t472, i32 0, i32 0
  %t475 = load %"compiler/source:Span", ptr %t474
  store %"compiler/source:Span" %t475, ptr %l251
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load i32, ptr %l4, !tbaa !23
  %t480 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t476, i32 %t477)
  store { i64, ptr } %t480, ptr %l254
  br label %bb94
bb93:
  br label %bb98
bb94:
  %t481 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t482 = extractvalue { i64, ptr } %t481, 0
  %t483 = extractvalue { i64, ptr } %t481, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  %t489 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaSignature(ptr %s8, ptr %v0, { i64, ptr } %t487)
  store %"compiler/diagmsg:Msg" %t489, ptr %l256
  br label %bb95
bb95:
  %t490 = load ptr, ptr %l247, !tbaa !29
  %t491 = load %"compiler/source:Span", ptr %l251
  %t492 = load %"compiler/diagmsg:Msg", ptr %l256
  %t493 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t490, %"compiler/source:Span" %t491, %"compiler/diagmsg:Msg" %t492)
  store i64 %t493, ptr %l257
  br label %bb96
bb96:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load %"compiler/source:Span", ptr %l1
  %t498 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t494, %"compiler/source:Span" %t495)
  store ptr %t498, ptr %l260
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t499 = load ptr, ptr %l260, !tbaa !29
  store ptr %t499, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  br label %bb111
bb100:
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t501, ptr %l266, !tbaa !27
  %t502 = load i64, ptr %l14, !tbaa !24
  %t504 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t505 = load ptr, ptr %t504, !tbaa !27
  %t506 = getelementptr i32, ptr %t505, i64 %t502
  %t507 = load i32, ptr %t506, !tbaa !33
  %t510 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t500, i32 %t507, i64 -1)
  store i1 %t510, ptr %l269
  br label %bb102
bb101:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb103
bb102:
  %t511 = load i1, ptr %l269, !tbaa !21
  %t512 = xor i1 %t511, true
  store i1 %t512, ptr %l264, !tbaa !21
  br label %bb103
bb103:
  %t514 = load i1, ptr %l264, !tbaa !21
  br i1 %t514, label %bb104, label %bb105
bb104:
  %t515 = load i64, ptr %l14, !tbaa !24
  %t516 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t516, ptr %l272, !tbaa !27
  %t517 = load i64, ptr %l14, !tbaa !24
  %t519 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !27
  %t521 = getelementptr i32, ptr %t520, i64 %t517
  %t522 = load i32, ptr %t521, !tbaa !33
  %t525 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !27
  %t527 = getelementptr i32, ptr %t526, i64 %t515
  store i32 %t522, ptr %t527, !tbaa !33
  br label %bb110
bb105:
  store %olang.scope zeroinitializer, ptr %s11
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l275, !tbaa !29
  %t529 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t529, ptr %l276, !tbaa !27
  %t530 = load i64, ptr %l14, !tbaa !24
  %t532 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t533 = load ptr, ptr %t532, !tbaa !27
  %t534 = getelementptr ptr, ptr %t533, i64 %t530
  %t535 = load ptr, ptr %t534, !tbaa !39
  %t537 = getelementptr %"compiler/ast:Param", ptr %t535, i32 0, i32 0
  %t538 = load %"compiler/source:Span", ptr %t537
  store %"compiler/source:Span" %t538, ptr %l279
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t540, ptr %l281, !tbaa !27
  %t541 = load i64, ptr %l14, !tbaa !24
  %t543 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = getelementptr ptr, ptr %t544, i64 %t541
  %t546 = load ptr, ptr %t545, !tbaa !39
  %t548 = getelementptr %"compiler/ast:Param", ptr %t546, i32 0, i32 1
  %t549 = load i32, ptr %t548, !tbaa !23
  %t552 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s11, ptr %t539, i32 %t549)
  store { i64, ptr } %t552, ptr %l285
  br label %bb106
bb106:
  %t553 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t553, 0
  %t555 = extractvalue { i64, ptr } %t553, 1
  %t556 = mul i64 %t554, 1
  %t557 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t556)
  call void @llvm.memcpy.p0.p0.i64(ptr %t557, ptr %t555, i64 %t556, i1 false)
  %t558 = insertvalue { i64, ptr } undef, i64 %t554, 0
  %t559 = insertvalue { i64, ptr } %t558, ptr %t557, 1
  %t561 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaParamUntyped(ptr %s11, ptr %v0, { i64, ptr } %t559)
  store %"compiler/diagmsg:Msg" %t561, ptr %l287
  br label %bb107
bb107:
  %t562 = load ptr, ptr %l275, !tbaa !29
  %t563 = load %"compiler/source:Span", ptr %l279
  %t564 = load %"compiler/diagmsg:Msg", ptr %l287
  %t565 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t562, %"compiler/source:Span" %t563, %"compiler/diagmsg:Msg" %t564)
  store i64 %t565, ptr %l288
  br label %bb108
bb108:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load %"compiler/source:Span", ptr %l1
  %t570 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t566, %"compiler/source:Span" %t567)
  store ptr %t570, ptr %l291
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t571 = load ptr, ptr %l291, !tbaa !29
  store ptr %t571, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t572 = load i64, ptr %l13, !tbaa !24
  %t574 = add i64 %t572, 1
  store i64 %t574, ptr %l13, !tbaa !24
  br label %bb47
bb113:
  store i1 false, ptr %l16, !tbaa !21
  %t576 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t576, ptr %l17, !tbaa !23
  %t578 = load ptr, ptr %l2, !tbaa !29
  %t580 = getelementptr %"compiler/ast:Func", ptr %t578, i32 0, i32 3
  %t581 = load ptr, ptr %t580, !tbaa !29
  %t583 = getelementptr %"compiler/ast:Sig", ptr %t581, i32 0, i32 1
  %t584 = load { i64, ptr }, ptr %t583, !tbaa !27
  %t586 = extractvalue { i64, ptr } %t584, 0
  %t588 = icmp sgt i64 %t586, 0
  br i1 %t588, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s13
  %t590 = load ptr, ptr %l2, !tbaa !29
  %t592 = getelementptr %"compiler/ast:Func", ptr %t590, i32 0, i32 3
  %t593 = load ptr, ptr %t592, !tbaa !29
  %t595 = getelementptr %"compiler/ast:Sig", ptr %t593, i32 0, i32 1
  %t596 = load { i64, ptr }, ptr %t595, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t596, 0
  store i64 %t598, ptr %l303, !tbaa !24
  %t599 = load i64, ptr %l303, !tbaa !24
  %t600 = icmp sge i64 %t599, 0
  br i1 %t600, label %bb116, label %bb117
bb115:
  %t602 = load i32, ptr %l4, !tbaa !23
  %t603 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t606 = icmp ne i32 %t602, %t603
  br i1 %t606, label %bb138, label %bb139
bb116:
  %t608 = load i64, ptr %l303, !tbaa !24
  %t609 = icmp sle i64 %t608, 2305843009213693951
  br i1 %t609, label %bb118, label %bb119
bb117:
  call void @__olang_check_failed(ptr @olang_loc_5a62442bf09cb677_66ce856a58ef9453)
  unreachable
bb118:
  %t611 = load i64, ptr %l303, !tbaa !24
  %t612 = mul i64 %t611, 4
  %t613 = call ptr @__olang_scope_alloc_zeroed(ptr %s13, i64 %t612)
  %t614 = insertvalue { i64, ptr } undef, i64 %t611, 0
  %t615 = insertvalue { i64, ptr } %t614, ptr %t613, 1
  store { i64, ptr } %t615, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t617 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t619 = extractvalue { i64, ptr } %t617, 0
  store i64 %t619, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t621 = load i64, ptr %l20, !tbaa !24
  %t622 = load i64, ptr %l19, !tbaa !24
  %t625 = icmp sgt i64 %t621, %t622
  br i1 %t625, label %bb120, label %bb121
bb119:
  call void @__olang_check_failed(ptr @olang_loc_5a62442bf09cb677_66ce856a58ef9453)
  unreachable
bb120:
  %t627 = load i64, ptr %l21, !tbaa !24
  %t629 = icmp sgt i64 %t627, 0
  br i1 %t629, label %bb122, label %bb123
bb121:
  store i64 0, ptr %l312, !tbaa !24
  br label %bb125
bb122:
  %t631 = load i64, ptr %l20, !tbaa !24
  %t632 = load i64, ptr %l19, !tbaa !24
  %t635 = sub i64 %t631, %t632
  %t636 = load i64, ptr %l21, !tbaa !24
  %t639 = add i64 %t635, %t636
  %t641 = sub i64 %t639, 1
  %t642 = load i64, ptr %l21, !tbaa !24
  %t645 = sdiv i64 %t641, %t642
  store i64 %t645, ptr %l315, !tbaa !24
  br label %bb124
bb123:
  store i64 0, ptr %l315, !tbaa !24
  br label %bb124
bb124:
  %t647 = load i64, ptr %l315, !tbaa !24
  store i64 %t647, ptr %l312, !tbaa !24
  br label %bb125
bb125:
  %t648 = load i64, ptr %l312, !tbaa !24
  store i64 %t648, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb126
bb126:
  %t649 = load i64, ptr %l23, !tbaa !24
  %t650 = load i64, ptr %l22, !tbaa !24
  %t653 = icmp slt i64 %t649, %t650
  %t655 = xor i1 %t653, true
  br i1 %t655, label %bb127, label %bb128
bb127:
  br label %bb132
bb128:
  br label %bb129
bb129:
  %t657 = load i64, ptr %l19, !tbaa !24
  %t658 = load i64, ptr %l23, !tbaa !24
  %t659 = load i64, ptr %l21, !tbaa !24
  %t662 = mul i64 %t658, %t659
  %t665 = add i64 %t657, %t662
  store i64 %t665, ptr %l24, !tbaa !24
  %t667 = load i64, ptr %l24, !tbaa !24
  store i64 %t667, ptr %l333, !tbaa !24
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t669 = load ptr, ptr %l2, !tbaa !29
  %t671 = getelementptr %"compiler/ast:Func", ptr %t669, i32 0, i32 3
  %t672 = load ptr, ptr %t671, !tbaa !29
  %t674 = getelementptr %"compiler/ast:Sig", ptr %t672, i32 0, i32 1
  %t675 = load { i64, ptr }, ptr %t674, !tbaa !27
  store { i64, ptr } %t675, ptr %l337, !tbaa !27
  %t676 = load i64, ptr %l24, !tbaa !24
  %t678 = getelementptr { i64, ptr }, ptr %l337, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr ptr, ptr %t679, i64 %t676
  %t681 = load ptr, ptr %t680, !tbaa !39
  %t685 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t668, ptr %t681)
  store i32 %t685, ptr %l341
  br label %bb130
bb130:
  %t686 = load i32, ptr %l341, !tbaa !23
  %t687 = load i64, ptr %l333, !tbaa !24
  %t688 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t689 = load ptr, ptr %t688, !tbaa !27
  %t690 = getelementptr i32, ptr %t689, i64 %t687
  store i32 %t686, ptr %t690, !tbaa !33
  br label %bb131
bb131:
  %t691 = load i64, ptr %l23, !tbaa !24
  %t693 = add i64 %t691, 1
  store i64 %t693, ptr %l23, !tbaa !24
  br label %bb126
bb132:
  %t695 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t697 = extractvalue { i64, ptr } %t695, 0
  %t699 = icmp eq i64 %t697, 1
  br i1 %t699, label %bb133, label %bb134
bb133:
  %t701 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t702 = load ptr, ptr %t701, !tbaa !27
  %t703 = getelementptr i32, ptr %t702, i64 0
  %t704 = load i32, ptr %t703, !tbaa !33
  store i32 %t704, ptr %l347, !tbaa !23
  br label %bb137
bb134:
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t711 = getelementptr %"compiler/generic:Program", ptr %t709, i32 0, i32 2
  store ptr %t711, ptr %l351, !tbaa !29
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t714 = getelementptr %"compiler/check:Checker", ptr %t712, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !29
  %t717 = getelementptr %"compiler/generic:Program", ptr %t715, i32 0, i32 2
  %t718 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t721 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s13, ptr %t717, { i64, ptr } %t718)
  store i32 %t721, ptr %l356
  br label %bb135
bb135:
  %t722 = load ptr, ptr %l351, !tbaa !29
  %t723 = load i32, ptr %l356, !tbaa !23
  %t724 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t722, i32 %t723)
  store i32 %t724, ptr %l357
  br label %bb136
bb136:
  %t725 = load i32, ptr %l357, !tbaa !23
  store i32 %t725, ptr %l347, !tbaa !23
  br label %bb137
bb137:
  %t726 = load i32, ptr %l347, !tbaa !23
  store i32 %t726, ptr %l17, !tbaa !23
  call void @__olang_scope_close(ptr %s13)
  br label %bb147
bb138:
  %t727 = load ptr, ptr %l0, !tbaa !29
  store ptr %t727, ptr %l362, !tbaa !29
  %t728 = load ptr, ptr %l0, !tbaa !29
  %t730 = getelementptr %"compiler/check:Checker", ptr %t728, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !29
  %t733 = getelementptr %"compiler/generic:Program", ptr %t731, i32 0, i32 2
  %t734 = load i32, ptr %l4, !tbaa !23
  %t737 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t733, i32 %t734)
  store i32 %t737, ptr %l367
  br label %bb140
bb139:
  store i1 false, ptr %l361, !tbaa !21
  br label %bb142
bb140:
  %t738 = load ptr, ptr %l362, !tbaa !29
  %t739 = load i32, ptr %l367, !tbaa !23
  %t740 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t738, i32 %t739, i64 -1)
  store i1 %t740, ptr %l368
  br label %bb141
bb141:
  %t741 = load i1, ptr %l368, !tbaa !21
  %t742 = xor i1 %t741, true
  store i1 %t742, ptr %l361, !tbaa !21
  br label %bb142
bb142:
  %t744 = load i1, ptr %l361, !tbaa !21
  br i1 %t744, label %bb143, label %bb144
bb143:
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t747 = getelementptr %"compiler/check:Checker", ptr %t745, i32 0, i32 1
  %t748 = load ptr, ptr %t747, !tbaa !29
  %t750 = getelementptr %"compiler/generic:Program", ptr %t748, i32 0, i32 2
  %t751 = load i32, ptr %l4, !tbaa !23
  %t754 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t750, i32 %t751)
  store i32 %t754, ptr %l374
  br label %bb145
bb144:
  store i1 true, ptr %l16, !tbaa !21
  %t755 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t755, ptr %l17, !tbaa !23
  br label %bb146
bb145:
  %t757 = load i32, ptr %l374, !tbaa !23
  store i32 %t757, ptr %l17, !tbaa !23
  br label %bb146
bb146:
  br label %bb147
bb147:
  store i32 0, ptr %l25, !tbaa !23
  store i1 false, ptr %l26, !tbaa !21
  %t758 = load ptr, ptr %l2, !tbaa !29
  %t760 = getelementptr %"compiler/ast:Func", ptr %t758, i32 0, i32 3
  %t761 = load ptr, ptr %t760, !tbaa !29
  %t763 = getelementptr %"compiler/ast:Sig", ptr %t761, i32 0, i32 2
  %t764 = load i1, ptr %t763, !tbaa !21
  br i1 %t764, label %bb148, label %bb149
bb148:
  %t766 = load ptr, ptr %l2, !tbaa !29
  %t768 = getelementptr %"compiler/ast:Func", ptr %t766, i32 0, i32 3
  %t769 = load ptr, ptr %t768, !tbaa !29
  %t771 = getelementptr %"compiler/ast:Sig", ptr %t769, i32 0, i32 3
  %t772 = load { i64, ptr }, ptr %t771, !tbaa !27
  %t774 = extractvalue { i64, ptr } %t772, 0
  %t776 = icmp eq i64 %t774, 0
  store i1 %t776, ptr %l379, !tbaa !21
  br label %bb150
bb149:
  store i1 false, ptr %l379, !tbaa !21
  br label %bb150
bb150:
  %t778 = load i1, ptr %l379, !tbaa !21
  br i1 %t778, label %bb151, label %bb152
bb151:
  %t779 = load i32, ptr %l4, !tbaa !23
  %t780 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t783 = icmp eq i32 %t779, %t780
  store i1 %t783, ptr %l385, !tbaa !21
  br label %bb153
bb152:
  store i1 false, ptr %l385, !tbaa !21
  br label %bb153
bb153:
  %t785 = load i1, ptr %l385, !tbaa !21
  br i1 %t785, label %bb154, label %bb155
bb154:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb170
bb155:
  %t786 = load ptr, ptr %l2, !tbaa !29
  %t788 = getelementptr %"compiler/ast:Func", ptr %t786, i32 0, i32 3
  %t789 = load ptr, ptr %t788, !tbaa !29
  %t791 = getelementptr %"compiler/ast:Sig", ptr %t789, i32 0, i32 2
  %t792 = load i1, ptr %t791, !tbaa !21
  br i1 %t792, label %bb156, label %bb157
bb156:
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t796 = getelementptr %"compiler/check:Checker", ptr %t794, i32 0, i32 1
  %t797 = load ptr, ptr %t796, !tbaa !29
  store ptr %t797, ptr %l393, !tbaa !29
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t800 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t798)
  store ptr %t800, ptr %l395
  br label %bb158
bb157:
  %t801 = load i32, ptr %l4, !tbaa !23
  %t802 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t805 = icmp ne i32 %t801, %t802
  br i1 %t805, label %bb160, label %bb161
bb158:
  %t807 = load ptr, ptr %l395, !tbaa !29
  %t809 = getelementptr %"compiler/check:frame", ptr %t807, i32 0, i32 4
  %t810 = load ptr, ptr %l2, !tbaa !29
  %t812 = getelementptr %"compiler/ast:Func", ptr %t810, i32 0, i32 3
  %t813 = load ptr, ptr %t812, !tbaa !29
  %t815 = getelementptr %"compiler/ast:Sig", ptr %t813, i32 0, i32 3
  %t816 = load { i64, ptr }, ptr %t815, !tbaa !27
  %t817 = load ptr, ptr %l393, !tbaa !29
  %t820 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorList(ptr %v0, ptr %v0, ptr %v1, ptr %t817, ptr %t809, i1 true, { i64, ptr } %t816)
  store i32 %t820, ptr %l401
  br label %bb159
bb159:
  %t821 = load i32, ptr %l401, !tbaa !23
  store i32 %t821, ptr %l25, !tbaa !23
  br label %bb169
bb160:
  %t822 = load ptr, ptr %l0, !tbaa !29
  store ptr %t822, ptr %l406, !tbaa !29
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t825 = getelementptr %"compiler/check:Checker", ptr %t823, i32 0, i32 1
  %t826 = load ptr, ptr %t825, !tbaa !29
  %t828 = getelementptr %"compiler/generic:Program", ptr %t826, i32 0, i32 2
  %t829 = load i32, ptr %l4, !tbaa !23
  %t832 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t828, i32 %t829)
  store i32 %t832, ptr %l411
  br label %bb162
bb161:
  store i1 false, ptr %l405, !tbaa !21
  br label %bb164
bb162:
  %t833 = load ptr, ptr %l406, !tbaa !29
  %t834 = load i32, ptr %l411, !tbaa !23
  %t835 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %t833, i32 %t834, i64 -1)
  store i1 %t835, ptr %l412
  br label %bb163
bb163:
  %t836 = load i1, ptr %l412, !tbaa !21
  %t837 = xor i1 %t836, true
  store i1 %t837, ptr %l405, !tbaa !21
  br label %bb164
bb164:
  %t839 = load i1, ptr %l405, !tbaa !21
  br i1 %t839, label %bb165, label %bb166
bb165:
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t842 = getelementptr %"compiler/check:Checker", ptr %t840, i32 0, i32 1
  %t843 = load ptr, ptr %t842, !tbaa !29
  %t845 = getelementptr %"compiler/generic:Program", ptr %t843, i32 0, i32 2
  %t846 = load i32, ptr %l4, !tbaa !23
  %t849 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t845, i32 %t846)
  store i32 %t849, ptr %l418
  br label %bb167
bb166:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb168
bb167:
  %t850 = load i32, ptr %l418, !tbaa !23
  store i32 %t850, ptr %l25, !tbaa !23
  br label %bb168
bb168:
  br label %bb169
bb169:
  br label %bb170
bb170:
  %t851 = load i32, ptr %l4, !tbaa !23
  %t852 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t855 = icmp ne i32 %t851, %t852
  br i1 %t855, label %bb171, label %bb172
bb171:
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t859 = getelementptr %"compiler/check:Checker", ptr %t857, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !29
  %t862 = getelementptr %"compiler/generic:Program", ptr %t860, i32 0, i32 2
  %t863 = load i32, ptr %l4, !tbaa !23
  %t866 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t862, i32 %t863)
  store i32 %t866, ptr %l427
  br label %bb173
bb172:
  store i32 0, ptr %l422, !tbaa !23
  br label %bb174
bb173:
  %t867 = load i32, ptr %l427, !tbaa !23
  store i32 %t867, ptr %l422, !tbaa !23
  br label %bb174
bb174:
  %t868 = load i32, ptr %l422, !tbaa !23
  store i32 %t868, ptr %l27, !tbaa !23
  %t869 = load ptr, ptr %l0, !tbaa !29
  %t871 = getelementptr %"compiler/check:Checker", ptr %t869, i32 0, i32 1
  %t872 = load ptr, ptr %t871, !tbaa !29
  %t874 = getelementptr %"compiler/generic:Program", ptr %t872, i32 0, i32 2
  %t875 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t878 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t874, { i64, ptr } %t875)
  store i32 %t878, ptr %l432
  br label %bb175
bb175:
  %t879 = load i32, ptr %l432, !tbaa !23
  store i32 %t879, ptr %l28, !tbaa !23
  %t880 = load ptr, ptr %l0, !tbaa !29
  %t882 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t880)
  store ptr %t882, ptr %l434
  br label %bb176
bb176:
  %t883 = load ptr, ptr %l434, !tbaa !29
  store ptr %t883, ptr %l29, !tbaa !29
  %t884 = load ptr, ptr %l0, !tbaa !29
  %t886 = getelementptr %"compiler/check:Checker", ptr %t884, i32 0, i32 20
  %t888 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t886)
  store i64 %t888, ptr %l437
  br label %bb177
bb177:
  %t889 = load i64, ptr %l437, !tbaa !24
  %t890 = sub i64 %t889, 1
  store i64 %t890, ptr %l30, !tbaa !24
  %t892 = load ptr, ptr %l0, !tbaa !29
  store ptr %t892, ptr %l439, !tbaa !29
  %t893 = load ptr, ptr %l29, !tbaa !29
  %t895 = getelementptr %"compiler/check:frame", ptr %t893, i32 0, i32 0
  %t896 = load i64, ptr %t895, !tbaa !24
  %t898 = trunc i64 %t896 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t900
  %t901 = getelementptr { i64, [2 x i64] }, ptr %t900, i32 0, i32 0
  store i64 4, ptr %t901
  %t903 = insertvalue { i32 } undef, i32 %t898, 0
  %t904 = getelementptr { i64, [2 x i64] }, ptr %t900, i32 0, i32 1
  store { i32 } %t903, ptr %t904
  %t905 = load { i64, [2 x i64] }, ptr %t900
  store { i64, [2 x i64] } %t905, ptr %l444
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/check:Checker", ptr %t906, i32 0, i32 1
  %t909 = load ptr, ptr %t908, !tbaa !29
  %t911 = getelementptr %"compiler/generic:Program", ptr %t909, i32 0, i32 2
  %t912 = load i32, ptr %l28, !tbaa !23
  %t913 = load i32, ptr %l17, !tbaa !23
  %t914 = load i32, ptr %l25, !tbaa !23
  %t915 = load i32, ptr %l27, !tbaa !23
  %t921 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t911, i32 %t912, i32 %t913, i32 %t914, i32 %t915, i64 0, i1 false, i32 0, i64 0)
  store i32 %t921, ptr %l452
  br label %bb178
bb178:
  %t922 = load ptr, ptr %l29, !tbaa !29
  %t924 = getelementptr %"compiler/check:frame", ptr %t922, i32 0, i32 1
  %t925 = load i64, ptr %t924, !tbaa !24
  %t926 = load %"compiler/source:Span", ptr %l1
  %t927 = load ptr, ptr %l439, !tbaa !29
  %t928 = load { i64, [2 x i64] }, ptr %l444
  %t929 = load i32, ptr %l452, !tbaa !23
  %t932 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t927, { i64, [2 x i64] } %t928, i32 %t929, i64 %t925, %"compiler/source:Span" %t926)
  store i64 %t932, ptr %l456
  br label %bb179
bb179:
  %t933 = load i64, ptr %l456, !tbaa !24
  store i64 %t933, ptr %l31, !tbaa !24
  %t934 = load ptr, ptr %l0, !tbaa !29
  %t936 = getelementptr %"compiler/check:Checker", ptr %t934, i32 0, i32 23
  %t937 = load i64, ptr %l31, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t936, i64 %t937, i64 1)
  br label %bb180
bb180:
  %t940 = load ptr, ptr %l0, !tbaa !29
  %t941 = load i64, ptr %l31, !tbaa !24
  %t942 = load ptr, ptr %l29, !tbaa !29
  %t944 = getelementptr %"compiler/check:frame", ptr %t942, i32 0, i32 1
  %t945 = load i64, ptr %t944, !tbaa !24
  %t946 = load i32, ptr %l17, !tbaa !23
  %t947 = load i32, ptr %l25, !tbaa !23
  %t953 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t940, i64 %t941, i64 %t945, i32 %t946, i32 %t947)
  store ptr %t953, ptr %l466
  br label %bb181
bb181:
  %t954 = load ptr, ptr %l466, !tbaa !29
  store ptr %t954, ptr %l32, !tbaa !29
  %t955 = load ptr, ptr %l32, !tbaa !29
  store ptr %t955, ptr %l467, !tbaa !29
  %t956 = ptrtoint ptr %v0 to i64
  store i64 %t956, ptr %l468, !tbaa !24
  %t957 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t957, label %bb182, label %bb183
bb182:
  %t959 = call ptr @__olang_region_make(ptr %v0)
  %t960 = ptrtoint ptr %t959 to i64
  store i64 %t960, ptr %l468, !tbaa !24
  br label %bb183
bb183:
  %t961 = load ptr, ptr %l29, !tbaa !29
  %t963 = getelementptr %"compiler/check:frame", ptr %t961, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l471, ptr %t963, i64 160, i1 false)
  %t965 = load i64, ptr %l468
  %t966 = inttoptr i64 %t965 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t964, ptr %t966, ptr %l471)
  call void @llvm.memmove.p0.p0.i64(ptr %l473, ptr %t964, i64 160, i1 false)
  br label %bb184
bb184:
  %t968 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t968, label %bb185, label %bb186
bb185:
  %t970 = load i64, ptr %l468
  %t971 = inttoptr i64 %t970 to ptr
  %t972 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 3
  %t973 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t972, i32 0, i32 2
  %t974 = load { i64, ptr }, ptr %t973
  %t975 = extractvalue { i64, ptr } %t974, 1
  %t976 = call ptr @__olang_region_or(ptr %t975, ptr null)
  %t977 = call ptr @__olang_region_home(ptr %t976)
  %t978 = icmp ne ptr %t977, null
  %t979 = select i1 %t978, ptr %t977, ptr null
  %t980 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 3
  %t981 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t980, i32 0, i32 1
  %t982 = load { i64, ptr }, ptr %t981
  %t983 = extractvalue { i64, ptr } %t982, 1
  %t984 = call ptr @__olang_region_or(ptr %t983, ptr null)
  %t985 = call ptr @__olang_region_home(ptr %t984)
  %t986 = icmp ne ptr %t985, null
  %t987 = select i1 %t986, ptr %t985, ptr %t979
  %t988 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 3
  %t989 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t988, i32 0, i32 0
  %t990 = load { i64, ptr }, ptr %t989
  %t991 = extractvalue { i64, ptr } %t990, 1
  %t992 = call ptr @__olang_region_or(ptr %t991, ptr null)
  %t993 = call ptr @__olang_region_home(ptr %t992)
  %t994 = icmp ne ptr %t993, null
  %t995 = select i1 %t994, ptr %t993, ptr %t987
  %t996 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 2
  %t997 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t996, i32 0, i32 2
  %t998 = load { i64, ptr }, ptr %t997
  %t999 = extractvalue { i64, ptr } %t998, 1
  %t1000 = call ptr @__olang_region_or(ptr %t999, ptr null)
  %t1001 = call ptr @__olang_region_home(ptr %t1000)
  %t1002 = icmp ne ptr %t1001, null
  %t1003 = select i1 %t1002, ptr %t1001, ptr %t995
  %t1004 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 2
  %t1005 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1004, i32 0, i32 1
  %t1006 = load { i64, ptr }, ptr %t1005
  %t1007 = extractvalue { i64, ptr } %t1006, 1
  %t1008 = call ptr @__olang_region_or(ptr %t1007, ptr null)
  %t1009 = call ptr @__olang_region_home(ptr %t1008)
  %t1010 = icmp ne ptr %t1009, null
  %t1011 = select i1 %t1010, ptr %t1009, ptr %t1003
  %t1012 = getelementptr %"compiler/generic:Context", ptr %l473, i32 0, i32 2
  %t1013 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1012, i32 0, i32 0
  %t1014 = load { i64, ptr }, ptr %t1013
  %t1015 = extractvalue { i64, ptr } %t1014, 1
  %t1016 = call ptr @__olang_region_or(ptr %t1015, ptr null)
  %t1017 = call ptr @__olang_region_home(ptr %t1016)
  %t1018 = icmp ne ptr %t1017, null
  %t1019 = select i1 %t1018, ptr %t1017, ptr %t1011
  %t1020 = icmp eq ptr %t1019, %t971
  call void @__olang_region_settle(ptr %t971, i1 %t1020)
  br label %bb186
bb186:
  %t1021 = load ptr, ptr %l467, !tbaa !29
  %t1022 = getelementptr %"compiler/check:frame", ptr %t1021, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l475, ptr %t1022, i64 160, i1 false)
  %t1023 = load ptr, ptr %l467, !tbaa !29
  %t1024 = getelementptr %"compiler/check:frame", ptr %t1023, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t1024, ptr %l473, i64 160, i1 false)
  %t1025 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t1025, label %bb187, label %bb188
bb187:
  %t1027 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 3
  %t1028 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1027, i32 0, i32 2
  %t1029 = load { i64, ptr }, ptr %t1028
  %t1030 = extractvalue { i64, ptr } %t1029, 1
  %t1031 = call ptr @__olang_region_or(ptr %t1030, ptr null)
  %t1032 = call ptr @__olang_region_home(ptr %t1031)
  %t1033 = icmp ne ptr %t1032, null
  %t1034 = select i1 %t1033, ptr %t1032, ptr null
  %t1035 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 3
  %t1036 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1035, i32 0, i32 1
  %t1037 = load { i64, ptr }, ptr %t1036
  %t1038 = extractvalue { i64, ptr } %t1037, 1
  %t1039 = call ptr @__olang_region_or(ptr %t1038, ptr null)
  %t1040 = call ptr @__olang_region_home(ptr %t1039)
  %t1041 = icmp ne ptr %t1040, null
  %t1042 = select i1 %t1041, ptr %t1040, ptr %t1034
  %t1043 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 3
  %t1044 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1043, i32 0, i32 0
  %t1045 = load { i64, ptr }, ptr %t1044
  %t1046 = extractvalue { i64, ptr } %t1045, 1
  %t1047 = call ptr @__olang_region_or(ptr %t1046, ptr null)
  %t1048 = call ptr @__olang_region_home(ptr %t1047)
  %t1049 = icmp ne ptr %t1048, null
  %t1050 = select i1 %t1049, ptr %t1048, ptr %t1042
  %t1051 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 2
  %t1052 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1051, i32 0, i32 2
  %t1053 = load { i64, ptr }, ptr %t1052
  %t1054 = extractvalue { i64, ptr } %t1053, 1
  %t1055 = call ptr @__olang_region_or(ptr %t1054, ptr null)
  %t1056 = call ptr @__olang_region_home(ptr %t1055)
  %t1057 = icmp ne ptr %t1056, null
  %t1058 = select i1 %t1057, ptr %t1056, ptr %t1050
  %t1059 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 2
  %t1060 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1059, i32 0, i32 1
  %t1061 = load { i64, ptr }, ptr %t1060
  %t1062 = extractvalue { i64, ptr } %t1061, 1
  %t1063 = call ptr @__olang_region_or(ptr %t1062, ptr null)
  %t1064 = call ptr @__olang_region_home(ptr %t1063)
  %t1065 = icmp ne ptr %t1064, null
  %t1066 = select i1 %t1065, ptr %t1064, ptr %t1058
  %t1067 = getelementptr %"compiler/generic:Context", ptr %l475, i32 0, i32 2
  %t1068 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1067, i32 0, i32 0
  %t1069 = load { i64, ptr }, ptr %t1068
  %t1070 = extractvalue { i64, ptr } %t1069, 1
  %t1071 = call ptr @__olang_region_or(ptr %t1070, ptr null)
  %t1072 = call ptr @__olang_region_home(ptr %t1071)
  %t1073 = icmp ne ptr %t1072, null
  %t1074 = select i1 %t1073, ptr %t1072, ptr %t1066
  call void @__olang_region_drop(ptr %t1074)
  store %"compiler/generic:Context" zeroinitializer, ptr %l475
  br label %bb188
bb188:
  %t1075 = load ptr, ptr %l32, !tbaa !29
  %t1076 = load i64, ptr %l30, !tbaa !24
  %t1079 = getelementptr %"compiler/check:frame", ptr %t1075, i32 0, i32 19
  store i64 %t1076, ptr %t1079, !tbaa !24
  %t1080 = load ptr, ptr %l32, !tbaa !29
  %t1081 = load i1, ptr %l16, !tbaa !21
  %t1084 = getelementptr %"compiler/check:frame", ptr %t1080, i32 0, i32 25
  store i1 %t1081, ptr %t1084, !tbaa !21
  %t1085 = load ptr, ptr %l32, !tbaa !29
  %t1086 = load i1, ptr %l26, !tbaa !21
  %t1089 = getelementptr %"compiler/check:frame", ptr %t1085, i32 0, i32 26
  store i1 %t1086, ptr %t1089, !tbaa !21
  %t1090 = load ptr, ptr %l0, !tbaa !29
  %t1092 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1090)
  store ptr %t1092, ptr %l484
  br label %bb189
bb189:
  %t1093 = load %"compiler/source:Span", ptr %l1
  %t1094 = load ptr, ptr %l484, !tbaa !29
  %t1097 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t1094, i32 -1, i32 0, %"compiler/source:Span" %t1093)
  store i32 %t1097, ptr %l487
  br label %bb190
bb190:
  store i64 0, ptr %l33, !tbaa !24
  %t1098 = load i64, ptr %l6, !tbaa !24
  store i64 %t1098, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t1100 = load i64, ptr %l34, !tbaa !24
  %t1101 = load i64, ptr %l33, !tbaa !24
  %t1104 = icmp sgt i64 %t1100, %t1101
  br i1 %t1104, label %bb191, label %bb192
bb191:
  %t1106 = load i64, ptr %l35, !tbaa !24
  %t1108 = icmp sgt i64 %t1106, 0
  br i1 %t1108, label %bb193, label %bb194
bb192:
  store i64 0, ptr %l492, !tbaa !24
  br label %bb196
bb193:
  %t1110 = load i64, ptr %l34, !tbaa !24
  %t1111 = load i64, ptr %l33, !tbaa !24
  %t1114 = sub i64 %t1110, %t1111
  %t1115 = load i64, ptr %l35, !tbaa !24
  %t1118 = add i64 %t1114, %t1115
  %t1120 = sub i64 %t1118, 1
  %t1121 = load i64, ptr %l35, !tbaa !24
  %t1124 = sdiv i64 %t1120, %t1121
  store i64 %t1124, ptr %l495, !tbaa !24
  br label %bb195
bb194:
  store i64 0, ptr %l495, !tbaa !24
  br label %bb195
bb195:
  %t1126 = load i64, ptr %l495, !tbaa !24
  store i64 %t1126, ptr %l492, !tbaa !24
  br label %bb196
bb196:
  %t1127 = load i64, ptr %l492, !tbaa !24
  store i64 %t1127, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb197
bb197:
  %t1128 = load i64, ptr %l37, !tbaa !24
  %t1129 = load i64, ptr %l36, !tbaa !24
  %t1132 = icmp slt i64 %t1128, %t1129
  %t1134 = xor i1 %t1132, true
  br i1 %t1134, label %bb198, label %bb199
bb198:
  br label %bb207
bb199:
  br label %bb200
bb200:
  %t1136 = load i64, ptr %l33, !tbaa !24
  %t1137 = load i64, ptr %l37, !tbaa !24
  %t1138 = load i64, ptr %l35, !tbaa !24
  %t1141 = mul i64 %t1137, %t1138
  %t1144 = add i64 %t1136, %t1141
  store i64 %t1144, ptr %l38, !tbaa !24
  %t1146 = load ptr, ptr %l0, !tbaa !29
  %t1147 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1147, ptr %l514, !tbaa !27
  %t1148 = load i64, ptr %l38, !tbaa !24
  %t1150 = getelementptr { i64, ptr }, ptr %l514, i32 0, i32 1
  %t1151 = load ptr, ptr %t1150, !tbaa !27
  %t1152 = getelementptr ptr, ptr %t1151, i64 %t1148
  %t1153 = load ptr, ptr %t1152, !tbaa !39
  %t1155 = getelementptr %"compiler/ast:Param", ptr %t1153, i32 0, i32 1
  %t1156 = load i32, ptr %t1155, !tbaa !23
  %t1157 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1157, ptr %l518, !tbaa !27
  %t1158 = load i64, ptr %l38, !tbaa !24
  %t1160 = getelementptr { i64, ptr }, ptr %l518, i32 0, i32 1
  %t1161 = load ptr, ptr %t1160, !tbaa !27
  %t1162 = getelementptr ptr, ptr %t1161, i64 %t1158
  %t1163 = load ptr, ptr %t1162, !tbaa !39
  %t1165 = getelementptr %"compiler/ast:Param", ptr %t1163, i32 0, i32 0
  %t1166 = load %"compiler/source:Span", ptr %t1165
  %t1167 = load i64, ptr %l38, !tbaa !24
  %t1169 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t1170 = load ptr, ptr %t1169, !tbaa !27
  %t1171 = getelementptr i32, ptr %t1170, i64 %t1167
  %t1172 = load i32, ptr %t1171, !tbaa !33
  %t1173 = load i64, ptr %l38, !tbaa !24
  %t1174 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1174, ptr %l525, !tbaa !27
  %t1175 = load i64, ptr %l38, !tbaa !24
  %t1177 = getelementptr { i64, ptr }, ptr %l525, i32 0, i32 1
  %t1178 = load ptr, ptr %t1177, !tbaa !27
  %t1179 = getelementptr ptr, ptr %t1178, i64 %t1175
  %t1180 = load ptr, ptr %t1179, !tbaa !39
  %t1182 = getelementptr %"compiler/ast:Param", ptr %t1180, i32 0, i32 2
  %t1183 = load ptr, ptr %t1182, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %t1146, i32 %t1156, %"compiler/source:Span" %t1166, i32 %t1172, i64 %t1173, ptr %t1183)
  br label %bb201
bb201:
  %t1190 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1190, ptr %l529, !tbaa !27
  %t1191 = load i64, ptr %l38, !tbaa !24
  %t1193 = getelementptr { i64, ptr }, ptr %l529, i32 0, i32 1
  %t1194 = load ptr, ptr %t1193, !tbaa !27
  %t1195 = getelementptr ptr, ptr %t1194, i64 %t1191
  %t1196 = load ptr, ptr %t1195, !tbaa !39
  %t1198 = getelementptr %"compiler/ast:Param", ptr %t1196, i32 0, i32 2
  %t1199 = load ptr, ptr %t1198, !tbaa !29
  %t1201 = icmp eq ptr %t1199, null
  %t1203 = xor i1 %t1201, true
  br i1 %t1203, label %bb202, label %bb203
bb202:
  %t1205 = load ptr, ptr %l0, !tbaa !29
  %t1206 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1206, ptr %l536, !tbaa !27
  %t1207 = load i64, ptr %l38, !tbaa !24
  %t1209 = getelementptr { i64, ptr }, ptr %l536, i32 0, i32 1
  %t1210 = load ptr, ptr %t1209, !tbaa !27
  %t1211 = getelementptr ptr, ptr %t1210, i64 %t1207
  %t1212 = load ptr, ptr %t1211, !tbaa !39
  %t1213 = load i64, ptr %l38, !tbaa !24
  %t1215 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t1216 = load ptr, ptr %t1215, !tbaa !27
  %t1217 = getelementptr i32, ptr %t1216, i64 %t1213
  %t1218 = load i32, ptr %t1217, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %t1205, ptr %t1212, i32 %t1218)
  br label %bb204
bb203:
  br label %bb205
bb204:
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t1222 = load i64, ptr %l37, !tbaa !24
  %t1224 = add i64 %t1222, 1
  store i64 %t1224, ptr %l37, !tbaa !24
  br label %bb197
bb207:
  %t1226 = load ptr, ptr %l0, !tbaa !29
  %t1228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1226)
  store ptr %t1228, ptr %l544
  br label %bb208
bb208:
  %t1229 = load ptr, ptr %l0, !tbaa !29
  %t1231 = getelementptr %"compiler/check:Checker", ptr %t1229, i32 0, i32 1
  %t1232 = load ptr, ptr %t1231, !tbaa !29
  store ptr %t1232, ptr %l546, !tbaa !29
  %t1233 = load ptr, ptr %l0, !tbaa !29
  %t1235 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1233)
  store ptr %t1235, ptr %l548
  br label %bb209
bb209:
  %t1236 = load ptr, ptr %l548, !tbaa !29
  %t1238 = getelementptr %"compiler/typed:Body", ptr %t1236, i32 0, i32 2
  %t1239 = load i32, ptr %t1238, !tbaa !23
  %t1240 = load ptr, ptr %l546, !tbaa !29
  %t1242 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t1240, i32 %t1239)
  store { i64, ptr } %t1242, ptr %l551
  br label %bb210
bb210:
  %t1243 = load { i64, ptr }, ptr %l551, !tbaa !27
  %t1244 = extractvalue { i64, ptr } %t1243, 0
  %t1245 = extractvalue { i64, ptr } %t1243, 1
  %t1246 = mul i64 %t1244, 8
  %t1247 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1247, ptr %t1245, i64 %t1246, i1 false)
  %t1248 = insertvalue { i64, ptr } undef, i64 %t1244, 0
  %t1249 = insertvalue { i64, ptr } %t1248, ptr %t1247, 1
  %t1250 = load ptr, ptr %l544, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t1250, { i64, ptr } %t1249)
  br label %bb211
bb211:
  %t1252 = load ptr, ptr %l0, !tbaa !29
  %t1253 = load ptr, ptr %l2, !tbaa !29
  %t1255 = getelementptr %"compiler/ast:Func", ptr %t1253, i32 0, i32 4
  %t1256 = load { i64, ptr }, ptr %t1255, !tbaa !27
  %t1259 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v0, ptr %t1252, { i64, ptr } %t1256)
  store ptr %t1259, ptr %l556
  br label %bb212
bb212:
  %t1260 = load ptr, ptr %l556, !tbaa !29
  store ptr %t1260, ptr %l39, !tbaa !29
  %t1261 = load ptr, ptr %l0, !tbaa !29
  %t1263 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1261)
  store ptr %t1263, ptr %l558
  br label %bb213
bb213:
  %t1264 = load ptr, ptr %l558, !tbaa !29
  %t1265 = load ptr, ptr %l39, !tbaa !29
  %t1269 = getelementptr %"compiler/typed:Body", ptr %t1264, i32 0, i32 11
  store ptr %t1265, ptr %t1269, !tbaa !29
  %t1270 = load ptr, ptr %l32, !tbaa !29
  %t1272 = getelementptr %"compiler/check:frame", ptr %t1270, i32 0, i32 25
  %t1273 = load i1, ptr %t1272, !tbaa !21
  br i1 %t1273, label %bb214, label %bb215
bb214:
  %t1275 = load ptr, ptr %l32, !tbaa !29
  %t1277 = getelementptr %"compiler/check:frame", ptr %t1275, i32 0, i32 25
  store i1 false, ptr %t1277, !tbaa !21
  %t1278 = load ptr, ptr %l32, !tbaa !29
  %t1279 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1282 = getelementptr %"compiler/check:frame", ptr %t1278, i32 0, i32 5
  store i32 %t1279, ptr %t1282, !tbaa !23
  br label %bb216
bb215:
  br label %bb216
bb216:
  %t1283 = load ptr, ptr %l32, !tbaa !29
  %t1285 = getelementptr %"compiler/check:frame", ptr %t1283, i32 0, i32 5
  %t1286 = load i32, ptr %t1285, !tbaa !23
  store i32 %t1286, ptr %l17, !tbaa !23
  %t1288 = load i1, ptr %l26, !tbaa !21
  br i1 %t1288, label %bb217, label %bb218
bb217:
  store %olang.scope zeroinitializer, ptr %s31
  %t1290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1290, ptr %l570, !tbaa !29
  %t1291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1291, ptr %l571, !tbaa !29
  %t1292 = load ptr, ptr %l0, !tbaa !29
  %t1293 = load ptr, ptr %l32, !tbaa !29
  %t1296 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v0, ptr %s31, ptr %t1292, ptr %t1293)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1296, ptr %l574
  br label %bb219
bb218:
  br label %bb222
bb219:
  %t1297 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l574
  %t1298 = call ptr @__olang_scope_alloc_a(ptr %s31, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1297, ptr %t1298
  %t1299 = load ptr, ptr %l571, !tbaa !29
  %t1301 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s31, ptr %s31, ptr %t1299, ptr %t1298)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1301, ptr %l576
  br label %bb220
bb220:
  %t1302 = load ptr, ptr %l570, !tbaa !29
  %t1304 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %s31, ptr %t1302, ptr %l576)
  store i32 %t1304, ptr %l578
  br label %bb221
bb221:
  %t1305 = load i32, ptr %l578, !tbaa !23
  store i32 %t1305, ptr %l25, !tbaa !23
  call void @__olang_scope_close(ptr %s31)
  br label %bb222
bb222:
  %t1306 = load ptr, ptr %l0, !tbaa !29
  %t1308 = getelementptr %"compiler/check:Checker", ptr %t1306, i32 0, i32 1
  %t1309 = load ptr, ptr %t1308, !tbaa !29
  %t1311 = getelementptr %"compiler/generic:Program", ptr %t1309, i32 0, i32 2
  %t1312 = load i32, ptr %l28, !tbaa !23
  %t1313 = load i32, ptr %l17, !tbaa !23
  %t1314 = load i32, ptr %l25, !tbaa !23
  %t1315 = load i32, ptr %l27, !tbaa !23
  %t1321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t1311, i32 %t1312, i32 %t1313, i32 %t1314, i32 %t1315, i64 0, i1 false, i32 0, i64 0)
  store i32 %t1321, ptr %l586
  br label %bb223
bb223:
  %t1322 = load i32, ptr %l586, !tbaa !23
  store i32 %t1322, ptr %l40, !tbaa !23
  %t1323 = load ptr, ptr %l0, !tbaa !29
  %t1325 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1323)
  store ptr %t1325, ptr %l588
  br label %bb224
bb224:
  %t1326 = load ptr, ptr %l588, !tbaa !29
  %t1327 = load i32, ptr %l40, !tbaa !23
  %t1330 = getelementptr %"compiler/typed:Body", ptr %t1326, i32 0, i32 2
  store i32 %t1327, ptr %t1330, !tbaa !23
  %t1331 = load i32, ptr %l17, !tbaa !23
  %t1332 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1335 = icmp ne i32 %t1331, %t1332
  br i1 %t1335, label %bb225, label %bb226
bb225:
  %t1337 = load ptr, ptr %l0, !tbaa !29
  %t1339 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1337)
  store ptr %t1339, ptr %l596
  br label %bb227
bb226:
  store i1 false, ptr %l594, !tbaa !21
  br label %bb228
bb227:
  %t1340 = load ptr, ptr %l596, !tbaa !29
  %t1342 = getelementptr %"compiler/check:frame", ptr %t1340, i32 0, i32 18
  %t1343 = load i1, ptr %t1342, !tbaa !21
  %t1345 = xor i1 %t1343, true
  store i1 %t1345, ptr %l594, !tbaa !21
  br label %bb228
bb228:
  %t1347 = load i1, ptr %l594, !tbaa !21
  br i1 %t1347, label %bb229, label %bb230
bb229:
  %t1348 = load ptr, ptr %l39, !tbaa !29
  %t1351 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t1348)
  store i1 %t1351, ptr %l603
  br label %bb231
bb230:
  store i1 false, ptr %l600, !tbaa !21
  br label %bb232
bb231:
  %t1352 = load i1, ptr %l603, !tbaa !21
  %t1353 = xor i1 %t1352, true
  store i1 %t1353, ptr %l600, !tbaa !21
  br label %bb232
bb232:
  %t1355 = load i1, ptr %l600, !tbaa !21
  br i1 %t1355, label %bb233, label %bb234
bb233:
  store %olang.scope zeroinitializer, ptr %s32
  %t1356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1356, ptr %l605, !tbaa !29
  %t1357 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1357, ptr %l606
  %t1358 = load ptr, ptr %l0, !tbaa !29
  %t1359 = load i32, ptr %l17, !tbaa !23
  %t1362 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s32, ptr %t1358, i32 %t1359)
  store { i64, ptr } %t1362, ptr %l609
  br label %bb235
bb234:
  br label %bb238
bb235:
  %t1363 = load { i64, ptr }, ptr %l609, !tbaa !27
  %t1364 = extractvalue { i64, ptr } %t1363, 0
  %t1365 = extractvalue { i64, ptr } %t1363, 1
  %t1366 = mul i64 %t1364, 1
  %t1367 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t1366)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1367, ptr %t1365, i64 %t1366, i1 false)
  %t1368 = insertvalue { i64, ptr } undef, i64 %t1364, 0
  %t1369 = insertvalue { i64, ptr } %t1368, ptr %t1367, 1
  %t1371 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %s32, ptr %v0, { i64, ptr } %t1369)
  store %"compiler/diagmsg:Msg" %t1371, ptr %l611
  br label %bb236
bb236:
  %t1372 = load ptr, ptr %l605, !tbaa !29
  %t1373 = load %"compiler/source:Span", ptr %l606
  %t1374 = load %"compiler/diagmsg:Msg", ptr %l611
  %t1375 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1372, %"compiler/source:Span" %t1373, %"compiler/diagmsg:Msg" %t1374)
  store i64 %t1375, ptr %l612
  br label %bb237
bb237:
  call void @__olang_scope_close(ptr %s32)
  br label %bb238
bb238:
  %t1376 = load ptr, ptr %l0, !tbaa !29
  %t1378 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1376)
  store ptr %t1378, ptr %l614
  br label %bb239
bb239:
  %t1379 = load ptr, ptr %l614, !tbaa !29
  %t1381 = getelementptr %"compiler/check:frame", ptr %t1379, i32 0, i32 30
  %t1383 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v2, ptr %t1381)
  store { i64, ptr } %t1383, ptr %l617
  br label %bb240
bb240:
  %t1384 = load { i64, ptr }, ptr %l617, !tbaa !27
  store { i64, ptr } %t1384, ptr %l41, !tbaa !27
  %t1385 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t1385)
  br label %bb241
bb241:
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1389 = getelementptr %"compiler/check:Checker", ptr %t1387, i32 0, i32 23
  %t1390 = load i64, ptr %l31, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t1389, i64 %t1390, i64 2)
  br label %bb242
bb242:
  %t1393 = load ptr, ptr %l0, !tbaa !29
  %t1395 = getelementptr %"compiler/check:Checker", ptr %t1393, i32 0, i32 93
  store ptr %t1395, ptr %l623, !tbaa !29
  %t1396 = load i64, ptr %l31, !tbaa !24
  store i64 %t1396, ptr %l624, !tbaa !24
  %t1397 = load ptr, ptr %l0, !tbaa !29
  %t1398 = load %"compiler/source:Span", ptr %l1
  %t1401 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t1397, %"compiler/source:Span" %t1398)
  store { i64, [3 x i64] } %t1401, ptr %l627
  br label %bb243
bb243:
  %t1402 = load i64, ptr %l624, !tbaa !24
  %t1403 = load { i64, [3 x i64] }, ptr %l627
  %t1404 = call %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v0, i64 %t1402, i64 0, { i64, [3 x i64] } %t1403, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store %"compiler/check:roFn" %t1404, ptr %l628
  br label %bb244
bb244:
  %t1405 = load ptr, ptr %l623, !tbaa !29
  %t1406 = load %"compiler/check:roFn", ptr %l628
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t1405, %"compiler/check:roFn" %t1406)
  br label %bb245
bb245:
  %t1407 = load i32, ptr %l4, !tbaa !23
  %t1408 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1411 = icmp eq i32 %t1407, %t1408
  br i1 %t1411, label %bb246, label %bb247
bb246:
  %t1413 = load ptr, ptr %l0, !tbaa !29
  %t1415 = getelementptr %"compiler/check:Checker", ptr %t1413, i32 0, i32 1
  %t1416 = load ptr, ptr %t1415, !tbaa !29
  %t1418 = getelementptr %"compiler/generic:Program", ptr %t1416, i32 0, i32 2
  store ptr %t1418, ptr %l635, !tbaa !29
  %t1419 = load i32, ptr %l40, !tbaa !23
  store i32 %t1419, ptr %l636, !tbaa !23
  %t1420 = load ptr, ptr %l0, !tbaa !29
  %t1422 = getelementptr %"compiler/check:Checker", ptr %t1420, i32 0, i32 1
  %t1423 = load ptr, ptr %t1422, !tbaa !29
  %t1424 = load ptr, ptr %l2, !tbaa !29
  %t1426 = getelementptr %"compiler/ast:Func", ptr %t1424, i32 0, i32 3
  %t1427 = load ptr, ptr %t1426, !tbaa !29
  %t1430 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %t1423, ptr %t1427)
  store i64 %t1430, ptr %l641
  br label %bb248
bb247:
  %t1431 = load ptr, ptr %l0, !tbaa !29
  %t1433 = getelementptr %"compiler/check:Checker", ptr %t1431, i32 0, i32 1
  %t1434 = load ptr, ptr %t1433, !tbaa !29
  %t1436 = getelementptr %"compiler/generic:Program", ptr %t1434, i32 0, i32 2
  store ptr %t1436, ptr %l645, !tbaa !29
  %t1437 = load i32, ptr %l40, !tbaa !23
  store i32 %t1437, ptr %l646, !tbaa !23
  %t1438 = load ptr, ptr %l0, !tbaa !29
  %t1440 = getelementptr %"compiler/check:Checker", ptr %t1438, i32 0, i32 1
  %t1441 = load ptr, ptr %t1440, !tbaa !29
  %t1443 = getelementptr %"compiler/generic:Program", ptr %t1441, i32 0, i32 2
  %t1444 = load i32, ptr %l4, !tbaa !23
  %t1447 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t1443, i32 %t1444)
  store i64 %t1447, ptr %l651
  br label %bb250
bb248:
  %t1448 = load ptr, ptr %l635, !tbaa !29
  %t1449 = load i32, ptr %l636, !tbaa !23
  %t1450 = load i64, ptr %l641, !tbaa !24
  %t1451 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t1448, i32 %t1449, i64 %t1450)
  store i32 %t1451, ptr %l642
  br label %bb249
bb249:
  %t1452 = load i32, ptr %l642, !tbaa !23
  store i32 %t1452, ptr %l632, !tbaa !23
  br label %bb252
bb250:
  %t1453 = load ptr, ptr %l645, !tbaa !29
  %t1454 = load i32, ptr %l646, !tbaa !23
  %t1455 = load i64, ptr %l651, !tbaa !24
  %t1456 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t1453, i32 %t1454, i64 %t1455)
  store i32 %t1456, ptr %l652
  br label %bb251
bb251:
  %t1457 = load i32, ptr %l652, !tbaa !23
  store i32 %t1457, ptr %l632, !tbaa !23
  br label %bb252
bb252:
  %t1458 = load i32, ptr %l632, !tbaa !23
  %t1459 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1459, ptr %l653
  store i32 %t1458, ptr %l654, !tbaa !23
  %t1461 = load i64, ptr %l31, !tbaa !24
  %t1463 = trunc i64 %t1461 to i32
  store i32 %t1463, ptr %l657, !tbaa !23
  %t1465 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t1465, ptr %l658, !tbaa !27
  %t1466 = load ptr, ptr %l0, !tbaa !29
  %t1467 = load %"compiler/source:Span", ptr %l1
  %t1471 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t1466, i32 5, %"compiler/source:Span" %t1467)
  store i32 %t1471, ptr %l662
  br label %bb253
bb253:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1472
  %t1473 = getelementptr { i64, [4 x i64] }, ptr %t1472, i32 0, i32 0
  store i64 1, ptr %t1473
  %t1474 = load i32, ptr %l657, !tbaa !23
  %t1475 = insertvalue { i32, { i64, ptr }, i32 } undef, i32 %t1474, 0
  %t1476 = load { i64, ptr }, ptr %l658, !tbaa !27
  %t1477 = insertvalue { i32, { i64, ptr }, i32 } %t1475, { i64, ptr } %t1476, 1
  %t1478 = load i32, ptr %l662, !tbaa !23
  %t1479 = insertvalue { i32, { i64, ptr }, i32 } %t1477, i32 %t1478, 2
  %t1480 = getelementptr { i64, [4 x i64] }, ptr %t1472, i32 0, i32 1
  store { i32, { i64, ptr }, i32 } %t1479, ptr %t1480
  %t1481 = load { i64, [4 x i64] }, ptr %t1472
  %t1483 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t1481, ptr %t1483
  store { i64, [5 x i64] } zeroinitializer, ptr %t1484
  %t1485 = getelementptr { i64, [5 x i64] }, ptr %t1484, i32 0, i32 0
  store i64 15, ptr %t1485
  %t1486 = load %"compiler/source:Span", ptr %l653
  %t1487 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1486, 0
  %t1488 = load i32, ptr %l654, !tbaa !23
  %t1489 = insertvalue { %"compiler/source:Span", i32, ptr } %t1487, i32 %t1488, 1
  %t1491 = insertvalue { %"compiler/source:Span", i32, ptr } %t1489, ptr %t1483, 2
  %t1492 = getelementptr { i64, [5 x i64] }, ptr %t1484, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1491, ptr %t1492
  %t1493 = load { i64, [5 x i64] }, ptr %t1484
  %t1495 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1493, ptr %t1495
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1495, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambdaArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %l16 = alloca ptr
  %l19 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i32
  %l27 = alloca i32
  %l33 = alloca i32
  %l36 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l47 = alloca ptr
  %l52 = alloca i32
  %l55 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i32
  %l61 = alloca i32
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t2)
  store %"compiler/source:Span" %t4, ptr %l9
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2elambdaOf(ptr %v1, ptr %v1, ptr %t5)
  store ptr %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l11, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_b298090b1e9ffaa3_6aaa9277d25cb0b7)
  unreachable
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l9
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v3, ptr %t15, %"compiler/source:Span" %t16, ptr %t13, i32 %a3)
  store ptr %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  store ptr %t20, ptr %l6, !tbaa !29
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t24 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t21)
  store i32 %t24, ptr %l19
  br label %bb7
bb7:
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t26 = load i32, ptr %l19, !tbaa !23
  %t28 = icmp eq i32 %t26, %t25
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l6, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l23, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  store i32 %t33, ptr %l24, !tbaa !23
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t37 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t34)
  store i32 %t37, ptr %l27
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i32, ptr %l24, !tbaa !23
  %t41 = load i32, ptr %l27, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v2, ptr %t39, i32 %t40, i32 %t41, ptr %t38)
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l33
  br label %bb13
bb13:
  %t53 = load i32, ptr %l33, !range !{i32 0, i32 33}
  %t55 = trunc i64 21 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  store ptr %t63, ptr %l39, !tbaa !29
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t64)
  store i32 %t67, ptr %l42
  br label %bb16
bb15:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb18
bb16:
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = load i32, ptr %l42, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l43
  br label %bb17
bb17:
  %t71 = load i32, ptr %l43, !range !{i32 0, i32 33}
  %t73 = trunc i64 21 to i32
  %t74 = icmp eq i32 %t71, %t73
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb19, label %bb20
bb19:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l47, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  %t87 = load i32, ptr %l2, !tbaa !23
  %t90 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t86, i32 %t87)
  store i32 %t90, ptr %l52
  br label %bb21
bb20:
  br label %bb28
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  store ptr %t96, ptr %l55, !tbaa !29
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t97)
  store i32 %t100, ptr %l58
  br label %bb22
bb22:
  %t101 = load ptr, ptr %l55, !tbaa !29
  %t102 = load i32, ptr %l58, !tbaa !23
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t103, ptr %l59
  br label %bb23
bb23:
  %t104 = load ptr, ptr %l4, !tbaa !29
  %t105 = load ptr, ptr %l47, !tbaa !29
  %t106 = load i32, ptr %l52, !tbaa !23
  %t107 = load i32, ptr %l59, !tbaa !23
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyErrors(ptr %v0, ptr %v2, ptr %t105, i32 %t106, i32 %t107, ptr %t104)
  store i32 %t109, ptr %l61
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb25, label %ok.111, !prof !99
ok.111:
  br label %bb24
bb24:
  br label %bb27
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l6, !tbaa !29
  store ptr %t112, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambdaErrs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca ptr
  %l51 = alloca i32
  %l57 = alloca i32
  %l58 = alloca i32
  %l64 = alloca i32
  %l65 = alloca i32
  %l68 = alloca ptr
  %l69 = alloca i32
  %l74 = alloca i32
  %l79 = alloca i32
  %l80 = alloca i32
  %l85 = alloca i32
  %l90 = alloca i64
  %l91 = alloca i32
  %rv = alloca ptr
  %t193 = alloca { i64, [5 x i64] }, align 8
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t8 = load ptr, ptr %l12, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 18}
  %t14 = icmp eq i64 %t12, 15
  store i1 %t14, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l13, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l3
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l5, !tbaa !29
  br label %bb8
bb7:
  br label %bb33
bb8:
  %t34 = load ptr, ptr %l5, !tbaa !29
  store ptr %t34, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 3}
  %t41 = icmp eq i64 %t39, 1
  store i1 %t41, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l23, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t45, i32 0, i32 0
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l6, !tbaa !23
  br label %bb13
bb12:
  br label %bb28
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l4, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l32
  br label %bb14
bb14:
  %t59 = load i32, ptr %l2, !tbaa !23
  %t60 = load i32, ptr %l32, !tbaa !23
  %t62 = icmp eq i32 %t60, %t59
  br i1 %t62, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 18
  %t70 = load i32, ptr %l6, !tbaa !23
  %t72 = sext i32 %t70 to i64
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t69, i64 %t72)
  store ptr %t75, ptr %l41
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l41, !tbaa !29
  store ptr %t76, ptr %l7, !tbaa !29
  %t77 = load ptr, ptr %l7, !tbaa !29
  store ptr %t77, ptr %l42, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  store ptr %t83, ptr %l45, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Body", ptr %t90, i32 0, i32 2
  %t93 = load i32, ptr %t92, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t89, i32 %t93)
  store i32 %t96, ptr %l51
  br label %bb19
bb19:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Body", ptr %t103, i32 0, i32 2
  %t106 = load i32, ptr %t105, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t102, i32 %t106)
  store i32 %t109, ptr %l57
  br label %bb20
bb20:
  %t110 = load i32, ptr %l2, !tbaa !23
  store i32 %t110, ptr %l58, !tbaa !23
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load ptr, ptr %l7, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Body", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %t119, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t116, i32 %t120)
  store i32 %t123, ptr %l64
  br label %bb21
bb21:
  %t124 = load ptr, ptr %l45, !tbaa !29
  %t125 = load i32, ptr %l51, !tbaa !23
  %t126 = load i32, ptr %l57, !tbaa !23
  %t127 = load i32, ptr %l58, !tbaa !23
  %t128 = load i32, ptr %l64, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t124, i32 %t125, i32 %t126, i32 %t127, i32 %t128, i64 0, i1 false, i32 0, i64 0)
  store i32 %t129, ptr %l65
  br label %bb22
bb22:
  %t130 = load i32, ptr %l65, !tbaa !23
  %t131 = load ptr, ptr %l42, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Body", ptr %t131, i32 0, i32 2
  store i32 %t130, ptr %t132, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  store ptr %t138, ptr %l68, !tbaa !29
  %t139 = load i32, ptr %l4, !tbaa !23
  store i32 %t139, ptr %l69, !tbaa !23
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l4, !tbaa !23
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t145, i32 %t146)
  store i32 %t149, ptr %l74
  br label %bb23
bb23:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l4, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l79
  br label %bb24
bb24:
  %t160 = load i32, ptr %l2, !tbaa !23
  store i32 %t160, ptr %l80, !tbaa !23
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  %t167 = load i32, ptr %l4, !tbaa !23
  %t170 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t170, ptr %l85
  br label %bb25
bb25:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l4, !tbaa !23
  %t180 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t176, i32 %t177)
  store i64 %t180, ptr %l90
  br label %bb26
bb26:
  %t181 = load ptr, ptr %l68, !tbaa !29
  %t182 = load i32, ptr %l69, !tbaa !23
  %t183 = load i32, ptr %l74, !tbaa !23
  %t184 = load i32, ptr %l79, !tbaa !23
  %t185 = load i32, ptr %l80, !tbaa !23
  %t186 = load i32, ptr %l85, !tbaa !23
  %t187 = load i64, ptr %l90, !tbaa !24
  %t188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t181, i32 %t182, i32 %t183, i32 %t184, i32 %t185, i32 %t186, i64 %t187)
  store i32 %t188, ptr %l91
  br label %bb27
bb27:
  %t189 = load i32, ptr %l91, !tbaa !23
  %t190 = load %"compiler/source:Span", ptr %l3
  %t192 = load ptr, ptr %l5, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t193
  %t194 = getelementptr { i64, [5 x i64] }, ptr %t193, i32 0, i32 0
  store i64 15, ptr %t194
  %t196 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t190, 0
  %t198 = insertvalue { %"compiler/source:Span", i32, ptr } %t196, i32 %t189, 1
  %t200 = insertvalue { %"compiler/source:Span", i32, ptr } %t198, ptr %t192, 2
  %t201 = getelementptr { i64, [5 x i64] }, ptr %t193, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t200, ptr %t201
  %t202 = load { i64, [5 x i64] }, ptr %t193
  %t204 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t202, ptr %t204
  store ptr %t204, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t206 = load ptr, ptr %l1, !tbaa !29
  store ptr %t206, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_24473ecab934ff5a_e5063e673d38f936)
  unreachable
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_1dc6773449e59e5b_c7fcef2f52138cd7)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 46
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2ePush_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %t3, %"compiler/check:laneNode" %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 46
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/check:reflList"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l15 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i64
  %l32 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/check:reflList" %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t3 = load %"compiler/check:reflList", ptr %l2
  %t7 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %s0, ptr %t1, %"compiler/source:Span" %t2, %"compiler/check:reflList" %t3)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t28 = icmp sge i64 %t22, %t25
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t32, ptr %l21
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexRange(ptr %v0, i64 %t33, i64 %t36)
  store %"compiler/diagmsg:Msg" %t39, ptr %l25
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l21
  %t42 = load %"compiler/diagmsg:Msg", ptr %l25
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t40, %"compiler/source:Span" %t41, %"compiler/diagmsg:Msg" %t42)
  store i64 %t43, ptr %l26
  br label %bb11
bb11:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t44, ptr %rv
  br label %ret
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load %"compiler/check:reflList", ptr %l2
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i64, ptr %t51, i64 %t48
  %t53 = load i64, ptr %t52, !tbaa !34
  %t57 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %t46, %"compiler/check:reflList" %t47, i64 %t53)
  store i32 %t57, ptr %l32
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load i32, ptr %l32, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:litv"
  %l3 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i1
  %l19 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i32
  %l32 = alloca double
  %l33 = alloca i1
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/check:litv" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i1, ptr %l11, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 1
  %t22 = load i1, ptr %t21, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t33, ptr %l19
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t34 = load i1, ptr %l19, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t35 = load i32, ptr %l3, !tbaa !23
  %t36 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 4
  %t37 = load double, ptr %t36, !tbaa !26
  %t40 = call i1 @compiler_2fcheck_2efloatOverflows(i32 %t35, double %t37)
  store i1 %t40, ptr %l23
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb11:
  %t41 = load i1, ptr %l23, !tbaa !21
  %t42 = xor i1 %t41, true
  store i1 %t42, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t44 = load i1, ptr %l20, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
bb13:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l3, !tbaa !23
  %t54 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l29
  br label %bb14
bb14:
  %t55 = load i1, ptr %l29, !tbaa !21
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t56 = load i32, ptr %l3, !tbaa !23
  store i32 %t56, ptr %l30, !tbaa !23
  %t57 = load %"compiler/check:litv", ptr %l1
  %t59 = call double @compiler_2fcheck_2elitF64(%"compiler/check:litv" %t57)
  store double %t59, ptr %l32
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t60 = load i32, ptr %l30, !tbaa !23
  %t61 = load double, ptr %l32, !tbaa !26
  %t62 = call i1 @compiler_2fcheck_2efloatOverflows(i32 %t60, double %t61)
  store i1 %t62, ptr %l33
  br label %bb18
bb18:
  %t63 = load i1, ptr %l33, !tbaa !21
  %t64 = xor i1 %t63, true
  store i1 %t64, ptr %rv
  br label %ret
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load %"compiler/check:litv", ptr %l1
  %t73 = load i32, ptr %l3, !tbaa !23
  %t77 = call i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %t71, %"compiler/check:litv" %t72, i32 %t73)
  store i1 %t77, ptr %l40
  br label %bb20
bb20:
  %t78 = load i1, ptr %l40, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrow(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca %"compiler/typed:Local"
  %l26 = alloca i32
  %t11 = alloca { i64, [4 x i64] }, align 8
  %t53 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l6
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l2, !tbaa !24
  %t6 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t2, i64 %t3)
  store i32 %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = trunc i64 %t7 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 0
  store i64 0, ptr %t12
  %t13 = load %"compiler/source:Span", ptr %l6
  %t14 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t13, 0
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = insertvalue { %"compiler/source:Span", i32, i32 } %t14, i32 %t15, 1
  %t18 = insertvalue { %"compiler/source:Span", i32, i32 } %t16, i32 %t9, 2
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t18, ptr %t19
  %t20 = load { i64, [4 x i64] }, ptr %t11
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t20, ptr %t22
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l15, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l16
  store ptr %t22, ptr %l17, !tbaa !29
  %t27 = ptrtoint ptr %v0 to i64
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3anarrowed_2e5
  br i1 %t28, label %bb2, label %bb3
bb2:
  %t30 = call ptr @__olang_region_make(ptr %v0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l21
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l21, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 7
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t37, i64 %t38)
  store %"compiler/typed:Local" %t41, ptr %l25
  br label %bb5
bb5:
  %t42 = getelementptr %"compiler/typed:Local", ptr %l25, i32 0, i32 0
  %t43 = load i32, ptr %t42, !tbaa !23
  store i32 %t43, ptr %l26, !tbaa !23
  %t44 = icmp sge i64 1, 0
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = icmp sle i64 1, 2305843009213693951
  br i1 %t46, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_da08e6a1bfd31b51_4c78ede106fe65fd)
  unreachable
bb8:
  %t48 = mul i64 1, 4
  %t49 = load i64, ptr %l18
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = call ptr @__olang_scope_alloc(ptr %t50, i64 %t48)
  %t52 = load i32, ptr %l26, !tbaa !23
  store i64 0, ptr %t53
  br label %fill.54
fill.54:
  %t57 = load i64, ptr %t53
  %t58 = icmp slt i64 %t57, 1
  br i1 %t58, label %fillb.55, label %filld.56
fillb.55:
  %t59 = getelementptr i32, ptr %t51, i64 %t57
  store i32 %t52, ptr %t59
  %t60 = add i64 %t57, 1
  store i64 %t60, ptr %t53
  br label %fill.54
filld.56:
  %t61 = insertvalue { i64, ptr } undef, i64 1, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t51, 1
  %t63 = load i64, ptr %l2, !tbaa !24
  %t66 = load ptr, ptr %l15, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l16
  %t68 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowAt(ptr %v0, ptr %v0, ptr %v0, ptr %t66, %"compiler/source:Span" %t67, ptr %t68, { i64, ptr } %t62, i64 %t63, i64 %a3, i64 %a4)
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_da08e6a1bfd31b51_4c78ede106fe65fd)
  unreachable
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l19 = alloca i1
  %l22 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i32
  %l43 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca i32
  %l48 = alloca i64
  %l54 = alloca ptr
  %l57 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l67 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %l121 = alloca ptr
  %l125 = alloca ptr
  %l129 = alloca i64
  %l130 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca i64
  %l145 = alloca { i64, [3 x i64] }
  %l149 = alloca { i64, ptr }
  %l151 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t311 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a5, ptr %l5
  store i1 %a6, ptr %l6
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
  store i1 true, ptr %l19, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l22
  br label %bb3
bb3:
  %t12 = load i1, ptr %l22, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l19, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l19, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l26, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  store i32 %t21, ptr %l27, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/load:Loader", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t31, { i64, ptr } %t32)
  store i32 %t35, ptr %l33
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l26, !tbaa !29
  %t37 = load i32, ptr %l27, !tbaa !23
  %t38 = load i32, ptr %l33, !tbaa !23
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t36, i32 %t37, i32 %t38)
  store i64 %t39, ptr %l34
  br label %bb9
bb9:
  %t40 = load i64, ptr %l34, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  %t49 = load i32, ptr %l1, !tbaa !23
  store i32 %t49, ptr %l39, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l43, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = call { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v1, ptr %s2, { i64, ptr } %t60)
  store { i64, ptr } %t62, ptr %l45
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t63 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t70 = load ptr, ptr %l43, !tbaa !29
  %t72 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s2, ptr %t70, { i64, ptr } %t69)
  store i32 %t72, ptr %l47
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = load i32, ptr %l39, !tbaa !23
  %t75 = load i32, ptr %l47, !tbaa !23
  %t76 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t73, i32 %t74, i32 %t75)
  store i64 %t76, ptr %l48
  br label %bb14
bb14:
  %t77 = load i64, ptr %l48, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp slt i64 %t78, 0
  br i1 %t80, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l54, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  store ptr %t94, ptr %l57, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load i64, ptr %l7, !tbaa !24
  %t102 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t98, i64 %t99)
  store i32 %t102, ptr %l61
  br label %bb19
bb19:
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = load i32, ptr %l61, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t105, ptr %l62
  br label %bb20
bb20:
  %t106 = load ptr, ptr %l54, !tbaa !29
  %t107 = load i32, ptr %l62, !tbaa !23
  %t108 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t106, i32 %t107)
  store { i64, ptr } %t108, ptr %l63
  br label %bb21
bb21:
  %t109 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  %t112 = sub i64 %t110, 1
  store i64 %t112, ptr %l8, !tbaa !24
  %t114 = load i1, ptr %l6, !tbaa !21
  br i1 %t114, label %bb22, label %bb23
bb22:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l5, !tbaa !24
  %t120 = icmp sge i64 %t116, %t117
  store i1 %t120, ptr %l67, !tbaa !21
  br label %bb24
bb23:
  %t122 = load i64, ptr %l8, !tbaa !24
  %t123 = load i64, ptr %l5, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  store i1 %t126, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t128 = load i1, ptr %l67, !tbaa !21
  br i1 %t128, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t130 = load i64, ptr %l8, !tbaa !24
  %t132 = icmp eq i64 %t130, 0
  br i1 %t132, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb33
bb29:
  %t134 = load i64, ptr %l8, !tbaa !24
  %t136 = icmp eq i64 %t134, 1
  br i1 %t136, label %bb30, label %bb31
bb30:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb32
bb31:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t140 = call i64 @__olang_fmt_i64(ptr null, i64 %t138)
  %t141 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t143)
  %t145 = call i64 @__olang_fmt_i64(ptr %t144, i64 %t138)
  %t146 = getelementptr i8, ptr %t144, i64 %t140
  call void @olang_textcopy(ptr %t146, ptr %t141, i64 %t142)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t144, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = extractvalue { i64, ptr } %t148, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l80, !tbaa !27
  br label %bb32
bb32:
  %t157 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t157, ptr %l77, !tbaa !27
  br label %bb33
bb33:
  %t158 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t158, ptr %l9, !tbaa !27
  %t159 = load i64, ptr %l5, !tbaa !24
  %t161 = icmp eq i64 %t159, 1
  br i1 %t161, label %bb34, label %bb35
bb34:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb36
bb35:
  %t163 = load i64, ptr %l5, !tbaa !24
  %t165 = call i64 @__olang_fmt_i64(ptr null, i64 %t163)
  %t166 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t165)
  %t167 = call i64 @__olang_fmt_i64(ptr %t166, i64 %t163)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = extractvalue { i64, ptr } %t169, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l86, !tbaa !27
  br label %bb36
bb36:
  %t178 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t178, ptr %l10, !tbaa !27
  %t179 = load i64, ptr %l5, !tbaa !24
  %t181 = icmp eq i64 %t179, 0
  br i1 %t181, label %bb37, label %bb38
bb37:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb42
bb38:
  %t183 = load i1, ptr %l6, !tbaa !21
  br i1 %t183, label %bb39, label %bb40
bb39:
  %t185 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t186 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t189 = extractvalue { i64, ptr } %t185, 1
  %t190 = extractvalue { i64, ptr } %t185, 0
  %t191 = add i64 %t187, %t190
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @olang_textcopy(ptr %t192, ptr %t186, i64 %t187)
  %t193 = getelementptr i8, ptr %t192, i64 %t187
  call void @olang_textcopy(ptr %t193, ptr %t189, i64 %t190)
  %t194 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t192, 1
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = extractvalue { i64, ptr } %t195, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l94, !tbaa !27
  br label %bb41
bb40:
  %t204 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t204, ptr %l94, !tbaa !27
  br label %bb41
bb41:
  %t206 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t206, ptr %l92, !tbaa !27
  br label %bb42
bb42:
  %t207 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t207, ptr %l11, !tbaa !27
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l99, !tbaa !29
  store %"compiler/source:Span" %a3, ptr %l100
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load i32, ptr %l1, !tbaa !23
  %t214 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t210, i32 %t211)
  store { i64, ptr } %t214, ptr %l103
  br label %bb43
bb43:
  %t215 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  %t217 = extractvalue { i64, ptr } %t215, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  store { i64, ptr } %t221, ptr %l104, !tbaa !27
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l105, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/check:Checker", ptr %t223, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t227 = load i64, ptr %l7, !tbaa !24
  %t230 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t226, i64 %t227)
  store ptr %t230, ptr %l109
  br label %bb44
bb44:
  %t231 = load ptr, ptr %l109, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Func", ptr %t231, i32 0, i32 2
  %t234 = load i32, ptr %t233, !tbaa !23
  %t235 = load ptr, ptr %l105, !tbaa !29
  %t237 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t235, i32 %t234)
  store { i64, ptr } %t237, ptr %l112
  br label %bb45
bb45:
  %t238 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t241 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t246 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotTheOperator(ptr %s0, ptr %v0, ptr %s0, ptr %v2, ptr %s0, ptr %v0, { i64, ptr } %t241, { i64, ptr } %t242, { i64, ptr } %t238, { i64, ptr } %a4, { i64, ptr } %t240)
  store %"compiler/diagmsg:Msg" %t246, ptr %l116
  br label %bb46
bb46:
  %t247 = load ptr, ptr %l99, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l100
  %t249 = load %"compiler/diagmsg:Msg", ptr %l116
  %t250 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t247, %"compiler/source:Span" %t248, %"compiler/diagmsg:Msg" %t249)
  store i64 %t250, ptr %l117
  br label %bb47
bb47:
  %t251 = load i64, ptr %l117, !tbaa !24
  store i64 %t251, ptr %l12, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load i64, ptr %l7, !tbaa !24
  %t259 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t255, i64 %t256)
  store ptr %t259, ptr %l121
  br label %bb48
bb48:
  %t260 = load ptr, ptr %l121, !tbaa !29
  store ptr %t260, ptr %l13, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 0
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t269 = getelementptr %"compiler/load:Loader", ptr %t267, i32 0, i32 10
  store ptr %t269, ptr %l125, !tbaa !29
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/check:Checker", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t274 = load i64, ptr %l7, !tbaa !24
  %t277 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t273, i64 %t274)
  store i64 %t277, ptr %l129
  br label %bb49
bb49:
  %t278 = load ptr, ptr %l125, !tbaa !29
  %t279 = load i64, ptr %l129, !tbaa !24
  %t280 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t278, i64 %t279)
  store ptr %t280, ptr %l130
  br label %bb50
bb50:
  %t281 = load ptr, ptr %l130, !tbaa !29
  %t283 = getelementptr %"compiler/load:Module", ptr %t281, i32 0, i32 4
  %t284 = load i64, ptr %t283, !tbaa !24
  %t286 = load ptr, ptr %l13, !tbaa !29
  %t288 = getelementptr %"compiler/ast:Func", ptr %t286, i32 0, i32 0
  %t289 = load %"compiler/source:Span", ptr %t288
  store %"compiler/source:Span" %t289, ptr %l15
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 0
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = getelementptr %"compiler/load:Loader", ptr %t297, i32 0, i32 4
  %t300 = load ptr, ptr %t299, !tbaa !29
  store ptr %t300, ptr %l138, !tbaa !29
  %t301 = load i64, ptr %l12, !tbaa !24
  store i64 %t301, ptr %l139, !tbaa !24
  %t303 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 0
  %t304 = load i32, ptr %t303, !tbaa !23
  %t306 = sext i32 %t304 to i64
  %t307 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 1
  %t308 = load i32, ptr %t307, !tbaa !23
  %t310 = sext i32 %t308 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t311
  %t312 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 0
  store i64 3, ptr %t312
  %t314 = insertvalue { i64, i64, i64 } undef, i64 %t284, 0
  %t316 = insertvalue { i64, i64, i64 } %t314, i64 %t306, 1
  %t318 = insertvalue { i64, i64, i64 } %t316, i64 %t310, 2
  %t319 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 1
  store { i64, i64, i64 } %t318, ptr %t319
  %t320 = load { i64, [3 x i64] }, ptr %t311
  store { i64, [3 x i64] } %t320, ptr %l145
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load ptr, ptr %l13, !tbaa !29
  %t324 = getelementptr %"compiler/ast:Func", ptr %t322, i32 0, i32 2
  %t325 = load i32, ptr %t324, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s0, ptr %t321, i32 %t325)
  store { i64, ptr } %t328, ptr %l149
  br label %bb51
bb51:
  %t329 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  %t331 = extractvalue { i64, ptr } %t329, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  %t337 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s0, ptr %v0, { i64, ptr } %t335)
  store %"compiler/diagmsg:Msg" %t337, ptr %l151
  br label %bb52
bb52:
  %t338 = load ptr, ptr %l138, !tbaa !29
  %t339 = load i64, ptr %l139, !tbaa !24
  %t340 = load { i64, [3 x i64] }, ptr %l145
  %t341 = load %"compiler/diagmsg:Msg", ptr %l151
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t338, i64 %t339, { i64, [3 x i64] } %t340, %"compiler/diagmsg:Msg" %t341)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopCheck(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i32
  %l6 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i32
  %rv = alloca i32
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t3 = trunc i64 6 to i32
  %t4 = icmp eq i32 %t1, %t3
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t10 = trunc i64 7 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t18 = trunc i64 8 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t26 = trunc i64 9 to i32
  %t27 = icmp eq i32 %t24, %t26
  %t29 = xor i1 %t27, true
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l14, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i32 0, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a2)
  store i1 %t37, ptr %l21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  store i32 3, ptr %l22
  br label %bb16
bb15:
  store i32 0, ptr %l22
  br label %bb16
bb16:
  %t41 = load i32, ptr %l22, !range !{i32 0, i32 4}
  store i32 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCompr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca %"compiler/check:litBuilder"
  %l12 = alloca ptr
  %l15 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca i32
  %l56 = alloca %"compiler/check:litBuilder"
  %l61 = alloca ptr
  %l68 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprArray(ptr %v0, ptr %v1, ptr %v2, ptr %t1, %"compiler/source:Span" %t2, ptr %t3, i32 %t4)
  store ptr %t9, ptr %l12
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l12, !tbaa !29
  store ptr %t10, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Compr", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = call i1 @compiler_2fcheck_2eisEntry(ptr %v1, ptr %t14)
  store i1 %t16, ptr %l15
  br label %bb2
bb2:
  %t17 = load i1, ptr %l15, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb4:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t23 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t20)
  store i32 %t23, ptr %l20
  br label %bb5
bb5:
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t25 = load i32, ptr %l20, !tbaa !23
  %t27 = icmp eq i32 %t25, %t24
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l26, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t38)
  store i32 %t41, ptr %l29
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t43 = load i32, ptr %l29, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t44, ptr %l30
  br label %bb11
bb11:
  %t45 = load i32, ptr %l30, !tbaa !23
  store i32 %t45, ptr %l4, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l4, !tbaa !23
  %t50 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEntryType(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l33
  br label %bb12
bb12:
  %t51 = load i1, ptr %l33, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t54, %"compiler/source:Span" %t55)
  store ptr %t58, ptr %l37
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t59 = load ptr, ptr %l37, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  store ptr %t65, ptr %l40, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l4, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l45
  br label %bb17
bb17:
  %t76 = load ptr, ptr %l40, !tbaa !29
  %t77 = load i32, ptr %l45, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t76, i32 %t77)
  store { i64, ptr } %t78, ptr %l46
  br label %bb18
bb18:
  %t79 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t79, ptr %l5, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t81, ptr %l48, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 0
  %t85 = load i32, ptr %t84, !tbaa !33
  %t86 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t86, ptr %l50, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i32, ptr %t88, i64 1
  %t90 = load i32, ptr %t89, !tbaa !33
  %t94 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emapOf(ptr %v0, ptr %t80, i32 %t85, i32 %t90)
  store i32 %t94, ptr %l52
  br label %bb19
bb19:
  %t95 = load i32, ptr %l52, !tbaa !23
  store i32 %t95, ptr %l6, !tbaa !23
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l1
  %t98 = load i32, ptr %l6, !tbaa !23
  %t102 = call %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %t96, %"compiler/source:Span" %t97, i32 %t98)
  store %"compiler/check:litBuilder" %t102, ptr %l56
  br label %bb20
bb20:
  %t103 = load %"compiler/check:litBuilder", ptr %l56
  store %"compiler/check:litBuilder" %t103, ptr %l7
  %t104 = getelementptr %"compiler/check:litBuilder", ptr %l7, i32 0, i32 0
  %t105 = load i64, ptr %t104, !tbaa !24
  %t107 = icmp slt i64 %t105, 0
  br i1 %t107, label %bb21, label %bb22
bb21:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load %"compiler/source:Span", ptr %l1
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t109, %"compiler/source:Span" %t110)
  store ptr %t113, ptr %l61
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t114 = load ptr, ptr %l61, !tbaa !29
  store ptr %t114, ptr %rv
  br label %ret
bb24:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  %t117 = load %"compiler/source:Span", ptr %l1
  %t118 = load %"compiler/check:litBuilder", ptr %l7
  %t119 = load i32, ptr %l6, !tbaa !23
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v2, ptr %v2, ptr %t115, %"compiler/source:Span" %t116, %"compiler/source:Span" %t117, %"compiler/check:litBuilder" %t118, i32 %t119, ptr %t120)
  store ptr %t127, ptr %l68
  br label %bb25
bb25:
  %t128 = load ptr, ptr %l68, !tbaa !29
  store ptr %t128, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceHere(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %lp14 = alloca ptr
  %lp15 = alloca ptr
  %l17 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i64
  %l33 = alloca ptr
  %l35 = alloca i32
  %l39 = alloca i32
  %l45 = alloca ptr
  %l47 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l77 = alloca { i64, ptr }
  %l84 = alloca %"compiler/source:Span"
  %l87 = alloca ptr
  %l89 = alloca i32
  %l91 = alloca i32
  %l93 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l104 = alloca i32
  %l108 = alloca i64
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l113 = alloca i32
  %l117 = alloca i64
  %l118 = alloca ptr
  %l122 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca i32
  %l135 = alloca ptr
  %l141 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t173 = alloca { i64, [2 x i64] }, align 8
  %t181 = alloca { i64, [5 x i64] }, align 8
  %t262 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t7, ptr %l22
  br label %bb2
bb2:
  %t8 = load i1, ptr %l22, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l24, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t12, ptr %l25
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t13, i32 %t14)
  store { i64, ptr } %t17, ptr %l28
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t18 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t19 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlaceMember(ptr %v0, ptr %v0, { i64, ptr } %t18)
  store %"compiler/diagmsg:Msg" %t19, ptr %l29
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l24, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l25
  %t22 = load %"compiler/diagmsg:Msg", ptr %l29
  %t23 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t20, %"compiler/source:Span" %t21, %"compiler/diagmsg:Msg" %t22)
  store i64 %t23, ptr %l30
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t24, %"compiler/source:Span" %t25)
  store ptr %t28, ptr %l33
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load ptr, ptr %l33, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %t30)
  store i32 %t32, ptr %l35
  br label %bb10
bb10:
  %t33 = load i32, ptr %l35, !tbaa !23
  store i32 %t33, ptr %l4, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i32, ptr %l4, !tbaa !23
  %t41 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l39
  br label %bb11
bb11:
  %t42 = load i32, ptr %l39, !tbaa !23
  store i32 %t42, ptr %l5, !tbaa !23
  %t43 = load i32, ptr %l5, !tbaa !23
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t47 = icmp eq i32 %t43, %t44
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l1
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t49, %"compiler/source:Span" %t50)
  store ptr %t53, ptr %l45
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load ptr, ptr %l45, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t55)
  store ptr %t57, ptr %l47
  br label %bb16
bb16:
  %t58 = load ptr, ptr %l47, !tbaa !29
  %t60 = getelementptr %"compiler/check:frame", ptr %t58, i32 0, i32 2
  %t61 = load i64, ptr %t60, !tbaa !24
  store i64 %t61, ptr %l6, !tbaa !24
  %t63 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 28
  %t71 = load i64, ptr %t70, !tbaa !24
  %t73 = icmp sge i64 %t71, 0
  br i1 %t73, label %bb17, label %bb18
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 28
  %t78 = load i64, ptr %t77, !tbaa !24
  store i64 %t78, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 29
  %t83 = getelementptr %"compiler/source:Span", ptr %t82, i32 0, i32 0
  %t84 = load i32, ptr %t83, !tbaa !23
  %t86 = sext i32 %t84 to i64
  store i64 %t86, ptr %l7, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/load:Loader", ptr %t94, i32 0, i32 4
  %t97 = load ptr, ptr %t96, !tbaa !29
  store ptr %t97, ptr %l8, !tbaa !29
  %t99 = load ptr, ptr %l8, !tbaa !29
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %s0, ptr %t99, i64 %t100)
  store { i64, ptr } %t103, ptr %l66
  br label %bb20
bb20:
  %t104 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t104, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l12, !tbaa !24
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l71, !tbaa !27
  store i64 0, ptr %l72, !tbaa !24
  br label %bb21
bb21:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t125 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t125, ptr %l77, !tbaa !27
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i8, ptr %t129, i64 %t126
  %t131 = load i8, ptr %t130, !tbaa !32
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t136
  store i8 %t131, ptr %t139, !tbaa !32
  %t140 = load i64, ptr %l72, !tbaa !24
  %t141 = add i64 %t140, 1
  store i64 %t141, ptr %l72, !tbaa !24
  br label %bb25
bb25:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l11, !tbaa !24
  br label %bb21
bb26:
  %t146 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t146, ptr %lp14
  %t147 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t148 = load ptr, ptr %lp14
  store { i64, ptr } %t147, ptr %t148, !tbaa !27
  %t149 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t149, ptr %l84
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  store ptr %t155, ptr %l87, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t156)
  store i32 %t158, ptr %l89
  br label %bb27
bb27:
  %t159 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t160 = load ptr, ptr %l87, !tbaa !29
  %t161 = load i32, ptr %l89, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t160, i32 %t161, i64 %t159)
  store i32 %t163, ptr %l91
  br label %bb28
bb28:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t164)
  store ptr %t166, ptr %l93
  br label %bb29
bb29:
  %t167 = load ptr, ptr %l93, !tbaa !29
  %t169 = getelementptr %"compiler/check:frame", ptr %t167, i32 0, i32 2
  %t170 = load i64, ptr %t169, !tbaa !24
  %t171 = load ptr, ptr %lp14
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t173, i32 0, i32 0
  store i64 1, ptr %t174
  %t176 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t172, 0
  %t177 = getelementptr { i64, [2 x i64] }, ptr %t173, i32 0, i32 1
  store { { i64, ptr } } %t176, ptr %t177
  %t178 = load { i64, [2 x i64] }, ptr %t173
  %t180 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t178, ptr %t180
  store { i64, [5 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 0
  store i64 1, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l84
  %t184 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t183, 0
  %t185 = load i32, ptr %l91, !tbaa !23
  %t186 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t184, i32 %t185, 1
  %t188 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t186, i64 %t170, 2
  %t190 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t188, ptr %t180, 3
  %t191 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t190, ptr %t191
  %t192 = load { i64, [5 x i64] }, ptr %t181
  %t194 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t192, ptr %t194
  store ptr %t194, ptr %l100, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l101, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t196, ptr %l102
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t197)
  store i32 %t199, ptr %l104
  br label %bb30
bb30:
  %t200 = load ptr, ptr %l8, !tbaa !29
  %t201 = load i64, ptr %l6, !tbaa !24
  %t202 = load i64, ptr %l7, !tbaa !24
  %t206 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t200, i64 %t201, i64 %t202)
  store i64 %t206, ptr %l108
  br label %bb31
bb31:
  %t207 = load ptr, ptr %l101, !tbaa !29
  %t208 = load %"compiler/source:Span", ptr %l102
  %t209 = load i32, ptr %l104, !tbaa !23
  %t210 = load i64, ptr %l108, !tbaa !24
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t207, %"compiler/source:Span" %t208, i32 %t209, i64 %t210)
  store ptr %t211, ptr %l109
  br label %bb32
bb32:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l110, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t213, ptr %l111
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t214)
  store i32 %t216, ptr %l113
  br label %bb33
bb33:
  %t217 = load ptr, ptr %l8, !tbaa !29
  %t218 = load i64, ptr %l6, !tbaa !24
  %t219 = load i64, ptr %l7, !tbaa !24
  %t223 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v0, ptr %t217, i64 %t218, i64 %t219)
  store i64 %t223, ptr %l117
  br label %bb34
bb34:
  %t224 = load ptr, ptr %l110, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l111
  %t226 = load i32, ptr %l113, !tbaa !23
  %t227 = load i64, ptr %l117, !tbaa !24
  %t228 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t224, %"compiler/source:Span" %t225, i32 %t226, i64 %t227)
  store ptr %t228, ptr %l118
  br label %bb35
bb35:
  %t229 = load ptr, ptr %l100, !tbaa !29
  %t230 = insertvalue [3 x ptr] undef, ptr %t229, 0
  %t231 = load ptr, ptr %l109, !tbaa !29
  %t232 = insertvalue [3 x ptr] %t230, ptr %t231, 1
  %t233 = load ptr, ptr %l118, !tbaa !29
  %t234 = insertvalue [3 x ptr] %t232, ptr %t233, 2
  %t235 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store ptr %t235, ptr %lp15
  %t237 = load ptr, ptr %lp15
  store [3 x ptr] %t234, ptr %t237
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i32, ptr %l4, !tbaa !23
  %t242 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t238, i32 %t239)
  store i64 %t242, ptr %l122
  br label %bb36
bb36:
  %t243 = load i64, ptr %l122, !tbaa !24
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 27
  %t247 = load i32, ptr %t246, !tbaa !23
  store i32 %t247, ptr %l17, !tbaa !23
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i32, ptr %l4, !tbaa !23
  %t253 = getelementptr %"compiler/check:Checker", ptr %t249, i32 0, i32 27
  store i32 %t250, ptr %t253, !tbaa !23
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l127, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t255, ptr %l128
  %t256 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t256, ptr %l129
  %t257 = load i32, ptr %l5, !tbaa !23
  store i32 %t257, ptr %l130, !tbaa !23
  %t260 = trunc i64 %t243 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t262
  %t263 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 0
  store i64 0, ptr %t263
  %t265 = insertvalue { i32 } undef, i32 %t260, 0
  %t266 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  store { i32 } %t265, ptr %t266
  %t267 = load { i64, [3 x i64] }, ptr %t262
  %t269 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store { i64, [3 x i64] } %t267, ptr %t269
  store ptr %t269, ptr %l135, !tbaa !29
  %t270 = icmp sge i64 0, 0
  br i1 %t270, label %bb37, label %bb38
bb37:
  %t272 = icmp sle i64 0, 1152921504606846975
  br i1 %t272, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_b23b0b3c83be0ad1_2f776aac88ec27cd)
  unreachable
bb39:
  %t274 = mul i64 0, 8
  %t275 = insertvalue { i64, ptr } undef, i64 0, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t277 = load ptr, ptr %lp15
  %t279 = insertvalue { i64, ptr } undef, i64 3, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t277, 1
  %t281 = load ptr, ptr %l127, !tbaa !29
  %t282 = load %"compiler/source:Span", ptr %l128
  %t283 = load %"compiler/source:Span", ptr %l129
  %t284 = load i32, ptr %l130, !tbaa !23
  %t285 = load ptr, ptr %l135, !tbaa !29
  %t288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v1, ptr %v1, ptr %t281, %"compiler/source:Span" %t282, %"compiler/source:Span" %t283, i32 %t284, ptr %t285, i64 -1, ptr null, { i64, ptr } %t276, { i64, ptr } %t280)
  store ptr %t288, ptr %l141
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_b23b0b3c83be0ad1_2f776aac88ec27cd)
  unreachable
bb41:
  %t289 = load ptr, ptr %l141, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i32, ptr %l17, !tbaa !23
  %t294 = getelementptr %"compiler/check:Checker", ptr %t290, i32 0, i32 27
  store i32 %t291, ptr %t294, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store ptr %t289, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i32
  %l22 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l66 = alloca i64
  %l68 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %t4, { i64, ptr } %a1, { i64, ptr } %a2)
  store i32 %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load i32, ptr %l16, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load i32, ptr %l4, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l22, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l4, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l27
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = load i32, ptr %l27, !tbaa !23
  %t36 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t34, i32 %t35)
  store { i64, ptr } %t36, ptr %l28
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t37, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t68 = load i64, ptr %l37, !tbaa !24
  store i64 %t68, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t69 = load i64, ptr %l34, !tbaa !24
  store i64 %t69, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb14, label %bb15
bb14:
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l11, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t89, ptr %l56, !tbaa !27
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i32, ptr %t93, i64 %t90
  %t95 = load i32, ptr %t94, !tbaa !33
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t88, i32 %t95)
  store { i64, ptr } %t98, ptr %l59
  br label %bb17
bb17:
  %t100 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v3, { i64, ptr } %t100, { i64, ptr } %a3)
  store i1 %t102, ptr %l61
  br label %bb18
bb18:
  %t103 = load i1, ptr %l61, !tbaa !21
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l4, !tbaa !23
  %t111 = load i64, ptr %l11, !tbaa !24
  store i64 %t111, ptr %l66, !tbaa !24
  %t112 = load i64, ptr %l66, !tbaa !24
  %t113 = load i64, ptr %l66, !tbaa !24
  %t114 = shl i64 1, %t113
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t109, i32 %t110, i64 %t114)
  store i32 %t118, ptr %l68
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t119 = load i32, ptr %l68, !tbaa !23
  store i32 %t119, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l10, !tbaa !24
  br label %bb13
bb24:
  %t124 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprovenInt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i1
  %l8 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsLength(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i64 0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i32 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t12 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  store i32 %t12, ptr %l8
  br label %bb5
bb5:
  %t13 = load i32, ptr %l8, !tbaa !23
  store i32 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprovenOperand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l22 = alloca %"compiler/check:litv"
  %l26 = alloca i1
  %l31 = alloca i1
  %l35 = alloca i1
  %l39 = alloca ptr
  %l41 = alloca i32
  %l46 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t8 = icmp eq i64 %t6, 9
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
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
  br label %bb5
bb4:
  br label %bb30
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l16
  br label %bb6
bb6:
  %t27 = load i1, ptr %l16, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t35 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v2, ptr %t30, ptr %t31)
  store %"compiler/check:litv" %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 0
  %t37 = load i1, ptr %t36, !tbaa !21
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t40 = load i32, ptr %l4, !range !{i32 0, i32 51}
  %t42 = trunc i64 8 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb16
bb15:
  %t45 = load i32, ptr %l4, !range !{i32 0, i32 51}
  %t47 = trunc i64 9 to i32
  %t48 = icmp eq i32 %t45, %t47
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t50 = load i1, ptr %l26, !tbaa !21
  store i1 %t50, ptr %l5, !tbaa !21
  %t51 = load i1, ptr %l5, !tbaa !21
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb17, label %bb18
bb17:
  %t55 = load i32, ptr %l4, !range !{i32 0, i32 51}
  %t57 = trunc i64 6 to i32
  %t58 = icmp eq i32 %t55, %t57
  %t60 = xor i1 %t58, true
  store i1 %t60, ptr %l31, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l31, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t63 = load i32, ptr %l4, !range !{i32 0, i32 51}
  %t65 = trunc i64 7 to i32
  %t66 = icmp eq i32 %t63, %t65
  %t68 = xor i1 %t66, true
  store i1 %t68, ptr %l35, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l35, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  %t72 = load i1, ptr %l5, !tbaa !21
  br i1 %t72, label %bb26, label %bb27
bb26:
  store i32 105, ptr %l41
  br label %bb28
bb27:
  store i32 71, ptr %l41
  br label %bb28
bb28:
  %t76 = load i32, ptr %l3, !tbaa !23
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = load i32, ptr %l41, !range !{i32 0, i32 113}
  %t82 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprovenAmount(ptr %v0, ptr %v2, ptr %t78, i32 %t79, i32 %t76, ptr %t77)
  store i1 %t82, ptr %l46
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
  call void @__olang_check_failed(ptr @olang_loc_99086173777f8bfa_1537fe52b2cd754e)
  unreachable
bb35:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/load:Import"
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l13 = alloca i1
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l25 = alloca i64
  %l29 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca %"compiler/load:Import"
  %l62 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l68 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l83 = alloca i1
  %l84 = alloca i64
  %l89 = alloca i64
  %l91 = alloca i1
  %l97 = alloca ptr
  %l106 = alloca ptr
  %l109 = alloca i64
  %l111 = alloca i64
  %l112 = alloca i32
  %l113 = alloca { i64, ptr }
  %l115 = alloca i64
  %l118 = alloca i64
  %l119 = alloca i64
  %l125 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l127 = alloca i64
  %l128 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 20
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l16
  br label %bb3
bb2:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i64, ptr %l16, !tbaa !24
  %t14 = icmp eq i64 %t13, 0
  store i1 %t14, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l13, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t17, ptr %l19, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l20, !tbaa !24
  %t20 = load i64, ptr %l20, !tbaa !24
  %t21 = mul i64 %t20, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l21, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l20, !tbaa !24
  %t30 = mul i64 %t29, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %t28, i64 %t30, i1 false)
  %t31 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 6
  %t36 = load i64, ptr %t35, !tbaa !24
  %t38 = icmp sge i64 %t36, 0
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 6
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l25, !tbaa !24
  br label %bb11
bb9:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t45)
  store ptr %t47, ptr %l29
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l29, !tbaa !29
  %t50 = getelementptr %"compiler/check:frame", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l25, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l25, !tbaa !24
  store i64 %t53, ptr %l2, !tbaa !24
  %t54 = load i64, ptr %l1, !tbaa !24
  %t55 = load i64, ptr %l2, !tbaa !24
  %t58 = icmp eq i64 %t54, %t55
  br i1 %t58, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t60, ptr %l36, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l37, !tbaa !24
  %t63 = load i64, ptr %l37, !tbaa !24
  %t64 = mul i64 %t63, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l38, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = mul i64 %t72, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t74, ptr %l36, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/load:Loader", ptr %t82, i32 0, i32 10
  %t85 = load i64, ptr %l2, !tbaa !24
  %t88 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t84, i64 %t85)
  store ptr %t88, ptr %l44
  br label %bb15
bb15:
  %t89 = load ptr, ptr %l44, !tbaa !29
  %t91 = getelementptr %"compiler/load:Module", ptr %t89, i32 0, i32 11
  store ptr %t91, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb16
bb16:
  %t93 = load i64, ptr %l4, !tbaa !24
  store i64 %t93, ptr %l47, !tbaa !24
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l49
  br label %bb17
bb17:
  %t97 = load i64, ptr %l47, !tbaa !24
  %t98 = load i64, ptr %l49, !tbaa !24
  %t99 = icmp slt i64 %t97, %t98
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb18, label %bb19
bb18:
  br label %bb39
bb19:
  br label %bb20
bb20:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t104 = load i64, ptr %l4, !tbaa !24
  %t107 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t103, i64 %t104)
  store %"compiler/load:Import" %t107, ptr %l54
  br label %bb21
bb21:
  %t108 = load %"compiler/load:Import", ptr %l54
  store %"compiler/load:Import" %t108, ptr %l5
  %t109 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = load i64, ptr %l1, !tbaa !24
  %t114 = icmp ne i64 %t110, %t111
  br i1 %t114, label %bb22, label %bb23
bb22:
  br label %bb38
bb23:
  br label %bb24
bb24:
  %t116 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %l6, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = icmp eq i64 %t121, 0
  br i1 %t123, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t125 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 3
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s6, { i64, ptr } %t126, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) })
  %t129 = extractvalue { i32, i64 } %t128, 1
  %t130 = extractvalue { i32, i64 } %t128, 0
  store i32 %t130, ptr %l65
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb28, label %ok.132, !prof !99
ok.132:
  store i64 %t129, ptr %l64
  br label %bb27
bb26:
  br label %bb37
bb27:
  %t133 = load i64, ptr %l64, !tbaa !24
  store i64 %t133, ptr %l62, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb30
bb30:
  %t134 = load i64, ptr %l62, !tbaa !24
  %t135 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 3
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l66, !tbaa !27
  %t139 = add i64 %t134, 1
  store i64 %t139, ptr %l68, !tbaa !24
  %t140 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 3
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t141, 0
  store i64 %t144, ptr %l71, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l72, !tbaa !24
  %t147 = load i64, ptr %l68, !tbaa !24
  %t148 = icmp sge i64 %t147, 0
  br i1 %t148, label %bb31, label %bb32
bb31:
  %t150 = load i64, ptr %l68, !tbaa !24
  %t151 = load i64, ptr %l71, !tbaa !24
  %t152 = icmp sle i64 %t150, %t151
  br i1 %t152, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_17a01d5acd356999_bbab3392a6e164c5)
  unreachable
bb33:
  %t154 = load i64, ptr %l71, !tbaa !24
  %t155 = load i64, ptr %l72, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_17a01d5acd356999_bbab3392a6e164c5)
  unreachable
bb35:
  %t158 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l68, !tbaa !24
  %t161 = load i64, ptr %l71, !tbaa !24
  %t162 = getelementptr i8, ptr %t159, i64 %t160
  %t163 = sub i64 %t161, %t160
  %t164 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  store { i64, ptr } %t165, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_17a01d5acd356999_bbab3392a6e164c5)
  unreachable
bb37:
  %t167 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 1
  %t170 = extractvalue { i64, ptr } %t167, 0
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t169, i64 %t170)
  %t175 = getelementptr i8, ptr %t174, i64 %t170
  call void @olang_textcopy(ptr %t175, ptr %t171, i64 %t172)
  %t176 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t174, 1
  store { i64, ptr } %t177, ptr %rv
  br label %ret
bb38:
  %t179 = load i64, ptr %l4, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l4, !tbaa !24
  br label %bb16
bb39:
  %t183 = load i64, ptr %l1, !tbaa !24
  %t185 = icmp sge i64 %t183, 0
  br i1 %t185, label %bb40, label %bb41
bb40:
  %t187 = load i64, ptr %l1, !tbaa !24
  store i64 %t187, ptr %l84, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/load:Loader", ptr %t194, i32 0, i32 10
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t196)
  store i64 %t198, ptr %l89
  br label %bb42
bb41:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb43
bb42:
  %t199 = load i64, ptr %l84, !tbaa !24
  %t200 = load i64, ptr %l89, !tbaa !24
  %t201 = icmp slt i64 %t199, %t200
  store i1 %t201, ptr %l83, !tbaa !21
  br label %bb43
bb43:
  %t203 = load i1, ptr %l83, !tbaa !21
  br i1 %t203, label %bb44, label %bb45
bb44:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/check:Checker", ptr %t204, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = getelementptr %"compiler/generic:Program", ptr %t207, i32 0, i32 0
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t212 = getelementptr %"compiler/load:Loader", ptr %t210, i32 0, i32 10
  %t213 = load i64, ptr %l1, !tbaa !24
  %t216 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t212, i64 %t213)
  store ptr %t216, ptr %l97
  br label %bb46
bb45:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb47
bb46:
  %t217 = load ptr, ptr %l97, !tbaa !29
  %t219 = getelementptr %"compiler/load:Module", ptr %t217, i32 0, i32 3
  %t220 = load i1, ptr %t219, !tbaa !21
  %t222 = xor i1 %t220, true
  store i1 %t222, ptr %l91, !tbaa !21
  br label %bb47
bb47:
  %t224 = load i1, ptr %l91, !tbaa !21
  br i1 %t224, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s9
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 0
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t233 = getelementptr %"compiler/load:Loader", ptr %t231, i32 0, i32 10
  %t234 = load i64, ptr %l1, !tbaa !24
  %t237 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t233, i64 %t234)
  store ptr %t237, ptr %l106
  br label %bb50
bb49:
  br label %bb61
bb50:
  %t238 = load ptr, ptr %l106, !tbaa !29
  %t240 = getelementptr %"compiler/load:Module", ptr %t238, i32 0, i32 2
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  store { i64, ptr } %t241, ptr %l8, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t245 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s9, { i64, ptr } %t243, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  %t246 = extractvalue { i32, i64 } %t245, 1
  %t247 = extractvalue { i32, i64 } %t245, 0
  store i32 %t247, ptr %l112
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb52, label %ok.249, !prof !99
ok.249:
  store i64 %t246, ptr %l111
  br label %bb51
bb51:
  %t250 = load i64, ptr %l111, !tbaa !24
  store i64 %t250, ptr %l109, !tbaa !24
  br label %bb54
bb52:
  br label %bb53
bb53:
  store i64 -1, ptr %l109, !tbaa !24
  br label %bb54
bb54:
  %t251 = load i64, ptr %l109, !tbaa !24
  %t252 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t252, ptr %l113, !tbaa !27
  %t255 = add i64 %t251, 1
  store i64 %t255, ptr %l115, !tbaa !24
  %t256 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t256, 0
  store i64 %t259, ptr %l118, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  store i64 %t261, ptr %l119, !tbaa !24
  %t262 = load i64, ptr %l115, !tbaa !24
  %t263 = icmp sge i64 %t262, 0
  br i1 %t263, label %bb55, label %bb56
bb55:
  %t265 = load i64, ptr %l115, !tbaa !24
  %t266 = load i64, ptr %l118, !tbaa !24
  %t267 = icmp sle i64 %t265, %t266
  br i1 %t267, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_4138b01f2eedcaec_10fcf95e1b11f8e8)
  unreachable
bb57:
  %t269 = load i64, ptr %l118, !tbaa !24
  %t270 = load i64, ptr %l119, !tbaa !24
  %t271 = icmp sle i64 %t269, %t270
  br i1 %t271, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_4138b01f2eedcaec_10fcf95e1b11f8e8)
  unreachable
bb59:
  %t273 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !27
  %t275 = load i64, ptr %l115, !tbaa !24
  %t276 = load i64, ptr %l118, !tbaa !24
  %t277 = getelementptr i8, ptr %t274, i64 %t275
  %t278 = sub i64 %t276, %t275
  %t279 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t277, 1
  %t282 = extractvalue { i64, ptr } %t280, 1
  %t283 = extractvalue { i64, ptr } %t280, 0
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t286 = add i64 %t283, %t285
  %t287 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t286)
  call void @olang_textcopy(ptr %t287, ptr %t282, i64 %t283)
  %t288 = getelementptr i8, ptr %t287, i64 %t283
  call void @olang_textcopy(ptr %t288, ptr %t284, i64 %t285)
  %t289 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t287, 1
  call void @__olang_scope_close(ptr %s9)
  store { i64, ptr } %t290, ptr %rv
  br label %ret
bb60:
  call void @__olang_check_failed(ptr @olang_loc_4138b01f2eedcaec_10fcf95e1b11f8e8)
  unreachable
bb61:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l125, !tbaa !27
  %t292 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t292, ptr %l126, !tbaa !27
  %t293 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  store i64 %t294, ptr %l127, !tbaa !24
  %t295 = load i64, ptr %l127, !tbaa !24
  %t296 = mul i64 %t295, 1
  %t297 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t296)
  %t298 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t297, 1
  store { i64, ptr } %t299, ptr %l128, !tbaa !27
  %t300 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = load i64, ptr %l127, !tbaa !24
  %t305 = mul i64 %t304, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t301, ptr %t303, i64 %t305, i1 false)
  %t306 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t306, ptr %l126, !tbaa !27
  %t307 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t307, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca { i32, { i64, ptr } }
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i1
  %l38 = alloca { i64, ptr }
  %l40 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i32
  %l52 = alloca i32
  %l64 = alloca { i32, { i64, ptr } }
  %l68 = alloca i1
  %l70 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l81 = alloca %"compiler/diagmsg:Msg"
  %l82 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca i1
  %l93 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l112 = alloca ptr
  %l114 = alloca ptr
  %l118 = alloca %"compiler/names:Ref"
  %l122 = alloca { i64, ptr }
  %l126 = alloca i1
  %l129 = alloca i1
  %l132 = alloca i32
  %l144 = alloca i32
  %l147 = alloca i32
  %l152 = alloca i1
  %l154 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca { i64, ptr }
  %l161 = alloca %"compiler/source:Span"
  %l164 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l173 = alloca i64
  %l175 = alloca i64
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l177 = alloca i64
  %l183 = alloca i32
  %l187 = alloca i1
  %l191 = alloca i1
  %l193 = alloca i1
  %l197 = alloca i1
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca i32
  %t268 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = icmp sge i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i32, ptr %l2, !tbaa !23
  store i32 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t14 = load ptr, ptr %l26, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l26, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 28}
  %t20 = icmp eq i64 %t18, 12
  store i1 %t20, ptr %l27, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l27, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l3
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t30, i32 0, i32 1
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l4, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l5, !tbaa !23
  br label %bb9
bb8:
  br label %bb39
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l38
  br label %bb10
bb10:
  %t45 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t48 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t46)
  store i1 %t48, ptr %l40
  br label %bb11
bb11:
  %t49 = load i1, ptr %l40, !tbaa !21
  %t50 = xor i1 %t49, true
  br i1 %t50, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  store i32 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  store i32 -1, ptr %l7, !tbaa !23
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store i1 %t55, ptr %l44
  br label %bb15
bb15:
  %t56 = load i1, ptr %l44, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t61 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t57, ptr %t58)
  store i32 %t61, ptr %l47
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t62 = load i32, ptr %l47, !tbaa !23
  store i32 %t62, ptr %l7, !tbaa !23
  br label %bb19
bb19:
  %t63 = load i32, ptr %l7, !tbaa !23
  %t65 = icmp slt i32 %t63, 0
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t71 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  store i32 %t71, ptr %l52
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t72 = load i32, ptr %l52, !tbaa !23
  store i32 %t72, ptr %l7, !tbaa !23
  br label %bb23
bb23:
  %t73 = load i32, ptr %l7, !tbaa !23
  %t75 = icmp slt i32 %t73, 0
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t77 = load i32, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t77, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t79 = load i32, ptr %l7, !tbaa !23
  %t80 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t83 = icmp eq i32 %t79, %t80
  br i1 %t83, label %bb27, label %bb28
bb27:
  %t85 = load i32, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t85, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t91 = load i32, ptr %l7, !tbaa !23
  %t92 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t96 = call { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v0, ptr %s2, ptr %t90, i32 %t91, { i64, ptr } %t92)
  store { i32, { i64, ptr } } %t96, ptr %l64
  br label %bb30
bb30:
  %t97 = load { i32, { i64, ptr } }, ptr %l64
  store { i32, { i64, ptr } } %t97, ptr %l8
  %t98 = getelementptr { i32, { i64, ptr } }, ptr %l8, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  store i32 %t99, ptr %l9, !tbaa !23
  %t101 = getelementptr { i32, { i64, ptr } }, ptr %l8, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l10, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t104, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t106, ptr %l68
  br label %bb31
bb31:
  %t107 = load i1, ptr %l68, !tbaa !21
  %t108 = xor i1 %t107, true
  br i1 %t108, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l70, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l3
  %t112 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t117 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t111, i64 %t114)
  store %"compiler/source:Span" %t117, ptr %l74
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t118 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t118, ptr %l75, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l7, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l78
  br label %bb35
bb35:
  %t124 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t135 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %s8, ptr %s2, ptr %v0, { i64, ptr } %t132, { i64, ptr } %t130, { i64, ptr } %t131)
  store %"compiler/diagmsg:Msg" %t135, ptr %l81
  br label %bb36
bb36:
  %t136 = load ptr, ptr %l70, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l74
  %t138 = load %"compiler/diagmsg:Msg", ptr %l81
  %t139 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t136, %"compiler/source:Span" %t137, %"compiler/diagmsg:Msg" %t138)
  store i64 %t139, ptr %l82
  br label %bb37
bb37:
  %t140 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s2)
  store i32 %t140, ptr %rv
  br label %ret
bb38:
  %t142 = load i32, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t142, ptr %rv
  br label %ret
bb39:
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t145 = load ptr, ptr %l85, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb40, label %bb41
bb40:
  %t148 = load ptr, ptr %l85, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 28}
  %t151 = icmp eq i64 %t149, 2
  store i1 %t151, ptr %l86, !tbaa !21
  br label %bb41
bb41:
  %t152 = load i1, ptr %l86, !tbaa !21
  br i1 %t152, label %bb42, label %bb43
bb42:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { %"compiler/source:Span", ptr }, ptr %t155, i32 0, i32 1
  %t157 = load ptr, ptr %t156
  store ptr %t157, ptr %l11, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t163 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t159, ptr %t160)
  store i32 %t163, ptr %l93
  br label %bb45
bb45:
  %t164 = load i32, ptr %l93, !tbaa !23
  store i32 %t164, ptr %rv
  br label %ret
bb46:
  %t165 = load ptr, ptr %l1, !tbaa !29
  store ptr %t165, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t166 = load ptr, ptr %l94, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb47, label %bb48
bb47:
  %t169 = load ptr, ptr %l94, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 28}
  %t172 = icmp eq i64 %t170, 11
  store i1 %t172, ptr %l95, !tbaa !21
  br label %bb48
bb48:
  %t173 = load i1, ptr %l95, !tbaa !21
  br i1 %t173, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t176, i32 0, i32 0
  %t178 = load %"compiler/source:Span", ptr %t177
  store %"compiler/source:Span" %t178, ptr %l12
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t182, i32 0, i32 1
  %t184 = load ptr, ptr %t183
  store ptr %t184, ptr %l13, !tbaa !29
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t188, i32 0, i32 2
  %t190 = load { i64, ptr }, ptr %t189
  store { i64, ptr } %t190, ptr %l14, !tbaa !27
  br label %bb51
bb50:
  br label %bb106
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  store i1 false, ptr %l15, !tbaa !21
  %t192 = load ptr, ptr %l13, !tbaa !29
  store ptr %t192, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t193 = load ptr, ptr %l104, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb52, label %bb53
bb52:
  %t196 = load ptr, ptr %l104, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 28}
  %t199 = icmp eq i64 %t197, 0
  store i1 %t199, ptr %l105, !tbaa !21
  br label %bb53
bb53:
  %t200 = load i1, ptr %l105, !tbaa !21
  br i1 %t200, label %bb54, label %bb55
bb54:
  %t201 = load ptr, ptr %l13, !tbaa !29
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32 }, ptr %t203, i32 0, i32 0
  %t205 = load %"compiler/source:Span", ptr %t204
  store %"compiler/source:Span" %t205, ptr %l16
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/check:Checker", ptr %t207, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t212 = getelementptr %"compiler/generic:Program", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  store ptr %t213, ptr %l112, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t214)
  store ptr %t216, ptr %l114
  br label %bb57
bb57:
  %t217 = load ptr, ptr %l114, !tbaa !29
  %t219 = getelementptr %"compiler/check:frame", ptr %t217, i32 0, i32 2
  %t220 = load i64, ptr %t219, !tbaa !24
  %t221 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t222 = load i32, ptr %t221, !tbaa !23
  %t223 = load ptr, ptr %l112, !tbaa !29
  %t226 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t223, i64 %t220, i32 %t222)
  store %"compiler/names:Ref" %t226, ptr %l118
  br label %bb58
bb58:
  %t227 = getelementptr %"compiler/names:Ref", ptr %l118, i32 0, i32 0
  %t228 = load i32, ptr %t227, !range !{i32 0, i32 9}
  %t230 = trunc i64 7 to i32
  %t231 = icmp eq i32 %t228, %t230
  store i1 %t231, ptr %l15, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_492feac3979049da_7a1ccb679ec95f6e)
  unreachable
bb64:
  %t233 = load ptr, ptr %l13, !tbaa !29
  %t235 = call { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v1, ptr %s10, ptr %t233)
  store { i64, ptr } %t235, ptr %l122
  br label %bb65
bb65:
  %t236 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t236, ptr %l17, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t241 = icmp eq i64 %t239, 0
  br i1 %t241, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb72
bb67:
  %t243 = load i1, ptr %l15, !tbaa !21
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb68, label %bb69
bb68:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l13, !tbaa !29
  %t251 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t247, ptr %t248)
  store i32 %t251, ptr %l132
  br label %bb70
bb69:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb71
bb70:
  %t252 = load i32, ptr %l132, !tbaa !23
  %t253 = icmp slt i32 %t252, 0
  store i1 %t253, ptr %l129, !tbaa !21
  br label %bb71
bb71:
  %t255 = load i1, ptr %l129, !tbaa !21
  store i1 %t255, ptr %l126, !tbaa !21
  br label %bb72
bb72:
  %t256 = load i1, ptr %l126, !tbaa !21
  br i1 %t256, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s10)
  store i32 -1, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  %t258 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t262 = icmp eq i64 %t260, 1
  br i1 %t262, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s14
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l12
  %t266 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t268
  %t269 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 0
  store i64 0, ptr %t269
  %t271 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t265, 0
  %t273 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t271, { i64, ptr } %t266, 1
  %t275 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t273, { i64, ptr } %t267, 2
  %t276 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t275, ptr %t276
  %t277 = load { i64, [5 x i64] }, ptr %t268
  %t279 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 48, i64 8)
  store { i64, [5 x i64] } %t277, ptr %t279
  %t282 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %s14, ptr %t264, ptr %t279)
  store i32 %t282, ptr %l144
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s10)
  %t283 = load i32, ptr %l144, !tbaa !23
  store i32 %t283, ptr %rv
  br label %ret
bb79:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l13, !tbaa !29
  %t288 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t284, ptr %t285)
  store i32 %t288, ptr %l147
  br label %bb80
bb80:
  %t289 = load i32, ptr %l147, !tbaa !23
  store i32 %t289, ptr %l18, !tbaa !23
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/check:Checker", ptr %t290, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !29
  %t294 = load i32, ptr %l18, !tbaa !23
  %t295 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t299 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %t293, i32 %t294, { i64, ptr } %t295)
  store i1 %t299, ptr %l152
  br label %bb81
bb81:
  %t300 = load i1, ptr %l152, !tbaa !21
  %t301 = xor i1 %t300, true
  br i1 %t301, label %bb82, label %bb83
bb82:
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l154, !tbaa !29
  %t304 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t308 = icmp sgt i64 %t306, 0
  br i1 %t308, label %bb84, label %bb85
bb83:
  br label %bb93
bb84:
  %t310 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t310, ptr %l159, !tbaa !27
  %t311 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr ptr, ptr %t312, i64 0
  %t314 = load ptr, ptr %t313, !tbaa !39
  %t316 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t314)
  store %"compiler/source:Span" %t316, ptr %l161
  br label %bb86
bb85:
  %t317 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t317, ptr %l158
  br label %bb87
bb86:
  %t319 = load %"compiler/source:Span", ptr %l161
  store %"compiler/source:Span" %t319, ptr %l158
  br label %bb87
bb87:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t321, ptr %l164, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t326 = sub i64 %t324, 1
  %t328 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr i32, ptr %t329, i64 %t326
  %t331 = load i32, ptr %t330, !tbaa !33
  %t334 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t320, i32 %t331)
  store { i64, ptr } %t334, ptr %l169
  br label %bb88
bb88:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/check:Checker", ptr %t335, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t339 = load i32, ptr %l18, !tbaa !23
  %t342 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t338, i32 %t339)
  store i64 %t342, ptr %l173
  br label %bb89
bb89:
  %t343 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t345 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t343)
  store i64 %t345, ptr %l175
  br label %bb90
bb90:
  %t346 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t347 = load i64, ptr %l173, !tbaa !24
  %t348 = load i64, ptr %l175, !tbaa !24
  %t349 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v0, { i64, ptr } %t346, i64 %t347, i64 %t348)
  store %"compiler/diagmsg:Msg" %t349, ptr %l176
  br label %bb91
bb91:
  %t350 = load ptr, ptr %l154, !tbaa !29
  %t351 = load %"compiler/source:Span", ptr %l158
  %t352 = load %"compiler/diagmsg:Msg", ptr %l176
  %t353 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t350, %"compiler/source:Span" %t351, %"compiler/diagmsg:Msg" %t352)
  store i64 %t353, ptr %l177
  br label %bb92
bb92:
  %t354 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t354, ptr %rv
  br label %ret
bb93:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l12
  %t358 = load i32, ptr %l18, !tbaa !23
  %t359 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t364 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %t356, %"compiler/source:Span" %t357, i32 %t358, { i64, ptr } %t359)
  store i32 %t364, ptr %l183
  br label %bb94
bb94:
  %t365 = load i32, ptr %l183, !tbaa !23
  store i32 %t365, ptr %l19, !tbaa !23
  %t366 = load i32, ptr %l19, !tbaa !23
  %t367 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t370 = icmp eq i32 %t366, %t367
  br i1 %t370, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l187, !tbaa !21
  br label %bb98
bb96:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l19, !tbaa !23
  %t374 = load %"compiler/source:Span", ptr %l12
  %t378 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t372, i32 %t373, %"compiler/source:Span" %t374)
  store i1 %t378, ptr %l191
  br label %bb97
bb97:
  %t379 = load i1, ptr %l191, !tbaa !21
  %t380 = xor i1 %t379, true
  store i1 %t380, ptr %l187, !tbaa !21
  br label %bb98
bb98:
  %t382 = load i1, ptr %l187, !tbaa !21
  br i1 %t382, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb102
bb100:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t387 = load i32, ptr %l19, !tbaa !23
  %t390 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t386, i32 %t387)
  store i1 %t390, ptr %l197
  br label %bb101
bb101:
  %t391 = load i1, ptr %l197, !tbaa !21
  %t392 = xor i1 %t391, true
  store i1 %t392, ptr %l193, !tbaa !21
  br label %bb102
bb102:
  %t394 = load i1, ptr %l193, !tbaa !21
  br i1 %t394, label %bb103, label %bb104
bb103:
  %t395 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t395, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  %t397 = load i32, ptr %l19, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t397, ptr %rv
  br label %ret
bb106:
  br i1 true, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb110
bb109:
  store i32 -1, ptr %rv
  br label %ret
bb110:
  call void @__olang_check_failed(ptr @olang_loc_42af232d2840e8db_efcef566740b002f)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootLocal(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %t11, i64 %t12)
  store i1 %t15, ptr %l11
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i1, ptr %l11, !tbaa !21
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %l12, !tbaa !24
  br label %bb8
bb7:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca { i64, ptr }
  %l37 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2eplainLen(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2eplainLen(ptr %v2, ptr %t7)
  store i1 %t9, ptr %l10
  br label %bb4
bb4:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 28}
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l3, !tbaa !23
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb14, label %bb15
bb14:
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 28}
  %t37 = icmp eq i64 %t35, 0
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t38 = load i1, ptr %l20, !tbaa !21
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32 }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l4, !tbaa !23
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t45 = load i32, ptr %l3, !tbaa !23
  %t46 = load i32, ptr %l4, !tbaa !23
  %t49 = icmp eq i32 %t45, %t46
  store i1 %t49, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_e2de52da0998b8a_4e4f16d2638e7f66)
  unreachable
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_4bef50c9347fcfcb_39dc7124156e73c7)
  unreachable
bb29:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l29, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l31
  br label %bb30
bb30:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l31
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t56, %"compiler/source:Span" %t57)
  store { i64, ptr } %t58, ptr %l32
  br label %bb31
bb31:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t60)
  store %"compiler/source:Span" %t62, ptr %l35
  br label %bb32
bb32:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l35
  %t65 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t63, %"compiler/source:Span" %t64)
  store { i64, ptr } %t65, ptr %l36
  br label %bb33
bb33:
  %t66 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t66, { i64, ptr } %t67)
  store i1 %t68, ptr %l37
  br label %bb34
bb34:
  %t69 = load i1, ptr %l37, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l23 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l10
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t13, i64 %t14)
  store { i64, ptr } %t17, ptr %l15
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 0
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %s2, ptr %a0, ptr %t24)
  store ptr %t27, ptr %l19
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l19, !tbaa !29
  store ptr %t28, ptr %l6, !tbaa !29
  %t29 = load ptr, ptr %l6, !tbaa !29
  %t31 = getelementptr %"compiler/check:elemsShape", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, -1
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"compiler/check:elemsShape", ptr %t36, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = getelementptr %"compiler/check:elemsShape", ptr %t48, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l4, !tbaa !24
  br label %bb1
bb15:
  %t59 = load i64, ptr %l2, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetSliceMethod(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t2 = insertvalue [2 x { i64, ptr }] %t1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t4 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store [2 x { i64, ptr }] %t2, ptr %t4
  store ptr %t4, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l2
  store i64 2, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb15
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l2
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr [2 x { i64, ptr }], ptr %t17, i64 0, i64 %t18
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !37
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store i32 %a1, ptr %l20, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/load:Loader", ptr %t35, i32 0, i32 3
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = load ptr, ptr @__olang_prog_scope
  %t43 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %t40, ptr %t38, { i64, ptr } %t22)
  store i32 %t43, ptr %l26
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = load i32, ptr %l20, !tbaa !23
  %t46 = load i32, ptr %l26, !tbaa !23
  %t47 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t44, i32 %t45, i32 %t46)
  store i64 %t47, ptr %l27
  br label %bb6
bb6:
  %t48 = load i64, ptr %l27, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp sge i64 %t49, 0
  br i1 %t51, label %bb7, label %bb8
bb7:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetsByAxes(ptr %v0, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l33
  br label %bb9
bb8:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  %t58 = load i1, ptr %l33, !tbaa !21
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t59 = load i1, ptr %l30, !tbaa !21
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t60 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t60, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  call void @__olang_scope_close(ptr %s1)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettle(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i32
  %l19 = alloca ptr
  %l23 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca ptr
  %l39 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l5, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t10, ptr %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l10
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %s0, ptr %t13, ptr %l10)
  store i32 %t15, ptr %l12
  br label %bb3
bb3:
  %t16 = load i32, ptr %l12, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 62
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/check:frame", ptr %t20, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hb311157f9ff5cfde66cc01a7f8069ed8(ptr %v0, ptr %t19, i64 %t23, i32 %t24)
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 66
  store ptr %t30, ptr %l19, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %t31, i64 %t35)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t38, ptr %l23
  br label %bb5
bb5:
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1d7b97a31fca2c92a4527a0b3309f2d1(ptr %v0, ptr %t40, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t41, i32 %t39)
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 18
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/check:frame", ptr %t46, i32 0, i32 0
  %t49 = load i64, ptr %t48, !tbaa !24
  %t52 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t45, i64 %t49)
  store ptr %t52, ptr %l29
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l29, !tbaa !29
  store ptr %t53, ptr %l3, !tbaa !29
  %t54 = load ptr, ptr %l3, !tbaa !29
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t66, i32 %t70)
  store i32 %t73, ptr %l39
  br label %bb8
bb8:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t79, i32 %t83)
  store i32 %t86, ptr %l45
  br label %bb9
bb9:
  %t87 = load i32, ptr %l2, !tbaa !23
  store i32 %t87, ptr %l46, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Body", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t93, i32 %t97)
  store i32 %t100, ptr %l52
  br label %bb10
bb10:
  %t101 = load ptr, ptr %l33, !tbaa !29
  %t102 = load i32, ptr %l39, !tbaa !23
  %t103 = load i32, ptr %l45, !tbaa !23
  %t104 = load i32, ptr %l46, !tbaa !23
  %t105 = load i32, ptr %l52, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t101, i32 %t102, i32 %t103, i32 %t104, i32 %t105, i64 0, i1 false, i32 0, i64 0)
  store i32 %t106, ptr %l53
  br label %bb11
bb11:
  %t107 = load i32, ptr %l53, !tbaa !23
  %t108 = load ptr, ptr %l30, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Body", ptr %t108, i32 0, i32 2
  store i32 %t107, ptr %t109, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleWeak(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:weakPlace"
  %l4 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/check:weakPlace"
  %l26 = alloca %"compiler/check:weakPlace"
  %l29 = alloca ptr
  %l30 = alloca i64
  %l34 = alloca { i64, ptr }
  %l41 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l42 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i32
  %l47 = alloca i1
  %l51 = alloca i1
  %l52 = alloca { i64, [3 x i64] }
  %l56 = alloca { i64, [3 x i64] }
  %l57 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca { i64, [3 x i64] }
  %l63 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %l72 = alloca %"compiler/diagmsg:Msg"
  %l73 = alloca i64
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l8, !tbaa !29
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l9
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l11
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l9
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
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
  %t25 = load ptr, ptr %l8, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 8
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l13
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t29 = load ptr, ptr %l8, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %t30
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = call ptr @__olang_region_home(ptr %t36)
  %t38 = icmp ne ptr %t37, null
  %t39 = select i1 %t38, ptr %t37, ptr null
  call void @__olang_region_drop(ptr %t39)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l13
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 107
  store ptr %t42, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load i64, ptr %l2, !tbaa !24
  store i64 %t44, ptr %l17, !tbaa !24
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eLen__H084a2ca77c4688e46cae486f59666d3f(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l19
  br label %bb9
bb9:
  %t48 = load i64, ptr %l17, !tbaa !24
  %t49 = load i64, ptr %l19, !tbaa !24
  %t50 = icmp slt i64 %t48, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load i64, ptr %l2, !tbaa !24
  %t58 = call %"compiler/check:weakPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eAt_3ccompiler_2fcheck_3aweakPlace_3e(ptr %v0, ptr %v0, ptr %t54, i64 %t55)
  store %"compiler/check:weakPlace" %t58, ptr %l24
  br label %bb13
bb13:
  %t60 = call %"compiler/check:weakPlace" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aweakPlace(ptr %s2, ptr %l24)
  store %"compiler/check:weakPlace" %t60, ptr %l26
  br label %bb14
bb14:
  %t61 = load %"compiler/check:weakPlace", ptr %l26
  store %"compiler/check:weakPlace" %t61, ptr %l3
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 8
  store ptr %t67, ptr %l29, !tbaa !29
  %t68 = ptrtoint ptr %v0 to i64
  store i64 %t68, ptr %l30, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = call ptr @__olang_region_make(ptr %v0)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l30, !tbaa !24
  br label %bb16
bb16:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/check:weakPlace", ptr %l3
  %t75 = load i64, ptr %l30
  %t76 = inttoptr i64 %t75 to ptr
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakRow(ptr %v0, ptr %s2, ptr %t76, ptr %t73, %"compiler/check:weakPlace" %t74)
  store { i64, ptr } %t79, ptr %l34
  br label %bb17
bb17:
  %t80 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t81 = load i64, ptr %l30
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = extractvalue { i64, ptr } %t80, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t89 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t89, { i64, ptr } %t88)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t91 = load i64, ptr %l2, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l2, !tbaa !24
  br label %bb8
bb20:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 5
  %t102 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v0, ptr %t100)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t102, ptr %l41
  br label %bb21
bb21:
  %t103 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l41
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t103, ptr %l4
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t105 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %l4)
  %t106 = extractvalue { i32, i64 } %t105, 1
  %t107 = extractvalue { i32, i64 } %t105, 0
  store i32 %t107, ptr %l45
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb24, label %ok.109, !prof !99
ok.109:
  store i64 %t106, ptr %l44
  br label %bb23
bb23:
  %t110 = load i64, ptr %l44, !tbaa !24
  store i64 %t110, ptr %l42, !tbaa !24
  br label %bb26
bb24:
  %t111 = load i32, ptr %l45, !tbaa !23
  %t112 = ashr i32 %t111, 16
  %t114 = icmp eq i32 %t112, 1
  store i1 %t114, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb26:
  %t115 = load i64, ptr %l42, !tbaa !24
  store i64 %t115, ptr %l5, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 106
  %t119 = load i64, ptr %l5, !tbaa !24
  %t122 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t118, i64 %t119)
  store i1 %t122, ptr %l51
  br label %bb27
bb27:
  %t123 = load i1, ptr %l51, !tbaa !21
  br i1 %t123, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb29:
  br label %bb30
bb30:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 105
  %t127 = load i64, ptr %l5, !tbaa !24
  %t130 = call { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %t126, i64 %t127)
  %t131 = extractvalue { i32, { i64, [3 x i64] } } %t130, 1
  %t132 = extractvalue { i32, { i64, [3 x i64] } } %t130, 0
  store i32 %t132, ptr %l57
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb32, label %ok.134, !prof !99
ok.134:
  store { i64, [3 x i64] } %t131, ptr %l56
  br label %bb31
bb31:
  %t135 = load { i64, [3 x i64] }, ptr %l56
  store { i64, [3 x i64] } %t135, ptr %l52
  br label %bb34
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb34:
  %t136 = load { i64, [3 x i64] }, ptr %l52
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/load:Loader", ptr %t143, i32 0, i32 4
  %t146 = load ptr, ptr %t145, !tbaa !29
  store ptr %t146, ptr %l61, !tbaa !29
  store { i64, [3 x i64] } %t136, ptr %l62
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l63, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load i64, ptr %l5, !tbaa !24
  %t155 = trunc i64 %t153 to i32
  %t159 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t152, i32 %t155)
  store i32 %t159, ptr %l69
  br label %bb35
bb35:
  %t160 = load ptr, ptr %l63, !tbaa !29
  %t161 = load i32, ptr %l69, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t160, i32 %t161)
  store { i64, ptr } %t162, ptr %l70
  br label %bb36
bb36:
  %t163 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  %t165 = extractvalue { i64, ptr } %t163, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakUnheld(ptr %s5, ptr %v0, { i64, ptr } %t169)
  store %"compiler/diagmsg:Msg" %t171, ptr %l72
  br label %bb37
bb37:
  %t172 = load ptr, ptr %l61, !tbaa !29
  %t173 = load { i64, [3 x i64] }, ptr %l62
  %t174 = load %"compiler/diagmsg:Msg", ptr %l72
  %t175 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t172, { i64, [3 x i64] } %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l73
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb39:
  br label %bb22
bb40:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettled(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i1
  %l18 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp slt i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t12 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenOf(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  store i64 %t12, ptr %l10
  br label %bb4
bb4:
  %t13 = load i64, ptr %l10, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestsAt(ptr %v0, ptr %v1, ptr %v2, ptr %t18, ptr %t19, { i64, ptr } %t20, i64 %t21)
  store i1 %t26, ptr %l18
  br label %bb7
bb6:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l13, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrReceivers(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l50 = alloca i64
  %l52 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l57 = alloca i1
  %l62 = alloca ptr
  %l71 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l83 = alloca i1
  %l85 = alloca i1
  %l87 = alloca i1
  %l89 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l100 = alloca i64
  %l106 = alloca ptr
  %l122 = alloca i64
  %l123 = alloca { i64, ptr }
  %l124 = alloca i64
  %l127 = alloca i64
  %l128 = alloca i64
  %l134 = alloca i64
  %l135 = alloca i32
  %l138 = alloca i64
  %l148 = alloca ptr
  %l154 = alloca ptr
  %l162 = alloca { i64, [3 x i64] }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %l164 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t306 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 18
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l22
  br label %bb2
bb2:
  %t8 = load i64, ptr %l22, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l29, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l29, !tbaa !24
  store i64 %t35, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l26, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb76
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 23
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l50
  br label %bb13
bb13:
  %t62 = load i64, ptr %l50, !tbaa !24
  %t63 = icmp ne i64 %t62, 2
  br i1 %t63, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 90
  store ptr %t67, ptr %l54, !tbaa !29
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t68, i64 0)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t70, ptr %l56
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l54, !tbaa !29
  %t72 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l56
  %t73 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t71, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72)
  store i1 %t73, ptr %l57
  br label %bb17
bb17:
  %t74 = load i1, ptr %l57, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t77 = load i1, ptr %l52, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb20:
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 18
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  store ptr %t84, ptr %l62
  br label %bb22
bb22:
  %t85 = load ptr, ptr %l62, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Body", ptr %t85, i32 0, i32 1
  %t88 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t88, ptr %l8
  %t90 = load { i64, [2 x i64] }, ptr %l8
  %t92 = extractvalue { i64, [2 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 0
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t95 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t96 = getelementptr { i64 }, ptr %t95, i32 0, i32 0
  %t97 = load i64, ptr %t96
  store i64 %t97, ptr %l9, !tbaa !24
  br label %bb25
bb24:
  br label %bb69
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i64, ptr %l9, !tbaa !24
  %t106 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l71
  br label %bb26
bb26:
  %t107 = load i64, ptr %l71, !tbaa !24
  store i64 %t107, ptr %l10, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t111, i64 %t112)
  store ptr %t115, ptr %l75
  br label %bb27
bb27:
  %t116 = load ptr, ptr %l75, !tbaa !29
  store ptr %t116, ptr %l11, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l11, !tbaa !29
  %t120 = getelementptr %"compiler/ast:Func", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %t120, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t117, i32 %t121)
  store { i64, ptr } %t124, ptr %l79
  br label %bb28
bb28:
  %t125 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t125, ptr %l12, !tbaa !27
  %t126 = load ptr, ptr %l11, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Func", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = icmp eq ptr %t129, null
  br i1 %t131, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb36
bb30:
  %t133 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t133, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store i1 %t135, ptr %l85
  br label %bb31
bb31:
  %t136 = load i1, ptr %l85, !tbaa !21
  %t137 = xor i1 %t136, true
  br i1 %t137, label %bb32, label %bb33
bb32:
  %t139 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t139, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t141, ptr %l89
  br label %bb34
bb33:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb35
bb34:
  %t142 = load i1, ptr %l89, !tbaa !21
  %t143 = xor i1 %t142, true
  store i1 %t143, ptr %l87, !tbaa !21
  br label %bb35
bb35:
  %t145 = load i1, ptr %l87, !tbaa !21
  store i1 %t145, ptr %l83, !tbaa !21
  br label %bb36
bb36:
  %t146 = load i1, ptr %l83, !tbaa !21
  br i1 %t146, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb40
bb38:
  %t147 = load i64, ptr %l10, !tbaa !24
  %t150 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t147)
  store i1 %t150, ptr %l94
  br label %bb39
bb39:
  %t151 = load i1, ptr %l94, !tbaa !21
  store i1 %t151, ptr %l91, !tbaa !21
  br label %bb40
bb40:
  %t152 = load i1, ptr %l91, !tbaa !21
  br i1 %t152, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb42:
  br label %bb43
bb43:
  %t153 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t153, i1 true)
  br label %bb44
bb44:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i64, ptr %l10, !tbaa !24
  %t163 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t159, i64 %t160)
  store i64 %t163, ptr %l100
  br label %bb45
bb45:
  %t164 = load i64, ptr %l100, !tbaa !24
  store i64 %t164, ptr %l13, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 0
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/load:Loader", ptr %t171, i32 0, i32 10
  %t174 = load i64, ptr %l13, !tbaa !24
  %t177 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t173, i64 %t174)
  store ptr %t177, ptr %l106
  br label %bb46
bb46:
  %t178 = load ptr, ptr %l106, !tbaa !29
  %t180 = getelementptr %"compiler/load:Module", ptr %t178, i32 0, i32 6
  %t181 = load ptr, ptr %t180, !tbaa !29
  store ptr %t181, ptr %l14, !tbaa !29
  %t183 = load ptr, ptr %l14, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb47, label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_7cf0066f219391e3_f59e2f38f1229917)
  unreachable
bb48:
  br label %bb49
bb49:
  %t187 = load ptr, ptr %l14, !tbaa !29
  %t190 = getelementptr %"compiler/source:Source", ptr %t187, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l15, !tbaa !27
  %t193 = load ptr, ptr %l11, !tbaa !29
  %t195 = getelementptr %"compiler/ast:Func", ptr %t193, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb50, label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_93e3a02800d00d4_2c47855b6b12ccf8)
  unreachable
bb51:
  br label %bb52
bb52:
  %t200 = load ptr, ptr %l11, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Func", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t206 = getelementptr %"compiler/ast:Param", ptr %t203, i32 0, i32 0
  %t207 = getelementptr %"compiler/source:Span", ptr %t206, i32 0, i32 1
  %t208 = load i32, ptr %t207, !tbaa !23
  %t210 = sext i32 %t208 to i64
  store i64 %t210, ptr %l16, !tbaa !24
  %t212 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t212, ptr %l123, !tbaa !27
  %t213 = load i64, ptr %l16, !tbaa !24
  store i64 %t213, ptr %l124, !tbaa !24
  %t214 = load ptr, ptr %l11, !tbaa !29
  %t216 = getelementptr %"compiler/ast:Func", ptr %t214, i32 0, i32 0
  %t217 = getelementptr %"compiler/source:Span", ptr %t216, i32 0, i32 1
  %t218 = load i32, ptr %t217, !tbaa !23
  %t220 = sext i32 %t218 to i64
  store i64 %t220, ptr %l127, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  store i64 %t222, ptr %l128, !tbaa !24
  %t223 = load i64, ptr %l124, !tbaa !24
  %t224 = icmp sge i64 %t223, 0
  br i1 %t224, label %bb53, label %bb54
bb53:
  %t226 = load i64, ptr %l124, !tbaa !24
  %t227 = load i64, ptr %l127, !tbaa !24
  %t228 = icmp sle i64 %t226, %t227
  br i1 %t228, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb)
  unreachable
bb55:
  %t230 = load i64, ptr %l127, !tbaa !24
  %t231 = load i64, ptr %l128, !tbaa !24
  %t232 = icmp sle i64 %t230, %t231
  br i1 %t232, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb)
  unreachable
bb57:
  %t234 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l124, !tbaa !24
  %t237 = load i64, ptr %l127, !tbaa !24
  %t238 = getelementptr i8, ptr %t235, i64 %t236
  %t239 = sub i64 %t237, %t236
  %t240 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t238, 1
  %t242 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t245 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v0, { i64, ptr } %t241, { i64, ptr } %t242)
  %t246 = extractvalue { i32, i64 } %t245, 1
  %t247 = extractvalue { i32, i64 } %t245, 0
  store i32 %t247, ptr %l135
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb60, label %ok.249, !prof !99
ok.249:
  store i64 %t246, ptr %l134
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb)
  unreachable
bb59:
  %t250 = load i64, ptr %l134, !tbaa !24
  store i64 %t250, ptr %l122, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 -1, ptr %l122, !tbaa !24
  br label %bb62
bb62:
  %t251 = load i64, ptr %l122, !tbaa !24
  store i64 %t251, ptr %l17, !tbaa !24
  %t252 = load i64, ptr %l17, !tbaa !24
  %t254 = icmp slt i64 %t252, 0
  br i1 %t254, label %bb63, label %bb64
bb63:
  %t256 = load ptr, ptr %l11, !tbaa !29
  %t258 = getelementptr %"compiler/ast:Func", ptr %t256, i32 0, i32 0
  %t259 = getelementptr %"compiler/source:Span", ptr %t258, i32 0, i32 0
  %t260 = load i32, ptr %t259, !tbaa !23
  %t262 = sext i32 %t260 to i64
  store i64 %t262, ptr %l138, !tbaa !24
  br label %bb65
bb64:
  %t264 = load i64, ptr %l16, !tbaa !24
  %t265 = load i64, ptr %l17, !tbaa !24
  %t268 = add i64 %t264, %t265
  store i64 %t268, ptr %l138, !tbaa !24
  br label %bb65
bb65:
  %t270 = load i64, ptr %l138, !tbaa !24
  store i64 %t270, ptr %l18, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 1
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = getelementptr %"compiler/generic:Program", ptr %t274, i32 0, i32 0
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/load:Loader", ptr %t277, i32 0, i32 4
  %t280 = load ptr, ptr %t279, !tbaa !29
  store ptr %t280, ptr %l148, !tbaa !29
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/check:Checker", ptr %t281, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Program", ptr %t284, i32 0, i32 0
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/load:Loader", ptr %t287, i32 0, i32 10
  %t290 = load i64, ptr %l13, !tbaa !24
  %t293 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t289, i64 %t290)
  store ptr %t293, ptr %l154
  br label %bb66
bb66:
  %t294 = load ptr, ptr %l154, !tbaa !29
  %t296 = getelementptr %"compiler/load:Module", ptr %t294, i32 0, i32 4
  %t297 = load i64, ptr %t296, !tbaa !24
  %t298 = load i64, ptr %l18, !tbaa !24
  %t299 = load i64, ptr %l18, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t305 = add i64 %t299, %t302
  store { i64, [3 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 0
  store i64 3, ptr %t307
  %t309 = insertvalue { i64, i64, i64 } undef, i64 %t297, 0
  %t311 = insertvalue { i64, i64, i64 } %t309, i64 %t298, 1
  %t313 = insertvalue { i64, i64, i64 } %t311, i64 %t305, 2
  %t314 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 1
  store { i64, i64, i64 } %t313, ptr %t314
  %t315 = load { i64, [3 x i64] }, ptr %t306
  store { i64, [3 x i64] } %t315, ptr %l162
  %t316 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrReceiverWritable(ptr %v0)
  store %"compiler/diagmsg:Msg" %t316, ptr %l163
  br label %bb67
bb67:
  %t317 = load ptr, ptr %l148, !tbaa !29
  %t318 = load { i64, [3 x i64] }, ptr %l162
  %t319 = load %"compiler/diagmsg:Msg", ptr %l163
  %t320 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t317, { i64, [3 x i64] } %t318, %"compiler/diagmsg:Msg" %t319)
  store i64 %t320, ptr %l164
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s4)
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_4caebcac4cec7311_26f3d9a9847d99e5)
  unreachable
bb74:
  call void @__olang_scope_close(ptr %s2)
  br label %bb75
bb75:
  %t321 = load i64, ptr %l6, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l6, !tbaa !24
  br label %bb9
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %a2)
  store i32 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i32, ptr %l13, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l15, !tbaa !24
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l17
  br label %bb3
bb3:
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  br label %bb24
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t24, i64 %t25)
  store { i64, ptr } %t28, ptr %l22
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t29, ptr %l23, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr ptr, ptr %t32, i64 0
  %t34 = load ptr, ptr %t33, !tbaa !39
  store ptr %t34, ptr %l7, !tbaa !29
  %t36 = load ptr, ptr %l7, !tbaa !29
  store ptr %t36, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l25, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 9}
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l7, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l8, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l8, !tbaa !29
  %t55 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  store i32 %t55, ptr %l33
  br label %bb13
bb13:
  %t56 = load i32, ptr %l3, !tbaa !23
  %t57 = load i32, ptr %l33, !tbaa !23
  %t59 = icmp eq i32 %t57, %t56
  br i1 %t59, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_8ded448c56d61a9a_a1642562b2a40e16)
  unreachable
bb22:
  br label %bb23
bb23:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb2
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4, ptr %a5, i32 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l24 = alloca i32
  %l31 = alloca ptr
  %l36 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l56 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i32
  %l68 = alloca i1
  %l72 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca i1
  %l85 = alloca i1
  %l86 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l91 = alloca i32
  %l95 = alloca ptr
  %l99 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca ptr
  %l103 = alloca %"compiler/source:Span"
  %l104 = alloca i32
  %l108 = alloca ptr
  %l116 = alloca i64
  %l119 = alloca i64
  %l137 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca { i64, ptr }
  %l144 = alloca %"compiler/source:Span"
  %l148 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l167 = alloca ptr
  %l168 = alloca ptr
  %l170 = alloca i32
  %l173 = alloca ptr
  %l174 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  %t181 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a5, ptr %l5
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l6, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i32, ptr %l24, !tbaa !23
  store i32 %t6, ptr %l9, !tbaa !23
  %t7 = load i32, ptr %l9, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t13, %"compiler/source:Span" %t14, i32 %t15, i64 0)
  store ptr %t19, ptr %l31
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load ptr, ptr %l31, !tbaa !29
  store ptr %t20, ptr %rv
  br label %ret
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l9, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPatOf(ptr %v0, ptr %v1, ptr %t21, ptr %t22, i32 %a3, i32 %t24)
  store i1 %t29, ptr %l36
  br label %bb6
bb6:
  %t30 = load i1, ptr %l36, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l38, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t34)
  store %"compiler/source:Span" %t36, ptr %l40
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l9, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t37, i32 %t38)
  store { i64, ptr } %t41, ptr %l43
  br label %bb10
bb10:
  %t42 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l44, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l45, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t50)
  store %"compiler/source:Span" %t52, ptr %l47
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l45, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l47
  %t55 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t53, %"compiler/source:Span" %t54)
  store { i64, ptr } %t55, ptr %l48
  br label %bb12
bb12:
  %t56 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t57 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s2, { i64, ptr } %t56)
  store { i64, ptr } %t57, ptr %l49
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatType(ptr %s2, ptr %s2, ptr %v0, { i64, ptr } %t65, { i64, ptr } %t64)
  store %"compiler/diagmsg:Msg" %t67, ptr %l51
  br label %bb14
bb14:
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l40
  %t70 = load %"compiler/diagmsg:Msg", ptr %l51
  %t71 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t68, %"compiler/source:Span" %t69, %"compiler/diagmsg:Msg" %t70)
  store i64 %t71, ptr %l52
  br label %bb15
bb15:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l1
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t72, %"compiler/source:Span" %t73, i32 %t74, i64 0)
  store ptr %t78, ptr %l56
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t79 = load ptr, ptr %l56, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l9, !tbaa !23
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %s0, ptr %t80, i32 %t81)
  store ptr %t84, ptr %l59
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l59, !tbaa !29
  store ptr %t85, ptr %l10, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l1
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t94 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v2, ptr %s0, ptr %v5, ptr %t86, %"compiler/source:Span" %t87, { i64, ptr } %a4, ptr %t89, i1 true)
  %t95 = extractvalue { i32, { i64, ptr } } %t94, 1
  %t96 = extractvalue { i32, { i64, ptr } } %t94, 0
  store i32 %t96, ptr %l66
  %t97 = icmp ne i32 %t96, 0
  br i1 %t97, label %bb20, label %ok.98, !prof !99
ok.98:
  store { i64, ptr } %t95, ptr %l65
  br label %bb19
bb19:
  %t99 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t99, ptr %l60, !tbaa !27
  br label %bb23
bb20:
  %t100 = load i32, ptr %l66, !tbaa !23
  %t101 = ashr i32 %t100, 16
  %t103 = icmp eq i32 %t101, 1
  store i1 %t103, ptr %l68, !tbaa !21
  br label %bb21
bb21:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l1
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t110 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t104, %"compiler/source:Span" %t105, i32 %t106, i64 0)
  store ptr %t110, ptr %l72
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t111 = load ptr, ptr %l72, !tbaa !29
  store ptr %t111, ptr %rv
  br label %ret
bb23:
  %t112 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t112, ptr %l11, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l1
  %t115 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t113, %"compiler/source:Span" %t114, i32 %t115, i64 1)
  store ptr %t119, ptr %l76
  br label %bb24
bb24:
  %t120 = load ptr, ptr %l76, !tbaa !29
  store ptr %t120, ptr %l12, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  store ptr %t121, ptr %l13, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l6, !tbaa !23
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t127, ptr %l80
  br label %bb25
bb25:
  %t128 = load i1, ptr %l80, !tbaa !21
  br i1 %t128, label %bb26, label %bb27
bb26:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 2
  %t135 = load i32, ptr %l6, !tbaa !23
  %t138 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t134, i32 %t135)
  store i1 %t138, ptr %l85
  br label %bb28
bb27:
  br label %bb37
bb28:
  %t139 = load i1, ptr %l85, !tbaa !21
  br i1 %t139, label %bb29, label %bb30
bb29:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l86, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t141, ptr %l87
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l88, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t143, ptr %l89
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t144, ptr %l90, !tbaa !23
  store i32 19, ptr %l91
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l1
  %t147 = load ptr, ptr %l5, !tbaa !29
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t145, %"compiler/source:Span" %t146, ptr %t147)
  store ptr %t151, ptr %l95
  br label %bb31
bb30:
  br label %bb35
bb31:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l1
  %t154 = load i32, ptr %l6, !tbaa !23
  %t158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t152, %"compiler/source:Span" %t153, i32 %t154)
  store ptr %t158, ptr %l99
  br label %bb32
bb32:
  %t159 = load ptr, ptr %l99, !tbaa !29
  %t160 = load ptr, ptr %l88, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l89
  %t162 = load i32, ptr %l90, !tbaa !23
  %t163 = load i32, ptr %l91, !range !{i32 0, i32 51}
  %t164 = load ptr, ptr %l95, !tbaa !29
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %t160, %"compiler/source:Span" %t161, i32 %t162, i32 %t163, ptr %t164, ptr %t159)
  store ptr %t166, ptr %l101
  br label %bb33
bb33:
  %t167 = load ptr, ptr %l86, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l87
  %t169 = load ptr, ptr %l101, !tbaa !29
  %t170 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v0, ptr %v5, ptr %t167, %"compiler/source:Span" %t168, ptr %t169)
  store ptr %t170, ptr %l102
  br label %bb34
bb34:
  %t171 = load ptr, ptr %l102, !tbaa !29
  store ptr %t171, ptr %l12, !tbaa !29
  br label %bb35
bb35:
  %t172 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t172, ptr %l103
  %t173 = load i32, ptr %l9, !tbaa !23
  store i32 %t173, ptr %l104, !tbaa !23
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l1
  %t176 = load ptr, ptr %l5, !tbaa !29
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v5, ptr %t174, %"compiler/source:Span" %t175, ptr %t176)
  store ptr %t180, ptr %l108
  br label %bb36
bb36:
  store { i64, [4 x i64] } zeroinitializer, ptr %t181
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 0
  store i64 2, ptr %t182
  %t183 = load %"compiler/source:Span", ptr %l103
  %t184 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t183, 0
  %t185 = load i32, ptr %l104, !tbaa !23
  %t186 = insertvalue { %"compiler/source:Span", i32, ptr } %t184, i32 %t185, 1
  %t187 = load ptr, ptr %l108, !tbaa !29
  %t188 = insertvalue { %"compiler/source:Span", i32, ptr } %t186, ptr %t187, 2
  %t189 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t188, ptr %t189
  %t190 = load { i64, [4 x i64] }, ptr %t181
  %t192 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store { i64, [4 x i64] } %t190, ptr %t192
  store ptr %t192, ptr %l13, !tbaa !29
  br label %bb37
bb37:
  store i64 0, ptr %l14, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  store i64 %t196, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t198 = load i64, ptr %l15, !tbaa !24
  %t199 = load i64, ptr %l14, !tbaa !24
  %t202 = icmp sgt i64 %t198, %t199
  br i1 %t202, label %bb38, label %bb39
bb38:
  %t204 = load i64, ptr %l16, !tbaa !24
  %t206 = icmp sgt i64 %t204, 0
  br i1 %t206, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb43
bb40:
  %t208 = load i64, ptr %l15, !tbaa !24
  %t209 = load i64, ptr %l14, !tbaa !24
  %t212 = sub i64 %t208, %t209
  %t213 = load i64, ptr %l16, !tbaa !24
  %t216 = add i64 %t212, %t213
  %t218 = sub i64 %t216, 1
  %t219 = load i64, ptr %l16, !tbaa !24
  %t222 = sdiv i64 %t218, %t219
  store i64 %t222, ptr %l119, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb42
bb42:
  %t224 = load i64, ptr %l119, !tbaa !24
  store i64 %t224, ptr %l116, !tbaa !24
  br label %bb43
bb43:
  %t225 = load i64, ptr %l116, !tbaa !24
  store i64 %t225, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  %t226 = load i64, ptr %l18, !tbaa !24
  %t227 = load i64, ptr %l17, !tbaa !24
  %t230 = icmp slt i64 %t226, %t227
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb45, label %bb46
bb45:
  br label %bb62
bb46:
  br label %bb47
bb47:
  %t234 = load i64, ptr %l14, !tbaa !24
  %t235 = load i64, ptr %l18, !tbaa !24
  %t236 = load i64, ptr %l16, !tbaa !24
  %t239 = mul i64 %t235, %t236
  %t242 = add i64 %t234, %t239
  store i64 %t242, ptr %l19, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t244, ptr %l137, !tbaa !27
  %t245 = load i64, ptr %l19, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr ptr, ptr %t248, i64 %t245
  %t250 = load ptr, ptr %t249, !tbaa !39
  %t252 = call i1 @compiler_2fcheck_2eisWild(ptr %v5, ptr %t250)
  store i1 %t252, ptr %l140
  br label %bb48
bb48:
  %t253 = load i1, ptr %l140, !tbaa !21
  br i1 %t253, label %bb49, label %bb50
bb49:
  br label %bb61
bb50:
  br label %bb51
bb51:
  %t254 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t254, ptr %l141, !tbaa !27
  %t255 = load i64, ptr %l19, !tbaa !24
  %t257 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr ptr, ptr %t258, i64 %t255
  %t260 = load ptr, ptr %t259, !tbaa !39
  %t262 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v5, ptr %t260)
  store %"compiler/source:Span" %t262, ptr %l144
  br label %bb52
bb52:
  %t263 = load %"compiler/source:Span", ptr %l144
  store %"compiler/source:Span" %t263, ptr %l20
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l20
  %t266 = load %"compiler/source:Span", ptr %l20
  %t267 = load ptr, ptr %l13, !tbaa !29
  store ptr %t267, ptr %l148, !tbaa !29
  %t268 = load ptr, ptr %l10, !tbaa !29
  %t270 = getelementptr %"compiler/check:fieldSet", ptr %t268, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  store { i64, ptr } %t271, ptr %l150, !tbaa !27
  %t272 = load i64, ptr %l19, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i32, ptr %t275, i64 %t272
  %t277 = load i32, ptr %t276, !tbaa !33
  %t278 = load ptr, ptr %l148, !tbaa !29
  %t279 = call ptr @__olang_scope_of(ptr %t278, ptr null)
  %t280 = ptrtoint ptr %t279 to i64
  %t282 = inttoptr i64 %t280 to ptr
  %t286 = load ptr, ptr %l148, !tbaa !29
  %t288 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %t282, ptr %v5, ptr %t264, %"compiler/source:Span" %t265, %"compiler/source:Span" %t266, ptr %t286, i32 %t277)
  store ptr %t288, ptr %l154
  br label %bb53
bb53:
  %t289 = load ptr, ptr %l154, !tbaa !29
  store ptr %t289, ptr %l21, !tbaa !29
  %t290 = load ptr, ptr %l21, !tbaa !29
  %t292 = icmp eq ptr %t290, null
  br i1 %t292, label %bb54, label %bb55
bb54:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l1
  %t296 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t300 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t294, %"compiler/source:Span" %t295, i32 %t296, i64 0)
  store ptr %t300, ptr %l160
  br label %bb56
bb55:
  br label %bb57
bb56:
  call void @__olang_scope_close(ptr %s0)
  %t301 = load ptr, ptr %l160, !tbaa !29
  store ptr %t301, ptr %rv
  br label %ret
bb57:
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l161, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t303, ptr %l162
  %t304 = load ptr, ptr %l12, !tbaa !29
  store ptr %t304, ptr %l163, !tbaa !29
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l164, !tbaa !29
  %t306 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t306, ptr %l165, !tbaa !27
  %t307 = load i64, ptr %l19, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr ptr, ptr %t310, i64 %t307
  %t312 = load ptr, ptr %t311, !tbaa !39
  store ptr %t312, ptr %l167, !tbaa !29
  %t313 = load ptr, ptr %l21, !tbaa !29
  store ptr %t313, ptr %l168, !tbaa !29
  %t314 = load ptr, ptr %l21, !tbaa !29
  %t316 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v5, ptr %t314)
  store i32 %t316, ptr %l170
  br label %bb58
bb58:
  %t319 = load ptr, ptr %l164, !tbaa !29
  %t320 = load ptr, ptr %l167, !tbaa !29
  %t321 = load ptr, ptr %l168, !tbaa !29
  %t322 = load i32, ptr %l170, !tbaa !23
  %t325 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v5, ptr %v5, ptr %v4, ptr %v5, ptr %t319, ptr %t320, ptr %t321, i32 %t322, ptr %a7, i64 %a8)
  store ptr %t325, ptr %l173
  br label %bb59
bb59:
  %t326 = load ptr, ptr %l161, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l162
  %t328 = load ptr, ptr %l163, !tbaa !29
  %t329 = load ptr, ptr %l173, !tbaa !29
  %t330 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v5, ptr %v5, ptr %v5, ptr %t326, %"compiler/source:Span" %t327, ptr %t328, ptr %t329)
  store ptr %t330, ptr %l174
  br label %bb60
bb60:
  %t331 = load ptr, ptr %l174, !tbaa !29
  store ptr %t331, ptr %l12, !tbaa !29
  br label %bb61
bb61:
  %t332 = load i64, ptr %l18, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l18, !tbaa !24
  br label %bb44
bb62:
  %t336 = load ptr, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t336, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuppliedAtomic(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4, i32 %a5, i32 %a6, { i64, ptr } %a7, { i64, ptr } %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l39 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l51 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l59 = alloca { i64, ptr }
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l62 = alloca i64
  %l65 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l79 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l86 = alloca i1
  %l89 = alloca ptr
  %l99 = alloca i1
  %l102 = alloca i1
  %l104 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l109 = alloca i64
  %l112 = alloca ptr
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca i64
  %l123 = alloca { i64, ptr }
  %l126 = alloca %"compiler/diagmsg:Msg"
  %l127 = alloca i64
  %l130 = alloca ptr
  %l134 = alloca i64
  %l136 = alloca ptr
  %l137 = alloca %"compiler/source:Span"
  %l143 = alloca i32
  %l154 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l162 = alloca ptr
  %l167 = alloca i32
  %l170 = alloca %"compiler/source:Span"
  %l171 = alloca i32
  %l172 = alloca i32
  %l173 = alloca i32
  %l177 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca ptr
  %t246 = alloca { i64, [5 x i64] }, align 8
  %t318 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a5, ptr %l5
  store i32 %a6, ptr %l6
  store { i64, ptr } %a7, ptr %l7
  store { i64, ptr } %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 24, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t4 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t2, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t4, ptr %l20
  br label %bb1
bb1:
  %t5 = load i1, ptr %l20, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i32 25, ptr %l9
  store i64 1, ptr %l10, !tbaa !24
  br label %bb20
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s2, { i64, ptr } %t7, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t9, ptr %l23
  br label %bb4
bb4:
  %t10 = load i1, ptr %l23, !tbaa !21
  br i1 %t10, label %bb5, label %bb6
bb5:
  store i32 26, ptr %l9
  store i64 1, ptr %l10, !tbaa !24
  br label %bb19
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s4, { i64, ptr } %t12, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t14, ptr %l26
  br label %bb7
bb7:
  %t15 = load i1, ptr %l26, !tbaa !21
  br i1 %t15, label %bb8, label %bb9
bb8:
  store i32 27, ptr %l9
  store i64 1, ptr %l10, !tbaa !24
  br label %bb18
bb9:
  store %olang.scope zeroinitializer, ptr %s6
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s6, { i64, ptr } %t17, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t19, ptr %l29
  br label %bb10
bb10:
  %t20 = load i1, ptr %l29, !tbaa !21
  br i1 %t20, label %bb11, label %bb12
bb11:
  store i32 28, ptr %l9
  store i64 2, ptr %l10, !tbaa !24
  br label %bb17
bb12:
  store %olang.scope zeroinitializer, ptr %s8
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t24 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s8, { i64, ptr } %t22, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store i1 %t24, ptr %l32
  br label %bb13
bb13:
  %t25 = load i1, ptr %l32, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s8)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s6)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb20:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l6, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l39
  br label %bb21
bb21:
  %t39 = load i1, ptr %l39, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s10
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l41, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t43, ptr %l42
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t44, i32 %t45)
  store { i64, ptr } %t48, ptr %l45
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t49 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t57 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotInteger(ptr %s10, ptr %v0, { i64, ptr } %t55)
  store %"compiler/diagmsg:Msg" %t57, ptr %l47
  br label %bb25
bb25:
  %t58 = load ptr, ptr %l41, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l42
  %t60 = load %"compiler/diagmsg:Msg", ptr %l47
  %t61 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t58, %"compiler/source:Span" %t59, %"compiler/diagmsg:Msg" %t60)
  store i64 %t61, ptr %l48
  br label %bb26
bb26:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l1
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t62, %"compiler/source:Span" %t63)
  store ptr %t66, ptr %l51
  br label %bb27
bb27:
  %t67 = load ptr, ptr %l51, !tbaa !29
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t67, ptr %rv
  br label %ret
bb28:
  %t69 = load i32, ptr %l6, !tbaa !23
  %t71 = icmp sgt i32 %t69, 14
  br i1 %t71, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s11
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l55, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t74, ptr %l56
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l5, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l59
  br label %bb31
bb30:
  br label %bb35
bb31:
  %t80 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicWidth(ptr %s11, ptr %v0, { i64, ptr } %t86)
  store %"compiler/diagmsg:Msg" %t88, ptr %l61
  br label %bb32
bb32:
  %t89 = load ptr, ptr %l55, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l56
  %t91 = load %"compiler/diagmsg:Msg", ptr %l61
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t89, %"compiler/source:Span" %t90, %"compiler/diagmsg:Msg" %t91)
  store i64 %t92, ptr %l62
  br label %bb33
bb33:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l1
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t93, %"compiler/source:Span" %t94)
  store ptr %t97, ptr %l65
  br label %bb34
bb34:
  %t98 = load ptr, ptr %l65, !tbaa !29
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t98, ptr %rv
  br label %ret
bb35:
  %t102 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v5, ptr %a4)
  store ptr %t102, ptr %l68
  br label %bb36
bb36:
  %t103 = load ptr, ptr %l68, !tbaa !29
  store ptr %t103, ptr %l11, !tbaa !29
  %t104 = load ptr, ptr %l11, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb37, label %bb38
bb37:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l71, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t113 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t109, ptr %t110)
  store %"compiler/source:Span" %t113, ptr %l74
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t114 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotPlace(ptr %v0)
  store %"compiler/diagmsg:Msg" %t114, ptr %l75
  br label %bb40
bb40:
  %t115 = load ptr, ptr %l71, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l74
  %t117 = load %"compiler/diagmsg:Msg", ptr %l75
  %t118 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t115, %"compiler/source:Span" %t116, %"compiler/diagmsg:Msg" %t117)
  store i64 %t118, ptr %l76
  br label %bb41
bb41:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l1
  %t123 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t119, %"compiler/source:Span" %t120)
  store ptr %t123, ptr %l79
  br label %bb42
bb42:
  %t124 = load ptr, ptr %l79, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t124, ptr %rv
  br label %ret
bb43:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l81, !tbaa !29
  %t127 = load ptr, ptr %l11, !tbaa !29
  store ptr %t127, ptr %l82, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l3, !tbaa !29
  %t132 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t128, ptr %t129)
  store %"compiler/source:Span" %t132, ptr %l85
  br label %bb44
bb44:
  %t133 = load ptr, ptr %l81, !tbaa !29
  %t134 = load ptr, ptr %l82, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l85
  %t136 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v5, ptr %t133, ptr %t134, %"compiler/source:Span" %t135)
  store i1 %t136, ptr %l86
  br label %bb45
bb45:
  %t137 = load i1, ptr %l86, !tbaa !21
  br i1 %t137, label %bb46, label %bb47
bb46:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load %"compiler/source:Span", ptr %l1
  %t142 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t138, %"compiler/source:Span" %t139)
  store ptr %t142, ptr %l89
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t143 = load ptr, ptr %l89, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t143, ptr %rv
  br label %ret
bb49:
  %t145 = load i32, ptr %l9, !range !{i32 0, i32 51}
  %t147 = trunc i64 24 to i32
  %t148 = icmp eq i32 %t145, %t147
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb50, label %bb51
bb50:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v5, ptr %t152, ptr %t153)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t156 = load i32, ptr %l9, !range !{i32 0, i32 51}
  %t158 = trunc i64 24 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb54, label %bb55
bb54:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l11, !tbaa !29
  %t167 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v5, ptr %t163, ptr %t164)
  store i1 %t167, ptr %l102
  br label %bb56
bb55:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb57
bb56:
  %t168 = load i1, ptr %l102, !tbaa !21
  %t169 = xor i1 %t168, true
  store i1 %t169, ptr %l99, !tbaa !21
  br label %bb57
bb57:
  %t171 = load i1, ptr %l99, !tbaa !21
  br i1 %t171, label %bb58, label %bb59
bb58:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l104, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l3, !tbaa !29
  %t177 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t173, ptr %t174)
  store %"compiler/source:Span" %t177, ptr %l107
  br label %bb60
bb59:
  br label %bb64
bb60:
  %t178 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotWritable(ptr %v0)
  store %"compiler/diagmsg:Msg" %t178, ptr %l108
  br label %bb61
bb61:
  %t179 = load ptr, ptr %l104, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l107
  %t181 = load %"compiler/diagmsg:Msg", ptr %l108
  %t182 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t179, %"compiler/source:Span" %t180, %"compiler/diagmsg:Msg" %t181)
  store i64 %t182, ptr %l109
  br label %bb62
bb62:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l1
  %t187 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t183, %"compiler/source:Span" %t184)
  store ptr %t187, ptr %l112
  br label %bb63
bb63:
  %t188 = load ptr, ptr %l112, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t188, ptr %rv
  br label %ret
bb64:
  %t190 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = load i64, ptr %l10, !tbaa !24
  %t196 = icmp ne i64 %t192, %t193
  br i1 %t196, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s16
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l118, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t199, ptr %l119
  %t200 = load i64, ptr %l10, !tbaa !24
  store i64 %t200, ptr %l120, !tbaa !24
  %t201 = load i64, ptr %l10, !tbaa !24
  %t203 = icmp eq i64 %t201, 1
  br i1 %t203, label %bb67, label %bb68
bb66:
  br label %bb73
bb67:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) }, ptr %l123, !tbaa !27
  br label %bb69
bb68:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l123, !tbaa !27
  br label %bb69
bb69:
  %t205 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = load i64, ptr %l120, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t211 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s16, ptr %v0, i64 %t208, { i64, ptr } %t209, i64 %t207)
  store %"compiler/diagmsg:Msg" %t211, ptr %l126
  br label %bb70
bb70:
  %t212 = load ptr, ptr %l118, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l119
  %t214 = load %"compiler/diagmsg:Msg", ptr %l126
  %t215 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t212, %"compiler/source:Span" %t213, %"compiler/diagmsg:Msg" %t214)
  store i64 %t215, ptr %l127
  br label %bb71
bb71:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l1
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t216, %"compiler/source:Span" %t217)
  store ptr %t220, ptr %l130
  br label %bb72
bb72:
  %t221 = load ptr, ptr %l130, !tbaa !29
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t221, ptr %rv
  br label %ret
bb73:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/check:Checker", ptr %t223, i32 0, i32 43
  %t227 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t225)
  store i64 %t227, ptr %l134
  br label %bb74
bb74:
  %t228 = load i64, ptr %l134, !tbaa !24
  store i64 %t228, ptr %l12, !tbaa !24
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/check:Checker", ptr %t229, i32 0, i32 43
  store ptr %t231, ptr %l136, !tbaa !29
  %t232 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t232, ptr %l137
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 2
  %t239 = load i32, ptr %l5, !tbaa !23
  %t240 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t244 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t238, i32 %t239, i64 %t240)
  store i32 %t244, ptr %l143
  br label %bb75
bb75:
  %t245 = load ptr, ptr %l11, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t246
  %t247 = getelementptr { i64, [5 x i64] }, ptr %t246, i32 0, i32 0
  store i64 3, ptr %t247
  %t248 = load %"compiler/source:Span", ptr %l137
  %t249 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t248, 0
  %t250 = load i32, ptr %l143, !tbaa !23
  %t251 = insertvalue { %"compiler/source:Span", i32, ptr } %t249, i32 %t250, 1
  %t253 = insertvalue { %"compiler/source:Span", i32, ptr } %t251, ptr %t245, 2
  %t254 = getelementptr { i64, [5 x i64] }, ptr %t246, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t253, ptr %t254
  %t255 = load { i64, [5 x i64] }, ptr %t246
  %t257 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t255, ptr %t257
  %t258 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t258, ptr %t257)
  br label %bb76
bb76:
  %t260 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t260, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t262 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 0
  store i64 %t264, ptr %l15, !tbaa !24
  br label %bb77
bb77:
  %t266 = load i64, ptr %l14, !tbaa !24
  %t267 = load i64, ptr %l15, !tbaa !24
  %t270 = icmp slt i64 %t266, %t267
  %t272 = xor i1 %t270, true
  br i1 %t272, label %bb78, label %bb79
bb78:
  br label %bb84
bb79:
  br label %bb80
bb80:
  %t274 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t274, ptr %l154, !tbaa !27
  %t275 = load i64, ptr %l14, !tbaa !24
  %t277 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr ptr, ptr %t278, i64 %t275
  %t280 = load ptr, ptr %t279, !tbaa !39
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/check:Checker", ptr %t282, i32 0, i32 43
  store ptr %t284, ptr %l158, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = load i32, ptr %l5, !tbaa !23
  %t291 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v4, ptr %v0, ptr %t285, ptr %t280, i32 %t287)
  store ptr %t291, ptr %l162
  br label %bb81
bb81:
  %t292 = load ptr, ptr %l158, !tbaa !29
  %t293 = load ptr, ptr %l162, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t292, ptr %t293)
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t294 = load i64, ptr %l14, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l14, !tbaa !24
  br label %bb77
bb84:
  %t298 = load i32, ptr %l9, !range !{i32 0, i32 51}
  %t300 = trunc i64 25 to i32
  %t301 = icmp eq i32 %t298, %t300
  br i1 %t301, label %bb85, label %bb86
bb85:
  %t303 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t303, ptr %l167, !tbaa !23
  br label %bb87
bb86:
  %t305 = load i32, ptr %l5, !tbaa !23
  store i32 %t305, ptr %l167, !tbaa !23
  br label %bb87
bb87:
  %t307 = load i32, ptr %l167, !tbaa !23
  %t308 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t308, ptr %l170
  store i32 %t307, ptr %l171, !tbaa !23
  %t310 = load i32, ptr %l9, !range !{i32 0, i32 51}
  store i32 %t310, ptr %l172
  store i32 0, ptr %l173
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/check:Checker", ptr %t311, i32 0, i32 43
  %t314 = load i64, ptr %l12, !tbaa !24
  %t317 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v5, ptr %t313, i64 %t314)
  store { i64, ptr } %t317, ptr %l177
  br label %bb88
bb88:
  store { i64, [5 x i64] } zeroinitializer, ptr %t318
  %t319 = getelementptr { i64, [5 x i64] }, ptr %t318, i32 0, i32 0
  store i64 9, ptr %t319
  %t320 = load %"compiler/source:Span", ptr %l170
  %t321 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t320, 0
  %t322 = load i32, ptr %l171, !tbaa !23
  %t323 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t321, i32 %t322, 1
  %t324 = load i32, ptr %l172, !range !{i32 0, i32 51}
  %t325 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t323, i32 %t324, 2
  %t326 = load i32, ptr %l173, !range !{i32 0, i32 4}
  %t327 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t325, i32 %t326, 3
  %t328 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t329 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t327, { i64, ptr } %t328, 4
  %t330 = getelementptr { i64, [5 x i64] }, ptr %t318, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t329, ptr %t330
  %t331 = load { i64, [5 x i64] }, ptr %t318
  %t333 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t331, ptr %t333
  call void @__olang_scope_close(ptr %s0)
  store ptr %t333, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitHeader(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l32 = alloca %"compiler/generic:Unmet"
  %l35 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l56 = alloca i64
  %l63 = alloca i32
  %l71 = alloca { i64, ptr }
  %l79 = alloca i1
  %l81 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca ptr
  %l89 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca i32
  %l95 = alloca i32
  %l101 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i64
  %l115 = alloca %"compiler/generic:Context"
  %l117 = alloca %"compiler/generic:Context"
  %l122 = alloca i32
  %l130 = alloca { i64, ptr }
  %l136 = alloca i1
  %l138 = alloca ptr
  %l140 = alloca %"compiler/source:Span"
  %l141 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca { i64, ptr }
  %l145 = alloca %"compiler/diagmsg:Msg"
  %l146 = alloca i64
  %l151 = alloca i1
  %l155 = alloca i1
  %l159 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca { i64, ptr }
  %l163 = alloca %"compiler/source:Span"
  %l167 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %l173 = alloca i1
  %l185 = alloca { i64, ptr }
  %l191 = alloca i1
  %l194 = alloca i1
  %l197 = alloca i1
  %l200 = alloca i32
  %l202 = alloca ptr
  %l204 = alloca ptr
  %l209 = alloca i32
  %l213 = alloca i32
  %l218 = alloca [1 x i32]
  %l219 = alloca { i64, ptr }
  %l221 = alloca i1
  %l225 = alloca i1
  %l227 = alloca ptr
  %l229 = alloca %"compiler/source:Span"
  %l230 = alloca ptr
  %l232 = alloca %"compiler/source:Span"
  %l233 = alloca { i64, ptr }
  %l234 = alloca %"compiler/diagmsg:Msg"
  %l235 = alloca i64
  %l240 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l244 = alloca i64
  %l245 = alloca { i64, ptr }
  %l247 = alloca i64
  %l249 = alloca i64
  %l250 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l267 = alloca %"compiler/generic:Unmet"
  %l270 = alloca i1
  %l272 = alloca ptr
  %l274 = alloca %"compiler/source:Span"
  %l277 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l282 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l288 = alloca %"compiler/diagmsg:Msg"
  %l289 = alloca i64
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %t179 = alloca %"compiler/generic:Context", align 8
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
  store i1 true, ptr %l35, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l35, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l35, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:TypeDecl", ptr %t13, i32 0, i32 3
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l3, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  store ptr %t18, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t19 = load ptr, ptr %l41, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l41, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 5}
  %t25 = icmp eq i64 %t23, 2
  store i1 %t25, ptr %l42, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l42, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr { i64, [6 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t29, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr { i64, [6 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t35, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36
  store { i64, ptr } %t37, ptr %l5, !tbaa !27
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr { i64, [6 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t41, i32 0, i32 2
  %t43 = load { i64, ptr }, ptr %t42
  store { i64, ptr } %t43, ptr %l6, !tbaa !27
  br label %bb11
bb10:
  br label %bb148
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i64, ptr %l1, !tbaa !24
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeDecl", ptr %t50, i32 0, i32 0
  %t53 = load i32, ptr %t52, !tbaa !23
  %t57 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t48, i64 %t49, i32 %t53)
  store i64 %t57, ptr %l56
  br label %bb12
bb12:
  %t58 = load i64, ptr %l56, !tbaa !24
  store i64 %t58, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t61 = icmp slt i64 %t59, 0
  br i1 %t61, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t72 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t66, i64 %t67, i64 %t68)
  store i32 %t72, ptr %l63
  br label %bb16
bb16:
  %t73 = load i32, ptr %l63, !tbaa !23
  store i32 %t73, ptr %l8, !tbaa !23
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t74, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  store i64 %t78, ptr %l11, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l11, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb18, label %bb19
bb18:
  br label %bb32
bb19:
  br label %bb20
bb20:
  %t88 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t88, ptr %l71, !tbaa !27
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr ptr, ptr %t92, i64 %t89
  %t94 = load ptr, ptr %t93, !tbaa !39
  store ptr %t94, ptr %l12, !tbaa !29
  %t96 = load ptr, ptr %l12, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Func", ptr %t96, i32 0, i32 3
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Sig", ptr %t99, i32 0, i32 7
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t106 = icmp sgt i64 %t104, 0
  br i1 %t106, label %bb21, label %bb22
bb21:
  %t108 = load ptr, ptr %l12, !tbaa !29
  %t110 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v1, ptr %t108)
  store i1 %t110, ptr %l81
  br label %bb23
bb22:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb24
bb23:
  %t111 = load i1, ptr %l81, !tbaa !21
  %t112 = xor i1 %t111, true
  store i1 %t112, ptr %l79, !tbaa !21
  br label %bb24
bb24:
  %t114 = load i1, ptr %l79, !tbaa !21
  br i1 %t114, label %bb25, label %bb26
bb25:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  store ptr %t118, ptr %l84, !tbaa !29
  %t119 = load i32, ptr %l8, !tbaa !23
  store i32 %t119, ptr %l85, !tbaa !23
  %t120 = load ptr, ptr %l12, !tbaa !29
  store ptr %t120, ptr %l86, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  store ptr %t126, ptr %l89, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t131 = load i32, ptr %l8, !tbaa !23
  %t134 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l93
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t135 = load ptr, ptr %l89, !tbaa !29
  %t136 = load i32, ptr %l93, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t137, ptr %l94
  br label %bb28
bb28:
  %t138 = load ptr, ptr %l84, !tbaa !29
  %t139 = load i32, ptr %l85, !tbaa !23
  %t140 = load ptr, ptr %l86, !tbaa !29
  %t141 = load i32, ptr %l94, !tbaa !23
  %t142 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTraitSig(ptr %v0, ptr %v1, ptr %t138, i32 %t139, ptr %t140, i32 %t141)
  store i32 %t142, ptr %l95
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t143 = load i64, ptr %l10, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l10, !tbaa !24
  br label %bb17
bb32:
  %t147 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t151 = icmp eq i64 %t149, 0
  br i1 %t151, label %bb33, label %bb34
bb33:
  %t153 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t157 = icmp eq i64 %t155, 0
  store i1 %t157, ptr %l101, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb35
bb35:
  %t159 = load i1, ptr %l101, !tbaa !21
  br i1 %t159, label %bb36, label %bb37
bb36:
  br label %ret
bb37:
  br label %bb38
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l1, !tbaa !24
  %t162 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t160, i64 -1, i64 %t161, i32 %t162, i32 0)
  store ptr %t166, ptr %l108
  br label %bb39
bb39:
  %t167 = load ptr, ptr %l108, !tbaa !29
  store ptr %t167, ptr %l109, !tbaa !29
  %t169 = ptrtoint ptr %v0 to i64
  store i64 %t169, ptr %l110, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t170, label %bb40, label %bb41
bb40:
  %t172 = call ptr @__olang_region_make(ptr %v0)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l110, !tbaa !24
  br label %bb41
bb41:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t178 = load i32, ptr %l8, !tbaa !23
  %t180 = load i64, ptr %l110
  %t181 = inttoptr i64 %t180 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %t179, ptr %v0, ptr %t181, ptr %t177, i32 %t178)
  call void @llvm.memmove.p0.p0.i64(ptr %l115, ptr %t179, i64 160, i1 false)
  br label %bb42
bb42:
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t184, label %bb43, label %bb44
bb43:
  %t186 = load i64, ptr %l110
  %t187 = inttoptr i64 %t186 to ptr
  %t188 = getelementptr %"compiler/generic:Context", ptr %l115, i32 0, i32 3
  %t189 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t188, i32 0, i32 2
  %t190 = load { i64, ptr }, ptr %t189
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = call ptr @__olang_region_or(ptr %t191, ptr null)
  %t193 = call ptr @__olang_region_home(ptr %t192)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr null
  %t196 = getelementptr %"compiler/generic:Context", ptr %l115, i32 0, i32 3
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t196, i32 0, i32 1
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = call ptr @__olang_region_home(ptr %t200)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr %t195
  %t204 = getelementptr %"compiler/generic:Context", ptr %l115, i32 0, i32 3
  %t205 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t204, i32 0, i32 0
  %t206 = load { i64, ptr }, ptr %t205
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = call ptr @__olang_region_or(ptr %t207, ptr null)
  %t209 = call ptr @__olang_region_home(ptr %t208)
  %t210 = icmp ne ptr %t209, null
  %t211 = select i1 %t210, ptr %t209, ptr %t203
  %t212 = getelementptr %"compiler/generic:Context", ptr %l115, i32 0, i32 2
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t212, i32 0, i32 2
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = call ptr @__olang_region_home(ptr %t216)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr %t211
  %t220 = getelementptr %"compiler/generic:Context", ptr %l115, i32 0, i32 2
  %t221 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t220, i32 0, i32 1
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = call ptr @__olang_region_home(ptr %t224)
  %t226 = icmp ne ptr %t225, null
  %t227 = select i1 %t226, ptr %t225, ptr %t219
  %t228 = getelementptr %"compiler/generic:Context", ptr %l115, i32 0, i32 2
  %t229 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t228, i32 0, i32 0
  %t230 = load { i64, ptr }, ptr %t229
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr null)
  %t233 = call ptr @__olang_region_home(ptr %t232)
  %t234 = icmp ne ptr %t233, null
  %t235 = select i1 %t234, ptr %t233, ptr %t227
  %t236 = icmp eq ptr %t235, %t187
  call void @__olang_region_settle(ptr %t187, i1 %t236)
  br label %bb44
bb44:
  %t237 = load ptr, ptr %l109, !tbaa !29
  %t238 = getelementptr %"compiler/check:frame", ptr %t237, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l117, ptr %t238, i64 160, i1 false)
  %t239 = load ptr, ptr %l109, !tbaa !29
  %t240 = getelementptr %"compiler/check:frame", ptr %t239, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t240, ptr %l115, i64 160, i1 false)
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t241, label %bb45, label %bb46
bb45:
  %t243 = getelementptr %"compiler/generic:Context", ptr %l117, i32 0, i32 3
  %t244 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t243, i32 0, i32 2
  %t245 = load { i64, ptr }, ptr %t244
  %t246 = extractvalue { i64, ptr } %t245, 1
  %t247 = call ptr @__olang_region_or(ptr %t246, ptr null)
  %t248 = call ptr @__olang_region_home(ptr %t247)
  %t249 = icmp ne ptr %t248, null
  %t250 = select i1 %t249, ptr %t248, ptr null
  %t251 = getelementptr %"compiler/generic:Context", ptr %l117, i32 0, i32 3
  %t252 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t251, i32 0, i32 1
  %t253 = load { i64, ptr }, ptr %t252
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = call ptr @__olang_region_or(ptr %t254, ptr null)
  %t256 = call ptr @__olang_region_home(ptr %t255)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr %t250
  %t259 = getelementptr %"compiler/generic:Context", ptr %l117, i32 0, i32 3
  %t260 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t259, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  %t263 = call ptr @__olang_region_or(ptr %t262, ptr null)
  %t264 = call ptr @__olang_region_home(ptr %t263)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr %t258
  %t267 = getelementptr %"compiler/generic:Context", ptr %l117, i32 0, i32 2
  %t268 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t267, i32 0, i32 2
  %t269 = load { i64, ptr }, ptr %t268
  %t270 = extractvalue { i64, ptr } %t269, 1
  %t271 = call ptr @__olang_region_or(ptr %t270, ptr null)
  %t272 = call ptr @__olang_region_home(ptr %t271)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr %t266
  %t275 = getelementptr %"compiler/generic:Context", ptr %l117, i32 0, i32 2
  %t276 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t275, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = call ptr @__olang_region_or(ptr %t278, ptr null)
  %t280 = call ptr @__olang_region_home(ptr %t279)
  %t281 = icmp ne ptr %t280, null
  %t282 = select i1 %t281, ptr %t280, ptr %t274
  %t283 = getelementptr %"compiler/generic:Context", ptr %l117, i32 0, i32 2
  %t284 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t283, i32 0, i32 0
  %t285 = load { i64, ptr }, ptr %t284
  %t286 = extractvalue { i64, ptr } %t285, 1
  %t287 = call ptr @__olang_region_or(ptr %t286, ptr null)
  %t288 = call ptr @__olang_region_home(ptr %t287)
  %t289 = icmp ne ptr %t288, null
  %t290 = select i1 %t289, ptr %t288, ptr %t282
  call void @__olang_region_drop(ptr %t290)
  store %"compiler/generic:Context" zeroinitializer, ptr %l117
  br label %bb46
bb46:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t295 = load i32, ptr %l8, !tbaa !23
  %t298 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l122
  br label %bb47
bb47:
  %t299 = load i32, ptr %l122, !tbaa !23
  store i32 %t299, ptr %l14, !tbaa !23
  store i1 false, ptr %l15, !tbaa !21
  %t300 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t300, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t302 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t302, 0
  store i64 %t304, ptr %l18, !tbaa !24
  br label %bb48
bb48:
  %t306 = load i64, ptr %l17, !tbaa !24
  %t307 = load i64, ptr %l18, !tbaa !24
  %t310 = icmp slt i64 %t306, %t307
  %t312 = xor i1 %t310, true
  br i1 %t312, label %bb49, label %bb50
bb49:
  br label %bb62
bb50:
  br label %bb51
bb51:
  %t314 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t314, ptr %l130, !tbaa !27
  %t315 = load i64, ptr %l17, !tbaa !24
  %t317 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr ptr, ptr %t318, i64 %t315
  %t320 = load ptr, ptr %t319, !tbaa !39
  store ptr %t320, ptr %l19, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load i64, ptr %l1, !tbaa !24
  %t324 = load ptr, ptr %l19, !tbaa !29
  %t328 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %t322, i64 %t323, ptr %t324)
  store i1 %t328, ptr %l136
  br label %bb52
bb52:
  %t329 = load i1, ptr %l136, !tbaa !21
  %t330 = xor i1 %t329, true
  br i1 %t330, label %bb53, label %bb54
bb53:
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l138, !tbaa !29
  %t333 = load ptr, ptr %l19, !tbaa !29
  %t335 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t333)
  store %"compiler/source:Span" %t335, ptr %l140
  br label %bb55
bb54:
  br label %bb60
bb55:
  %t336 = load ptr, ptr %l0, !tbaa !29
  store ptr %t336, ptr %l141, !tbaa !29
  %t337 = load ptr, ptr %l19, !tbaa !29
  %t339 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t337)
  store %"compiler/source:Span" %t339, ptr %l143
  br label %bb56
bb56:
  %t340 = load ptr, ptr %l141, !tbaa !29
  %t341 = load %"compiler/source:Span", ptr %l143
  %t342 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t340, %"compiler/source:Span" %t341)
  store { i64, ptr } %t342, ptr %l144
  br label %bb57
bb57:
  %t343 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t344 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsNotTrait(ptr %v0, ptr %v0, { i64, ptr } %t343)
  store %"compiler/diagmsg:Msg" %t344, ptr %l145
  br label %bb58
bb58:
  %t345 = load ptr, ptr %l138, !tbaa !29
  %t346 = load %"compiler/source:Span", ptr %l140
  %t347 = load %"compiler/diagmsg:Msg", ptr %l145
  %t348 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t345, %"compiler/source:Span" %t346, %"compiler/diagmsg:Msg" %t347)
  store i64 %t348, ptr %l146
  br label %bb59
bb59:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t349 = load i64, ptr %l17, !tbaa !24
  %t351 = add i64 %t349, 1
  store i64 %t351, ptr %l17, !tbaa !24
  br label %bb48
bb62:
  %t353 = load i1, ptr %l15, !tbaa !21
  %t355 = xor i1 %t353, true
  br i1 %t355, label %bb63, label %bb64
bb63:
  %t357 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t361 = icmp sgt i64 %t359, 0
  store i1 %t361, ptr %l151, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb65
bb65:
  %t363 = load i1, ptr %l151, !tbaa !21
  br i1 %t363, label %bb66, label %bb67
bb66:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load i32, ptr %l8, !tbaa !23
  %t366 = load i32, ptr %l14, !tbaa !23
  %t370 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereachesTrait(ptr %v0, ptr %t364, i32 %t365, i32 %t366, i64 0)
  store i1 %t370, ptr %l159
  br label %bb68
bb67:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb69
bb68:
  %t371 = load i1, ptr %l159, !tbaa !21
  store i1 %t371, ptr %l155, !tbaa !21
  br label %bb69
bb69:
  %t372 = load i1, ptr %l155, !tbaa !21
  br i1 %t372, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s13
  %t373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t373, ptr %l160, !tbaa !29
  %t374 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t374, ptr %l161, !tbaa !27
  %t375 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr ptr, ptr %t376, i64 0
  %t378 = load ptr, ptr %t377, !tbaa !39
  %t380 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t378)
  store %"compiler/source:Span" %t380, ptr %l163
  br label %bb72
bb71:
  br label %bb76
bb72:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load ptr, ptr %l2, !tbaa !29
  %t384 = getelementptr %"compiler/ast:TypeDecl", ptr %t382, i32 0, i32 0
  %t385 = load i32, ptr %t384, !tbaa !23
  %t388 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s13, ptr %t381, i32 %t385)
  store { i64, ptr } %t388, ptr %l167
  br label %bb73
bb73:
  %t389 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t397 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsItself(ptr %s13, ptr %v0, { i64, ptr } %t395)
  store %"compiler/diagmsg:Msg" %t397, ptr %l169
  br label %bb74
bb74:
  %t398 = load ptr, ptr %l160, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l163
  %t400 = load %"compiler/diagmsg:Msg", ptr %l169
  %t401 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t398, %"compiler/source:Span" %t399, %"compiler/diagmsg:Msg" %t400)
  store i64 %t401, ptr %l170
  br label %bb75
bb75:
  store i1 true, ptr %l15, !tbaa !21
  call void @__olang_scope_close(ptr %s13)
  br label %bb76
bb76:
  %t402 = load i1, ptr %l15, !tbaa !21
  %t404 = xor i1 %t402, true
  br i1 %t404, label %bb77, label %bb78
bb77:
  %t406 = load ptr, ptr %l2, !tbaa !29
  %t408 = getelementptr %"compiler/ast:TypeDecl", ptr %t406, i32 0, i32 1
  %t409 = load { i64, ptr }, ptr %t408, !tbaa !27
  %t411 = extractvalue { i64, ptr } %t409, 0
  %t413 = icmp eq i64 %t411, 0
  store i1 %t413, ptr %l173, !tbaa !21
  br label %bb79
bb78:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb79
bb79:
  %t415 = load i1, ptr %l173, !tbaa !21
  store i1 %t415, ptr %l20, !tbaa !21
  %t416 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t416, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t418 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t418, 0
  store i64 %t420, ptr %l23, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s15
  %t422 = load i64, ptr %l22, !tbaa !24
  %t423 = load i64, ptr %l23, !tbaa !24
  %t426 = icmp slt i64 %t422, %t423
  %t428 = xor i1 %t426, true
  br i1 %t428, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s15)
  br label %bb146
bb82:
  br label %bb83
bb83:
  %t430 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t430, ptr %l185, !tbaa !27
  %t431 = load i64, ptr %l22, !tbaa !24
  %t433 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !27
  %t435 = getelementptr ptr, ptr %t434, i64 %t431
  %t436 = load ptr, ptr %t435, !tbaa !39
  store ptr %t436, ptr %l24, !tbaa !29
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i64, ptr %l1, !tbaa !24
  %t440 = load ptr, ptr %l24, !tbaa !29
  %t444 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %t438, i64 %t439, ptr %t440)
  store i1 %t444, ptr %l191
  br label %bb84
bb84:
  %t445 = load i1, ptr %l191, !tbaa !21
  store i1 %t445, ptr %l25, !tbaa !21
  %t446 = load i1, ptr %l25, !tbaa !21
  %t448 = xor i1 %t446, true
  br i1 %t448, label %bb85, label %bb86
bb85:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load ptr, ptr %l24, !tbaa !29
  %t454 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %t450, ptr %t451, i1 true)
  store i1 %t454, ptr %l197
  br label %bb87
bb86:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb88
bb87:
  %t455 = load i1, ptr %l197, !tbaa !21
  %t456 = xor i1 %t455, true
  store i1 %t456, ptr %l194, !tbaa !21
  br label %bb88
bb88:
  %t458 = load i1, ptr %l194, !tbaa !21
  br i1 %t458, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s15)
  br label %bb145
bb90:
  br label %bb91
bb91:
  %t459 = load i1, ptr %l25, !tbaa !21
  br i1 %t459, label %bb92, label %bb93
bb92:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/check:Checker", ptr %t461, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !29
  store ptr %t464, ptr %l202, !tbaa !29
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t465)
  store ptr %t467, ptr %l204
  br label %bb94
bb93:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load ptr, ptr %l24, !tbaa !29
  %t473 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t468, ptr %t469)
  store i32 %t473, ptr %l213
  br label %bb96
bb94:
  %t474 = load ptr, ptr %l204, !tbaa !29
  %t476 = getelementptr %"compiler/check:frame", ptr %t474, i32 0, i32 4
  %t477 = load ptr, ptr %l24, !tbaa !29
  %t479 = load ptr, ptr %l202, !tbaa !29
  %t482 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t479, ptr %t476, ptr %t477)
  store i32 %t482, ptr %l209
  br label %bb95
bb95:
  %t483 = load i32, ptr %l209, !tbaa !23
  store i32 %t483, ptr %l200, !tbaa !23
  br label %bb97
bb96:
  %t484 = load i32, ptr %l213, !tbaa !23
  store i32 %t484, ptr %l200, !tbaa !23
  br label %bb97
bb97:
  %t485 = load i32, ptr %l200, !tbaa !23
  store i32 %t485, ptr %l26, !tbaa !23
  %t486 = load i32, ptr %l26, !tbaa !23
  %t487 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t490 = icmp eq i32 %t486, %t487
  br i1 %t490, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s15)
  br label %bb145
bb99:
  br label %bb100
bb100:
  %t492 = load i32, ptr %l26, !tbaa !23
  %t494 = insertvalue [1 x i32] undef, i32 %t492, 0
  store [1 x i32] %t494, ptr %l218
  %t495 = mul i64 1, 4
  %t496 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t495)
  %t497 = insertvalue { i64, ptr } undef, i64 1, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  store { i64, ptr } %t498, ptr %l219, !tbaa !27
  %t499 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !27
  %t501 = mul i64 1, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t500, ptr %l218, i64 %t501, i1 false)
  %t502 = load { i64, ptr }, ptr %l219, !tbaa !27
  store { i64, ptr } %t502, ptr %l27, !tbaa !27
  %t503 = load i1, ptr %l25, !tbaa !21
  br i1 %t503, label %bb101, label %bb102
bb101:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/check:Checker", ptr %t505, i32 0, i32 1
  %t508 = load ptr, ptr %t507, !tbaa !29
  %t509 = load i32, ptr %l26, !tbaa !23
  %t512 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t508, i32 %t509)
  store i1 %t512, ptr %l225
  br label %bb103
bb102:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb104
bb103:
  %t513 = load i1, ptr %l225, !tbaa !21
  %t514 = xor i1 %t513, true
  store i1 %t514, ptr %l221, !tbaa !21
  br label %bb104
bb104:
  %t516 = load i1, ptr %l221, !tbaa !21
  br i1 %t516, label %bb105, label %bb106
bb105:
  %t517 = load ptr, ptr %l0, !tbaa !29
  store ptr %t517, ptr %l227, !tbaa !29
  %t518 = load ptr, ptr %l24, !tbaa !29
  %t520 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t518)
  store %"compiler/source:Span" %t520, ptr %l229
  br label %bb107
bb106:
  br label %bb112
bb107:
  %t521 = load ptr, ptr %l0, !tbaa !29
  store ptr %t521, ptr %l230, !tbaa !29
  %t522 = load ptr, ptr %l24, !tbaa !29
  %t524 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t522)
  store %"compiler/source:Span" %t524, ptr %l232
  br label %bb108
bb108:
  %t525 = load ptr, ptr %l230, !tbaa !29
  %t526 = load %"compiler/source:Span", ptr %l232
  %t527 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t525, %"compiler/source:Span" %t526)
  store { i64, ptr } %t527, ptr %l233
  br label %bb109
bb109:
  %t528 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t529 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberOpen(ptr %v0, ptr %v0, { i64, ptr } %t528)
  store %"compiler/diagmsg:Msg" %t529, ptr %l234
  br label %bb110
bb110:
  %t530 = load ptr, ptr %l227, !tbaa !29
  %t531 = load %"compiler/source:Span", ptr %l229
  %t532 = load %"compiler/diagmsg:Msg", ptr %l234
  %t533 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t530, %"compiler/source:Span" %t531, %"compiler/diagmsg:Msg" %t532)
  store i64 %t533, ptr %l235
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s15)
  br label %bb145
bb112:
  %t534 = load i1, ptr %l25, !tbaa !21
  br i1 %t534, label %bb113, label %bb114
bb113:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/check:Checker", ptr %t536, i32 0, i32 1
  %t539 = load ptr, ptr %t538, !tbaa !29
  %t540 = load i32, ptr %l26, !tbaa !23
  %t543 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t539, i32 %t540)
  store { i64, ptr } %t543, ptr %l240
  br label %bb115
bb114:
  br label %bb122
bb115:
  %t544 = load { i64, ptr }, ptr %l240, !tbaa !27
  store { i64, ptr } %t544, ptr %l241, !tbaa !27
  %t545 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2etraitHeader_2elocal_2e27
  br i1 %t545, label %bb116, label %bb117
bb116:
  %t547 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t547, ptr %l243, !tbaa !27
  %t548 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t549 = extractvalue { i64, ptr } %t548, 0
  store i64 %t549, ptr %l244, !tbaa !24
  %t550 = load i64, ptr %l244, !tbaa !24
  %t551 = mul i64 %t550, 4
  %t552 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t551)
  %t553 = insertvalue { i64, ptr } undef, i64 %t550, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t552, 1
  store { i64, ptr } %t554, ptr %l245, !tbaa !27
  %t555 = getelementptr { i64, ptr }, ptr %l245, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !27
  %t559 = load i64, ptr %l244, !tbaa !24
  %t560 = mul i64 %t559, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t556, ptr %t558, i64 %t560, i1 false)
  %t561 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t561, ptr %l27, !tbaa !27
  %t562 = load { i64, ptr }, ptr %l243
  %t563 = extractvalue { i64, ptr } %t562, 1
  call void @__olang_region_release(ptr %t563)
  store { i64, ptr } zeroinitializer, ptr %l243
  br label %bb118
bb117:
  %t564 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t565 = extractvalue { i64, ptr } %t564, 0
  %t566 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t567 = extractvalue { i64, ptr } %t566, 0
  store i64 %t567, ptr %l247, !tbaa !24
  %t569 = load i64, ptr %l247, !tbaa !24
  %t570 = icmp eq i64 %t565, %t569
  br i1 %t570, label %bb119, label %bb120
bb118:
  br label %bb122
bb119:
  %t572 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t573 = load ptr, ptr %t572, !tbaa !27
  %t574 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !27
  %t576 = load i64, ptr %l247, !tbaa !24
  %t577 = mul i64 %t576, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t573, ptr %t575, i64 %t577, i1 false)
  br label %bb121
bb120:
  %t578 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t579 = extractvalue { i64, ptr } %t578, 0
  store i64 %t579, ptr %l249, !tbaa !24
  %t580 = load i64, ptr %l249, !tbaa !24
  %t581 = mul i64 %t580, 4
  %t582 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t581)
  %t583 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  store { i64, ptr } %t584, ptr %l250, !tbaa !27
  %t585 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !27
  %t587 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !27
  %t589 = load i64, ptr %l249, !tbaa !24
  %t590 = mul i64 %t589, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t586, ptr %t588, i64 %t590, i1 false)
  %t591 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t591, ptr %l27, !tbaa !27
  br label %bb121
bb121:
  br label %bb118
bb122:
  %t592 = load i1, ptr %l20, !tbaa !21
  %t594 = xor i1 %t592, true
  br i1 %t594, label %bb123, label %bb124
bb123:
  call void @__olang_scope_close(ptr %s15)
  br label %bb145
bb124:
  br label %bb125
bb125:
  %t596 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t596, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t598 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t600 = extractvalue { i64, ptr } %t598, 0
  store i64 %t600, ptr %l30, !tbaa !24
  br label %bb126
bb126:
  %t602 = load i64, ptr %l29, !tbaa !24
  %t603 = load i64, ptr %l30, !tbaa !24
  %t606 = icmp slt i64 %t602, %t603
  %t608 = xor i1 %t606, true
  br i1 %t608, label %bb127, label %bb128
bb127:
  br label %bb144
bb128:
  br label %bb129
bb129:
  %t610 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t610, ptr %l260, !tbaa !27
  %t611 = load i64, ptr %l29, !tbaa !24
  %t613 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !27
  %t615 = getelementptr i32, ptr %t614, i64 %t611
  %t616 = load i32, ptr %t615, !tbaa !33
  store i32 %t616, ptr %l31, !tbaa !23
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/check:Checker", ptr %t618, i32 0, i32 1
  %t621 = load ptr, ptr %t620, !tbaa !29
  %t622 = load i32, ptr %l31, !tbaa !23
  %t623 = load i32, ptr %l14, !tbaa !23
  %t627 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t621, i32 %t622, i32 %t623, i1 false, i64 0)
  store %"compiler/generic:Unmet" %t627, ptr %l267
  br label %bb130
bb130:
  %t628 = load %"compiler/generic:Unmet", ptr %l267
  store %"compiler/generic:Unmet" %t628, ptr %l32
  %t629 = getelementptr %"compiler/generic:Unmet", ptr %l32, i32 0, i32 0
  %t630 = load i64, ptr %t629, !tbaa !24
  %t632 = icmp sge i64 %t630, 0
  br i1 %t632, label %bb131, label %bb132
bb131:
  %t634 = getelementptr %"compiler/generic:Unmet", ptr %l32, i32 0, i32 3
  %t635 = load i1, ptr %t634, !tbaa !21
  store i1 %t635, ptr %l270, !tbaa !21
  br label %bb133
bb132:
  store i1 false, ptr %l270, !tbaa !21
  br label %bb133
bb133:
  %t637 = load i1, ptr %l270, !tbaa !21
  br i1 %t637, label %bb134, label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s23
  %t638 = load ptr, ptr %l0, !tbaa !29
  store ptr %t638, ptr %l272, !tbaa !29
  %t639 = load ptr, ptr %l24, !tbaa !29
  %t641 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t639)
  store %"compiler/source:Span" %t641, ptr %l274
  br label %bb136
bb135:
  br label %bb142
bb136:
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t643 = load i32, ptr %l31, !tbaa !23
  %t646 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s23, ptr %t642, i32 %t643)
  store { i64, ptr } %t646, ptr %l277
  br label %bb137
bb137:
  %t647 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t648 = extractvalue { i64, ptr } %t647, 0
  %t649 = extractvalue { i64, ptr } %t647, 1
  %t650 = mul i64 %t648, 1
  %t651 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t650)
  call void @llvm.memcpy.p0.p0.i64(ptr %t651, ptr %t649, i64 %t650, i1 false)
  %t652 = insertvalue { i64, ptr } undef, i64 %t648, 0
  %t653 = insertvalue { i64, ptr } %t652, ptr %t651, 1
  store { i64, ptr } %t653, ptr %l278, !tbaa !27
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load ptr, ptr %l2, !tbaa !29
  %t657 = getelementptr %"compiler/ast:TypeDecl", ptr %t655, i32 0, i32 0
  %t658 = load i32, ptr %t657, !tbaa !23
  %t661 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s23, ptr %t654, i32 %t658)
  store { i64, ptr } %t661, ptr %l282
  br label %bb138
bb138:
  %t662 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t662, 0
  %t664 = extractvalue { i64, ptr } %t662, 1
  %t665 = mul i64 %t663, 1
  %t666 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t665)
  call void @llvm.memcpy.p0.p0.i64(ptr %t666, ptr %t664, i64 %t665, i1 false)
  %t667 = insertvalue { i64, ptr } undef, i64 %t663, 0
  %t668 = insertvalue { i64, ptr } %t667, ptr %t666, 1
  store { i64, ptr } %t668, ptr %l283, !tbaa !27
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/generic:Unmet", ptr %l32, i32 0, i32 2
  %t671 = load i32, ptr %t670, !tbaa !23
  %t674 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s23, ptr %t669, i32 %t671)
  store { i64, ptr } %t674, ptr %l286
  br label %bb139
bb139:
  %t675 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t676 = extractvalue { i64, ptr } %t675, 0
  %t677 = extractvalue { i64, ptr } %t675, 1
  %t678 = mul i64 %t676, 1
  %t679 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t678)
  call void @llvm.memcpy.p0.p0.i64(ptr %t679, ptr %t677, i64 %t678, i1 false)
  %t680 = insertvalue { i64, ptr } undef, i64 %t676, 0
  %t681 = insertvalue { i64, ptr } %t680, ptr %t679, 1
  %t682 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t683 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t685 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberMissing(ptr %s23, ptr %s23, ptr %s23, ptr %v0, { i64, ptr } %t682, { i64, ptr } %t683, { i64, ptr } %t681)
  store %"compiler/diagmsg:Msg" %t685, ptr %l288
  br label %bb140
bb140:
  %t686 = load ptr, ptr %l272, !tbaa !29
  %t687 = load %"compiler/source:Span", ptr %l274
  %t688 = load %"compiler/diagmsg:Msg", ptr %l288
  %t689 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t686, %"compiler/source:Span" %t687, %"compiler/diagmsg:Msg" %t688)
  store i64 %t689, ptr %l289
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s23)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t690 = load i64, ptr %l29, !tbaa !24
  %t692 = add i64 %t690, 1
  store i64 %t692, ptr %l29, !tbaa !24
  br label %bb126
bb144:
  call void @__olang_scope_close(ptr %s15)
  br label %bb145
bb145:
  %t694 = load i64, ptr %l22, !tbaa !24
  %t696 = add i64 %t694, 1
  store i64 %t696, ptr %l22, !tbaa !24
  br label %bb80
bb146:
  %t698 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t698)
  br label %bb147
bb147:
  br label %bb153
bb148:
  br i1 true, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb153
bb152:
  call void @__olang_check_failed(ptr @olang_loc_21d2c8212e1ec20a_d97fbaae9e5bc606)
  unreachable
bb153:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnySlot" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:AnySlot"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/generic:AnySlot" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp slt i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t16, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l9, !tbaa !29
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store ptr %t24, ptr %l15
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l15, !tbaa !29
  store ptr %t25, ptr %l2, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TypeDecl", ptr %t30, i32 0, i32 3
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  store i1 %t35, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l18, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  store ptr null, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TypeDecl", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l3, !tbaa !29
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 5}
  %t51 = icmp eq i64 %t49, 2
  store i1 %t51, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr { i64, [6 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t55, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56
  store { i64, ptr } %t57, ptr %l4, !tbaa !27
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t59 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 2
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t66 = icmp slt i64 %t60, %t63
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t68, ptr %l36, !tbaa !27
  %t69 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 2
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l35, !tbaa !29
  br label %bb19
bb18:
  store ptr null, ptr %l35, !tbaa !29
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l35, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store ptr null, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_b6a47344f78098a_9e5fbaf70b0ac586)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollElem(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l24 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l31 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca i64
  %l38 = alloca i32
  %l41 = alloca i1
  %l43 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l8, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 18
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t9, i64 %a2)
  store ptr %t13, ptr %l12
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t18, i32 %t17)
  store i32 %t20, ptr %l15
  br label %bb2
bb2:
  %t21 = load i32, ptr %l15, !tbaa !23
  store i32 %t21, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l19
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l20
  br label %bb4
bb4:
  %t31 = load i32, ptr %l20, !tbaa !23
  store i32 %t31, ptr %l4, !tbaa !23
  %t32 = load i32, ptr %l4, !tbaa !23
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t36 = icmp eq i32 %t32, %t33
  br i1 %t36, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t39)
  store %"compiler/source:Span" %t41, ptr %l26
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l29
  br label %bb8
bb8:
  %t47 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t55 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForSource(ptr %s1, ptr %v0, { i64, ptr } %t53)
  store %"compiler/diagmsg:Msg" %t55, ptr %l31
  br label %bb9
bb9:
  %t56 = load ptr, ptr %l24, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l26
  %t58 = load %"compiler/diagmsg:Msg", ptr %l31
  %t59 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t56, %"compiler/source:Span" %t57, %"compiler/diagmsg:Msg" %t58)
  store i64 %t59, ptr %l32
  br label %bb10
bb10:
  %t60 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t60, ptr %rv
  br label %ret
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l38
  br label %bb12
bb12:
  %t72 = load i32, ptr %l38, !tbaa !23
  store i32 %t72, ptr %l5, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l5, !tbaa !23
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollable(ptr %v0, ptr %t73, i32 %t74)
  store i1 %t77, ptr %l41
  br label %bb13
bb13:
  %t78 = load i1, ptr %l41, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l43, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t82)
  store %"compiler/source:Span" %t84, ptr %l45
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l5, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t85, i32 %t86)
  store { i64, ptr } %t89, ptr %l48
  br label %bb17
bb17:
  %t90 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForElem(ptr %s2, ptr %v0, { i64, ptr } %t96)
  store %"compiler/diagmsg:Msg" %t98, ptr %l50
  br label %bb18
bb18:
  %t99 = load ptr, ptr %l43, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l45
  %t101 = load %"compiler/diagmsg:Msg", ptr %l50
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t99, %"compiler/source:Span" %t100, %"compiler/diagmsg:Msg" %t101)
  store i64 %t102, ptr %l51
  br label %bb19
bb19:
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t103, ptr %rv
  br label %ret
bb20:
  %t105 = load i32, ptr %l5, !tbaa !23
  store i32 %t105, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i32
  %l18 = alloca i1
  %l19 = alloca i1
  %l30 = alloca ptr
  %rv = alloca ptr
  %t41 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i32, ptr %l7, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l10
  br label %bb2
bb2:
  %t11 = load i1, ptr %l10, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l18
  br label %bb6
bb6:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i32, ptr %l4, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  store i1 %t33, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l2
  %t38 = load %"compiler/source:Span", ptr %l2
  %t39 = load i32, ptr %l4, !tbaa !23
  %t40 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 0
  store i64 2, ptr %t42
  %t44 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t38, 0
  %t46 = insertvalue { %"compiler/source:Span", i32, ptr } %t44, i32 %t39, 1
  %t48 = insertvalue { %"compiler/source:Span", i32, ptr } %t46, ptr %t40, 2
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t48, ptr %t49
  %t50 = load { i64, [4 x i64] }, ptr %t41
  %t52 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t50, ptr %t52
  %t56 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t36, %"compiler/source:Span" %t37, ptr %t52)
  store ptr %t56, ptr %l30
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t57 = load ptr, ptr %l30, !tbaa !29
  store ptr %t57, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca i1
  %l24 = alloca i1
  %l29 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l10
  br label %bb3
bb3:
  %t12 = load i1, ptr %l10, !tbaa !21
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t14, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l14
  br label %bb8
bb8:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %l3, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t26 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t22, ptr %t23, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d93, i32 0, i32 1) }, i1 false)
  store ptr %t26, ptr %l17
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l17, !tbaa !29
  store ptr %t27, ptr %l1, !tbaa !29
  %t28 = load i1, ptr %l3, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb13
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i1, ptr %l24, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l19, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t44, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v2, ptr %v2, ptr %t46, ptr %t47)
  store ptr %t50, ptr %l29
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load ptr, ptr %l29, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l43 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i32
  %l52 = alloca ptr
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  store ptr %t2, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l4, !tbaa !23
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l15
  br label %bb4
bb3:
  %t15 = load i32, ptr %l4, !tbaa !23
  store i32 %t15, ptr %l12, !tbaa !23
  br label %bb5
bb4:
  %t17 = load i32, ptr %l15, !tbaa !23
  store i32 %t17, ptr %l12, !tbaa !23
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = load ptr, ptr %l8, !tbaa !29
  %t20 = load i32, ptr %l12, !tbaa !23
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t18, ptr %t19, i32 %t20)
  store ptr %t21, ptr %l17
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l17, !tbaa !29
  store ptr %t22, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l21
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t30)
  store i32 %t33, ptr %l25
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = load i32, ptr %l25, !tbaa !23
  %t36 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i32, ptr %l21, !tbaa !23
  %t39 = load i32, ptr %l26, !tbaa !23
  %t40 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emeets(ptr %v0, ptr %t37, i32 %t38, i32 %t39)
  store i1 %t40, ptr %l27
  br label %bb10
bb10:
  %t41 = load i1, ptr %l27, !tbaa !21
  %t42 = xor i1 %t41, true
  br i1 %t42, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l29, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t45)
  store %"compiler/source:Span" %t47, ptr %l31
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l32, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l35
  br label %bb14
bb14:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = load i32, ptr %l35, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l36
  br label %bb15
bb15:
  %t57 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  %t59 = extractvalue { i64, ptr } %t57, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l37, !tbaa !27
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v3, ptr %s1, ptr %t64, ptr %t65)
  store { i64, ptr } %t68, ptr %l40
  br label %bb16
bb16:
  %t69 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t76 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t78 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %s1, ptr %s1, ptr %v0, { i64, ptr } %t76, { i64, ptr } %t75)
  store %"compiler/diagmsg:Msg" %t78, ptr %l42
  br label %bb17
bb17:
  %t79 = load ptr, ptr %l29, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l31
  %t81 = load %"compiler/diagmsg:Msg", ptr %l42
  %t82 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t79, %"compiler/source:Span" %t80, %"compiler/diagmsg:Msg" %t81)
  store i64 %t82, ptr %l43
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l1
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t83, %"compiler/source:Span" %t84, i32 %t85, i64 0)
  store ptr %t89, ptr %l47
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  %t90 = load ptr, ptr %l47, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l48, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t92, ptr %l49
  %t93 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t93, ptr %l50
  store i32 93, ptr %l51
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l52, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l1
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t95, %"compiler/source:Span" %t96, ptr %a2)
  store ptr %t101, ptr %l56
  br label %bb21
bb21:
  %t102 = load %"compiler/source:Span", ptr %l1
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t104 = load ptr, ptr %l56, !tbaa !29
  %t106 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v1, ptr %t103, ptr %t104, %"compiler/source:Span" %t102)
  store ptr %t106, ptr %l58
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l5, !tbaa !29
  store ptr %t107, ptr %l59, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t108, ptr %l60
  %t109 = load ptr, ptr %l3, !tbaa !29
  %t111 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t109)
  store %"compiler/source:Span" %t111, ptr %l62
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l48, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l49
  %t114 = load %"compiler/source:Span", ptr %l50
  %t115 = load i32, ptr %l51, !range !{i32 0, i32 113}
  %t116 = load ptr, ptr %l58, !tbaa !29
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l60
  %t119 = load %"compiler/source:Span", ptr %l62
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t112, %"compiler/source:Span" %t113, %"compiler/source:Span" %t114, i32 %t115, ptr %t116, ptr %t117, %"compiler/source:Span" %t118, %"compiler/source:Span" %t119)
  store ptr %t120, ptr %l63
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l63, !tbaa !29
  store ptr %t121, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i1
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, ptr %t3)
  store i1 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i1, ptr %l9, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
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
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %t25, ptr %t26, ptr %t27)
  store i1 %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l11, !tbaa !21
  br label %bb30
bb11:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l22, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 4
  store i1 %t40, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l23, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Elem", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %t48, ptr %t52, ptr %t53)
  store i1 %t57, ptr %l32
  br label %bb17
bb17:
  %t58 = load i1, ptr %l32, !tbaa !21
  store i1 %t58, ptr %l11, !tbaa !21
  br label %bb30
bb18:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 5
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Payload", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %t74, ptr %t78, ptr %t79)
  store i1 %t83, ptr %l43
  br label %bb24
bb24:
  %t84 = load i1, ptr %l43, !tbaa !21
  store i1 %t84, ptr %l11, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_e1df209ea46513ba_c2fba828617e051e)
  unreachable
bb30:
  %t85 = load i1, ptr %l11, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritesNoQuestion(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca i1
  %l17 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l28 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 26
  %t15 = load i1, ptr %t14, !tbaa !21
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 6
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t23, i32 %t27)
  store { i64, ptr } %t30, ptr %l17
  br label %bb7
bb7:
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t34 = icmp sgt i64 %t32, 0
  store i1 %t34, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l11, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 18
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/check:frame", ptr %t41, i32 0, i32 0
  %t44 = load i64, ptr %t43, !tbaa !24
  %t47 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t40, i64 %t44)
  store ptr %t47, ptr %l25
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Body", ptr %t48, i32 0, i32 1
  %t51 = load { i64, [2 x i64] }, ptr %t50
  store { i64, [2 x i64] } %t51, ptr %l2
  %t53 = load { i64, [2 x i64] }, ptr %l2
  %t55 = extractvalue { i64, [2 x i64] } %t53, 0
  %t56 = icmp eq i64 %t55, 0
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  %t58 = load { i64, [2 x i64] }, ptr %l2
  %t60 = extractvalue { i64, [2 x i64] } %t58, 0
  %t61 = icmp eq i64 %t60, 1
  br i1 %t61, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_17791ca4bfbb451a_6d701f0037462966)
  unreachable
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i1, ptr %l28, !tbaa !21
  store i1 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCase(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d94, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d95, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
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
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t35 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t28, { i64, ptr } %a1)
  store i1 %t35, ptr %l23
  br label %bb8
bb8:
  %t36 = load i1, ptr %l23, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisBind(ptr %v0, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 3
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
  call void @__olang_check_failed(ptr @olang_loc_a4a9e3d1ce4f287a_3905f5d0b0eda75e)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eisLit(ptr %v0, ptr %a0) #0 {
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
  %t8 = icmp eq i64 %t6, 0
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
  call void @__olang_check_failed(ptr @olang_loc_5b2b374f73dad39a_b03018bc2543a136)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2elastIsValue(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = sub i64 %t4, 1
  %t8 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr ptr, ptr %t9, i64 %t6
  %t11 = load ptr, ptr %t10, !tbaa !39
  store ptr %t11, ptr %l1, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 22}
  %t20 = icmp eq i64 %t18, 0
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr }, ptr %t24, i32 0, i32 1
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %t28)
  store i1 %t30, ptr %l16
  br label %bb6
bb6:
  %t31 = load i1, ptr %l16, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l8, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_696a437f6b67e70a_247b6a7ce30931f6)
  unreachable
bb12:
  %t34 = load i1, ptr %l8, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eleavesValue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i1
  %l17 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t1)
  store i1 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i1, ptr %l7, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Block", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb21
bb7:
  br label %bb8
bb8:
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t24, ptr %l17, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 %t25
  %t30 = load ptr, ptr %t29, !tbaa !39
  store ptr %t30, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t33 = load ptr, ptr %l20, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l20, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 17}
  %t39 = icmp eq i64 %t37, 5
  store i1 %t39, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l21, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_f65b5445e0db363a_c2ab951bd73e6226)
  unreachable
bb19:
  br label %bb20
bb20:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb5
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2epatRow(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v1, ptr %v0, ptr %t5, ptr %a0)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v1, ptr %v1, ptr %t9)
  store { i64, ptr } %t11, ptr %l7
  br label %bb3
bb3:
  %t12 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2eplainLen(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb17
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l7, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 28}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32 }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 113}
  store i32 %t23, ptr %l1
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t27 = trunc i64 2 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l2, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_64562bc7ca55259a_4dcf078b9ca87c6)
  unreachable
bb17:
  %t30 = load i1, ptr %l2, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2etwos(%"compiler/check:litv" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %l1 = alloca %"compiler/check:signMag"
  %l3 = alloca i1
  %l9 = alloca %"compiler/check:signMag"
  %l11 = alloca %"compiler/check:signMag"
  %l15 = alloca %"compiler/check:signMag"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/check:signMag"
  store %"compiler/check:litv" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 5
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 6
  %t5 = load i1, ptr %t4, !tbaa !21
  %t7 = xor i1 %t5, true
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t14 = zext i64 %t11 to i128
  %t16 = call %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %s1, i1 false, i128 %t14)
  store %"compiler/check:signMag" %t16, ptr %l9
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  %t17 = load %"compiler/check:signMag", ptr %l9
  store %"compiler/check:signMag" %t17, ptr %rv
  br label %ret
bb7:
  %t18 = load %"compiler/check:litv", ptr %l0
  %t20 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %t18)
  store %"compiler/check:signMag" %t20, ptr %l11
  br label %bb8
bb8:
  %t21 = load %"compiler/check:signMag", ptr %l11
  store %"compiler/check:signMag" %t21, ptr %l1
  %t22 = getelementptr %"compiler/check:signMag", ptr %l1, i32 0, i32 0
  %t23 = load i1, ptr %t22, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = getelementptr %"compiler/check:signMag", ptr %l1, i32 0, i32 1
  %t26 = load i128, ptr %t25
  %t28 = sub i128 0, %t26
  %t30 = call %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %s2, i1 true, i128 %t28)
  store %"compiler/check:signMag" %t30, ptr %l15
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  %t31 = load %"compiler/check:signMag", ptr %l15
  store %"compiler/check:signMag" %t31, ptr %rv
  br label %ret
bb12:
  %t32 = load %"compiler/check:signMag", ptr %l1
  store %"compiler/check:signMag" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:signMag", ptr %rv
  ret %"compiler/check:signMag" %rr
}

define dso_local void @compiler_2fcheck_2estoredExprs(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
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
  br label %bb10
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
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t27, ptr %a1)
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

define dso_local %"compiler/check:knownRange" @compiler_2fcheck_3aknownRange_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:knownRange"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:knownRange" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/check:knownRange" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/check:knownRange" %t10, i64 %a2, 2
  store %"compiler/check:knownRange" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:knownRange", ptr %rv
  ret %"compiler/check:knownRange" %rr
}

define dso_local %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %v0, i64 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:litBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:litBuilder" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/check:litBuilder" %t6, i32 %a1, 1
  store %"compiler/check:litBuilder" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litBuilder", ptr %rv
  ret %"compiler/check:litBuilder" %rr
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"HasAttr" }>, align 8
@.d2 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"attrMissing" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
@.d4 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"attrGot" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a case" }>, align 8
@.d9 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Functions" }>, align 8
@.d10 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Methods" }>, align 8
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Cases" }>, align 8
@.d12 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Fields" }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Params" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Results" }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Errors" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d20 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d21 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Nullable" }>, align 8
@.d22 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a member reflection reads through a type's name" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Max" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Inf" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"NaN" }>, align 8
@.d27 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Epsilon" }>, align 8
@.d28 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"SmallestNormal" }>, align 8
@.d29 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"a limit of the number type" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"From" }>, align 8
@.d31 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"the raw value's reverse" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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

@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d36 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d37 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitXor" }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'+'" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'*'" }>, align 8
@.d42 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d43 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'&'" }>, align 8
@.d44 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'|'" }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'^'" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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

@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d50 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"an extern function as a value (T21)" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aroFn_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d56 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d57 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/generic:Context"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 160, i1 false)
  %t2 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 2
  %t4 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %t2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  %t6 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %t6
  %t7 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t11 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d59 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"a generator borrowing its elements from a parameter held by value" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d64 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"a lambda parameter written as a reference where a value is expected (D16a)" }>, align 8
@.d65 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"this lambda" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3anarrowed_2e5 = weak hidden constant i1 false
@.d66 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"no parameters" }>, align 8
@.d67 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"one parameter" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d68 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" parameters" }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"one" }>, align 8
@.d70 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d71 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"at least " }>, align 8
@.d72 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Here" }>, align 8
@.d73 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d79 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d80 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d81 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d82 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"SetSlice" }>, align 8
@.d83 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"setSlice" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8 = weak hidden constant i1 false
define linkonce_odr %"compiler/check:weakPlace" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aweakPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:weakPlace"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/check:weakPlace"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:weakPlace", ptr %a0
  store %"compiler/check:weakPlace" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/check:weakPlace", ptr %l1
  store %"compiler/check:weakPlace" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:weakPlace", ptr %rv
  ret %"compiler/check:weakPlace" %rr
}

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@.d86 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"AtomicStore" }>, align 8
@.d87 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"AtomicAdd" }>, align 8
@.d88 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"AtomicSwap" }>, align 8
@.d89 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"AtomicCompareSwap" }>, align 8
@.d90 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"AtomicLoad" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2etraitHeader_2elocal_2e27 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d93 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"the parameter" }>, align 8
@.d94 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/enums" }>, align 8
@.d95 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"CaseError" }>, align 8
@.d96 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"WrongCase" }>, align 8
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %a0) #0 {
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

declare i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, i32 %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f2b973fcab239364_d01bf2cd68c3b6a8 = external constant [0 x i8]
@olang_loc_1778b9e962c2fcc7_ba3812a15af6740b = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_b2a10b57ca8f7dfa_ebdfac3cc9f6695e = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStrBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4235fda77c59946a_df60ad3f0caa2a66 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, i64 %a4, i1 %a5, i32 %a6)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseUnknownName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseIsSubject(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_3cf4b7359f29899a_630bdcef83a186 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetLess(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e75bf8e677cd64fa_b74b0f73d6209566 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesSameType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesClash(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f259f6ca06e66809_b1ef05920a904ef5 = external constant [0 x i8]
@olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecopyDoes(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d80c9f6a0018af5a_89f102f42b80e70e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyDoesMore(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestTarget(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i64 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeRules(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaredCtor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitSets(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopAssert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
@olang_loc_9f7e5ad647601e13_a7b1cb3e26ad346f = external constant [0 x i8]
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclsIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorDeclRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRules(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_575e4285282f1c6b_a969c68061cd7c57 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5, i32 %a6)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffS(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_50a05787c39822f3_4820228f4f4dc477 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a066d2ce16f881cb_b1c9ea2c2a0314f = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equietPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportMethod(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportGeneric(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportParam(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportArray(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExportResult(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_ce477a1e17d80ea_6907ddc3684fedfe = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLengthsNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNotAValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_de04a3fa462e2701_a46741d0a252ba9d = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebound(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, [3 x i64] } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:roFn" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofText(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2efoldUnary(i32 %a0, %"compiler/check:litv" %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2efoldBinary(i32 %a0, %"compiler/check:litv" %a1, %"compiler/check:litv" %a2)
@olang_loc_18ec9fb825b0f3da_76c21f303b4292b6 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenTypeDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenMarks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6)
@olang_loc_40d363cef29e2dc3_da67730fe5a0874f = external constant [0 x i8]
@olang_loc_db68d589b432834_a1faf5a9fb6b5a70 = external constant [0 x i8]
@olang_loc_49068bc24a947660_4b301fa97abc34fc = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1)
declare %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_48c434cc052a730a_3ea1b318a5aaa0d6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsInst(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eLe_Hd4c2d9413c055fd81e33f716153e07b8(ptr %v0, ptr %a0)
declare %"compiler/check:effectPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aeffectPlace_3e_2eAt_H2c6933398e42ebe4f85d63d17b1157eb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/effects:Verdict" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eJudge(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEffectBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteEffect(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d264b31a2a0953e1_a8a3a5518784125d = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaArity(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2, i64 %a3)
@olang_loc_3e7f35b161741bd4_701c2e32dccd3eb0 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaSignature(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLambdaParamUntyped(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_5a62442bf09cb677_66ce856a58ef9453 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistMentions(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMissingReturn(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2elambdaOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_b298090b1e9ffaa3_6aaa9277d25cb0b7 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunifySoft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyErrors(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i64 %a6)
@olang_loc_24473ecab934ff5a_e5063e673d38f936 = external constant [0 x i8]
@olang_loc_1dc6773449e59e5b_c7fcef2f52138cd7 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2ePush_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexRange(ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2efloatOverflows(i32 %a0, double %a1)
declare double @compiler_2fcheck_2elitF64(%"compiler/check:litv" %a0)
declare i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
@olang_loc_da08e6a1bfd31b51_4c78ede106fe65fd = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i64 %a6)
declare { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotTheOperator(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2fcheck_2eisEntry(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEntryType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emapOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/check:litBuilder" %a3, i32 %a4, ptr %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlaceMember(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b23b0b3c83be0ad1_2f776aac88ec27cd = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsLength(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprovenAmount(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
@olang_loc_99086173777f8bfa_1537fe52b2cd754e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_17a01d5acd356999_bbab3392a6e164c5 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
@olang_loc_4138b01f2eedcaec_10fcf95e1b11f8e8 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_492feac3979049da_7a1ccb679ec95f6e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_42af232d2840e8db_efcef566740b002f = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e2de52da0998b8a_4e4f16d2638e7f66 = external constant [0 x i8]
@olang_loc_4bef50c9347fcfcb_39dc7124156e73c7 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetsByAxes(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hb311157f9ff5cfde66cc01a7f8069ed8(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1d7b97a31fca2c92a4527a0b3309f2d1(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eLen__H084a2ca77c4688e46cae486f59666d3f(ptr %v0, ptr %a0)
declare %"compiler/check:weakPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eAt_3ccompiler_2fcheck_3aweakPlace_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakRow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/check:weakPlace" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %a0)
declare { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakUnheld(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestsAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_7cf0066f219391e3_f59e2f38f1229917 = external constant [0 x i8]
@olang_loc_93e3a02800d00d4_2c47855b6b12ccf8 = external constant [0 x i8]
@olang_loc_ead499c86a25c3f7_b1128c547d2ccfbb = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrReceiverWritable(ptr %v0)
@olang_loc_4caebcac4cec7311_26f3d9a9847d99e5 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8ded448c56d61a9a_a1642562b2a40e16 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPatOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotInteger(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicWidth(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotPlace(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotWritable(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTraitSig(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereachesTrait(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberOpen(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberMissing(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_21d2c8212e1ec20a_d97fbaae9e5bc606 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_b6a47344f78098a_9e5fbaf70b0ac586 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForSource(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForElem(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emeets(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etyOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e1df209ea46513ba_c2fba828617e051e = external constant [0 x i8]
@olang_loc_17791ca4bfbb451a_6d701f0037462966 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_a4a9e3d1ce4f287a_3905f5d0b0eda75e = external constant [0 x i8]
@olang_loc_5b2b374f73dad39a_b03018bc2543a136 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %a0)
@olang_loc_696a437f6b67e70a_247b6a7ce30931f6 = external constant [0 x i8]
@olang_loc_f65b5445e0db363a_c2ab951bd73e6226 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_64562bc7ca55259a_4dcf078b9ca87c6 = external constant [0 x i8]
declare %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %v0, i1 %a0, i128 %a1)
declare %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %a0)
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)

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
