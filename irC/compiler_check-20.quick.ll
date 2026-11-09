source_filename = "compiler_check-20.quick.ll"
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
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/check:nullNarrow" = type { { i64, ptr }, i64, i1 }
%"compiler/check:errNarrow" = type { i32, i32, i64, i1 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
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

define dso_local void @compiler_2fcheck_2echainNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_2196821906d7172f_ce8d1c9901dd14c3)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopBranch", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2edeclNames(ptr %v0, ptr %v1, { i64, ptr } %t24, ptr %t25)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/ast:TopIf", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/ast:TopIf", ptr %t37, i32 0, i32 2
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  br i1 %t42, label %bb10, label %bb11
bb9:
  br label %bb14
bb10:
  call void @__olang_check_failed(ptr @olang_loc_507ed937f609d1d0_9b704622aa820f34)
  unreachable
bb11:
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TopIf", ptr %t44, i32 0, i32 2
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2echainNames(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/ast:TopIf", ptr %t51, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = icmp eq ptr %t54, null
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TopIf", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb17, label %bb18
bb16:
  br label %bb21
bb17:
  call void @__olang_check_failed(ptr @olang_loc_27f4d264c3bf025_5d55a961c8f61129)
  unreachable
bb18:
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/ast:TopIf", ptr %t67, i32 0, i32 3
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t73 = getelementptr %"compiler/ast:TopBranch", ptr %t70, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t75 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2edeclNames(ptr %v0, ptr %v1, { i64, ptr } %t74, ptr %t75)
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2eclosedAll(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l12 = alloca { i64, ptr }
  %l16 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  %t25 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t21)
  store i1 %t25, ptr %l16
  br label %bb5
bb5:
  %t26 = load i1, ptr %l16, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtBinding(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/typed:Local"
  %l8 = alloca ptr
  %l12 = alloca %"compiler/typed:Local"
  %l16 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l24 = alloca ptr
  %l29 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca %"compiler/typed:Local"
  %l57 = alloca ptr
  %l62 = alloca i32
  %l67 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i32
  %l76 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l8, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  %t7 = load i64, ptr %l3, !tbaa !24
  %t10 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t6, i64 %t7)
  store %"compiler/typed:Local" %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 2
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l5, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l5, !tbaa !23
  %t18 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l16
  br label %bb3
bb3:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l4, !tbaa !23
  %t24 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l20
  br label %bb6
bb5:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i1, ptr %l20, !tbaa !21
  store i1 %t25, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l17, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  store ptr %t32, ptr %l24, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l5, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l29
  br label %bb10
bb9:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb13
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l4, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l34
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l24, !tbaa !29
  %t54 = load i32, ptr %l29, !tbaa !23
  %t55 = load i32, ptr %l34, !tbaa !23
  %t56 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t53, i32 %t54, i32 %t55)
  store i1 %t56, ptr %l35
  br label %bb12
bb12:
  %t57 = load i1, ptr %l35, !tbaa !21
  store i1 %t57, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t58 = load i1, ptr %l21, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l37, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l38
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t63, i32 %a2)
  store { i64, ptr } %t67, ptr %l41
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t68 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l42, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l5, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l45
  br label %bb17
bb17:
  %t80 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t89 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindingType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t87, { i64, ptr } %t86)
  store %"compiler/diagmsg:Msg" %t89, ptr %l47
  br label %bb18
bb18:
  %t90 = load ptr, ptr %l37, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l38
  %t92 = load %"compiler/diagmsg:Msg", ptr %l47
  %t93 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t90, %"compiler/source:Span" %t91, %"compiler/diagmsg:Msg" %t92)
  store i64 %t93, ptr %l48
  br label %bb19
bb19:
  br label %ret
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t94)
  store ptr %t96, ptr %l50
  br label %bb21
bb21:
  %t97 = load ptr, ptr %l50, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Body", ptr %t97, i32 0, i32 7
  %t100 = load i64, ptr %l3, !tbaa !24
  %t103 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t99, i64 %t100)
  store %"compiler/typed:Local" %t103, ptr %l54
  br label %bb22
bb22:
  %t104 = load %"compiler/typed:Local", ptr %l54
  store %"compiler/typed:Local" %t104, ptr %l6
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  store ptr %t110, ptr %l57, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l5, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l62
  br label %bb23
bb23:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l5, !tbaa !23
  %t130 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t126, i32 %t127)
  store i64 %t130, ptr %l67
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l4, !tbaa !23
  %t140 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t136, i32 %t137)
  store i64 %t140, ptr %l72
  br label %bb25
bb25:
  %t141 = load i64, ptr %l67, !tbaa !24
  %t142 = load i64, ptr %l72, !tbaa !24
  %t143 = call i64 @compiler_2fcheck_2emeetPerm(i64 %t141, i64 %t142)
  store i64 %t143, ptr %l73
  br label %bb26
bb26:
  %t144 = load ptr, ptr %l57, !tbaa !29
  %t145 = load i32, ptr %l62, !tbaa !23
  %t146 = load i64, ptr %l73, !tbaa !24
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t144, i32 %t145, i64 %t146)
  store i32 %t147, ptr %l74
  br label %bb27
bb27:
  %t148 = load i32, ptr %l74, !tbaa !23
  %t149 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 2
  store i32 %t148, ptr %t149, !tbaa !23
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t150)
  store ptr %t152, ptr %l76
  br label %bb28
bb28:
  %t153 = load ptr, ptr %l76, !tbaa !29
  %t155 = getelementptr %"compiler/typed:Body", ptr %t153, i32 0, i32 7
  %t156 = load i64, ptr %l3, !tbaa !24
  %t157 = load %"compiler/typed:Local", ptr %l6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eSetAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t155, i64 %t156, %"compiler/typed:Local" %t157)
  br label %bb29
bb29:
  br label %ret
ret:
  ret void
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
  %l25 = alloca { i64, ptr }
  %l30 = alloca i32
  %l33 = alloca %"std/prelude/text:StringBuilder"
  %l36 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l53 = alloca i64
  %l56 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l68 = alloca ptr
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca i32
  %l77 = alloca %"compiler/source:Span"
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca { i64, ptr }
  %l86 = alloca %"compiler/diagmsg:Msg"
  %l87 = alloca i64
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
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t24, i32 %t25)
  store { i64, ptr } %t28, ptr %l25
  br label %bb9
bb9:
  %t29 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t29, ptr %l5, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l4, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l30
  br label %bb10
bb10:
  %t40 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t42 = trunc i64 22 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t45, ptr %l33
  br label %bb13
bb12:
  br label %bb33
bb13:
  %t46 = load %"std/prelude/text:StringBuilder", ptr %l33
  store %"std/prelude/text:StringBuilder" %t46, ptr %l6
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  store ptr %t52, ptr %l36, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l4, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l41
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l36, !tbaa !29
  %t64 = load i32, ptr %l41, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t63, i32 %t64)
  store { i64, ptr } %t65, ptr %l42
  br label %bb15
bb15:
  %t66 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t66, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load i64, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb18:
  br label %bb19
bb19:
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t79, ptr %l49, !tbaa !27
  %t80 = load i64, ptr %l8, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 %t80
  %t85 = load i32, ptr %t84, !tbaa !33
  store i32 %t85, ptr %l10, !tbaa !23
  %t88 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s2, ptr %l6)
  store i64 %t88, ptr %l53
  br label %bb20
bb20:
  %t89 = load i64, ptr %l53, !tbaa !24
  %t90 = icmp sgt i64 %t89, 0
  br i1 %t90, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s5, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  store ptr %l6, ptr %l56, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l10, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t93, i32 %t94)
  store { i64, ptr } %t97, ptr %l59
  br label %bb25
bb25:
  %t98 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load ptr, ptr %l56, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s4, ptr %t105, { i64, ptr } %t104)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb27
bb27:
  %t107 = load i64, ptr %l8, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l8, !tbaa !24
  br label %bb16
bb28:
  %t112 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s0, ptr %l6)
  store { i64, ptr } %t112, ptr %l64
  br label %bb29
bb29:
  %t113 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  store i64 %t116, ptr %l66, !tbaa !24
  %t118 = load i64, ptr %l66, !tbaa !24
  %t119 = icmp eq i64 %t114, %t118
  br i1 %t119, label %bb30, label %bb31
bb30:
  %t121 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l66, !tbaa !24
  %t126 = mul i64 %t125, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t122, ptr %t124, i64 %t126, i1 false)
  br label %bb32
bb31:
  %t127 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t127, ptr %l5, !tbaa !27
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb33:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l68, !tbaa !29
  %t129 = load ptr, ptr %l3, !tbaa !29
  %t131 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t129)
  store %"compiler/source:Span" %t131, ptr %l70
  br label %bb34
bb34:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l71, !tbaa !29
  %t133 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t133, ptr %l72, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr ptr, ptr %t135, i64 0
  %t137 = load ptr, ptr %t136, !tbaa !39
  %t139 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t137)
  store %"compiler/source:Span" %t139, ptr %l74
  br label %bb35
bb35:
  %t140 = getelementptr %"compiler/source:Span", ptr %l74, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  store i32 %t141, ptr %l75, !tbaa !23
  %t144 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %a2)
  store %"compiler/source:Span" %t144, ptr %l77
  br label %bb36
bb36:
  %t145 = getelementptr %"compiler/source:Span", ptr %l77, i32 0, i32 0
  %t146 = load i32, ptr %t145, !tbaa !23
  %t147 = load i32, ptr %l75, !tbaa !23
  %t149 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t147, i32 %t146)
  store %"compiler/source:Span" %t149, ptr %l79
  br label %bb37
bb37:
  %t150 = load ptr, ptr %l71, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l79
  %t152 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t150, %"compiler/source:Span" %t151)
  store { i64, ptr } %t152, ptr %l80
  br label %bb38
bb38:
  %t153 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t153, ptr %l81, !tbaa !27
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l82, !tbaa !29
  %t155 = load ptr, ptr %l3, !tbaa !29
  %t157 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t155)
  store %"compiler/source:Span" %t157, ptr %l84
  br label %bb39
bb39:
  %t158 = load ptr, ptr %l82, !tbaa !29
  %t159 = load %"compiler/source:Span", ptr %l84
  %t160 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t158, %"compiler/source:Span" %t159)
  store { i64, ptr } %t160, ptr %l85
  br label %bb40
bb40:
  %t161 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t164 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawnedResult(ptr %v0, ptr %s0, ptr %v0, ptr %v0, { i64, ptr } %t161, { i64, ptr } %t162, { i64, ptr } %t163)
  store %"compiler/diagmsg:Msg" %t164, ptr %l86
  br label %bb41
bb41:
  %t165 = load ptr, ptr %l68, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l70
  %t167 = load %"compiler/diagmsg:Msg", ptr %l86
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t165, %"compiler/source:Span" %t166, %"compiler/diagmsg:Msg" %t167)
  store i64 %t168, ptr %l87
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca ptr
  %l25 = alloca i1
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca ptr
  %l34 = alloca i1
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l56 = alloca %"compiler/source:Span"
  %l59 = alloca { i64, ptr }
  %l61 = alloca %"compiler/source:Span"
  %l67 = alloca i32
  %l70 = alloca i1
  %l73 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i32
  %l81 = alloca { i64, ptr }
  %l83 = alloca %"compiler/source:Span"
  %l85 = alloca %"compiler/source:Span"
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 11
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t23)
  store %"compiler/source:Span" %t25, ptr %l20
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t26)
  store %"compiler/source:Span" %t28, ptr %l22
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = load %"compiler/source:Span", ptr %l20
  %t31 = load %"compiler/source:Span", ptr %l22
  %t32 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t29, %"compiler/source:Span" %t30, %"compiler/source:Span" %t31, i64 2)
  store %"compiler/source:Span" %t32, ptr %l23
  br label %bb8
bb8:
  %t33 = load %"compiler/source:Span", ptr %l23
  store %"compiler/source:Span" %t33, ptr %rv
  br label %ret
bb9:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t35 = load ptr, ptr %l24, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l24, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 30}
  %t41 = icmp eq i64 %t39, 2
  store i1 %t41, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l25, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", ptr }, ptr %t45, i32 0, i32 1
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t53 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store %"compiler/source:Span" %t53, ptr %l32
  br label %bb15
bb15:
  %t54 = load %"compiler/source:Span", ptr %l32
  store %"compiler/source:Span" %t54, ptr %rv
  br label %ret
bb16:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t56 = load ptr, ptr %l33, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb17, label %bb18
bb17:
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 30}
  %t62 = icmp eq i64 %t60, 5
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t68 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %t64, ptr %t65)
  store %"compiler/source:Span" %t68, ptr %l39
  br label %bb22
bb22:
  %t69 = load %"compiler/source:Span", ptr %l39
  store %"compiler/source:Span" %t69, ptr %rv
  br label %ret
bb23:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t71 = load ptr, ptr %l40, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t74 = load ptr, ptr %l40, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 30}
  %t77 = icmp eq i64 %t75, 12
  store i1 %t77, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t78 = load i1, ptr %l41, !tbaa !21
  br i1 %t78, label %bb26, label %bb27
bb26:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t81, i32 0, i32 1
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t87, i32 0, i32 2
  %t89 = load { i64, ptr }, ptr %t88
  store { i64, ptr } %t89, ptr %l6, !tbaa !27
  br label %bb28
bb27:
  br label %bb58
bb28:
  %t91 = load ptr, ptr %l5, !tbaa !29
  store ptr %t91, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t92 = load ptr, ptr %l48, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t95 = load ptr, ptr %l48, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 30}
  %t98 = icmp eq i64 %t96, 14
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb30
bb30:
  %t99 = load i1, ptr %l49, !tbaa !21
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t102 = getelementptr { i64, [4 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t102, i32 0, i32 0
  %t104 = load %"compiler/source:Span", ptr %t103
  store %"compiler/source:Span" %t104, ptr %l7
  %t106 = load ptr, ptr %l5, !tbaa !29
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t108, i32 0, i32 2
  %t110 = load i32, ptr %t109
  store i32 %t110, ptr %l8, !tbaa !23
  br label %bb33
bb32:
  br label %bb36
bb33:
  store %olang.scope zeroinitializer, ptr %s5
  %t112 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t112, ptr %l56
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l8, !tbaa !23
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s5, ptr %t113, i32 %t114)
  store { i64, ptr } %t117, ptr %l59
  br label %bb34
bb34:
  %t118 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = load %"compiler/source:Span", ptr %l56
  %t122 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t120, i64 %t119)
  store %"compiler/source:Span" %t122, ptr %l61
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  %t123 = load %"compiler/source:Span", ptr %l61
  store %"compiler/source:Span" %t123, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_1f1b6690933c885_28748d6375f921a9)
  unreachable
bb41:
  %t124 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t128 = icmp eq i64 %t126, 1
  br i1 %t128, label %bb42, label %bb43
bb42:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l5, !tbaa !29
  %t134 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t130, ptr %t131)
  store i32 %t134, ptr %l67
  br label %bb44
bb43:
  br label %bb57
bb44:
  %t135 = load i32, ptr %l67, !tbaa !23
  store i32 %t135, ptr %l9, !tbaa !23
  %t136 = load i32, ptr %l9, !tbaa !23
  %t138 = icmp sge i32 %t136, 0
  br i1 %t138, label %bb45, label %bb46
bb45:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l9, !tbaa !23
  %t144 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t140, i32 %t141)
  store i1 %t144, ptr %l73
  br label %bb47
bb46:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb48
bb47:
  %t145 = load i1, ptr %l73, !tbaa !21
  store i1 %t145, ptr %l70, !tbaa !21
  br label %bb48
bb48:
  %t146 = load i1, ptr %l70, !tbaa !21
  br i1 %t146, label %bb49, label %bb50
bb49:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i32, ptr %l9, !tbaa !23
  %t151 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l77
  br label %bb51
bb50:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb52
bb51:
  %t152 = load i32, ptr %l77, !range !{i32 0, i32 6}
  %t154 = trunc i64 4 to i32
  %t155 = icmp eq i32 %t152, %t154
  store i1 %t155, ptr %l74, !tbaa !21
  br label %bb52
bb52:
  %t157 = load i1, ptr %l74, !tbaa !21
  br i1 %t157, label %bb53, label %bb54
bb53:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t159, ptr %l81, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr ptr, ptr %t161, i64 0
  %t163 = load ptr, ptr %t162, !tbaa !39
  %t166 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t158, ptr %t163)
  store %"compiler/source:Span" %t166, ptr %l83
  br label %bb55
bb54:
  br label %bb56
bb55:
  %t167 = load %"compiler/source:Span", ptr %l83
  store %"compiler/source:Span" %t167, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  br label %bb63
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_8236d7e1b67531d4_b931f98a56a04ed8)
  unreachable
bb63:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t168)
  store %"compiler/source:Span" %t170, ptr %l85
  br label %bb64
bb64:
  %t171 = load %"compiler/source:Span", ptr %l85
  store %"compiler/source:Span" %t171, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayMake(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, i32 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca { i64, [3 x i64] }
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i1
  %l17 = alloca { i64, [3 x i64] }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca ptr
  %l30 = alloca i32
  %l33 = alloca i32
  %l38 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l48 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i32
  %l60 = alloca ptr
  %l62 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l68 = alloca i32
  %l73 = alloca i32
  %l76 = alloca i1
  %l81 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca %"compiler/source:Span"
  %l91 = alloca i64
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca i64
  %l100 = alloca i32
  %l103 = alloca i64
  %l114 = alloca ptr
  %l117 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l125 = alloca i1
  %l127 = alloca ptr
  %l129 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/source:Span"
  %l134 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca { i64, ptr }
  %l138 = alloca %"compiler/source:Span"
  %l147 = alloca ptr
  %l149 = alloca ptr
  %l151 = alloca ptr
  %l152 = alloca { i64, ptr }
  %l153 = alloca ptr
  %l155 = alloca i32
  %l156 = alloca i32
  %l161 = alloca i32
  %l164 = alloca i1
  %l169 = alloca i64
  %l177 = alloca i1
  %l180 = alloca i1
  %l182 = alloca ptr
  %l186 = alloca ptr
  %l193 = alloca i1
  %l196 = alloca i1
  %l198 = alloca ptr
  %l202 = alloca ptr
  %l208 = alloca ptr
  %l214 = alloca { i64, ptr }
  %l218 = alloca i1
  %l222 = alloca i1
  %l225 = alloca ptr
  %l230 = alloca i32
  %l231 = alloca i32
  %l236 = alloca %"compiler/source:Span"
  %l237 = alloca i32
  %l238 = alloca i32
  %l239 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l245 = alloca i32
  %l248 = alloca %"compiler/typed:Make"
  %rv = alloca ptr
  %t185 = alloca { i64, [3 x i64] }, align 8
  %t324 = alloca { i64, [3 x i64] }, align 8
  %t472 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i32 %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l21, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l22, !tbaa !27
  %t3 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !27
  %t5 = getelementptr ptr, ptr %t4, i64 0
  %t6 = load ptr, ptr %t5, !tbaa !39
  store ptr %t6, ptr %l23, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t7)
  store i32 %t9, ptr %l25
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l21, !tbaa !29
  %t11 = load ptr, ptr %l23, !tbaa !29
  %t12 = load i32, ptr %l25, !tbaa !23
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v3, ptr %t10, ptr %t11, i32 %t12)
  store ptr %t13, ptr %l26
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l26, !tbaa !29
  store ptr %t14, ptr %l6, !tbaa !29
  store i32 0, ptr %l7, !tbaa !23
  %t15 = load i32, ptr %l4, !tbaa !23
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t19 = icmp ne i32 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l4, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l33
  br label %bb5
bb4:
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t26, ptr %l30, !tbaa !23
  br label %bb6
bb5:
  %t28 = load i32, ptr %l33, !tbaa !23
  store i32 %t28, ptr %l30, !tbaa !23
  br label %bb6
bb6:
  %t29 = load i32, ptr %l30, !tbaa !23
  store i32 %t29, ptr %l8, !tbaa !23
  %t30 = load i32, ptr %l8, !tbaa !23
  %t31 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = icmp ne i32 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  store ptr %t41, ptr %l41, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l8, !tbaa !23
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l44
  br label %bb9
bb8:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb11
bb9:
  %t47 = load ptr, ptr %l41, !tbaa !29
  %t48 = load i32, ptr %l44, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t49, ptr %l45
  br label %bb10
bb10:
  %t50 = load i32, ptr %l45, !range !{i32 0, i32 33}
  %t52 = trunc i64 19 to i32
  %t53 = icmp eq i32 %t50, %t52
  store i1 %t53, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t55 = load i1, ptr %l38, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l51, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l8, !tbaa !23
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l54
  br label %bb14
bb13:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb16
bb14:
  %t67 = load ptr, ptr %l51, !tbaa !29
  %t68 = load i32, ptr %l54, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t69, ptr %l55
  br label %bb15
bb15:
  %t70 = load i32, ptr %l55, !tbaa !23
  %t71 = icmp eq i32 %t70, 0
  store i1 %t71, ptr %l48, !tbaa !21
  br label %bb16
bb16:
  %t73 = load i1, ptr %l48, !tbaa !21
  %t76 = xor i1 %t73, true
  br i1 %t76, label %bb17, label %bb18
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  store ptr %t81, ptr %l60, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t82)
  store ptr %t84, ptr %l62
  br label %bb19
bb18:
  br label %bb33
bb19:
  %t85 = load ptr, ptr %l62, !tbaa !29
  %t87 = getelementptr %"compiler/check:frame", ptr %t85, i32 0, i32 4
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t88, ptr %l65, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr ptr, ptr %t90, i64 0
  %t92 = load ptr, ptr %t91, !tbaa !39
  %t94 = load ptr, ptr %l60, !tbaa !29
  %t97 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v0, ptr %v1, ptr %t94, ptr %t87, ptr %t92)
  store i32 %t97, ptr %l68
  br label %bb20
bb20:
  %t98 = load i32, ptr %l68, !tbaa !23
  store i32 %t98, ptr %l10, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l10, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t104, i32 %t105)
  store i32 %t108, ptr %l73
  br label %bb21
bb21:
  %t109 = load i32, ptr %l73, !range !{i32 0, i32 33}
  %t111 = trunc i64 26 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb22, label %bb23
bb22:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l10, !tbaa !23
  %t123 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t119, i32 %t120)
  store i64 %t123, ptr %l81
  br label %bb24
bb23:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb25
bb24:
  %t124 = load i64, ptr %l81, !tbaa !24
  %t125 = icmp slt i64 %t124, 0
  store i1 %t125, ptr %l76, !tbaa !21
  br label %bb25
bb25:
  %t127 = load i1, ptr %l76, !tbaa !21
  br i1 %t127, label %bb26, label %bb27
bb26:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l83, !tbaa !29
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t129, ptr %l84, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr ptr, ptr %t131, i64 0
  %t133 = load ptr, ptr %t132, !tbaa !39
  %t135 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t133)
  store %"compiler/source:Span" %t135, ptr %l86
  br label %bb28
bb27:
  %t136 = load i32, ptr %l10, !tbaa !23
  store i32 %t136, ptr %l7, !tbaa !23
  br label %bb32
bb28:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l10, !tbaa !23
  %t147 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t143, i32 %t144)
  store i64 %t147, ptr %l91
  br label %bb29
bb29:
  %t148 = load i64, ptr %l91, !tbaa !24
  %t149 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayLengthRange(ptr %v0, i64 %t148)
  store %"compiler/diagmsg:Msg" %t149, ptr %l92
  br label %bb30
bb30:
  %t150 = load ptr, ptr %l83, !tbaa !29
  %t151 = load %"compiler/source:Span", ptr %l86
  %t152 = load %"compiler/diagmsg:Msg", ptr %l92
  %t153 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t150, %"compiler/source:Span" %t151, %"compiler/diagmsg:Msg" %t152)
  store i64 %t153, ptr %l93
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %l2, !tbaa !23
  %t161 = load i32, ptr %l7, !tbaa !23
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t159, i32 %t160, i32 %t161)
  store i32 %t165, ptr %l100
  br label %bb34
bb34:
  %t166 = load i32, ptr %l100, !tbaa !23
  store i32 %t166, ptr %l11, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 36
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t169)
  store i64 %t171, ptr %l103
  br label %bb35
bb35:
  %t172 = load i64, ptr %l103, !tbaa !24
  store i64 %t172, ptr %l12, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t177 = icmp eq i64 %t175, 2
  br i1 %t177, label %bb36, label %bb37
bb36:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 13
  %t182 = load { i64, [3 x i64] }, ptr %t181
  store { i64, [3 x i64] } %t182, ptr %l13
  %t184 = load ptr, ptr %l0, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t185
  %t186 = getelementptr { i64, [3 x i64] }, ptr %t185, i32 0, i32 0
  store i64 0, ptr %t186
  %t187 = load { i64, [3 x i64] }, ptr %t185
  %t190 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 13
  store { i64, [3 x i64] } %t187, ptr %t190
  %t191 = load ptr, ptr %l5, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb38, label %bb39
