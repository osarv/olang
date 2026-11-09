source_filename = "compiler_check-9.quick.ll"
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
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:ctSource" = type { ptr, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:opShape" = type { { i64, ptr }, i64, i1, i1 }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/typed:SiteInfo" = type { i32, %"compiler/source:Span" }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:Ask" = type { i64, i64, i32, ptr, i64, { i64, ptr } }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTextType(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebareDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l21 = alloca %"compiler/names:Ref"
  %l25 = alloca i1
  %l28 = alloca i1
  %l35 = alloca i32
  %rv = alloca i32
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l15, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l17
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l17, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l15, !tbaa !29
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t38, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l21
  br label %bb7
bb7:
  %t42 = load %"compiler/names:Ref", ptr %l21
  store %"compiler/names:Ref" %t42, ptr %l4
  %t43 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = icmp eq i64 %t45, 0
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 9}
  %t52 = trunc i64 4 to i32
  %t53 = icmp eq i32 %t50, %t52
  store i1 %t53, ptr %l25, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l25, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  %t56 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = icmp sge i64 %t57, 0
  store i1 %t59, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t61 = load i1, ptr %l28, !tbaa !21
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t69 = load i64, ptr %t68, !tbaa !24
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t65, i64 %t67, i64 %t69)
  store i32 %t73, ptr %l35
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t74 = load i32, ptr %l35, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb17:
  store i32 -1, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i32 -1, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_9eb839b1731ec753_72a752a69f5cff)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %l17 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l37 = alloca i1
  %l46 = alloca ptr
  %l53 = alloca { i64, [3 x i64] }
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l62 = alloca i64
  %l67 = alloca ptr
  %l68 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca i64
  %l99 = alloca %"compiler/source:Span"
  %l100 = alloca ptr
  %l106 = alloca { i64, [3 x i64] }
  %l109 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l115 = alloca i64
  %l124 = alloca i1
  %l126 = alloca i1
  %l135 = alloca i1
  %l144 = alloca ptr
  %l151 = alloca { i64, [3 x i64] }
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %l160 = alloca i64
  %l161 = alloca ptr
  %l162 = alloca i64
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t95 = alloca { i64, [3 x i64] }, align 8
  %t222 = alloca { i64, [3 x i64] }, align 8
  %t329 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:TopIf", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopIf", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f83cb5cceffcf0b5_2b226308c40baf91)
  unreachable
bb4:
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/ast:TopIf", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TopBranch", ptr %t31, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t36 = load i32, ptr %l3, !tbaa !23
  %t39 = call i1 @compiler_2fcheck_2eassignsAll(ptr %v1, { i64, ptr } %t35, i32 %t36)
  store i1 %t39, ptr %l26
  br label %bb6
bb6:
  %t40 = load i1, ptr %l26, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t43 = load i1, ptr %l17, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TopIf", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  br i1 %t49, label %bb10, label %bb11
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb14
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f83cb5cceffcf0b5_2b226308c40baf91)
  unreachable
bb11:
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/ast:TopIf", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t57 = getelementptr %"compiler/ast:TopBranch", ptr %t54, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call i1 @compiler_2fcheck_2enestedSets(ptr %v1, { i64, ptr } %t58, i32 %t59)
  store i1 %t62, ptr %l37
  br label %bb13
bb13:
  %t63 = load i1, ptr %l37, !tbaa !21
  %t64 = xor i1 %t63, true
  store i1 %t64, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  %t66 = load i1, ptr %l28, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s1
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/ast:TopIf", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = icmp eq ptr %t70, null
  br i1 %t72, label %bb17, label %bb18
bb16:
  br label %bb24
bb17:
  call void @__olang_check_failed(ptr @olang_loc_e7ab01916875b50e_1d7262f9337b968a)
  unreachable
bb18:
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = getelementptr %"compiler/ast:TopIf", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t80 = getelementptr %"compiler/ast:TopBranch", ptr %t77, i32 0, i32 0
  %t81 = load %"compiler/source:Span", ptr %t80
  store %"compiler/source:Span" %t81, ptr %l6
  %t83 = load ptr, ptr %l5, !tbaa !29
  store ptr %t83, ptr %l46, !tbaa !29
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t89 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t92 = sext i32 %t90 to i64
  %t94 = add i64 %t92, 1
  store { i64, [3 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 0
  store i64 3, ptr %t96
  %t98 = insertvalue { i64, i64, i64 } undef, i64 %t84, 0
  %t100 = insertvalue { i64, i64, i64 } %t98, i64 %t88, 1
  %t102 = insertvalue { i64, i64, i64 } %t100, i64 %t94, 2
  %t103 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 1
  store { i64, i64, i64 } %t102, ptr %t103
  %t104 = load { i64, [3 x i64] }, ptr %t95
  store { i64, [3 x i64] } %t104, ptr %l53
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l3, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t105, i32 %t106)
  store { i64, ptr } %t109, ptr %l56
  br label %bb20
bb20:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l4, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t110, i32 %t111)
  store { i64, ptr } %t114, ptr %l59
  br label %bb21
bb21:
  %t115 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t124 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetMissing(ptr %v0, ptr %s1, ptr %s1, { i64, ptr } %t122, { i64, ptr } %t121)
  store %"compiler/diagmsg:Msg" %t124, ptr %l61
  br label %bb22
bb22:
  %t125 = load ptr, ptr %l46, !tbaa !29
  %t126 = load { i64, [3 x i64] }, ptr %l53
  %t127 = load %"compiler/diagmsg:Msg", ptr %l61
  %t128 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t125, { i64, [3 x i64] } %t126, %"compiler/diagmsg:Msg" %t127)
  store i64 %t128, ptr %l62
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s1)
  br label %bb24
bb24:
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t131 = getelementptr %"compiler/ast:TopIf", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb25, label %bb26
bb25:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l67, !tbaa !29
  %t139 = load i64, ptr %l1, !tbaa !24
  store i64 %t139, ptr %l68, !tbaa !24
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t142 = getelementptr %"compiler/ast:TopIf", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = icmp eq ptr %t143, null
  br i1 %t145, label %bb27, label %bb28
bb26:
  br label %bb31
bb27:
  call void @__olang_check_failed(ptr @olang_loc_2599613ebe6577bf_c7cdba117938678b)
  unreachable
bb28:
  br label %bb29
bb29:
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t149 = getelementptr %"compiler/ast:TopIf", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t153 = getelementptr %"compiler/ast:TopBranch", ptr %t150, i32 0, i32 1
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  %t155 = load i32, ptr %l3, !tbaa !23
  %t156 = load i32, ptr %l4, !tbaa !23
  %t157 = load ptr, ptr %l67, !tbaa !29
  %t158 = load i64, ptr %l68, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enestedBranches(ptr %v0, ptr %v1, ptr %t157, i64 %t158, { i64, ptr } %t154, i32 %t155, i32 %t156)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t162 = load ptr, ptr %l2, !tbaa !29
  %t164 = getelementptr %"compiler/ast:TopIf", ptr %t162, i32 0, i32 2
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = icmp eq ptr %t165, null
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb32, label %bb33
bb32:
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l82, !tbaa !29
  %t172 = load i64, ptr %l1, !tbaa !24
  store i64 %t172, ptr %l83, !tbaa !24
  %t173 = load ptr, ptr %l2, !tbaa !29
  %t175 = getelementptr %"compiler/ast:TopIf", ptr %t173, i32 0, i32 2
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = icmp eq ptr %t176, null
  br i1 %t178, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_29d8517aff2f45a0_a0a50ce7e575309c)
  unreachable
bb35:
  br label %bb36
bb36:
  %t180 = load ptr, ptr %l2, !tbaa !29
  %t182 = getelementptr %"compiler/ast:TopIf", ptr %t180, i32 0, i32 2
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t184 = load i32, ptr %l3, !tbaa !23
  %t185 = load i32, ptr %l4, !tbaa !23
  %t186 = load ptr, ptr %l82, !tbaa !29
  %t187 = load i64, ptr %l83, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %t186, i64 %t187, ptr %t183, i32 %t184, i32 %t185)
  br label %bb37
bb37:
  br label %ret
bb38:
  %t191 = load ptr, ptr %l2, !tbaa !29
  %t193 = getelementptr %"compiler/ast:TopIf", ptr %t191, i32 0, i32 3
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = icmp eq ptr %t194, null
  br i1 %t196, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s4
  %t198 = load ptr, ptr %l2, !tbaa !29
  %t200 = getelementptr %"compiler/ast:TopIf", ptr %t198, i32 0, i32 0
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = icmp eq ptr %t201, null
  br i1 %t203, label %bb41, label %bb42
bb40:
  br label %bb49
bb41:
  call void @__olang_check_failed(ptr @olang_loc_e693b908e929c719_6a5072149b305b6d)
  unreachable
bb42:
  br label %bb43
bb43:
  %t205 = load ptr, ptr %l2, !tbaa !29
  %t207 = getelementptr %"compiler/ast:TopIf", ptr %t205, i32 0, i32 0
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t208)
  store %"compiler/source:Span" %t210, ptr %l99
  br label %bb44
bb44:
  %t211 = load %"compiler/source:Span", ptr %l99
  store %"compiler/source:Span" %t211, ptr %l7
  %t212 = load ptr, ptr %l5, !tbaa !29
  store ptr %t212, ptr %l100, !tbaa !29
  %t213 = load i64, ptr %l1, !tbaa !24
  %t214 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t215 = load i32, ptr %t214, !tbaa !23
  %t217 = sext i32 %t215 to i64
  %t218 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t219 = load i32, ptr %t218, !tbaa !23
  %t221 = sext i32 %t219 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [3 x i64] }, ptr %t222, i32 0, i32 0
  store i64 3, ptr %t223
  %t225 = insertvalue { i64, i64, i64 } undef, i64 %t213, 0
  %t227 = insertvalue { i64, i64, i64 } %t225, i64 %t217, 1
  %t229 = insertvalue { i64, i64, i64 } %t227, i64 %t221, 2
  %t230 = getelementptr { i64, [3 x i64] }, ptr %t222, i32 0, i32 1
  store { i64, i64, i64 } %t229, ptr %t230
  %t231 = load { i64, [3 x i64] }, ptr %t222
  store { i64, [3 x i64] } %t231, ptr %l106
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l3, !tbaa !23
  %t236 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t232, i32 %t233)
  store { i64, ptr } %t236, ptr %l109
  br label %bb45
bb45:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i32, ptr %l4, !tbaa !23
  %t241 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t237, i32 %t238)
  store { i64, ptr } %t241, ptr %l112
  br label %bb46
bb46:
  %t242 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  %t244 = extractvalue { i64, ptr } %t242, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetNoElse(ptr %v0, ptr %s4, ptr %s4, { i64, ptr } %t249, { i64, ptr } %t248)
  store %"compiler/diagmsg:Msg" %t251, ptr %l114
  br label %bb47
bb47:
  %t252 = load ptr, ptr %l100, !tbaa !29
  %t253 = load { i64, [3 x i64] }, ptr %l106
  %t254 = load %"compiler/diagmsg:Msg", ptr %l114
  %t255 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s4, ptr %t252, { i64, [3 x i64] } %t253, %"compiler/diagmsg:Msg" %t254)
  store i64 %t255, ptr %l115
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb49:
  %t256 = load ptr, ptr %l2, !tbaa !29
  %t258 = getelementptr %"compiler/ast:TopIf", ptr %t256, i32 0, i32 3
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = icmp eq ptr %t259, null
  br i1 %t261, label %bb50, label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_854544ece9382ff2_682fdce3c1a33886)
  unreachable
bb51:
  br label %bb52
bb52:
  %t263 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr %"compiler/ast:TopIf", ptr %t263, i32 0, i32 3
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t269 = getelementptr %"compiler/ast:TopBranch", ptr %t266, i32 0, i32 1
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  %t271 = load i32, ptr %l3, !tbaa !23
  %t274 = call i1 @compiler_2fcheck_2eassignsAll(ptr %v1, { i64, ptr } %t270, i32 %t271)
  store i1 %t274, ptr %l124
  br label %bb53
bb53:
  %t275 = load i1, ptr %l124, !tbaa !21
  %t276 = xor i1 %t275, true
  br i1 %t276, label %bb54, label %bb55
bb54:
  %t278 = load ptr, ptr %l2, !tbaa !29
  %t280 = getelementptr %"compiler/ast:TopIf", ptr %t278, i32 0, i32 3
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t283 = icmp eq ptr %t281, null
  br i1 %t283, label %bb56, label %bb57
bb55:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb60
bb56:
  call void @__olang_check_failed(ptr @olang_loc_854544ece9382ff2_682fdce3c1a33886)
  unreachable
bb57:
  br label %bb58
bb58:
  %t285 = load ptr, ptr %l2, !tbaa !29
  %t287 = getelementptr %"compiler/ast:TopIf", ptr %t285, i32 0, i32 3
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t291 = getelementptr %"compiler/ast:TopBranch", ptr %t288, i32 0, i32 1
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  %t293 = load i32, ptr %l3, !tbaa !23
  %t296 = call i1 @compiler_2fcheck_2enestedSets(ptr %v1, { i64, ptr } %t292, i32 %t293)
  store i1 %t296, ptr %l135
  br label %bb59
bb59:
  %t297 = load i1, ptr %l135, !tbaa !21
  %t298 = xor i1 %t297, true
  store i1 %t298, ptr %l126, !tbaa !21
  br label %bb60
bb60:
  %t300 = load i1, ptr %l126, !tbaa !21
  br i1 %t300, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s5
  %t301 = load ptr, ptr %l2, !tbaa !29
  %t303 = getelementptr %"compiler/ast:TopIf", ptr %t301, i32 0, i32 3
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t306 = icmp eq ptr %t304, null
  br i1 %t306, label %bb63, label %bb64
bb62:
  br label %bb70
bb63:
  call void @__olang_check_failed(ptr @olang_loc_d274ad680f5d4033_842f2e84ef151c77)
  unreachable
bb64:
  br label %bb65
bb65:
  %t308 = load ptr, ptr %l2, !tbaa !29
  %t310 = getelementptr %"compiler/ast:TopIf", ptr %t308, i32 0, i32 3
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t314 = getelementptr %"compiler/ast:TopBranch", ptr %t311, i32 0, i32 0
  %t315 = load %"compiler/source:Span", ptr %t314
  store %"compiler/source:Span" %t315, ptr %l8
  %t317 = load ptr, ptr %l5, !tbaa !29
  store ptr %t317, ptr %l144, !tbaa !29
  %t318 = load i64, ptr %l1, !tbaa !24
  %t319 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t320 = load i32, ptr %t319, !tbaa !23
  %t322 = sext i32 %t320 to i64
  %t323 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t324 = load i32, ptr %t323, !tbaa !23
  %t326 = sext i32 %t324 to i64
  %t328 = add i64 %t326, 1
  store { i64, [3 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [3 x i64] }, ptr %t329, i32 0, i32 0
  store i64 3, ptr %t330
  %t332 = insertvalue { i64, i64, i64 } undef, i64 %t318, 0
  %t334 = insertvalue { i64, i64, i64 } %t332, i64 %t322, 1
  %t336 = insertvalue { i64, i64, i64 } %t334, i64 %t328, 2
  %t337 = getelementptr { i64, [3 x i64] }, ptr %t329, i32 0, i32 1
  store { i64, i64, i64 } %t336, ptr %t337
  %t338 = load { i64, [3 x i64] }, ptr %t329
  store { i64, [3 x i64] } %t338, ptr %l151
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i32, ptr %l3, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t339, i32 %t340)
  store { i64, ptr } %t343, ptr %l154
  br label %bb66
bb66:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load i32, ptr %l4, !tbaa !23
  %t348 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t344, i32 %t345)
  store { i64, ptr } %t348, ptr %l157
  br label %bb67
bb67:
  %t349 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t349, 0
  %t351 = extractvalue { i64, ptr } %t349, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  %t356 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t358 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetMissing(ptr %v0, ptr %s5, ptr %s5, { i64, ptr } %t356, { i64, ptr } %t355)
  store %"compiler/diagmsg:Msg" %t358, ptr %l159
  br label %bb68
bb68:
  %t359 = load ptr, ptr %l144, !tbaa !29
  %t360 = load { i64, [3 x i64] }, ptr %l151
  %t361 = load %"compiler/diagmsg:Msg", ptr %l159
  %t362 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t359, { i64, [3 x i64] } %t360, %"compiler/diagmsg:Msg" %t361)
  store i64 %t362, ptr %l160
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s5)
  br label %bb70
bb70:
  %t363 = load ptr, ptr %l0, !tbaa !29
  store ptr %t363, ptr %l161, !tbaa !29
  %t364 = load i64, ptr %l1, !tbaa !24
  store i64 %t364, ptr %l162, !tbaa !24
  %t365 = load ptr, ptr %l2, !tbaa !29
  %t367 = getelementptr %"compiler/ast:TopIf", ptr %t365, i32 0, i32 3
  %t368 = load ptr, ptr %t367, !tbaa !29
  %t370 = icmp eq ptr %t368, null
  br i1 %t370, label %bb71, label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_2ad59061de4a1064_c4b419dd58a3cc58)
  unreachable
bb72:
  br label %bb73
bb73:
  %t372 = load ptr, ptr %l2, !tbaa !29
  %t374 = getelementptr %"compiler/ast:TopIf", ptr %t372, i32 0, i32 3
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t378 = getelementptr %"compiler/ast:TopBranch", ptr %t375, i32 0, i32 1
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  %t380 = load i32, ptr %l3, !tbaa !23
  %t381 = load i32, ptr %l4, !tbaa !23
  %t382 = load ptr, ptr %l161, !tbaa !29
  %t383 = load i64, ptr %l162, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enestedBranches(ptr %v0, ptr %v1, ptr %t382, i64 %t383, { i64, ptr } %t379, i32 %t380, i32 %t381)
  br label %bb74
bb74:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecCallback(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb12
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l14
  br label %bb8
bb7:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb11
bb8:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Func", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = load ptr, ptr %l10, !tbaa !29
  %t29 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t27, i32 %t26)
  store { i64, ptr } %t29, ptr %l17
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s1, { i64, ptr } %t30, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t31, ptr %l18
  br label %bb10
bb10:
  %t32 = load i1, ptr %l18, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l9, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  %t35 = load i1, ptr %l9, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_687718fa9f832d83_eed198ed3faef857)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckGlobal(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l28 = alloca ptr
  %l32 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca %"compiler/generic:Context"
  %l44 = alloca %"compiler/generic:Context"
  %l47 = alloca ptr
  %l51 = alloca ptr
  %l54 = alloca i32
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l67 = alloca %"compiler/typed:Block"
  %l76 = alloca i64
  %l79 = alloca i64
  %l98 = alloca { i64, ptr }
  %l116 = alloca i32
  %l122 = alloca ptr
  %l124 = alloca %"compiler/generic:Context"
  %l128 = alloca i32
  %l131 = alloca i1
  %l132 = alloca i1
  %l134 = alloca ptr
  %l137 = alloca i32
  %l138 = alloca i1
  %l141 = alloca ptr
  %l146 = alloca i32
  %l151 = alloca i64
  %l155 = alloca i32
  %l158 = alloca i64
  %l161 = alloca i1
  %l169 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l175 = alloca ptr
  %l180 = alloca i32
  %l184 = alloca i1
  %l187 = alloca i1
  %l189 = alloca ptr
  %l191 = alloca %"compiler/source:Span"
  %l194 = alloca { i64, ptr }
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l197 = alloca i64
  %l201 = alloca i1
  %l204 = alloca i1
  %l205 = alloca ptr
  %l207 = alloca %"compiler/source:Span"
  %l210 = alloca { i64, ptr }
  %l212 = alloca %"compiler/diagmsg:Msg"
  %l213 = alloca i64
  %l221 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l232 = alloca { i64, ptr }
  %l236 = alloca i32
  %l241 = alloca i1
  %l242 = alloca i1
  %l250 = alloca ptr
  %l258 = alloca i1
  %l259 = alloca i1
  %l262 = alloca i1
  %l264 = alloca ptr
  %l265 = alloca ptr
  %l267 = alloca { i64, ptr }
  %l270 = alloca %"compiler/source:Span"
  %l272 = alloca i1
  %l277 = alloca i1
  %l288 = alloca ptr
  %l295 = alloca ptr
  %l299 = alloca i1
  %l300 = alloca i1
  %l303 = alloca i1
  %l305 = alloca ptr
  %l307 = alloca ptr
  %l309 = alloca %"compiler/source:Span"
  %l311 = alloca i1
  %l317 = alloca i64
  %l319 = alloca i64
  %l323 = alloca ptr
  %l327 = alloca i64
  %l330 = alloca i1
  %l334 = alloca i1
  %l350 = alloca i32
  %l352 = alloca i32
  %l354 = alloca i1
  %l355 = alloca ptr
  %l359 = alloca i32
  %l360 = alloca i1
  %l361 = alloca ptr
  %l362 = alloca %"compiler/source:Span"
  %l363 = alloca %"compiler/source:Span"
  %l364 = alloca i32
  %l370 = alloca ptr
  %l373 = alloca ptr
  %l374 = alloca %"compiler/source:Span"
  %l380 = alloca ptr
  %l387 = alloca ptr
  %l388 = alloca ptr
  %l392 = alloca { i64, ptr }
  %l393 = alloca %"compiler/typed:Block"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %t37 = alloca %"compiler/generic:Context", align 8
  %t298 = alloca %"compiler/generic:Context", align 8
  %t798 = alloca { i64, [4 x i64] }, align 8
  %t824 = alloca { i64, [4 x i64] }, align 8
  %t843 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i32, ptr %l3, !tbaa !23
  %t10 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5, i32 %t6)
  store ptr %t10, ptr %l28
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l28, !tbaa !29
  store ptr %t11, ptr %l4, !tbaa !29
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load i32, ptr %l3, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t18 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t12, i64 %t15)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18, ptr %l32
  br label %bb2
bb2:
  %t19 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l32
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t19, ptr %l5
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l2, !tbaa !24
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t20, i64 %a1, i64 %t22, i32 %t23, i32 0)
  store ptr %t28, ptr %l37
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l37, !tbaa !29
  store ptr %t29, ptr %l38, !tbaa !29
  %t31 = ptrtoint ptr %v0 to i64
  store i64 %t31, ptr %l39, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = call ptr @__olang_region_make(ptr %v0)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l39, !tbaa !24
  br label %bb5
bb5:
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l39
  %t39 = inttoptr i64 %t38 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t37, ptr %t39, i64 %t36, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t37, i64 160, i1 false)
  br label %bb6
bb6:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load i64, ptr %l39
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"compiler/generic:Context", ptr %l42, i32 0, i32 3
  %t46 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t45, i32 0, i32 2
  %t47 = load { i64, ptr }, ptr %t46
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr null)
  %t50 = icmp ne ptr %t49, null
  %t51 = select i1 %t50, ptr %t49, ptr null
  %t52 = getelementptr %"compiler/generic:Context", ptr %l42, i32 0, i32 3
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr %t51
  %t59 = getelementptr %"compiler/generic:Context", ptr %l42, i32 0, i32 3
  %t60 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t59, i32 0, i32 0
  %t61 = load { i64, ptr }, ptr %t60
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = call ptr @__olang_region_or(ptr %t62, ptr null)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr %t58
  %t66 = getelementptr %"compiler/generic:Context", ptr %l42, i32 0, i32 2
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t66, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t65
  %t73 = getelementptr %"compiler/generic:Context", ptr %l42, i32 0, i32 2
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = call ptr @__olang_region_or(ptr %t76, ptr null)
  %t78 = icmp ne ptr %t77, null
  %t79 = select i1 %t78, ptr %t77, ptr %t72
  %t80 = getelementptr %"compiler/generic:Context", ptr %l42, i32 0, i32 2
  %t81 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t80, i32 0, i32 0
  %t82 = load { i64, ptr }, ptr %t81
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = call ptr @__olang_region_or(ptr %t83, ptr null)
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr %t79
  %t87 = icmp eq ptr %t86, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t87)
  br label %bb8
bb8:
  %t88 = load ptr, ptr %l38, !tbaa !29
  %t89 = getelementptr %"compiler/check:frame", ptr %t88, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %t89, i64 160, i1 false)
  %t90 = load ptr, ptr %l38, !tbaa !29
  %t91 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %l42, i64 160, i1 false)
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t92, label %bb9, label %bb10
bb9:
  %t94 = getelementptr %"compiler/generic:Context", ptr %l44, i32 0, i32 3
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t94, i32 0, i32 2
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = getelementptr %"compiler/generic:Context", ptr %l44, i32 0, i32 3
  %t102 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t101, i32 0, i32 1
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr %t100
  %t108 = getelementptr %"compiler/generic:Context", ptr %l44, i32 0, i32 3
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t107
  %t115 = getelementptr %"compiler/generic:Context", ptr %l44, i32 0, i32 2
  %t116 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t115, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr %t114
  %t122 = getelementptr %"compiler/generic:Context", ptr %l44, i32 0, i32 2
  %t123 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t122, i32 0, i32 1
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t121
  %t129 = getelementptr %"compiler/generic:Context", ptr %l44, i32 0, i32 2
  %t130 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t129, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = call ptr @__olang_region_or(ptr %t132, ptr null)
  %t134 = icmp ne ptr %t133, null
  %t135 = select i1 %t134, ptr %t133, ptr %t128
  call void @__olang_region_drop(ptr %t135)
  store %"compiler/generic:Context" zeroinitializer, ptr %l44
  br label %bb10
bb10:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t136)
  store ptr %t138, ptr %l47
  br label %bb11
bb11:
  %t139 = load ptr, ptr %l47, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Body", ptr %t139, i32 0, i32 4
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l7
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t144)
  store ptr %t146, ptr %l51
  br label %bb12
bb12:
  %t147 = load %"compiler/source:Span", ptr %l7
  %t148 = load ptr, ptr %l51, !tbaa !29
  %t151 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t148, i32 -1, i32 0, %"compiler/source:Span" %t147)
  store i32 %t151, ptr %l54
  br label %bb13
bb13:
  %t152 = load ptr, ptr %l4, !tbaa !29
  %t154 = icmp eq ptr %t152, null
  br i1 %t154, label %bb14, label %bb15
bb14:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 28
  %t159 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t160 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %t158, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t159, i32 %t160)
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t164)
  store ptr %t166, ptr %l62
  br label %bb17
bb17:
  %t167 = load ptr, ptr %l62, !tbaa !29
  store ptr %t167, ptr %l63, !tbaa !29
  %t168 = icmp sge i64 0, 0
  br i1 %t168, label %bb18, label %bb19
bb18:
  %t170 = icmp sle i64 0, 1152921504606846975
  br i1 %t170, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_27b76e5e144937_92b9984f1a7672bb)
  unreachable
bb20:
  %t172 = mul i64 0, 8
  %t173 = insertvalue { i64, ptr } undef, i64 0, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t176 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t174)
  store %"compiler/typed:Block" %t176, ptr %l67
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_27b76e5e144937_92b9984f1a7672bb)
  unreachable
bb22:
  %t177 = load %"compiler/typed:Block", ptr %l67
  %t178 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t177, ptr %t178
  %t180 = load ptr, ptr %l63, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Body", ptr %t180, i32 0, i32 11
  store ptr %t178, ptr %t181, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t182)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t184 = load ptr, ptr %l4, !tbaa !29
  %t186 = getelementptr %"compiler/ast:VarDecl", ptr %t184, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  store i64 %t189, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t191 = load i64, ptr %l10, !tbaa !24
  %t192 = load i64, ptr %l9, !tbaa !24
  %t195 = icmp sgt i64 %t191, %t192
  br i1 %t195, label %bb25, label %bb26
bb25:
  %t197 = load i64, ptr %l11, !tbaa !24
  %t199 = icmp sgt i64 %t197, 0
  br i1 %t199, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb30
bb27:
  %t201 = load i64, ptr %l10, !tbaa !24
  %t202 = load i64, ptr %l9, !tbaa !24
  %t205 = sub i64 %t201, %t202
  %t206 = load i64, ptr %l11, !tbaa !24
  %t209 = add i64 %t205, %t206
  %t211 = sub i64 %t209, 1
  %t212 = load i64, ptr %l11, !tbaa !24
  %t215 = sdiv i64 %t211, %t212
  store i64 %t215, ptr %l79, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb29
bb29:
  %t217 = load i64, ptr %l79, !tbaa !24
  store i64 %t217, ptr %l76, !tbaa !24
  br label %bb30
bb30:
  %t218 = load i64, ptr %l76, !tbaa !24
  store i64 %t218, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  %t219 = load i64, ptr %l13, !tbaa !24
  %t220 = load i64, ptr %l12, !tbaa !24
  %t223 = icmp slt i64 %t219, %t220
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb32, label %bb33
bb32:
  br label %bb39
bb33:
  br label %bb34
bb34:
  %t227 = load i64, ptr %l9, !tbaa !24
  %t228 = load i64, ptr %l13, !tbaa !24
  %t229 = load i64, ptr %l11, !tbaa !24
  %t232 = mul i64 %t228, %t229
  %t235 = add i64 %t227, %t232
  store i64 %t235, ptr %l14, !tbaa !24
  %t237 = load ptr, ptr %l4, !tbaa !29
  %t239 = getelementptr %"compiler/ast:VarDecl", ptr %t237, i32 0, i32 0
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  store { i64, ptr } %t240, ptr %l98, !tbaa !27
  %t241 = load i64, ptr %l14, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 %t241
  %t246 = load i32, ptr %t245, !tbaa !33
  %t247 = load i32, ptr %l3, !tbaa !23
  %t250 = icmp eq i32 %t246, %t247
  br i1 %t250, label %bb35, label %bb36
bb35:
  %t252 = load i64, ptr %l14, !tbaa !24
  store i64 %t252, ptr %l8, !tbaa !24
  br label %bb37
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t254 = load i64, ptr %l13, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l13, !tbaa !24
  br label %bb31
bb39:
  %t258 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t258, ptr %l15, !tbaa !23
  %t260 = load ptr, ptr %l4, !tbaa !29
  %t262 = getelementptr %"compiler/ast:VarDecl", ptr %t260, i32 0, i32 2
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = icmp eq ptr %t263, null
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb40, label %bb41
bb40:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 68
  store i1 true, ptr %t271, !tbaa !21
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 97
  store i1 true, ptr %t274, !tbaa !21
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l4, !tbaa !29
  %t278 = getelementptr %"compiler/ast:VarDecl", ptr %t276, i32 0, i32 2
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t282 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v0, ptr %t275, ptr %t279)
  store i32 %t282, ptr %l116
  br label %bb42
bb41:
  br label %bb60
bb42:
  %t283 = load i32, ptr %l116, !tbaa !23
  store i32 %t283, ptr %l15, !tbaa !23
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 68
  store i1 false, ptr %t286, !tbaa !21
  %t287 = load i32, ptr %l15, !tbaa !23
  %t288 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t291 = icmp ne i32 %t287, %t288
  br i1 %t291, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s7
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/check:Checker", ptr %t293, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !29
  store ptr %t296, ptr %l122, !tbaa !29
  %t297 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t298, ptr %s7, i64 %t297, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l124, ptr %t298, i64 160, i1 false)
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t300 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t300, ptr %l124, i64 160, i1 false)
  %t301 = load ptr, ptr %l4, !tbaa !29
  %t302 = load i32, ptr %l3, !tbaa !23
  %t303 = load ptr, ptr %l122, !tbaa !29
  %t307 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %s7, ptr %v0, ptr %t303, ptr %t300, ptr %t301, i32 %t302)
  store i32 %t307, ptr %l128
  br label %bb46
bb46:
  %t308 = load i32, ptr %l128, !tbaa !23
  store i32 %t308, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb47:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load i32, ptr %l15, !tbaa !23
  %t313 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t309, i32 %t310)
  store i1 %t313, ptr %l131
  br label %bb48
bb48:
  %t314 = load i1, ptr %l131, !tbaa !21
  br i1 %t314, label %bb49, label %bb50
bb49:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t315, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !29
  store ptr %t318, ptr %l134, !tbaa !29
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load i32, ptr %l15, !tbaa !23
  %t323 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t319, i32 %t320)
  store i32 %t323, ptr %l137
  br label %bb51
bb50:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb53
bb51:
  %t324 = load ptr, ptr %l134, !tbaa !29
  %t325 = load i32, ptr %l137, !tbaa !23
  %t326 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t324, i32 %t325)
  store i1 %t326, ptr %l138
  br label %bb52
bb52:
  %t327 = load i1, ptr %l138, !tbaa !21
  store i1 %t327, ptr %l132, !tbaa !21
  br label %bb53
bb53:
  %t328 = load i1, ptr %l132, !tbaa !21
  br i1 %t328, label %bb54, label %bb55
bb54:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/check:Checker", ptr %t329, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = getelementptr %"compiler/generic:Program", ptr %t332, i32 0, i32 2
  store ptr %t334, ptr %l141, !tbaa !29
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/check:Checker", ptr %t335, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t340 = getelementptr %"compiler/generic:Program", ptr %t338, i32 0, i32 2
  %t341 = load i32, ptr %l15, !tbaa !23
  %t344 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t340, i32 %t341)
  store i32 %t344, ptr %l146
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"compiler/generic:Program", ptr %t348, i32 0, i32 2
  %t351 = load i32, ptr %l15, !tbaa !23
  %t354 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t350, i32 %t351)
  store i64 %t354, ptr %l151
  br label %bb57
bb57:
  %t355 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t357 = xor i64 %t355, -1
  %t358 = load i64, ptr %l151, !tbaa !24
  %t360 = and i64 %t358, %t357
  %t361 = load ptr, ptr %l141, !tbaa !29
  %t362 = load i32, ptr %l146, !tbaa !23
  %t364 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t361, i32 %t362, i64 %t360)
  store i32 %t364, ptr %l155
  br label %bb58
bb58:
  %t365 = load i32, ptr %l155, !tbaa !23
  store i32 %t365, ptr %l15, !tbaa !23
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr %"compiler/check:Checker", ptr %t366, i32 0, i32 37
  %t370 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t368)
  store i64 %t370, ptr %l158
  br label %bb61
bb61:
  %t371 = load i64, ptr %l158, !tbaa !24
  store i64 %t371, ptr %l16, !tbaa !24
  store ptr null, ptr %l17, !tbaa !29
  %t372 = load ptr, ptr %l4, !tbaa !29
  %t374 = getelementptr %"compiler/ast:VarDecl", ptr %t372, i32 0, i32 7
  %t375 = load i1, ptr %t374, !tbaa !21
  br i1 %t375, label %bb62, label %bb63
bb62:
  %t377 = load i64, ptr %l8, !tbaa !24
  %t378 = load ptr, ptr %l4, !tbaa !29
  %t380 = getelementptr %"compiler/ast:VarDecl", ptr %t378, i32 0, i32 3
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  %t383 = extractvalue { i64, ptr } %t381, 0
  %t386 = icmp slt i64 %t377, %t383
  store i1 %t386, ptr %l161, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb64
bb64:
  %t388 = load i1, ptr %l161, !tbaa !21
  br i1 %t388, label %bb65, label %bb66
bb65:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load ptr, ptr %l4, !tbaa !29
  %t392 = getelementptr %"compiler/ast:VarDecl", ptr %t390, i32 0, i32 3
  %t393 = load { i64, ptr }, ptr %t392, !tbaa !27
  store { i64, ptr } %t393, ptr %l169, !tbaa !27
  %t394 = load i64, ptr %l8, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr ptr, ptr %t397, i64 %t394
  %t399 = load ptr, ptr %t398, !tbaa !39
  %t402 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCall(ptr %v0, ptr %v0, ptr %v0, ptr %t389, ptr %t399)
  store ptr %t402, ptr %l172
  br label %bb67
bb66:
  %t403 = load i64, ptr %l8, !tbaa !24
  %t404 = load ptr, ptr %l4, !tbaa !29
  %t406 = getelementptr %"compiler/ast:VarDecl", ptr %t404, i32 0, i32 3
  %t407 = load { i64, ptr }, ptr %t406, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t412 = icmp slt i64 %t403, %t409
  br i1 %t412, label %bb92, label %bb93