bb37:
  br label %bb51
bb38:
  %t197 = load ptr, ptr %l5, !tbaa !29
  store ptr %t197, ptr %l114, !tbaa !29
  br label %bb41
bb39:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t200, ptr %l117, !tbaa !27
  %t201 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr ptr, ptr %t202, i64 1
  %t204 = load ptr, ptr %t203, !tbaa !39
  %t205 = load i32, ptr %l2, !tbaa !23
  %t209 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %t199, ptr %t204, i32 %t205)
  store ptr %t209, ptr %l120
  br label %bb40
bb40:
  %t210 = load ptr, ptr %l120, !tbaa !29
  store ptr %t210, ptr %l114, !tbaa !29
  br label %bb41
bb41:
  %t211 = load ptr, ptr %l114, !tbaa !29
  store ptr %t211, ptr %l14, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load { i64, [3 x i64] }, ptr %l13
  %t216 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 13
  store { i64, [3 x i64] } %t213, ptr %t216
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l2, !tbaa !23
  %t221 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t217, i32 %t218)
  store i1 %t221, ptr %l125
  br label %bb42
bb42:
  %t222 = load i1, ptr %l125, !tbaa !21
  %t223 = xor i1 %t222, true
  br i1 %t223, label %bb43, label %bb44
bb43:
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l127, !tbaa !29
  %t226 = load ptr, ptr %l14, !tbaa !29
  store ptr %t226, ptr %l129, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t228, ptr %l130, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr ptr, ptr %t230, i64 1
  %t232 = load ptr, ptr %t231, !tbaa !39
  %t234 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t232)
  store %"compiler/source:Span" %t234, ptr %l132
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t235 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t236 = load ptr, ptr %l127, !tbaa !29
  %t237 = load ptr, ptr %l129, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l132
  %t240 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v2, ptr %t236, ptr %t237, %"compiler/source:Span" %t238, i64 %t235)
  store i1 %t240, ptr %l134
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t241 = load ptr, ptr %l0, !tbaa !29
  store ptr %t241, ptr %l135, !tbaa !29
  %t242 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t242, ptr %l136, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr ptr, ptr %t244, i64 1
  %t246 = load ptr, ptr %t245, !tbaa !39
  %t248 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t246)
  store %"compiler/source:Span" %t248, ptr %l138
  br label %bb48
bb48:
  %t249 = load i32, ptr %l2, !tbaa !23
  %t250 = load ptr, ptr %l135, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l138
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueFill(ptr %v0, ptr %t250, %"compiler/source:Span" %t251, i32 %t249)
  br label %bb49
bb49:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/check:Checker", ptr %t253, i32 0, i32 36
  %t256 = load ptr, ptr %l14, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t255, ptr %t256)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t259 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t259, 0
  %t263 = icmp eq i64 %t261, 1
  br i1 %t263, label %bb52, label %bb53
bb52:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/check:Checker", ptr %t265, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !29
  store ptr %t268, ptr %l147, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t269)
  store ptr %t271, ptr %l149
  br label %bb54
bb53:
  br label %bb85
bb54:
  %t272 = load ptr, ptr %l149, !tbaa !29
  %t274 = getelementptr %"compiler/check:frame", ptr %t272, i32 0, i32 4
  store ptr %t274, ptr %l151, !tbaa !29
  %t275 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t275, ptr %l152, !tbaa !27
  %t276 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr ptr, ptr %t277, i64 0
  %t279 = load ptr, ptr %t278, !tbaa !39
  store ptr %t279, ptr %l153, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t280)
  store i32 %t282, ptr %l155
  br label %bb55
bb55:
  %t283 = load ptr, ptr %l147, !tbaa !29
  %t284 = load ptr, ptr %l151, !tbaa !29
  %t285 = load ptr, ptr %l153, !tbaa !29
  %t286 = load i32, ptr %l155, !tbaa !23
  %t287 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v0, ptr %v1, ptr %t283, ptr %t284, ptr %t285, i32 %t286)
  store i32 %t287, ptr %l156
  br label %bb56
bb56:
  %t288 = load i32, ptr %l156, !tbaa !23
  store i32 %t288, ptr %l15, !tbaa !23
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/check:Checker", ptr %t289, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l15, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l161
  br label %bb57
bb57:
  %t299 = load i32, ptr %l161, !range !{i32 0, i32 33}
  %t301 = trunc i64 26 to i32
  %t302 = icmp eq i32 %t299, %t301
  br i1 %t302, label %bb58, label %bb59
bb58:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/check:Checker", ptr %t304, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !29
  %t309 = getelementptr %"compiler/generic:Program", ptr %t307, i32 0, i32 2
  %t310 = load i32, ptr %l15, !tbaa !23
  %t313 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t309, i32 %t310)
  store i64 %t313, ptr %l169
  br label %bb60
bb59:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb61
bb60:
  %t314 = load i64, ptr %l169, !tbaa !24
  %t315 = icmp eq i64 %t314, 0
  store i1 %t315, ptr %l164, !tbaa !21
  br label %bb61
bb61:
  %t317 = load i1, ptr %l164, !tbaa !21
  store i1 %t317, ptr %l16, !tbaa !21
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 13
  %t321 = load { i64, [3 x i64] }, ptr %t320
  store { i64, [3 x i64] } %t321, ptr %l17
  %t323 = load ptr, ptr %l0, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t324
  %t325 = getelementptr { i64, [3 x i64] }, ptr %t324, i32 0, i32 0
  store i64 0, ptr %t325
  %t326 = load { i64, [3 x i64] }, ptr %t324
  %t329 = getelementptr %"compiler/check:Checker", ptr %t323, i32 0, i32 13
  store { i64, [3 x i64] } %t326, ptr %t329
  %t330 = load i1, ptr %l16, !tbaa !21
  %t332 = xor i1 %t330, true
  br i1 %t332, label %bb62, label %bb63
bb62:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load i32, ptr %l2, !tbaa !23
  %t338 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %t334, i32 %t335)
  store i1 %t338, ptr %l180
  br label %bb64
bb63:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb65
bb64:
  %t339 = load i1, ptr %l180, !tbaa !21
  store i1 %t339, ptr %l177, !tbaa !21
  br label %bb65
bb65:
  %t340 = load i1, ptr %l177, !tbaa !21
  br i1 %t340, label %bb66, label %bb67
bb66:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/check:Checker", ptr %t341, i32 0, i32 36
  store ptr %t343, ptr %l182, !tbaa !29
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load %"compiler/source:Span", ptr %l1
  %t346 = load i32, ptr %l2, !tbaa !23
  %t350 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t344, %"compiler/source:Span" %t345, i32 %t346)
  store ptr %t350, ptr %l186
  br label %bb68
bb67:
  %t351 = load i1, ptr %l16, !tbaa !21
  %t353 = xor i1 %t351, true
  br i1 %t353, label %bb71, label %bb72
bb68:
  %t355 = load ptr, ptr %l182, !tbaa !29
  %t356 = load ptr, ptr %l186, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t355, ptr %t356)
  br label %bb69
bb69:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load %"compiler/source:Span", ptr %l1
  %t359 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v0, ptr %t357, i32 2, %"compiler/source:Span" %t358, i32 %t359, ptr null)
  br label %bb70
bb70:
  br label %bb84
bb71:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load i32, ptr %l2, !tbaa !23
  %t368 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullableArray(ptr %v0, ptr %t364, i32 %t365)
  store i1 %t368, ptr %l196
  br label %bb73
bb72:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb74
bb73:
  %t369 = load i1, ptr %l196, !tbaa !21
  store i1 %t369, ptr %l193, !tbaa !21
  br label %bb74
bb74:
  %t370 = load i1, ptr %l193, !tbaa !21
  br i1 %t370, label %bb75, label %bb76
bb75:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/check:Checker", ptr %t371, i32 0, i32 36
  store ptr %t373, ptr %l198, !tbaa !29
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load %"compiler/source:Span", ptr %l1
  %t376 = load i32, ptr %l2, !tbaa !23
  %t380 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v0, ptr %t374, %"compiler/source:Span" %t375, i32 %t376)
  store ptr %t380, ptr %l202
  br label %bb77
bb76:
  %t381 = load i1, ptr %l16, !tbaa !21
  %t383 = xor i1 %t381, true
  br i1 %t383, label %bb79, label %bb80
bb77:
  %t385 = load ptr, ptr %l198, !tbaa !29
  %t386 = load ptr, ptr %l202, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t385, ptr %t386)
  br label %bb78
bb78:
  br label %bb83
bb79:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load %"compiler/source:Span", ptr %l1
  %t389 = load i32, ptr %l2, !tbaa !23
  %t393 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t387, %"compiler/source:Span" %t388, i32 %t389)
  store ptr %t393, ptr %l208
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load { i64, [3 x i64] }, ptr %l17
  %t398 = getelementptr %"compiler/check:Checker", ptr %t394, i32 0, i32 13
  store { i64, [3 x i64] } %t395, ptr %t398
  br label %bb85
bb85:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 36
  %t402 = load i64, ptr %l12, !tbaa !24
  %t405 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t401, i64 %t402)
  store { i64, ptr } %t405, ptr %l214
  br label %bb86
bb86:
  %t406 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t406, ptr %l18, !tbaa !27
  store i32 1, ptr %l19
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/check:Checker", ptr %t408, i32 0, i32 127
  %t411 = load i1, ptr %t410, !tbaa !21
  br i1 %t411, label %bb87, label %bb88
bb87:
  %t413 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t417 = icmp eq i64 %t415, 1
  store i1 %t417, ptr %l218, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb89
bb89:
  %t419 = load i1, ptr %l218, !tbaa !21
  br i1 %t419, label %bb90, label %bb91
bb90:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr %"compiler/check:Checker", ptr %t420, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !29
  %t425 = getelementptr %"compiler/generic:Program", ptr %t423, i32 0, i32 2
  store ptr %t425, ptr %l225, !tbaa !29
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/check:Checker", ptr %t426, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t431 = getelementptr %"compiler/generic:Program", ptr %t429, i32 0, i32 2
  %t432 = load i32, ptr %l2, !tbaa !23
  %t435 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t431, i32 %t432)
  store i32 %t435, ptr %l230
  br label %bb92
bb91:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb94
bb92:
  %t436 = load ptr, ptr %l225, !tbaa !29
  %t437 = load i32, ptr %l230, !tbaa !23
  %t438 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t436, i32 %t437)
  store i32 %t438, ptr %l231
  br label %bb93
bb93:
  %t439 = load i32, ptr %l231, !range !{i32 0, i32 33}
  %t441 = trunc i64 19 to i32
  %t442 = icmp eq i32 %t439, %t441
  %t444 = xor i1 %t442, true
  store i1 %t444, ptr %l222, !tbaa !21
  br label %bb94
bb94:
  %t446 = load i1, ptr %l222, !tbaa !21
  store i1 %t446, ptr %l20, !tbaa !21
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 127
  store i1 false, ptr %t449, !tbaa !21
  %t450 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t450, ptr %l236
  %t451 = load i32, ptr %l11, !tbaa !23
  store i32 %t451, ptr %l237, !tbaa !23
  store i32 3, ptr %l238
  %t452 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t452, ptr %l239, !tbaa !27
  %t453 = load ptr, ptr %l6, !tbaa !29
  store ptr %t453, ptr %l241, !tbaa !29
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load %"compiler/source:Span", ptr %l1
  %t460 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t455, i32 1, %"compiler/source:Span" %t456)
  store i32 %t460, ptr %l245
  br label %bb95
bb95:
  %t461 = load i32, ptr %l19, !range !{i32 0, i32 3}
  %t462 = load i1, ptr %l20, !tbaa !21
  %t463 = load i32, ptr %l238, !range !{i32 0, i32 5}
  %t464 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t465 = load ptr, ptr %l241, !tbaa !29
  %t466 = load i32, ptr %l245, !tbaa !23
  %t469 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v3, ptr %v3, ptr %v3, i32 %t463, i64 0, { i64, ptr } %t464, ptr %t465, i32 %t466, i32 %t461, i1 %t462)
  store %"compiler/typed:Make" %t469, ptr %l248
  br label %bb96
bb96:
  %t470 = load %"compiler/typed:Make", ptr %l248
  %t471 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 56, i64 8)
  store %"compiler/typed:Make" %t470, ptr %t471
  store { i64, [5 x i64] } zeroinitializer, ptr %t472
  %t473 = getelementptr { i64, [5 x i64] }, ptr %t472, i32 0, i32 0
  store i64 7, ptr %t473
  %t474 = load %"compiler/source:Span", ptr %l236
  %t475 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t474, 0
  %t476 = load i32, ptr %l237, !tbaa !23
  %t477 = insertvalue { %"compiler/source:Span", i32, ptr } %t475, i32 %t476, 1
  %t479 = insertvalue { %"compiler/source:Span", i32, ptr } %t477, ptr %t471, 2
  %t480 = getelementptr { i64, [5 x i64] }, ptr %t472, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t479, ptr %t480
  %t481 = load { i64, [5 x i64] }, ptr %t472
  %t483 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t481, ptr %t483
  store ptr %t483, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:Origin"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca i1
  %l46 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l57 = alloca %"compiler/generic:Origin"
  %l69 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l85 = alloca i32
  %l88 = alloca i32
  %l89 = alloca i1
  %l90 = alloca i1
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load i64, ptr %l16, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 64, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l23, !tbaa !24
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l20, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l46, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t64, i64 %t65)
  store i32 %t68, ptr %l50
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l46, !tbaa !29
  %t70 = load i32, ptr %l50, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l51
  br label %bb15
bb15:
  %t72 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t75 = icmp eq i64 %t73, 0
  store i1 %t75, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l43, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t82 = load i64, ptr %l2, !tbaa !24
  %t85 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/generic:Origin" %t85, ptr %l57
  br label %bb20
bb20:
  %t86 = load %"compiler/generic:Origin", ptr %l57
  store %"compiler/generic:Origin" %t86, ptr %l10
  %t87 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = icmp slt i64 %t88, 0
  br i1 %t90, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t92 = load i64, ptr %l2, !tbaa !24
  store i64 %t92, ptr %l3, !tbaa !24
  %t94 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  store i64 %t95, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l8, !tbaa !24
  br label %bb8
bb25:
  %t101 = load i64, ptr %l3, !tbaa !24
  %t103 = icmp slt i64 %t101, 0
  br i1 %t103, label %bb26, label %bb27
bb26:
  store i64 -1, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  store ptr %t111, ptr %l69, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t116 = load i64, ptr %l3, !tbaa !24
  %t119 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t115, i64 %t116)
  store i32 %t119, ptr %l73
  br label %bb29
bb29:
  %t120 = load ptr, ptr %l69, !tbaa !29
  %t121 = load i32, ptr %l73, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t120, i32 %t121)
  store { i64, ptr } %t122, ptr %l74
  br label %bb30
bb30:
  %t123 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t123, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  store i64 %t126, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb32, label %bb33
bb32:
  br label %bb46
bb33:
  br label %bb34
bb34:
  %t136 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t136, ptr %l81, !tbaa !27
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 %t137
  %t142 = load i32, ptr %t141, !tbaa !33
  store i32 %t142, ptr %l14, !tbaa !23
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l84, !tbaa !29
  store i32 %a1, ptr %l85, !tbaa !23
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l14, !tbaa !23
  %t150 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l88
  br label %bb35
bb35:
  %t151 = load ptr, ptr %l84, !tbaa !29
  %t152 = load i32, ptr %l85, !tbaa !23
  %t153 = load i32, ptr %l88, !tbaa !23
  %t154 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %t151, i32 %t152, i32 %t153, i64 0)
  store i1 %t154, ptr %l89
  br label %bb36
bb36:
  %t155 = load i1, ptr %l89, !tbaa !21
  br i1 %t155, label %bb37, label %bb38
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  store ptr %t159, ptr %l92, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l14, !tbaa !23
  %t164 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l95
  br label %bb39
bb38:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb41
bb39:
  %t165 = load ptr, ptr %l92, !tbaa !29
  %t166 = load i32, ptr %l95, !tbaa !23
  %t167 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t165, i32 %t166)
  store i1 %t167, ptr %l96
  br label %bb40
bb40:
  %t168 = load i1, ptr %l96, !tbaa !21
  store i1 %t168, ptr %l90, !tbaa !21
  br label %bb41
bb41:
  %t169 = load i1, ptr %l90, !tbaa !21
  br i1 %t169, label %bb42, label %bb43
bb42:
  %t170 = load i64, ptr %l3, !tbaa !24
  store i64 %t170, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t172 = load i64, ptr %l12, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l12, !tbaa !24
  br label %bb31
bb46:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/generic:Desc"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %lp17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %lp24 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca %"compiler/source:Span"
  %l32 = alloca %"compiler/generic:Desc"
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca i1
  %l64 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca i1
  %l83 = alloca i64
  %l90 = alloca ptr
  %l93 = alloca ptr
  %l96 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca i32
  %l103 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l110 = alloca %"compiler/source:Span"
  %l112 = alloca i64
  %l116 = alloca { i64, ptr }
  %l119 = alloca %"compiler/diagmsg:Msg"
  %l120 = alloca i64
  %l124 = alloca ptr
  %l128 = alloca i1
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca i32
  %l134 = alloca ptr
  %l139 = alloca ptr
  %l144 = alloca i32
  %l145 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l149 = alloca %"compiler/source:Span"
  %l150 = alloca i32
  %l151 = alloca ptr
  %l155 = alloca %"compiler/typed:Payload"
  %l163 = alloca i64
  %l166 = alloca i64
  %l184 = alloca { i64, ptr }
  %l187 = alloca %"compiler/source:Span"
  %l188 = alloca { i64, ptr }
  %l194 = alloca ptr
  %l195 = alloca %"compiler/source:Span"
  %l196 = alloca ptr
  %l198 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l205 = alloca ptr
  %l206 = alloca ptr
  %l215 = alloca ptr
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t232 = alloca { i64, [4 x i64] }, align 8
  %t287 = alloca { i64, [4 x i64] }, align 8
  %t368 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l27
  br label %bb1
bb1:
  %t6 = load i32, ptr %l27, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t7)
  store %"compiler/source:Span" %t9, ptr %l29
  br label %bb2
bb2:
  %t10 = load %"compiler/source:Span", ptr %l29
  store %"compiler/source:Span" %t10, ptr %l5
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store %"compiler/generic:Desc" %t15, ptr %l32
  br label %bb3
bb3:
  %t16 = load %"compiler/generic:Desc", ptr %l32
  store %"compiler/generic:Desc" %t16, ptr %l6
  %t17 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t22 = icmp eq i64 %t18, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l5
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 2
  %t28 = load i64, ptr %t27, !tbaa !24
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v2, ptr %v3, ptr %t24, %"compiler/source:Span" %t25, ptr %t26, i64 %t28)
  store ptr %t33, ptr %l40
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t34 = load ptr, ptr %l40, !tbaa !29
  store ptr %t34, ptr %rv
  br label %ret
bb7:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t36 = load ptr, ptr %l41, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l41, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 30}
  %t42 = icmp eq i64 %t40, 0
  store i1 %t42, ptr %l42, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l42, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32 }, ptr %t46, i32 0, i32 0
  %t48 = load %"compiler/source:Span", ptr %t47
  store %"compiler/source:Span" %t48, ptr %l7
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32 }, ptr %t52, i32 0, i32 1
  %t54 = load i32, ptr %t53
  store i32 %t54, ptr %l8, !tbaa !23
  br label %bb12
bb11:
  br label %bb19
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l8, !tbaa !23
  %t60 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t56, i32 %t57)
  store { i64, ptr } %t60, ptr %l51
  br label %bb13
bb13:
  %t61 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t61, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t62, ptr %l52
  br label %bb14
bb14:
  %t63 = load i1, ptr %l52, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l7
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t64, %"compiler/source:Span" %t65, i32 %t66, i64 1)
  store ptr %t70, ptr %l56
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t71 = load ptr, ptr %l56, !tbaa !29
  store ptr %t71, ptr %rv
  br label %ret
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb81
bb19:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t73 = load ptr, ptr %l57, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t76 = load ptr, ptr %l57, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 30}
  %t79 = icmp eq i64 %t77, 14
  store i1 %t79, ptr %l58, !tbaa !21
  br label %bb21
bb21:
  %t80 = load i1, ptr %l58, !tbaa !21
  br i1 %t80, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t83 = load i32, ptr %l4, !tbaa !23
  %t87 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t81, ptr %t82, i32 %t83)
  store i64 %t87, ptr %l64
  br label %bb25
bb25:
  %t88 = load i64, ptr %l64, !tbaa !24
  store i64 %t88, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp sge i64 %t89, 0
  br i1 %t91, label %bb26, label %bb27
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l5
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t96 = load i64, ptr %l9, !tbaa !24
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v2, ptr %v3, ptr %t93, %"compiler/source:Span" %t94, ptr %t95, i64 %t96)
  store ptr %t101, ptr %l71
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t102 = load ptr, ptr %l71, !tbaa !29
  store ptr %t102, ptr %rv
  br label %ret
bb29:
  br label %bb81
bb30:
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t104 = load ptr, ptr %l72, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb31, label %bb32
bb31:
  %t107 = load ptr, ptr %l72, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 30}
  %t110 = icmp eq i64 %t108, 12
  store i1 %t110, ptr %l73, !tbaa !21
  br label %bb32
bb32:
  %t111 = load i1, ptr %l73, !tbaa !21
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t114, i32 0, i32 1
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l10, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t120, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121
  store { i64, ptr } %t122, ptr %l11, !tbaa !27
  br label %bb35
bb34:
  br label %bb76
bb35:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l10, !tbaa !29
  %t126 = load i32, ptr %l4, !tbaa !23
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t124, ptr %t125, i32 %t126)
  store i64 %t130, ptr %l83
  br label %bb36
bb36:
  %t131 = load i64, ptr %l83, !tbaa !24
  store i64 %t131, ptr %l12, !tbaa !24
  %t132 = load i64, ptr %l12, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s7
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l5
  %t138 = load ptr, ptr %l2, !tbaa !29
  %t139 = load i64, ptr %l12, !tbaa !24
  %t144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v2, ptr %v3, ptr %t136, %"compiler/source:Span" %t137, ptr %t138, i64 %t139)
  store ptr %t144, ptr %l90
  br label %bb39
bb38:
  br label %bb75
bb39:
  %t145 = load ptr, ptr %l90, !tbaa !29
  store ptr %t145, ptr %l13, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  store ptr %t151, ptr %l93, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  store ptr %t157, ptr %l96, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load i32, ptr %l4, !tbaa !23
  %t163 = load i64, ptr %l12, !tbaa !24
  %t167 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t161, i32 %t162, i64 %t163)
  store i32 %t167, ptr %l101
  br label %bb40
bb40:
  %t168 = load ptr, ptr %l96, !tbaa !29
  %t169 = load i32, ptr %l101, !tbaa !23
  %t170 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t168, i32 %t169)
  store i32 %t170, ptr %l102
  br label %bb41
bb41:
  %t171 = load ptr, ptr %l93, !tbaa !29
  %t172 = load i32, ptr %l102, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t171, i32 %t172)
  store { i64, ptr } %t173, ptr %l103
  br label %bb42
bb42:
  %t174 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t174, ptr %l14, !tbaa !27
  %t175 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t183 = icmp ne i64 %t177, %t180
  br i1 %t183, label %bb43, label %bb44
bb43:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l109, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t186, ptr %l110
  %t187 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  store i64 %t189, ptr %l112, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t194 = icmp eq i64 %t192, 1
  br i1 %t194, label %bb45, label %bb46
bb44:
  br label %bb51
bb45:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l116, !tbaa !27
  br label %bb47
bb46:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l116, !tbaa !27
  br label %bb47
bb47:
  %t196 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = load i64, ptr %l112, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 %t199, { i64, ptr } %t200, i64 %t198)
  store %"compiler/diagmsg:Msg" %t202, ptr %l119
  br label %bb48
bb48:
  %t203 = load ptr, ptr %l109, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l110
  %t205 = load %"compiler/diagmsg:Msg", ptr %l119
  %t206 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t203, %"compiler/source:Span" %t204, %"compiler/diagmsg:Msg" %t205)
  store i64 %t206, ptr %l120
  br label %bb49
bb49:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load %"compiler/source:Span", ptr %l5
  %t209 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t213 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t207, %"compiler/source:Span" %t208, i32 %t209, i64 0)
  store ptr %t213, ptr %l124
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s7)
  %t214 = load ptr, ptr %l124, !tbaa !29
  store ptr %t214, ptr %rv
  br label %ret
bb51:
  %t215 = load ptr, ptr %l2, !tbaa !29
  store ptr %t215, ptr %l15, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l3, !tbaa !23
  %t221 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t217, i32 %t218)
  store i1 %t221, ptr %l128
  br label %bb52
bb52:
  %t222 = load i1, ptr %l128, !tbaa !21
  br i1 %t222, label %bb53, label %bb54
bb53:
  %t223 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t223, ptr %l129
  %t224 = load i32, ptr %l4, !tbaa !23
  store i32 %t224, ptr %l130, !tbaa !23
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l5
  %t227 = load ptr, ptr %l2, !tbaa !29
  %t231 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v3, ptr %t225, %"compiler/source:Span" %t226, ptr %t227)
  store ptr %t231, ptr %l134
  br label %bb55
bb54:
  br label %bb56
bb55:
  store { i64, [4 x i64] } zeroinitializer, ptr %t232
  %t233 = getelementptr { i64, [4 x i64] }, ptr %t232, i32 0, i32 0
  store i64 2, ptr %t233
  %t234 = load %"compiler/source:Span", ptr %l129
  %t235 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t234, 0
  %t236 = load i32, ptr %l130, !tbaa !23
  %t237 = insertvalue { %"compiler/source:Span", i32, ptr } %t235, i32 %t236, 1
  %t238 = load ptr, ptr %l134, !tbaa !29
  %t239 = insertvalue { %"compiler/source:Span", i32, ptr } %t237, ptr %t238, 2
  %t240 = getelementptr { i64, [4 x i64] }, ptr %t232, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t239, ptr %t240
  %t241 = load { i64, [4 x i64] }, ptr %t232
  %t243 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t241, ptr %t243
  store ptr %t243, ptr %l15, !tbaa !29
  br label %bb56
bb56:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 2
  store ptr %t250, ptr %l139, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = getelementptr %"compiler/generic:Program", ptr %t254, i32 0, i32 2
  %t257 = load i32, ptr %l4, !tbaa !23
  %t260 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t256, i32 %t257)
  store i32 %t260, ptr %l144
  br label %bb57
bb57:
  %t261 = load ptr, ptr %l139, !tbaa !29
  %t262 = load i32, ptr %l144, !tbaa !23
  %t263 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s7, ptr %t261, i32 %t262)
  store { i64, ptr } %t263, ptr %l145
  br label %bb58
bb58:
  %t264 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t264, ptr %l146, !tbaa !27
  %t265 = load i64, ptr %l12, !tbaa !24
  %t267 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr i32, ptr %t268, i64 %t265
  %t270 = load i32, ptr %t269, !tbaa !33
  %t272 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t272, ptr %l149
  store i32 %t270, ptr %l150, !tbaa !23
  %t274 = load ptr, ptr %l15, !tbaa !29
  store ptr %t274, ptr %l151, !tbaa !29
  %t275 = load i64, ptr %l12, !tbaa !24
  %t276 = load ptr, ptr %l151, !tbaa !29
  %t277 = call ptr @__olang_scope_of(ptr %t276, ptr null)
  %t278 = ptrtoint ptr %t277 to i64
  %t280 = inttoptr i64 %t278 to ptr
  %t281 = load ptr, ptr %l151, !tbaa !29
  %t284 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %t280, ptr %v3, ptr %t281, i64 %t275, i32 0)
  store %"compiler/typed:Payload" %t284, ptr %l155
  br label %bb59
bb59:
  %t285 = load %"compiler/typed:Payload", ptr %l155
  %t286 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Payload" %t285, ptr %t286
  store { i64, [4 x i64] } zeroinitializer, ptr %t287
  %t288 = getelementptr { i64, [4 x i64] }, ptr %t287, i32 0, i32 0
  store i64 5, ptr %t288
  %t289 = load %"compiler/source:Span", ptr %l149
  %t290 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t289, 0
  %t291 = load i32, ptr %l150, !tbaa !23
  %t292 = insertvalue { %"compiler/source:Span", i32, ptr } %t290, i32 %t291, 1
  %t294 = insertvalue { %"compiler/source:Span", i32, ptr } %t292, ptr %t286, 2
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t287, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t294, ptr %t295
  %t296 = load { i64, [4 x i64] }, ptr %t287
  %t297 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store ptr %t297, ptr %lp17
  %t299 = load ptr, ptr %lp17
  store { i64, [4 x i64] } %t296, ptr %t299
  store i64 0, ptr %l18, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  store i64 %t302, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t304 = load i64, ptr %l19, !tbaa !24
  %t305 = load i64, ptr %l18, !tbaa !24
  %t308 = icmp sgt i64 %t304, %t305
  br i1 %t308, label %bb60, label %bb61
bb60:
  %t310 = load i64, ptr %l20, !tbaa !24
  %t312 = icmp sgt i64 %t310, 0
  br i1 %t312, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb65
bb62:
  %t314 = load i64, ptr %l19, !tbaa !24
  %t315 = load i64, ptr %l18, !tbaa !24
  %t318 = sub i64 %t314, %t315
  %t319 = load i64, ptr %l20, !tbaa !24
  %t322 = add i64 %t318, %t319
  %t324 = sub i64 %t322, 1
  %t325 = load i64, ptr %l20, !tbaa !24
  %t328 = sdiv i64 %t324, %t325
  store i64 %t328, ptr %l166, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb64
bb64:
  %t330 = load i64, ptr %l166, !tbaa !24
  store i64 %t330, ptr %l163, !tbaa !24
  br label %bb65
bb65:
  %t331 = load i64, ptr %l163, !tbaa !24
  store i64 %t331, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb66
bb66:
  %t332 = load i64, ptr %l22, !tbaa !24
  %t333 = load i64, ptr %l21, !tbaa !24
  %t336 = icmp slt i64 %t332, %t333
  %t338 = xor i1 %t336, true
  br i1 %t338, label %bb67, label %bb68
bb67:
  br label %bb74
bb68:
  br label %bb69
bb69:
  %t340 = load i64, ptr %l18, !tbaa !24
  %t341 = load i64, ptr %l22, !tbaa !24
  %t342 = load i64, ptr %l20, !tbaa !24
  %t345 = mul i64 %t341, %t342
  %t348 = add i64 %t340, %t345
  store i64 %t348, ptr %l23, !tbaa !24
  %t350 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t350, ptr %l184, !tbaa !27
  %t351 = load i64, ptr %l23, !tbaa !24
  %t353 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr ptr, ptr %t354, i64 %t351
  %t356 = load ptr, ptr %t355, !tbaa !39
  %t358 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t356)
  store %"compiler/source:Span" %t358, ptr %l187
  br label %bb70
bb70:
  %t359 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t359, ptr %l188, !tbaa !27
  %t360 = load i64, ptr %l23, !tbaa !24
  %t362 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = getelementptr i32, ptr %t363, i64 %t360
  %t365 = load i32, ptr %t364, !tbaa !33
  %t366 = load ptr, ptr %lp17
  %t367 = load i64, ptr %l23, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t368
  %t369 = getelementptr { i64, [4 x i64] }, ptr %t368, i32 0, i32 0
  store i64 3, ptr %t369
  %t370 = load %"compiler/source:Span", ptr %l187
  %t371 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t370, 0
  %t373 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t371, i32 %t365, 1
  %t375 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t373, ptr %t366, 2
  %t377 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t375, i64 %t367, 3
  %t378 = getelementptr { i64, [4 x i64] }, ptr %t368, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t377, ptr %t378
  %t379 = load { i64, [4 x i64] }, ptr %t368
  %t380 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store ptr %t380, ptr %lp24
  %t382 = load ptr, ptr %lp24
  store { i64, [4 x i64] } %t379, ptr %t382
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l194, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t384, ptr %l195
  %t385 = load ptr, ptr %l13, !tbaa !29
  store ptr %t385, ptr %l196, !tbaa !29
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t387, ptr %l198, !tbaa !27
  %t388 = load i64, ptr %l23, !tbaa !24
  %t390 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !27
  %t392 = getelementptr ptr, ptr %t391, i64 %t388
  %t393 = load ptr, ptr %t392, !tbaa !39
  %t394 = load ptr, ptr %lp24
  %t395 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t395, ptr %l202, !tbaa !27
  %t396 = load i64, ptr %l23, !tbaa !24
  %t398 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr i32, ptr %t399, i64 %t396
  %t401 = load i32, ptr %t400, !tbaa !33
  %t406 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTest(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t386, ptr %t393, ptr %t394, i32 %t401)
  store ptr %t406, ptr %l205
  br label %bb71
bb71:
  %t407 = load ptr, ptr %l194, !tbaa !29
  %t408 = load %"compiler/source:Span", ptr %l195
  %t409 = load ptr, ptr %l196, !tbaa !29
  %t410 = load ptr, ptr %l205, !tbaa !29
  %t411 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t407, %"compiler/source:Span" %t408, ptr %t409, ptr %t410)
  store ptr %t411, ptr %l206
  br label %bb72
bb72:
  %t412 = load ptr, ptr %l206, !tbaa !29
  store ptr %t412, ptr %l13, !tbaa !29
  br label %bb73
bb73:
  %t413 = load i64, ptr %l22, !tbaa !24
  %t415 = add i64 %t413, 1
  store i64 %t415, ptr %l22, !tbaa !24
  br label %bb66
bb74:
  %t417 = load ptr, ptr %l13, !tbaa !29
  call void @__olang_scope_close(ptr %s7)
  store ptr %t417, ptr %rv
  br label %ret
bb75:
  br label %bb81
bb76:
  br i1 true, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_82b73da87554a50f_4f07d83e7e807a5b)
  unreachable
bb81:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l5
  %t421 = load ptr, ptr %l2, !tbaa !29
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t423 = load i32, ptr %l3, !tbaa !23
  %t429 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v2, ptr %v1, ptr %v3, ptr %t419, %"compiler/source:Span" %t420, ptr %t421, ptr %t422, i32 %t423)
  store ptr %t429, ptr %l215
  br label %bb82
bb82:
  %t430 = load ptr, ptr %l215, !tbaa !29
  store ptr %t430, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
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
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t56, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) })
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
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) })
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
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t66, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) })
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
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t71, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) })
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
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l62, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t96, ptr %l63
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l2, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t97, i32 %t101)
  store { i64, ptr } %t104, ptr %l67
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t105 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %v0, ptr %v0, { i64, ptr } %t111)
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
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l94, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t172, ptr %l95
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t176 = getelementptr %"compiler/ast:Func", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %t176, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t173, i32 %t177)
  store { i64, ptr } %t180, ptr %l99
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t181 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  store { i64, ptr } %t187, ptr %l100, !tbaa !27
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l10, !tbaa !23
  %t192 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t188, i32 %t189)
  store { i64, ptr } %t192, ptr %l103
  br label %bb45
bb45:
  %t193 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  %t195 = extractvalue { i64, ptr } %t193, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t202 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesSameType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t200, { i64, ptr } %t199)
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
  %t314 = getelementptr %"compiler/ast:Sig", ptr %t312, i32 0, i32 6
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
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t326, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t328, ptr %l164
  br label %bb81
bb81:
  %t329 = load i1, ptr %l164, !tbaa !21
  br i1 %t329, label %bb82, label %bb83
bb82:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l165, !tbaa !27
  br label %bb96
bb83:
  %t330 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t332 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t330, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t332, ptr %l167
  br label %bb84
bb84:
  %t333 = load i1, ptr %l167, !tbaa !21
  br i1 %t333, label %bb85, label %bb86
bb85:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l168, !tbaa !27
  br label %bb95
bb86:
  %t334 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t336 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t334, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t336, ptr %l170
  br label %bb87
bb87:
  %t337 = load i1, ptr %l170, !tbaa !21
  br i1 %t337, label %bb88, label %bb89
bb88:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l171, !tbaa !27
  br label %bb94
bb89:
  %t338 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t340 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t338, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t340, ptr %l173
  br label %bb90
bb90:
  %t341 = load i1, ptr %l173, !tbaa !21
  br i1 %t341, label %bb91, label %bb92
bb91:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l174, !tbaa !27
  br label %bb93
bb92:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l174, !tbaa !27
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
  %t353 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t349, i32 %t350)
  store { i64, ptr } %t353, ptr %l180
  br label %bb97
bb97:
  %t354 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 0
  %t356 = extractvalue { i64, ptr } %t354, 1
  %t357 = mul i64 %t355, 1
  %t358 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t357)
  call void @llvm.memcpy.p0.p0.i64(ptr %t358, ptr %t356, i64 %t357, i1 false)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t358, 1
  store { i64, ptr } %t360, ptr %l181, !tbaa !27
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l10, !tbaa !23
  %t365 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t361, i32 %t362)
  store { i64, ptr } %t365, ptr %l184
  br label %bb98
bb98:
  %t366 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t366, 0
  %t368 = extractvalue { i64, ptr } %t366, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t369)
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
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = add i64 %t399, %t402
  %t404 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t403)
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
  %t413 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t413, ptr %t411, i64 %t412, i1 false)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  %t416 = load ptr, ptr @__olang_prog_scope
  %t417 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t419 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t421 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesClash(ptr %t416, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t417, { i64, ptr } %t418, { i64, ptr } %t419, { i64, ptr } %t415)
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca ptr
  %l8 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einGeneric(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb6
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t5)
  store ptr %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 4
  %t11 = getelementptr %"compiler/generic:Context", ptr %t10, i32 0, i32 3
  %t13 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l8
  br label %bb5
bb5:
  %t14 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp sgt i64 %t14, 0
  store i1 %t15, ptr %l3, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l3, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l11 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca i64
  %l26 = alloca i32
  %l27 = alloca %"compiler/generic:Context"
  %l36 = alloca %"compiler/generic:Context"
  %l42 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca %"compiler/generic:Context"
  %l52 = alloca ptr
  %l55 = alloca %"compiler/generic:Context"
  %t42 = alloca %"compiler/generic:Context", align 8
  %t65 = alloca %"compiler/generic:Context", align 8
  %t102 = alloca %"compiler/generic:Context", align 8
  %t112 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l11, !tbaa !29
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
  br label %bb8
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l18, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l22
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t41 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t37, i64 %t38)
  store i32 %t41, ptr %l26
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l18, !tbaa !29
  %t44 = load i64, ptr %l22, !tbaa !24
  %t45 = load i32, ptr %l26, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %t42, ptr %v0, ptr %v1, ptr %t43, i64 %t44, i32 %t45)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t42, i64 160, i1 false)
  br label %bb7
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l27, i64 160, i1 false)
  br label %ret
bb8:
  %t46 = load { i64, [2 x i64] }, ptr %l2
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 1
  br i1 %t49, label %bb9, label %bb10
bb9:
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t52 = getelementptr { i32, i32 }, ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l4, !tbaa !23
  %t55 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t56 = getelementptr { i32, i32 }, ptr %t55, i32 0, i32 1
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l5, !tbaa !23
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i32, ptr %l4, !tbaa !23
  %t64 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %t65, ptr %v0, ptr %v1, ptr %t62, i32 %t63, i32 %t64)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t65, i64 160, i1 false)
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l36, i64 160, i1 false)
  br label %ret
bb13:
  %t69 = load { i64, [2 x i64] }, ptr %l2
  %t71 = extractvalue { i64, [2 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 10
  br i1 %t72, label %bb14, label %bb15
bb14:
  %t74 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t75 = getelementptr { i32, i64 }, ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l6, !tbaa !23
  %t78 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t79 = getelementptr { i32, i64 }, ptr %t78, i32 0, i32 1
  %t80 = load i64, ptr %t79
  store i64 %t80, ptr %l7, !tbaa !24
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  store ptr %t85, ptr %l42, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load i32, ptr %l6, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t89, i32 %t90)
  store { i64, ptr } %t93, ptr %l46
  br label %bb17
bb17:
  %t94 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t94, ptr %l47, !tbaa !27
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"compiler/generic:AnySlot", ptr %t98, i64 %t95
  %t100 = getelementptr %"compiler/generic:AnySlot", ptr %t99, i32 0, i32 1
  %t101 = load i32, ptr %t100, !tbaa !23
  %t103 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %t102, ptr %v0, ptr %v1, ptr %t103, i32 %t101)
  call void @llvm.memmove.p0.p0.i64(ptr %l50, ptr %t102, i64 160, i1 false)
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l50, i64 160, i1 false)
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t105)
  store ptr %t107, ptr %l52
  br label %bb23
bb23:
  %t108 = load ptr, ptr %l52, !tbaa !29
  %t110 = getelementptr %"compiler/check:frame", ptr %t108, i32 0, i32 1
  %t111 = load i64, ptr %t110, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t112, ptr %v1, i64 %t111, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t112, i64 160, i1 false)
  br label %bb24
bb24:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l55, i64 160, i1 false)
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f494bb64cf9470cb_fc1fe1776461b86f)
  unreachable
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i64
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i1
  %l66 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca i64
  %l98 = alloca { i64, ptr }
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l101 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca %"compiler/source:Span"
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l109 = alloca i64
  %l112 = alloca ptr
  %l115 = alloca ptr
  %l120 = alloca i32
  %l121 = alloca i64
  %l123 = alloca ptr
  %l127 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca i64
  %l140 = alloca %"compiler/generic:Context"
  %l142 = alloca %"compiler/generic:Context"
  %l147 = alloca ptr
  %l148 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l157 = alloca ptr
  %l159 = alloca ptr
  %rv = alloca ptr
  %t249 = alloca %"compiler/generic:Context", align 8
  %t404 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 23
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp ne i32 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l29, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l4, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l34
  br label %bb3
bb2:
  store ptr null, ptr %l27, !tbaa !29
  br label %bb5
bb3:
  %t26 = load ptr, ptr %l29, !tbaa !29
  %t27 = load i32, ptr %l34, !tbaa !23
  %t28 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store ptr %t28, ptr %l35
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l35, !tbaa !29
  store ptr %t29, ptr %l27, !tbaa !29
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l27, !tbaa !29
  store ptr %t30, ptr %l5, !tbaa !29
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = icmp sle i64 0, 1152921504606846975
  br i1 %t33, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_bc2b949bbef92b23_ac5d28fb0edf1ff)
  unreachable
bb8:
  %t35 = mul i64 0, 8
  %t36 = insertvalue { i64, ptr } undef, i64 0, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_bc2b949bbef92b23_ac5d28fb0edf1ff)
  unreachable
bb10:
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = getelementptr %"compiler/ast:TypeDecl", ptr %t45, i32 0, i32 3
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  %t52 = xor i1 %t50, true
  store i1 %t52, ptr %l42, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l42, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/ast:TypeDecl", ptr %t55, i32 0, i32 3
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l7, !tbaa !29
  %t60 = load ptr, ptr %l7, !tbaa !29
  store ptr %t60, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t61 = load ptr, ptr %l49, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb15, label %bb16
bb14:
  br label %bb26
bb15:
  %t64 = load ptr, ptr %l49, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 5}
  %t67 = icmp eq i64 %t65, 0
  store i1 %t67, ptr %l50, !tbaa !21
  br label %bb16
bb16:
  %t68 = load i1, ptr %l50, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t71 = getelementptr { i64, [6 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { ptr }, ptr %t71, i32 0, i32 0
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l8, !tbaa !29
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t75 = load ptr, ptr %l8, !tbaa !29
  %t77 = getelementptr %"compiler/ast:StructBody", ptr %t75, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l6, !tbaa !27
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
  call void @__olang_check_failed(ptr @olang_loc_fc391d98a693d1b5_39c844f8cb4c6229)
  unreachable
bb25:
  br label %bb26
bb26:
  %t80 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t84 = icmp eq i64 %t82, 0
  br i1 %t84, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb29
bb28:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t92 = icmp sge i64 %t86, %t89
  store i1 %t92, ptr %l60, !tbaa !21
  br label %bb29
bb29:
  %t94 = load i1, ptr %l60, !tbaa !21
  br i1 %t94, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb32
bb31:
  %t95 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t95, ptr %l66, !tbaa !27
  %t96 = load i64, ptr %l2, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr ptr, ptr %t99, i64 %t96
  %t101 = load ptr, ptr %t100, !tbaa !39
  %t103 = getelementptr %"compiler/ast:Param", ptr %t101, i32 0, i32 3
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  store i1 %t106, ptr %l65, !tbaa !21
  br label %bb32
bb32:
  %t108 = load i1, ptr %l65, !tbaa !21
  br i1 %t108, label %bb33, label %bb34
bb33:
  store i64 0, ptr %l9, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t109, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  store i64 %t113, ptr %l12, !tbaa !24
  br label %bb35
bb34:
  br label %bb55
bb35:
  %t115 = load i64, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb36, label %bb37
bb36:
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t123 = load i64, ptr %l11, !tbaa !24
  store i64 %t123, ptr %l13, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t125, ptr %l79, !tbaa !27
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr ptr, ptr %t129, i64 %t126
  %t131 = load ptr, ptr %t130, !tbaa !39
  %t135 = getelementptr %"compiler/ast:Param", ptr %t131, i32 0, i32 3
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t138 = icmp eq ptr %t136, null
  br i1 %t138, label %bb39, label %bb40
bb39:
  %t140 = load i64, ptr %l13, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l9, !tbaa !24
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t144 = load i64, ptr %l11, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l11, !tbaa !24
  br label %bb35
bb43:
  %t148 = load i64, ptr %l9, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t154 = icmp eq i64 %t148, %t151
  br i1 %t154, label %bb44, label %bb45
bb44:
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l93, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t157, ptr %l94
  %t158 = load i64, ptr %l9, !tbaa !24
  store i64 %t158, ptr %l95, !tbaa !24
  %t159 = load i64, ptr %l9, !tbaa !24
  %t161 = icmp eq i64 %t159, 1
  br i1 %t161, label %bb46, label %bb47
bb45:
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l102, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t164, ptr %l103
  %t165 = load i64, ptr %l9, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = load i64, ptr %l2, !tbaa !24
  %t173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %v0, i64 %t165, i64 %t168, i64 %t169)
  store %"compiler/diagmsg:Msg" %t173, ptr %l108
  br label %bb51
bb46:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l98, !tbaa !27
  br label %bb48
bb47:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l98, !tbaa !27
  br label %bb48
bb48:
  %t174 = load i64, ptr %l2, !tbaa !24
  %t175 = load i64, ptr %l95, !tbaa !24
  %t176 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t178 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 %t175, { i64, ptr } %t176, i64 %t174)
  store %"compiler/diagmsg:Msg" %t178, ptr %l100
  br label %bb49
bb49:
  %t179 = load ptr, ptr %l93, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l94
  %t181 = load %"compiler/diagmsg:Msg", ptr %l100
  %t182 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t179, %"compiler/source:Span" %t180, %"compiler/diagmsg:Msg" %t181)
  store i64 %t182, ptr %l101
  br label %bb50
bb50:
  br label %bb53
bb51:
  %t183 = load ptr, ptr %l102, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l103
  %t185 = load %"compiler/diagmsg:Msg", ptr %l108
  %t186 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184, %"compiler/diagmsg:Msg" %t185)
  store i64 %t186, ptr %l109
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t187, %"compiler/source:Span" %t188)
  store ptr %t191, ptr %l112
  br label %bb54
bb54:
  %t192 = load ptr, ptr %l112, !tbaa !29
  store ptr %t192, ptr %rv
  br label %ret
bb55:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/check:Checker", ptr %t193, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !29
  %t198 = getelementptr %"compiler/generic:Program", ptr %t196, i32 0, i32 2
  store ptr %t198, ptr %l115, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 2
  %t205 = load i32, ptr %l4, !tbaa !23
  %t208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t204, i32 %t205)
  store i32 %t208, ptr %l120
  br label %bb56
bb56:
  %t209 = load ptr, ptr %l115, !tbaa !29
  %t210 = load i32, ptr %l120, !tbaa !23
  %t211 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t209, i32 %t210)
  store i64 %t211, ptr %l121
  br label %bb57
bb57:
  %t212 = load i64, ptr %l121, !tbaa !24
  store i64 %t212, ptr %l15, !tbaa !24
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t213)
  store ptr %t215, ptr %l123
  br label %bb58
bb58:
  %t216 = load ptr, ptr %l123, !tbaa !29
  %t218 = getelementptr %"compiler/check:frame", ptr %t216, i32 0, i32 2
  %t219 = load i64, ptr %t218, !tbaa !24
  store i64 %t219, ptr %l16, !tbaa !24
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t221)
  store ptr %t223, ptr %l127
  br label %bb59
bb59:
  %t224 = load ptr, ptr %l127, !tbaa !29
  store ptr %t224, ptr %l17, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l17, !tbaa !29
  %t228 = getelementptr %"compiler/check:frame", ptr %t226, i32 0, i32 0
  %t229 = load i64, ptr %t228, !tbaa !24
  %t230 = load i64, ptr %l15, !tbaa !24
  %t231 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t236 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t225, i64 %t229, i64 %t230, i32 %t231, i32 0)
  store ptr %t236, ptr %l133
  br label %bb60