bb67:
  %t414 = load ptr, ptr %l172, !tbaa !29
  store ptr %t414, ptr %l18, !tbaa !29
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load ptr, ptr %l18, !tbaa !29
  %t419 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrExpr(ptr %v0, ptr %v0, ptr %v0, ptr %t415, ptr %t416)
  store ptr %t419, ptr %l175
  br label %bb68
bb68:
  %t420 = load ptr, ptr %l175, !tbaa !29
  store ptr %t420, ptr %l17, !tbaa !29
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load ptr, ptr %l18, !tbaa !29
  %t424 = load ptr, ptr %l17, !tbaa !29
  %t428 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v0, ptr %v0, ptr %t422, ptr %t423, ptr %t424, i1 true)
  store i32 %t428, ptr %l180
  br label %bb69
bb69:
  %t429 = load i32, ptr %l180, !tbaa !23
  store i32 %t429, ptr %l15, !tbaa !23
  %t430 = load i32, ptr %l15, !tbaa !23
  %t431 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t434 = icmp ne i32 %t430, %t431
  br i1 %t434, label %bb70, label %bb71
bb70:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i32, ptr %l15, !tbaa !23
  %t440 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrTypeOk(ptr %v0, ptr %t436, i32 %t437)
  store i1 %t440, ptr %l187
  br label %bb72
bb71:
  store i1 false, ptr %l184, !tbaa !21
  br label %bb73
bb72:
  %t441 = load i1, ptr %l187, !tbaa !21
  %t442 = xor i1 %t441, true
  store i1 %t442, ptr %l184, !tbaa !21
  br label %bb73
bb73:
  %t444 = load i1, ptr %l184, !tbaa !21
  br i1 %t444, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s10
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l189, !tbaa !29
  %t446 = load ptr, ptr %l18, !tbaa !29
  %t448 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t446)
  store %"compiler/source:Span" %t448, ptr %l191
  br label %bb76
bb75:
  %t449 = load i32, ptr %l15, !tbaa !23
  %t450 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t453 = icmp ne i32 %t449, %t450
  br i1 %t453, label %bb80, label %bb81
bb76:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i32, ptr %l15, !tbaa !23
  %t459 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t455, i32 %t456)
  store { i64, ptr } %t459, ptr %l194
  br label %bb77
bb77:
  %t460 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 0
  %t462 = extractvalue { i64, ptr } %t460, 1
  %t463 = mul i64 %t461, 1
  %t464 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t463)
  call void @llvm.memcpy.p0.p0.i64(ptr %t464, ptr %t462, i64 %t463, i1 false)
  %t465 = insertvalue { i64, ptr } undef, i64 %t461, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t464, 1
  %t468 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrType(ptr %s10, ptr %s10, { i64, ptr } %t466)
  store %"compiler/diagmsg:Msg" %t468, ptr %l196
  br label %bb78
bb78:
  %t469 = load ptr, ptr %l189, !tbaa !29
  %t470 = load %"compiler/source:Span", ptr %l191
  %t471 = load %"compiler/diagmsg:Msg", ptr %l196
  %t472 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t469, %"compiler/source:Span" %t470, %"compiler/diagmsg:Msg" %t471)
  store i64 %t472, ptr %l197
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s10)
  br label %bb91
bb80:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l15, !tbaa !23
  %t477 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t473, i32 %t474)
  store i1 %t477, ptr %l204
  br label %bb82
bb81:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb83
bb82:
  %t478 = load i1, ptr %l204, !tbaa !21
  store i1 %t478, ptr %l201, !tbaa !21
  br label %bb83
bb83:
  %t479 = load i1, ptr %l201, !tbaa !21
  br i1 %t479, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s12
  %t480 = load ptr, ptr %l0, !tbaa !29
  store ptr %t480, ptr %l205, !tbaa !29
  %t481 = load ptr, ptr %l18, !tbaa !29
  %t483 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t481)
  store %"compiler/source:Span" %t483, ptr %l207
  br label %bb86
bb85:
  br label %bb90
bb86:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i32, ptr %l15, !tbaa !23
  %t488 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t484, i32 %t485)
  store { i64, ptr } %t488, ptr %l210
  br label %bb87
bb87:
  %t489 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t489, 0
  %t491 = extractvalue { i64, ptr } %t489, 1
  %t492 = mul i64 %t490, 1
  %t493 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t492)
  call void @llvm.memcpy.p0.p0.i64(ptr %t493, ptr %t491, i64 %t492, i1 false)
  %t494 = insertvalue { i64, ptr } undef, i64 %t490, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %t493, 1
  %t497 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrWritable(ptr %s12, ptr %s12, { i64, ptr } %t495)
  store %"compiler/diagmsg:Msg" %t497, ptr %l212
  br label %bb88
bb88:
  %t498 = load ptr, ptr %l205, !tbaa !29
  %t499 = load %"compiler/source:Span", ptr %l207
  %t500 = load %"compiler/diagmsg:Msg", ptr %l212
  %t501 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t498, %"compiler/source:Span" %t499, %"compiler/diagmsg:Msg" %t500)
  store i64 %t501, ptr %l213
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s12)
  br label %bb90
bb90:
  br label %bb91
bb91:
  br label %bb158
bb92:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load ptr, ptr %l4, !tbaa !29
  %t505 = getelementptr %"compiler/ast:VarDecl", ptr %t503, i32 0, i32 3
  %t506 = load { i64, ptr }, ptr %t505, !tbaa !27
  store { i64, ptr } %t506, ptr %l221, !tbaa !27
  %t507 = load i64, ptr %l8, !tbaa !24
  %t509 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t510 = load ptr, ptr %t509, !tbaa !27
  %t511 = getelementptr ptr, ptr %t510, i64 %t507
  %t512 = load ptr, ptr %t511, !tbaa !39
  %t513 = load i32, ptr %l15, !tbaa !23
  %t517 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v0, ptr %v0, ptr %t502, ptr %t512, i32 %t513)
  store ptr %t517, ptr %l225
  br label %bb94
bb93:
  %t518 = load ptr, ptr %l4, !tbaa !29
  %t520 = getelementptr %"compiler/ast:VarDecl", ptr %t518, i32 0, i32 3
  %t521 = load { i64, ptr }, ptr %t520, !tbaa !27
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t525 = icmp eq i64 %t523, 1
  br i1 %t525, label %bb120, label %bb121
bb94:
  %t527 = load ptr, ptr %l225, !tbaa !29
  store ptr %t527, ptr %l17, !tbaa !29
  %t529 = load ptr, ptr %l4, !tbaa !29
  %t531 = getelementptr %"compiler/ast:VarDecl", ptr %t529, i32 0, i32 2
  %t532 = load ptr, ptr %t531, !tbaa !29
  %t534 = icmp eq ptr %t532, null
  br i1 %t534, label %bb95, label %bb96
bb95:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load ptr, ptr %l4, !tbaa !29
  %t539 = getelementptr %"compiler/ast:VarDecl", ptr %t537, i32 0, i32 3
  %t540 = load { i64, ptr }, ptr %t539, !tbaa !27
  store { i64, ptr } %t540, ptr %l232, !tbaa !27
  %t541 = load i64, ptr %l8, !tbaa !24
  %t543 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = getelementptr ptr, ptr %t544, i64 %t541
  %t546 = load ptr, ptr %t545, !tbaa !39
  %t547 = load ptr, ptr %l17, !tbaa !29
  %t551 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v0, ptr %v0, ptr %t536, ptr %t546, ptr %t547, i1 true)
  store i32 %t551, ptr %l236
  br label %bb97
bb96:
  br label %bb98
bb97:
  %t552 = load i32, ptr %l236, !tbaa !23
  store i32 %t552, ptr %l15, !tbaa !23
  br label %bb98
bb98:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load i64, ptr %l2, !tbaa !24
  %t555 = load i32, ptr %l3, !tbaa !23
  %t556 = load ptr, ptr %l4, !tbaa !29
  %t561 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildDefaulted(ptr %v0, ptr %v0, ptr %t553, i64 %t554, i32 %t555, ptr %t556)
  store i1 %t561, ptr %l241
  br label %bb99
bb99:
  %t562 = load i1, ptr %l241, !tbaa !21
  br i1 %t562, label %bb100, label %bb101
bb100:
  %t563 = load i32, ptr %l15, !tbaa !23
  %t564 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t567 = icmp ne i32 %t563, %t564
  store i1 %t567, ptr %l242, !tbaa !21
  br label %bb102
bb101:
  store i1 false, ptr %l242, !tbaa !21
  br label %bb102
bb102:
  %t569 = load i1, ptr %l242, !tbaa !21
  br i1 %t569, label %bb103, label %bb104
bb103:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l7
  %t572 = load i32, ptr %l3, !tbaa !23
  %t573 = load i32, ptr %l15, !tbaa !23
  %t578 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefineValue(ptr %v0, ptr %v0, ptr %t570, %"compiler/source:Span" %t571, i32 %t572, i32 %t573)
  store ptr %t578, ptr %l250
  br label %bb105
bb104:
  br label %bb109
bb105:
  %t579 = load ptr, ptr %l250, !tbaa !29
  store ptr %t579, ptr %l19, !tbaa !29
  %t580 = load ptr, ptr %l19, !tbaa !29
  %t582 = icmp eq ptr %t580, null
  %t584 = xor i1 %t582, true
  br i1 %t584, label %bb106, label %bb107
bb106:
  %t586 = load ptr, ptr %l19, !tbaa !29
  store ptr %t586, ptr %l17, !tbaa !29
  br label %bb108
bb107:
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t589 = load ptr, ptr %l4, !tbaa !29
  %t591 = getelementptr %"compiler/ast:VarDecl", ptr %t589, i32 0, i32 2
  %t592 = load ptr, ptr %t591, !tbaa !29
  %t594 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t592)
  store i1 %t594, ptr %l258
  br label %bb110
bb110:
  %t595 = load i1, ptr %l258, !tbaa !21
  br i1 %t595, label %bb111, label %bb112
bb111:
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t597 = load i32, ptr %l15, !tbaa !23
  %t600 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t596, i32 %t597)
  store i1 %t600, ptr %l262
  br label %bb113
bb112:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb114
bb113:
  %t601 = load i1, ptr %l262, !tbaa !21
  %t602 = xor i1 %t601, true
  store i1 %t602, ptr %l259, !tbaa !21
  br label %bb114
bb114:
  %t604 = load i1, ptr %l259, !tbaa !21
  br i1 %t604, label %bb115, label %bb116
bb115:
  %t605 = load ptr, ptr %l0, !tbaa !29
  store ptr %t605, ptr %l264, !tbaa !29
  %t606 = load ptr, ptr %l17, !tbaa !29
  store ptr %t606, ptr %l265, !tbaa !29
  %t607 = load ptr, ptr %l4, !tbaa !29
  %t609 = getelementptr %"compiler/ast:VarDecl", ptr %t607, i32 0, i32 3
  %t610 = load { i64, ptr }, ptr %t609, !tbaa !27
  store { i64, ptr } %t610, ptr %l267, !tbaa !27
  %t611 = load i64, ptr %l8, !tbaa !24
  %t613 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !27
  %t615 = getelementptr ptr, ptr %t614, i64 %t611
  %t616 = load ptr, ptr %t615, !tbaa !39
  %t618 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t616)
  store %"compiler/source:Span" %t618, ptr %l270
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t619 = load i64, ptr @G_2ecompiler_2fcheck_2eRoGlobal, !tbaa !24
  %t620 = load ptr, ptr %l264, !tbaa !29
  %t621 = load ptr, ptr %l265, !tbaa !29
  %t622 = load %"compiler/source:Span", ptr %l270
  %t624 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t620, ptr %t621, %"compiler/source:Span" %t622, i64 %t619)
  store i1 %t624, ptr %l272
  br label %bb118
bb118:
  br label %bb119
bb119:
  br label %bb157
bb120:
  %t625 = load ptr, ptr %l4, !tbaa !29
  %t627 = getelementptr %"compiler/ast:VarDecl", ptr %t625, i32 0, i32 0
  %t628 = load { i64, ptr }, ptr %t627, !tbaa !27
  %t630 = extractvalue { i64, ptr } %t628, 0
  %t632 = icmp sgt i64 %t630, 1
  store i1 %t632, ptr %l277, !tbaa !21
  br label %bb122
bb121:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb122
bb122:
  %t634 = load i1, ptr %l277, !tbaa !21
  br i1 %t634, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s20
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s20, ptr %t635, %"compiler/source:Span" %t636, { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb125
bb124:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t640 = load i64, ptr %l2, !tbaa !24
  %t641 = load i32, ptr %l3, !tbaa !23
  %t642 = load %"compiler/source:Span", ptr %l7
  %t647 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetOf(ptr %v0, ptr %v0, ptr %t639, i64 %t640, i32 %t641, %"compiler/source:Span" %t642)
  store ptr %t647, ptr %l288
  br label %bb126
bb125:
  call void @__olang_scope_close(ptr %s20)
  br label %bb156
bb126:
  %t648 = load ptr, ptr %l288, !tbaa !29
  store ptr %t648, ptr %l20, !tbaa !29
  %t649 = load ptr, ptr %l20, !tbaa !29
  %t651 = icmp eq ptr %t649, null
  %t653 = xor i1 %t651, true
  br i1 %t653, label %bb127, label %bb128
bb127:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load ptr, ptr %l20, !tbaa !29
  %t657 = load i32, ptr %l15, !tbaa !23
  %t661 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v0, ptr %v0, ptr %t655, ptr %t656, i32 %t657)
  store ptr %t661, ptr %l295
  br label %bb129
bb128:
  %t662 = load ptr, ptr %l0, !tbaa !29
  %t664 = getelementptr %"compiler/check:Checker", ptr %t662, i32 0, i32 1
  %t665 = load ptr, ptr %t664, !tbaa !29
  %t667 = getelementptr %"compiler/generic:Program", ptr %t665, i32 0, i32 0
  %t668 = load ptr, ptr %t667, !tbaa !29
  %t670 = getelementptr %"compiler/load:Loader", ptr %t668, i32 0, i32 4
  %t671 = load ptr, ptr %t670, !tbaa !29
  store ptr %t671, ptr %l21, !tbaa !29
  %t673 = load ptr, ptr %l21, !tbaa !29
  %t675 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t673)
  store i64 %t675, ptr %l317
  br label %bb140
bb129:
  %t676 = load ptr, ptr %l295, !tbaa !29
  store ptr %t676, ptr %l17, !tbaa !29
  %t678 = load ptr, ptr %l4, !tbaa !29
  %t680 = getelementptr %"compiler/ast:VarDecl", ptr %t678, i32 0, i32 2
  %t681 = load ptr, ptr %t680, !tbaa !29
  %t683 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t681)
  store i1 %t683, ptr %l299
  br label %bb130
bb130:
  %t684 = load i1, ptr %l299, !tbaa !21
  br i1 %t684, label %bb131, label %bb132
bb131:
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t686 = load i32, ptr %l15, !tbaa !23
  %t689 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t685, i32 %t686)
  store i1 %t689, ptr %l303
  br label %bb133
bb132:
  store i1 false, ptr %l300, !tbaa !21
  br label %bb134
bb133:
  %t690 = load i1, ptr %l303, !tbaa !21
  %t691 = xor i1 %t690, true
  store i1 %t691, ptr %l300, !tbaa !21
  br label %bb134
bb134:
  %t693 = load i1, ptr %l300, !tbaa !21
  br i1 %t693, label %bb135, label %bb136
bb135:
  %t694 = load ptr, ptr %l0, !tbaa !29
  store ptr %t694, ptr %l305, !tbaa !29
  %t695 = load ptr, ptr %l17, !tbaa !29
  store ptr %t695, ptr %l307, !tbaa !29
  %t697 = load ptr, ptr %l20, !tbaa !29
  %t699 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t697)
  store %"compiler/source:Span" %t699, ptr %l309
  br label %bb137
bb136:
  br label %bb139
bb137:
  %t700 = load i64, ptr @G_2ecompiler_2fcheck_2eRoGlobal, !tbaa !24
  %t701 = load ptr, ptr %l305, !tbaa !29
  %t702 = load ptr, ptr %l307, !tbaa !29
  %t703 = load %"compiler/source:Span", ptr %l309
  %t705 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t701, ptr %t702, %"compiler/source:Span" %t703, i64 %t700)
  store i1 %t705, ptr %l311
  br label %bb138
bb138:
  br label %bb139
bb139:
  br label %bb155
bb140:
  %t706 = load i64, ptr %l317, !tbaa !24
  store i64 %t706, ptr %l22, !tbaa !24
  %t707 = load ptr, ptr %l21, !tbaa !29
  %t709 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t707)
  store i64 %t709, ptr %l319
  br label %bb141
bb141:
  %t710 = load i64, ptr %l319, !tbaa !24
  store i64 %t710, ptr %l23, !tbaa !24
  %t711 = load ptr, ptr %l0, !tbaa !29
  %t712 = load %"compiler/source:Span", ptr %l7
  %t713 = load i32, ptr %l15, !tbaa !23
  %t717 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t711, %"compiler/source:Span" %t712, i32 %t713)
  store ptr %t717, ptr %l323
  br label %bb142
bb142:
  %t718 = load ptr, ptr %l323, !tbaa !29
  store ptr %t718, ptr %l17, !tbaa !29
  %t720 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t720)
  br label %bb143
bb143:
  %t722 = load ptr, ptr %l21, !tbaa !29
  %t724 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t722)
  store i64 %t724, ptr %l327
  br label %bb144
bb144:
  %t725 = load i64, ptr %l23, !tbaa !24
  %t726 = load i64, ptr %l327, !tbaa !24
  %t728 = icmp sgt i64 %t726, %t725
  br i1 %t728, label %bb145, label %bb146
bb145:
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t731 = load i64, ptr %l2, !tbaa !24
  %t732 = load i32, ptr %l3, !tbaa !23
  %t736 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetAnywhere(ptr %v0, ptr %t730, i64 %t731, i32 %t732)
  store i1 %t736, ptr %l334
  br label %bb147
bb146:
  store i1 false, ptr %l330, !tbaa !21
  br label %bb148
bb147:
  %t737 = load i1, ptr %l334, !tbaa !21
  store i1 %t737, ptr %l330, !tbaa !21
  br label %bb148
bb148:
  %t738 = load i1, ptr %l330, !tbaa !21
  br i1 %t738, label %bb149, label %bb150
bb149:
  %t739 = load ptr, ptr %l21, !tbaa !29
  %t740 = load i64, ptr %l22, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t739, i64 %t740)
  br label %bb151
bb150:
  %t743 = load ptr, ptr %l21, !tbaa !29
  %t744 = load i64, ptr %l22, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t743, i64 %t744)
  br label %bb152
bb151:
  br label %bb153
bb152:
  br label %bb153
bb153:
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t748 = load %"compiler/source:Span", ptr %l7
  %t749 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v0, ptr %t747, i32 1, %"compiler/source:Span" %t748, i32 %t749, ptr null)
  br label %bb154
bb154:
  br label %bb155
bb155:
  br label %bb156
bb156:
  br label %bb157
bb157:
  br label %bb158
bb158:
  %t754 = load ptr, ptr %l0, !tbaa !29
  %t756 = getelementptr %"compiler/check:Checker", ptr %t754, i32 0, i32 28
  %t757 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t758 = load i32, ptr %l15, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %t756, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t757, i32 %t758)
  br label %bb159
bb159:
  %t762 = load ptr, ptr %l17, !tbaa !29
  %t764 = icmp eq ptr %t762, null
  %t766 = xor i1 %t764, true
  br i1 %t766, label %bb160, label %bb161
bb160:
  %t768 = load i32, ptr %l15, !tbaa !23
  store i32 %t768, ptr %l350, !tbaa !23
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t771 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t769)
  store i32 %t771, ptr %l352
  br label %bb162
bb161:
  br label %bb182
bb162:
  %t772 = load i32, ptr %l350, !tbaa !23
  %t773 = load i32, ptr %l352, !tbaa !23
  %t774 = icmp eq i32 %t772, %t773
  br i1 %t774, label %bb163, label %bb164
bb163:
  %t776 = load ptr, ptr %l0, !tbaa !29
  store ptr %t776, ptr %l355, !tbaa !29
  %t777 = load ptr, ptr %l17, !tbaa !29
  %t779 = icmp eq ptr %t777, null
  br i1 %t779, label %bb165, label %bb166
bb164:
  store i1 false, ptr %l354, !tbaa !21
  br label %bb170
bb165:
  call void @__olang_check_failed(ptr @olang_loc_6495b6dfee4ecee2_6e1c2cfd4a22a64e)
  unreachable
bb166:
  br label %bb167
bb167:
  %t781 = load ptr, ptr %l17, !tbaa !29
  %t783 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %t781)
  store i32 %t783, ptr %l359
  br label %bb168
bb168:
  %t784 = load ptr, ptr %l355, !tbaa !29
  %t785 = load i32, ptr %l359, !tbaa !23
  %t786 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t784, i32 %t785)
  store i1 %t786, ptr %l360
  br label %bb169
bb169:
  %t787 = load i1, ptr %l360, !tbaa !21
  store i1 %t787, ptr %l354, !tbaa !21
  br label %bb170
bb170:
  %t788 = load i1, ptr %l354, !tbaa !21
  br i1 %t788, label %bb171, label %bb172
bb171:
  %t789 = load ptr, ptr %l0, !tbaa !29
  store ptr %t789, ptr %l361, !tbaa !29
  %t790 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t790, ptr %l362
  %t791 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t791, ptr %l363
  %t792 = load i32, ptr %l15, !tbaa !23
  store i32 %t792, ptr %l364, !tbaa !23
  %t793 = load ptr, ptr %l17, !tbaa !29
  %t795 = icmp eq ptr %t793, null
  br i1 %t795, label %bb173, label %bb174
bb172:
  br label %bb177
bb173:
  call void @__olang_check_failed(ptr @olang_loc_6495b6dfee4ecee2_6e1c2cfd4a22a64e)
  unreachable
bb174:
  br label %bb175
bb175:
  %t797 = load ptr, ptr %l17, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t798
  %t799 = getelementptr { i64, [4 x i64] }, ptr %t798, i32 0, i32 0
  store i64 2, ptr %t799
  %t800 = load %"compiler/source:Span", ptr %l363
  %t801 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t800, 0
  %t802 = load i32, ptr %l364, !tbaa !23
  %t803 = insertvalue { %"compiler/source:Span", i32, ptr } %t801, i32 %t802, 1
  %t805 = insertvalue { %"compiler/source:Span", i32, ptr } %t803, ptr %t797, 2
  %t806 = getelementptr { i64, [4 x i64] }, ptr %t798, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t805, ptr %t806
  %t807 = load { i64, [4 x i64] }, ptr %t798
  %t809 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t807, ptr %t809
  %t810 = load ptr, ptr %l361, !tbaa !29
  %t811 = load %"compiler/source:Span", ptr %l362
  %t813 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t810, %"compiler/source:Span" %t811, ptr %t809)
  store ptr %t813, ptr %l370
  br label %bb176
bb176:
  %t814 = load ptr, ptr %l370, !tbaa !29
  store ptr %t814, ptr %l17, !tbaa !29
  br label %bb177
bb177:
  %t816 = load ptr, ptr %l0, !tbaa !29
  %t818 = getelementptr %"compiler/check:Checker", ptr %t816, i32 0, i32 37
  store ptr %t818, ptr %l373, !tbaa !29
  %t819 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t819, ptr %l374
  %t820 = load %"compiler/source:Span", ptr %l7
  %t821 = load i32, ptr %l15, !tbaa !23
  %t822 = load i64, ptr %l2, !tbaa !24
  %t823 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t824
  %t825 = getelementptr { i64, [4 x i64] }, ptr %t824, i32 0, i32 0
  store i64 1, ptr %t825
  %t827 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t820, 0
  %t829 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t827, i32 %t821, 1
  %t831 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t829, i64 %t822, 2
  %t833 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t831, i32 %t823, 3
  %t834 = getelementptr { i64, [4 x i64] }, ptr %t824, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t833, ptr %t834
  %t835 = load { i64, [4 x i64] }, ptr %t824
  %t837 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t835, ptr %t837
  store ptr %t837, ptr %l380, !tbaa !29
  %t838 = load ptr, ptr %l17, !tbaa !29
  %t840 = icmp eq ptr %t838, null
  br i1 %t840, label %bb178, label %bb179
bb178:
  call void @__olang_check_failed(ptr @olang_loc_8d548c3c72e36863_6a32d0416bf96aff)
  unreachable
bb179:
  br label %bb180
bb180:
  %t842 = load ptr, ptr %l17, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t843
  %t844 = getelementptr { i64, [3 x i64] }, ptr %t843, i32 0, i32 0
  store i64 1, ptr %t844
  %t845 = load %"compiler/source:Span", ptr %l374
  %t846 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t845, 0
  %t847 = load ptr, ptr %l380, !tbaa !29
  %t848 = insertvalue { %"compiler/source:Span", ptr, ptr } %t846, ptr %t847, 1
  %t850 = insertvalue { %"compiler/source:Span", ptr, ptr } %t848, ptr %t842, 2
  %t851 = getelementptr { i64, [3 x i64] }, ptr %t843, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t850, ptr %t851
  %t852 = load { i64, [3 x i64] }, ptr %t843
  %t854 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t852, ptr %t854
  %t855 = load ptr, ptr %l373, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t855, ptr %t854)
  br label %bb181
bb181:
  br label %bb182
bb182:
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t859 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t857)
  store ptr %t859, ptr %l387
  br label %bb183
bb183:
  %t860 = load ptr, ptr %l387, !tbaa !29
  store ptr %t860, ptr %l388, !tbaa !29
  %t861 = load ptr, ptr %l0, !tbaa !29
  %t863 = getelementptr %"compiler/check:Checker", ptr %t861, i32 0, i32 37
  %t864 = load i64, ptr %l16, !tbaa !24
  %t867 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t863, i64 %t864)
  store { i64, ptr } %t867, ptr %l392
  br label %bb184
bb184:
  %t868 = load { i64, ptr }, ptr %l392, !tbaa !27
  %t869 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t868)
  store %"compiler/typed:Block" %t869, ptr %l393
  br label %bb185
bb185:
  %t870 = load %"compiler/typed:Block", ptr %l393
  %t871 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t870, ptr %t871
  %t873 = load ptr, ptr %l388, !tbaa !29
  %t874 = getelementptr %"compiler/typed:Body", ptr %t873, i32 0, i32 11
  store ptr %t871, ptr %t874, !tbaa !29
  %t875 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t875)
  br label %bb186
bb186:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptime(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l22 = alloca ptr
  %l33 = alloca ptr
  %l37 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l49 = alloca i1
  %l51 = alloca { i64, ptr }
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/source:Span"
  %l57 = alloca i1
  %l67 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i64
  %l82 = alloca ptr
  %l89 = alloca ptr
  %l96 = alloca i32
  %l100 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l101 = alloca i64
  %l105 = alloca i64
  %l106 = alloca i32
  %l115 = alloca i64
  %l116 = alloca i32
  %l120 = alloca i32
  %l121 = alloca i32
  %l128 = alloca ptr
  %l139 = alloca i32
  %l142 = alloca %"compiler/source:Span"
  %l148 = alloca i32
  %l155 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t274 = alloca { i64, [4 x i64] }, align 8
  %t318 = alloca { i64, [5 x i64] }, align 8
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
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l17, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 14
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %t11)
  store ptr %t14, ptr %l22
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l22, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 1
  %t18 = load { i64, [2 x i64] }, ptr %t17
  store { i64, [2 x i64] } %t18, ptr %l5
  %t20 = load { i64, [2 x i64] }, ptr %l5
  %t22 = extractvalue { i64, [2 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 6
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t26 = getelementptr { i64, i32 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  store i64 %t27, ptr %l6, !tbaa !24
  %t29 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t30 = getelementptr { i64, i32 }, ptr %t29, i32 0, i32 1
  %t31 = load i32, ptr %t30
  store i32 %t31, ptr %l7, !tbaa !23
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i32, ptr %l7, !tbaa !23
  %t42 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t36, i64 %t37, i32 %t38)
  store ptr %t42, ptr %l33
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l33, !tbaa !29
  store ptr %t43, ptr %l8, !tbaa !29
  %t44 = load ptr, ptr %l8, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i32, ptr %l7, !tbaa !23
  %t59 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsSynth(ptr %v0, ptr %t53, i64 %t54, i32 %t55)
  store i1 %t59, ptr %l42
  br label %bb9
bb8:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb10
bb9:
  %t60 = load i1, ptr %l42, !tbaa !21
  %t61 = xor i1 %t60, true
  store i1 %t61, ptr %l37, !tbaa !21
  br label %bb10
bb10:
  %t63 = load i1, ptr %l37, !tbaa !21
  br i1 %t63, label %bb11, label %bb12
bb11:
  %t64 = load ptr, ptr %l8, !tbaa !29
  %t66 = getelementptr %"compiler/ast:VarDecl", ptr %t64, i32 0, i32 3
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp sgt i64 %t69, 0
  store i1 %t71, ptr %l44, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb13
bb13:
  %t73 = load i1, ptr %l44, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t74 = load ptr, ptr %l8, !tbaa !29
  %t76 = getelementptr %"compiler/ast:VarDecl", ptr %t74, i32 0, i32 3
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l51, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr ptr, ptr %t79, i64 0
  %t81 = load ptr, ptr %t80, !tbaa !39
  %t83 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t81)
  store %"compiler/source:Span" %t83, ptr %l53
  br label %bb16
bb15:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb18
bb16:
  %t84 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t84, ptr %l55
  %t87 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l53, ptr %l55)
  store i1 %t87, ptr %l57
  br label %bb17
bb17:
  %t88 = load i1, ptr %l57, !tbaa !21
  store i1 %t88, ptr %l49, !tbaa !21
  br label %bb18
bb18:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 136
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t95 = getelementptr %"compiler/check:frame", ptr %t93, i32 0, i32 0
  %t96 = load i64, ptr %t95, !tbaa !24
  %t97 = load %"compiler/source:Span", ptr %l1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_H19fded22be32a91ca4084130356a325d(ptr %v0, ptr %t92, i64 %t96, %"compiler/source:Span" %t97)
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = load i32, ptr %l3, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, i32 %t104)
  store ptr %t108, ptr %l67
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t109 = load ptr, ptr %l67, !tbaa !29
  store ptr %t109, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_fa3c94e3a612a0dd_4761343759351551)
  unreachable
bb29:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeCtx(ptr %v0, ptr %s0, ptr %t110)
  store { i64, ptr } %t112, ptr %l69
  br label %bb30
bb30:
  %t113 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t113, ptr %l9, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t116 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t116, ptr %l71
  br label %bb31
bb31:
  %t117 = load i1, ptr %l71, !tbaa !21
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t120 = getelementptr %"compiler/check:frame", ptr %t118, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  store i64 %t121, ptr %l72, !tbaa !24
  br label %bb34
bb33:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/load:Loader", ptr %t129, i32 0, i32 12
  %t132 = load i64, ptr %t131, !tbaa !24
  store i64 %t132, ptr %l72, !tbaa !24
  br label %bb34
bb34:
  %t134 = load i64, ptr %l72, !tbaa !24
  store i64 %t134, ptr %l10, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/load:Loader", ptr %t141, i32 0, i32 3
  %t144 = load ptr, ptr %t143, !tbaa !29
  store ptr %t144, ptr %l82, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/load:Loader", ptr %t151, i32 0, i32 10
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 1
  %t157 = load i64, ptr %t156, !tbaa !24
  %t160 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t153, i64 %t157)
  store ptr %t160, ptr %l89
  br label %bb35
bb35:
  %t161 = load ptr, ptr %l89, !tbaa !29
  %t163 = getelementptr %"compiler/load:Module", ptr %t161, i32 0, i32 2
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t165 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t166 = load i32, ptr %t165, !tbaa !23
  %t167 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t168 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t171 = extractvalue { i64, ptr } %t164, 1
  %t172 = extractvalue { i64, ptr } %t164, 0
  %t173 = add i64 %t169, %t172
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t178 = sext i32 %t166 to i64
  %t179 = call i64 @__olang_fmt_i64(ptr null, i64 %t178)
  %t180 = add i64 %t176, %t179
  %t182 = extractvalue { i64, ptr } %t167, 1
  %t183 = extractvalue { i64, ptr } %t167, 0
  %t184 = add i64 %t180, %t183
  %t185 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t184)
  call void @olang_textcopy(ptr %t185, ptr %t168, i64 %t169)
  %t186 = getelementptr i8, ptr %t185, i64 %t169
  call void @olang_textcopy(ptr %t186, ptr %t171, i64 %t172)
  %t187 = getelementptr i8, ptr %t186, i64 %t172
  call void @olang_textcopy(ptr %t187, ptr %t174, i64 %t175)
  %t188 = getelementptr i8, ptr %t187, i64 %t175
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t178)
  %t190 = getelementptr i8, ptr %t188, i64 %t179
  call void @olang_textcopy(ptr %t190, ptr %t182, i64 %t183)
  %t191 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t185, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load ptr, ptr %l82, !tbaa !29
  %t202 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t200, { i64, ptr } %t199)
  store i32 %t202, ptr %l96
  br label %bb36
bb36:
  %t203 = load i32, ptr %l96, !tbaa !23
  store i32 %t203, ptr %l11, !tbaa !23
  %t204 = load i64, ptr %l10, !tbaa !24
  %t205 = load i32, ptr %l11, !tbaa !23
  %t207 = sext i32 %t205 to i64
  %t210 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t204, i64 %t207)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t210, ptr %l100
  br label %bb37
bb37:
  %t211 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l100
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t211, ptr %l12
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 27
  %t215 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  %t218 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t214, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t215)
  %t219 = extractvalue { i32, i64 } %t218, 1
  %t220 = extractvalue { i32, i64 } %t218, 0
  store i32 %t220, ptr %l106
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb39, label %ok.222, !prof !99
ok.222:
  store i64 %t219, ptr %l105
  br label %bb38
bb38:
  %t223 = load i64, ptr %l105, !tbaa !24
  store i64 %t223, ptr %l101, !tbaa !24
  br label %bb41
bb39:
  br label %bb40
bb40:
  store i64 -1, ptr %l101, !tbaa !24
  br label %bb41
bb41:
  %t224 = load i64, ptr %l101, !tbaa !24
  store i64 %t224, ptr %l13, !tbaa !24
  %t225 = load i64, ptr %l13, !tbaa !24
  %t227 = icmp slt i64 %t225, 0
  br i1 %t227, label %bb42, label %bb43
bb42:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l1
  %t231 = load ptr, ptr %l2, !tbaa !29
  %t232 = load i32, ptr %l3, !tbaa !23
  %t233 = load i64, ptr %l10, !tbaa !24
  %t234 = load i32, ptr %l11, !tbaa !23
  %t241 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeBody(ptr %v0, ptr %v1, ptr %t229, %"compiler/source:Span" %t230, ptr %t231, i32 %t232, i64 %t233, i32 %t234)
  store i64 %t241, ptr %l115
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t242 = load i64, ptr %l115, !tbaa !24
  store i64 %t242, ptr %l13, !tbaa !24
  br label %bb45
bb45:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/check:Checker", ptr %t243, i32 0, i32 28
  %t246 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  %t249 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t245, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t246)
  %t250 = extractvalue { i32, i32 } %t249, 1
  %t251 = extractvalue { i32, i32 } %t249, 0
  store i32 %t251, ptr %l121
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb47, label %ok.253, !prof !99
ok.253:
  store i32 %t250, ptr %l120
  br label %bb46
bb46:
  %t254 = load i32, ptr %l120, !tbaa !23
  store i32 %t254, ptr %l116, !tbaa !23
  br label %bb49
bb47:
  br label %bb48