bb60:
  %t237 = load ptr, ptr %l133, !tbaa !29
  store ptr %t237, ptr %l18, !tbaa !29
  %t238 = load ptr, ptr %l18, !tbaa !29
  store ptr %t238, ptr %l134, !tbaa !29
  %t239 = ptrtoint ptr %v0 to i64
  store i64 %t239, ptr %l135, !tbaa !24
  %t240 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t240, label %bb61, label %bb62
bb61:
  %t242 = call ptr @__olang_region_make(ptr %v0)
  %t243 = ptrtoint ptr %t242 to i64
  store i64 %t243, ptr %l135, !tbaa !24
  br label %bb62
bb62:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t248 = load i32, ptr %l4, !tbaa !23
  %t250 = load i64, ptr %l135
  %t251 = inttoptr i64 %t250 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %t249, ptr %v0, ptr %t251, ptr %t247, i32 %t248)
  call void @llvm.memmove.p0.p0.i64(ptr %l140, ptr %t249, i64 160, i1 false)
  br label %bb63
bb63:
  %t254 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t254, label %bb64, label %bb65
bb64:
  %t256 = load i64, ptr %l135
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = getelementptr %"compiler/generic:Context", ptr %l140, i32 0, i32 3
  %t259 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t258, i32 0, i32 2
  %t260 = load { i64, ptr }, ptr %t259
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = call ptr @__olang_region_or(ptr %t261, ptr null)
  %t263 = icmp ne ptr %t262, null
  %t264 = select i1 %t263, ptr %t262, ptr null
  %t265 = getelementptr %"compiler/generic:Context", ptr %l140, i32 0, i32 3
  %t266 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t265, i32 0, i32 1
  %t267 = load { i64, ptr }, ptr %t266
  %t268 = extractvalue { i64, ptr } %t267, 1
  %t269 = call ptr @__olang_region_or(ptr %t268, ptr null)
  %t270 = icmp ne ptr %t269, null
  %t271 = select i1 %t270, ptr %t269, ptr %t264
  %t272 = getelementptr %"compiler/generic:Context", ptr %l140, i32 0, i32 3
  %t273 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t272, i32 0, i32 0
  %t274 = load { i64, ptr }, ptr %t273
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = call ptr @__olang_region_or(ptr %t275, ptr null)
  %t277 = icmp ne ptr %t276, null
  %t278 = select i1 %t277, ptr %t276, ptr %t271
  %t279 = getelementptr %"compiler/generic:Context", ptr %l140, i32 0, i32 2
  %t280 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t279, i32 0, i32 2
  %t281 = load { i64, ptr }, ptr %t280
  %t282 = extractvalue { i64, ptr } %t281, 1
  %t283 = call ptr @__olang_region_or(ptr %t282, ptr null)
  %t284 = icmp ne ptr %t283, null
  %t285 = select i1 %t284, ptr %t283, ptr %t278
  %t286 = getelementptr %"compiler/generic:Context", ptr %l140, i32 0, i32 2
  %t287 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t286, i32 0, i32 1
  %t288 = load { i64, ptr }, ptr %t287
  %t289 = extractvalue { i64, ptr } %t288, 1
  %t290 = call ptr @__olang_region_or(ptr %t289, ptr null)
  %t291 = icmp ne ptr %t290, null
  %t292 = select i1 %t291, ptr %t290, ptr %t285
  %t293 = getelementptr %"compiler/generic:Context", ptr %l140, i32 0, i32 2
  %t294 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t293, i32 0, i32 0
  %t295 = load { i64, ptr }, ptr %t294
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = call ptr @__olang_region_or(ptr %t296, ptr null)
  %t298 = icmp ne ptr %t297, null
  %t299 = select i1 %t298, ptr %t297, ptr %t292
  %t300 = icmp eq ptr %t299, %t257
  call void @__olang_region_settle(ptr %t257, i1 %t300)
  br label %bb65
bb65:
  %t301 = load ptr, ptr %l134, !tbaa !29
  %t302 = getelementptr %"compiler/check:frame", ptr %t301, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l142, ptr %t302, i64 160, i1 false)
  %t303 = load ptr, ptr %l134, !tbaa !29
  %t304 = getelementptr %"compiler/check:frame", ptr %t303, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t304, ptr %l140, i64 160, i1 false)
  %t305 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t305, label %bb66, label %bb67
bb66:
  %t307 = getelementptr %"compiler/generic:Context", ptr %l142, i32 0, i32 3
  %t308 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t307, i32 0, i32 2
  %t309 = load { i64, ptr }, ptr %t308
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = call ptr @__olang_region_or(ptr %t310, ptr null)
  %t312 = icmp ne ptr %t311, null
  %t313 = select i1 %t312, ptr %t311, ptr null
  %t314 = getelementptr %"compiler/generic:Context", ptr %l142, i32 0, i32 3
  %t315 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t314, i32 0, i32 1
  %t316 = load { i64, ptr }, ptr %t315
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = call ptr @__olang_region_or(ptr %t317, ptr null)
  %t319 = icmp ne ptr %t318, null
  %t320 = select i1 %t319, ptr %t318, ptr %t313
  %t321 = getelementptr %"compiler/generic:Context", ptr %l142, i32 0, i32 3
  %t322 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t321, i32 0, i32 0
  %t323 = load { i64, ptr }, ptr %t322
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = call ptr @__olang_region_or(ptr %t324, ptr null)
  %t326 = icmp ne ptr %t325, null
  %t327 = select i1 %t326, ptr %t325, ptr %t320
  %t328 = getelementptr %"compiler/generic:Context", ptr %l142, i32 0, i32 2
  %t329 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t328, i32 0, i32 2
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr %t327
  %t335 = getelementptr %"compiler/generic:Context", ptr %l142, i32 0, i32 2
  %t336 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t335, i32 0, i32 1
  %t337 = load { i64, ptr }, ptr %t336
  %t338 = extractvalue { i64, ptr } %t337, 1
  %t339 = call ptr @__olang_region_or(ptr %t338, ptr null)
  %t340 = icmp ne ptr %t339, null
  %t341 = select i1 %t340, ptr %t339, ptr %t334
  %t342 = getelementptr %"compiler/generic:Context", ptr %l142, i32 0, i32 2
  %t343 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t342, i32 0, i32 0
  %t344 = load { i64, ptr }, ptr %t343
  %t345 = extractvalue { i64, ptr } %t344, 1
  %t346 = call ptr @__olang_region_or(ptr %t345, ptr null)
  %t347 = icmp ne ptr %t346, null
  %t348 = select i1 %t347, ptr %t346, ptr %t341
  call void @__olang_region_drop(ptr %t348)
  store %"compiler/generic:Context" zeroinitializer, ptr %l142
  br label %bb67
bb67:
  %t349 = load ptr, ptr %l18, !tbaa !29
  %t350 = load ptr, ptr %l17, !tbaa !29
  %t352 = getelementptr %"compiler/check:frame", ptr %t350, i32 0, i32 7
  %t353 = load i64, ptr %t352, !tbaa !24
  %t356 = getelementptr %"compiler/check:frame", ptr %t349, i32 0, i32 7
  store i64 %t353, ptr %t356, !tbaa !24
  %t357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t357, ptr %l147, !tbaa !29
  %t358 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t358, ptr %l148, !tbaa !27
  %t359 = load i64, ptr %l2, !tbaa !24
  %t361 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = getelementptr ptr, ptr %t362, i64 %t359
  %t364 = load ptr, ptr %t363, !tbaa !39
  %t366 = getelementptr %"compiler/ast:Param", ptr %t364, i32 0, i32 3
  %t367 = load ptr, ptr %t366, !tbaa !29
  store ptr %t367, ptr %l19, !tbaa !29
  %t369 = load ptr, ptr %l19, !tbaa !29
  %t371 = icmp eq ptr %t369, null
  br i1 %t371, label %bb68, label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_ff2084232290eae7_203579eb66e705cb)
  unreachable
bb69:
  br label %bb70
bb70:
  %t373 = load ptr, ptr %l19, !tbaa !29
  store ptr %t373, ptr %l154, !tbaa !29
  %t375 = load ptr, ptr %l154, !tbaa !29
  %t376 = call ptr @__olang_scope_of(ptr %t375, ptr null)
  %t377 = ptrtoint ptr %t376 to i64
  %t379 = inttoptr i64 %t377 to ptr
  %t380 = load ptr, ptr %l147, !tbaa !29
  %t381 = load ptr, ptr %l154, !tbaa !29
  %t383 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %t379, ptr %v1, ptr %t380, ptr %t381, i32 %a3)
  store ptr %t383, ptr %l157
  br label %bb71
bb71:
  %t384 = load ptr, ptr %l157, !tbaa !29
  store ptr %t384, ptr %l20, !tbaa !29
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t385)
  store ptr %t387, ptr %l159
  br label %bb72
bb72:
  %t388 = load ptr, ptr %l159, !tbaa !29
  %t390 = getelementptr %"compiler/check:frame", ptr %t388, i32 0, i32 2
  %t391 = load i64, ptr %t390, !tbaa !24
  store i64 %t391, ptr %l21, !tbaa !24
  %t393 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t393)
  br label %bb73
bb73:
  %t395 = load i64, ptr %l21, !tbaa !24
  %t396 = load i64, ptr %l16, !tbaa !24
  %t399 = icmp ne i64 %t395, %t396
  br i1 %t399, label %bb74, label %bb75
bb74:
  %t401 = load %"compiler/source:Span", ptr %l1
  %t402 = load i64, ptr %l21, !tbaa !24
  %t403 = load ptr, ptr %l20, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t404
  %t405 = getelementptr { i64, [5 x i64] }, ptr %t404, i32 0, i32 0
  store i64 17, ptr %t405
  %t407 = insertvalue { %"compiler/source:Span", i64, ptr } undef, %"compiler/source:Span" %t401, 0
  %t409 = insertvalue { %"compiler/source:Span", i64, ptr } %t407, i64 %t402, 1
  %t411 = insertvalue { %"compiler/source:Span", i64, ptr } %t409, ptr %t403, 2
  %t412 = getelementptr { i64, [5 x i64] }, ptr %t404, i32 0, i32 1
  store { %"compiler/source:Span", i64, ptr } %t411, ptr %t412
  %t413 = load { i64, [5 x i64] }, ptr %t404
  %t415 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t413, ptr %t415
  store ptr %t415, ptr %rv
  br label %ret
bb75:
  br label %bb76
bb76:
  %t417 = load ptr, ptr %l20, !tbaa !29
  store ptr %t417, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i1
  %l13 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @compiler_2fcheck_2ehasNamed(ptr %v1, { i64, ptr } %t1)
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store ptr %t16, ptr %l13
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l13, !tbaa !29
  store ptr %t17, ptr %l3, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/ast:TypeDecl", ptr %t24, i32 0, i32 3
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeDecl", ptr %t34, i32 0, i32 3
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l4, !tbaa !29
  %t39 = load ptr, ptr %l4, !tbaa !29
  store ptr %t39, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb11, label %bb12
bb10:
  br label %bb25
bb11:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 5}
  %t46 = icmp eq i64 %t44, 0
  store i1 %t46, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr { i64, [6 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { ptr }, ptr %t50, i32 0, i32 0
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/ast:StructBody", ptr %t55, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l34, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  %t67 = load i32, ptr %l1, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t70, ptr %l39
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l34, !tbaa !29
  %t72 = load i32, ptr %l39, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t71, i32 %t72)
  store { i64, ptr } %t73, ptr %l40
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l30, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t78 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t74, { i64, ptr } %t75, { i64, ptr } %t76, { i64, ptr } %t77)
  store { i64, ptr } %t78, ptr %l41
  br label %bb18
bb18:
  %t79 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_7f8223142f689eb4_f934e4a817092f38)
  unreachable
bb24:
  br label %bb25
bb25:
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t80, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i64
  %l13 = alloca i32
  %rv = alloca i32
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
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t6, i32 %t7)
  store i64 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp sgt i64 %t11, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i32 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t20, i32 %t21, i32 0)
  store i32 %t24, ptr %l13
  br label %bb5
bb5:
  %t25 = load i32, ptr %l13, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropTaken(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l46 = alloca i32
  %l50 = alloca i32
  %l61 = alloca i64
  %l63 = alloca i64
  %l68 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load i64, ptr %l2, !tbaa !24
  store i64 %t3, ptr %l5, !tbaa !24
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t5)
  store i64 %t7, ptr %l19
  br label %bb2
bb2:
  %t8 = load i64, ptr %l19, !tbaa !24
  store i64 %t8, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l7, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l9, !tbaa !24
  %t38 = load i64, ptr %l8, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t55, i64 %t53)
  store i32 %t59, ptr %l46
  br label %bb13
bb13:
  %t60 = load i32, ptr %l46, !tbaa !23
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v2, ptr %a0, i32 %t60, ptr %a3)
  store i32 %t67, ptr %l50
  br label %bb14
bb14:
  %t68 = load i32, ptr %l50, !tbaa !23
  store i32 %t68, ptr %l12, !tbaa !23
  %t69 = load i32, ptr %l12, !tbaa !23
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t73 = icmp ne i32 %t69, %t70
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t75 = load i32, ptr %l12, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l4, i32 %t75)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l9, !tbaa !24
  br label %bb9
bb20:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t83 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t82, i64 %t83)
  br label %bb21
bb21:
  store ptr %l4, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb22
bb22:
  %t87 = load i64, ptr %l14, !tbaa !24
  store i64 %t87, ptr %l61, !tbaa !24
  %t88 = load ptr, ptr %l13, !tbaa !29
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t88)
  store i64 %t90, ptr %l63
  br label %bb23
bb23:
  %t91 = load i64, ptr %l61, !tbaa !24
  %t92 = load i64, ptr %l63, !tbaa !24
  %t93 = icmp slt i64 %t91, %t92
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  br label %bb26
bb26:
  %t97 = load ptr, ptr %l13, !tbaa !29
  %t98 = load i64, ptr %l14, !tbaa !24
  %t101 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t97, i64 %t98)
  store i32 %t101, ptr %l68
  br label %bb27
bb27:
  %t102 = load i32, ptr %l68, !tbaa !23
  %t103 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t103, i32 %t102)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t107 = load i64, ptr %l14, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l14, !tbaa !24
  br label %bb22
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternParam(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i1
  %l16 = alloca i32
  %l19 = alloca i1
  %l25 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load i32, ptr %l1, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l11
  br label %bb5
bb5:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l16
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t26 = load i32, ptr %l16, !tbaa !23
  store i32 %t26, ptr %l2, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t27, i32 %t28, i64 0)
  store i1 %t31, ptr %l19
  br label %bb9
bb9:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l25
  br label %bb14
bb14:
  %t44 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t46 = trunc i64 19 to i32
  %t47 = icmp eq i32 %t44, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l34
  br label %bb18
bb18:
  %t62 = load i32, ptr %l34, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t63, i32 %t62)
  store i1 %t67, ptr %l37
  br label %bb19
bb19:
  %t68 = load i1, ptr %l37, !tbaa !21
  store i1 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l41 = alloca i64
  %l44 = alloca i64
  %l63 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l77 = alloca { i64, [2 x i64] }
  %l82 = alloca i32
  %l85 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t133 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i32, ptr %l2, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t7 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t1, i64 %t4)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l16
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l3
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 27
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t15 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t11, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l22
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l21
  br label %bb2
bb2:
  %t20 = load i64, ptr %l21, !tbaa !24
  store i64 %t20, ptr %l17, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l17, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i32, ptr %l2, !tbaa !23
  %t37 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t31, i64 %t32, i32 %t33)
  store ptr %t37, ptr %l30
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l30, !tbaa !29
  store ptr %t38, ptr %l5, !tbaa !29
  %t39 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t39, ptr %l31
  br label %bb10
bb10:
  %t40 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t40, ptr %l6
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i64 0, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr %"compiler/ast:VarDecl", ptr %t47, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb13, label %bb14
bb12:
  br label %bb28
bb13:
  %t60 = load i64, ptr %l9, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb18
bb15:
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = sub i64 %t72, 1
  %t75 = load i64, ptr %l9, !tbaa !24
  %t78 = sdiv i64 %t74, %t75
  store i64 %t78, ptr %l44, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l44, !tbaa !24
  store i64 %t80, ptr %l41, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l41, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  %t82 = load i64, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb20, label %bb21
bb20:
  br label %bb27
bb21:
  br label %bb22
bb22:
  %t90 = load i64, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l11, !tbaa !24
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = mul i64 %t91, %t92
  %t98 = add i64 %t90, %t95
  store i64 %t98, ptr %l12, !tbaa !24
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t102 = getelementptr %"compiler/ast:VarDecl", ptr %t100, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l63, !tbaa !27
  %t104 = load i64, ptr %l12, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i32, ptr %t107, i64 %t104
  %t109 = load i32, ptr %t108, !tbaa !33
  %t110 = load i32, ptr %l2, !tbaa !23
  %t113 = icmp eq i32 %t109, %t110
  br i1 %t113, label %bb23, label %bb24
bb23:
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr %"compiler/ast:VarDecl", ptr %t115, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l69, !tbaa !27
  %t119 = load i64, ptr %l12, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr %"compiler/source:Span", ptr %t122, i64 %t119
  %t124 = load %"compiler/source:Span", ptr %t123
  store %"compiler/source:Span" %t124, ptr %l6
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l11, !tbaa !24
  br label %bb19
bb27:
  br label %bb28
bb28:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l74, !tbaa !29
  %t131 = load i64, ptr %l1, !tbaa !24
  %t132 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [2 x i64] }, ptr %t133, i32 0, i32 0
  store i64 6, ptr %t134
  %t136 = insertvalue { i64, i32 } undef, i64 %t131, 0
  %t138 = insertvalue { i64, i32 } %t136, i32 %t132, 1
  %t139 = getelementptr { i64, [2 x i64] }, ptr %t133, i32 0, i32 1
  store { i64, i32 } %t138, ptr %t139
  %t140 = load { i64, [2 x i64] }, ptr %t133
  store { i64, [2 x i64] } %t140, ptr %l77
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t146, i32 0, i32 %t147, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t150, ptr %l82
  br label %bb29
bb29:
  %t151 = load i64, ptr %l1, !tbaa !24
  %t152 = load %"compiler/source:Span", ptr %l6
  %t153 = load ptr, ptr %l74, !tbaa !29
  %t154 = load { i64, [2 x i64] }, ptr %l77
  %t155 = load i32, ptr %l82, !tbaa !23
  %t158 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t153, { i64, [2 x i64] } %t154, i32 %t155, i64 %t151, %"compiler/source:Span" %t152)
  store i64 %t158, ptr %l85
  br label %bb30
bb30:
  %t159 = load i64, ptr %l85, !tbaa !24
  store i64 %t159, ptr %l4, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 27
  %t163 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t164 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t162, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t163, i64 %t164)
  br label %bb31
bb31:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %t168, i64 %t169)
  br label %bb32
bb32:
  %t172 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t172, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l16 = alloca i32
  %l23 = alloca i64
  %l27 = alloca i1
  %l36 = alloca i32
  %l39 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i1
  %l52 = alloca ptr
  %l57 = alloca i32
  %l59 = alloca i1
  %l62 = alloca ptr
  %l67 = alloca i32
  %l69 = alloca i1
  %l75 = alloca i1
  %l80 = alloca i32
  %l83 = alloca ptr
  %l88 = alloca i32
  %l90 = alloca i1
  %l93 = alloca ptr
  %l98 = alloca i32
  %l100 = alloca i1
  %l103 = alloca ptr
  %l108 = alloca i32
  %l111 = alloca i1
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
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l7, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load i32, ptr %l16, !range !{i32 0, i32 33}
  store i32 %t23, ptr %l3
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t26 = trunc i64 20 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l1, !tbaa !23
  %t38 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t34, i32 %t35)
  store i64 %t38, ptr %l23
  br label %bb11
bb11:
  %t39 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t40 = load i64, ptr %l23, !tbaa !24
  %t42 = and i64 %t40, %t39
  %t44 = icmp ne i64 %t42, 0
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l27, !tbaa !21
  store i1 %t50, ptr %rv
  br label %ret
bb15:
  %t51 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t53 = trunc i64 19 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb25
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l36
  br label %bb19
bb19:
  %t66 = load i32, ptr %l36, !tbaa !23
  %t67 = icmp eq i32 %t66, 0
  br i1 %t67, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l1, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l44
  br label %bb23
bb23:
  %t81 = load i64, ptr %l2, !tbaa !24
  %t83 = add i64 %t81, 1
  %t84 = load ptr, ptr %l39, !tbaa !29
  %t85 = load i32, ptr %l44, !tbaa !23
  %t87 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %t84, i32 %t85, i64 %t83)
  store i1 %t87, ptr %l47
  br label %bb24
bb24:
  %t88 = load i1, ptr %l47, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb25:
  %t89 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t91 = trunc i64 22 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  %t94 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t96 = trunc i64 23 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l52, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = load i32, ptr %l1, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t105, i32 %t106)
  store i32 %t109, ptr %l57
  br label %bb31
bb31:
  %t110 = load i64, ptr %l2, !tbaa !24
  %t111 = load ptr, ptr %l52, !tbaa !29
  %t112 = load i32, ptr %l57, !tbaa !23
  %t114 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsWritable(ptr %v0, ptr %t111, i32 %t112, i64 %t110)
  store i1 %t114, ptr %l59
  br label %bb32
bb32:
  %t115 = load i1, ptr %l59, !tbaa !21
  store i1 %t115, ptr %rv
  br label %ret
bb33:
  %t116 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t118 = trunc i64 24 to i32
  %t119 = icmp eq i32 %t116, %t118
  br i1 %t119, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l62, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 2
  %t128 = load i32, ptr %l1, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l67
  br label %bb37
bb37:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t133 = load ptr, ptr %l62, !tbaa !29
  %t134 = load i32, ptr %l67, !tbaa !23
  %t136 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsWritable(ptr %v0, ptr %t133, i32 %t134, i64 %t132)
  store i1 %t136, ptr %l69
  br label %bb38
bb38:
  %t137 = load i1, ptr %l69, !tbaa !21
  store i1 %t137, ptr %rv
  br label %ret
bb39:
  %t138 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t140 = trunc i64 18 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb63
bb42:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l1, !tbaa !23
  %t150 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l75
  br label %bb43
bb43:
  %t151 = load i1, ptr %l75, !tbaa !21
  %t152 = xor i1 %t151, true
  br i1 %t152, label %bb44, label %bb45
bb44:
  store i1 false, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l1, !tbaa !23
  %t159 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l80
  br label %bb47
bb47:
  %t160 = load i32, ptr %l80, !range !{i32 0, i32 6}
  store i32 %t160, ptr %l4
  %t161 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t163 = trunc i64 0 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb48, label %bb49
bb48:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l83, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l1, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l88
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t177 = load i64, ptr %l2, !tbaa !24
  %t178 = load ptr, ptr %l83, !tbaa !29
  %t179 = load i32, ptr %l88, !tbaa !23
  %t181 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsWritable(ptr %v0, ptr %t178, i32 %t179, i64 %t177)
  store i1 %t181, ptr %l90
  br label %bb51
bb51:
  %t182 = load i1, ptr %l90, !tbaa !21
  store i1 %t182, ptr %rv
  br label %ret
bb52:
  %t183 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t185 = trunc i64 1 to i32
  %t186 = icmp eq i32 %t183, %t185
  br i1 %t186, label %bb53, label %bb54
bb53:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l93, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l1, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l98
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t199 = load i64, ptr %l2, !tbaa !24
  %t200 = load ptr, ptr %l93, !tbaa !29
  %t201 = load i32, ptr %l98, !tbaa !23
  %t203 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsWritable(ptr %v0, ptr %t200, i32 %t201, i64 %t199)
  store i1 %t203, ptr %l100
  br label %bb56
bb56:
  %t204 = load i1, ptr %l100, !tbaa !21
  store i1 %t204, ptr %rv
  br label %ret
bb57:
  %t205 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t207 = trunc i64 4 to i32
  %t208 = icmp eq i32 %t205, %t207
  br i1 %t208, label %bb58, label %bb59
bb58:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l103, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l1, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t220, ptr %l108
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t221 = load i64, ptr %l2, !tbaa !24
  %t223 = add i64 %t221, 1
  %t224 = load ptr, ptr %l103, !tbaa !29
  %t225 = load i32, ptr %l108, !tbaa !23
  %t227 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %t224, i32 %t225, i64 %t223)
  store i1 %t227, ptr %l111
  br label %bb61
bb61:
  %t228 = load i1, ptr %l111, !tbaa !21
  store i1 %t228, ptr %rv
  br label %ret
bb62:
  store i1 false, ptr %rv
  br label %ret
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store i1 false, ptr %rv
  br label %ret
bb67:
  call void @__olang_check_failed(ptr @olang_loc_7aa3345d2beba7fc_151c01b23d5f0fc0)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca ptr
  %t3 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 0
  store i64 0, ptr %t4
  %t6 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %a1, 0
  %t8 = insertvalue { %"compiler/source:Span", i32, i64 } %t6, i32 %t2, 1
  %t9 = insertvalue { %"compiler/source:Span", i32, i64 } %t8, i64 0, 2
  %t10 = getelementptr { i64, [5 x i64] }, ptr %t3, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t9, ptr %t10
  %t11 = load { i64, [5 x i64] }, ptr %t3
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t11, ptr %t13
  store ptr %t13, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCStrRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t14 = trunc i64 1 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l15
  br label %bb8
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l11, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t14 = trunc i64 0 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l15
  br label %bb8
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l11, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ekillAssigned(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:factsMark" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:factsMark"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/check:nullNarrow"
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
  %l23 = alloca %"compiler/check:errNarrow"
  %l25 = alloca ptr
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l57 = alloca %"compiler/check:nullNarrow"
  %l60 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca %"compiler/check:nullNarrow"
  %l72 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l97 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l101 = alloca ptr
  %l105 = alloca %"compiler/check:narrowed"
  %l107 = alloca %"compiler/typed:Local"
  %l108 = alloca i32
  %l112 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i64
  %l119 = alloca %"compiler/check:narrowed"
  %l120 = alloca %"compiler/check:narrowed"
  %l126 = alloca i64
  %l130 = alloca i64
  %l133 = alloca i64
  %l154 = alloca %"compiler/check:errNarrow"
  %l155 = alloca { i64, ptr }
  %l156 = alloca i32
  %l160 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i64
  %l167 = alloca %"compiler/check:errNarrow"
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %t176 = alloca i64
  %t283 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/check:factsMark" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l25
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l25, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 50
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l29
  br label %bb2
bb2:
  %t13 = load i64, ptr %l29, !tbaa !24
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
  store i64 0, ptr %l33, !tbaa !24
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
  store i64 %t38, ptr %l36, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l36, !tbaa !24
  store i64 %t40, ptr %l33, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l33, !tbaa !24
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
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l9, !tbaa !24
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 50
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store %"compiler/check:nullNarrow" %t66, ptr %l57
  br label %bb13
bb13:
  %t67 = load %"compiler/check:nullNarrow", ptr %l57
  store %"compiler/check:nullNarrow" %t67, ptr %l10
  %t68 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = getelementptr %"compiler/check:nullNarrow", ptr %l10, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t73 = call i1 @compiler_2fcheck_2eassignsName(ptr %v1, ptr %v0, { i64, ptr } %t68, { i64, ptr } %t70)
  store i1 %t73, ptr %l60
  br label %bb14
bb14:
  %t74 = load i1, ptr %l60, !tbaa !21
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 50
  store ptr %t77, ptr %l62, !tbaa !29
  %t78 = load i64, ptr %l9, !tbaa !24
  store i64 %t78, ptr %l63, !tbaa !24
  %t79 = getelementptr %"compiler/check:nullNarrow", ptr %l10, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t81 = getelementptr %"compiler/check:nullNarrow", ptr %l10, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t85 = call %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v0, { i64, ptr } %t80, i64 %t82, i1 true)
  store %"compiler/check:nullNarrow" %t85, ptr %l66
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t86 = load ptr, ptr %l62, !tbaa !29
  %t87 = load i64, ptr %l63, !tbaa !24
  %t88 = load %"compiler/check:nullNarrow", ptr %l66
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v0, ptr %t86, i64 %t87, %"compiler/check:nullNarrow" %t88)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l8, !tbaa !24
  br label %bb9
bb21:
  %t93 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 1
  %t94 = load i64, ptr %t93, !tbaa !24
  store i64 %t94, ptr %l11, !tbaa !24
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/check:frame", ptr %t96, i32 0, i32 46
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t98)
  store i64 %t100, ptr %l72
  br label %bb22
bb22:
  %t101 = load i64, ptr %l72, !tbaa !24
  store i64 %t101, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t102 = load i64, ptr %l12, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = icmp sgt i64 %t102, %t103
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = load i64, ptr %l13, !tbaa !24
  %t110 = icmp sgt i64 %t108, 0
  br i1 %t110, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb28
bb25:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = sub i64 %t112, %t113
  %t117 = load i64, ptr %l13, !tbaa !24
  %t120 = add i64 %t116, %t117
  %t122 = sub i64 %t120, 1
  %t123 = load i64, ptr %l13, !tbaa !24
  %t126 = sdiv i64 %t122, %t123
  store i64 %t126, ptr %l79, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb27
bb27:
  %t128 = load i64, ptr %l79, !tbaa !24
  store i64 %t128, ptr %l76, !tbaa !24
  br label %bb28
bb28:
  %t129 = load i64, ptr %l76, !tbaa !24
  store i64 %t129, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t130 = load i64, ptr %l15, !tbaa !24
  %t131 = load i64, ptr %l14, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb48
bb31:
  br label %bb32
bb32:
  %t138 = load i64, ptr %l11, !tbaa !24
  %t139 = load i64, ptr %l15, !tbaa !24
  %t140 = load i64, ptr %l13, !tbaa !24
  %t143 = mul i64 %t139, %t140
  %t146 = add i64 %t138, %t143
  store i64 %t146, ptr %l16, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t148, ptr %l97, !tbaa !27
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t149)
  store ptr %t151, ptr %l99
  br label %bb33
bb33:
  %t152 = load ptr, ptr %l99, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Body", ptr %t152, i32 0, i32 7
  store ptr %t154, ptr %l101, !tbaa !29
  %t155 = load ptr, ptr %l3, !tbaa !29
  %t157 = getelementptr %"compiler/check:frame", ptr %t155, i32 0, i32 46
  %t158 = load i64, ptr %l16, !tbaa !24
  %t161 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t157, i64 %t158)
  store %"compiler/check:narrowed" %t161, ptr %l105
  br label %bb34
bb34:
  %t162 = getelementptr %"compiler/check:narrowed", ptr %l105, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = load ptr, ptr %l101, !tbaa !29
  %t166 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t164, i64 %t163)
  store %"compiler/typed:Local" %t166, ptr %l107
  br label %bb35
bb35:
  %t167 = getelementptr %"compiler/typed:Local", ptr %l107, i32 0, i32 0
  %t168 = load i32, ptr %t167, !tbaa !23
  store i32 %t168, ptr %l108, !tbaa !23
  %t169 = icmp sge i64 1, 0
  br i1 %t169, label %bb36, label %bb37
bb36:
  %t171 = icmp sle i64 1, 2305843009213693951
  br i1 %t171, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_f86034c51611be78_fcb436ddf25e679c)
  unreachable
bb38:
  %t173 = mul i64 1, 4
  %t174 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t173)
  %t175 = load i32, ptr %l108, !tbaa !23
  store i64 0, ptr %t176
  br label %fill.177
fill.177:
  %t180 = load i64, ptr %t176
  %t181 = icmp slt i64 %t180, 1
  br i1 %t181, label %fillb.178, label %filld.179
fillb.178:
  %t182 = getelementptr i32, ptr %t174, i64 %t180
  store i32 %t175, ptr %t182
  %t183 = add i64 %t180, 1
  store i64 %t183, ptr %t176
  br label %fill.177
filld.179:
  %t184 = insertvalue { i64, ptr } undef, i64 1, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t174, 1
  %t186 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t188 = call i1 @compiler_2fcheck_2eassignsName(ptr %v1, ptr %s6, { i64, ptr } %t186, { i64, ptr } %t185)
  store i1 %t188, ptr %l112
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_f86034c51611be78_fcb436ddf25e679c)
  unreachable
bb40:
  %t189 = load i1, ptr %l112, !tbaa !21
  br i1 %t189, label %bb41, label %bb42
bb41:
  %t190 = load ptr, ptr %l3, !tbaa !29
  %t192 = getelementptr %"compiler/check:frame", ptr %t190, i32 0, i32 46
  store ptr %t192, ptr %l114, !tbaa !29
  %t193 = load i64, ptr %l16, !tbaa !24
  store i64 %t193, ptr %l115, !tbaa !24
  %t194 = load ptr, ptr %l3, !tbaa !29
  %t196 = getelementptr %"compiler/check:frame", ptr %t194, i32 0, i32 46
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t196, i64 %t197)
  store %"compiler/check:narrowed" %t200, ptr %l119
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t201 = load %"compiler/check:narrowed", ptr %l119
  %t202 = call %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(%"compiler/check:narrowed" %t201)
  store %"compiler/check:narrowed" %t202, ptr %l120
  br label %bb44
bb44:
  %t203 = load ptr, ptr %l114, !tbaa !29
  %t204 = load i64, ptr %l115, !tbaa !24
  %t205 = load %"compiler/check:narrowed", ptr %l120
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %t203, i64 %t204, %"compiler/check:narrowed" %t205)
  br label %bb45
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb47
bb47:
  %t206 = load i64, ptr %l15, !tbaa !24
  %t208 = add i64 %t206, 1
  store i64 %t208, ptr %l15, !tbaa !24
  br label %bb29
bb48:
  %t210 = getelementptr %"compiler/check:factsMark", ptr %l1, i32 0, i32 2
  %t211 = load i64, ptr %t210, !tbaa !24
  store i64 %t211, ptr %l17, !tbaa !24
  %t213 = load ptr, ptr %l3, !tbaa !29
  %t215 = getelementptr %"compiler/check:frame", ptr %t213, i32 0, i32 59
  %t217 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t215)
  store i64 %t217, ptr %l126
  br label %bb49
bb49:
  %t218 = load i64, ptr %l126, !tbaa !24
  store i64 %t218, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t219 = load i64, ptr %l18, !tbaa !24
  %t220 = load i64, ptr %l17, !tbaa !24
  %t223 = icmp sgt i64 %t219, %t220
  br i1 %t223, label %bb50, label %bb51
bb50:
  %t225 = load i64, ptr %l19, !tbaa !24
  %t227 = icmp sgt i64 %t225, 0
  br i1 %t227, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb55
bb52:
  %t229 = load i64, ptr %l18, !tbaa !24
  %t230 = load i64, ptr %l17, !tbaa !24
  %t233 = sub i64 %t229, %t230
  %t234 = load i64, ptr %l19, !tbaa !24
  %t237 = add i64 %t233, %t234
  %t239 = sub i64 %t237, 1
  %t240 = load i64, ptr %l19, !tbaa !24
  %t243 = sdiv i64 %t239, %t240
  store i64 %t243, ptr %l133, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb54
bb54:
  %t245 = load i64, ptr %l133, !tbaa !24
  store i64 %t245, ptr %l130, !tbaa !24
  br label %bb55
bb55:
  %t246 = load i64, ptr %l130, !tbaa !24
  store i64 %t246, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s10
  %t247 = load i64, ptr %l21, !tbaa !24
  %t248 = load i64, ptr %l20, !tbaa !24
  %t251 = icmp slt i64 %t247, %t248
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s10)
  br label %bb72
bb58:
  br label %bb59
bb59:
  %t255 = load i64, ptr %l17, !tbaa !24
  %t256 = load i64, ptr %l21, !tbaa !24
  %t257 = load i64, ptr %l19, !tbaa !24
  %t260 = mul i64 %t256, %t257
  %t263 = add i64 %t255, %t260
  store i64 %t263, ptr %l22, !tbaa !24
  %t265 = load ptr, ptr %l3, !tbaa !29
  %t267 = getelementptr %"compiler/check:frame", ptr %t265, i32 0, i32 59
  %t268 = load i64, ptr %l22, !tbaa !24
  %t271 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %t267, i64 %t268)
  store %"compiler/check:errNarrow" %t271, ptr %l154
  br label %bb60
bb60:
  %t272 = load %"compiler/check:errNarrow", ptr %l154
  store %"compiler/check:errNarrow" %t272, ptr %l23
  %t273 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t273, ptr %l155, !tbaa !27
  %t274 = getelementptr %"compiler/check:errNarrow", ptr %l23, i32 0, i32 0
  %t275 = load i32, ptr %t274, !tbaa !23
  store i32 %t275, ptr %l156, !tbaa !23
  %t276 = icmp sge i64 1, 0
  br i1 %t276, label %bb61, label %bb62
bb61:
  %t278 = icmp sle i64 1, 2305843009213693951
  br i1 %t278, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_ac0ec5199a643ee5_806d52c3f6989969)
  unreachable
bb63:
  %t280 = mul i64 1, 4
  %t281 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t280)
  %t282 = load i32, ptr %l156, !tbaa !23
  store i64 0, ptr %t283
  br label %fill.284
fill.284:
  %t287 = load i64, ptr %t283
  %t288 = icmp slt i64 %t287, 1
  br i1 %t288, label %fillb.285, label %filld.286
fillb.285:
  %t289 = getelementptr i32, ptr %t281, i64 %t287
  store i32 %t282, ptr %t289
  %t290 = add i64 %t287, 1
  store i64 %t290, ptr %t283
  br label %fill.284
filld.286:
  %t291 = insertvalue { i64, ptr } undef, i64 1, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t281, 1
  %t293 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t295 = call i1 @compiler_2fcheck_2eassignsName(ptr %v1, ptr %s10, { i64, ptr } %t293, { i64, ptr } %t292)
  store i1 %t295, ptr %l160
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_ac0ec5199a643ee5_806d52c3f6989969)
  unreachable
bb65:
  %t296 = load i1, ptr %l160, !tbaa !21
  br i1 %t296, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s11
  %t297 = load ptr, ptr %l3, !tbaa !29
  %t299 = getelementptr %"compiler/check:frame", ptr %t297, i32 0, i32 59
  store ptr %t299, ptr %l162, !tbaa !29
  %t300 = load i64, ptr %l22, !tbaa !24
  store i64 %t300, ptr %l163, !tbaa !24
  %t301 = getelementptr %"compiler/check:errNarrow", ptr %l23, i32 0, i32 0
  %t302 = load i32, ptr %t301, !tbaa !23
  %t303 = getelementptr %"compiler/check:errNarrow", ptr %l23, i32 0, i32 1
  %t304 = load i32, ptr %t303, !tbaa !23
  %t305 = getelementptr %"compiler/check:errNarrow", ptr %l23, i32 0, i32 2
  %t306 = load i64, ptr %t305, !tbaa !24
  %t310 = call %"compiler/check:errNarrow" @compiler_2fcheck_3aerrNarrow_2ector(ptr %s11, i32 %t302, i32 %t304, i64 %t306, i1 true)
  store %"compiler/check:errNarrow" %t310, ptr %l167
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t311 = load ptr, ptr %l162, !tbaa !29
  %t312 = load i64, ptr %l163, !tbaa !24
  %t313 = load %"compiler/check:errNarrow", ptr %l167
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eSetA_H34a7475a189e9b126454728216b32261(ptr %v0, ptr %t311, i64 %t312, %"compiler/check:errNarrow" %t313)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s11)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb71:
  %t314 = load i64, ptr %l21, !tbaa !24
  %t316 = add i64 %t314, 1
  store i64 %t316, ptr %l21, !tbaa !24
  br label %bb56
bb72:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l20 = alloca ptr
  %t23 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t1, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
  store ptr %t11, ptr %l13
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l13, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l14, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t14, ptr %l15
  store ptr %t12, ptr %l16, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l1
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountPost(ptr %v0, ptr %v0, ptr %t16, %"compiler/source:Span" %t17, i64 %a2)
  store ptr %t22, ptr %l20
  br label %bb2
bb2:
  store { i64, [3 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [3 x i64] }, ptr %t23, i32 0, i32 0
  store i64 4, ptr %t24
  %t25 = load %"compiler/source:Span", ptr %l15
  %t26 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t25, 0
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = insertvalue { %"compiler/source:Span", ptr, ptr } %t26, ptr %t27, 1
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = insertvalue { %"compiler/source:Span", ptr, ptr } %t28, ptr %t29, 2
  %t31 = getelementptr { i64, [3 x i64] }, ptr %t23, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t30, ptr %t31
  %t32 = load { i64, [3 x i64] }, ptr %t23
  %t34 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t32, ptr %t34
  %t35 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t35, ptr %t34)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneUnType(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l13 = alloca i32
  %l18 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i32
  %l41 = alloca i32
  %l47 = alloca i1
  %l48 = alloca i32
  %l53 = alloca i1
  %l54 = alloca i32
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr %l2, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t11 = trunc i64 48 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i32, ptr %l2, !tbaa !23
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t18 = icmp eq i32 %t14, %t15
  br i1 %t18, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t20, ptr %l13, !tbaa !23
  br label %bb8
bb7:
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t22, ptr %l13, !tbaa !23
  br label %bb8
bb8:
  %t24 = load i32, ptr %l13, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l18
  br label %bb10
bb10:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l22
  br label %bb13
bb12:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb18
bb13:
  %t36 = load i1, ptr %l22, !tbaa !21
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l27
  br label %bb16
bb15:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb17
bb16:
  %t45 = load i1, ptr %l27, !tbaa !21
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l23, !tbaa !21
  %t47 = xor i1 %t46, true
  store i1 %t47, ptr %l19, !tbaa !21
  br label %bb18
bb18:
  %t49 = load i1, ptr %l19, !tbaa !21
  br i1 %t49, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  store i32 %t51, ptr %l30, !tbaa !23
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t54 = trunc i64 69 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb21, label %bb22
bb20:
  br label %bb29
bb21:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb23
bb23:
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = load i32, ptr %l30, !tbaa !23
  %t59 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t60 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s3, ptr %t57, i32 %t58, { i64, ptr } %t59, i64 0)
  store i64 %t60, ptr %l34
  br label %bb24
bb24:
  %t61 = load i64, ptr %l34, !tbaa !24
  store i64 %t61, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = icmp sge i64 %t62, 0
  br i1 %t64, label %bb25, label %bb26
bb25:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l3, !tbaa !24
  %t68 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t66, i64 %t67, i32 %t68)
  store i32 %t72, ptr %l41
  br label %bb27
bb26:
  %t73 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t73, ptr %l37, !tbaa !23
  br label %bb28
bb27:
  %t75 = load i32, ptr %l41, !tbaa !23
  store i32 %t75, ptr %l37, !tbaa !23
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  %t76 = load i32, ptr %l37, !tbaa !23
  store i32 %t76, ptr %rv
  br label %ret
bb29:
  %t77 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t79 = trunc i64 69 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb30, label %bb31
bb30:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t82, i32 %t83)
  store i1 %t86, ptr %l47
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t87 = load i1, ptr %l47, !tbaa !21
  br i1 %t87, label %bb33, label %bb34
bb33:
  %t88 = load i32, ptr %l2, !tbaa !23
  store i32 %t88, ptr %l48, !tbaa !23
  br label %bb35
bb34:
  %t90 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t90, ptr %l48, !tbaa !23
  br label %bb35
bb35:
  %t92 = load i32, ptr %l48, !tbaa !23
  store i32 %t92, ptr %rv
  br label %ret
bb36:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l2, !tbaa !23
  %t97 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t93, i32 %t94)
  store i1 %t97, ptr %l53
  br label %bb37
bb37:
  %t98 = load i1, ptr %l53, !tbaa !21
  br i1 %t98, label %bb38, label %bb39
bb38:
  %t99 = load i32, ptr %l2, !tbaa !23
  store i32 %t99, ptr %l54, !tbaa !23
  br label %bb40
bb39:
  %t101 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t101, ptr %l54, !tbaa !23
  br label %bb40
bb40:
  %t103 = load i32, ptr %l54, !tbaa !23
  store i32 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca %"compiler/typed:Local"
  %l20 = alloca i32
  %l24 = alloca i1
  %l29 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t38 = alloca i64
  %t70 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t1, i64 %t2)
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
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb5:
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 7
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t24, i64 %t25)
  store %"compiler/typed:Local" %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 0
  %t30 = load i32, ptr %t29, !tbaa !23
  store i32 %t30, ptr %l20, !tbaa !23
  %t31 = icmp sge i64 1, 0
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = icmp sle i64 1, 2305843009213693951
  br i1 %t33, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9c04d5f47d2250f6_3417b2e0d095e072)
  unreachable
bb9:
  %t35 = mul i64 1, 4
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  %t37 = load i32, ptr %l20, !tbaa !23
  store i64 0, ptr %t38
  br label %fill.39
fill.39:
  %t42 = load i64, ptr %t38
  %t43 = icmp slt i64 %t42, 1
  br i1 %t43, label %fillb.40, label %filld.41
fillb.40:
  %t44 = getelementptr i32, ptr %t36, i64 %t42
  store i32 %t37, ptr %t44
  %t45 = add i64 %t42, 1
  store i64 %t45, ptr %t38
  br label %fill.39
filld.41:
  %t46 = insertvalue { i64, ptr } undef, i64 1, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t36, 1
  %t48 = load ptr, ptr %l13, !tbaa !29
  %t50 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %s0, ptr %t48, { i64, ptr } %t47)
  store i1 %t50, ptr %l24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9c04d5f47d2250f6_3417b2e0d095e072)
  unreachable
bb11:
  %t51 = load i1, ptr %l24, !tbaa !21
  store i1 %t51, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l12, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l29
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t63 = load i32, ptr %l29, !tbaa !23
  store i32 %t63, ptr %l3, !tbaa !23
  br label %bb16
bb16:
  %t65 = load i32, ptr %l3, !tbaa !23
  %t66 = load i64, ptr %l2, !tbaa !24
  %t68 = trunc i64 %t66 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t70
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 0
  store i64 0, ptr %t71
  %t73 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %a1, 0
  %t75 = insertvalue { %"compiler/source:Span", i32, i32 } %t73, i32 %t65, 1
  %t77 = insertvalue { %"compiler/source:Span", i32, i32 } %t75, i32 %t68, 2
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t77, ptr %t78
  %t79 = load { i64, [4 x i64] }, ptr %t70
  %t81 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t79, ptr %t81
  call void @__olang_scope_close(ptr %s0)
  store ptr %t81, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l31 = alloca i1
  %l35 = alloca { i64, ptr }
  %l41 = alloca %"compiler/source:Span"
  %l49 = alloca i1
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i32
  %l86 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Func", ptr %t2, i32 0, i32 0
  %t5 = load %"compiler/source:Span", ptr %t4
  %t8 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t1, %"compiler/source:Span" %t5)
  store { i64, ptr } %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Func", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %t13, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t10, i32 %t14)
  store { i64, ptr } %t17, ptr %l14
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  store i64 2, ptr %l4, !tbaa !24
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Func", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Func", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb5, label %bb6
bb4:
  br label %bb8
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6fdba33c6e4026bf_8c9edfb8735784b)
  unreachable
bb6:
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/ast:Func", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Param", ptr %t38, i32 0, i32 0
  %t42 = getelementptr %"compiler/source:Span", ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Func", ptr %t44, i32 0, i32 0
  %t47 = getelementptr %"compiler/source:Span", ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47, !tbaa !23
  %t51 = sub i32 %t43, %t48
  %t53 = sext i32 %t51 to i64
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v1, ptr %t55)
  store i1 %t57, ptr %l31
  br label %bb9
bb9:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Func", ptr %t60, i32 0, i32 10
  %t63 = load i32, ptr %t62, !tbaa !23
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t59, i32 %t63)
  store { i64, ptr } %t66, ptr %l35
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t67 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t67, ptr %l3, !tbaa !27
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Func", ptr %t68, i32 0, i32 9
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_741a9378af09f4a0_ded013aa934cbd5c)
  unreachable
bb14:
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Func", ptr %t75, i32 0, i32 9
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t78)
  store %"compiler/source:Span" %t80, ptr %l41
  br label %bb16
bb16:
  %t81 = getelementptr %"compiler/source:Span", ptr %l41, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr %"compiler/ast:Func", ptr %t83, i32 0, i32 0
  %t86 = getelementptr %"compiler/source:Span", ptr %t85, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t90 = sub i32 %t82, %t87
  %t92 = sext i32 %t90 to i64
  store i64 %t92, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t96 = icmp slt i64 %t94, 0
  br i1 %t96, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb20
bb19:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t104 = icmp sgt i64 %t98, %t101
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb20
bb20:
  %t106 = load i1, ptr %l49, !tbaa !21
  br i1 %t106, label %bb21, label %bb22
bb21:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t107 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t107, ptr %l55, !tbaa !27
  %t108 = load i64, ptr %l4, !tbaa !24
  store i64 %t108, ptr %l56, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t109, 0
  store i64 %t112, ptr %l59, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  store i64 %t114, ptr %l60, !tbaa !24
  %t115 = load i64, ptr %l56, !tbaa !24
  %t116 = icmp sge i64 %t115, 0
  br i1 %t116, label %bb24, label %bb25