bb48:
  %t255 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t255, ptr %l116, !tbaa !23
  br label %bb49
bb49:
  %t257 = load i32, ptr %l116, !tbaa !23
  store i32 %t257, ptr %l14, !tbaa !23
  %t258 = load i32, ptr %l14, !tbaa !23
  %t259 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t262 = icmp eq i32 %t258, %t259
  br i1 %t262, label %bb50, label %bb51
bb50:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l1
  %t268 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t264, %"compiler/source:Span" %t265)
  store ptr %t268, ptr %l128
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t269 = load ptr, ptr %l128, !tbaa !29
  store ptr %t269, ptr %rv
  br label %ret
bb53:
  %t270 = load %"compiler/source:Span", ptr %l1
  %t271 = load i32, ptr %l14, !tbaa !23
  %t272 = load i64, ptr %l10, !tbaa !24
  %t273 = load i32, ptr %l11, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t274
  %t275 = getelementptr { i64, [4 x i64] }, ptr %t274, i32 0, i32 0
  store i64 1, ptr %t275
  %t277 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t270, 0
  %t279 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t277, i32 %t271, 1
  %t281 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t279, i64 %t272, 2
  %t283 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t281, i32 %t273, 3
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t274, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t283, ptr %t284
  %t285 = load { i64, [4 x i64] }, ptr %t274
  %t287 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t285, ptr %t287
  store ptr %t287, ptr %l15, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/check:Checker", ptr %t289, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l14, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l139
  br label %bb54
bb54:
  %t299 = load i32, ptr %l139, !range !{i32 0, i32 33}
  %t301 = trunc i64 19 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb55, label %bb56
bb55:
  %t304 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t304, ptr %l142
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/check:Checker", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 2
  %t311 = load i32, ptr %l14, !tbaa !23
  %t312 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t316 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t310, i32 %t311, i64 %t312)
  store i32 %t316, ptr %l148
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t317 = load ptr, ptr %l15, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t318
  %t319 = getelementptr { i64, [5 x i64] }, ptr %t318, i32 0, i32 0
  store i64 3, ptr %t319
  %t320 = load %"compiler/source:Span", ptr %l142
  %t321 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t320, 0
  %t322 = load i32, ptr %l148, !tbaa !23
  %t323 = insertvalue { %"compiler/source:Span", i32, ptr } %t321, i32 %t322, 1
  %t325 = insertvalue { %"compiler/source:Span", i32, ptr } %t323, ptr %t317, 2
  %t326 = getelementptr { i64, [5 x i64] }, ptr %t318, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t325, ptr %t326
  %t327 = load { i64, [5 x i64] }, ptr %t318
  %t329 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t327, ptr %t329
  call void @__olang_scope_close(ptr %s0)
  store ptr %t329, ptr %rv
  br label %ret
bb58:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l1
  %t333 = load ptr, ptr %l15, !tbaa !29
  %t337 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t331, %"compiler/source:Span" %t332, ptr %t333)
  store ptr %t337, ptr %l155
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t338 = load ptr, ptr %l155, !tbaa !29
  store ptr %t338, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca i32
  %l62 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca i1
  %l77 = alloca %"compiler/source:Span"
  %l78 = alloca i32
  %l82 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca i1
  %l96 = alloca %"compiler/source:Span"
  %l97 = alloca i32
  %l102 = alloca ptr
  %l107 = alloca ptr
  %l110 = alloca %"compiler/typed:Elem"
  %l114 = alloca ptr
  %l115 = alloca i1
  %l124 = alloca %"compiler/source:Span"
  %l125 = alloca i32
  %l130 = alloca ptr
  %l135 = alloca %"compiler/typed:Payload"
  %l139 = alloca ptr
  %l140 = alloca i1
  %l151 = alloca %"compiler/source:Span"
  %l152 = alloca i32
  %l156 = alloca ptr
  %l160 = alloca i32
  %l163 = alloca ptr
  %l164 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i1
  %rv = alloca ptr
  %t38 = alloca { i64, [4 x i64] }, align 8
  %t89 = alloca { i64, [4 x i64] }, align 8
  %t145 = alloca { i64, [4 x i64] }, align 8
  %t219 = alloca { i64, [4 x i64] }, align 8
  %t285 = alloca { i64, [4 x i64] }, align 8
  %t347 = alloca { i64, [4 x i64] }, align 8
  %t392 = alloca { i64, [4 x i64] }, align 8
  %t428 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t2 = load ptr, ptr %l29, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l29, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l30, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l30, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t30, i32 0, i32 3
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l6, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t34 = load %"compiler/source:Span", ptr %l3
  %t35 = load i32, ptr %l4, !tbaa !23
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i32, ptr %l6, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 0
  store i64 1, ptr %t39
  %t41 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t34, 0
  %t43 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t41, i32 %t35, 1
  %t45 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t43, i64 %t36, 2
  %t47 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t45, i32 %t37, 3
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t47, ptr %t48
  %t49 = load { i64, [4 x i64] }, ptr %t38
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t49, ptr %t51
  store ptr %t51, ptr %rv
  br label %ret
bb6:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t54 = load ptr, ptr %l47, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb7, label %bb8
bb7:
  %t57 = load ptr, ptr %l47, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 2
  store i1 %t60, ptr %l48, !tbaa !21
  br label %bb8
bb8:
  %t61 = load i1, ptr %l48, !tbaa !21
  br i1 %t61, label %bb9, label %bb10
bb9:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 0
  %t66 = load %"compiler/source:Span", ptr %t65
  store %"compiler/source:Span" %t66, ptr %l7
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l8, !tbaa !23
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 2
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l9, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t80 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t80, ptr %l57
  %t81 = load i32, ptr %l8, !tbaa !23
  store i32 %t81, ptr %l58, !tbaa !23
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l9, !tbaa !29
  %t84 = load i64, ptr %l2, !tbaa !24
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t82, ptr %t83, i64 %t84)
  store ptr %t88, ptr %l62
  br label %bb12
bb12:
  store { i64, [4 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 0
  store i64 2, ptr %t90
  %t91 = load %"compiler/source:Span", ptr %l57
  %t92 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t91, 0
  %t93 = load i32, ptr %l58, !tbaa !23
  %t94 = insertvalue { %"compiler/source:Span", i32, ptr } %t92, i32 %t93, 1
  %t95 = load ptr, ptr %l62, !tbaa !29
  %t96 = insertvalue { %"compiler/source:Span", i32, ptr } %t94, ptr %t95, 2
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t96, ptr %t97
  %t98 = load { i64, [4 x i64] }, ptr %t89
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t98, ptr %t100
  store ptr %t100, ptr %rv
  br label %ret
bb13:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t103 = load ptr, ptr %l65, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb14, label %bb15
bb14:
  %t106 = load ptr, ptr %l65, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 3
  store i1 %t109, ptr %l66, !tbaa !21
  br label %bb15
bb15:
  %t110 = load i1, ptr %l66, !tbaa !21
  br i1 %t110, label %bb16, label %bb17
bb16:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t113, i32 0, i32 0
  %t115 = load %"compiler/source:Span", ptr %t114
  store %"compiler/source:Span" %t115, ptr %l10
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l11, !tbaa !23
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l12, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t131, i32 0, i32 3
  %t133 = load i64, ptr %t132
  store i64 %t133, ptr %l13, !tbaa !24
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t135 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t135, ptr %l77
  %t136 = load i32, ptr %l11, !tbaa !23
  store i32 %t136, ptr %l78, !tbaa !23
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l12, !tbaa !29
  %t139 = load i64, ptr %l2, !tbaa !24
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t137, ptr %t138, i64 %t139)
  store ptr %t143, ptr %l82
  br label %bb19
bb19:
  %t144 = load i64, ptr %l13, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t145, i32 0, i32 0
  store i64 3, ptr %t146
  %t147 = load %"compiler/source:Span", ptr %l77
  %t148 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t147, 0
  %t149 = load i32, ptr %l78, !tbaa !23
  %t150 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t148, i32 %t149, 1
  %t151 = load ptr, ptr %l82, !tbaa !29
  %t152 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t150, ptr %t151, 2
  %t154 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t152, i64 %t144, 3
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t145, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t154, ptr %t155
  %t156 = load { i64, [4 x i64] }, ptr %t145
  %t158 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t156, ptr %t158
  store ptr %t158, ptr %rv
  br label %ret
bb20:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t161 = load ptr, ptr %l86, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb21, label %bb22
bb21:
  %t164 = load ptr, ptr %l86, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 8}
  %t167 = icmp eq i64 %t165, 4
  store i1 %t167, ptr %l87, !tbaa !21
  br label %bb22
bb22:
  %t168 = load i1, ptr %l87, !tbaa !21
  br i1 %t168, label %bb23, label %bb24
bb23:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t171, i32 0, i32 0
  %t173 = load %"compiler/source:Span", ptr %t172
  store %"compiler/source:Span" %t173, ptr %l14
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr { i64, [4 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t177, i32 0, i32 1
  %t179 = load i32, ptr %t178
  store i32 %t179, ptr %l15, !tbaa !23
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t183, i32 0, i32 2
  %t185 = load ptr, ptr %t184
  store ptr %t185, ptr %l16, !tbaa !29
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t187 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t187, ptr %l96
  %t188 = load i32, ptr %l15, !tbaa !23
  store i32 %t188, ptr %l97, !tbaa !23
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l16, !tbaa !29
  %t192 = getelementptr %"compiler/typed:Elem", ptr %t190, i32 0, i32 0
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t194 = load i64, ptr %l2, !tbaa !24
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v0, ptr %t189, ptr %t193, i64 %t194)
  store ptr %t198, ptr %l102
  br label %bb26
bb26:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l16, !tbaa !29
  %t202 = getelementptr %"compiler/typed:Elem", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t204 = load i64, ptr %l2, !tbaa !24
  %t208 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t199, ptr %t203, i64 %t204)
  store ptr %t208, ptr %l107
  br label %bb27
bb27:
  %t209 = load ptr, ptr %l16, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Elem", ptr %t209, i32 0, i32 2
  %t212 = load i32, ptr %t211, !range !{i32 0, i32 3}
  %t213 = load ptr, ptr %l102, !tbaa !29
  %t214 = load ptr, ptr %l107, !tbaa !29
  %t216 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v2, ptr %t213, ptr %t214, i32 %t212)
  store %"compiler/typed:Elem" %t216, ptr %l110
  br label %bb28
bb28:
  %t217 = load %"compiler/typed:Elem", ptr %l110
  %t218 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Elem" %t217, ptr %t218
  store { i64, [4 x i64] } zeroinitializer, ptr %t219
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t219, i32 0, i32 0
  store i64 4, ptr %t220
  %t221 = load %"compiler/source:Span", ptr %l96
  %t222 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t221, 0
  %t223 = load i32, ptr %l97, !tbaa !23
  %t224 = insertvalue { %"compiler/source:Span", i32, ptr } %t222, i32 %t223, 1
  %t226 = insertvalue { %"compiler/source:Span", i32, ptr } %t224, ptr %t218, 2
  %t227 = getelementptr { i64, [4 x i64] }, ptr %t219, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t226, ptr %t227
  %t228 = load { i64, [4 x i64] }, ptr %t219
  %t230 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t228, ptr %t230
  store ptr %t230, ptr %rv
  br label %ret
bb29:
  %t232 = load ptr, ptr %l1, !tbaa !29
  store ptr %t232, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t233 = load ptr, ptr %l114, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb30, label %bb31
bb30:
  %t236 = load ptr, ptr %l114, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 8}
  %t239 = icmp eq i64 %t237, 5
  store i1 %t239, ptr %l115, !tbaa !21
  br label %bb31
bb31:
  %t240 = load i1, ptr %l115, !tbaa !21
  br i1 %t240, label %bb32, label %bb33
bb32:
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t243, i32 0, i32 0
  %t245 = load %"compiler/source:Span", ptr %t244
  store %"compiler/source:Span" %t245, ptr %l17
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t249, i32 0, i32 1
  %t251 = load i32, ptr %t250
  store i32 %t251, ptr %l18, !tbaa !23
  %t253 = load ptr, ptr %l1, !tbaa !29
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t255, i32 0, i32 2
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l19, !tbaa !29
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t259 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t259, ptr %l124
  %t260 = load i32, ptr %l18, !tbaa !23
  store i32 %t260, ptr %l125, !tbaa !23
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l19, !tbaa !29
  %t264 = getelementptr %"compiler/typed:Payload", ptr %t262, i32 0, i32 0
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t266 = load i64, ptr %l2, !tbaa !24
  %t270 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyPlace(ptr %v0, ptr %v1, ptr %v0, ptr %t261, ptr %t265, i64 %t266)
  store ptr %t270, ptr %l130
  br label %bb35
bb35:
  %t271 = load ptr, ptr %l19, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Payload", ptr %t271, i32 0, i32 1
  %t274 = load i64, ptr %t273, !tbaa !24
  %t275 = load ptr, ptr %l19, !tbaa !29
  %t277 = getelementptr %"compiler/typed:Payload", ptr %t275, i32 0, i32 2
  %t278 = load i32, ptr %t277, !range !{i32 0, i32 3}
  %t279 = load ptr, ptr %l130, !tbaa !29
  %t282 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v2, ptr %t279, i64 %t274, i32 %t278)
  store %"compiler/typed:Payload" %t282, ptr %l135
  br label %bb36
bb36:
  %t283 = load %"compiler/typed:Payload", ptr %l135
  %t284 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Payload" %t283, ptr %t284
  store { i64, [4 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [4 x i64] }, ptr %t285, i32 0, i32 0
  store i64 5, ptr %t286
  %t287 = load %"compiler/source:Span", ptr %l124
  %t288 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t287, 0
  %t289 = load i32, ptr %l125, !tbaa !23
  %t290 = insertvalue { %"compiler/source:Span", i32, ptr } %t288, i32 %t289, 1
  %t292 = insertvalue { %"compiler/source:Span", i32, ptr } %t290, ptr %t284, 2
  %t293 = getelementptr { i64, [4 x i64] }, ptr %t285, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t292, ptr %t293
  %t294 = load { i64, [4 x i64] }, ptr %t285
  %t296 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t294, ptr %t296
  store ptr %t296, ptr %rv
  br label %ret
bb37:
  %t298 = load ptr, ptr %l1, !tbaa !29
  store ptr %t298, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t299 = load ptr, ptr %l139, !tbaa !29
  %t300 = icmp ne ptr %t299, null
  br i1 %t300, label %bb38, label %bb39
bb38:
  %t302 = load ptr, ptr %l139, !tbaa !29
  %t303 = load i64, ptr %t302, !range !{i64 0, i64 8}
  %t305 = icmp eq i64 %t303, 6
  store i1 %t305, ptr %l140, !tbaa !21
  br label %bb39
bb39:
  %t306 = load i1, ptr %l140, !tbaa !21
  br i1 %t306, label %bb40, label %bb41
bb40:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr { i64, [4 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t309, i32 0, i32 0
  %t311 = load %"compiler/source:Span", ptr %t310
  store %"compiler/source:Span" %t311, ptr %l20
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t315, i32 0, i32 1
  %t317 = load i32, ptr %t316
  store i32 %t317, ptr %l21, !tbaa !23
  %t319 = load ptr, ptr %l1, !tbaa !29
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t321, i32 0, i32 2
  %t323 = load ptr, ptr %t322
  store ptr %t323, ptr %l22, !tbaa !29
  %t325 = load ptr, ptr %l1, !tbaa !29
  %t327 = getelementptr { i64, [4 x i64] }, ptr %t325, i32 0, i32 1
  %t328 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t327, i32 0, i32 3
  %t329 = load i32, ptr %t328
  store i32 %t329, ptr %l23, !tbaa !23
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t331 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t331, ptr %l151
  %t332 = load i32, ptr %l21, !tbaa !23
  store i32 %t332, ptr %l152, !tbaa !23
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load ptr, ptr %l22, !tbaa !29
  %t335 = load i64, ptr %l2, !tbaa !24
  %t339 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t333, ptr %t334, i64 %t335)
  store ptr %t339, ptr %l156
  br label %bb43
bb43:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i32, ptr %l23, !tbaa !23
  %t342 = load i64, ptr %l2, !tbaa !24
  %t346 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %t340, i32 %t341, i64 %t342)
  store i32 %t346, ptr %l160
  br label %bb44
bb44:
  store { i64, [4 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [4 x i64] }, ptr %t347, i32 0, i32 0
  store i64 6, ptr %t348
  %t349 = load %"compiler/source:Span", ptr %l151
  %t350 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t349, 0
  %t351 = load i32, ptr %l152, !tbaa !23
  %t352 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t350, i32 %t351, 1
  %t353 = load ptr, ptr %l156, !tbaa !29
  %t354 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t352, ptr %t353, 2
  %t355 = load i32, ptr %l160, !tbaa !23
  %t356 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t354, i32 %t355, 3
  %t357 = getelementptr { i64, [4 x i64] }, ptr %t347, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t356, ptr %t357
  %t358 = load { i64, [4 x i64] }, ptr %t347
  %t360 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t358, ptr %t360
  store ptr %t360, ptr %rv
  br label %ret
bb45:
  %t362 = load ptr, ptr %l1, !tbaa !29
  store ptr %t362, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t363 = load ptr, ptr %l163, !tbaa !29
  %t364 = icmp ne ptr %t363, null
  br i1 %t364, label %bb46, label %bb47
bb46:
  %t366 = load ptr, ptr %l163, !tbaa !29
  %t367 = load i64, ptr %t366, !range !{i64 0, i64 8}
  %t369 = icmp eq i64 %t367, 0
  store i1 %t369, ptr %l164, !tbaa !21
  br label %bb47
bb47:
  %t370 = load i1, ptr %l164, !tbaa !21
  br i1 %t370, label %bb48, label %bb49
bb48:
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t373, i32 0, i32 0
  %t375 = load %"compiler/source:Span", ptr %t374
  store %"compiler/source:Span" %t375, ptr %l24
  %t377 = load ptr, ptr %l1, !tbaa !29
  %t379 = getelementptr { i64, [4 x i64] }, ptr %t377, i32 0, i32 1
  %t380 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t379, i32 0, i32 1
  %t381 = load i32, ptr %t380
  store i32 %t381, ptr %l25, !tbaa !23
  %t383 = load ptr, ptr %l1, !tbaa !29
  %t385 = getelementptr { i64, [4 x i64] }, ptr %t383, i32 0, i32 1
  %t386 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t385, i32 0, i32 2
  %t387 = load i32, ptr %t386
  store i32 %t387, ptr %l26, !tbaa !23
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t389 = load %"compiler/source:Span", ptr %l24
  %t390 = load i32, ptr %l25, !tbaa !23
  %t391 = load i32, ptr %l26, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t392
  %t393 = getelementptr { i64, [4 x i64] }, ptr %t392, i32 0, i32 0
  store i64 0, ptr %t393
  %t395 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t389, 0
  %t397 = insertvalue { %"compiler/source:Span", i32, i32 } %t395, i32 %t390, 1
  %t399 = insertvalue { %"compiler/source:Span", i32, i32 } %t397, i32 %t391, 2
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t392, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t399, ptr %t400
  %t401 = load { i64, [4 x i64] }, ptr %t392
  %t403 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t401, ptr %t403
  store ptr %t403, ptr %rv
  br label %ret
bb51:
  %t405 = load ptr, ptr %l1, !tbaa !29
  store ptr %t405, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t406 = load ptr, ptr %l178, !tbaa !29
  %t407 = icmp ne ptr %t406, null
  br i1 %t407, label %bb52, label %bb53
bb52:
  %t409 = load ptr, ptr %l178, !tbaa !29
  %t410 = load i64, ptr %t409, !range !{i64 0, i64 8}
  %t412 = icmp eq i64 %t410, 7
  store i1 %t412, ptr %l179, !tbaa !21
  br label %bb53
bb53:
  %t413 = load i1, ptr %l179, !tbaa !21
  br i1 %t413, label %bb54, label %bb55
bb54:
  %t414 = load ptr, ptr %l1, !tbaa !29
  %t416 = getelementptr { i64, [4 x i64] }, ptr %t414, i32 0, i32 1
  %t417 = getelementptr { %"compiler/source:Span", i32 }, ptr %t416, i32 0, i32 0
  %t418 = load %"compiler/source:Span", ptr %t417
  store %"compiler/source:Span" %t418, ptr %l27
  %t420 = load ptr, ptr %l1, !tbaa !29
  %t422 = getelementptr { i64, [4 x i64] }, ptr %t420, i32 0, i32 1
  %t423 = getelementptr { %"compiler/source:Span", i32 }, ptr %t422, i32 0, i32 1
  %t424 = load i32, ptr %t423
  store i32 %t424, ptr %l28, !tbaa !23
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t426 = load %"compiler/source:Span", ptr %l27
  %t427 = load i32, ptr %l28, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t428
  %t429 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 0
  store i64 7, ptr %t429
  %t431 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t426, 0
  %t433 = insertvalue { %"compiler/source:Span", i32 } %t431, i32 %t427, 1
  %t434 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t433, ptr %t434
  %t435 = load { i64, [4 x i64] }, ptr %t428
  %t437 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t435, ptr %t437
  store ptr %t437, ptr %rv
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_aa0d5e524103d919_41af477b1830b7e5)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectSourceOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca ptr
  %l23 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca %"compiler/check:ctSource"
  %l75 = alloca i32
  %l79 = alloca ptr
  %l82 = alloca i1
  %l91 = alloca i64
  %l95 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca i1
  %l108 = alloca i1
  %l132 = alloca %"compiler/check:ctSource"
  %l134 = alloca ptr
  %l135 = alloca i1
  %l142 = alloca i1
  %l160 = alloca %"compiler/check:ctSource"
  %l167 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l178 = alloca i1
  %l186 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l194 = alloca i32
  %l200 = alloca %"compiler/source:Span"
  %l204 = alloca ptr
  %l208 = alloca %"compiler/ast:Param"
  %l216 = alloca ptr
  %l217 = alloca ptr
  %l220 = alloca { i64, ptr }
  %l225 = alloca i64
  %l226 = alloca i64
  %l230 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l237 = alloca %"compiler/check:ctSource"
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca ptr
  %t438 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l23
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l23, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i64 }, ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb18
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t25, i64 %t26)
  store i64 %t29, ptr %l32
  br label %bb5
bb5:
  %t30 = load i64, ptr %l32, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %t34, i64 %t35)
  store ptr %t38, ptr %l36
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l36, !tbaa !29
  store ptr %t39, ptr %l5, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Func", ptr %t40, i32 0, i32 3
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Sig", ptr %t43, i32 0, i32 5
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t51 = load ptr, ptr %l5, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Func", ptr %t51, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Sig", ptr %t54, i32 0, i32 5
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_700945490095e3ab_b793fb317cfa4b47)
  unreachable
bb11:
  br label %bb12
bb12:
  %t61 = load ptr, ptr %l5, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 3
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Sig", ptr %t64, i32 0, i32 5
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l48, !tbaa !29
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Func", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l50, !tbaa !29
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Func", ptr %t72, i32 0, i32 3
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Sig", ptr %t75, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l53, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i64, ptr %l4, !tbaa !24
  %t86 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t82, i64 %t83)
  store i64 %t86, ptr %l57
  br label %bb13
bb13:
  %t87 = ptrtoint ptr %v1 to i64
  store i64 %t87, ptr %l58, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3actSource_2e4
  br i1 %t88, label %bb14, label %bb15
bb14:
  %t90 = call ptr @__olang_region_make(ptr %v1)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l58, !tbaa !24
  br label %bb15
bb15:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Func", ptr %t93, i32 0, i32 2
  %t96 = load i32, ptr %t95, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t92, i32 %t96)
  store { i64, ptr } %t99, ptr %l63
  br label %bb16
bb16:
  %t100 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = load i64, ptr %l58
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t102)
  call void @olang_textcopy(ptr %t105, ptr %t101, i64 %t102)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t109 = load i64, ptr %l58
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = extractvalue { i64, ptr } %t107, 0
  %t112 = extractvalue { i64, ptr } %t107, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %t110, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l48, !tbaa !29
  %t118 = load ptr, ptr %l50, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t120 = load i64, ptr %l57, !tbaa !24
  %t122 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t117, ptr %t118, { i64, ptr } %t119, i64 %t120, { i64, ptr } %t116)
  store %"compiler/check:ctSource" %t122, ptr %l66
  br label %bb17
bb17:
  %t123 = load %"compiler/check:ctSource", ptr %l66
  %t124 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store %"compiler/check:ctSource" %t123, ptr %t124
  call void @__olang_scope_close(ptr %s1)
  store ptr %t124, ptr %rv
  br label %ret
bb18:
  %t126 = load { i64, [2 x i64] }, ptr %l2
  %t128 = extractvalue { i64, [2 x i64] } %t126, 0
  %t129 = icmp eq i64 %t128, 1
  br i1 %t129, label %bb19, label %bb20
bb19:
  %t131 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t132 = getelementptr { i32, i32 }, ptr %t131, i32 0, i32 0
  %t133 = load i32, ptr %t132
  store i32 %t133, ptr %l6, !tbaa !23
  br label %bb21
bb20:
  br label %bb74
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l6, !tbaa !23
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l75
  br label %bb22
bb22:
  %t145 = load i32, ptr %l75, !tbaa !23
  store i32 %t145, ptr %l7, !tbaa !23
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i32, ptr %l7, !tbaa !23
  %t153 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t149, i32 %t150)
  store ptr %t153, ptr %l79
  br label %bb23
bb23:
  %t154 = load ptr, ptr %l79, !tbaa !29
  store ptr %t154, ptr %l8, !tbaa !29
  %t155 = load ptr, ptr %l8, !tbaa !29
  %t157 = icmp eq ptr %t155, null
  br i1 %t157, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb26
bb25:
  %t159 = load ptr, ptr %l8, !tbaa !29
  %t161 = getelementptr %"compiler/ast:TypeDecl", ptr %t159, i32 0, i32 3
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  store i1 %t164, ptr %l82, !tbaa !21
  br label %bb26
bb26:
  %t166 = load i1, ptr %l82, !tbaa !21
  br i1 %t166, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 2
  %t174 = load i32, ptr %l7, !tbaa !23
  %t177 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t173, i32 %t174)
  store i64 %t177, ptr %l91
  br label %bb30
bb30:
  %t178 = load i64, ptr %l91, !tbaa !24
  store i64 %t178, ptr %l9, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l8, !tbaa !29
  %t182 = getelementptr %"compiler/ast:TypeDecl", ptr %t180, i32 0, i32 0
  %t183 = load i32, ptr %t182, !tbaa !23
  %t186 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t179, i32 %t183)
  store { i64, ptr } %t186, ptr %l95
  br label %bb31
bb31:
  %t187 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t189)
  call void @olang_textcopy(ptr %t190, ptr %t188, i64 %t189)
  %t191 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  %t193 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t193, ptr %lp10
  %t195 = load ptr, ptr %lp10
  store { i64, ptr } %t192, ptr %t195, !tbaa !27
  %t196 = load ptr, ptr %l8, !tbaa !29
  %t198 = getelementptr %"compiler/ast:TypeDecl", ptr %t196, i32 0, i32 3
  %t199 = load ptr, ptr %t198, !tbaa !29
  store ptr %t199, ptr %l11, !tbaa !29
  %t201 = load ptr, ptr %l11, !tbaa !29
  store ptr %t201, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t202 = load ptr, ptr %l99, !tbaa !29
  %t203 = icmp ne ptr %t202, null
  br i1 %t203, label %bb32, label %bb33
bb32:
  %t205 = load ptr, ptr %l99, !tbaa !29
  %t206 = load i64, ptr %t205, !range !{i64 0, i64 5}
  %t208 = icmp eq i64 %t206, 0
  store i1 %t208, ptr %l100, !tbaa !21
  br label %bb33
bb33:
  %t209 = load i1, ptr %l100, !tbaa !21
  br i1 %t209, label %bb34, label %bb35
bb34:
  %t210 = load ptr, ptr %l11, !tbaa !29
  %t212 = getelementptr { i64, [6 x i64] }, ptr %t210, i32 0, i32 1
  %t213 = getelementptr { ptr }, ptr %t212, i32 0, i32 0
  %t214 = load ptr, ptr %t213
  store ptr %t214, ptr %l12, !tbaa !29
  br label %bb36
bb35:
  br label %bb53
bb36:
  %t216 = load ptr, ptr %l12, !tbaa !29
  %t218 = getelementptr %"compiler/ast:StructBody", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t221 = icmp eq ptr %t219, null
  br i1 %t221, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb42
bb38:
  %t223 = load ptr, ptr %l12, !tbaa !29
  %t225 = getelementptr %"compiler/ast:StructBody", ptr %t223, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  br i1 %t228, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_98b1a939df7bf83c_dad16d1edd3f2a28)
  unreachable
bb40:
  br label %bb41
bb41:
  %t230 = load ptr, ptr %l12, !tbaa !29
  %t232 = getelementptr %"compiler/ast:StructBody", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t236 = getelementptr %"compiler/ast:Sig", ptr %t233, i32 0, i32 5
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = icmp eq ptr %t237, null
  store i1 %t239, ptr %l108, !tbaa !21
  br label %bb42
bb42:
  %t241 = load i1, ptr %l108, !tbaa !21
  br i1 %t241, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t243 = load ptr, ptr %l12, !tbaa !29
  %t245 = getelementptr %"compiler/ast:StructBody", ptr %t243, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t248 = icmp eq ptr %t246, null
  br i1 %t248, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_25ec48d7738ec131_33504a893c084afd)
  unreachable
bb47:
  br label %bb48
bb48:
  %t250 = load ptr, ptr %l12, !tbaa !29
  %t252 = getelementptr %"compiler/ast:StructBody", ptr %t250, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t256 = getelementptr %"compiler/ast:Sig", ptr %t253, i32 0, i32 5
  %t257 = load ptr, ptr %t256, !tbaa !29
  store ptr %t257, ptr %l13, !tbaa !29
  %t259 = load ptr, ptr %l13, !tbaa !29
  %t261 = icmp eq ptr %t259, null
  br i1 %t261, label %bb49, label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_25ec48d7738ec131_33504a893c084afd)
  unreachable
bb50:
  br label %bb51
bb51:
  %t263 = load ptr, ptr %l13, !tbaa !29
  %t264 = load ptr, ptr %l12, !tbaa !29
  %t266 = getelementptr %"compiler/ast:StructBody", ptr %t264, i32 0, i32 0
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t268 = load i64, ptr %l9, !tbaa !24
  %t269 = load ptr, ptr %lp10
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  %t275 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t263, ptr null, { i64, ptr } %t267, i64 %t268, { i64, ptr } %t270)
  store %"compiler/check:ctSource" %t275, ptr %l132
  br label %bb52
bb52:
  %t276 = load %"compiler/check:ctSource", ptr %l132
  %t277 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store %"compiler/check:ctSource" %t276, ptr %t277
  call void @__olang_scope_close(ptr %s4)
  store ptr %t277, ptr %rv
  br label %ret
bb53:
  %t279 = load ptr, ptr %l11, !tbaa !29
  store ptr %t279, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t280 = load ptr, ptr %l134, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb54, label %bb55
bb54:
  %t283 = load ptr, ptr %l134, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 5}
  %t286 = icmp eq i64 %t284, 3
  store i1 %t286, ptr %l135, !tbaa !21
  br label %bb55
bb55:
  %t287 = load i1, ptr %l135, !tbaa !21
  br i1 %t287, label %bb56, label %bb57
bb56:
  %t288 = load ptr, ptr %l11, !tbaa !29
  %t290 = getelementptr { i64, [6 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { ptr, ptr }, ptr %t290, i32 0, i32 1
  %t292 = load ptr, ptr %t291
  store ptr %t292, ptr %l14, !tbaa !29
  br label %bb58
bb57:
  br label %bb69
bb58:
  %t294 = load ptr, ptr %l14, !tbaa !29
  %t296 = icmp eq ptr %t294, null
  br i1 %t296, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb61
bb60:
  %t298 = load ptr, ptr %l14, !tbaa !29
  %t300 = getelementptr %"compiler/ast:Func", ptr %t298, i32 0, i32 3
  %t301 = load ptr, ptr %t300, !tbaa !29
  %t303 = getelementptr %"compiler/ast:Sig", ptr %t301, i32 0, i32 5
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t306 = icmp eq ptr %t304, null
  store i1 %t306, ptr %l142, !tbaa !21
  br label %bb61
bb61:
  %t308 = load i1, ptr %l142, !tbaa !21
  br i1 %t308, label %bb62, label %bb63
bb62:
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  %t310 = load ptr, ptr %l14, !tbaa !29
  %t312 = getelementptr %"compiler/ast:Func", ptr %t310, i32 0, i32 3
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t315 = getelementptr %"compiler/ast:Sig", ptr %t313, i32 0, i32 5
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t318 = icmp eq ptr %t316, null
  br i1 %t318, label %bb65, label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_1c86c4e2a1d4d52a_afb2831c22759b16)
  unreachable
bb66:
  br label %bb67
bb67:
  %t320 = load ptr, ptr %l14, !tbaa !29
  %t322 = getelementptr %"compiler/ast:Func", ptr %t320, i32 0, i32 3
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t325 = getelementptr %"compiler/ast:Sig", ptr %t323, i32 0, i32 5
  %t326 = load ptr, ptr %t325, !tbaa !29
  %t327 = load ptr, ptr %l14, !tbaa !29
  %t329 = getelementptr %"compiler/ast:Func", ptr %t327, i32 0, i32 3
  %t330 = load ptr, ptr %t329, !tbaa !29
  %t332 = getelementptr %"compiler/ast:Sig", ptr %t330, i32 0, i32 0
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  %t334 = load i64, ptr %l9, !tbaa !24
  %t335 = load ptr, ptr %lp10
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !27
  %t341 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %t326, ptr null, { i64, ptr } %t333, i64 %t334, { i64, ptr } %t336)
  store %"compiler/check:ctSource" %t341, ptr %l160
  br label %bb68
bb68:
  %t342 = load %"compiler/check:ctSource", ptr %l160
  %t343 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store %"compiler/check:ctSource" %t342, ptr %t343
  call void @__olang_scope_close(ptr %s4)
  store ptr %t343, ptr %rv
  br label %ret
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_scope_close(ptr %s4)
  store ptr null, ptr %rv
  br label %ret
bb73:
  call void @__olang_check_failed(ptr @olang_loc_34572fc3675c142e_5b9246c98f1fa642)
  unreachable
bb74:
  %t346 = load { i64, [2 x i64] }, ptr %l2
  %t348 = extractvalue { i64, [2 x i64] } %t346, 0
  %t349 = icmp eq i64 %t348, 10
  br i1 %t349, label %bb75, label %bb76
bb75:
  %t351 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t352 = getelementptr { i32, i64 }, ptr %t351, i32 0, i32 0
  %t353 = load i32, ptr %t352
  store i32 %t353, ptr %l15, !tbaa !23
  %t355 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t356 = getelementptr { i32, i64 }, ptr %t355, i32 0, i32 1
  %t357 = load i64, ptr %t356
  store i64 %t357, ptr %l16, !tbaa !24
  br label %bb77
bb76:
  br label %bb105
bb77:
  store %olang.scope zeroinitializer, ptr %s12
  %t359 = load ptr, ptr %l0, !tbaa !29
  store ptr %t359, ptr %l167, !tbaa !29
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t364 = load i32, ptr %l15, !tbaa !23
  %t367 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t363, i32 %t364)
  store { i64, ptr } %t367, ptr %l171
  br label %bb78
bb78:
  %t368 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t368, ptr %l172, !tbaa !27
  %t369 = load i64, ptr %l16, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr %"compiler/generic:AnySlot", ptr %t372, i64 %t369
  %t374 = load %"compiler/generic:AnySlot", ptr %t373
  %t375 = load ptr, ptr %l167, !tbaa !29
  %t377 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %t375, %"compiler/generic:AnySlot" %t374)
  store ptr %t377, ptr %l175
  br label %bb79
bb79:
  %t378 = load ptr, ptr %l175, !tbaa !29
  store ptr %t378, ptr %l17, !tbaa !29
  %t379 = load ptr, ptr %l17, !tbaa !29
  %t381 = icmp eq ptr %t379, null
  br i1 %t381, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb82
bb81:
  %t383 = load ptr, ptr %l17, !tbaa !29
  %t385 = getelementptr %"compiler/ast:Func", ptr %t383, i32 0, i32 3
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/ast:Sig", ptr %t386, i32 0, i32 5
  %t389 = load ptr, ptr %t388, !tbaa !29
  %t391 = icmp eq ptr %t389, null
  store i1 %t391, ptr %l178, !tbaa !21
  br label %bb82
bb82:
  %t393 = load i1, ptr %l178, !tbaa !21
  br i1 %t393, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s12)
  store ptr null, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/check:Checker", ptr %t395, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !29
  %t400 = getelementptr %"compiler/generic:Program", ptr %t398, i32 0, i32 2
  store ptr %t400, ptr %l186, !tbaa !29
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/check:Checker", ptr %t401, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !29
  %t405 = load i32, ptr %l15, !tbaa !23
  %t408 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t404, i32 %t405)
  store { i64, ptr } %t408, ptr %l190
  br label %bb86
bb86:
  %t409 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t409, ptr %l191, !tbaa !27
  %t410 = load i64, ptr %l16, !tbaa !24
  %t412 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr %"compiler/generic:AnySlot", ptr %t413, i64 %t410
  %t415 = getelementptr %"compiler/generic:AnySlot", ptr %t414, i32 0, i32 1
  %t416 = load i32, ptr %t415, !tbaa !23
  %t417 = load ptr, ptr %l186, !tbaa !29
  %t419 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t417, i32 %t416)
  store i32 %t419, ptr %l194
  br label %bb87
bb87:
  %t420 = load i32, ptr %l194, !tbaa !23
  store i32 %t420, ptr %l18, !tbaa !23
  %t421 = load ptr, ptr %l17, !tbaa !29
  %t423 = getelementptr %"compiler/ast:Func", ptr %t421, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !29
  store ptr %t424, ptr %l19, !tbaa !29
  %t426 = load ptr, ptr %l19, !tbaa !29
  %t428 = icmp eq ptr %t426, null
  br i1 %t428, label %bb88, label %bb89
bb88:
  %t430 = load ptr, ptr %l17, !tbaa !29
  %t432 = getelementptr %"compiler/ast:Func", ptr %t430, i32 0, i32 0
  %t433 = load %"compiler/source:Span", ptr %t432
  store %"compiler/source:Span" %t433, ptr %l200
  %t434 = load ptr, ptr %l17, !tbaa !29
  %t436 = getelementptr %"compiler/ast:Func", ptr %t434, i32 0, i32 0
  %t437 = load %"compiler/source:Span", ptr %t436
  store { i64, [5 x i64] } zeroinitializer, ptr %t438
  %t439 = getelementptr { i64, [5 x i64] }, ptr %t438, i32 0, i32 0
  store i64 4, ptr %t439
  %t441 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t437, 0
  %t442 = insertvalue { %"compiler/source:Span", ptr, i1 } %t441, ptr null, 1
  %t443 = insertvalue { %"compiler/source:Span", ptr, i1 } %t442, i1 false, 2
  %t444 = getelementptr { i64, [5 x i64] }, ptr %t438, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t443, ptr %t444
  %t445 = load { i64, [5 x i64] }, ptr %t438
  %t447 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t445, ptr %t447
  store ptr %t447, ptr %l204, !tbaa !29
  %t448 = icmp sge i64 0, 0
  br i1 %t448, label %bb90, label %bb91
bb89:
  br label %bb95
bb90:
  %t450 = icmp sle i64 0, 1152921504606846975
  br i1 %t450, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_384cb541f04295b0_3f9ee0143bd9d7ac)
  unreachable
bb92:
  %t452 = mul i64 0, 8
  %t453 = insertvalue { i64, ptr } undef, i64 0, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t455 = load %"compiler/source:Span", ptr %l200
  %t456 = load ptr, ptr %l204, !tbaa !29
  %t458 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t455, i32 0, ptr %t456, ptr null, { i64, ptr } %t454)
  store %"compiler/ast:Param" %t458, ptr %l208
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_384cb541f04295b0_3f9ee0143bd9d7ac)
  unreachable
bb94:
  %t459 = load %"compiler/ast:Param", ptr %l208
  %t460 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store %"compiler/ast:Param" %t459, ptr %t460
  store ptr %t460, ptr %l19, !tbaa !29
  br label %bb95
bb95:
  %t462 = load ptr, ptr %l17, !tbaa !29
  %t464 = getelementptr %"compiler/ast:Func", ptr %t462, i32 0, i32 3
  %t465 = load ptr, ptr %t464, !tbaa !29
  %t467 = getelementptr %"compiler/ast:Sig", ptr %t465, i32 0, i32 5
  %t468 = load ptr, ptr %t467, !tbaa !29
  %t470 = icmp eq ptr %t468, null
  br i1 %t470, label %bb96, label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_a90b29f72ec4d10d_507af4b2e3250de1)
  unreachable
bb97:
  br label %bb98
bb98:
  %t472 = load ptr, ptr %l17, !tbaa !29
  %t474 = getelementptr %"compiler/ast:Func", ptr %t472, i32 0, i32 3
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t477 = getelementptr %"compiler/ast:Sig", ptr %t475, i32 0, i32 5
  %t478 = load ptr, ptr %t477, !tbaa !29
  store ptr %t478, ptr %l216, !tbaa !29
  %t479 = load ptr, ptr %l19, !tbaa !29
  store ptr %t479, ptr %l217, !tbaa !29
  %t480 = load ptr, ptr %l17, !tbaa !29
  %t482 = getelementptr %"compiler/ast:Func", ptr %t480, i32 0, i32 3
  %t483 = load ptr, ptr %t482, !tbaa !29
  %t485 = getelementptr %"compiler/ast:Sig", ptr %t483, i32 0, i32 0
  %t486 = load { i64, ptr }, ptr %t485, !tbaa !27
  store { i64, ptr } %t486, ptr %l220, !tbaa !27
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t489 = getelementptr %"compiler/check:Checker", ptr %t487, i32 0, i32 1
  %t490 = load ptr, ptr %t489, !tbaa !29
  %t492 = getelementptr %"compiler/generic:Program", ptr %t490, i32 0, i32 2
  %t493 = load i32, ptr %l18, !tbaa !23
  %t496 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t492, i32 %t493)
  store i64 %t496, ptr %l225
  br label %bb99
bb99:
  %t497 = ptrtoint ptr %v1 to i64
  store i64 %t497, ptr %l226, !tbaa !24
  %t498 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3actSource_2e4
  br i1 %t498, label %bb100, label %bb101
bb100:
  %t500 = call ptr @__olang_region_make(ptr %v1)
  %t501 = ptrtoint ptr %t500 to i64
  store i64 %t501, ptr %l226, !tbaa !24
  br label %bb101
bb101:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load i32, ptr %l15, !tbaa !23
  %t506 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t502, i32 %t503)
  store { i64, ptr } %t506, ptr %l230
  br label %bb102
bb102:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t508 = load ptr, ptr %l17, !tbaa !29
  %t510 = getelementptr %"compiler/ast:Func", ptr %t508, i32 0, i32 2
  %t511 = load i32, ptr %t510, !tbaa !23
  %t514 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s12, ptr %t507, i32 %t511)
  store { i64, ptr } %t514, ptr %l234
  br label %bb103
bb103:
  %t515 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t515, 1
  %t517 = extractvalue { i64, ptr } %t515, 0
  %t518 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t520 = add i64 %t517, %t519
  %t521 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t522 = extractvalue { i64, ptr } %t521, 1
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t524 = add i64 %t520, %t523
  %t525 = load i64, ptr %l226
  %t526 = inttoptr i64 %t525 to ptr
  %t527 = call ptr @__olang_scope_alloc(ptr %t526, i64 %t524)
  call void @olang_textcopy(ptr %t527, ptr %t516, i64 %t517)
  %t528 = getelementptr i8, ptr %t527, i64 %t517
  call void @olang_textcopy(ptr %t528, ptr %t518, i64 %t519)
  %t529 = getelementptr i8, ptr %t528, i64 %t519
  call void @olang_textcopy(ptr %t529, ptr %t522, i64 %t523)
  %t530 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t527, 1
  %t533 = load i64, ptr %l226
  %t534 = inttoptr i64 %t533 to ptr
  %t535 = extractvalue { i64, ptr } %t531, 0
  %t536 = extractvalue { i64, ptr } %t531, 1
  %t537 = mul i64 %t535, 1
  %t538 = call ptr @__olang_scope_alloc(ptr %t534, i64 %t537)
  call void @llvm.memcpy.p0.p0.i64(ptr %t538, ptr %t536, i64 %t537, i1 false)
  %t539 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  %t541 = load ptr, ptr %l216, !tbaa !29
  %t542 = load ptr, ptr %l217, !tbaa !29
  %t543 = load { i64, ptr }, ptr %l220, !tbaa !27
  %t544 = load i64, ptr %l225, !tbaa !24
  %t546 = call %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t541, ptr %t542, { i64, ptr } %t543, i64 %t544, { i64, ptr } %t540)
  store %"compiler/check:ctSource" %t546, ptr %l237
  br label %bb104
bb104:
  %t547 = load %"compiler/check:ctSource", ptr %l237
  %t548 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store %"compiler/check:ctSource" %t547, ptr %t548
  call void @__olang_scope_close(ptr %s12)
  store ptr %t548, ptr %rv
  br label %ret
bb105:
  br i1 true, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  store ptr null, ptr %rv
  br label %ret
bb109:
  call void @__olang_check_failed(ptr @olang_loc_8dac41fcc89db5e5_6cee581458fc6b9)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l49 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TypeDecl", ptr %t18, i32 0, i32 4
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t16, i64 %t17, { i64, ptr } %t21)
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = getelementptr %"compiler/ast:TypeDecl", ptr %t25, i32 0, i32 3
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l24, !tbaa !24
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/ast:TypeDecl", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  br i1 %t41, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e375dcd56c8db7ae_8ebec7f18eafef7a)
  unreachable
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TypeDecl", ptr %t43, i32 0, i32 3
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = load i64, ptr %l24, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyAttrs(ptr %v0, ptr %v1, ptr %t47, i64 %t48, ptr %t46)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb33
bb14:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 11}
  %t57 = icmp eq i64 %t55, 0
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr { i64, [8 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { ptr }, ptr %t61, i32 0, i32 0
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb28
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Func", ptr %t67, i32 0, i32 8
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t65, i64 %t66, { i64, ptr } %t70)
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 3
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Sig", ptr %t77, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %l49, !tbaa !27
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr ptr, ptr %t98, i64 %t95
  %t100 = load ptr, ptr %t99, !tbaa !39
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = getelementptr %"compiler/ast:Param", ptr %t100, i32 0, i32 4
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t102, i64 %t103, { i64, ptr } %t107)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t111 = load i64, ptr %l6, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l6, !tbaa !24
  br label %bb21
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
  call void @__olang_check_failed(ptr @olang_loc_f43f80063d96068c_f8dacab5994fea88)
  unreachable
bb33:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edoFor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l22 = alloca { i64, i64, i64 }
  %l27 = alloca ptr
  %l32 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca i64
  %l50 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca i64
  %l67 = alloca { i64, i64, i64 }
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l76 = alloca ptr
  %l78 = alloca ptr
  %l84 = alloca ptr
  %t144 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load i64, ptr %l18, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 2, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l22
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l22
  store { i64, i64, i64 } %t13, ptr %l5
  %t14 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l7, !tbaa !24
  %t20 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l27
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l27, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l32
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l32, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 11
  %t38 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  br label %bb6
bb6:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb7, label %bb8
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t47, { i64, ptr } %t48)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t51)
  store ptr %t53, ptr %l43
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l43, !tbaa !29
  %t56 = getelementptr %"compiler/check:frame", ptr %t54, i32 0, i32 10
  %t58 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t56)
  %t59 = extractvalue { i32, i64 } %t58, 1
  %t60 = extractvalue { i32, i64 } %t58, 0
  store i32 %t60, ptr %l47
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb13, label %ok.62, !prof !99
ok.62:
  store i64 %t59, ptr %l46
  br label %bb12
bb12:
  %t63 = load i64, ptr %l46, !tbaa !24
  store i64 %t63, ptr %l41, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t64)
  store ptr %t66, ptr %l50
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l50, !tbaa !29
  %t69 = getelementptr %"compiler/check:frame", ptr %t67, i32 0, i32 11
  %t71 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t69)
  %t72 = extractvalue { i32, i64 } %t71, 1
  %t73 = extractvalue { i32, i64 } %t71, 0
  store i32 %t73, ptr %l54
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb18, label %ok.75, !prof !99
ok.75:
  store i64 %t72, ptr %l53
  br label %bb17
bb17:
  %t76 = load i64, ptr %l53, !tbaa !24
  store i64 %t76, ptr %l48, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l4, !tbaa !24
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t77, i64 %t78, i64 %t79, i64 %t80, i64 %t81)
  store ptr %t87, ptr %l60
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l60, !tbaa !29
  store ptr %t88, ptr %l9, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 37
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l63
  br label %bb22
bb22:
  %t94 = load i64, ptr %l63, !tbaa !24
  store i64 %t94, ptr %l10, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l1
  %t100 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t95, i32 3, %"compiler/source:Span" %t96)
  store { i64, i64, i64 } %t100, ptr %l67
  br label %bb23
bb23:
  %t101 = load { i64, i64, i64 }, ptr %l67
  store { i64, i64, i64 } %t101, ptr %l11
  %t102 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 0
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l12, !tbaa !24
  %t105 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 1
  %t106 = load i64, ptr %t105, !tbaa !24
  store i64 %t106, ptr %l13, !tbaa !24
  %t108 = getelementptr { i64, i64, i64 }, ptr %l11, i32 0, i32 2
  %t109 = load i64, ptr %t108, !tbaa !24
  store i64 %t109, ptr %l14, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l71, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l72, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t113, ptr %l73
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v2, ptr %v0, ptr %t114, ptr %a3)
  store ptr %t118, ptr %l76
  br label %bb24
bb24:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t120 = load ptr, ptr %l72, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l73
  %t122 = load ptr, ptr %l76, !tbaa !29
  %t124 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t120, %"compiler/source:Span" %t121, ptr %t122, i64 %t119)
  store ptr %t124, ptr %l78
  br label %bb25
bb25:
  %t125 = load ptr, ptr %l71, !tbaa !29
  %t126 = load ptr, ptr %l78, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t125, ptr %t126)
  br label %bb26
bb26:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t131 = load i64, ptr %l10, !tbaa !24
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t127, i64 %t128, i64 %t129, i64 %t130, i64 %t131)
  store ptr %t137, ptr %l84
  br label %bb27
bb27:
  %t138 = load ptr, ptr %l84, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l1
  %t141 = load ptr, ptr %l9, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 0
  store i64 4, ptr %t145
  %t147 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t140, 0
  %t149 = insertvalue { %"compiler/source:Span", ptr, ptr } %t147, ptr %t141, 1
  %t151 = insertvalue { %"compiler/source:Span", ptr, ptr } %t149, ptr %t138, 2
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t151, ptr %t152
  %t153 = load { i64, [3 x i64] }, ptr %t144
  %t155 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t153, ptr %t155
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t139, ptr %t155)
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffS(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l59 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l82 = alloca i1
  %l83 = alloca i1
  %l86 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l101 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca i1
  %l111 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l136 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb13
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t17 = load ptr, ptr %l17, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l17, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 17}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l18, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb13
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t32 = load ptr, ptr %l23, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l23, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 17}
  %t38 = icmp eq i64 %t36, 15
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l24, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l2, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store i1 %t51, ptr %l32
  br label %bb14
bb14:
  %t52 = load i1, ptr %l32, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
bb15:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l33, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 17}
  %t60 = icmp eq i64 %t58, 1
  store i1 %t60, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l3, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [3 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l4, !tbaa !29
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t78 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %t74, ptr %t75, i1 true)
  store i1 %t78, ptr %l43
  br label %bb21
bb21:
  %t79 = load i1, ptr %l43, !tbaa !21
  br i1 %t79, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb25
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t80, ptr %t81)
  store i1 %t85, ptr %l48
  br label %bb24
bb24:
  %t86 = load i1, ptr %l48, !tbaa !21
  store i1 %t86, ptr %l44, !tbaa !21
  br label %bb25
bb25:
  %t87 = load i1, ptr %l44, !tbaa !21
  store i1 %t87, ptr %rv
  br label %ret
bb26:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t89 = load ptr, ptr %l49, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb27, label %bb28
bb27:
  %t92 = load ptr, ptr %l49, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 17}
  %t95 = icmp eq i64 %t93, 3
  store i1 %t95, ptr %l50, !tbaa !21
  br label %bb28
bb28:
  %t96 = load i1, ptr %l50, !tbaa !21
  br i1 %t96, label %bb29, label %bb30
bb29:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [3 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", ptr }, ptr %t99, i32 0, i32 1
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb41
bb31:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = getelementptr %"compiler/typed:If", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t103, ptr %t107)
  store i1 %t111, ptr %l59
  br label %bb32
bb32:
  %t112 = load i1, ptr %l59, !tbaa !21
  br i1 %t112, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb36
bb34:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l5, !tbaa !29
  %t116 = getelementptr %"compiler/typed:If", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t121 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t113, ptr %t117)
  store i1 %t121, ptr %l65
  br label %bb35
bb35:
  %t122 = load i1, ptr %l65, !tbaa !21
  store i1 %t122, ptr %l60, !tbaa !21
  br label %bb36
bb36:
  %t123 = load i1, ptr %l60, !tbaa !21
  br i1 %t123, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb40
bb38:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l5, !tbaa !29
  %t127 = getelementptr %"compiler/typed:If", ptr %t125, i32 0, i32 2
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t131 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t124, ptr %t128)
  store i1 %t131, ptr %l70
  br label %bb39
bb39:
  %t132 = load i1, ptr %l70, !tbaa !21
  store i1 %t132, ptr %l66, !tbaa !21
  br label %bb40
bb40:
  %t133 = load i1, ptr %l66, !tbaa !21
  store i1 %t133, ptr %rv
  br label %ret
bb41:
  %t134 = load ptr, ptr %l1, !tbaa !29
  store ptr %t134, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t135 = load ptr, ptr %l71, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l71, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 17}
  %t141 = icmp eq i64 %t139, 4
  store i1 %t141, ptr %l72, !tbaa !21
  br label %bb43
bb43:
  %t142 = load i1, ptr %l72, !tbaa !21
  br i1 %t142, label %bb44, label %bb45
bb44:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t145, i32 0, i32 1
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l6, !tbaa !29
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t151, i32 0, i32 2
  %t153 = load ptr, ptr %t152
  store ptr %t153, ptr %l7, !tbaa !29
  br label %bb46
bb45:
  br label %bb52
bb46:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l6, !tbaa !29
  %t160 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t155, ptr %t156)
  store i1 %t160, ptr %l82
  br label %bb47
bb47:
  %t161 = load i1, ptr %l82, !tbaa !21
  br i1 %t161, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb51
bb49:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load ptr, ptr %l7, !tbaa !29
  %t166 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t162, ptr %t163)
  store i1 %t166, ptr %l86
  br label %bb50
bb50:
  %t167 = load i1, ptr %l86, !tbaa !21
  store i1 %t167, ptr %l83, !tbaa !21
  br label %bb51
bb51:
  %t168 = load i1, ptr %l83, !tbaa !21
  store i1 %t168, ptr %rv
  br label %ret
bb52:
  %t169 = load ptr, ptr %l1, !tbaa !29
  store ptr %t169, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t170 = load ptr, ptr %l87, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb53, label %bb54
bb53:
  %t173 = load ptr, ptr %l87, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 17}
  %t176 = icmp eq i64 %t174, 6
  store i1 %t176, ptr %l88, !tbaa !21
  br label %bb54
bb54:
  %t177 = load i1, ptr %l88, !tbaa !21
  br i1 %t177, label %bb55, label %bb56
bb55:
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr { i64, [3 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l8, !tbaa !29
  br label %bb61
bb56:
  %t184 = load ptr, ptr %l1, !tbaa !29
  store ptr %t184, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t185 = load ptr, ptr %l93, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb57, label %bb58
bb57:
  %t188 = load ptr, ptr %l93, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 17}
  %t191 = icmp eq i64 %t189, 16
  store i1 %t191, ptr %l94, !tbaa !21
  br label %bb58
bb58:
  %t192 = load i1, ptr %l94, !tbaa !21
  br i1 %t192, label %bb59, label %bb60
bb59:
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr { i64, [3 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", ptr }, ptr %t195, i32 0, i32 1
  %t197 = load ptr, ptr %t196
  store ptr %t197, ptr %l8, !tbaa !29
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l8, !tbaa !29
  %t203 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t199, ptr %t200)
  store i1 %t203, ptr %l101
  br label %bb62
bb62:
  %t204 = load i1, ptr %l101, !tbaa !21
  store i1 %t204, ptr %rv
  br label %ret
bb63:
  %t205 = load ptr, ptr %l1, !tbaa !29
  store ptr %t205, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t206 = load ptr, ptr %l102, !tbaa !29
  %t207 = icmp ne ptr %t206, null
  br i1 %t207, label %bb64, label %bb65
bb64:
  %t209 = load ptr, ptr %l102, !tbaa !29
  %t210 = load i64, ptr %t209, !range !{i64 0, i64 17}
  %t212 = icmp eq i64 %t210, 8
  store i1 %t212, ptr %l103, !tbaa !21
  br label %bb65
bb65:
  %t213 = load i1, ptr %l103, !tbaa !21
  br i1 %t213, label %bb66, label %bb67
bb66:
  %t214 = load ptr, ptr %l1, !tbaa !29
  %t216 = getelementptr { i64, [3 x i64] }, ptr %t214, i32 0, i32 1
  %t217 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t216, i32 0, i32 1
  %t218 = load ptr, ptr %t217
  store ptr %t218, ptr %l9, !tbaa !29
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load ptr, ptr %l9, !tbaa !29
  %t225 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t220, ptr %t221)
  store i1 %t225, ptr %l111
  br label %bb69
bb69:
  %t226 = load i1, ptr %l111, !tbaa !21
  store i1 %t226, ptr %rv
  br label %ret
bb70:
  %t227 = load ptr, ptr %l1, !tbaa !29
  store ptr %t227, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t228 = load ptr, ptr %l112, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb71, label %bb72
bb71:
  %t231 = load ptr, ptr %l112, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 17}
  %t234 = icmp eq i64 %t232, 5
  store i1 %t234, ptr %l113, !tbaa !21
  br label %bb72
bb72:
  %t235 = load i1, ptr %l113, !tbaa !21
  br i1 %t235, label %bb73, label %bb74
bb73:
  br label %bb79
bb74:
  %t236 = load ptr, ptr %l1, !tbaa !29
  store ptr %t236, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t237 = load ptr, ptr %l116, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb75, label %bb76
bb75:
  %t240 = load ptr, ptr %l116, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 17}
  %t243 = icmp eq i64 %t241, 7
  store i1 %t243, ptr %l117, !tbaa !21
  br label %bb76
bb76:
  %t244 = load i1, ptr %l117, !tbaa !21
  br i1 %t244, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  store i1 false, ptr %rv
  br label %ret
bb80:
  %t246 = load ptr, ptr %l1, !tbaa !29
  store ptr %t246, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t247 = load ptr, ptr %l121, !tbaa !29
  %t248 = icmp ne ptr %t247, null
  br i1 %t248, label %bb81, label %bb82
bb81:
  %t250 = load ptr, ptr %l121, !tbaa !29
  %t251 = load i64, ptr %t250, !range !{i64 0, i64 17}
  %t253 = icmp eq i64 %t251, 11
  store i1 %t253, ptr %l122, !tbaa !21
  br label %bb82
bb82:
  %t254 = load i1, ptr %l122, !tbaa !21
  br i1 %t254, label %bb83, label %bb84
bb83:
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t257 = getelementptr { i64, [3 x i64] }, ptr %t255, i32 0, i32 1
  %t258 = getelementptr { %"compiler/source:Span", ptr }, ptr %t257, i32 0, i32 1
  %t259 = load ptr, ptr %t258
  store ptr %t259, ptr %l10, !tbaa !29
  br label %bb89
bb84:
  %t261 = load ptr, ptr %l1, !tbaa !29
  store ptr %t261, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t262 = load ptr, ptr %l127, !tbaa !29
  %t263 = icmp ne ptr %t262, null
  br i1 %t263, label %bb85, label %bb86
bb85:
  %t265 = load ptr, ptr %l127, !tbaa !29
  %t266 = load i64, ptr %t265, !range !{i64 0, i64 17}
  %t268 = icmp eq i64 %t266, 12
  store i1 %t268, ptr %l128, !tbaa !21
  br label %bb86
bb86:
  %t269 = load i1, ptr %l128, !tbaa !21
  br i1 %t269, label %bb87, label %bb88
bb87:
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t272 = getelementptr { i64, [3 x i64] }, ptr %t270, i32 0, i32 1
  %t273 = getelementptr { %"compiler/source:Span", ptr }, ptr %t272, i32 0, i32 1
  %t274 = load ptr, ptr %t273
  store ptr %t274, ptr %l10, !tbaa !29
  br label %bb89
bb88:
  br label %bb91
bb89:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load ptr, ptr %l10, !tbaa !29
  %t281 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %t276, ptr %t277)
  store i1 %t281, ptr %l136
  br label %bb90
bb90:
  %t282 = load i1, ptr %l136, !tbaa !21
  store i1 %t282, ptr %rv
  br label %ret
bb91:
  %t283 = load ptr, ptr %l1, !tbaa !29
  store ptr %t283, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t284 = load ptr, ptr %l137, !tbaa !29
  %t285 = icmp ne ptr %t284, null
  br i1 %t285, label %bb92, label %bb93
bb92:
  %t287 = load ptr, ptr %l137, !tbaa !29
  %t288 = load i64, ptr %t287, !range !{i64 0, i64 17}
  %t290 = icmp eq i64 %t288, 9
  store i1 %t290, ptr %l138, !tbaa !21
  br label %bb93
bb93:
  %t291 = load i1, ptr %l138, !tbaa !21
  br i1 %t291, label %bb94, label %bb95
bb94:
  br label %bb108
bb95:
  %t292 = load ptr, ptr %l1, !tbaa !29
  store ptr %t292, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t293 = load ptr, ptr %l141, !tbaa !29
  %t294 = icmp ne ptr %t293, null
  br i1 %t294, label %bb96, label %bb97
bb96:
  %t296 = load ptr, ptr %l141, !tbaa !29
  %t297 = load i64, ptr %t296, !range !{i64 0, i64 17}
  %t299 = icmp eq i64 %t297, 10
  store i1 %t299, ptr %l142, !tbaa !21
  br label %bb97
bb97:
  %t300 = load i1, ptr %l142, !tbaa !21
  br i1 %t300, label %bb98, label %bb99
bb98:
  br label %bb108
bb99:
  %t301 = load ptr, ptr %l1, !tbaa !29
  store ptr %t301, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t302 = load ptr, ptr %l145, !tbaa !29
  %t303 = icmp ne ptr %t302, null
  br i1 %t303, label %bb100, label %bb101
bb100:
  %t305 = load ptr, ptr %l145, !tbaa !29
  %t306 = load i64, ptr %t305, !range !{i64 0, i64 17}
  %t308 = icmp eq i64 %t306, 13
  store i1 %t308, ptr %l146, !tbaa !21
  br label %bb101
bb101:
  %t309 = load i1, ptr %l146, !tbaa !21
  br i1 %t309, label %bb102, label %bb103
bb102:
  br label %bb108
bb103:
  %t310 = load ptr, ptr %l1, !tbaa !29
  store ptr %t310, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t311 = load ptr, ptr %l149, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb104, label %bb105
bb104:
  %t314 = load ptr, ptr %l149, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 17}
  %t317 = icmp eq i64 %t315, 14
  store i1 %t317, ptr %l150, !tbaa !21
  br label %bb105
bb105:
  %t318 = load i1, ptr %l150, !tbaa !21
  br i1 %t318, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  store i1 true, ptr %rv
  br label %ret
bb109:
  call void @__olang_check_failed(ptr @olang_loc_bc6e1922695f43ab_20684c650255034f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrPinned(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l9 = alloca i32
  %l17 = alloca ptr
  %l20 = alloca i32
  %l29 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca i64
  %l49 = alloca %"compiler/source:Span"
  %l53 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l69 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca i1
  %t144 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Match", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i32 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load i32, ptr %l9, !tbaa !23
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Match", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t13, ptr %t17, i32 %t19)
  store ptr %t23, ptr %l17
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l17, !tbaa !29
  store ptr %t24, ptr %l2, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t28 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t25)
  store i32 %t28, ptr %l20
  br label %bb6
bb6:
  %t29 = load i32, ptr %l20, !tbaa !23
  store i32 %t29, ptr %l3, !tbaa !23
  %t30 = load i32, ptr %l3, !tbaa !23
  %t31 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = icmp eq i32 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l29
  br label %bb10
bb10:
  %t47 = load i1, ptr %l29, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l31, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Match", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t54)
  store %"compiler/source:Span" %t56, ptr %l34
  br label %bb13
bb12:
  br label %bb19
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l35, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/ast:Match", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t61)
  store %"compiler/source:Span" %t63, ptr %l38
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l35, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l38
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t64, %"compiler/source:Span" %t65)
  store { i64, ptr } %t66, ptr %l39
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l3, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t67, i32 %t68)
  store { i64, ptr } %t71, ptr %l42
  br label %bb16
bb16:
  %t72 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t74 = extractvalue { i64, ptr } %t72, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t81 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrMatchNotError(ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t79, { i64, ptr } %t78)
  store %"compiler/diagmsg:Msg" %t81, ptr %l44
  br label %bb17
bb17:
  %t82 = load ptr, ptr %l31, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l34
  %t84 = load %"compiler/diagmsg:Msg", ptr %l44
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t82, %"compiler/source:Span" %t83, %"compiler/diagmsg:Msg" %t84)
  store i64 %t85, ptr %l45
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  store i1 false, ptr %rv
  br label %ret
bb19:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/ast:Match", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t90)
  store %"compiler/source:Span" %t92, ptr %l49
  br label %bb20
bb20:
  %t93 = load %"compiler/source:Span", ptr %l49
  store %"compiler/source:Span" %t93, ptr %l4
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l4
  %t96 = load i32, ptr %l3, !tbaa !23
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t94, %"compiler/source:Span" %t95, i32 %t96)
  store i64 %t100, ptr %l53
  br label %bb21
bb21:
  %t101 = load i64, ptr %l53, !tbaa !24
  store i64 %t101, ptr %l5, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t102)
  store ptr %t104, ptr %l55
  br label %bb22
bb22:
  %t105 = load ptr, ptr %l55, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l4
  %t109 = getelementptr %"compiler/check:frame", ptr %t105, i32 0, i32 60
  store %"compiler/source:Span" %t106, ptr %t109
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t110)
  store ptr %t112, ptr %l59
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l59, !tbaa !29
  %t114 = load i64, ptr %l5, !tbaa !24
  %t117 = getelementptr %"compiler/check:frame", ptr %t113, i32 0, i32 61
  store i64 %t114, ptr %t117, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t118)
  store ptr %t120, ptr %l63
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l63, !tbaa !29
  store ptr %t121, ptr %l64, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/ast:Match", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t131 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNonNull(ptr %v0, ptr %v1, ptr %v0, ptr %t122, ptr %t126, ptr %t127)
  store i1 %t131, ptr %l69
  br label %bb25
bb25:
  %t132 = load i1, ptr %l69, !tbaa !21
  %t133 = load ptr, ptr %l64, !tbaa !29
  %t134 = getelementptr %"compiler/check:frame", ptr %t133, i32 0, i32 62
  store i1 %t132, ptr %t134, !tbaa !21
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 37
  %t138 = load %"compiler/source:Span", ptr %l4
  %t139 = load i64, ptr %l5, !tbaa !24
  %t141 = trunc i64 %t139 to i32
  %t143 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t144
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 0
  store i64 0, ptr %t145
  %t147 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t138, 0
  %t149 = insertvalue { %"compiler/source:Span", i32, ptr } %t147, i32 %t141, 1
  %t151 = insertvalue { %"compiler/source:Span", i32, ptr } %t149, ptr %t143, 2
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t144, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t151, ptr %t152
  %t153 = load { i64, [3 x i64] }, ptr %t144
  %t155 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t153, ptr %t155
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t137, ptr %t155)
  br label %bb26
bb26:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca %"compiler/check:factsMark"
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l10 = alloca %"compiler/check:factsMark"
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l18 = alloca ptr
  %l23 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l36 = alloca i32
  %l40 = alloca { i64, ptr }
  %l43 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t67 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %t1)
  store %"compiler/check:factsMark" %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load %"compiler/check:factsMark", ptr %l10
  store %"compiler/check:factsMark" %t4, ptr %l5
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 37
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l13
  br label %bb2
bb2:
  %t10 = load i64, ptr %l13, !tbaa !24
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l14, !tbaa !29
  store ptr %a1, ptr %l15, !tbaa !29
  store i1 %a2, ptr %l16, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t14)
  store ptr %t16, ptr %l18
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l18, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 7
  %t20 = load i64, ptr %t19, !tbaa !24
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t23 = load i1, ptr %l16, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t21, ptr %t22, i1 %t23, i64 %t20)
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 37
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l23
  br label %bb5
bb5:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l23, !tbaa !24
  %t33 = icmp sgt i64 %t31, %t30
  store i1 %t33, ptr %l7, !tbaa !21
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t35, ptr %t36, i32 %a4)
  store ptr %t42, ptr %l30
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l30, !tbaa !29
  store ptr %t43, ptr %l8, !tbaa !29
  %t44 = load i1, ptr %l7, !tbaa !21
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t46)
  store %"compiler/source:Span" %t48, ptr %l33
  br label %bb9
bb8:
  br label %bb13
bb9:
  %t49 = load ptr, ptr %l8, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t49)
  store i32 %t52, ptr %l36
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 37
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store { i64, ptr } %t59, ptr %l40
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t64 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t62, ptr %t60, i1 false)
  store %"compiler/typed:Seq" %t64, ptr %l43
  br label %bb12