bb24:
  %t118 = load i64, ptr %l56, !tbaa !24
  %t119 = load i64, ptr %l59, !tbaa !24
  %t120 = icmp sle i64 %t118, %t119
  br i1 %t120, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_60b5dc7e409a2d43_b151acede8aa733f)
  unreachable
bb26:
  %t122 = load i64, ptr %l59, !tbaa !24
  %t123 = load i64, ptr %l60, !tbaa !24
  %t124 = icmp sle i64 %t122, %t123
  br i1 %t124, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_60b5dc7e409a2d43_b151acede8aa733f)
  unreachable
bb28:
  %t126 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = load i64, ptr %l56, !tbaa !24
  %t129 = load i64, ptr %l59, !tbaa !24
  %t130 = getelementptr i8, ptr %t127, i64 %t128
  %t131 = sub i64 %t129, %t128
  %t132 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t130, 1
  %t134 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t134, ptr %l65, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_scope_of(ptr %t136, ptr null)
  %t138 = ptrtoint ptr %t137 to i64
  %t140 = inttoptr i64 %t138 to ptr
  %t142 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t143 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %t140, { i64, ptr } %t133, { i64, ptr } %t142)
  %t144 = extractvalue { i32, i64 } %t143, 1
  %t145 = extractvalue { i32, i64 } %t143, 0
  store i32 %t145, ptr %l68
  %t146 = icmp ne i32 %t145, 0
  br i1 %t146, label %bb31, label %ok.147, !prof !99
ok.147:
  store i64 %t144, ptr %l67
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_60b5dc7e409a2d43_b151acede8aa733f)
  unreachable
bb30:
  %t148 = load i64, ptr %l67, !tbaa !24
  store i64 %t148, ptr %l54, !tbaa !24
  br label %bb33
bb31:
  br label %bb32
bb32:
  store i64 -1, ptr %l54, !tbaa !24
  br label %bb33
bb33:
  %t149 = load i64, ptr %l54, !tbaa !24
  store i64 %t149, ptr %l5, !tbaa !24
  %t150 = load i64, ptr %l5, !tbaa !24
  %t152 = icmp slt i64 %t150, 0
  br i1 %t152, label %bb34, label %bb35
bb34:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr %"compiler/ast:Func", ptr %t154, i32 0, i32 0
  %t157 = load %"compiler/source:Span", ptr %t156
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t157, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/ast:Func", ptr %t159, i32 0, i32 0
  %t162 = getelementptr %"compiler/source:Span", ptr %t161, i32 0, i32 0
  %t163 = load i32, ptr %t162, !tbaa !23
  %t164 = load i64, ptr %l4, !tbaa !24
  %t165 = load i64, ptr %l5, !tbaa !24
  %t168 = add i64 %t164, %t165
  %t170 = trunc i64 %t168 to i32
  %t173 = add i32 %t163, %t170
  store i32 %t173, ptr %l6, !tbaa !23
  %t175 = load i32, ptr %l6, !tbaa !23
  %t176 = load i32, ptr %l6, !tbaa !23
  %t177 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t181 = trunc i64 %t179 to i32
  %t184 = add i32 %t176, %t181
  %t187 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t175, i32 %t184)
  store %"compiler/source:Span" %t187, ptr %l86
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  %t188 = load %"compiler/source:Span", ptr %l86
  store %"compiler/source:Span" %t188, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedBranch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l21 = alloca i64
  %l26 = alloca { i64, i64, i64 }
  %l46 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Branch", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 4
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/ast:Branch", ptr %t18, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %t17, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 37
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l21
  br label %bb5
bb5:
  %t29 = load i64, ptr %l21, !tbaa !24
  store i64 %t29, ptr %l4, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Branch", ptr %t31, i32 0, i32 0
  %t34 = load %"compiler/source:Span", ptr %t33
  %t38 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t30, i32 1, %"compiler/source:Span" %t34)
  store { i64, i64, i64 } %t38, ptr %l26
  br label %bb6
bb6:
  %t39 = load { i64, i64, i64 }, ptr %l26
  store { i64, i64, i64 } %t39, ptr %l5
  %t40 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  %t43 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  %t46 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  store i64 %t47, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Branch", ptr %t49, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb7, label %bb8
bb7:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v2, ptr %t58, ptr %a2, i1 %a3, i64 %t61)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Branch", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t66, { i64, ptr } %t70)
  br label %bb11
bb11:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l4, !tbaa !24
  %t83 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v3, ptr %t73, i64 %t74, i64 %t75, i64 %t76, i64 %t77)
  store ptr %t83, ptr %l46
  br label %bb12
bb12:
  %t84 = load ptr, ptr %l46, !tbaa !29
  store ptr %t84, ptr %l9, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/ast:Branch", ptr %t85, i32 0, i32 2
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = icmp sge i64 %t88, 0
  br i1 %t90, label %bb13, label %bb14
bb13:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 4
  %t101 = load ptr, ptr %t100, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t101)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t103 = load ptr, ptr %l9, !tbaa !29
  store ptr %t103, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca i64
  %l25 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l41 = alloca i64
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i32
  %l69 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca i64
  %l86 = alloca ptr
  %t188 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l15, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l19
  br label %bb2
bb2:
  %t18 = load i64, ptr %l19, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l25
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l25, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 6
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l6, !tbaa !29
  %t37 = load ptr, ptr %l6, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f66b04275832bdf5_49261566e6ebbc09)
  unreachable
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t44 = getelementptr %"compiler/source:Source", ptr %t41, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l7, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t47, i32 %t51)
  store { i64, ptr } %t54, ptr %l36
  br label %bb7
bb7:
  %t55 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t55, ptr %l8, !tbaa !27
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Func", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb8, label %bb9
bb8:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t67 = getelementptr %"compiler/ast:Func", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  br i1 %t70, label %bb10, label %bb11
bb9:
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Func", ptr %t72, i32 0, i32 0
  %t75 = getelementptr %"compiler/source:Span", ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  %t78 = sext i32 %t76 to i64
  store i64 %t78, ptr %l41, !tbaa !24
  br label %bb13
bb10:
  call void @__olang_check_failed(ptr @olang_loc_959932aa8b846e4e_2c1999e37dfb1a2)
  unreachable
bb11:
  br label %bb12
bb12:
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t86 = getelementptr %"compiler/ast:Param", ptr %t83, i32 0, i32 0
  %t87 = getelementptr %"compiler/source:Span", ptr %t86, i32 0, i32 1
  %t88 = load i32, ptr %t87, !tbaa !23
  %t90 = sext i32 %t88 to i64
  store i64 %t90, ptr %l41, !tbaa !24
  br label %bb13
bb13:
  %t92 = load i64, ptr %l41, !tbaa !24
  store i64 %t92, ptr %l9, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t93, ptr %l54, !tbaa !27
  %t94 = load i64, ptr %l9, !tbaa !24
  store i64 %t94, ptr %l55, !tbaa !24
  %t95 = load ptr, ptr %l4, !tbaa !29
  %t97 = getelementptr %"compiler/ast:Func", ptr %t95, i32 0, i32 0
  %t98 = getelementptr %"compiler/source:Span", ptr %t97, i32 0, i32 1
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = sext i32 %t99 to i64
  store i64 %t101, ptr %l58, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l59, !tbaa !24
  %t104 = load i64, ptr %l55, !tbaa !24
  %t105 = icmp sge i64 %t104, 0
  br i1 %t105, label %bb14, label %bb15
bb14:
  %t107 = load i64, ptr %l55, !tbaa !24
  %t108 = load i64, ptr %l58, !tbaa !24
  %t109 = icmp sle i64 %t107, %t108
  br i1 %t109, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_f94ac378888081c5_5f597351c4418bf9)
  unreachable
bb16:
  %t111 = load i64, ptr %l58, !tbaa !24
  %t112 = load i64, ptr %l59, !tbaa !24
  %t113 = icmp sle i64 %t111, %t112
  br i1 %t113, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_f94ac378888081c5_5f597351c4418bf9)
  unreachable
bb18:
  %t115 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = load i64, ptr %l55, !tbaa !24
  %t118 = load i64, ptr %l58, !tbaa !24
  %t119 = getelementptr i8, ptr %t116, i64 %t117
  %t120 = sub i64 %t118, %t117
  %t121 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t119, 1
  %t123 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t126 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v0, { i64, ptr } %t122, { i64, ptr } %t123)
  %t127 = extractvalue { i32, i64 } %t126, 1
  %t128 = extractvalue { i32, i64 } %t126, 0
  store i32 %t128, ptr %l66
  %t129 = icmp ne i32 %t128, 0
  br i1 %t129, label %bb21, label %ok.130, !prof !99
ok.130:
  store i64 %t127, ptr %l65
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_f94ac378888081c5_5f597351c4418bf9)
  unreachable
bb20:
  %t131 = load i64, ptr %l65, !tbaa !24
  store i64 %t131, ptr %l53, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb23
bb23:
  %t132 = load i64, ptr %l53, !tbaa !24
  store i64 %t132, ptr %l10, !tbaa !24
  %t133 = load i64, ptr %l10, !tbaa !24
  %t135 = icmp slt i64 %t133, 0
  br i1 %t135, label %bb24, label %bb25
bb24:
  %t137 = load ptr, ptr %l4, !tbaa !29
  %t139 = getelementptr %"compiler/ast:Func", ptr %t137, i32 0, i32 0
  %t140 = getelementptr %"compiler/source:Span", ptr %t139, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  store i64 %t143, ptr %l69, !tbaa !24
  br label %bb26
bb25:
  %t145 = load i64, ptr %l9, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = add i64 %t145, %t146
  store i64 %t149, ptr %l69, !tbaa !24
  br label %bb26
bb26:
  %t151 = load i64, ptr %l69, !tbaa !24
  store i64 %t151, ptr %l11, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 0
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/load:Loader", ptr %t158, i32 0, i32 4
  %t161 = load ptr, ptr %t160, !tbaa !29
  store ptr %t161, ptr %l79, !tbaa !29
  store i64 %a1, ptr %l80, !tbaa !24
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 0
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/load:Loader", ptr %t169, i32 0, i32 10
  %t172 = load i64, ptr %l5, !tbaa !24
  %t175 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t171, i64 %t172)
  store ptr %t175, ptr %l86
  br label %bb27
bb27:
  %t176 = load ptr, ptr %l86, !tbaa !29
  %t178 = getelementptr %"compiler/load:Module", ptr %t176, i32 0, i32 4
  %t179 = load i64, ptr %t178, !tbaa !24
  %t180 = load i64, ptr %l11, !tbaa !24
  %t181 = load i64, ptr %l11, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t187 = add i64 %t181, %t184
  store { i64, [3 x i64] } zeroinitializer, ptr %t188
  %t189 = getelementptr { i64, [3 x i64] }, ptr %t188, i32 0, i32 0
  store i64 3, ptr %t189
  %t191 = insertvalue { i64, i64, i64 } undef, i64 %t179, 0
  %t193 = insertvalue { i64, i64, i64 } %t191, i64 %t180, 1
  %t195 = insertvalue { i64, i64, i64 } %t193, i64 %t187, 2
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t188, i32 0, i32 1
  store { i64, i64, i64 } %t195, ptr %t196
  %t197 = load { i64, [3 x i64] }, ptr %t188
  %t199 = load ptr, ptr %l79, !tbaa !29
  %t200 = load i64, ptr %l80, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %t199, i64 %t200, { i64, [3 x i64] } %t197, %"compiler/diagmsg:Msg" %a3)
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l34 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l52 = alloca %"compiler/names:Ref"
  %l55 = alloca i1
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i1
  %l63 = alloca { i64, ptr }
  %l65 = alloca i1
  %l68 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l90 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i1 %a3, ptr %l3
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
  store ptr %t5, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t6 = load ptr, ptr %l15, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l15, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l16, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l4
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t22, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l5, !tbaa !27
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t28, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29
  store { i64, ptr } %t30, ptr %l6, !tbaa !27
  br label %bb8
bb7:
  br label %bb48
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t32 = load i1, ptr %l3, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t38 = icmp eq i64 %t36, 1
  store i1 %t38, ptr %l26, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l26, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t41 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 0
  store i1 %t45, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l30, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t48)
  store ptr %t50, ptr %l36
  br label %bb17
bb16:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb19
bb17:
  %t51 = load ptr, ptr %l36, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t51, i32 0, i32 4
  %t54 = getelementptr %"compiler/generic:Context", ptr %t53, i32 0, i32 2
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t55, ptr %l39, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 0
  %t59 = load i32, ptr %t58, !tbaa !33
  %t62 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %t54, i32 %t59)
  store i1 %t62, ptr %l41
  br label %bb18
bb18:
  %t63 = load i1, ptr %l41, !tbaa !21
  %t64 = xor i1 %t63, true
  store i1 %t64, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t66 = load i1, ptr %l34, !tbaa !21
  br i1 %t66, label %bb20, label %bb21
bb20:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l46, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t74)
  store ptr %t76, ptr %l48
  br label %bb22
bb21:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb24
bb22:
  %t77 = load ptr, ptr %l48, !tbaa !29
  %t79 = getelementptr %"compiler/check:frame", ptr %t77, i32 0, i32 2
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t82 = load i32, ptr %t81, !tbaa !23
  %t83 = load ptr, ptr %l46, !tbaa !29
  %t86 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t83, i64 %t80, i32 %t82)
  store %"compiler/names:Ref" %t86, ptr %l52
  br label %bb23
bb23:
  %t87 = getelementptr %"compiler/names:Ref", ptr %l52, i32 0, i32 0
  %t88 = load i32, ptr %t87, !range !{i32 0, i32 9}
  %t90 = trunc i64 0 to i32
  %t91 = icmp eq i32 %t88, %t90
  store i1 %t91, ptr %l43, !tbaa !21
  br label %bb24
bb24:
  %t93 = load i1, ptr %l43, !tbaa !21
  br i1 %t93, label %bb25, label %bb26
bb25:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t95, ptr %l57, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 0
  %t99 = load i32, ptr %t98, !tbaa !33
  %t102 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t94, i32 %t99)
  store { i64, ptr } %t102, ptr %l59
  br label %bb27
bb26:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb29
bb27:
  %t103 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t103, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t104, ptr %l60
  br label %bb28
bb28:
  %t105 = load i1, ptr %l60, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l55, !tbaa !21
  br label %bb29
bb29:
  %t108 = load i1, ptr %l55, !tbaa !21
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t110 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t110, ptr %l63, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i32, ptr %t112, i64 0
  %t114 = load i32, ptr %t113, !tbaa !33
  %t117 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t109, i32 %t114)
  store i1 %t117, ptr %l65
  br label %bb32
bb31:
  br label %bb37
bb32:
  %t118 = load i1, ptr %l65, !tbaa !21
  %t119 = xor i1 %t118, true
  br i1 %t119, label %bb33, label %bb34
bb33:
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t122 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t122, ptr %l68, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i32, ptr %t124, i64 0
  %t126 = load i32, ptr %t125, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t121, i32 %t126)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb37:
  %t129 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t133 = icmp sgt i64 %t131, 0
  br i1 %t133, label %bb38, label %bb39
bb38:
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t135, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l9, !tbaa !24
  br label %bb40
bb39:
  br label %bb47
bb40:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb41, label %bb42
bb41:
  br label %bb46
bb42:
  br label %bb43
bb43:
  %t149 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t149, ptr %l80, !tbaa !27
  %t150 = load i64, ptr %l8, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr ptr, ptr %t153, i64 %t150
  %t155 = load ptr, ptr %t154, !tbaa !39
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %v2, ptr %t157, ptr %t155, ptr %t160, i1 true)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t164 = load i64, ptr %l8, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l8, !tbaa !24
  br label %bb40
bb46:
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb67
bb48:
  %t168 = load ptr, ptr %l1, !tbaa !29
  store ptr %t168, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t169 = load ptr, ptr %l89, !tbaa !29
  %t170 = icmp ne ptr %t169, null
  br i1 %t170, label %bb49, label %bb50
bb49:
  %t172 = load ptr, ptr %l89, !tbaa !29
  %t173 = load i64, ptr %t172, !range !{i64 0, i64 8}
  %t175 = icmp eq i64 %t173, 3
  store i1 %t175, ptr %l90, !tbaa !21
  br label %bb50
bb50:
  %t176 = load i1, ptr %l90, !tbaa !21
  br i1 %t176, label %bb51, label %bb52
bb51:
  %t177 = load ptr, ptr %l1, !tbaa !29
  %t179 = getelementptr { i64, [5 x i64] }, ptr %t177, i32 0, i32 1
  %t180 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t179, i32 0, i32 1
  %t181 = load ptr, ptr %t180
  store ptr %t181, ptr %l11, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l11, !tbaa !29
  %t186 = load ptr, ptr %l2, !tbaa !29
  %t187 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %v2, ptr %t183, ptr %t184, ptr %t186, i1 %t187)
  br label %bb54
bb54:
  br label %bb67
bb55:
  %t192 = load ptr, ptr %l1, !tbaa !29
  store ptr %t192, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t193 = load ptr, ptr %l100, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb56, label %bb57
bb56:
  %t196 = load ptr, ptr %l100, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 8}
  %t199 = icmp eq i64 %t197, 4
  store i1 %t199, ptr %l101, !tbaa !21
  br label %bb57
bb57:
  %t200 = load i1, ptr %l101, !tbaa !21
  br i1 %t200, label %bb58, label %bb59
bb58:
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t203, i32 0, i32 1
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l12, !tbaa !29
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l12, !tbaa !29
  %t209 = load ptr, ptr %l2, !tbaa !29
  %t210 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %v2, ptr %t207, ptr %t208, ptr %t209, i1 %t210)
  br label %bb61
bb61:
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
  call void @__olang_check_failed(ptr @olang_loc_dbf8bf22da4e6195_39afff21f23036a9)
  unreachable
bb67:
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
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 16
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l18, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l35, !tbaa !27
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
  %t128 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s6, { i64, ptr } %t126, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) })
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
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
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
  %t245 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s9, { i64, ptr } %t243, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
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
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l125, !tbaa !27
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %rv = alloca ptr
  %t6 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/source:Span" %a1, ptr %l3
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t2)
  store i32 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [5 x i64] }, ptr %t6, i32 0, i32 0
  store i64 2, ptr %t7
  %t8 = load %"compiler/source:Span", ptr %l3
  %t9 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t8, 0
  %t10 = load i32, ptr %l5, !tbaa !23
  %t11 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t9, i32 %t10, 1
  %t13 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t11, ptr %t5, 2
  %t14 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t13, i32 -1, 3
  %t15 = getelementptr { i64, [5 x i64] }, ptr %t6, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t14, ptr %t15
  %t16 = load { i64, [5 x i64] }, ptr %t6
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t16, ptr %t18
  store ptr %t18, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereplaceTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i1
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l32 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca i32
  %l52 = alloca ptr
  %l57 = alloca %"compiler/typed:Elem"
  %l61 = alloca ptr
  %l62 = alloca i1
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l77 = alloca ptr
  %l82 = alloca %"compiler/typed:Payload"
  %l86 = alloca ptr
  %l87 = alloca i1
  %l94 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i1
  %l99 = alloca %"compiler/source:Span"
  %l100 = alloca i32
  %l104 = alloca ptr
  %rv = alloca ptr
  %t44 = alloca { i64, [4 x i64] }, align 8
  %t112 = alloca { i64, [4 x i64] }, align 8
  %t178 = alloca { i64, [4 x i64] }, align 8
  %t231 = alloca { i64, [4 x i64] }, align 8
  %t250 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l4, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l5, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 3
  %t32 = load i64, ptr %t31
  store i64 %t32, ptr %l6, !tbaa !24
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t34 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t34, ptr %l27
  %t35 = load i32, ptr %l4, !tbaa !23
  store i32 %t35, ptr %l28, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t38 = load i64, ptr %l2, !tbaa !24
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereplaceTemp(ptr %v0, ptr %v1, ptr %v2, ptr %t36, ptr %t37, i64 %t38)
  store ptr %t42, ptr %l32
  br label %bb6
bb6:
  %t43 = load i64, ptr %l6, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 0
  store i64 3, ptr %t45
  %t46 = load %"compiler/source:Span", ptr %l27
  %t47 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t46, 0
  %t48 = load i32, ptr %l28, !tbaa !23
  %t49 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t47, i32 %t48, 1
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t51 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t49, ptr %t50, 2
  %t53 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t51, i64 %t43, 3
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t53, ptr %t54
  %t55 = load { i64, [4 x i64] }, ptr %t44
  %t57 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t55, ptr %t57
  store ptr %t57, ptr %rv
  br label %ret
bb7:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t60 = load ptr, ptr %l36, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb8, label %bb9
bb8:
  %t63 = load ptr, ptr %l36, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 4
  store i1 %t66, ptr %l37, !tbaa !21
  br label %bb9
bb9:
  %t67 = load i1, ptr %l37, !tbaa !21
  br i1 %t67, label %bb10, label %bb11
bb10:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 0
  %t72 = load %"compiler/source:Span", ptr %t71
  store %"compiler/source:Span" %t72, ptr %l7
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t76, i32 0, i32 1
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l8, !tbaa !23
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l9, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t86 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t86, ptr %l46
  %t87 = load i32, ptr %l8, !tbaa !23
  store i32 %t87, ptr %l47, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l9, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Elem", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i64, ptr %l2, !tbaa !24
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereplaceTemp(ptr %v0, ptr %v1, ptr %v1, ptr %t88, ptr %t92, i64 %t93)
  store ptr %t97, ptr %l52
  br label %bb13
bb13:
  %t98 = load ptr, ptr %l9, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Elem", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load ptr, ptr %l9, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Elem", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %t104, !range !{i32 0, i32 3}
  %t106 = load ptr, ptr %l52, !tbaa !29
  %t109 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v1, ptr %v1, ptr %v2, ptr %t106, ptr %t101, i32 %t105)
  store %"compiler/typed:Elem" %t109, ptr %l57
  br label %bb14
bb14:
  %t110 = load %"compiler/typed:Elem", ptr %l57
  %t111 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Elem" %t110, ptr %t111
  store { i64, [4 x i64] } zeroinitializer, ptr %t112
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 0
  store i64 4, ptr %t113
  %t114 = load %"compiler/source:Span", ptr %l46
  %t115 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t114, 0
  %t116 = load i32, ptr %l47, !tbaa !23
  %t117 = insertvalue { %"compiler/source:Span", i32, ptr } %t115, i32 %t116, 1
  %t119 = insertvalue { %"compiler/source:Span", i32, ptr } %t117, ptr %t111, 2
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t119, ptr %t120
  %t121 = load { i64, [4 x i64] }, ptr %t112
  %t123 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t121, ptr %t123
  store ptr %t123, ptr %rv
  br label %ret
bb15:
  %t125 = load ptr, ptr %l1, !tbaa !29
  store ptr %t125, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t126 = load ptr, ptr %l61, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb16, label %bb17
bb16:
  %t129 = load ptr, ptr %l61, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 8}
  %t132 = icmp eq i64 %t130, 5
  store i1 %t132, ptr %l62, !tbaa !21
  br label %bb17
bb17:
  %t133 = load i1, ptr %l62, !tbaa !21
  br i1 %t133, label %bb18, label %bb19
bb18:
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l10
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l11, !tbaa !23
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l12, !tbaa !29
  br label %bb20
bb19:
  br label %bb23
bb20:
  %t152 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t152, ptr %l71
  %t153 = load i32, ptr %l11, !tbaa !23
  store i32 %t153, ptr %l72, !tbaa !23
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l12, !tbaa !29
  %t157 = getelementptr %"compiler/typed:Payload", ptr %t155, i32 0, i32 0
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i64, ptr %l2, !tbaa !24
  %t163 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereplaceTemp(ptr %v0, ptr %v1, ptr %v1, ptr %t154, ptr %t158, i64 %t159)
  store ptr %t163, ptr %l77
  br label %bb21
bb21:
  %t164 = load ptr, ptr %l12, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Payload", ptr %t164, i32 0, i32 1
  %t167 = load i64, ptr %t166, !tbaa !24
  %t168 = load ptr, ptr %l12, !tbaa !29
  %t170 = getelementptr %"compiler/typed:Payload", ptr %t168, i32 0, i32 2
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 3}
  %t172 = load ptr, ptr %l77, !tbaa !29
  %t175 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v1, ptr %v2, ptr %t172, i64 %t167, i32 %t171)
  store %"compiler/typed:Payload" %t175, ptr %l82
  br label %bb22