bb12:
  %t65 = load %"compiler/typed:Seq", ptr %l43
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t65, ptr %t66
  store { i64, [5 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 0
  store i64 12, ptr %t68
  %t69 = load %"compiler/source:Span", ptr %l33
  %t70 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t69, 0
  %t71 = load i32, ptr %l36, !tbaa !23
  %t72 = insertvalue { %"compiler/source:Span", i32, ptr } %t70, i32 %t71, 1
  %t74 = insertvalue { %"compiler/source:Span", i32, ptr } %t72, ptr %t66, 2
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t74, ptr %t75
  %t76 = load { i64, [5 x i64] }, ptr %t67
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t76, ptr %t78
  store ptr %t78, ptr %l8, !tbaa !29
  br label %bb13
bb13:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/check:factsMark", ptr %l5
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsDrop(ptr %v0, ptr %t80, %"compiler/check:factsMark" %t81)
  br label %bb14
bb14:
  %t84 = load ptr, ptr %l8, !tbaa !29
  store ptr %t84, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailForms(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca i1
  %l49 = alloca i1
  %l50 = alloca i1
  %l52 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i1
  %l63 = alloca i64
  %l72 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca i64
  %l83 = alloca i1
  %l89 = alloca i32
  %l92 = alloca i1
  %l93 = alloca i1
  %l96 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l107 = alloca i64
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l116 = alloca { i64, ptr }
  %l118 = alloca %"compiler/diagmsg:Msg"
  %l119 = alloca i64
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load i64, ptr %l13, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l20, !tbaa !24
  store i64 %t34, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l17, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l6, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store ptr %t61, ptr %l41
  br label %bb12
bb12:
  %t62 = load ptr, ptr %l41, !tbaa !29
  store ptr %t62, ptr %l7, !tbaa !29
  %t63 = load ptr, ptr %l7, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Func", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb16
bb14:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t73, i64 %t74)
  store i1 %t77, ptr %l49
  br label %bb15
bb15:
  %t78 = load i1, ptr %l49, !tbaa !21
  store i1 %t78, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t79 = load i1, ptr %l45, !tbaa !21
  br i1 %t79, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb21
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  store ptr %t83, ptr %l52, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t84)
  store i64 %t86, ptr %l54
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = load i64, ptr %l54, !tbaa !24
  %t89 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t89, ptr %l55
  br label %bb20
bb20:
  %t90 = load i64, ptr %l55, !tbaa !24
  %t91 = icmp sgt i64 %t90, 0
  store i1 %t91, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t93 = load i1, ptr %l50, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb23:
  br label %bb24
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 3
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l63
  br label %bb27
bb26:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 12
  %t116 = load i64, ptr %t115, !tbaa !24
  %t117 = load i64, ptr %l63, !tbaa !24
  %t119 = icmp ne i64 %t117, %t116
  store i1 %t119, ptr %l59, !tbaa !21
  br label %bb28
bb28:
  %t121 = load i1, ptr %l59, !tbaa !21
  br i1 %t121, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb30:
  br label %bb31
bb31:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l7, !tbaa !29
  %t125 = getelementptr %"compiler/ast:Func", ptr %t123, i32 0, i32 2
  %t126 = load i32, ptr %t125, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t122, i32 %t126)
  store { i64, ptr } %t129, ptr %l72
  br label %bb32
bb32:
  %t130 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t130, ptr %l8, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t135 = icmp eq i64 %t133, 0
  br i1 %t135, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb34:
  br label %bb35
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v0, ptr %s2, ptr %t137, { i64, ptr } %t138)
  store { i64, ptr } %t141, ptr %l78
  br label %bb36
bb36:
  %t142 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = call i64 @compiler_2fcheck_2eopShapeOf(ptr %s2, { i64, ptr } %t148)
  store i64 %t150, ptr %l80
  br label %bb37
bb37:
  %t151 = load i64, ptr %l80, !tbaa !24
  store i64 %t151, ptr %l9, !tbaa !24
  %t152 = load i64, ptr %l9, !tbaa !24
  %t154 = icmp slt i64 %t152, 0
  br i1 %t154, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb40
bb39:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = getelementptr [23 x %"compiler/check:opShape"], ptr @G_2ecompiler_2fcheck_2eOpShapes, i64 0, i64 %t156
  %t159 = getelementptr %"compiler/check:opShape", ptr %t158, i32 0, i32 3
  %t160 = load i1, ptr %t159, !tbaa !21
  store i1 %t160, ptr %l83, !tbaa !21
  br label %bb40
bb40:
  %t162 = load i1, ptr %l83, !tbaa !21
  br i1 %t162, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb42:
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load i64, ptr %l6, !tbaa !24
  %t170 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t166, i64 %t167)
  store i32 %t170, ptr %l89
  br label %bb44
bb44:
  %t171 = load i32, ptr %l89, !tbaa !23
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t172, i32 %t171)
  store i1 %t176, ptr %l92
  br label %bb45
bb45:
  %t177 = load i1, ptr %l92, !tbaa !21
  br i1 %t177, label %bb46, label %bb47
bb46:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/generic:Program", ptr %t181, i32 0, i32 2
  store ptr %t183, ptr %l96, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i64, ptr %l6, !tbaa !24
  %t188 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnErrors(ptr %v0, ptr %t184, i64 %t185)
  store i32 %t188, ptr %l99
  br label %bb48
bb47:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb50
bb48:
  %t189 = load ptr, ptr %l96, !tbaa !29
  %t190 = load i32, ptr %l99, !tbaa !23
  %t191 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t189, i32 %t190)
  store { i64, ptr } %t191, ptr %l100
  br label %bb49
bb49:
  %t192 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t195 = icmp sgt i64 %t193, 0
  store i1 %t195, ptr %l93, !tbaa !21
  br label %bb50
bb50:
  %t197 = load i1, ptr %l93, !tbaa !21
  br i1 %t197, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s7
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l103, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t203 = load i64, ptr %l6, !tbaa !24
  %t206 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t202, i64 %t203)
  store i64 %t206, ptr %l107
  br label %bb53
bb52:
  br label %bb60
bb53:
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t208 = load ptr, ptr %l103, !tbaa !29
  %t209 = load i64, ptr %l107, !tbaa !24
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t208, i64 -1, i64 %t209, i32 %t207, i32 0)
  store ptr %t211, ptr %l109
  br label %bb54
bb54:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l110, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l7, !tbaa !29
  %t217 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t213, ptr %t214)
  store %"compiler/source:Span" %t217, ptr %l113
  br label %bb55
bb55:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t222 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v0, ptr %s7, ptr %t218, { i64, ptr } %t219)
  store { i64, ptr } %t222, ptr %l116
  br label %bb56
bb56:
  %t223 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  %t225 = extractvalue { i64, ptr } %t223, 1
  %t226 = mul i64 %t224, 1
  %t227 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t226)
  call void @llvm.memcpy.p0.p0.i64(ptr %t227, ptr %t225, i64 %t226, i1 false)
  %t228 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t227, 1
  %t231 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %s7, ptr %s7, { i64, ptr } %t229)
  store %"compiler/diagmsg:Msg" %t231, ptr %l118
  br label %bb57
bb57:
  %t232 = load ptr, ptr %l110, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l113
  %t234 = load %"compiler/diagmsg:Msg", ptr %l118
  %t235 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t232, %"compiler/source:Span" %t233, %"compiler/diagmsg:Msg" %t234)
  store i64 %t235, ptr %l119
  br label %bb58
bb58:
  %t236 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t236)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb61:
  %t238 = load i64, ptr %l5, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l5, !tbaa !24
  br label %bb8
bb62:
  %t242 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %t242)
  br label %bb63
bb63:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnFact(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca %"compiler/check:factRead"
  %l11 = alloca i64
  %l13 = alloca i1
  %l14 = alloca %"compiler/check:factRead"
  %l17 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i1
  %l30 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca i32
  %l41 = alloca i1
  %l42 = alloca i64
  %l43 = alloca ptr
  %l48 = alloca i1
  %l49 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i32
  %l59 = alloca ptr
  %l61 = alloca %"compiler/effects:Facts"
  %l64 = alloca i1
  %l65 = alloca i64
  %l66 = alloca i64
  %l70 = alloca { i64, ptr }
  %l71 = alloca i1
  %l73 = alloca ptr
  %l75 = alloca i64
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca i64
  %l81 = alloca { i64, ptr }
  %l84 = alloca %"compiler/check:factRead"
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca i32
  %l93 = alloca i1
  %l94 = alloca i64
  %l95 = alloca ptr
  %l100 = alloca i64
  %l103 = alloca ptr
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l115 = alloca i64
  %l118 = alloca ptr
  %l122 = alloca i64
  %l126 = alloca i1
  %l130 = alloca i1
  %l131 = alloca i32
  %l133 = alloca i1
  %l134 = alloca i64
  %l135 = alloca i64
  %l139 = alloca { i64, ptr }
  %l140 = alloca i1
  %l142 = alloca ptr
  %l144 = alloca i64
  %l145 = alloca %"compiler/source:Span"
  %l146 = alloca i64
  %l150 = alloca { i64, ptr }
  %l153 = alloca %"compiler/check:factRead"
  %l157 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca i32
  %l162 = alloca i1
  %l163 = alloca i64
  %l164 = alloca ptr
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a4)
  store { i64, ptr } %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t9 = call i32 @compiler_2feffects_2eFact_2eNamed(ptr %v0, { i64, ptr } %t7)
  store i32 %t9, ptr %l19
  br label %bb2
bb2:
  %t10 = load i32, ptr %l19, !range !{i32 0, i32 10}
  store i32 %t10, ptr %l6
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = call i1 @compiler_2fcheck_2edeclaredFact(ptr %v0, { i64, ptr } %t11)
  store i1 %t13, ptr %l21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l21, !tbaa !21
  store i1 %t14, ptr %l7, !tbaa !21
  %t15 = load i32, ptr %l6, !range !{i32 0, i32 10}
  %t17 = trunc i64 9 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = load i1, ptr %l7, !tbaa !21
  %t22 = xor i1 %t20, true
  store i1 %t22, ptr %l24, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l24, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t30 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFn(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  store i64 %t30, ptr %l30
  br label %bb10
bb10:
  %t31 = load i64, ptr %l30, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t37 = load i1, ptr %l7, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l35, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t40, ptr %l36
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t41, ptr %l37, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t48 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclFact(ptr %v0, ptr %v0, ptr %t42, i64 %t43, { i64, ptr } %t44)
  store i1 %t48, ptr %l41
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t49 = load i1, ptr %l41, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  store i64 1, ptr %l42, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb19
bb19:
  %t50 = load ptr, ptr %l35, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l36
  %t52 = load i32, ptr %l37, !tbaa !23
  %t53 = load i64, ptr %l42, !tbaa !24
  %t54 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t50, %"compiler/source:Span" %t51, i32 %t52, i64 %t53)
  store ptr %t54, ptr %l43
  br label %bb20
bb20:
  %t55 = load ptr, ptr %l43, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t55, ptr %rv
  br label %ret
bb21:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t60, i64 %t61)
  store i1 %t64, ptr %l48
  br label %bb22
bb22:
  %t65 = load i1, ptr %l48, !tbaa !21
  br i1 %t65, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 61
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t71 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t74 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t75 = add i64 %t72, %t74
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t80 = extractvalue { i64, ptr } %t70, 1
  %t81 = extractvalue { i64, ptr } %t70, 0
  %t82 = add i64 %t78, %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t71, i64 %t72)
  %t84 = getelementptr i8, ptr %t83, i64 %t72
  %t85 = call i64 @__olang_fmt_i64(ptr %t84, i64 %t69)
  %t86 = getelementptr i8, ptr %t84, i64 %t74
  call void @olang_textcopy(ptr %t86, ptr %t76, i64 %t77)
  %t87 = getelementptr i8, ptr %t86, i64 %t77
  call void @olang_textcopy(ptr %t87, ptr %t80, i64 %t81)
  %t88 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t83, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t99 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H066d6e237a6d66bfc481a7c4eff443dd(ptr %v0, ptr %s4, ptr %t68, { i64, ptr } %t96)
  %t100 = extractvalue { i32, i1 } %t99, 1
  %t101 = extractvalue { i32, i1 } %t99, 0
  store i32 %t101, ptr %l57
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb26, label %ok.103, !prof !99
ok.103:
  store i1 %t100, ptr %l56
  br label %bb25
bb24:
  br label %bb45
bb25:
  %t104 = load i1, ptr %l56, !tbaa !21
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t105)
  store ptr %t107, ptr %l59
  br label %bb28
bb28:
  %t108 = load i64, ptr %l8, !tbaa !24
  %t109 = load ptr, ptr %l59, !tbaa !29
  %t111 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %t109, i64 %t108)
  store %"compiler/effects:Facts" %t111, ptr %l61
  br label %bb29
bb29:
  %t112 = load i32, ptr %l6, !range !{i32 0, i32 10}
  %t115 = call i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %s4, ptr %l61, i32 %t112)
  store i1 %t115, ptr %l64
  br label %bb30
bb30:
  %t116 = load i1, ptr %l64, !tbaa !21
  store i1 %t116, ptr %l49, !tbaa !21
  br label %bb31
bb31:
  %t117 = load i1, ptr %l49, !tbaa !21
  store i1 %t117, ptr %l9, !tbaa !21
  %t118 = load i64, ptr %l8, !tbaa !24
  store i64 %t118, ptr %l65, !tbaa !24
  %t119 = ptrtoint ptr %v0 to i64
  store i64 %t119, ptr %l66, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactRead_2e2
  br i1 %t120, label %bb32, label %bb33
bb32:
  %t122 = call ptr @__olang_region_make(ptr %v0)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l66, !tbaa !24
  br label %bb33
bb33:
  %t124 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = load i64, ptr %l66
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = call ptr @__olang_scope_alloc(ptr %t129, i64 %t127)
  call void @olang_textcopy(ptr %t130, ptr %t126, i64 %t127)
  %t131 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  %t134 = load i64, ptr %l66
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = extractvalue { i64, ptr } %t132, 0
  %t137 = extractvalue { i64, ptr } %t132, 1
  %t138 = mul i64 %t136, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %t135, i64 %t138)
  call void @llvm.memcpy.p0.p0.i64(ptr %t139, ptr %t137, i64 %t138, i1 false)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l70, !tbaa !27
  %t142 = load i1, ptr %l9, !tbaa !21
  store i1 %t142, ptr %l71, !tbaa !21
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t143)
  store ptr %t145, ptr %l73
  br label %bb34
bb34:
  %t146 = load ptr, ptr %l73, !tbaa !29
  %t148 = getelementptr %"compiler/check:frame", ptr %t146, i32 0, i32 2
  %t149 = load i64, ptr %t148, !tbaa !24
  store i64 %t149, ptr %l75, !tbaa !24
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l76
  %t151 = ptrtoint ptr %v0 to i64
  store i64 %t151, ptr %l77, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactRead_2e6
  br i1 %t152, label %bb35, label %bb36
bb35:
  %t154 = call ptr @__olang_region_make(ptr %v0)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l77, !tbaa !24
  br label %bb36
bb36:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  %t160 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s4, ptr %t156, %"compiler/source:Span" %t157)
  store { i64, ptr } %t160, ptr %l81
  br label %bb37
bb37:
  %t161 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = load i64, ptr %l77
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t163)
  call void @olang_textcopy(ptr %t166, ptr %t162, i64 %t163)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t170 = load i64, ptr %l77
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = extractvalue { i64, ptr } %t168, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t178 = load i64, ptr %l65, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t180 = load i1, ptr %l71, !tbaa !21
  %t181 = load i64, ptr %l75, !tbaa !24
  %t182 = load %"compiler/source:Span", ptr %l76
  %t184 = call %"compiler/check:factRead" @compiler_2fcheck_3afactRead_2ector(ptr %v0, ptr %v0, ptr %v0, i64 -1, i64 %t178, { i64, ptr } %t179, i1 %t180, i64 %t181, %"compiler/source:Span" %t182, { i64, ptr } %t177)
  store %"compiler/check:factRead" %t184, ptr %l84
  br label %bb38
bb38:
  %t185 = load %"compiler/check:factRead", ptr %l84
  store %"compiler/check:factRead" %t185, ptr %l10
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/check:Checker", ptr %t186, i32 0, i32 60
  %t189 = load %"compiler/check:factRead", ptr %l10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2ePush_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v0, ptr %t188, %"compiler/check:factRead" %t189)
  br label %bb39
bb39:
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l88, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t193, ptr %l89
  %t194 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t194, ptr %l90, !tbaa !23
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t198 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadFact(ptr %v0, ptr %v0, ptr %t195, ptr %l10)
  store i1 %t198, ptr %l93
  br label %bb40
bb40:
  %t199 = load i1, ptr %l93, !tbaa !21
  br i1 %t199, label %bb41, label %bb42
bb41:
  store i64 1, ptr %l94, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb43
bb43:
  %t200 = load ptr, ptr %l88, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l89
  %t202 = load i32, ptr %l90, !tbaa !23
  %t203 = load i64, ptr %l94, !tbaa !24
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t200, %"compiler/source:Span" %t201, i32 %t202, i64 %t203)
  store ptr %t204, ptr %l95
  br label %bb44
bb44:
  %t205 = load ptr, ptr %l95, !tbaa !29
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t205, ptr %rv
  br label %ret
bb45:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t209 = load i64, ptr %l8, !tbaa !24
  %t213 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactInst(ptr %v0, ptr %v1, ptr %t207, ptr %t208, i64 %t209)
  store i64 %t213, ptr %l100
  br label %bb46
bb46:
  %t214 = load i64, ptr %l100, !tbaa !24
  store i64 %t214, ptr %l11, !tbaa !24
  %t215 = load i64, ptr %l11, !tbaa !24
  %t217 = icmp slt i64 %t215, 0
  br i1 %t217, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l103, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l104
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l105, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t226 = load i64, ptr %l8, !tbaa !24
  %t229 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s8, ptr %t225, i64 %t226)
  store ptr %t229, ptr %l109
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t230 = load ptr, ptr %l109, !tbaa !29
  %t232 = getelementptr %"compiler/ast:Func", ptr %t230, i32 0, i32 2
  %t233 = load i32, ptr %t232, !tbaa !23
  %t234 = load ptr, ptr %l105, !tbaa !29
  %t236 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t234, i32 %t233)
  store { i64, ptr } %t236, ptr %l112
  br label %bb50
bb50:
  %t237 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t238 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t240 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactOfGeneric(ptr %v0, ptr %v0, ptr %s8, { i64, ptr } %t238, { i64, ptr } %t237)
  store %"compiler/diagmsg:Msg" %t240, ptr %l114
  br label %bb51
bb51:
  %t241 = load ptr, ptr %l103, !tbaa !29
  %t242 = load %"compiler/source:Span", ptr %l104
  %t243 = load %"compiler/diagmsg:Msg", ptr %l114
  %t244 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t241, %"compiler/source:Span" %t242, %"compiler/diagmsg:Msg" %t243)
  store i64 %t244, ptr %l115
  br label %bb52
bb52:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l1
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t245, %"compiler/source:Span" %t246)
  store ptr %t249, ptr %l118
  br label %bb53
bb53:
  %t250 = load ptr, ptr %l118, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t250, ptr %rv
  br label %ret
bb54:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load i64, ptr %l11, !tbaa !24
  %t256 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t252, i64 %t253)
  store i64 %t256, ptr %l122
  br label %bb55
bb55:
  %t257 = load i64, ptr %l11, !tbaa !24
  %t258 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t260 = call i64 @__olang_fmt_i64(ptr null, i64 %t257)
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t263 = add i64 %t260, %t262
  %t265 = extractvalue { i64, ptr } %t258, 1
  %t266 = extractvalue { i64, ptr } %t258, 0
  %t267 = add i64 %t263, %t266
  %t268 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t267)
  %t269 = call i64 @__olang_fmt_i64(ptr %t268, i64 %t257)
  %t270 = getelementptr i8, ptr %t268, i64 %t260
  call void @olang_textcopy(ptr %t270, ptr %t261, i64 %t262)
  %t271 = getelementptr i8, ptr %t270, i64 %t262
  call void @olang_textcopy(ptr %t271, ptr %t265, i64 %t266)
  %t272 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t268, 1
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/check:Checker", ptr %t275, i32 0, i32 61
  %t281 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H066d6e237a6d66bfc481a7c4eff443dd(ptr %v0, ptr %s0, ptr %t277, { i64, ptr } %t273)
  %t282 = extractvalue { i32, i1 } %t281, 1
  %t283 = extractvalue { i32, i1 } %t281, 0
  store i32 %t283, ptr %l131
  %t284 = icmp ne i32 %t283, 0
  br i1 %t284, label %bb57, label %ok.285, !prof !99
ok.285:
  store i1 %t282, ptr %l130
  br label %bb56
bb56:
  %t286 = load i1, ptr %l130, !tbaa !21
  store i1 %t286, ptr %l126, !tbaa !21
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t287 = load i32, ptr %l6, !range !{i32 0, i32 10}
  %t289 = call i1 @compiler_2feffects_2eConservative(i32 %t287)
  store i1 %t289, ptr %l133
  br label %bb59
bb59:
  %t290 = load i1, ptr %l133, !tbaa !21
  store i1 %t290, ptr %l126, !tbaa !21
  br label %bb60
bb60:
  %t291 = load i1, ptr %l126, !tbaa !21
  store i1 %t291, ptr %l13, !tbaa !21
  %t292 = load i64, ptr %l11, !tbaa !24
  store i64 %t292, ptr %l134, !tbaa !24
  %t293 = ptrtoint ptr %v0 to i64
  store i64 %t293, ptr %l135, !tbaa !24
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactRead_2e2
  br i1 %t294, label %bb61, label %bb62
bb61:
  %t296 = call ptr @__olang_region_make(ptr %v0)
  %t297 = ptrtoint ptr %t296 to i64
  store i64 %t297, ptr %l135, !tbaa !24
  br label %bb62
bb62:
  %t298 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t298, 1
  %t301 = extractvalue { i64, ptr } %t298, 0
  %t302 = load i64, ptr %l135
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = call ptr @__olang_scope_alloc(ptr %t303, i64 %t301)
  call void @olang_textcopy(ptr %t304, ptr %t300, i64 %t301)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  %t308 = load i64, ptr %l135
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = extractvalue { i64, ptr } %t306, 0
  %t311 = extractvalue { i64, ptr } %t306, 1
  %t312 = mul i64 %t310, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %t309, i64 %t312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t313, ptr %t311, i64 %t312, i1 false)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  store { i64, ptr } %t315, ptr %l139, !tbaa !27
  %t316 = load i1, ptr %l13, !tbaa !21
  store i1 %t316, ptr %l140, !tbaa !21
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t317)
  store ptr %t319, ptr %l142
  br label %bb63
bb63:
  %t320 = load ptr, ptr %l142, !tbaa !29
  %t322 = getelementptr %"compiler/check:frame", ptr %t320, i32 0, i32 2
  %t323 = load i64, ptr %t322, !tbaa !24
  store i64 %t323, ptr %l144, !tbaa !24
  %t324 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t324, ptr %l145
  %t325 = ptrtoint ptr %v0 to i64
  store i64 %t325, ptr %l146, !tbaa !24
  %t326 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactRead_2e6
  br i1 %t326, label %bb64, label %bb65
bb64:
  %t328 = call ptr @__olang_region_make(ptr %v0)
  %t329 = ptrtoint ptr %t328 to i64
  store i64 %t329, ptr %l146, !tbaa !24
  br label %bb65
bb65:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load %"compiler/source:Span", ptr %l1
  %t334 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s0, ptr %t330, %"compiler/source:Span" %t331)
  store { i64, ptr } %t334, ptr %l150
  br label %bb66
bb66:
  %t335 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = load i64, ptr %l146
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = call ptr @__olang_scope_alloc(ptr %t339, i64 %t337)
  call void @olang_textcopy(ptr %t340, ptr %t336, i64 %t337)
  %t341 = insertvalue { i64, ptr } undef, i64 %t337, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t340, 1
  %t344 = load i64, ptr %l146
  %t345 = inttoptr i64 %t344 to ptr
  %t346 = extractvalue { i64, ptr } %t342, 0
  %t347 = extractvalue { i64, ptr } %t342, 1
  %t348 = mul i64 %t346, 1
  %t349 = call ptr @__olang_scope_alloc(ptr %t345, i64 %t348)
  call void @llvm.memcpy.p0.p0.i64(ptr %t349, ptr %t347, i64 %t348, i1 false)
  %t350 = insertvalue { i64, ptr } undef, i64 %t346, 0
  %t351 = insertvalue { i64, ptr } %t350, ptr %t349, 1
  %t352 = load i64, ptr %l134, !tbaa !24
  %t353 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t354 = load i1, ptr %l140, !tbaa !21
  %t355 = load i64, ptr %l144, !tbaa !24
  %t356 = load %"compiler/source:Span", ptr %l145
  %t358 = call %"compiler/check:factRead" @compiler_2fcheck_3afactRead_2ector(ptr %v0, ptr %v0, ptr %v0, i64 %t352, i64 -1, { i64, ptr } %t353, i1 %t354, i64 %t355, %"compiler/source:Span" %t356, { i64, ptr } %t351)
  store %"compiler/check:factRead" %t358, ptr %l153
  br label %bb67
bb67:
  %t359 = load %"compiler/check:factRead", ptr %l153
  store %"compiler/check:factRead" %t359, ptr %l14
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 60
  %t363 = load %"compiler/check:factRead", ptr %l14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2ePush_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v0, ptr %t362, %"compiler/check:factRead" %t363)
  br label %bb68
bb68:
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l157, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t367, ptr %l158
  %t368 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t368, ptr %l159, !tbaa !23
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t372 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadFact(ptr %v0, ptr %v0, ptr %t369, ptr %l14)
  store i1 %t372, ptr %l162
  br label %bb69
bb69:
  %t373 = load i1, ptr %l162, !tbaa !21
  br i1 %t373, label %bb70, label %bb71
bb70:
  store i64 1, ptr %l163, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb72
bb72:
  %t374 = load ptr, ptr %l157, !tbaa !29
  %t375 = load %"compiler/source:Span", ptr %l158
  %t376 = load i32, ptr %l159, !tbaa !23
  %t377 = load i64, ptr %l163, !tbaa !24
  %t378 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t374, %"compiler/source:Span" %t375, i32 %t376, i64 %t377)
  store ptr %t378, ptr %l164
  br label %bb73
bb73:
  %t379 = load ptr, ptr %l164, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t379, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t5, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d10, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdable(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %a1)
  store i32 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i32, ptr %l5, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load i1, ptr %l8, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t23, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t24 = load i1, ptr %l15, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l10, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb9:
  %t38 = load i1, ptr %l22, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l17, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l29
  br label %bb13
bb12:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb14
bb13:
  %t52 = load i1, ptr %l29, !tbaa !21
  %t53 = xor i1 %t52, true
  store i1 %t53, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t55 = load i1, ptr %l24, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i1
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
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 3
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb28
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 8}
  %t28 = icmp eq i64 %t26, 5
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb10
bb10:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 8}
  %t37 = icmp eq i64 %t35, 1
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb14
bb14:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ce96f1d737413f70_b94e71a15147345c)
  unreachable
bb23:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  store ptr %t43, ptr %l22, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l23, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l25, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t49)
  store ptr %t51, ptr %l27
  br label %bb24
bb24:
  %t52 = load ptr, ptr %l27, !tbaa !29
  %t54 = getelementptr %"compiler/check:frame", ptr %t52, i32 0, i32 4
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = load ptr, ptr %l25, !tbaa !29
  %t60 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t57, ptr %t54, ptr %t55)
  store i32 %t60, ptr %l32
  br label %bb25
bb25:
  %t61 = load ptr, ptr %l23, !tbaa !29
  %t62 = load i32, ptr %l32, !tbaa !23
  %t63 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t63, ptr %l33
  br label %bb26
bb26:
  %t64 = load ptr, ptr %l22, !tbaa !29
  %t65 = load i32, ptr %l33, !tbaa !23
  %t66 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t66, ptr %l34
  br label %bb27
bb27:
  %t67 = load i1, ptr %l34, !tbaa !21
  store i1 %t67, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_cca9af72e1ece301_506f5d82865fcd8d)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t10, i32 %a1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, i64 %a2)
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l56 = alloca ptr
  %l59 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/source:Span"
  %l66 = alloca i32
  %l68 = alloca { i64, ptr }
  %l72 = alloca i32
  %l73 = alloca %"compiler/typed:Text"
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  %t59 = alloca { i64, [2 x i64] }, align 8
  %t139 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l3, !tbaa !29
  store { i64, ptr } %a2, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb40
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr ptr, ptr %t23, i64 %t20
  %t25 = load ptr, ptr %t24, !tbaa !39
  store ptr %t25, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t27 = load ptr, ptr %l7, !tbaa !29
  store ptr %t27, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t28 = load ptr, ptr %l25, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l25, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 1
  store i1 %t34, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l7, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32 }, ptr %t38, i32 0, i32 0
  %t40 = load %"compiler/source:Span", ptr %t39
  store %"compiler/source:Span" %t40, ptr %l9
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32 }, ptr %t44, i32 0, i32 1
  %t46 = load i32, ptr %t45, !range !{i32 0, i32 114}
  store i32 %t46, ptr %l10
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t48 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t50 = trunc i64 5 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l3, !tbaa !29
  store ptr %t53, ptr %l35, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l9
  %t58 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v2, ptr %t54, %"compiler/source:Span" %t55)
  store { i64, ptr } %t58, ptr %l38
  br label %bb13
bb12:
  br label %bb15
bb13:
  store { i64, [2 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 0
  store i64 0, ptr %t60
  %t61 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t62 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t61, 0
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 1
  store { { i64, ptr } } %t62, ptr %t63
  %t64 = load { i64, [2 x i64] }, ptr %t59
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t64, ptr %t66
  %t67 = load ptr, ptr %l35, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v2, ptr %v2, ptr %t67, ptr %t66)
  br label %bb14
bb14:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb15
bb15:
  br label %bb33
bb16:
  %t69 = load ptr, ptr %l7, !tbaa !29
  store ptr %t69, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t70 = load ptr, ptr %l41, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb17, label %bb18
bb17:
  %t73 = load ptr, ptr %l41, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 30}
  %t76 = icmp eq i64 %t74, 3
  store i1 %t76, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t77 = load i1, ptr %l42, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t78 = load ptr, ptr %l7, !tbaa !29
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t80, i32 0, i32 1
  %t82 = load i32, ptr %t81, !range !{i32 0, i32 114}
  store i32 %t82, ptr %l11
  %t84 = load ptr, ptr %l7, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l12, !tbaa !29
  br label %bb21
bb20:
  br label %bb28
bb21:
  %t90 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t92 = trunc i64 105 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb22, label %bb23
bb22:
  %t95 = load ptr, ptr %l3, !tbaa !29
  store ptr %t95, ptr %l51, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l52, !tbaa !29
  %t97 = load ptr, ptr %l7, !tbaa !29
  %t99 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t97)
  store %"compiler/source:Span" %t99, ptr %l54
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t100 = load ptr, ptr %l12, !tbaa !29
  %t101 = load ptr, ptr %l52, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l54
  %t104 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erenderPiece(ptr %v0, ptr %v1, ptr %v0, ptr %t101, %"compiler/source:Span" %t102, ptr %t100)
  store ptr %t104, ptr %l56
  br label %bb25
bb25:
  %t105 = load ptr, ptr %l51, !tbaa !29
  %t106 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v2, ptr %v0, ptr %t105, ptr %t106)
  br label %bb26
bb26:
  store i1 true, ptr %l8, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_edb80cc7b7da287f_97b51ae7478fcbdb)
  unreachable
bb33:
  %t107 = load i1, ptr %l8, !tbaa !21
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l59, !tbaa !29
  %t112 = load ptr, ptr %l7, !tbaa !29
  %t114 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t112)
  store %"compiler/source:Span" %t114, ptr %l61
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t115 = load ptr, ptr %l59, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l61
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s8, ptr %t115, %"compiler/source:Span" %t116, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s8)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t117 = load i64, ptr %l5, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l5, !tbaa !24
  br label %bb2
bb40:
  %t121 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t121, ptr %l64
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t122)
  store i32 %t124, ptr %l66
  br label %bb41
bb41:
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t127 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2eToArr_H1b89f7fcc263bba924ca04e7c3aa48c7(ptr %v2, ptr %v2, ptr %t125)
  store { i64, ptr } %t127, ptr %l68
  br label %bb42
bb42:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l1
  %t133 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t128, i32 4, %"compiler/source:Span" %t129)
  store i32 %t133, ptr %l72
  br label %bb43
bb43:
  %t134 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t135 = load i32, ptr %l72, !tbaa !23
  %t136 = call %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v2, ptr %v2, { i64, ptr } %t134, i32 %t135)
  store %"compiler/typed:Text" %t136, ptr %l73
  br label %bb44
bb44:
  %t137 = load %"compiler/typed:Text", ptr %l73
  %t138 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Text" %t137, ptr %t138
  store { i64, [5 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [5 x i64] }, ptr %t139, i32 0, i32 0
  store i64 16, ptr %t140
  %t141 = load %"compiler/source:Span", ptr %l64
  %t142 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t141, 0
  %t143 = load i32, ptr %l66, !tbaa !23
  %t144 = insertvalue { %"compiler/source:Span", i32, ptr } %t142, i32 %t143, 1
  %t146 = insertvalue { %"compiler/source:Span", i32, ptr } %t144, ptr %t138, 2
  %t147 = getelementptr { i64, [5 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t146, ptr %t147
  %t148 = load { i64, [5 x i64] }, ptr %t139
  %t150 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t148, ptr %t150
  store ptr %t150, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejumpText(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l10 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  store ptr %t7, ptr %l5, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l10
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l15
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = load i32, ptr %l10, !tbaa !23
  %t30 = load i32, ptr %l15, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t28, i32 %t29, i32 %t30, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t31, ptr %l16
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l16, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l17
  br label %bb4
bb4:
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteral(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca ptr
  %l21 = alloca i1
  %l25 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l38 = alloca i64
  %l39 = alloca ptr
  %l44 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l77 = alloca ptr
  %l82 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = trunc i64 6 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t7, ptr %l7
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t8, ptr %l8, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t13 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t9, %"compiler/source:Span" %t10)
  store { i64, ptr } %t13, ptr %l11
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t14 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t15, ptr %l12
  br label %bb4
bb4:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l13, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l7
  %t19 = load i32, ptr %l8, !tbaa !23
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t17, %"compiler/source:Span" %t18, i32 %t19, i64 %t20)
  store ptr %t21, ptr %l14
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t22 = load ptr, ptr %l14, !tbaa !29
  store ptr %t22, ptr %rv
  br label %ret
bb9:
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t25 = trunc i64 7 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l21
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load i32, ptr %l3, !tbaa !23
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %t39, %"compiler/source:Span" %t40, i32 %t41)
  store ptr %t45, ptr %l25
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t46 = load ptr, ptr %l25, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l1
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t47, %"compiler/source:Span" %t48, i32 %t49, i64 0)
  store ptr %t53, ptr %l29
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load ptr, ptr %l29, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb18:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t57 = trunc i64 4 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l32, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l33
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %t62)
  store i32 %t64, ptr %l35
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  %t69 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %t65, %"compiler/source:Span" %t66)
  store i64 %t69, ptr %l38
  br label %bb22
bb22:
  %t70 = load ptr, ptr %l32, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l33
  %t72 = load i32, ptr %l35, !tbaa !23
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t70, %"compiler/source:Span" %t71, i32 %t72, i64 %t73)
  store ptr %t74, ptr %l39
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load ptr, ptr %l39, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb24:
  %t76 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t78 = trunc i64 5 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb25, label %bb26
bb25:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t85 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextLit(ptr %v0, ptr %v1, ptr %t81, %"compiler/source:Span" %t82)
  store ptr %t85, ptr %l44
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t86 = load ptr, ptr %l44, !tbaa !29
  store ptr %t86, ptr %rv
  br label %ret
bb28:
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t89 = trunc i64 2 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l1
  %t96 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t92, %"compiler/source:Span" %t93)
  store { i64, ptr } %t96, ptr %l49
  br label %bb31
bb30:
  br label %bb41
bb31:
  %t97 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t98 = call i1 @compiler_2fcheck_2ebadSeparator(ptr %v0, { i64, ptr } %t97)
  store i1 %t98, ptr %l50
  br label %bb32
bb32:
  %t99 = load i1, ptr %l50, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l52, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t103, ptr %l53
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l1
  %t108 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t104, %"compiler/source:Span" %t105)
  store { i64, ptr } %t108, ptr %l56
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t109 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t110 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s7, { i64, ptr } %t109)
  store { i64, ptr } %t110, ptr %l57
  br label %bb36
bb36:
  %t111 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t119 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIntLiteralTooLarge(ptr %s7, ptr %s7, { i64, ptr } %t117)
  store %"compiler/diagmsg:Msg" %t119, ptr %l59
  br label %bb37
bb37:
  %t120 = load ptr, ptr %l52, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l53
  %t122 = load %"compiler/diagmsg:Msg", ptr %l59
  %t123 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t120, %"compiler/source:Span" %t121, %"compiler/diagmsg:Msg" %t122)
  store i64 %t123, ptr %l60
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l1
  %t128 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t124, %"compiler/source:Span" %t125)
  store ptr %t128, ptr %l63
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t129 = load ptr, ptr %l63, !tbaa !29
  store ptr %t129, ptr %rv
  br label %ret
bb41:
  %t130 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t132 = trunc i64 3 to i32
  %t133 = icmp eq i32 %t130, %t132
  br i1 %t133, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s8
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l66, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t136, ptr %l67
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l1
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138)
  store { i64, ptr } %t141, ptr %l70
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t142 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t143 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s8, { i64, ptr } %t142)
  store { i64, ptr } %t143, ptr %l71
  br label %bb45
bb45:
  %t144 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t152 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %s8, ptr %s8, { i64, ptr } %t150)
  store %"compiler/diagmsg:Msg" %t152, ptr %l73
  br label %bb46
bb46:
  %t153 = load ptr, ptr %l66, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l67
  %t155 = load %"compiler/diagmsg:Msg", ptr %l73
  %t156 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t153, %"compiler/source:Span" %t154, %"compiler/diagmsg:Msg" %t155)
  store i64 %t156, ptr %l74
  br label %bb47
bb47:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l1
  %t161 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t157, %"compiler/source:Span" %t158)
  store ptr %t161, ptr %l77
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t162 = load ptr, ptr %l77, !tbaa !29
  store ptr %t162, ptr %rv
  br label %ret
bb49:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s0, ptr %t163, %"compiler/source:Span" %t164, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb50
bb50:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l1
  %t171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t167, %"compiler/source:Span" %t168)
  store ptr %t171, ptr %l82
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t172 = load ptr, ptr %l82, !tbaa !29
  store ptr %t172, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %l405 = alloca ptr
  %l411 = alloca %"compiler/source:Span"
  %l412 = alloca ptr
  %l416 = alloca i32
  %l420 = alloca i1
  %l424 = alloca ptr
  %l430 = alloca %"compiler/source:Span"
  %l433 = alloca { i64, ptr }
  %l435 = alloca %"compiler/diagmsg:Msg"
  %l436 = alloca i64
  %l437 = alloca ptr
  %l443 = alloca %"compiler/source:Span"
  %l444 = alloca ptr
  %l446 = alloca ptr
  %l464 = alloca i1
  %l466 = alloca ptr
  %l467 = alloca ptr
  %l475 = alloca { ptr, i32, i32 }
  %l485 = alloca ptr
  %l486 = alloca ptr
  %l488 = alloca %"compiler/source:Span"
  %l490 = alloca { i64, ptr }
  %l495 = alloca %"compiler/typed:Arm"
  %l502 = alloca i1
  %l504 = alloca i64
  %l507 = alloca i64
  %l509 = alloca i64
  %l514 = alloca i1
  %l521 = alloca ptr
  %l522 = alloca ptr
  %l523 = alloca i32
  %l527 = alloca i1
  %l539 = alloca ptr
  %l543 = alloca %"compiler/source:Span"
  %l544 = alloca i32
  %l545 = alloca { i64, ptr }
  %l547 = alloca { i64, ptr }
  %l551 = alloca %"compiler/typed:Match"
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %rv = alloca ptr
  %t60 = alloca { i64, [1 x i64] }, align 8
  %t85 = alloca { i64, [3 x i64] }, align 8
  %t105 = alloca { i64, [4 x i64] }, align 8
  %t963 = alloca i64
  %t1026 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 12
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
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 37
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
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 37
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
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 37
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
  %t345 = getelementptr %"compiler/check:Checker", ptr %t343, i32 0, i32 147
  %t346 = load i1, ptr %t345, !tbaa !21
  store i1 %t346, ptr %l32, !tbaa !21
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/check:Checker", ptr %t348, i32 0, i32 147
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
  %t424 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseAfterWildcard(ptr %s19)
  store %"compiler/diagmsg:Msg" %t424, ptr %l266
  br label %bb102
bb102:
  %t425 = load ptr, ptr %l259, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l265
  %t427 = load %"compiler/diagmsg:Msg", ptr %l266
  %t428 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s19, ptr %t425, %"compiler/source:Span" %t426, %"compiler/diagmsg:Msg" %t427)
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
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 37
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
  store %olang.scope zeroinitializer, ptr %s22
  %t540 = load ptr, ptr %l0, !tbaa !29
  store ptr %t540, ptr %l321, !tbaa !29
  %t541 = load ptr, ptr %l53, !tbaa !29
  %t543 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t541)
  store %"compiler/source:Span" %t543, ptr %l323
  br label %bb125
bb124:
  br label %bb128
bb125:
  %t544 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWildcardNotAlone(ptr %s22)
  store %"compiler/diagmsg:Msg" %t544, ptr %l324
  br label %bb126
bb126:
  %t545 = load ptr, ptr %l321, !tbaa !29
  %t546 = load %"compiler/source:Span", ptr %l323
  %t547 = load %"compiler/diagmsg:Msg", ptr %l324
  %t548 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s22, ptr %t545, %"compiler/source:Span" %t546, %"compiler/diagmsg:Msg" %t547)
  store i64 %t548, ptr %l325
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s22)
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
  store %olang.scope zeroinitializer, ptr %s23
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l334, !tbaa !29
  %t566 = load ptr, ptr %l53, !tbaa !29
  %t568 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t566)
  store %"compiler/source:Span" %t568, ptr %l336
  br label %bb135
bb134:
  br label %bb138
bb135:
  %t569 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseAlone(ptr %s23)
  store %"compiler/diagmsg:Msg" %t569, ptr %l337
  br label %bb136
bb136:
  %t570 = load ptr, ptr %l334, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l336
  %t572 = load %"compiler/diagmsg:Msg", ptr %l337
  %t573 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s23, ptr %t570, %"compiler/source:Span" %t571, %"compiler/diagmsg:Msg" %t572)
  store i64 %t573, ptr %l338
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s23)
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
  %t703 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t707 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t698, ptr %t702, i32 %t703)
  store ptr %t707, ptr %l405
  br label %bb177
bb176:
  br label %bb206
bb177:
  %t708 = load ptr, ptr %l39, !tbaa !29
  %t710 = getelementptr %"compiler/ast:Case", ptr %t708, i32 0, i32 3
  %t711 = load ptr, ptr %t710, !tbaa !29
  %t713 = icmp eq ptr %t711, null
  br i1 %t713, label %bb178, label %bb179
bb178:
  call void @__olang_check_failed(ptr @olang_loc_d6337ada1dd29694_8ce46a4ddad80bd8)
  unreachable
bb179:
  br label %bb180
bb180:
  %t715 = load ptr, ptr %l39, !tbaa !29
  %t717 = getelementptr %"compiler/ast:Case", ptr %t715, i32 0, i32 3
  %t718 = load ptr, ptr %t717, !tbaa !29
  %t720 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t718)
  store %"compiler/source:Span" %t720, ptr %l411
  br label %bb181
bb181:
  %t721 = load ptr, ptr %l400, !tbaa !29
  %t722 = load ptr, ptr %l405, !tbaa !29
  %t723 = load %"compiler/source:Span", ptr %l411
  %t724 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t721, ptr %t722, %"compiler/source:Span" %t723)
  store ptr %t724, ptr %l412
  br label %bb182
bb182:
  %t725 = load ptr, ptr %l412, !tbaa !29
  store ptr %t725, ptr %l56, !tbaa !29
  %t727 = load ptr, ptr %l56, !tbaa !29
  %t730 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t727)
  store i32 %t730, ptr %l416
  br label %bb183
bb183:
  %t731 = load i32, ptr %l416, !tbaa !23
  store i32 %t731, ptr %l57, !tbaa !23
  %t732 = load i32, ptr %l57, !tbaa !23
  %t733 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t736 = icmp ne i32 %t732, %t733
  br i1 %t736, label %bb184, label %bb185
bb184:
  %t738 = load i32, ptr %l57, !tbaa !23
  %t739 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t742 = icmp ne i32 %t738, %t739
  store i1 %t742, ptr %l420, !tbaa !21
  br label %bb186
bb185:
  store i1 false, ptr %l420, !tbaa !21
  br label %bb186
bb186:
  %t744 = load i1, ptr %l420, !tbaa !21
  br i1 %t744, label %bb187, label %bb188
bb187:
  store %olang.scope zeroinitializer, ptr %s31
  %t745 = load ptr, ptr %l0, !tbaa !29
  store ptr %t745, ptr %l424, !tbaa !29
  %t746 = load ptr, ptr %l39, !tbaa !29
  %t748 = getelementptr %"compiler/ast:Case", ptr %t746, i32 0, i32 3
  %t749 = load ptr, ptr %t748, !tbaa !29
  %t751 = icmp eq ptr %t749, null
  br i1 %t751, label %bb189, label %bb190
bb188:
  br label %bb201
bb189:
  call void @__olang_check_failed(ptr @olang_loc_922951d2017ae1a3_4c5f7ef571495bf7)
  unreachable
bb190:
  br label %bb191
bb191:
  %t753 = load ptr, ptr %l39, !tbaa !29
  %t755 = getelementptr %"compiler/ast:Case", ptr %t753, i32 0, i32 3
  %t756 = load ptr, ptr %t755, !tbaa !29
  %t758 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t756)
  store %"compiler/source:Span" %t758, ptr %l430
  br label %bb192
bb192:
  %t759 = load ptr, ptr %l0, !tbaa !29
  %t760 = load i32, ptr %l57, !tbaa !23
  %t763 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s31, ptr %t759, i32 %t760)
  store { i64, ptr } %t763, ptr %l433
  br label %bb193
bb193:
  %t764 = load { i64, ptr }, ptr %l433, !tbaa !27
  %t765 = extractvalue { i64, ptr } %t764, 0
  %t766 = extractvalue { i64, ptr } %t764, 1
  %t767 = mul i64 %t765, 1
  %t768 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t767)
  call void @llvm.memcpy.p0.p0.i64(ptr %t768, ptr %t766, i64 %t767, i1 false)
  %t769 = insertvalue { i64, ptr } undef, i64 %t765, 0
  %t770 = insertvalue { i64, ptr } %t769, ptr %t768, 1
  %t772 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGuardNotBool(ptr %s31, ptr %s31, { i64, ptr } %t770)
  store %"compiler/diagmsg:Msg" %t772, ptr %l435
  br label %bb194
bb194:
  %t773 = load ptr, ptr %l424, !tbaa !29
  %t774 = load %"compiler/source:Span", ptr %l430
  %t775 = load %"compiler/diagmsg:Msg", ptr %l435
  %t776 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s31, ptr %t773, %"compiler/source:Span" %t774, %"compiler/diagmsg:Msg" %t775)
  store i64 %t776, ptr %l436
  br label %bb195
bb195:
  %t777 = load ptr, ptr %l0, !tbaa !29
  store ptr %t777, ptr %l437, !tbaa !29
  %t778 = load ptr, ptr %l39, !tbaa !29
  %t780 = getelementptr %"compiler/ast:Case", ptr %t778, i32 0, i32 3
  %t781 = load ptr, ptr %t780, !tbaa !29
  %t783 = icmp eq ptr %t781, null
  br i1 %t783, label %bb196, label %bb197
bb196:
  call void @__olang_check_failed(ptr @olang_loc_ce31ac887a0ebd22_30602d5443d77806)
  unreachable
bb197:
  br label %bb198
bb198:
  %t785 = load ptr, ptr %l39, !tbaa !29
  %t787 = getelementptr %"compiler/ast:Case", ptr %t785, i32 0, i32 3
  %t788 = load ptr, ptr %t787, !tbaa !29
  %t790 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t788)
  store %"compiler/source:Span" %t790, ptr %l443
  br label %bb199
bb199:
  %t791 = load ptr, ptr %l437, !tbaa !29
  %t792 = load %"compiler/source:Span", ptr %l443
  %t793 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t791, %"compiler/source:Span" %t792)
  store ptr %t793, ptr %l444
  br label %bb200
bb200:
  %t794 = load ptr, ptr %l444, !tbaa !29
  store ptr %t794, ptr %l56, !tbaa !29
  call void @__olang_scope_close(ptr %s31)
  br label %bb201
bb201:
  %t796 = load ptr, ptr %l0, !tbaa !29
  store ptr %t796, ptr %l446, !tbaa !29
  %t797 = load ptr, ptr %l39, !tbaa !29
  %t799 = getelementptr %"compiler/ast:Case", ptr %t797, i32 0, i32 3
  %t800 = load ptr, ptr %t799, !tbaa !29
  %t802 = icmp eq ptr %t800, null
  br i1 %t802, label %bb202, label %bb203
bb202:
  call void @__olang_check_failed(ptr @olang_loc_14962851291ac789_3280c2851d649aed)
  unreachable
bb203:
  br label %bb204
bb204:
  %t804 = load ptr, ptr %l39, !tbaa !29
  %t806 = getelementptr %"compiler/ast:Case", ptr %t804, i32 0, i32 3
  %t807 = load ptr, ptr %t806, !tbaa !29
  %t808 = load i64, ptr %l41, !tbaa !24
  %t809 = load ptr, ptr %l446, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t809, ptr %t807, i1 true, i64 %t808)
  br label %bb205
bb205:
  br label %bb206
bb206:
  %t812 = load ptr, ptr %l39, !tbaa !29
  %t814 = getelementptr %"compiler/ast:Case", ptr %t812, i32 0, i32 4
  %t815 = load { i64, ptr }, ptr %t814, !tbaa !27
  %t817 = extractvalue { i64, ptr } %t815, 0
  %t819 = icmp sgt i64 %t817, 0
  br i1 %t819, label %bb207, label %bb208
bb207:
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t822 = load ptr, ptr %l39, !tbaa !29
  %t824 = getelementptr %"compiler/ast:Case", ptr %t822, i32 0, i32 4
  %t825 = load { i64, ptr }, ptr %t824, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t821, { i64, ptr } %t825)
  br label %bb209
bb208:
  br label %bb210
bb209:
  br label %bb210
bb210:
  store ptr null, ptr %l58, !tbaa !29
  %t828 = load ptr, ptr %l39, !tbaa !29
  %t830 = getelementptr %"compiler/ast:Case", ptr %t828, i32 0, i32 5
  %t831 = load ptr, ptr %t830, !tbaa !29
  %t833 = icmp eq ptr %t831, null
  %t835 = xor i1 %t833, true
  br i1 %t835, label %bb211, label %bb212
bb211:
  %t837 = load i1, ptr %l3, !tbaa !21
  store i1 %t837, ptr %l464, !tbaa !21
  br label %bb213
bb212:
  store i1 false, ptr %l464, !tbaa !21
  br label %bb213
bb213:
  %t839 = load i1, ptr %l464, !tbaa !21
  br i1 %t839, label %bb214, label %bb215
bb214:
  %t840 = load ptr, ptr %l0, !tbaa !29
  store ptr %t840, ptr %l466, !tbaa !29
  %t841 = load ptr, ptr %l2, !tbaa !29
  store ptr %t841, ptr %l467, !tbaa !29
  %t842 = load ptr, ptr %l39, !tbaa !29
  %t844 = getelementptr %"compiler/ast:Case", ptr %t842, i32 0, i32 5
  %t845 = load ptr, ptr %t844, !tbaa !29
  %t847 = icmp eq ptr %t845, null
  br i1 %t847, label %bb216, label %bb217
bb215:
  br label %bb220
bb216:
  call void @__olang_check_failed(ptr @olang_loc_cfe87ec003b82748_d94fc5f0b326c124)
  unreachable
bb217:
  br label %bb218
bb218:
  %t849 = load ptr, ptr %l39, !tbaa !29
  %t851 = getelementptr %"compiler/ast:Case", ptr %t849, i32 0, i32 5
  %t852 = load ptr, ptr %t851, !tbaa !29
  %t853 = load i32, ptr %l13, !tbaa !23
  %t854 = load i32, ptr %l14, !tbaa !23
  %t855 = load ptr, ptr %l466, !tbaa !29
  %t856 = load ptr, ptr %l467, !tbaa !29
  %t860 = call { ptr, i32, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseValue(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %t855, ptr %t856, ptr %t852, i32 %t853, i32 %t854)
  store { ptr, i32, i32 } %t860, ptr %l475
  br label %bb219
bb219:
  %t861 = load { ptr, i32, i32 }, ptr %l475
  store { ptr, i32, i32 } %t861, ptr %l59
  %t862 = getelementptr { ptr, i32, i32 }, ptr %l59, i32 0, i32 0
  %t863 = load ptr, ptr %t862, !tbaa !29
  store ptr %t863, ptr %l58, !tbaa !29
  %t866 = getelementptr { ptr, i32, i32 }, ptr %l59, i32 0, i32 1
  %t867 = load i32, ptr %t866, !tbaa !23
  store i32 %t867, ptr %l13, !tbaa !23
  %t869 = getelementptr { ptr, i32, i32 }, ptr %l59, i32 0, i32 2
  %t870 = load i32, ptr %t869, !tbaa !23
  store i32 %t870, ptr %l14, !tbaa !23
  br label %bb220
bb220:
  %t872 = load ptr, ptr %l0, !tbaa !29
  %t873 = load i64, ptr %l41, !tbaa !24
  %t874 = load i64, ptr %l42, !tbaa !24
  %t875 = load i64, ptr %l43, !tbaa !24
  %t876 = load i64, ptr %l44, !tbaa !24
  %t882 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t872, i64 %t873, i64 %t874, i64 %t875, i64 %t876)
  store ptr %t882, ptr %l485
  br label %bb221
bb221:
  %t883 = load ptr, ptr %l485, !tbaa !29
  store ptr %t883, ptr %l60, !tbaa !29
  %t884 = load ptr, ptr %l15, !tbaa !29
  store ptr %t884, ptr %l486, !tbaa !29
  %t885 = load ptr, ptr %l39, !tbaa !29
  %t887 = getelementptr %"compiler/ast:Case", ptr %t885, i32 0, i32 0
  %t888 = load %"compiler/source:Span", ptr %t887
  store %"compiler/source:Span" %t888, ptr %l488
  %t889 = load ptr, ptr %l45, !tbaa !29
  %t891 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aAlt_26_3e_2eToArray_3ccompiler_2ftyped_3aAlt_26_3e(ptr %v2, ptr %v2, ptr %t889)
  store { i64, ptr } %t891, ptr %l490
  br label %bb222
bb222:
  %t892 = load ptr, ptr %l56, !tbaa !29
  %t893 = load ptr, ptr %l60, !tbaa !29
  %t895 = load ptr, ptr %l58, !tbaa !29
  %t896 = load %"compiler/source:Span", ptr %l488
  %t897 = load { i64, ptr }, ptr %l490, !tbaa !27
  %t901 = call %"compiler/typed:Arm" @compiler_2ftyped_3aArm_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v0, ptr %v2, %"compiler/source:Span" %t896, { i64, ptr } %t897, ptr %t892, ptr %t893, ptr %t895)
  store %"compiler/typed:Arm" %t901, ptr %l495
  br label %bb223
bb223:
  %t902 = load %"compiler/typed:Arm", ptr %l495
  %t903 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/typed:Arm" %t902, ptr %t903
  %t904 = load ptr, ptr %l486, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ePush_3ccompiler_2ftyped_3aArm_26_3e(ptr %v2, ptr %v2, ptr %t904, ptr %t903)
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s18)
  br label %bb225
bb225:
  %t906 = load i64, ptr %l37, !tbaa !24
  %t908 = add i64 %t906, 1
  store i64 %t908, ptr %l37, !tbaa !24
  br label %bb92
bb226:
  %t910 = load i1, ptr %l30, !tbaa !21
  store i1 %t910, ptr %l61, !tbaa !21
  %t912 = load i1, ptr %l61, !tbaa !21
  %t914 = xor i1 %t912, true
  br i1 %t914, label %bb227, label %bb228
bb227:
  %t916 = load ptr, ptr %l16, !tbaa !29
  %t918 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t916)
  store i64 %t918, ptr %l504
  br label %bb229
bb228:
  store i1 false, ptr %l502, !tbaa !21
  br label %bb230
bb229:
  %t919 = load i64, ptr %l504, !tbaa !24
  %t920 = icmp sgt i64 %t919, 0
  store i1 %t920, ptr %l502, !tbaa !21
  br label %bb230
bb230:
  %t922 = load i1, ptr %l502, !tbaa !21
  br i1 %t922, label %bb231, label %bb232
bb231:
  store i1 true, ptr %l61, !tbaa !21
  %t923 = load ptr, ptr %l16, !tbaa !29
  store ptr %t923, ptr %l62, !tbaa !29
  store i64 0, ptr %l63, !tbaa !24
  br label %bb233
bb232:
  br label %bb244
bb233:
  %t925 = load i64, ptr %l63, !tbaa !24
  store i64 %t925, ptr %l507, !tbaa !24
  %t926 = load ptr, ptr %l62, !tbaa !29
  %t928 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t926)
  store i64 %t928, ptr %l509
  br label %bb234
bb234:
  %t929 = load i64, ptr %l507, !tbaa !24
  %t930 = load i64, ptr %l509, !tbaa !24
  %t931 = icmp slt i64 %t929, %t930
  %t933 = xor i1 %t931, true
  br i1 %t933, label %bb235, label %bb236
bb235:
  br label %bb243
bb236:
  br label %bb237
bb237:
  %t935 = load ptr, ptr %l62, !tbaa !29
  %t936 = load i64, ptr %l63, !tbaa !24
  %t939 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t935, i64 %t936)
  store i1 %t939, ptr %l514
  br label %bb238
bb238:
  %t940 = load i1, ptr %l514, !tbaa !21
  %t943 = xor i1 %t940, true
  br i1 %t943, label %bb239, label %bb240
bb239:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb241
bb240:
  br label %bb241
bb241:
  br label %bb242
bb242:
  %t945 = load i64, ptr %l63, !tbaa !24
  %t947 = add i64 %t945, 1
  store i64 %t947, ptr %l63, !tbaa !24
  br label %bb233
bb243:
  br label %bb244
bb244:
  %t949 = load i1, ptr %l61, !tbaa !21
  %t951 = xor i1 %t949, true
  br i1 %t951, label %bb245, label %bb246
bb245:
  store %olang.scope zeroinitializer, ptr %s40
  %t953 = load ptr, ptr %l0, !tbaa !29
  store ptr %t953, ptr %l521, !tbaa !29
  %t954 = load ptr, ptr %l33, !tbaa !29
  store ptr %t954, ptr %l522, !tbaa !29
  %t955 = load i32, ptr %l17, !tbaa !23
  store i32 %t955, ptr %l523, !tbaa !23
  %t956 = icmp sge i64 1, 0
  br i1 %t956, label %bb247, label %bb248
bb246:
  br label %bb252
bb247:
  %t958 = icmp sle i64 1, 2305843009213693951
  br i1 %t958, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_a6a47d3964202a2d_3c9966e8358b9b71)
  unreachable
bb249:
  %t960 = mul i64 1, 4
  %t961 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t960)
  %t962 = load i32, ptr %l523, !tbaa !23
  store i64 0, ptr %t963
  br label %fill.964
fill.964:
  %t967 = load i64, ptr %t963
  %t968 = icmp slt i64 %t967, 1
  br i1 %t968, label %fillb.965, label %filld.966
fillb.965:
  %t969 = getelementptr i32, ptr %t961, i64 %t967
  store i32 %t962, ptr %t969
  %t970 = add i64 %t967, 1
  store i64 %t970, ptr %t963
  br label %fill.964
filld.966:
  %t971 = insertvalue { i64, ptr } undef, i64 1, 0
  %t972 = insertvalue { i64, ptr } %t971, ptr %t961, 1
  %t973 = load ptr, ptr %l521, !tbaa !29
  %t974 = load ptr, ptr %l522, !tbaa !29
  %t976 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v2, ptr %s40, ptr %t973, ptr %t974, { i64, ptr } %t972, i64 0)
  store i1 %t976, ptr %l527
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_a6a47d3964202a2d_3c9966e8358b9b71)
  unreachable
bb251:
  %t977 = load i1, ptr %l527, !tbaa !21
  store i1 %t977, ptr %l61, !tbaa !21
  call void @__olang_scope_close(ptr %s40)
  br label %bb252
bb252:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t980 = getelementptr %"compiler/check:Checker", ptr %t978, i32 0, i32 147
  %t981 = load i1, ptr %t980, !tbaa !21
  br i1 %t981, label %bb253, label %bb254
bb253:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb255
bb254:
  br label %bb255
bb255:
  %t983 = load ptr, ptr %l0, !tbaa !29
  %t984 = load i1, ptr %l32, !tbaa !21
  %t987 = getelementptr %"compiler/check:Checker", ptr %t983, i32 0, i32 147
  store i1 %t984, ptr %t987, !tbaa !21
  %t988 = load ptr, ptr %l0, !tbaa !29
  %t989 = load ptr, ptr %l2, !tbaa !29
  %t990 = load i32, ptr %l6, !tbaa !23
  %t991 = load ptr, ptr %l33, !tbaa !29
  %t992 = load ptr, ptr %l16, !tbaa !29
  %t993 = load i1, ptr %l61, !tbaa !21
  %t994 = load i1, ptr %l3, !tbaa !21
  %t1002 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchElse(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t988, ptr %t989, i32 %t990, ptr %t991, ptr %t992, i1 %t993, i1 %t994)
  store ptr %t1002, ptr %l539
  br label %bb256
bb256:
  %t1003 = load ptr, ptr %l539, !tbaa !29
  store ptr %t1003, ptr %l65, !tbaa !29
  %t1004 = load i1, ptr %l3, !tbaa !21
  %t1006 = xor i1 %t1004, true
  br i1 %t1006, label %bb257, label %bb258
bb257:
  %t1008 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t1008, ptr %l13, !tbaa !23
  br label %bb259
bb258:
  br label %bb259
bb259:
  store %"compiler/source:Span" %a1, ptr %l543
  %t1011 = load i32, ptr %l13, !tbaa !23
  store i32 %t1011, ptr %l544, !tbaa !23
  %t1012 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t1012, ptr %l545, !tbaa !27
  %t1013 = load ptr, ptr %l15, !tbaa !29
  %t1015 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2eToArray_3ccompiler_2ftyped_3aArm_26_3e(ptr %v2, ptr %v2, ptr %t1013)
  store { i64, ptr } %t1015, ptr %l547
  br label %bb260
bb260:
  %t1016 = load ptr, ptr %l65, !tbaa !29
  %t1018 = load i1, ptr %l3, !tbaa !21
  %t1019 = load { i64, ptr }, ptr %l545, !tbaa !27
  %t1020 = load { i64, ptr }, ptr %l547, !tbaa !27
  %t1023 = call %"compiler/typed:Match" @compiler_2ftyped_3aMatch_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t1019, { i64, ptr } %t1020, ptr %t1016, i1 %t1018)
  store %"compiler/typed:Match" %t1023, ptr %l551
  br label %bb261
bb261:
  %t1024 = load %"compiler/typed:Match", ptr %l551
  %t1025 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/typed:Match" %t1024, ptr %t1025
  store { i64, [5 x i64] } zeroinitializer, ptr %t1026
  %t1027 = getelementptr { i64, [5 x i64] }, ptr %t1026, i32 0, i32 0
  store i64 13, ptr %t1027
  %t1028 = load %"compiler/source:Span", ptr %l543
  %t1029 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1028, 0
  %t1030 = load i32, ptr %l544, !tbaa !23
  %t1031 = insertvalue { %"compiler/source:Span", i32, ptr } %t1029, i32 %t1030, 1
  %t1033 = insertvalue { %"compiler/source:Span", i32, ptr } %t1031, ptr %t1025, 2
  %t1034 = getelementptr { i64, [5 x i64] }, ptr %t1026, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1033, ptr %t1034
  %t1035 = load { i64, [5 x i64] }, ptr %t1026
  %t1037 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t1035, ptr %t1037
  store ptr %t1037, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/text:StringBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberListing(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l33 = alloca i1
  %l37 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca i1
  %l45 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca i1
  %l54 = alloca { i64, ptr }
  %l57 = alloca i1
  %l61 = alloca { i64, ptr }
  %l65 = alloca i1
  %l67 = alloca i1
  %l71 = alloca { i64, ptr }
  %l75 = alloca i64
  %l79 = alloca { i64, ptr }
  %l82 = alloca i64
  %l93 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/text:StringBuilder"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v1)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/text:StringBuilder", ptr %l6
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/text:StringBuilder" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t12 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t8, i32 %a1)
  store { i64, ptr } %t12, ptr %l10
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t20 = icmp slt i64 %t14, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb45
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %lp2
  %t26 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v1, ptr %t24)
  store i64 %t26, ptr %l17
  br label %bb7
bb7:
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = icmp sgt i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %lp2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t30, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t32 = load ptr, ptr %lp2
  store ptr %t32, ptr %l20, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t34, ptr %l22, !tbaa !27
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i32, ptr %t38, i64 %t35
  %t40 = load i32, ptr %t39, !tbaa !33
  %t43 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t33, i32 %t40)
  store { i64, ptr } %t43, ptr %l25
  br label %bb12
bb12:
  %t44 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  %t46 = extractvalue { i64, ptr } %t44, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t51 = load ptr, ptr %l20, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t51, { i64, ptr } %t50)
  br label %bb13
bb13:
  %t53 = load i64, ptr %l4, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t63 = icmp slt i64 %t57, %t60
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t71, ptr %l37, !tbaa !27
  %t72 = load i64, ptr %l5, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i32, ptr %t75, i64 %t72
  %t77 = load i32, ptr %t76, !tbaa !33
  %t80 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t70, i32 %t77)
  store i1 %t80, ptr %l40
  br label %bb17
bb16:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb18
bb17:
  %t81 = load i1, ptr %l40, !tbaa !21
  store i1 %t81, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t82 = load i1, ptr %l33, !tbaa !21
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t89, ptr %l45, !tbaa !27
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t90, 1
  %t94 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i32, ptr %t95, i64 %t92
  %t97 = load i32, ptr %t96, !tbaa !33
  %t100 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t88, i32 %t97)
  store i1 %t100, ptr %l49
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t101 = load i1, ptr %l49, !tbaa !21
  store i1 %t101, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t102 = load i1, ptr %l41, !tbaa !21
  br i1 %t102, label %bb23, label %bb24
bb23:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t109, ptr %l54, !tbaa !27
  %t110 = load i64, ptr %l5, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  %t118 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t108, i32 %t115)
  store i1 %t118, ptr %l57
  br label %bb25
bb24:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb27
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t125, ptr %l61, !tbaa !27
  %t126 = load i64, ptr %l5, !tbaa !24
  %t128 = add i64 %t126, 1
  %t130 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i32, ptr %t131, i64 %t128
  %t133 = load i32, ptr %t132, !tbaa !33
  %t136 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t124, i32 %t133)
  store i1 %t136, ptr %l65
  br label %bb26
bb26:
  %t137 = load i1, ptr %l57, !tbaa !21
  %t138 = load i1, ptr %l65, !tbaa !21
  %t139 = icmp eq i1 %t137, %t138
  store i1 %t139, ptr %l50, !tbaa !21
  br label %bb27
bb27:
  %t141 = load i1, ptr %l50, !tbaa !21
  br i1 %t141, label %bb28, label %bb29
bb28:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  %t148 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t148, ptr %l71, !tbaa !27
  %t149 = load i64, ptr %l5, !tbaa !24
  %t151 = add i64 %t149, 1
  %t153 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i32, ptr %t154, i64 %t151
  %t156 = load i32, ptr %t155, !tbaa !33
  %t159 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t147, i32 %t156)
  store i64 %t159, ptr %l75
  br label %bb30
bb29:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb32
bb30:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  %t166 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t166, ptr %l79, !tbaa !27
  %t167 = load i64, ptr %l5, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i32, ptr %t170, i64 %t167
  %t172 = load i32, ptr %t171, !tbaa !33
  %t175 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t165, i32 %t172)
  store i64 %t175, ptr %l82
  br label %bb31
bb31:
  %t176 = load i64, ptr %l82, !tbaa !24
  %t177 = add i64 %t176, 1
  %t178 = load i64, ptr %l75, !tbaa !24
  %t180 = icmp eq i64 %t178, %t177
  store i1 %t180, ptr %l67, !tbaa !21
  br label %bb32
bb32:
  %t182 = load i1, ptr %l67, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t185 = load i64, ptr %l5, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l5, !tbaa !24
  br label %bb36
bb36:
  br label %bb14
bb37:
  %t189 = load i64, ptr %l5, !tbaa !24
  %t190 = load i64, ptr %l4, !tbaa !24
  %t192 = add i64 %t190, 1
  %t195 = icmp sgt i64 %t189, %t192
  br i1 %t195, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s4
  %t197 = load ptr, ptr %lp2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s4, ptr %t197, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb40
bb39:
  br label %bb43
bb40:
  %t199 = load ptr, ptr %lp2
  store ptr %t199, ptr %l93, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t201, ptr %l95, !tbaa !27
  %t202 = load i64, ptr %l5, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i32, ptr %t205, i64 %t202
  %t207 = load i32, ptr %t206, !tbaa !33
  %t210 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t200, i32 %t207)
  store { i64, ptr } %t210, ptr %l98
  br label %bb41
bb41:
  %t211 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t218 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s4, ptr %t218, { i64, ptr } %t217)
  br label %bb42
bb42:
  %t220 = load i64, ptr %l5, !tbaa !24
  store i64 %t220, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb43
bb43:
  %t222 = load i64, ptr %l4, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb44
bb44:
  br label %bb3
bb45:
  %t226 = load ptr, ptr %lp2
  %t227 = load %"std/prelude/text:StringBuilder", ptr %t226
  store %"std/prelude/text:StringBuilder" %t227, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNullIn(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l12 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l16
  br label %bb8
bb8:
  %t18 = load i1, ptr %l16, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb12
bb10:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l21
  br label %bb11
bb11:
  %t26 = load i1, ptr %l21, !tbaa !21
  store i1 %t26, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb16
bb14:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l26
  br label %bb15
bb15:
  %t36 = load i1, ptr %l26, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb16
bb16:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  store ptr %t46, ptr %l31, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l36
  br label %bb20
bb20:
  %t57 = load ptr, ptr %l31, !tbaa !29
  %t58 = load i32, ptr %l36, !tbaa !23
  %t59 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t57, i32 %t58)
  store { i64, ptr } %t59, ptr %l37
  br label %bb21
bb21:
  %t60 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t60, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l5, !tbaa !24
  br label %bb22
bb22:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  br label %bb25
bb25:
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t73, ptr %l44, !tbaa !27
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 %t74
  %t79 = load i32, ptr %t78, !tbaa !33
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = add i64 %t83, 1
  %t89 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNullIn(ptr %v0, ptr %t81, i32 %t79, i64 %t85)
  store i1 %t89, ptr %l51
  br label %bb26
bb26:
  %t90 = load i1, ptr %l51, !tbaa !21
  br i1 %t90, label %bb27, label %bb28
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t92 = load i64, ptr %l4, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l4, !tbaa !24
  br label %bb22
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRo(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca i32
  %l6 = alloca { i64, [3 x i64] }
  %l9 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca %"compiler/typed:Local"
  %l20 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca i32
  %l27 = alloca i32
  %l30 = alloca { i64, [3 x i64] }
  %l33 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca { i64, [3 x i64] }
  %l49 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l63 = alloca ptr
  %l64 = alloca i64
  %l65 = alloca { i64, [3 x i64] }
  %l68 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %t1, ptr %a2)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t11)
  store ptr %t13, ptr %l13
  br label %bb5
bb5:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = trunc i64 %t14 to i32
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t20 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t18, i32 %t16)
  store %"compiler/typed:Local" %t20, ptr %l17
  br label %bb6