bb22:
  %t176 = load %"compiler/typed:Payload", ptr %l82
  %t177 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Payload" %t176, ptr %t177
  store { i64, [4 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 0
  store i64 5, ptr %t179
  %t180 = load %"compiler/source:Span", ptr %l71
  %t181 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t180, 0
  %t182 = load i32, ptr %l72, !tbaa !23
  %t183 = insertvalue { %"compiler/source:Span", i32, ptr } %t181, i32 %t182, 1
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr } %t183, ptr %t177, 2
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t185, ptr %t186
  %t187 = load { i64, [4 x i64] }, ptr %t178
  %t189 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t187, ptr %t189
  store ptr %t189, ptr %rv
  br label %ret
bb23:
  %t191 = load ptr, ptr %l1, !tbaa !29
  store ptr %t191, ptr %l86, !tbaa !29
  store i1 false, ptr %l87, !tbaa !21
  %t192 = load ptr, ptr %l86, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb24, label %bb25
bb24:
  %t195 = load ptr, ptr %l86, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 8}
  %t198 = icmp eq i64 %t196, 6
  store i1 %t198, ptr %l87, !tbaa !21
  br label %bb25
bb25:
  %t199 = load i1, ptr %l87, !tbaa !21
  br i1 %t199, label %bb26, label %bb27
bb26:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr { i64, [4 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t202, i32 0, i32 0
  %t204 = load %"compiler/source:Span", ptr %t203
  store %"compiler/source:Span" %t204, ptr %l13
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t208, i32 0, i32 1
  %t210 = load i32, ptr %t209
  store i32 %t210, ptr %l14, !tbaa !23
  br label %bb28
bb27:
  br label %bb35
bb28:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l94, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i64, ptr %l2, !tbaa !24
  %t217 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t213, i64 %t214)
  store i32 %t217, ptr %l97
  br label %bb29
bb29:
  %t218 = load ptr, ptr %l94, !tbaa !29
  %t219 = load i32, ptr %l97, !tbaa !23
  %t220 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t218, i32 %t219)
  store i1 %t220, ptr %l98
  br label %bb30
bb30:
  %t221 = load i1, ptr %l98, !tbaa !21
  br i1 %t221, label %bb31, label %bb32
bb31:
  %t222 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t222, ptr %l99
  %t223 = load i32, ptr %l14, !tbaa !23
  store i32 %t223, ptr %l100, !tbaa !23
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l13
  %t226 = load i64, ptr %l2, !tbaa !24
  %t230 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t224, %"compiler/source:Span" %t225, i64 %t226)
  store ptr %t230, ptr %l104
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, [4 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [4 x i64] }, ptr %t231, i32 0, i32 0
  store i64 2, ptr %t232
  %t233 = load %"compiler/source:Span", ptr %l99
  %t234 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t233, 0
  %t235 = load i32, ptr %l100, !tbaa !23
  %t236 = insertvalue { %"compiler/source:Span", i32, ptr } %t234, i32 %t235, 1
  %t237 = load ptr, ptr %l104, !tbaa !29
  %t238 = insertvalue { %"compiler/source:Span", i32, ptr } %t236, ptr %t237, 2
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t238, ptr %t239
  %t240 = load { i64, [4 x i64] }, ptr %t231
  %t242 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t240, ptr %t242
  store ptr %t242, ptr %rv
  br label %ret
bb34:
  %t244 = load %"compiler/source:Span", ptr %l13
  %t245 = load i32, ptr %l14, !tbaa !23
  %t246 = load i64, ptr %l2, !tbaa !24
  %t248 = trunc i64 %t246 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t250
  %t251 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 0
  store i64 0, ptr %t251
  %t253 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t244, 0
  %t255 = insertvalue { %"compiler/source:Span", i32, i32 } %t253, i32 %t245, 1
  %t257 = insertvalue { %"compiler/source:Span", i32, i32 } %t255, i32 %t248, 2
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t257, ptr %t258
  %t259 = load { i64, [4 x i64] }, ptr %t250
  %t261 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t259, ptr %t261
  store ptr %t261, ptr %rv
  br label %ret
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %rv
  br label %ret
bb39:
  call void @__olang_check_failed(ptr @olang_loc_d14fb46e4520a903_82d87293fe98a067)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l22 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
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
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  %t25 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 142
  store ptr %t25, ptr %l18, !tbaa !29
  %t30 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %a1, i64 %t21)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t30, ptr %l21
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l18, !tbaa !29
  %t32 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l21
  %t33 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t31, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32)
  store i1 %t33, ptr %l22
  br label %bb6
bb6:
  %t34 = load i1, ptr %l22, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l4, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l6 = alloca i1
  %l11 = alloca ptr
  %l14 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l25 = alloca i1
  %l30 = alloca i1
  %l32 = alloca { i64, ptr }
  %l35 = alloca i1
  %l41 = alloca { i64, ptr }
  %l44 = alloca i64
  %l48 = alloca i1
  %l51 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l58 = alloca i32
  %l59 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 14
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  store ptr %t28, ptr %l18
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l14, !tbaa !29
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t33, i32 %t32)
  store i32 %t35, ptr %l21
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l11, !tbaa !29
  %t37 = load i32, ptr %l21, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t36, i32 %t37)
  store { i64, ptr } %t38, ptr %l22
  br label %bb7
bb7:
  %t39 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  br i1 %t42, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb10
bb9:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t50 = icmp sge i64 %t44, %t47
  store i1 %t50, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t52 = load i1, ptr %l25, !tbaa !21
  br i1 %t52, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t54, ptr %l32, !tbaa !27
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 %t55
  %t60 = load i32, ptr %t59, !tbaa !33
  %t63 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t53, i32 %t60)
  store i1 %t63, ptr %l35
  br label %bb13
bb13:
  %t64 = load i1, ptr %l35, !tbaa !21
  %t65 = xor i1 %t64, true
  store i1 %t65, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t67 = load i1, ptr %l30, !tbaa !21
  br i1 %t67, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t75, ptr %l41, !tbaa !27
  %t76 = load i64, ptr %l2, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t84 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t74, i32 %t81)
  store i64 %t84, ptr %l44
  br label %bb18
bb18:
  %t85 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t86 = load i64, ptr %l44, !tbaa !24
  %t88 = and i64 %t86, %t85
  %t90 = icmp eq i64 %t88, 0
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  store ptr %t97, ptr %l51, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  %t104 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t104, ptr %l55, !tbaa !27
  %t105 = load i64, ptr %l2, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 %t105
  %t110 = load i32, ptr %t109, !tbaa !33
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t103, i32 %t110)
  store i32 %t113, ptr %l58
  br label %bb21
bb20:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb23
bb21:
  %t114 = load ptr, ptr %l51, !tbaa !29
  %t115 = load i32, ptr %l58, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t116, ptr %l59
  br label %bb22
bb22:
  %t117 = load i32, ptr %l59, !range !{i32 0, i32 33}
  %t119 = trunc i64 21 to i32
  %t120 = icmp eq i32 %t117, %t119
  %t122 = xor i1 %t120, true
  store i1 %t122, ptr %l48, !tbaa !21
  br label %bb23
bb23:
  %t124 = load i1, ptr %l48, !tbaa !21
  store i1 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca ptr
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t11 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t7, i64 %a1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t11, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %rv
  ret %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 0)
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l42 = alloca ptr
  %l46 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca i1
  %l66 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l78 = alloca %"compiler/typed:Payload"
  %l82 = alloca ptr
  %l83 = alloca i1
  %l95 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l100 = alloca i32
  %l101 = alloca ptr
  %l105 = alloca ptr
  %l108 = alloca %"compiler/typed:Elem"
  %l112 = alloca ptr
  %l113 = alloca i1
  %l123 = alloca i1
  %l124 = alloca ptr
  %l127 = alloca %"compiler/source:Span"
  %l128 = alloca i32
  %l131 = alloca ptr
  %rv = alloca ptr
  %t71 = alloca { i64, [4 x i64] }, align 8
  %t146 = alloca { i64, [4 x i64] }, align 8
  %t222 = alloca { i64, [4 x i64] }, align 8
  %t276 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t2 = load ptr, ptr %l18, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l18, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l19, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l19, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t11 = load ptr, ptr %l22, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l22, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l23, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l23, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
bb10:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t23 = load ptr, ptr %l28, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb11, label %bb12
bb11:
  %t26 = load ptr, ptr %l28, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t30 = load i1, ptr %l29, !tbaa !21
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/source:Span", ptr %t34
  store %"compiler/source:Span" %t35, ptr %l2
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l3, !tbaa !23
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l4, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t51, i32 0, i32 3
  %t53 = load i64, ptr %t52
  store i64 %t53, ptr %l5, !tbaa !24
  br label %bb15
bb14:
  br label %bb20
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t59 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v2, ptr %t55, ptr %t56)
  store ptr %t59, ptr %l42
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l42, !tbaa !29
  store ptr %t60, ptr %l6, !tbaa !29
  %t61 = load ptr, ptr %l6, !tbaa !29
  %t63 = icmp eq ptr %t61, null
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb17, label %bb18
bb17:
  %t67 = load %"compiler/source:Span", ptr %l2
  %t68 = load i32, ptr %l3, !tbaa !23
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t70 = load i64, ptr %l5, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 0
  store i64 3, ptr %t72
  %t74 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t67, 0
  %t76 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t74, i32 %t68, 1
  %t78 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t76, ptr %t69, 2
  %t80 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t78, i64 %t70, 3
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t80, ptr %t81
  %t82 = load { i64, [4 x i64] }, ptr %t71
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t82, ptr %t84
  store ptr %t84, ptr %l46, !tbaa !29
  br label %bb19
bb18:
  store ptr null, ptr %l46, !tbaa !29
  br label %bb19
bb19:
  %t86 = load ptr, ptr %l46, !tbaa !29
  store ptr %t86, ptr %rv
  br label %ret
bb20:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t88 = load ptr, ptr %l53, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load ptr, ptr %l53, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 8}
  %t94 = icmp eq i64 %t92, 5
  store i1 %t94, ptr %l54, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l54, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t98, i32 0, i32 0
  %t100 = load %"compiler/source:Span", ptr %t99
  store %"compiler/source:Span" %t100, ptr %l7
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105
  store i32 %t106, ptr %l8, !tbaa !23
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l9, !tbaa !29
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l9, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Payload", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t121 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v2, ptr %t114, ptr %t118)
  store ptr %t121, ptr %l66
  br label %bb26
bb26:
  %t122 = load ptr, ptr %l66, !tbaa !29
  store ptr %t122, ptr %l10, !tbaa !29
  %t123 = load ptr, ptr %l10, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb27, label %bb28
bb27:
  %t129 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t129, ptr %l71
  %t130 = load i32, ptr %l8, !tbaa !23
  store i32 %t130, ptr %l72, !tbaa !23
  %t131 = load ptr, ptr %l10, !tbaa !29
  %t132 = load ptr, ptr %l9, !tbaa !29
  %t134 = getelementptr %"compiler/typed:Payload", ptr %t132, i32 0, i32 1
  %t135 = load i64, ptr %t134, !tbaa !24
  %t136 = load ptr, ptr %l9, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Payload", ptr %t136, i32 0, i32 2
  %t139 = load i32, ptr %t138, !range !{i32 0, i32 3}
  %t143 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v2, ptr %v2, ptr %t131, i64 %t135, i32 %t139)
  store %"compiler/typed:Payload" %t143, ptr %l78
  br label %bb29
bb28:
  store ptr null, ptr %l70, !tbaa !29
  br label %bb30
bb29:
  %t144 = load %"compiler/typed:Payload", ptr %l78
  %t145 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Payload" %t144, ptr %t145
  store { i64, [4 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 0
  store i64 5, ptr %t147
  %t148 = load %"compiler/source:Span", ptr %l71
  %t149 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t148, 0
  %t150 = load i32, ptr %l72, !tbaa !23
  %t151 = insertvalue { %"compiler/source:Span", i32, ptr } %t149, i32 %t150, 1
  %t153 = insertvalue { %"compiler/source:Span", i32, ptr } %t151, ptr %t145, 2
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t153, ptr %t154
  %t155 = load { i64, [4 x i64] }, ptr %t146
  %t157 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t155, ptr %t157
  store ptr %t157, ptr %l70, !tbaa !29
  br label %bb30
bb30:
  %t159 = load ptr, ptr %l70, !tbaa !29
  store ptr %t159, ptr %rv
  br label %ret
bb31:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t161 = load ptr, ptr %l82, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb32, label %bb33
bb32:
  %t164 = load ptr, ptr %l82, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 8}
  %t167 = icmp eq i64 %t165, 4
  store i1 %t167, ptr %l83, !tbaa !21
  br label %bb33
bb33:
  %t168 = load i1, ptr %l83, !tbaa !21
  br i1 %t168, label %bb34, label %bb35
bb34:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t171, i32 0, i32 0
  %t173 = load %"compiler/source:Span", ptr %t172
  store %"compiler/source:Span" %t173, ptr %l11
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr { i64, [4 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t177, i32 0, i32 1
  %t179 = load i32, ptr %t178
  store i32 %t179, ptr %l12, !tbaa !23
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t183, i32 0, i32 2
  %t185 = load ptr, ptr %t184
  store ptr %t185, ptr %l13, !tbaa !29
  br label %bb36
bb35:
  br label %bb43
bb36:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load ptr, ptr %l13, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Elem", ptr %t188, i32 0, i32 0
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t194 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v2, ptr %t187, ptr %t191)
  store ptr %t194, ptr %l95
  br label %bb37
bb37:
  %t195 = load ptr, ptr %l95, !tbaa !29
  store ptr %t195, ptr %l14, !tbaa !29
  %t196 = load ptr, ptr %l14, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb38, label %bb39
bb38:
  store ptr null, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t201 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t201, ptr %l99
  %t202 = load i32, ptr %l12, !tbaa !23
  store i32 %t202, ptr %l100, !tbaa !23
  %t203 = load ptr, ptr %l14, !tbaa !29
  store ptr %t203, ptr %l101, !tbaa !29
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l13, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Elem", ptr %t205, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonce(ptr %v0, ptr %v1, ptr %v1, ptr %t204, ptr %t208)
  store ptr %t211, ptr %l105
  br label %bb41
bb41:
  %t212 = load ptr, ptr %l13, !tbaa !29
  %t214 = getelementptr %"compiler/typed:Elem", ptr %t212, i32 0, i32 2
  %t215 = load i32, ptr %t214, !range !{i32 0, i32 3}
  %t216 = load ptr, ptr %l101, !tbaa !29
  %t217 = load ptr, ptr %l105, !tbaa !29
  %t219 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v2, ptr %v1, ptr %v2, ptr %t216, ptr %t217, i32 %t215)
  store %"compiler/typed:Elem" %t219, ptr %l108
  br label %bb42
bb42:
  %t220 = load %"compiler/typed:Elem", ptr %l108
  %t221 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Elem" %t220, ptr %t221
  store { i64, [4 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 0
  store i64 4, ptr %t223
  %t224 = load %"compiler/source:Span", ptr %l99
  %t225 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t224, 0
  %t226 = load i32, ptr %l100, !tbaa !23
  %t227 = insertvalue { %"compiler/source:Span", i32, ptr } %t225, i32 %t226, 1
  %t229 = insertvalue { %"compiler/source:Span", i32, ptr } %t227, ptr %t221, 2
  %t230 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t229, ptr %t230
  %t231 = load { i64, [4 x i64] }, ptr %t222
  %t233 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t231, ptr %t233
  store ptr %t233, ptr %rv
  br label %ret
bb43:
  %t235 = load ptr, ptr %l1, !tbaa !29
  store ptr %t235, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t236 = load ptr, ptr %l112, !tbaa !29
  %t237 = icmp ne ptr %t236, null
  br i1 %t237, label %bb44, label %bb45
bb44:
  %t239 = load ptr, ptr %l112, !tbaa !29
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 8}
  %t242 = icmp eq i64 %t240, 2
  store i1 %t242, ptr %l113, !tbaa !21
  br label %bb45
bb45:
  %t243 = load i1, ptr %l113, !tbaa !21
  br i1 %t243, label %bb46, label %bb47
bb46:
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t246 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t246, i32 0, i32 0
  %t248 = load %"compiler/source:Span", ptr %t247
  store %"compiler/source:Span" %t248, ptr %l15
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t252, i32 0, i32 1
  %t254 = load i32, ptr %t253
  store i32 %t254, ptr %l16, !tbaa !23
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr { i64, [4 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t258, i32 0, i32 2
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l17, !tbaa !29
  br label %bb48
bb47:
  br label %bb54
bb48:
  %t262 = load ptr, ptr %l17, !tbaa !29
  %t264 = call i1 @compiler_2fcheck_2epureRead(ptr %v1, ptr %t262)
  store i1 %t264, ptr %l123
  br label %bb49
bb49:
  %t265 = load i1, ptr %l123, !tbaa !21
  br i1 %t265, label %bb50, label %bb51
bb50:
  %t266 = load ptr, ptr %l1, !tbaa !29
  store ptr %t266, ptr %l124, !tbaa !29
  br label %bb53
bb51:
  %t269 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t269, ptr %l127
  %t270 = load i32, ptr %l16, !tbaa !23
  store i32 %t270, ptr %l128, !tbaa !23
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l17, !tbaa !29
  %t275 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonce(ptr %v0, ptr %v1, ptr %v2, ptr %t271, ptr %t272)
  store ptr %t275, ptr %l131
  br label %bb52
bb52:
  store { i64, [4 x i64] } zeroinitializer, ptr %t276
  %t277 = getelementptr { i64, [4 x i64] }, ptr %t276, i32 0, i32 0
  store i64 2, ptr %t277
  %t278 = load %"compiler/source:Span", ptr %l127
  %t279 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t278, 0
  %t280 = load i32, ptr %l128, !tbaa !23
  %t281 = insertvalue { %"compiler/source:Span", i32, ptr } %t279, i32 %t280, 1
  %t282 = load ptr, ptr %l131, !tbaa !29
  %t283 = insertvalue { %"compiler/source:Span", i32, ptr } %t281, ptr %t282, 2
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t276, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t283, ptr %t284
  %t285 = load { i64, [4 x i64] }, ptr %t276
  %t287 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t285, ptr %t287
  store ptr %t287, ptr %l124, !tbaa !29
  br label %bb53
bb53:
  %t289 = load ptr, ptr %l124, !tbaa !29
  store ptr %t289, ptr %rv
  br label %ret
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store ptr null, ptr %rv
  br label %ret
bb58:
  call void @__olang_check_failed(ptr @olang_loc_d7951065f36562ee_848e8c34c6c42472)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l7 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/load:Import"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca %"compiler/names:Entry"
  %l26 = alloca { i64, ptr }
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l36 = alloca i1
  %l43 = alloca i1
  %l48 = alloca i1
  %l54 = alloca { i64, ptr }
  %l56 = alloca i8
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l72 = alloca i32
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l83 = alloca %"compiler/msgs:Nearest"
  %l87 = alloca ptr
  %l90 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l91 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l93 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l94 = alloca i32
  %l96 = alloca i1
  %l97 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l106 = alloca ptr
  %l109 = alloca ptr
  %l112 = alloca i64
  %l114 = alloca i64
  %l119 = alloca %"compiler/load:Import"
  %l126 = alloca [14 x { i64, ptr }]
  %l145 = alloca i64
  %l149 = alloca i64
  %l152 = alloca i64
  %l170 = alloca i64
  %l172 = alloca ptr
  %l176 = alloca i1
  %l182 = alloca ptr
  %l186 = alloca i64
  %l188 = alloca ptr
  %l197 = alloca ptr
  %l200 = alloca i64
  %l202 = alloca i64
  %l207 = alloca %"compiler/names:Entry"
  %l210 = alloca i1
  %l212 = alloca i1
  %l215 = alloca i1
  %l217 = alloca i1
  %l224 = alloca { i64, ptr }
  %l227 = alloca i1
  %l229 = alloca i1
  %l239 = alloca { i64, ptr }
  %l240 = alloca i64
  %l241 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t9, ptr %l32, !tbaa !27
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t17)
  store i1 %t19, ptr %l36
  br label %bb4
bb3:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb5
bb4:
  %t20 = load i1, ptr %l36, !tbaa !21
  store i1 %t20, ptr %l31, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l31, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = sub i64 %t24, 1
  store i64 %t26, ptr %l3, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp sge i64 %t30, 2
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp slt i64 %t34, %t37
  store i1 %t40, ptr %l43, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb13
bb13:
  %t42 = load i1, ptr %l43, !tbaa !21
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = sub i64 %t45, %t46
  %t51 = icmp slt i64 %t49, 8
  store i1 %t51, ptr %l48, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb16
bb16:
  %t53 = load i1, ptr %l48, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t54, ptr %l54, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 0
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %t58)
  store i8 %t60, ptr %l56
  br label %bb19
bb18:
  br label %bb30
bb19:
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t61, ptr %l57, !tbaa !27
  %t62 = load i64, ptr %l3, !tbaa !24
  store i64 %t62, ptr %l58, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t63, 0
  store i64 %t66, ptr %l61, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l62, !tbaa !24
  %t69 = load i64, ptr %l58, !tbaa !24
  %t70 = icmp sge i64 %t69, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load i64, ptr %l58, !tbaa !24
  %t73 = load i64, ptr %l61, !tbaa !24
  %t74 = icmp sle i64 %t72, %t73
  br i1 %t74, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_fbd40b14c0771014_77084db5763620a0)
  unreachable
bb22:
  %t76 = load i64, ptr %l61, !tbaa !24
  %t77 = load i64, ptr %l62, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_fbd40b14c0771014_77084db5763620a0)
  unreachable
bb24:
  %t80 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l58, !tbaa !24
  %t83 = load i64, ptr %l61, !tbaa !24
  %t84 = getelementptr i8, ptr %t81, i64 %t82
  %t85 = sub i64 %t83, %t82
  %t86 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t84, 1
  %t88 = load i8, ptr %l56, !tbaa !22
  %t90 = extractvalue { i64, ptr } %t87, 1
  %t91 = extractvalue { i64, ptr } %t87, 0
  %t92 = add i64 1, %t91
  %t93 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t92)
  store i8 %t88, ptr %t93
  %t94 = getelementptr i8, ptr %t93, i64 1
  call void @olang_textcopy(ptr %t94, ptr %t90, i64 %t91)
  %t95 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t93, 1
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t97, ptr %lp4
  %t99 = load ptr, ptr %lp4
  store { i64, ptr } %t96, ptr %t99, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = load ptr, ptr %lp4
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v2, ptr %t105, { i64, ptr } %t107)
  store i32 %t110, ptr %l72
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_fbd40b14c0771014_77084db5763620a0)
  unreachable
bb26:
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t112 = load i32, ptr %l72, !tbaa !23
  %t114 = icmp ne i32 %t112, %t111
  br i1 %t114, label %bb27, label %bb28
bb27:
  %t116 = load ptr, ptr %lp4
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t117, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t121 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t119, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t121, ptr %l77
  br label %bb31
bb31:
  %t122 = load i1, ptr %l77, !tbaa !21
  br i1 %t122, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l78, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t123, ptr %l79, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  store i64 %t125, ptr %l80, !tbaa !24
  %t126 = load i64, ptr %l80, !tbaa !24
  %t127 = mul i64 %t126, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t127)
  %t129 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  store { i64, ptr } %t130, ptr %l81, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = load i64, ptr %l80, !tbaa !24
  %t136 = mul i64 %t135, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t132, ptr %t134, i64 %t136, i1 false)
  %t137 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t137, ptr %l79, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t138 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t138, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t141 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v1, ptr %s0, { i64, ptr } %t139)
  store %"compiler/msgs:Nearest" %t141, ptr %l83
  br label %bb35
bb35:
  %t142 = load %"compiler/msgs:Nearest", ptr %l83
  %t143 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t142, ptr %t143
  store ptr %t143, ptr %l5, !tbaa !29
  %t145 = load i1, ptr %l2, !tbaa !21
  br i1 %t145, label %bb36, label %bb37
bb36:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t147)
  store ptr %t149, ptr %l87
  br label %bb38
bb37:
  br label %bb63
bb38:
  %t150 = load ptr, ptr %l87, !tbaa !29
  %t152 = getelementptr %"compiler/check:frame", ptr %t150, i32 0, i32 8
  %t154 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v0, ptr %t152)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t154, ptr %l90
  br label %bb39
bb39:
  %t155 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l90
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t155, ptr %l6
  br label %bb40
bb40:
  %t157 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %l6)
  %t158 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t157, 1
  %t159 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t157, 0
  store i32 %t159, ptr %l94
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb42, label %ok.161, !prof !99
ok.161:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t158, ptr %l93
  br label %bb41
bb41:
  %t162 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l93
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t162, ptr %l91
  br label %bb44