bb6:
  %t21 = load %"compiler/typed:Local", ptr %l17
  store %"compiler/typed:Local" %t21, ptr %l4
  %t22 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = icmp eq i32 %t23, 0
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 80
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t30, i64 %t31)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34, ptr %l25
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  %t37 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc59daade663458096c0c7696954afd54(ptr %v0, ptr %t35, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t36)
  %t38 = extractvalue { i32, i32 } %t37, 1
  %t39 = extractvalue { i32, i32 } %t37, 0
  store i32 %t39, ptr %l27
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb12, label %ok.41, !prof !99
ok.41:
  store i32 %t38, ptr %l26
  br label %bb11
bb11:
  %t42 = load i32, ptr %l26, !tbaa !23
  store i32 %t42, ptr %l20, !tbaa !23
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i32 0, ptr %l20, !tbaa !23
  br label %bb14
bb14:
  %t43 = load i32, ptr %l20, !tbaa !23
  store i32 %t43, ptr %l5, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 1
  %t46 = load %"compiler/source:Span", ptr %t45
  %t49 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t44, %"compiler/source:Span" %t46)
  store { i64, [3 x i64] } %t49, ptr %l30
  br label %bb15
bb15:
  %t50 = load { i64, [3 x i64] }, ptr %l30
  store { i64, [3 x i64] } %t50, ptr %l6
  %t51 = load i32, ptr %l5, !tbaa !23
  %t53 = icmp ne i32 %t51, 0
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l36, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t63 = load i32, ptr %t62, !tbaa !23
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t61, i32 %t63)
  store i32 %t66, ptr %l39
  br label %bb18
bb17:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb20
bb18:
  %t67 = load ptr, ptr %l36, !tbaa !29
  %t68 = load i32, ptr %l39, !tbaa !23
  %t69 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t69, ptr %l40
  br label %bb19
bb19:
  %t70 = load i1, ptr %l40, !tbaa !21
  store i1 %t70, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/load:Loader", ptr %t78, i32 0, i32 4
  %t81 = load ptr, ptr %t80, !tbaa !29
  store ptr %t81, ptr %l44, !tbaa !29
  %t82 = load i64, ptr %l1, !tbaa !24
  store i64 %t82, ptr %l45, !tbaa !24
  %t83 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t83, ptr %l46
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t86 = load i32, ptr %t85, !tbaa !23
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t84, i32 %t86)
  store { i64, ptr } %t89, ptr %l49
  br label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/load:Loader", ptr %t96, i32 0, i32 4
  %t99 = load ptr, ptr %t98, !tbaa !29
  store ptr %t99, ptr %l63, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  store i64 %t100, ptr %l64, !tbaa !24
  %t101 = load { i64, [3 x i64] }, ptr %l6
  store { i64, [3 x i64] } %t101, ptr %l65
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t104 = load i32, ptr %t103, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t102, i32 %t104)
  store { i64, ptr } %t107, ptr %l68
  br label %bb29
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l5, !tbaa !23
  %t112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t108, i32 %t109)
  store { i64, ptr } %t112, ptr %l52
  br label %bb24
bb24:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t115 = load i32, ptr %t114, !tbaa !23
  %t118 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t113, i32 %t115)
  store { i64, ptr } %t118, ptr %l55
  br label %bb25
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l5, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l58
  br label %bb26
bb26:
  %t124 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadOnlyCopyOf(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s3, { i64, ptr } %t124, { i64, ptr } %t125, { i64, ptr } %t126, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t128, ptr %l59
  br label %bb27
bb27:
  %t129 = load ptr, ptr %l44, !tbaa !29
  %t130 = load i64, ptr %l45, !tbaa !24
  %t131 = load { i64, [3 x i64] }, ptr %l46
  %t132 = load %"compiler/diagmsg:Msg", ptr %l59
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s3, ptr %t129, i64 %t130, { i64, [3 x i64] } %t131, %"compiler/diagmsg:Msg" %t132)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb29:
  %t133 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t134 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadOnlyCopy(ptr %v0, ptr %s4, { i64, ptr } %t133)
  store %"compiler/diagmsg:Msg" %t134, ptr %l69
  br label %bb30
bb30:
  %t135 = load ptr, ptr %l63, !tbaa !29
  %t136 = load i64, ptr %l64, !tbaa !24
  %t137 = load { i64, [3 x i64] }, ptr %l65
  %t138 = load %"compiler/diagmsg:Msg", ptr %l69
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s4, ptr %t135, i64 %t136, { i64, [3 x i64] } %t137, %"compiler/diagmsg:Msg" %t138)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i1
  %l25 = alloca %"compiler/source:Span"
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
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
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l17, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l20, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t34)
  store i32 %t36, ptr %l22
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t38 = load i32, ptr %l22, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t39, ptr %l23
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load i32, ptr %l23, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t42, ptr %l24
  br label %bb8
bb8:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t44 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t44, ptr %l25
  br label %bb12
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t50 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedPart(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store %"compiler/source:Span" %t50, ptr %l29
  br label %bb11
bb11:
  %t51 = load %"compiler/source:Span", ptr %l29
  store %"compiler/source:Span" %t51, ptr %l25
  br label %bb12
bb12:
  %t52 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t52, ptr %l6
  br label %bb33
bb13:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 4
  store i1 %t60, ptr %l31, !tbaa !21
  br label %bb15
bb15:
  %t61 = load i1, ptr %l31, !tbaa !21
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l4, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Elem", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t75 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedPart(ptr %v0, ptr %v1, ptr %t68, ptr %t72)
  store %"compiler/source:Span" %t75, ptr %l39
  br label %bb19
bb19:
  %t76 = load %"compiler/source:Span", ptr %l39
  store %"compiler/source:Span" %t76, ptr %l6
  br label %bb33
bb20:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l40, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 8}
  %t84 = icmp eq i64 %t82, 5
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l41, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l5, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Payload", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t99 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedPart(ptr %v0, ptr %v1, ptr %t92, ptr %t96)
  store %"compiler/source:Span" %t99, ptr %l49
  br label %bb26
bb26:
  %t100 = load %"compiler/source:Span", ptr %l49
  store %"compiler/source:Span" %t100, ptr %l6
  br label %bb33
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t101 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t101, ptr %l50
  br label %bb31
bb31:
  %t102 = load %"compiler/source:Span", ptr %l50
  store %"compiler/source:Span" %t102, ptr %l6
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_16a91292275266c4_38d52f99814dbef8)
  unreachable
bb33:
  call void @__olang_scope_close(ptr %s0)
  %t103 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t103, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceName(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca %"compiler/typed:Local"
  %l16 = alloca ptr
  %l17 = alloca i1
  %rv = alloca i32
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t18, ptr %l12
  br label %bb6
bb6:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t22 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t20, i32 %t19)
  store %"compiler/typed:Local" %t22, ptr %l14
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/typed:Local", ptr %l14, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  store i32 %t24, ptr %l4, !tbaa !23
  br label %bb19
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t37, i32 0, i32 3
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l3, !tbaa !23
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t41 = load i32, ptr %l3, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i32 0, ptr %l4, !tbaa !23
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1f453287a90ee701_f75bf1e5be6f432d)
  unreachable
bb19:
  %t43 = load i32, ptr %l4, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load i1, ptr %l2, !tbaa !21
  %t4 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushNulls(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i1 %t3, i64 %t4)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t11 = load i1, ptr %l2, !tbaa !21
  %t12 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushErrNarrow(ptr %v0, ptr %v1, ptr %t9, ptr %t10, i1 %t11, i64 %t12)
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load i1, ptr %l2, !tbaa !21
  %t20 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %t17, ptr %t18, i1 %t19, i64 %t20)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %rv = alloca ptr
  %t38 = alloca { i64, [2 x i64] }, align 8
  %t46 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/check:rawTable", ptr %t1, i32 0, i32 1
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t6, ptr %l6
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t13)
  store i32 %t15, ptr %l11
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t16 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load i32, ptr %l11, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t17, i32 %t18, i64 %t16)
  store i32 %t20, ptr %l13
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 2
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/check:rawTable", ptr %t28, i32 0, i32 3
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %t35, i64 %t32
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !37
  store { i64, [2 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 0
  store i64 1, ptr %t39
  %t41 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t37, 0
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  store { { i64, ptr } } %t41, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t38
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t43, ptr %t45
  store { i64, [5 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 0
  store i64 1, ptr %t47
  %t48 = load %"compiler/source:Span", ptr %l6
  %t49 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t48, 0
  %t50 = load i32, ptr %l13, !tbaa !23
  %t51 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t49, i32 %t50, 1
  %t53 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t51, i64 %t27, 2
  %t55 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t53, ptr %t45, 3
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t55, ptr %t56
  %t57 = load { i64, [5 x i64] }, ptr %t46
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t57, ptr %t59
  store ptr %t59, ptr %rv
  br label %ret
bb6:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l1
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/check:rawTable", ptr %t63, i32 0, i32 0
  %t66 = load i32, ptr %t65, !tbaa !23
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/check:rawTable", ptr %t67, i32 0, i32 2
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l31, !tbaa !27
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t71
  %t76 = load i64, ptr %t75, !tbaa !34
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t61, %"compiler/source:Span" %t62, i32 %t66, i64 %t76)
  store ptr %t81, ptr %l34
  br label %bb7
bb7:
  %t82 = load ptr, ptr %l34, !tbaa !29
  store ptr %t82, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereSite(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"compiler/typed:SiteInfo"
  %l10 = alloca ptr
  %l15 = alloca %"compiler/typed:SiteInfo"
  %l19 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 14
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t9, i64 %a2)
  store ptr %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 9
  %t17 = load i32, ptr %l1, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t22 = call %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t16, i64 %t19)
  store %"compiler/typed:SiteInfo" %t22, ptr %l15
  br label %bb5
bb5:
  %t23 = load %"compiler/typed:SiteInfo", ptr %l15
  store %"compiler/typed:SiteInfo" %t23, ptr %l3
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/typed:SiteInfo", ptr %l3, i32 0, i32 0
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 9}
  %t27 = getelementptr %"compiler/typed:SiteInfo", ptr %l3, i32 0, i32 1
  %t28 = load %"compiler/source:Span", ptr %t27
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t24, i32 %t26, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l19
  br label %bb6
bb6:
  %t33 = load i32, ptr %l19, !tbaa !23
  store i32 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t54, ptr %l41
  br label %bb21
bb21:
  %t55 = load i1, ptr %l41, !tbaa !21
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 148
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
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t86, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t88, ptr %l52
  br label %bb29
bb29:
  %t89 = load i1, ptr %l52, !tbaa !21
  br i1 %t89, label %bb30, label %bb31
bb30:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 148
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
  %t116 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v2, ptr %v2, i1 true, i64 %t113, i64 %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, i32 %t115)
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
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t118, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t120, ptr %l67
  br label %bb40
bb40:
  %t121 = load i1, ptr %l67, !tbaa !21
  br i1 %t121, label %bb41, label %bb42
bb41:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 148
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
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t138, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) })
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
  %t144 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t142, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) })
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
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 148
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
  %t165 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t163, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
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
  %t194 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t192, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) })
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
  %t198 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t196, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) })
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
  %t215 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 148
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
  %t240 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t238, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
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
  %t284 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t282, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) })
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
  %t299 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t297, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t299, ptr %l154
  br label %bb105
bb105:
  %t300 = load i1, ptr %l154, !tbaa !21
  br i1 %t300, label %bb106, label %bb107
bb106:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 148
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
  %t411 = getelementptr %"compiler/check:Checker", ptr %t409, i32 0, i32 148
  store i1 true, ptr %t411, !tbaa !21
  %t412 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t414 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t412, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) })
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
  %t442 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t440, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d30, i32 0, i32 1) })
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
  %t466 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t464, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d31, i32 0, i32 1) })
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
  %t495 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t493, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d32, i32 0, i32 1) })
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
  %t499 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t497, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
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
  %t514 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s20, { i64, ptr } %t512, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erendered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca ptr
  %l12 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l21 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a2, i32 %t4)
  store ptr %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t10)
  store i32 %t13, ptr %l12
  br label %bb2
bb2:
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t15 = load i32, ptr %l12, !tbaa !23
  %t17 = icmp eq i32 %t15, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = add i32 %t23, 1
  %t28 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t21, i32 %t25)
  store %"compiler/source:Span" %t28, ptr %l19
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrOfNothing(ptr %s1)
  store %"compiler/diagmsg:Msg" %t29, ptr %l20
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l19
  %t32 = load %"compiler/diagmsg:Msg", ptr %l20
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l21
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t34, %"compiler/source:Span" %t35)
  store ptr %t38, ptr %l24
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t39 = load ptr, ptr %l24, !tbaa !29
  store ptr %t39, ptr %rv
  br label %ret
bb9:
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t41, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l26, !tbaa !29
  %t43 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t45 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = add i32 %t46, 1
  %t51 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t44, i32 %t48)
  store %"compiler/source:Span" %t51, ptr %l30
  br label %bb11
bb11:
  %t52 = load %"compiler/source:Span", ptr %l30
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 46
  store %"compiler/source:Span" %t52, ptr %t54
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l31, !tbaa !29
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t59 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t56)
  store i32 %t59, ptr %l34
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l31, !tbaa !29
  %t61 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %s0, ptr %t60, i32 %t61, ptr %l4, i64 0)
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l36, !tbaa !29
  %t64 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t64, ptr %l37
  br label %bb14
bb14:
  %t65 = load %"compiler/source:Span", ptr %l37
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 46
  store %"compiler/source:Span" %t65, ptr %t67
  %t68 = load ptr, ptr %l3, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t68, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereturnStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, [3 x i64] }
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, [3 x i64] }
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca %"compiler/diagmsg:Msg"
  %l34 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %l49 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
  %l65 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l73 = alloca { i64, ptr }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca %"compiler/diagmsg:Msg"
  %l89 = alloca i64
  %l98 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i64
  %l105 = alloca ptr
  %l108 = alloca ptr
  %l121 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l129 = alloca { i64, ptr }
  %l131 = alloca %"compiler/diagmsg:Msg"
  %l132 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca %"compiler/source:Span"
  %l145 = alloca %"compiler/diagmsg:Msg"
  %l146 = alloca i64
  %l149 = alloca ptr
  %l151 = alloca { i64, [3 x i64] }
  %l153 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l159 = alloca i32
  %l161 = alloca i32
  %l163 = alloca i1
  %l164 = alloca ptr
  %l167 = alloca i32
  %l168 = alloca i1
  %l176 = alloca ptr
  %l179 = alloca i1
  %l181 = alloca ptr
  %l183 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l186 = alloca %"compiler/source:Span"
  %l188 = alloca i1
  %l194 = alloca i1
  %l196 = alloca ptr
  %l199 = alloca ptr
  %l200 = alloca ptr
  %l211 = alloca i32
  %l219 = alloca ptr
  %l224 = alloca i32
  %l225 = alloca { i64, ptr }
  %l235 = alloca i64
  %l241 = alloca i64
  %l244 = alloca i64
  %l264 = alloca ptr
  %l267 = alloca { i64, [3 x i64] }
  %l269 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l275 = alloca ptr
  %l277 = alloca { i64, ptr }
  %l280 = alloca i1
  %l282 = alloca ptr
  %l285 = alloca ptr
  %l286 = alloca ptr
  %l297 = alloca { i64, ptr }
  %l298 = alloca ptr
  %l299 = alloca %"compiler/source:Span"
  %l300 = alloca %"compiler/source:Span"
  %l301 = alloca i32
  %l305 = alloca %"compiler/typed:Make"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %t34 = alloca { i64, [3 x i64] }, align 8
  %t126 = alloca { i64, [3 x i64] }, align 8
  %t161 = alloca { i64, [3 x i64] }, align 8
  %t259 = alloca { i64, [3 x i64] }, align 8
  %t341 = alloca { i64, [4 x i64] }, align 8
  %t409 = alloca { i64, [3 x i64] }, align 8
  %t624 = alloca { i64, [5 x i64] }, align 8
  %t636 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l20
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l20, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l24, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l24, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/check:frame", ptr %t16, i32 0, i32 12
  %t19 = load i1, ptr %t18, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb7, label %bb8
bb6:
  br label %bb13
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l31, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t26, ptr %l32
  %t27 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInTest(ptr %s2)
  store %"compiler/diagmsg:Msg" %t27, ptr %l33
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t28 = load ptr, ptr %l31, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l32
  %t30 = load %"compiler/diagmsg:Msg", ptr %l33
  %t31 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t28, %"compiler/source:Span" %t29, %"compiler/diagmsg:Msg" %t30)
  store i64 %t31, ptr %l34
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 0
  store i64 6, ptr %t35
  %t37 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t33, 0
  %t38 = insertvalue { %"compiler/source:Span", ptr } %t37, ptr null, 1
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t38, ptr %t39
  %t40 = load { i64, [3 x i64] }, ptr %t34
  %t42 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t40, ptr %t42
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t32, ptr %t42)
  br label %bb12
bb12:
  br label %ret
bb13:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 13
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l41, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t51, ptr %l42
  %t52 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInCtor(ptr %s3)
  store %"compiler/diagmsg:Msg" %t52, ptr %l43
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t53 = load ptr, ptr %l41, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l42
  %t55 = load %"compiler/diagmsg:Msg", ptr %l43
  %t56 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t53, %"compiler/source:Span" %t54, %"compiler/diagmsg:Msg" %t55)
  store i64 %t56, ptr %l44
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb18:
  %t57 = load ptr, ptr %l3, !tbaa !29
  %t59 = getelementptr %"compiler/check:frame", ptr %t57, i32 0, i32 5
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t64 = icmp eq i32 %t60, %t61
  br i1 %t64, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l49, !tbaa !29
  %t67 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t69 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t72 = add i32 %t70, 6
  %t75 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s4, i32 %t68, i32 %t72)
  store %"compiler/source:Span" %t75, ptr %l53
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t76 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInNoreturn(ptr %s4)
  store %"compiler/diagmsg:Msg" %t76, ptr %l54
  br label %bb22
bb22:
  %t77 = load ptr, ptr %l49, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l53
  %t79 = load %"compiler/diagmsg:Msg", ptr %l54
  %t80 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t77, %"compiler/source:Span" %t78, %"compiler/diagmsg:Msg" %t79)
  store i64 %t80, ptr %l55
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb24:
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = getelementptr %"compiler/check:frame", ptr %t81, i32 0, i32 32
  %t84 = load i1, ptr %t83, !tbaa !21
  br i1 %t84, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l58, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t87, ptr %l59
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseReturns(ptr %s5)
  store %"compiler/diagmsg:Msg" %t88, ptr %l60
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t89 = load ptr, ptr %l58, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l59
  %t91 = load %"compiler/diagmsg:Msg", ptr %l60
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t89, %"compiler/source:Span" %t90, %"compiler/diagmsg:Msg" %t91)
  store i64 %t92, ptr %l61
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %ret
bb29:
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = getelementptr %"compiler/check:frame", ptr %t93, i32 0, i32 35
  %t96 = load i64, ptr %t95, !tbaa !24
  %t98 = icmp sge i64 %t96, 0
  br i1 %t98, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l65, !tbaa !29
  %t101 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t102 = load i32, ptr %t101, !tbaa !23
  %t103 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t104 = load i32, ptr %t103, !tbaa !23
  %t106 = add i32 %t104, 6
  %t109 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t102, i32 %t106)
  store %"compiler/source:Span" %t109, ptr %l69
  br label %bb32
bb31:
  br label %bb37
bb32:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t113 = getelementptr %"compiler/check:frame", ptr %t111, i32 0, i32 36
  %t114 = load i1, ptr %t113, !tbaa !21
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %s6, ptr %t110, i1 %t114)
  store { i64, ptr } %t117, ptr %l73
  br label %bb33
bb33:
  %t118 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t119 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgReturns(ptr %s6, ptr %s6, { i64, ptr } %t118)
  store %"compiler/diagmsg:Msg" %t119, ptr %l74
  br label %bb34
bb34:
  %t120 = load ptr, ptr %l65, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l69
  %t122 = load %"compiler/diagmsg:Msg", ptr %l74
  %t123 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t120, %"compiler/source:Span" %t121, %"compiler/diagmsg:Msg" %t122)
  store i64 %t123, ptr %l75
  br label %bb35
bb35:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [3 x i64] }, ptr %t126, i32 0, i32 0
  store i64 6, ptr %t127
  %t129 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t125, 0
  %t130 = insertvalue { %"compiler/source:Span", ptr } %t129, ptr null, 1
  %t131 = getelementptr { i64, [3 x i64] }, ptr %t126, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t130, ptr %t131
  %t132 = load { i64, [3 x i64] }, ptr %t126
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t132, ptr %t134
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t124, ptr %t134)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb37:
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t139 = getelementptr %"compiler/check:frame", ptr %t137, i32 0, i32 34
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = icmp sge i64 %t140, 0
  br i1 %t142, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s7
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l83, !tbaa !29
  %t145 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t146 = load i32, ptr %t145, !tbaa !23
  %t147 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = add i32 %t148, 6
  %t153 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s7, i32 %t146, i32 %t150)
  store %"compiler/source:Span" %t153, ptr %l87
  br label %bb40
bb39:
  br label %bb44
bb40:
  %t154 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferReturns(ptr %s7)
  store %"compiler/diagmsg:Msg" %t154, ptr %l88
  br label %bb41
bb41:
  %t155 = load ptr, ptr %l83, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l87
  %t157 = load %"compiler/diagmsg:Msg", ptr %l88
  %t158 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t155, %"compiler/source:Span" %t156, %"compiler/diagmsg:Msg" %t157)
  store i64 %t158, ptr %l89
  br label %bb42
bb42:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t161
  %t162 = getelementptr { i64, [3 x i64] }, ptr %t161, i32 0, i32 0
  store i64 6, ptr %t162
  %t164 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t160, 0
  %t165 = insertvalue { %"compiler/source:Span", ptr } %t164, ptr null, 1
  %t166 = getelementptr { i64, [3 x i64] }, ptr %t161, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t165, ptr %t166
  %t167 = load { i64, [3 x i64] }, ptr %t161
  %t169 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t167, ptr %t169
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t159, ptr %t169)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %ret
bb44:
  %t172 = load ptr, ptr %l3, !tbaa !29
  %t174 = getelementptr %"compiler/check:frame", ptr %t172, i32 0, i32 20
  %t175 = load i1, ptr %t174, !tbaa !21
  br i1 %t175, label %bb45, label %bb46
bb45:
  %t177 = load i64, ptr %l4, !tbaa !24
  %t179 = icmp sgt i64 %t177, 0
  br i1 %t179, label %bb47, label %bb48
bb46:
  br label %bb55
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l98, !tbaa !29
  %t182 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t183 = load i32, ptr %t182, !tbaa !23
  %t184 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t185 = load i32, ptr %t184, !tbaa !23
  %t187 = add i32 %t185, 6
  %t190 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s9, i32 %t183, i32 %t187)
  store %"compiler/source:Span" %t190, ptr %l102
  br label %bb49
bb48:
  br label %bb52
bb49:
  %t191 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenReturnValue(ptr %s9)
  store %"compiler/diagmsg:Msg" %t191, ptr %l103
  br label %bb50
bb50:
  %t192 = load ptr, ptr %l98, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l102
  %t194 = load %"compiler/diagmsg:Msg", ptr %l103
  %t195 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t192, %"compiler/source:Span" %t193, %"compiler/diagmsg:Msg" %t194)
  store i64 %t195, ptr %l104
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb52:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l105, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l1
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenEnd(ptr %v0, ptr %v0, ptr %t197, %"compiler/source:Span" %t198)
  store ptr %t201, ptr %l108
  br label %bb53
bb53:
  %t202 = load ptr, ptr %l105, !tbaa !29
  %t203 = load ptr, ptr %l108, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t202, ptr %t203)
  br label %bb54
bb54:
  br label %ret
bb55:
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = getelementptr %"compiler/check:frame", ptr %t204, i32 0, i32 25
  %t207 = load i1, ptr %t206, !tbaa !21
  br i1 %t207, label %bb56, label %bb57
bb56:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l1
  %t211 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferReturn(ptr %v0, ptr %v1, ptr %t209, %"compiler/source:Span" %t210, { i64, ptr } %t211)
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %ret
bb59:
  %t215 = load ptr, ptr %l3, !tbaa !29
  %t217 = getelementptr %"compiler/check:frame", ptr %t215, i32 0, i32 5
  %t218 = load i32, ptr %t217, !tbaa !23
  store i32 %t218, ptr %l5, !tbaa !23
  %t220 = load i64, ptr %l4, !tbaa !24
  %t222 = icmp eq i64 %t220, 0
  br i1 %t222, label %bb60, label %bb61
bb60:
  %t224 = load i32, ptr %l5, !tbaa !23
  %t225 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t228 = icmp ne i32 %t224, %t225
  br i1 %t228, label %bb62, label %bb63
bb61:
  br label %bb72
bb62:
  %t230 = load i32, ptr %l5, !tbaa !23
  %t231 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t234 = icmp ne i32 %t230, %t231
  store i1 %t234, ptr %l121, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb64
bb64:
  %t236 = load i1, ptr %l121, !tbaa !21
  br i1 %t236, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s12
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l125, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t238, ptr %l126
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l5, !tbaa !23
  %t243 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t239, i32 %t240)
  store { i64, ptr } %t243, ptr %l129
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t244 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  %t246 = extractvalue { i64, ptr } %t244, 1
  %t247 = mul i64 %t245, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t247)
  call void @llvm.memcpy.p0.p0.i64(ptr %t248, ptr %t246, i64 %t247, i1 false)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t252 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnNeedsValue(ptr %s12, ptr %s12, { i64, ptr } %t250)
  store %"compiler/diagmsg:Msg" %t252, ptr %l131
  br label %bb68
bb68:
  %t253 = load ptr, ptr %l125, !tbaa !29
  %t254 = load %"compiler/source:Span", ptr %l126
  %t255 = load %"compiler/diagmsg:Msg", ptr %l131
  %t256 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t253, %"compiler/source:Span" %t254, %"compiler/diagmsg:Msg" %t255)
  store i64 %t256, ptr %l132
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb70:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t259, i32 0, i32 0
  store i64 6, ptr %t260
  %t262 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t258, 0
  %t263 = insertvalue { %"compiler/source:Span", ptr } %t262, ptr null, 1
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t259, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t263, ptr %t264
  %t265 = load { i64, [3 x i64] }, ptr %t259
  %t267 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t265, ptr %t267
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t257, ptr %t267)
  br label %bb71
bb71:
  br label %ret
bb72:
  %t270 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t270, 0
  %t274 = icmp eq i64 %t272, 1
  br i1 %t274, label %bb73, label %bb74
bb73:
  %t276 = load i32, ptr %l5, !tbaa !23
  %t277 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t280 = icmp eq i32 %t276, %t277
  br i1 %t280, label %bb75, label %bb76
bb74:
  br label %bb106
bb75:
  store %olang.scope zeroinitializer, ptr %s14
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l143, !tbaa !29
  %t283 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t283, ptr %l144
  %t284 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnValueInVoid(ptr %s14)
  store %"compiler/diagmsg:Msg" %t284, ptr %l145
  br label %bb77
bb76:
  br label %bb79
bb77:
  %t285 = load ptr, ptr %l143, !tbaa !29
  %t286 = load %"compiler/source:Span", ptr %l144
  %t287 = load %"compiler/diagmsg:Msg", ptr %l145
  %t288 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s14, ptr %t285, %"compiler/source:Span" %t286, %"compiler/diagmsg:Msg" %t287)
  store i64 %t288, ptr %l146
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s14)
  br label %ret
bb79:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/check:Checker", ptr %t289, i32 0, i32 13
  %t292 = load { i64, [3 x i64] }, ptr %t291
  store { i64, [3 x i64] } %t292, ptr %l6
  %t294 = load ptr, ptr %l0, !tbaa !29
  store ptr %t294, ptr %l149, !tbaa !29
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %t295, i64 0)
  store { i64, [3 x i64] } %t297, ptr %l151
  br label %bb80
bb80:
  %t298 = load { i64, [3 x i64] }, ptr %l151
  %t299 = load ptr, ptr %l149, !tbaa !29
  %t300 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 13
  store { i64, [3 x i64] } %t298, ptr %t300
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t302, ptr %l153, !tbaa !27
  %t303 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr ptr, ptr %t304, i64 0
  %t306 = load ptr, ptr %t305, !tbaa !39
  %t307 = load i32, ptr %l5, !tbaa !23
  %t311 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t301, ptr %t306, i32 %t307)
  store ptr %t311, ptr %l156
  br label %bb81
bb81:
  %t312 = load ptr, ptr %l156, !tbaa !29
  store ptr %t312, ptr %l7, !tbaa !29
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load { i64, [3 x i64] }, ptr %l6
  %t317 = getelementptr %"compiler/check:Checker", ptr %t313, i32 0, i32 13
  store { i64, [3 x i64] } %t314, ptr %t317
  %t318 = load i32, ptr %l5, !tbaa !23
  store i32 %t318, ptr %l159, !tbaa !23
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t319)
  store i32 %t321, ptr %l161
  br label %bb82
bb82:
  %t322 = load i32, ptr %l159, !tbaa !23
  %t323 = load i32, ptr %l161, !tbaa !23
  %t324 = icmp eq i32 %t322, %t323
  br i1 %t324, label %bb83, label %bb84
bb83:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l164, !tbaa !29
  %t327 = load ptr, ptr %l7, !tbaa !29
  %t330 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t327)
  store i32 %t330, ptr %l167
  br label %bb85
bb84:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb87
bb85:
  %t331 = load ptr, ptr %l164, !tbaa !29
  %t332 = load i32, ptr %l167, !tbaa !23
  %t333 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t331, i32 %t332)
  store i1 %t333, ptr %l168
  br label %bb86
bb86:
  %t334 = load i1, ptr %l168, !tbaa !21
  store i1 %t334, ptr %l163, !tbaa !21
  br label %bb87
bb87:
  %t335 = load i1, ptr %l163, !tbaa !21
  br i1 %t335, label %bb88, label %bb89
bb88:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l1
  %t338 = load %"compiler/source:Span", ptr %l1
  %t339 = load i32, ptr %l5, !tbaa !23
  %t340 = load ptr, ptr %l7, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t341
  %t342 = getelementptr { i64, [4 x i64] }, ptr %t341, i32 0, i32 0
  store i64 2, ptr %t342
  %t344 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t338, 0
  %t346 = insertvalue { %"compiler/source:Span", i32, ptr } %t344, i32 %t339, 1
  %t348 = insertvalue { %"compiler/source:Span", i32, ptr } %t346, ptr %t340, 2
  %t349 = getelementptr { i64, [4 x i64] }, ptr %t341, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t348, ptr %t349
  %t350 = load { i64, [4 x i64] }, ptr %t341
  %t352 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t350, ptr %t352
  %t356 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t336, %"compiler/source:Span" %t337, ptr %t352)
  store ptr %t356, ptr %l176
  br label %bb90
bb89:
  br label %bb91
bb90:
  %t357 = load ptr, ptr %l176, !tbaa !29
  store ptr %t357, ptr %l7, !tbaa !29
  br label %bb91
bb91:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load i32, ptr %l5, !tbaa !23
  %t362 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t358, i32 %t359)
  store i1 %t362, ptr %l179
  br label %bb92
bb92:
  %t363 = load i1, ptr %l179, !tbaa !21
  %t364 = xor i1 %t363, true
  br i1 %t364, label %bb93, label %bb94
bb93:
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l181, !tbaa !29
  %t367 = load ptr, ptr %l7, !tbaa !29
  store ptr %t367, ptr %l183, !tbaa !29
  %t369 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t369, ptr %l184, !tbaa !27
  %t370 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr ptr, ptr %t371, i64 0
  %t373 = load ptr, ptr %t372, !tbaa !39
  %t375 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t373)
  store %"compiler/source:Span" %t375, ptr %l186
  br label %bb95
bb94:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRefResult(ptr %v0, ptr %v0, ptr %t376, ptr %t377)
  br label %bb97
bb95:
  %t381 = load i64, ptr @G_2ecompiler_2fcheck_2eRoReturned, !tbaa !24
  %t382 = load ptr, ptr %l181, !tbaa !29
  %t383 = load ptr, ptr %l183, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l186
  %t386 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t382, ptr %t383, %"compiler/source:Span" %t384, i64 %t381)
  store i1 %t386, ptr %l188
  br label %bb96
bb96:
  br label %bb98
bb97:
  br label %bb98
bb98:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load i32, ptr %l5, !tbaa !23
  %t391 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t387, i32 %t388)
  store i1 %t391, ptr %l194
  br label %bb99
bb99:
  %t392 = load i1, ptr %l194, !tbaa !21
  %t393 = xor i1 %t392, true
  br i1 %t393, label %bb100, label %bb101
bb100:
  %t395 = load ptr, ptr %l0, !tbaa !29
  store ptr %t395, ptr %l196, !tbaa !29
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l7, !tbaa !29
  %t400 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t396, ptr %t397, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) }, i1 true)
  store ptr %t400, ptr %l199
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t401 = load ptr, ptr %l196, !tbaa !29
  %t402 = load ptr, ptr %l199, !tbaa !29
  %t403 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eretLand(ptr %v0, ptr %v0, ptr %v0, ptr %t401, ptr %t402)
  store ptr %t403, ptr %l200
  br label %bb103
bb103:
  %t404 = load ptr, ptr %l200, !tbaa !29
  store ptr %t404, ptr %l7, !tbaa !29
  br label %bb104
bb104:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  %t407 = load ptr, ptr %l7, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t409
  %t410 = getelementptr { i64, [3 x i64] }, ptr %t409, i32 0, i32 0
  store i64 6, ptr %t410
  %t412 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t406, 0
  %t414 = insertvalue { %"compiler/source:Span", ptr } %t412, ptr %t407, 1
  %t415 = getelementptr { i64, [3 x i64] }, ptr %t409, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t414, ptr %t415
  %t416 = load { i64, [3 x i64] }, ptr %t409
  %t418 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t416, ptr %t418
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t405, ptr %t418)
  br label %bb105
bb105:
  br label %ret
bb106:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/check:Checker", ptr %t421, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !29
  %t426 = getelementptr %"compiler/generic:Program", ptr %t424, i32 0, i32 2
  %t427 = load i32, ptr %l5, !tbaa !23
  %t430 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t426, i32 %t427)
  store i32 %t430, ptr %l211
  br label %bb107
bb107:
  %t431 = load i32, ptr %l211, !range !{i32 0, i32 33}
  %t433 = trunc i64 22 to i32
  %t434 = icmp eq i32 %t431, %t433
  %t436 = xor i1 %t434, true
  br i1 %t436, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s19
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s19, ptr %t438, %"compiler/source:Span" %t439, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb110
bb109:
  br label %bb111
bb110:
  call void @__olang_scope_close(ptr %s19)
  br label %ret
bb111:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/check:Checker", ptr %t442, i32 0, i32 1
  %t445 = load ptr, ptr %t444, !tbaa !29
  %t447 = getelementptr %"compiler/generic:Program", ptr %t445, i32 0, i32 2
  store ptr %t447, ptr %l219, !tbaa !29
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 1
  %t451 = load ptr, ptr %t450, !tbaa !29
  %t453 = getelementptr %"compiler/generic:Program", ptr %t451, i32 0, i32 2
  %t454 = load i32, ptr %l5, !tbaa !23
  %t457 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t453, i32 %t454)
  store i32 %t457, ptr %l224
  br label %bb112
bb112:
  %t458 = load ptr, ptr %l219, !tbaa !29
  %t459 = load i32, ptr %l224, !tbaa !23
  %t460 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t458, i32 %t459)
  store { i64, ptr } %t460, ptr %l225
  br label %bb113
bb113:
  %t461 = load { i64, ptr }, ptr %l225, !tbaa !27
  store { i64, ptr } %t461, ptr %l8, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t462, 0
  %t465 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t465, 0
  %t470 = icmp ne i64 %t464, %t467
  br i1 %t470, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s20
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s20, ptr %t472, %"compiler/source:Span" %t473, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb116
bb115:
  br label %bb117
bb116:
  call void @__olang_scope_close(ptr %s20)
  br label %ret
bb117:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/check:Checker", ptr %t476, i32 0, i32 36
  %t480 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t478)
  store i64 %t480, ptr %l235
  br label %bb118
bb118:
  %t481 = load i64, ptr %l235, !tbaa !24
  store i64 %t481, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t482 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t482, 0
  store i64 %t484, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t486 = load i64, ptr %l11, !tbaa !24
  %t487 = load i64, ptr %l10, !tbaa !24
  %t490 = icmp sgt i64 %t486, %t487
  br i1 %t490, label %bb119, label %bb120
bb119:
  %t492 = load i64, ptr %l12, !tbaa !24
  %t494 = icmp sgt i64 %t492, 0
  br i1 %t494, label %bb121, label %bb122
bb120:
  store i64 0, ptr %l241, !tbaa !24
  br label %bb124
bb121:
  %t496 = load i64, ptr %l11, !tbaa !24
  %t497 = load i64, ptr %l10, !tbaa !24
  %t500 = sub i64 %t496, %t497
  %t501 = load i64, ptr %l12, !tbaa !24
  %t504 = add i64 %t500, %t501
  %t506 = sub i64 %t504, 1
  %t507 = load i64, ptr %l12, !tbaa !24
  %t510 = sdiv i64 %t506, %t507
  store i64 %t510, ptr %l244, !tbaa !24
  br label %bb123
bb122:
  store i64 0, ptr %l244, !tbaa !24
  br label %bb123
bb123:
  %t512 = load i64, ptr %l244, !tbaa !24
  store i64 %t512, ptr %l241, !tbaa !24
  br label %bb124
bb124:
  %t513 = load i64, ptr %l241, !tbaa !24
  store i64 %t513, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb125
bb125:
  %t514 = load i64, ptr %l14, !tbaa !24
  %t515 = load i64, ptr %l13, !tbaa !24
  %t518 = icmp slt i64 %t514, %t515
  %t520 = xor i1 %t518, true
  br i1 %t520, label %bb126, label %bb127
bb126:
  br label %bb139
bb127:
  br label %bb128
bb128:
  %t522 = load i64, ptr %l10, !tbaa !24
  %t523 = load i64, ptr %l14, !tbaa !24
  %t524 = load i64, ptr %l12, !tbaa !24
  %t527 = mul i64 %t523, %t524
  %t530 = add i64 %t522, %t527
  store i64 %t530, ptr %l15, !tbaa !24
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t534 = getelementptr %"compiler/check:Checker", ptr %t532, i32 0, i32 13
  %t535 = load { i64, [3 x i64] }, ptr %t534
  store { i64, [3 x i64] } %t535, ptr %l16
  %t537 = load ptr, ptr %l0, !tbaa !29
  store ptr %t537, ptr %l264, !tbaa !29
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load i64, ptr %l15, !tbaa !24
  %t542 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %t538, i64 %t539)
  store { i64, [3 x i64] } %t542, ptr %l267
  br label %bb129
bb129:
  %t543 = load { i64, [3 x i64] }, ptr %l267
  %t544 = load ptr, ptr %l264, !tbaa !29
  %t545 = getelementptr %"compiler/check:Checker", ptr %t544, i32 0, i32 13
  store { i64, [3 x i64] } %t543, ptr %t545
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t547, ptr %l269, !tbaa !27
  %t548 = load i64, ptr %l15, !tbaa !24
  %t550 = getelementptr { i64, ptr }, ptr %l269, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !27
  %t552 = getelementptr ptr, ptr %t551, i64 %t548
  %t553 = load ptr, ptr %t552, !tbaa !39
  %t554 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t554, ptr %l272, !tbaa !27
  %t555 = load i64, ptr %l15, !tbaa !24
  %t557 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !27
  %t559 = getelementptr i32, ptr %t558, i64 %t555
  %t560 = load i32, ptr %t559, !tbaa !33
  %t564 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t546, ptr %t553, i32 %t560)
  store ptr %t564, ptr %l275
  br label %bb130
bb130:
  %t565 = load ptr, ptr %l275, !tbaa !29
  store ptr %t565, ptr %l17, !tbaa !29
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t567, ptr %l277, !tbaa !27
  %t568 = load i64, ptr %l15, !tbaa !24
  %t570 = getelementptr { i64, ptr }, ptr %l277, i32 0, i32 1
  %t571 = load ptr, ptr %t570, !tbaa !27
  %t572 = getelementptr i32, ptr %t571, i64 %t568
  %t573 = load i32, ptr %t572, !tbaa !33
  %t576 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t566, i32 %t573)
  store i1 %t576, ptr %l280
  br label %bb131
bb131:
  %t577 = load i1, ptr %l280, !tbaa !21
  %t578 = xor i1 %t577, true
  br i1 %t578, label %bb132, label %bb133
bb132:
  %t580 = load ptr, ptr %l0, !tbaa !29
  store ptr %t580, ptr %l282, !tbaa !29
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load ptr, ptr %l17, !tbaa !29
  %t585 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t581, ptr %t582, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) }, i1 true)
  store ptr %t585, ptr %l285
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t586 = load ptr, ptr %l282, !tbaa !29
  %t587 = load ptr, ptr %l285, !tbaa !29
  %t588 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eretLand(ptr %v0, ptr %v0, ptr %v0, ptr %t586, ptr %t587)
  store ptr %t588, ptr %l286
  br label %bb135
bb135:
  %t589 = load ptr, ptr %l286, !tbaa !29
  store ptr %t589, ptr %l17, !tbaa !29
  br label %bb136
bb136:
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t592 = getelementptr %"compiler/check:Checker", ptr %t590, i32 0, i32 36
  %t593 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t592, ptr %t593)
  br label %bb137
bb137:
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t597 = load { i64, [3 x i64] }, ptr %l16
  %t600 = getelementptr %"compiler/check:Checker", ptr %t596, i32 0, i32 13
  store { i64, [3 x i64] } %t597, ptr %t600
  br label %bb138
bb138:
  %t601 = load i64, ptr %l14, !tbaa !24
  %t603 = add i64 %t601, 1
  store i64 %t603, ptr %l14, !tbaa !24
  br label %bb125
bb139:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/check:Checker", ptr %t605, i32 0, i32 36
  %t608 = load i64, ptr %l9, !tbaa !24
  %t611 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t607, i64 %t608)
  store { i64, ptr } %t611, ptr %l297
  br label %bb140
bb140:
  %t612 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t613 = load ptr, ptr %l0, !tbaa !29
  store ptr %t613, ptr %l298, !tbaa !29
  %t614 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t614, ptr %l299
  %t615 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t615, ptr %l300
  %t616 = load i32, ptr %l5, !tbaa !23
  store i32 %t616, ptr %l301, !tbaa !23
  %t621 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 0, i64 0, { i64, ptr } %t612, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t621, ptr %l305
  br label %bb141
bb141:
  %t622 = load %"compiler/typed:Make", ptr %l305
  %t623 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t622, ptr %t623
  store { i64, [5 x i64] } zeroinitializer, ptr %t624
  %t625 = getelementptr { i64, [5 x i64] }, ptr %t624, i32 0, i32 0
  store i64 7, ptr %t625
  %t626 = load %"compiler/source:Span", ptr %l300
  %t627 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t626, 0
  %t628 = load i32, ptr %l301, !tbaa !23
  %t629 = insertvalue { %"compiler/source:Span", i32, ptr } %t627, i32 %t628, 1
  %t631 = insertvalue { %"compiler/source:Span", i32, ptr } %t629, ptr %t623, 2
  %t632 = getelementptr { i64, [5 x i64] }, ptr %t624, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t631, ptr %t632
  %t633 = load { i64, [5 x i64] }, ptr %t624
  %t635 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t633, ptr %t635
  store { i64, [3 x i64] } zeroinitializer, ptr %t636
  %t637 = getelementptr { i64, [3 x i64] }, ptr %t636, i32 0, i32 0
  store i64 6, ptr %t637
  %t638 = load %"compiler/source:Span", ptr %l299
  %t639 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t638, 0
  %t641 = insertvalue { %"compiler/source:Span", ptr } %t639, ptr %t635, 1
  %t642 = getelementptr { i64, [3 x i64] }, ptr %t636, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t641, ptr %t642
  %t643 = load { i64, [3 x i64] }, ptr %t636
  %t645 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t643, ptr %t645
  %t646 = load ptr, ptr %l298, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t646, ptr %t645)
  br label %bb142
bb142:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l31 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l47 = alloca i1
  %l48 = alloca ptr
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l81 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l90 = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t21, ptr %l18
  br label %bb6
bb6:
  %t22 = load i1, ptr %l18, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  br label %bb66
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 11
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb21
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Cond", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_64f1128892bbfadb_2fd1650a543ec847)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Cond", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t50, ptr %t49)
  store i1 %t52, ptr %l31
  br label %bb16
bb16:
  %t53 = load i1, ptr %l31, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Cond", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t61 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t54, ptr %t58)
  store i1 %t61, ptr %l36
  br label %bb19
bb19:
  %t62 = load i1, ptr %l36, !tbaa !21
  store i1 %t62, ptr %l32, !tbaa !21
  br label %bb20
bb20:
  %t63 = load i1, ptr %l32, !tbaa !21
  store i1 %t63, ptr %l8, !tbaa !21
  br label %bb66
bb21:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t65 = load ptr, ptr %l37, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l37, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 12
  store i1 %t71, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t72 = load i1, ptr %l38, !tbaa !21
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l4, !tbaa !29
  br label %bb26
bb25:
  br label %bb34
bb26:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Seq", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l48, !tbaa !29
  %t89 = load ptr, ptr %l4, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Seq", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  br i1 %t94, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb33
bb29:
  call void @__olang_check_failed(ptr @olang_loc_9b328daa59c12fec_530ed6f7b483a728)
  unreachable
bb30:
  br label %bb31
bb31:
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Seq", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t100 = load ptr, ptr %l48, !tbaa !29
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t100, ptr %t99)
  store i1 %t102, ptr %l54
  br label %bb32
bb32:
  %t103 = load i1, ptr %l54, !tbaa !21
  store i1 %t103, ptr %l47, !tbaa !21
  br label %bb33
bb33:
  %t104 = load i1, ptr %l47, !tbaa !21
  store i1 %t104, ptr %l8, !tbaa !21
  br label %bb66
bb34:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t106 = load ptr, ptr %l55, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t109 = load ptr, ptr %l55, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 18}
  %t112 = icmp eq i64 %t110, 13
  store i1 %t112, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t113 = load i1, ptr %l56, !tbaa !21
  br i1 %t113, label %bb37, label %bb38
bb37:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t116, i32 0, i32 2
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l5, !tbaa !29
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t124 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroMatch(ptr %v0, ptr %v1, ptr %t120, ptr %t121)
  store i1 %t124, ptr %l63
  br label %bb40
bb40:
  %t125 = load i1, ptr %l63, !tbaa !21
  store i1 %t125, ptr %l8, !tbaa !21
  br label %bb66
bb41:
  %t126 = load ptr, ptr %l1, !tbaa !29
  store ptr %t126, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t127 = load ptr, ptr %l64, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb42, label %bb43
bb42:
  %t130 = load ptr, ptr %l64, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 18}
  %t133 = icmp eq i64 %t131, 14
  store i1 %t133, ptr %l65, !tbaa !21
  br label %bb43
bb43:
  %t134 = load i1, ptr %l65, !tbaa !21
  br i1 %t134, label %bb44, label %bb45
bb44:
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr { i64, [5 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t137, i32 0, i32 2
  %t139 = load ptr, ptr %t138
  store ptr %t139, ptr %l6, !tbaa !29
  br label %bb46
bb45:
  br label %bb54
bb46:
  %t141 = load ptr, ptr %l6, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Try", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb47, label %bb48
bb47:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l75, !tbaa !29
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t153 = getelementptr %"compiler/typed:Try", ptr %t151, i32 0, i32 0
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  br i1 %t156, label %bb49, label %bb50
bb48:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb53
bb49:
  call void @__olang_check_failed(ptr @olang_loc_aa71917389f82fa1_ab8db462134cc7fd)
  unreachable
bb50:
  br label %bb51
bb51:
  %t158 = load ptr, ptr %l6, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Try", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load ptr, ptr %l75, !tbaa !29
  %t164 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t162, ptr %t161)
  store i1 %t164, ptr %l81
  br label %bb52
bb52:
  %t165 = load i1, ptr %l81, !tbaa !21
  store i1 %t165, ptr %l74, !tbaa !21
  br label %bb53
bb53:
  %t166 = load i1, ptr %l74, !tbaa !21
  store i1 %t166, ptr %l8, !tbaa !21
  br label %bb66
bb54:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t168 = load ptr, ptr %l82, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb55, label %bb56
bb55:
  %t171 = load ptr, ptr %l82, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 18}
  %t174 = icmp eq i64 %t172, 6
  store i1 %t174, ptr %l83, !tbaa !21
  br label %bb56
bb56:
  %t175 = load i1, ptr %l83, !tbaa !21
  br i1 %t175, label %bb57, label %bb58
bb57:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t178, i32 0, i32 2
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l7, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l7, !tbaa !29
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallCopy(ptr %v0, ptr %v1, ptr %t182, ptr %t183)
  store i1 %t186, ptr %l90
  br label %bb60
bb60:
  %t187 = load i1, ptr %l90, !tbaa !21
  store i1 %t187, ptr %l8, !tbaa !21
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_45c1f7cb36e76579_9732da1c199d4515)
  unreachable
bb66:
  %t188 = load i1, ptr %l8, !tbaa !21
  store i1 %t188, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFixed(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/check:Ask"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"compiler/check:AssertAsk"
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca %"compiler/check:Ask"
  %l50 = alloca i1
  %l66 = alloca i64
  %l70 = alloca i64
  %l73 = alloca i64
  %l94 = alloca %"compiler/check:AssertAsk"
  %l98 = alloca i1
  %l103 = alloca %"compiler/check:AssertAsk"
  %t154 = alloca %"compiler/check:AssertAsk", align 8
  %t175 = alloca %"compiler/check:AssertAsk", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 106
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load i64, ptr %l18, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l25, !tbaa !24
  store i64 %t33, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 106
  %t59 = call %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v0, ptr %t55, i64 %t51)
  store %"compiler/check:Ask" %t59, ptr %l46
  br label %bb12
bb12:
  %t60 = load %"compiler/check:Ask", ptr %l46
  store %"compiler/check:Ask" %t60, ptr %l8
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Ask", ptr %l8, i32 0, i32 4
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = getelementptr %"compiler/check:Ask", ptr %l8, i32 0, i32 5
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v0, ptr %t61, i64 %t63, { i64, ptr } %t65)
  store i1 %t69, ptr %l50
  br label %bb13
bb13:
  %t70 = load i1, ptr %l50, !tbaa !21
  br i1 %t70, label %bb14, label %bb15
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Ask", ptr %l8, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v0, ptr %t71, ptr %t73)
  br label %bb16
bb15:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 106
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load %"compiler/check:Ask", ptr %l8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eSetAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v0, ptr %t78, i64 %t79, %"compiler/check:Ask" %t80)
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l1, !tbaa !24
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l6, !tbaa !24
  br label %bb8
bb20:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 106
  %t95 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eTruncate_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %t94, i64 %t95)
  br label %bb21
bb21:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 108
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l66
  br label %bb22
bb22:
  %t103 = load i64, ptr %l66, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = icmp sgt i64 %t104, %t105
  br i1 %t108, label %bb23, label %bb24
bb23:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb28
bb25:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l11, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l73, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb27
bb27:
  %t130 = load i64, ptr %l73, !tbaa !24
  store i64 %t130, ptr %l70, !tbaa !24
  br label %bb28
bb28:
  %t131 = load i64, ptr %l70, !tbaa !24
  store i64 %t131, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  %t132 = load i64, ptr %l13, !tbaa !24
  %t133 = load i64, ptr %l12, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb30, label %bb31
bb30:
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l11, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 108
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t154, ptr %v0, ptr %v0, ptr %t152, i64 %t148)
  call void @llvm.memmove.p0.p0.i64(ptr %l94, ptr %t154, i64 184, i1 false)
  br label %bb33
bb33:
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l94, i64 184, i1 false)
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:AssertAsk", ptr %l15, i32 0, i32 0
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = getelementptr %"compiler/check:AssertAsk", ptr %l15, i32 0, i32 10
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t165 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v0, ptr %t157, i64 %t159, { i64, ptr } %t161)
  store i1 %t165, ptr %l98
  br label %bb34
bb34:
  %t166 = load i1, ptr %l98, !tbaa !21
  %t167 = xor i1 %t166, true
  br i1 %t167, label %bb35, label %bb36
bb35:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 108
  %t172 = load i64, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %l15, i64 184, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %l103, i64 184, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eSetA_H2f2d9e3b51ec05f25dc2320ca6b31566(ptr %v0, ptr %v0, ptr %t171, i64 %t172, ptr %t175)
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t176 = load i64, ptr %l1, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l1, !tbaa !24
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l13, !tbaa !24
  br label %bb29
bb40:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 108
  %t187 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eTrun_Heefffe1e944651b1941f34d83e014b00(ptr %v0, ptr %t186, i64 %t187)
  br label %bb41
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellList(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i64
  %l60 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a2)
  store { i64, ptr } %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t11, ptr %l5, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp eq i64 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t20, ptr %l23
  br label %bb4
bb3:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  %t21 = load i1, ptr %l23, !tbaa !21
  store i1 %t21, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l21, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v2, ptr %t23, { i64, ptr } %t24)
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 4
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l6, !tbaa !21
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 4
  store i1 true, ptr %t34, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t45 = load i64, ptr %l9, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb15
bb12:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l9, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l9, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l37, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb14
bb14:
  %t65 = load i64, ptr %l37, !tbaa !24
  store i64 %t65, ptr %l34, !tbaa !24
  br label %bb15
bb15:
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 %t66, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  %t67 = load i64, ptr %l11, !tbaa !24
  %t68 = load i64, ptr %l10, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l12, !tbaa !24
  %t85 = load i64, ptr %l12, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t89 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s4, ptr %t89, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d40, i32 0, i32 1) })
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t93, ptr %l60, !tbaa !27
  %t94 = load i64, ptr %l12, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t94
  %t99 = load i32, ptr %t98, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t91, ptr %t92, i32 %t99, i1 false)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t103 = load i64, ptr %l11, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l11, !tbaa !24
  br label %bb16
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i1, ptr %l6, !tbaa !21
  %t111 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 4
  store i1 %t108, ptr %t111, !tbaa !21
  %t112 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v3, ptr %t112, { i64, ptr } %a4)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espreadArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca i1
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i1
  %l68 = alloca i1
  %l83 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l2, !tbaa !21
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l26, !tbaa !27
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l6, !tbaa !29
  %t31 = load ptr, ptr %l6, !tbaa !29
  store ptr %t31, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t32 = load ptr, ptr %l29, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l29, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 19
  store i1 %t38, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l30, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l7, !tbaa !29
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t46 = load ptr, ptr %l7, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Compr", ptr %t46, i32 0, i32 6
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l7, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Compr", ptr %t51, i32 0, i32 7
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = icmp slt i64 %t54, 0
  store i1 %t56, ptr %l37, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l37, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb18
bb17:
  br label %bb18
bb18:
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
  call void @__olang_check_failed(ptr @olang_loc_e45bff02239684f1_5c322e594f298325)
  unreachable
bb24:
  br label %bb25
bb25:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb4
bb26:
  %t63 = load i1, ptr %l2, !tbaa !21
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb27, label %bb28
bb27:
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t67, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l46
  br label %bb30
bb30:
  %t70 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t70, ptr %lp8
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  %t72 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %t72
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t73, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l11, !tbaa !24
  br label %bb31
bb31:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb32, label %bb33
bb32:
  br label %bb56
bb33:
  br label %bb34
bb34:
  %t87 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t87, ptr %l54, !tbaa !27
  %t88 = load i64, ptr %l10, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr ptr, ptr %t91, i64 %t88
  %t93 = load ptr, ptr %t92, !tbaa !39
  store ptr %t93, ptr %l12, !tbaa !29
  %t95 = load ptr, ptr %l12, !tbaa !29
  store ptr %t95, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t96 = load ptr, ptr %l57, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb35, label %bb36
bb35:
  %t99 = load ptr, ptr %l57, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 30}
  %t102 = icmp eq i64 %t100, 19
  store i1 %t102, ptr %l58, !tbaa !21
  br label %bb36
bb36:
  %t103 = load i1, ptr %l58, !tbaa !21
  br i1 %t103, label %bb37, label %bb38
bb37:
  %t104 = load ptr, ptr %l12, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", ptr }, ptr %t106, i32 0, i32 0
  %t108 = load %"compiler/source:Span", ptr %t107
  store %"compiler/source:Span" %t108, ptr %l13
  %t110 = load ptr, ptr %l12, !tbaa !29
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", ptr }, ptr %t112, i32 0, i32 1
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l14, !tbaa !29
  br label %bb39
bb38:
  br label %bb48
bb39:
  %t116 = load ptr, ptr %l14, !tbaa !29
  %t118 = getelementptr %"compiler/ast:Compr", ptr %t116, i32 0, i32 6
  %t119 = load i1, ptr %t118, !tbaa !21
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb42
bb41:
  %t123 = load ptr, ptr %l14, !tbaa !29
  %t125 = getelementptr %"compiler/ast:Compr", ptr %t123, i32 0, i32 7
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = icmp sge i64 %t126, 0
  store i1 %t128, ptr %l68, !tbaa !21
  br label %bb42
bb42:
  %t130 = load i1, ptr %l68, !tbaa !21
  br i1 %t130, label %bb43, label %bb44
bb43:
  %t131 = load ptr, ptr %lp8
  %t132 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v1, ptr %t131, ptr %t132)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb55
bb46:
  %t136 = load %"compiler/source:Span", ptr %l13
  %t137 = load ptr, ptr %l14, !tbaa !29
  %t138 = load ptr, ptr %lp8
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espreadCompr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %t136, ptr %t137, ptr %t138)
  br label %bb47
bb47:
  br label %bb54
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t143 = load ptr, ptr %lp8
  %t144 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v1, ptr %t143, ptr %t144)
  br label %bb52
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_e137b1d676ba00e0_63d54ba6884a68f4)
  unreachable
bb54:
  br label %bb55
bb55:
  %t147 = load i64, ptr %l10, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l10, !tbaa !24
  br label %bb31
bb56:
  %t151 = load ptr, ptr %lp8
  %t153 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v2, ptr %t151)
  store { i64, ptr } %t153, ptr %l83
  br label %bb57
bb57:
  %t154 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t154, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunadapted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l24 = alloca ptr
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
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
  %t18 = getelementptr %"compiler/typed:Promote", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
bb6:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 0
  %t34 = load %"compiler/source:Span", ptr %t33
  store %"compiler/source:Span" %t34, ptr %l3
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t43 = load %"compiler/source:Span", ptr %l3
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %t43, ptr %t44)
  store ptr %t48, ptr %l24
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l24, !tbaa !29
  store ptr %t49, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1dea4fd8b0797e99_ba26b9776858744d)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunbindCase(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l17 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %l1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t2 = load i64, ptr %l3, !tbaa !24
  store i64 %t2, ptr %l6, !tbaa !24
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Heda0e3070e2f5ab051ad1f451edd65eb(ptr %s0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb2
bb2:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = icmp slt i64 %t6, %t7
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = call %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H62ca4e6c77402fbaa86eb0d94ae649ee(ptr %s0, ptr %t12, i64 %t13)
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t16, ptr %l13
  br label %bb6
bb6:
  %t17 = load %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l13
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t17, ptr %l4
  %t18 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = icmp sge i32 %t19, 0
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l17
  br label %bb9
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t26)
  store ptr %t28, ptr %l23
  br label %bb11
bb9:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t31 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 4
  %t32 = getelementptr %"compiler/generic:Context", ptr %t31, i32 0, i32 2
  %t33 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t35 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t32, i32 %t34, i32 %t36)
  br label %bb10
bb10:
  br label %bb13
bb11:
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t42 = getelementptr %"compiler/check:frame", ptr %t40, i32 0, i32 4
  %t43 = getelementptr %"compiler/generic:Context", ptr %t42, i32 0, i32 2
  %t44 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t48 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %t43, i32 %t45)
  store i1 %t48, ptr %l27
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
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
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l8, !tbaa !21
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
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eViewsOf(ptr %v0, ptr %a0, i32 %t22)
  store i64 %t25, ptr %l15
  br label %bb6
bb6:
  %t26 = load i64, ptr %l15, !tbaa !24
  %t27 = icmp ne i64 %t26, 0
  store i1 %t27, ptr %l6, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_a969f4d227859e_fa1675b60a8d81a2)
  unreachable
bb12:
  %t29 = load i1, ptr %l6, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritableTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i1
  %l12 = alloca i64
  %l18 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t14, i32 %t15)
  store i64 %t18, ptr %l12
  br label %bb4
bb4:
  %t19 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t20 = load i64, ptr %l12, !tbaa !24
  %t22 = and i64 %t20, %t19
  %t24 = icmp eq i64 %t22, 0
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l7, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store ptr null, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = call ptr @compiler_2fcheck_2etempUnder(ptr %v1, ptr %v2, ptr %a2)
  store ptr %t30, ptr %l18
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l18, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(%"compiler/check:narrowed" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:narrowed"
  %l6 = alloca %"compiler/check:narrowed"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:narrowed"
  store %"compiler/check:narrowed" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 2
  %t6 = load i32, ptr %t5, !tbaa !23
  %t7 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 3
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = getelementptr %"compiler/check:narrowed", ptr %l0, i32 0, i32 4
  %t10 = load i64, ptr %t9, !tbaa !24
  %t16 = call %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %s0, i64 %t2, i64 %t4, i32 %t6, i64 %t8, i64 %t10, i1 true)
  store %"compiler/check:narrowed" %t16, ptr %l6
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load %"compiler/check:narrowed", ptr %l6
  store %"compiler/check:narrowed" %t17, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:narrowed", ptr %rv
  ret %"compiler/check:narrowed" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompoundOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %rv = alloca i32
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 81 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i32 68, ptr %l1
  br label %bb49
bb4:
  %t7 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t9 = trunc i64 82 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i32 69, ptr %l1
  br label %bb49
bb8:
  %t13 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t15 = trunc i64 83 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i32 70, ptr %l1
  br label %bb49
bb12:
  %t19 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t21 = trunc i64 84 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i32 71, ptr %l1
  br label %bb49
bb16:
  %t25 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t27 = trunc i64 85 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i32 72, ptr %l1
  br label %bb49
bb20:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 86 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i32 73, ptr %l1
  br label %bb49
bb24:
  %t37 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t39 = trunc i64 87 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i32 106, ptr %l1
  br label %bb49
bb28:
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t45 = trunc i64 88 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i32 107, ptr %l1
  br label %bb49
bb32:
  %t49 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t51 = trunc i64 89 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i32 101, ptr %l1
  br label %bb49
bb36:
  %t55 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t57 = trunc i64 90 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i32 102, ptr %l1
  br label %bb49
bb40:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t63 = trunc i64 91 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store i32 103, ptr %l1
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i32 0, ptr %l1
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_20f9f67d26588f89_c77aed4cf9eaedd5)
  unreachable
bb49:
  %t68 = load i32, ptr %l1, !range !{i32 0, i32 114}
  store i32 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2epurePlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l27 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb29
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb13, label %bb14
bb13:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2epurePlace(ptr %v0, ptr %t34)
  store i1 %t36, ptr %l19
  br label %bb16
bb16:
  %t37 = load i1, ptr %l19, !tbaa !21
  store i1 %t37, ptr %l3, !tbaa !21
  br label %bb29
bb17:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l20, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 2
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l21, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = call i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %t53)
  store i1 %t55, ptr %l27
  br label %bb23
bb23:
  %t56 = load i1, ptr %l27, !tbaa !21
  store i1 %t56, ptr %l3, !tbaa !21
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_5f83e155ca38cf66_2e569db778e046b2)
  unreachable
bb29:
  %t57 = load i1, ptr %l3, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/check:laneVals"
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l0, !tbaa !24
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3alaneVals_2e1
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l2
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %l4
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3alaneVals_2e1
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l2
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr %t18
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = icmp eq ptr %t30, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t31)
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  %t33 = load i64, ptr %l0, !tbaa !24
  %t34 = insertvalue %"compiler/check:laneVals" undef, i64 %t33, 0
  %t36 = insertvalue %"compiler/check:laneVals" %t34, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, 1
  store %"compiler/check:laneVals" %t36, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:laneVals", ptr %rv
  ret %"compiler/check:laneVals" %rr
}

define dso_local %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:seqOf"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:seqOf" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/check:seqOf" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/check:seqOf" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:seqOf" %t14, i64 %a3, 3
  store %"compiler/check:seqOf" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:seqOf", ptr %rv
  ret %"compiler/check:seqOf" %rr
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
@.d0 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@__olang_empty_array = external constant [16 x i64]
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
@.d1 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"several globals given one value (D8c)" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/source:Span", ptr %t1, i32 0, i32 0
  %t3 = load i32, ptr %t2, !tbaa !23
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/source:Span", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = icmp eq i32 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb4
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/source:Span", ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/source:Span", ptr %t14, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t19 = icmp eq i32 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  br label %bb4
bb4:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"comptime." }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@olang_2esole_2ecompiler_2fcheck_3actSource_2e4 = weak hidden constant i1 false
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d6 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3afactRead_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3afactRead_2e6 = weak hidden constant i1 false
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d9 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d10 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"RefMut" }>, align 8
@.d12 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"a join piece of this kind (E11b)" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d14 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a literal of this kind" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3areflVal_2e3 = weak hidden constant i1 false
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Nullable" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d22 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Max" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@.d30 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"HasDefault" }>, align 8
@.d31 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Offset" }>, align 8
@.d32 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"BitOffset" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d35 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"the result" }>, align 8
@.d36 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"several values returned where one is the result" }>, align 8
@.d37 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"a count of returned values other than the result's" }>, align 8
@.d38 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a result" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d40 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2ecompiler_2fcheck_3alaneVals_2e1 = weak hidden constant i1 false
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
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_9eb839b1731ec753_72a752a69f5cff = external constant [0 x i8]
@olang_loc_f83cb5cceffcf0b5_2b226308c40baf91 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2fcheck_2enestedSets(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_e7ab01916875b50e_1d7262f9337b968a = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetMissing(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_2599613ebe6577bf_c7cdba117938678b = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enestedBranches(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3, i32 %a4)
@olang_loc_29d8517aff2f45a0_a0a50ce7e575309c = external constant [0 x i8]
@olang_loc_e693b908e929c719_6a5072149b305b6d = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetNoElse(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_854544ece9382ff2_682fdce3c1a33886 = external constant [0 x i8]
@olang_loc_d274ad680f5d4033_842f2e84ef151c77 = external constant [0 x i8]
@olang_loc_2ad59061de4a1064_c4b419dd58a3cc58 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_687718fa9f832d83_eed198ed3faef857 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i32 %a2)
@olang_loc_27b76e5e144937_92b9984f1a7672bb = external constant [0 x i8]
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrTypeOk(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrWritable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildDefaulted(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefineValue(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
@G_2ecompiler_2fcheck_2eRoGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetAnywhere(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4)
@olang_loc_6495b6dfee4ecee2_6e1c2cfd4a22a64e = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_8d548c3c72e36863_6a32d0416bf96aff = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsSynth(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_H19fded22be32a91ca4084130356a325d(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_fa3c94e3a612a0dd_4761343759351551 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeCtx(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeBody(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i64 %a4, i32 %a5)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_aa0d5e524103d919_41af477b1830b7e5 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_700945490095e3ab_b793fb317cfa4b47 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_98b1a939df7bf83c_dad16d1edd3f2a28 = external constant [0 x i8]
@olang_loc_25ec48d7738ec131_33504a893c084afd = external constant [0 x i8]
@olang_loc_1c86c4e2a1d4d52a_afb2831c22759b16 = external constant [0 x i8]
@olang_loc_34572fc3675c142e_5b9246c98f1fa642 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnySlot" %a1)
@olang_loc_384cb541f04295b0_3f9ee0143bd9d7ac = external constant [0 x i8]
declare %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4)
@olang_loc_a90b29f72ec4d10d_507af4b2e3250de1 = external constant [0 x i8]
@olang_loc_8dac41fcc89db5e5_6cee581458fc6b9 = external constant [0 x i8]
@olang_loc_7351608f8313d577_54e294ea81fa84bb = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_e375dcd56c8db7ae_8ebec7f18eafef7a = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_f43f80063d96068c_f8dacab5994fea88 = external constant [0 x i8]
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_bc6e1922695f43ab_20684c650255034f = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrMatchNotError(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNonNull(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %a0)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsDrop(ptr %v0, ptr %a0, %"compiler/check:factsMark" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2eopShapeOf(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2fcheck_2eOpShapes = external constant <{ [8 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [16 x i8] }>
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnErrors(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0)
declare i32 @compiler_2feffects_2eFact_2eNamed(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2edeclaredFact(ptr %v0, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclFact(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H066d6e237a6d66bfc481a7c4eff443dd(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOfExtern(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feffects_2ecompiler_2feffects_3aFacts_2eHolds(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:factRead" @compiler_2fcheck_3afactRead_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, { i64, ptr } %a2, i1 %a3, i64 %a4, %"compiler/source:Span" %a5, { i64, ptr } %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3afactRead_3e_2ePush_3ccompiler_2fcheck_3afactRead_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factRead" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadFact(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFactOfGeneric(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feffects_2eConservative(i32 %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ce96f1d737413f70_b94e71a15147345c = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_cca9af72e1ece301_506f5d82865fcd8d = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ePush_3ccompiler_2ftyped_3aPiece_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erenderPiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_edb80cc7b7da287f_97b51ae7478fcbdb = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2eToArr_H1b89f7fcc263bba924ca04e7c3aa48c7(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextLit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ebadSeparator(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIntLiteralTooLarge(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_b96b66026b1de457_faad65b8493662b3 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aArm_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d674b53a564350b6_2b0ed61f741ab932 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc59daade663458096c0c7696954afd54(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadOnlyCopyOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteReadOnlyCopy(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_16a91292275266c4_38d52f99814dbef8 = external constant [0 x i8]
@olang_loc_1f453287a90ee701_f75bf1e5be6f432d = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushNulls(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushErrNarrow(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushCases(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
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
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
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
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrOfNothing(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInTest(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInCtor(ptr %v0)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnInNoreturn(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseReturns(ptr %v0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgReturns(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferReturns(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenReturnValue(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferReturn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnNeedsValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnValueInVoid(ptr %v0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRefResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fcheck_2eRoReturned = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eretLand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_64f1128892bbfadb_2fd1650a543ec847 = external constant [0 x i8]
@olang_loc_9b328daa59c12fec_530ed6f7b483a728 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_aa71917389f82fa1_ab8db462134cc7fd = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_45c1f7cb36e76579_9732da1c199d4515 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %a0)
declare %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eSetAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:Ask" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eTruncate_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eSetA_H2f2d9e3b51ec05f25dc2320ca6b31566(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eTrun_Heefffe1e944651b1941f34d83e014b00(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i1 %a3)
@olang_loc_e45bff02239684f1_5c322e594f298325 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espreadCompr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
@olang_loc_e137b1d676ba00e0_63d54ba6884a68f4 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1dea4fd8b0797e99_ba26b9776858744d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Heda0e3070e2f5ab051ad1f451edd65eb(ptr %v0, ptr %a0)
declare %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H62ca4e6c77402fbaa86eb0d94ae649ee(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H2c4b9eb360b9a0ada2008890a467b28d(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a969f4d227859e_fa1675b60a8d81a2 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2etempUnder(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/check:narrowed" @compiler_2fcheck_3anarrowed_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5)
@olang_loc_20f9f67d26588f89_c77aed4cf9eaedd5 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %a0)
@olang_loc_5f83e155ca38cf66_2e569db778e046b2 = external constant [0 x i8]
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