bb42:
  %t163 = load i32, ptr %l94, !tbaa !23
  %t164 = ashr i32 %t163, 16
  %t166 = icmp eq i32 %t164, 1
  store i1 %t166, ptr %l96, !tbaa !21
  br label %bb43
bb43:
  br label %bb48
bb44:
  %t167 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l91
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t167, ptr %l7
  %t168 = load ptr, ptr %l5, !tbaa !29
  store ptr %t168, ptr %l97, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l7, i32 0, i32 0
  %t171 = load i32, ptr %t170, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t169, i32 %t171)
  store { i64, ptr } %t174, ptr %l100
  br label %bb45
bb45:
  %t175 = load ptr, ptr %l97, !tbaa !29
  %t176 = load { i64, ptr }, ptr %l100, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t175, { i64, ptr } %t176)
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb40
bb48:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/load:Loader", ptr %t183, i32 0, i32 10
  store ptr %t185, ptr %l104, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t186)
  store ptr %t188, ptr %l106
  br label %bb49
bb49:
  %t189 = load ptr, ptr %l106, !tbaa !29
  %t191 = getelementptr %"compiler/check:frame", ptr %t189, i32 0, i32 1
  %t192 = load i64, ptr %t191, !tbaa !24
  %t193 = load ptr, ptr %l104, !tbaa !29
  %t195 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t193, i64 %t192)
  store ptr %t195, ptr %l109
  br label %bb50
bb50:
  %t196 = load ptr, ptr %l109, !tbaa !29
  %t198 = getelementptr %"compiler/load:Module", ptr %t196, i32 0, i32 11
  store ptr %t198, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb51
bb51:
  %t200 = load i64, ptr %l9, !tbaa !24
  store i64 %t200, ptr %l112, !tbaa !24
  %t201 = load ptr, ptr %l8, !tbaa !29
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t201)
  store i64 %t203, ptr %l114
  br label %bb52
bb52:
  %t204 = load i64, ptr %l112, !tbaa !24
  %t205 = load i64, ptr %l114, !tbaa !24
  %t206 = icmp slt i64 %t204, %t205
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb53, label %bb54
bb53:
  br label %bb62
bb54:
  br label %bb55
bb55:
  %t210 = load ptr, ptr %l8, !tbaa !29
  %t211 = load i64, ptr %l9, !tbaa !24
  %t214 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  store %"compiler/load:Import" %t214, ptr %l119
  br label %bb56
bb56:
  %t215 = load %"compiler/load:Import", ptr %l119
  store %"compiler/load:Import" %t215, ptr %l10
  %t216 = getelementptr %"compiler/load:Import", ptr %l10, i32 0, i32 5
  %t217 = load i64, ptr %t216, !tbaa !24
  %t219 = icmp sge i64 %t217, 0
  br i1 %t219, label %bb57, label %bb58
bb57:
  %t221 = load ptr, ptr %l5, !tbaa !29
  %t222 = getelementptr %"compiler/load:Import", ptr %l10, i32 0, i32 2
  %t223 = load { i64, ptr }, ptr %t222, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t221, { i64, ptr } %t223)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t226 = load i64, ptr %l9, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l9, !tbaa !24
  br label %bb51
bb62:
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s13
  %t230 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 0
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t230, !tbaa !37
  %t231 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 1
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %t231, !tbaa !37
  %t232 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t232, !tbaa !37
  %t233 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 3
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %t233, !tbaa !37
  %t234 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t234, !tbaa !37
  %t235 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 5
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %t235, !tbaa !37
  %t236 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 6
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %t236, !tbaa !37
  %t237 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 7
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %t237, !tbaa !37
  %t238 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 8
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %t238, !tbaa !37
  %t239 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 9
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %t239, !tbaa !37
  %t240 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 10
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %t240, !tbaa !37
  %t241 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 11
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %t241, !tbaa !37
  %t242 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 12
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %t242, !tbaa !37
  %t243 = getelementptr [14 x { i64, ptr }], ptr %l126, i64 0, i64 13
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %t243, !tbaa !37
  %t244 = call ptr @__olang_scope_alloc_a(ptr %s13, i64 224, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t244, ptr %l126, i64 224, i1 false)
  store ptr %t244, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t246 = load ptr, ptr %l11
  store i64 14, ptr %l13, !tbaa !24
  br label %bb64
bb64:
  %t249 = load i64, ptr %l12, !tbaa !24
  %t250 = load i64, ptr %l13, !tbaa !24
  %t253 = icmp slt i64 %t249, %t250
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb65, label %bb66
bb65:
  br label %bb70
bb66:
  br label %bb67
bb67:
  %t257 = load ptr, ptr %l11
  %t258 = load i64, ptr %l12, !tbaa !24
  %t261 = getelementptr [14 x { i64, ptr }], ptr %t257, i64 0, i64 %t258
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !37
  %t264 = load ptr, ptr %l5, !tbaa !29
  %t266 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %t266, ptr %t264, { i64, ptr } %t262)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t269 = load i64, ptr %l12, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l12, !tbaa !24
  br label %bb64
bb70:
  call void @__olang_scope_close(ptr %s13)
  store i64 0, ptr %l15, !tbaa !24
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 0
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/load:Loader", ptr %t279, i32 0, i32 10
  %t283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t281)
  store i64 %t283, ptr %l145
  br label %bb71
bb71:
  %t284 = load i64, ptr %l145, !tbaa !24
  store i64 %t284, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t285 = load i64, ptr %l16, !tbaa !24
  %t286 = load i64, ptr %l15, !tbaa !24
  %t289 = icmp sgt i64 %t285, %t286
  br i1 %t289, label %bb72, label %bb73
bb72:
  %t291 = load i64, ptr %l17, !tbaa !24
  %t293 = icmp sgt i64 %t291, 0
  br i1 %t293, label %bb74, label %bb75
bb73:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb77
bb74:
  %t295 = load i64, ptr %l16, !tbaa !24
  %t296 = load i64, ptr %l15, !tbaa !24
  %t299 = sub i64 %t295, %t296
  %t300 = load i64, ptr %l17, !tbaa !24
  %t303 = add i64 %t299, %t300
  %t305 = sub i64 %t303, 1
  %t306 = load i64, ptr %l17, !tbaa !24
  %t309 = sdiv i64 %t305, %t306
  store i64 %t309, ptr %l152, !tbaa !24
  br label %bb76
bb75:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb76
bb76:
  %t311 = load i64, ptr %l152, !tbaa !24
  store i64 %t311, ptr %l149, !tbaa !24
  br label %bb77
bb77:
  %t312 = load i64, ptr %l149, !tbaa !24
  store i64 %t312, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb78
bb78:
  %t313 = load i64, ptr %l19, !tbaa !24
  %t314 = load i64, ptr %l18, !tbaa !24
  %t317 = icmp slt i64 %t313, %t314
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb79, label %bb80
bb79:
  br label %bb125
bb80:
  br label %bb81
bb81:
  %t321 = load i64, ptr %l15, !tbaa !24
  %t322 = load i64, ptr %l19, !tbaa !24
  %t323 = load i64, ptr %l17, !tbaa !24
  %t326 = mul i64 %t322, %t323
  %t329 = add i64 %t321, %t326
  store i64 %t329, ptr %l20, !tbaa !24
  %t331 = load i64, ptr %l20, !tbaa !24
  store i64 %t331, ptr %l170, !tbaa !24
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t332)
  store ptr %t334, ptr %l172
  br label %bb82
bb82:
  %t335 = load ptr, ptr %l172, !tbaa !29
  %t337 = getelementptr %"compiler/check:frame", ptr %t335, i32 0, i32 1
  %t338 = load i64, ptr %t337, !tbaa !24
  %t339 = load i64, ptr %l170, !tbaa !24
  %t341 = icmp ne i64 %t339, %t338
  br i1 %t341, label %bb83, label %bb84
bb83:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/check:Checker", ptr %t343, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t348 = getelementptr %"compiler/generic:Program", ptr %t346, i32 0, i32 0
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t351 = getelementptr %"compiler/load:Loader", ptr %t349, i32 0, i32 10
  %t352 = load i64, ptr %l20, !tbaa !24
  %t355 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t351, i64 %t352)
  store ptr %t355, ptr %l182
  br label %bb85
bb84:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb86
bb85:
  %t356 = load ptr, ptr %l182, !tbaa !29
  %t358 = getelementptr %"compiler/load:Module", ptr %t356, i32 0, i32 3
  %t359 = load i1, ptr %t358, !tbaa !21
  %t361 = xor i1 %t359, true
  store i1 %t361, ptr %l176, !tbaa !21
  br label %bb86
bb86:
  %t363 = load i1, ptr %l176, !tbaa !21
  br i1 %t363, label %bb87, label %bb88
bb87:
  br label %bb124
bb88:
  br label %bb89
bb89:
  %t364 = load i64, ptr %l20, !tbaa !24
  store i64 %t364, ptr %l186, !tbaa !24
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t365)
  store ptr %t367, ptr %l188
  br label %bb90
bb90:
  %t368 = load ptr, ptr %l188, !tbaa !29
  %t370 = getelementptr %"compiler/check:frame", ptr %t368, i32 0, i32 1
  %t371 = load i64, ptr %t370, !tbaa !24
  %t372 = load i64, ptr %l186, !tbaa !24
  %t374 = icmp eq i64 %t372, %t371
  store i1 %t374, ptr %l21, !tbaa !21
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/check:Checker", ptr %t376, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !29
  %t381 = getelementptr %"compiler/generic:Program", ptr %t379, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !29
  %t384 = getelementptr %"compiler/names:Resolver", ptr %t382, i32 0, i32 1
  %t385 = load i64, ptr %l20, !tbaa !24
  %t388 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t384, i64 %t385)
  store ptr %t388, ptr %l197
  br label %bb91
bb91:
  %t389 = load ptr, ptr %l197, !tbaa !29
  %t391 = getelementptr %"compiler/names:Table", ptr %t389, i32 0, i32 0
  store ptr %t391, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb92
bb92:
  %t393 = load i64, ptr %l23, !tbaa !24
  store i64 %t393, ptr %l200, !tbaa !24
  %t394 = load ptr, ptr %l22, !tbaa !29
  %t396 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t394)
  store i64 %t396, ptr %l202
  br label %bb93
bb93:
  %t397 = load i64, ptr %l200, !tbaa !24
  %t398 = load i64, ptr %l202, !tbaa !24
  %t399 = icmp slt i64 %t397, %t398
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb94, label %bb95
bb94:
  br label %bb123
bb95:
  br label %bb96
bb96:
  %t403 = load ptr, ptr %l22, !tbaa !29
  %t404 = load i64, ptr %l23, !tbaa !24
  %t407 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t403, i64 %t404)
  store %"compiler/names:Entry" %t407, ptr %l207
  br label %bb97
bb97:
  %t408 = load %"compiler/names:Entry", ptr %l207
  store %"compiler/names:Entry" %t408, ptr %l24
  %t409 = getelementptr %"compiler/names:Entry", ptr %l24, i32 0, i32 2
  %t410 = load i32, ptr %t409, !range !{i32 0, i32 9}
  %t412 = trunc i64 4 to i32
  %t413 = icmp eq i32 %t410, %t412
  br i1 %t413, label %bb98, label %bb99
bb98:
  store i1 true, ptr %l210, !tbaa !21
  br label %bb109
bb99:
  %t415 = load i1, ptr %l2, !tbaa !21
  br i1 %t415, label %bb100, label %bb101
bb100:
  %t417 = getelementptr %"compiler/names:Entry", ptr %l24, i32 0, i32 2
  %t418 = load i32, ptr %t417, !range !{i32 0, i32 9}
  %t420 = trunc i64 2 to i32
  %t421 = icmp eq i32 %t418, %t420
  br i1 %t421, label %bb102, label %bb103
bb101:
  store i1 false, ptr %l212, !tbaa !21
  br label %bb108
bb102:
  store i1 true, ptr %l215, !tbaa !21
  br label %bb107
bb103:
  %t423 = load i1, ptr %l21, !tbaa !21
  br i1 %t423, label %bb104, label %bb105
bb104:
  %t425 = getelementptr %"compiler/names:Entry", ptr %l24, i32 0, i32 2
  %t426 = load i32, ptr %t425, !range !{i32 0, i32 9}
  %t428 = trunc i64 3 to i32
  %t429 = icmp eq i32 %t426, %t428
  store i1 %t429, ptr %l217, !tbaa !21
  br label %bb106
bb105:
  store i1 false, ptr %l217, !tbaa !21
  br label %bb106
bb106:
  %t431 = load i1, ptr %l217, !tbaa !21
  store i1 %t431, ptr %l215, !tbaa !21
  br label %bb107
bb107:
  %t432 = load i1, ptr %l215, !tbaa !21
  store i1 %t432, ptr %l212, !tbaa !21
  br label %bb108
bb108:
  %t433 = load i1, ptr %l212, !tbaa !21
  store i1 %t433, ptr %l210, !tbaa !21
  br label %bb109
bb109:
  %t434 = load i1, ptr %l210, !tbaa !21
  %t437 = xor i1 %t434, true
  br i1 %t437, label %bb110, label %bb111
bb110:
  br label %bb122
bb111:
  br label %bb112
bb112:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/names:Entry", ptr %l24, i32 0, i32 0
  %t441 = load i32, ptr %t440, !tbaa !23
  %t444 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t439, i32 %t441)
  store { i64, ptr } %t444, ptr %l224
  br label %bb113
bb113:
  %t445 = load { i64, ptr }, ptr %l224, !tbaa !27
  store { i64, ptr } %t445, ptr %l26, !tbaa !27
  %t446 = load i1, ptr %l21, !tbaa !21
  %t448 = xor i1 %t446, true
  br i1 %t448, label %bb114, label %bb115
bb114:
  %t450 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t452 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t450)
  store i1 %t452, ptr %l229
  br label %bb116
bb115:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb117
bb116:
  %t453 = load i1, ptr %l229, !tbaa !21
  %t454 = xor i1 %t453, true
  store i1 %t454, ptr %l227, !tbaa !21
  br label %bb117
bb117:
  %t456 = load i1, ptr %l227, !tbaa !21
  br i1 %t456, label %bb118, label %bb119
bb118:
  br label %bb122
bb119:
  br label %bb120
bb120:
  %t457 = load ptr, ptr %l5, !tbaa !29
  %t458 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t457, { i64, ptr } %t458)
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t461 = load i64, ptr %l23, !tbaa !24
  %t463 = add i64 %t461, 1
  store i64 %t463, ptr %l23, !tbaa !24
  br label %bb92
bb123:
  br label %bb124
bb124:
  %t465 = load i64, ptr %l19, !tbaa !24
  %t467 = add i64 %t465, 1
  store i64 %t467, ptr %l19, !tbaa !24
  br label %bb78
bb125:
  %t469 = load ptr, ptr %l5, !tbaa !29
  %t471 = getelementptr %"compiler/msgs:Nearest", ptr %t469, i32 0, i32 1
  %t472 = load { i64, ptr }, ptr %t471, !tbaa !27
  store { i64, ptr } %t472, ptr %l239, !tbaa !27
  %t474 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t474, 0
  store i64 %t475, ptr %l240, !tbaa !24
  %t476 = load i64, ptr %l240, !tbaa !24
  %t477 = mul i64 %t476, 1
  %t478 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t477)
  %t479 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t478, 1
  store { i64, ptr } %t480, ptr %l241, !tbaa !27
  %t481 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !27
  %t483 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t484 = load ptr, ptr %t483, !tbaa !27
  %t485 = load i64, ptr %l240, !tbaa !24
  %t486 = mul i64 %t485, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t482, ptr %t484, i64 %t486, i1 false)
  %t487 = load { i64, ptr }, ptr %l241, !tbaa !27
  store { i64, ptr } %t487, ptr %l239, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t488 = load { i64, ptr }, ptr %l239, !tbaa !27
  store { i64, ptr } %t488, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextLit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i32
  %l11 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %rv = alloca ptr
  %t28 = alloca { i64, [2 x i64] }, align 8
  %t36 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l2
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  store ptr %t7, ptr %l5, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t8)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t13 = load i32, ptr %l7, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t12, i32 %t13, i64 %t11)
  store i32 %t15, ptr %l9
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l11
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  store i64 %t22, ptr %l13, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %t23, %"compiler/source:Span" %t24)
  store { i64, ptr } %t27, ptr %l16
  br label %bb4
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 0
  store i64 1, ptr %t29
  %t30 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t31 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t30, 0
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 1
  store { { i64, ptr } } %t31, ptr %t32
  %t33 = load { i64, [2 x i64] }, ptr %t28
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t33, ptr %t35
  store { i64, [5 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 0
  store i64 1, ptr %t37
  %t38 = load %"compiler/source:Span", ptr %l2
  %t39 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t38, 0
  %t40 = load i32, ptr %l9, !tbaa !23
  %t41 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t39, i32 %t40, 1
  %t42 = load i64, ptr %l13, !tbaa !24
  %t43 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t41, i64 %t42, 2
  %t45 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t43, ptr %t35, 3
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t45, ptr %t46
  %t47 = load { i64, [5 x i64] }, ptr %t36
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t47, ptr %t49
  store ptr %t49, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ethunkModule(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l49 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l12, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/load:Loader", ptr %t19, i32 0, i32 10
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l19
  br label %bb2
bb2:
  %t24 = load i64, ptr %l19, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb5:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l26, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l26, !tbaa !24
  store i64 %t51, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t52 = load i64, ptr %l23, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/load:Loader", ptr %t77, i32 0, i32 10
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  store ptr %t83, ptr %l49
  br label %bb13
bb13:
  %t84 = load ptr, ptr %l49, !tbaa !29
  %t86 = getelementptr %"compiler/load:Module", ptr %t84, i32 0, i32 4
  %t87 = load i64, ptr %t86, !tbaa !24
  %t88 = load i64, ptr %l2, !tbaa !24
  %t91 = icmp eq i64 %t87, %t88
  br i1 %t91, label %bb14, label %bb15
bb14:
  %t93 = load i64, ptr %l8, !tbaa !24
  store i64 %t93, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l7, !tbaa !24
  br label %bb9
bb18:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %s0, ptr %a0, ptr %l2, i32 %a1, i1 true)
  br label %bb2
bb2:
  %t9 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t9, ptr %l8
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i1 @compiler_2fcheck_2eifAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca i1
  %l11 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t4, { i64, ptr } %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/ast:If", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/ast:If", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_cc3b6ed7ca85eab5_875d9ef7a16c4e59)
  unreachable
bb8:
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/ast:If", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Branch", ptr %t30, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t38 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t34, { i64, ptr } %t35)
  store i1 %t38, ptr %l20
  br label %bb10
bb10:
  %t39 = load i1, ptr %l20, !tbaa !21
  store i1 %t39, ptr %l11, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l11, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/ast:If", ptr %t42, i32 0, i32 2
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %t45, { i64, ptr } %t46)
  store i1 %t49, ptr %l25
  br label %bb15
bb15:
  %t50 = load i1, ptr %l25, !tbaa !21
  store i1 %t50, ptr %rv
  br label %ret
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

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 %a0, i128 %a1) #0 {
entry:
  %l1 = alloca i128
  %l2 = alloca %"compiler/check:litv"
  %l9 = alloca %"compiler/check:litv"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
  store i128 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i128, ptr %l1
  %t2 = sub i64 0, 1
  %t4 = zext i64 %t2 to i128
  %t7 = and i128 %t1, %t4
  %t9 = trunc i128 %t7 to i64
  %t12 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s0, i1 true, i1 false, i1 true, i64 %t9, double 0x0000000000000000)
  store %"compiler/check:litv" %t12, ptr %l9
  br label %bb1
bb1:
  %t13 = load %"compiler/check:litv", ptr %l9
  store %"compiler/check:litv" %t13, ptr %l2
  %t14 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 6
  store i1 true, ptr %t14, !tbaa !21
  %t17 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 7
  store i1 %a0, ptr %t17, !tbaa !21
  %t18 = load i128, ptr %l1
  %t20 = getelementptr %"compiler/check:litv", ptr %l2, i32 0, i32 8
  store i128 %t18, ptr %t20
  %t21 = load %"compiler/check:litv", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/check:litv" %t21, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
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

define dso_local i1 @compiler_2fcheck_2erefWrittenTop(ptr %v0, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
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
  call void @__olang_check_failed(ptr @olang_loc_c8609edc258484d8_b7e66af2ba2e899c)
  unreachable
bb11:
  %t10 = load i1, ptr %l1, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 0, ptr %l2, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_524a47ae64dd06b8_5def175755840fac)
  unreachable
bb11:
  %t18 = load i32, ptr %l2, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/check:errNarrow" @compiler_2fcheck_3aerrNarrow_2ector(ptr %v0, i32 %a0, i32 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:errNarrow"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:errNarrow" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/check:errNarrow" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/check:errNarrow" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:errNarrow" %t14, i1 %a3, 3
  store %"compiler/check:errNarrow" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:errNarrow", ptr %rv
  ret %"compiler/check:errNarrow" %rr
}

define dso_local %"compiler/check:factsMark" @compiler_2fcheck_3afactsMark_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:factsMark"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:factsMark" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/check:factsMark" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/check:factsMark" %t10, i64 %a2, 2
  store %"compiler/check:factsMark" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factsMark", ptr %rv
  ret %"compiler/check:factsMark" %rr
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d7 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitXor" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'+'" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'*'" }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'&'" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'|'" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'^'" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
@__olang_empty_array = external constant [16 x i64]
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"CStr" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Neg" }>, align 8
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitNot" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Byte" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d42 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d43 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
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
declare i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_2196821906d7172f_ce8d1c9901dd14c3 = external constant [0 x i8]
declare void @compiler_2fcheck_2edeclNames(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
@olang_loc_507ed937f609d1d0_9b704622aa820f34 = external constant [0 x i8]
@olang_loc_27f4d264c3bf025_5d55a961c8f61129 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAltBindingType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2emeetPerm(i64 %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eSetAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/typed:Local" %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawned(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnySpawnedResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
@olang_loc_1f1b6690933c885_28748d6375f921a9 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8236d7e1b67531d4_b931f98a56a04ed8 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayLengthRange(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2fcheck_2eRoStored = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueFill(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkValue(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullableArray(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
@olang_loc_82b73da87554a50f_4f07d83e7e807a5b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesNotHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesSameType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCommutesClash(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einGeneric(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
@olang_loc_f494bb64cf9470cb_fc1fe1776461b86f = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_bc2b949bbef92b23_ac5d28fb0edf1ff = external constant [0 x i8]
@olang_loc_fc391d98a693d1b5_39c844f8cb4c6229 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCountRange(ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ff2084232290eae7_203579eb66e705cb = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ehasNamed(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_7f8223142f689eb4_f934e4a817092f38 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsWritable(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7aa3345d2beba7fc_151c01b23d5f0fc0 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %a0)
declare %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:nullNarrow" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f86034c51611be78_fcb436ddf25e679c = external constant [0 x i8]
declare %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(%"compiler/check:narrowed" %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %a0, i64 %a1, %"compiler/check:narrowed" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ac0ec5199a643ee5_806d52c3f6989969 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eSetA_H34a7475a189e9b126454728216b32261(ptr %v0, ptr %a0, i64 %a1, %"compiler/check:errNarrow" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountPost(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9c04d5f47d2250f6_3417b2e0d095e072 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6fdba33c6e4026bf_8c9edfb8735784b = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
@olang_loc_741a9378af09f4a0_ded013aa934cbd5c = external constant [0 x i8]
@olang_loc_60b5dc7e409a2d43_b151acede8aa733f = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f66b04275832bdf5_49261566e6ebbc09 = external constant [0 x i8]
@olang_loc_959932aa8b846e4e_2c1999e37dfb1a2 = external constant [0 x i8]
@olang_loc_f94ac378888081c5_5f597351c4418bf9 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_dbf8bf22da4e6195_39afff21f23036a9 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_17a01d5acd356999_bbab3392a6e164c5 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
@olang_loc_4138b01f2eedcaec_10fcf95e1b11f8e8 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
@olang_loc_d14fb46e4520a903_82d87293fe98a067 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonce(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %a0)
@olang_loc_d7951065f36562ee_848e8c34c6c42472 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %a0)
@olang_loc_fbd40b14c0771014_77084db5763620a0 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i1 %a3)
declare i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_cc3b6ed7ca85eab5_875d9ef7a16c4e59 = external constant [0 x i8]
@olang_loc_5b2b374f73dad39a_b03018bc2543a136 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
@olang_loc_f65b5445e0db363a_c2ab951bd73e6226 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
@olang_loc_29f8057051902f50_e91b4d9ed5822c7c = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0)
@olang_loc_c8609edc258484d8_b7e66af2ba2e899c = external constant [0 x i8]
@olang_loc_524a47ae64dd06b8_5def175755840fac = external constant [0 x i8]

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
