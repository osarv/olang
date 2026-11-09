source_filename = "compiler_check-16.quick.ll"
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
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/check:altsCovered" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1 }
%"compiler/check:payloadItem" = type { i32, ptr }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" = type { %"compiler/generic:Origin", i64 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/check:roOrigin" = type { ptr, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:landing" = type { i64, i64, %"compiler/source:Span", i32, i64 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/check:collWalk" = type { ptr, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/check:UnrollAsk" = type { { i64, ptr }, { i64, ptr }, i64, i32 }
%"compiler/check:ctSource" = type { ptr, ptr, { i64, ptr }, i64, { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
define dso_local { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l25 = alloca i1
  %l32 = alloca i1
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l2, !tbaa !27
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
  br label %bb24
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  store i8 %t21, ptr %l5, !tbaa !22
  %t23 = load i8, ptr %l5, !tbaa !22
  %t25 = icmp eq i8 %t23, 40
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb6:
  %t27 = load i8, ptr %l5, !tbaa !22
  %t29 = icmp eq i8 %t27, 91
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l1, !tbaa !24
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t36 = load i8, ptr %l5, !tbaa !22
  %t38 = icmp eq i8 %t36, 41
  br i1 %t38, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb13
bb12:
  %t40 = load i8, ptr %l5, !tbaa !22
  %t42 = icmp eq i8 %t40, 93
  store i1 %t42, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l1, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t49 = load i8, ptr %l5, !tbaa !22
  %t51 = icmp eq i8 %t49, 32
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t53 = load i64, ptr %l1, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  store i1 %t55, ptr %l32, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t57 = load i1, ptr %l32, !tbaa !21
  br i1 %t57, label %bb20, label %bb21
bb20:
  %t58 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t62 = extractvalue { i64, ptr } %t58, 1
  %t63 = extractvalue { i64, ptr } %t58, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t59, i64 %t60)
  %t69 = getelementptr i8, ptr %t68, i64 %t60
  call void @olang_textcopy(ptr %t69, ptr %t62, i64 %t63)
  %t70 = getelementptr i8, ptr %t69, i64 %t63
  call void @olang_textcopy(ptr %t70, ptr %t65, i64 %t66)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t68, 1
  store { i64, ptr } %t72, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t74 = load i64, ptr %l3, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l3, !tbaa !24
  br label %bb1
bb24:
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = extractvalue { i64, ptr } %t78, 0
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t80, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyDeclaresNames(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
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
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassignAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i1
  %l29 = alloca i32
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i32
  %l45 = alloca i1
  %l48 = alloca i32
  %l61 = alloca i64
  %l64 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca %"compiler/source:Span"
  %l71 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l80 = alloca %"compiler/diagmsg:Msg"
  %l81 = alloca i64
  %l85 = alloca i64
  %l87 = alloca ptr
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca i32
  %l90 = alloca ptr
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l95 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/source:Span"
  %l99 = alloca i1
  %l100 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l122 = alloca %"compiler/source:Span"
  %l123 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca ptr
  %l130 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l137 = alloca ptr
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i1
  %t250 = alloca { i64, [3 x i64] }, align 8
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
  store ptr %t1, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t2 = load ptr, ptr %l17, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l17, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l18, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l18, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l5
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l6, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  br label %bb5
bb4:
  br label %bb68
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l6, !tbaa !29
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i32 %t32, ptr %l29
  br label %bb6
bb6:
  %t33 = load i32, ptr %l29, !tbaa !23
  %t34 = icmp sge i32 %t33, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t37, ptr %t38)
  store ptr %t41, ptr %l34
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l34, !tbaa !29
  store ptr %t42, ptr %l8, !tbaa !29
  %t43 = load ptr, ptr %l8, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  %t49 = load ptr, ptr %l8, !tbaa !29
  %t51 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t49)
  store i32 %t51, ptr %l40
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l38, !tbaa !29
  %t53 = load i32, ptr %l40, !tbaa !23
  %t54 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l41
  br label %bb15
bb15:
  %t55 = load i32, ptr %l41, !tbaa !23
  store i32 %t55, ptr %l9, !tbaa !23
  %t56 = load i32, ptr %l9, !tbaa !23
  %t57 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t60 = icmp eq i32 %t56, %t57
  br i1 %t60, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb19
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l9, !tbaa !23
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l48
  br label %bb18
bb18:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t68 = load i32, ptr %l48, !tbaa !23
  %t70 = icmp ne i32 %t68, %t67
  store i1 %t70, ptr %l45, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l45, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t74 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t76 = trunc i64 78 to i32
  %t77 = icmp eq i32 %t74, %t76
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l9, !tbaa !23
  %t84 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t88 = add i64 %t86, 1
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s1, ptr %t82, i32 %t83, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, i64 %t88)
  store i64 %t92, ptr %l61
  br label %bb26
bb26:
  %t93 = load i64, ptr %l61, !tbaa !24
  store i64 %t93, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t96 = icmp slt i64 %t94, 0
  br i1 %t96, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l64, !tbaa !29
  %t99 = load ptr, ptr %l3, !tbaa !29
  %t101 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t99)
  store %"compiler/source:Span" %t101, ptr %l66
  br label %bb29
bb28:
  br label %bb39
bb29:
  %t102 = load ptr, ptr %l64, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l66
  %t104 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t102, %"compiler/source:Span" %t103, i64 1)
  store %"compiler/source:Span" %t104, ptr %l67
  br label %bb30
bb30:
  %t105 = load %"compiler/source:Span", ptr %l67
  store %"compiler/source:Span" %t105, ptr %l11
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l9, !tbaa !23
  %t108 = load %"compiler/source:Span", ptr %l11
  %t112 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s6, ptr %s6, ptr %t106, i32 %t107, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, %"compiler/source:Span" %t108, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d4, i32 0, i32 1) }, i64 2, i1 true)
  store i1 %t112, ptr %l71
  br label %bb31
bb31:
  %t113 = load i1, ptr %l71, !tbaa !21
  %t114 = xor i1 %t113, true
  br i1 %t114, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s7
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l73, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l11
  store %"compiler/source:Span" %t117, ptr %l74
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l75, !tbaa !29
  %t119 = load ptr, ptr %l8, !tbaa !29
  %t121 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t119)
  store i32 %t121, ptr %l77
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t122 = load ptr, ptr %l75, !tbaa !29
  %t123 = load i32, ptr %l77, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t122, i32 %t123)
  store { i64, ptr } %t124, ptr %l78
  br label %bb35
bb35:
  %t125 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  %t127 = extractvalue { i64, ptr } %t125, 1
  %t128 = mul i64 %t126, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t129, ptr %t127, i64 %t128, i1 false)
  %t130 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  %t133 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetatUndeclared(ptr %s7, ptr %s7, { i64, ptr } %t131)
  store %"compiler/diagmsg:Msg" %t133, ptr %l80
  br label %bb36
bb36:
  %t134 = load ptr, ptr %l73, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l74
  %t136 = load %"compiler/diagmsg:Msg", ptr %l80
  %t137 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t134, %"compiler/source:Span" %t135, %"compiler/diagmsg:Msg" %t136)
  store i64 %t137, ptr %l81
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s7)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb39:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l8, !tbaa !29
  %t143 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v0, ptr %t139, ptr %t140)
  store i64 %t143, ptr %l85
  br label %bb40
bb40:
  %t144 = load i64, ptr %l85, !tbaa !24
  %t145 = icmp sge i64 %t144, 0
  br i1 %t145, label %bb41, label %bb42
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l87, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t148, ptr %l88
  %t149 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t149, ptr %l89
  %t150 = load ptr, ptr %l8, !tbaa !29
  store ptr %t150, ptr %l90, !tbaa !29
  %t151 = load ptr, ptr %l4, !tbaa !29
  store ptr %t151, ptr %l92, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l93, !tbaa !29
  %t154 = load ptr, ptr %l3, !tbaa !29
  %t156 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t154)
  store %"compiler/source:Span" %t156, ptr %l95
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t157 = load ptr, ptr %l93, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l95
  %t159 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t157, %"compiler/source:Span" %t158, i64 1)
  store %"compiler/source:Span" %t159, ptr %l96
  br label %bb44
bb44:
  %t160 = load i64, ptr %l10, !tbaa !24
  %t161 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t162 = load ptr, ptr %l87, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l88
  %t164 = load i32, ptr %l89, !range !{i32 0, i32 114}
  %t165 = load ptr, ptr %l90, !tbaa !29
  %t166 = load ptr, ptr %l92, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l96
  %t170 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBack(ptr %v0, ptr %v0, ptr %v2, ptr %v1, ptr %t162, %"compiler/source:Span" %t163, i32 %t164, ptr %t165, ptr %t166, %"compiler/source:Span" %t167, i64 %t160, { i64, ptr } %t161)
  store i1 %t170, ptr %l99
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s1)
  %t171 = load i1, ptr %l99, !tbaa !21
  store i1 %t171, ptr %rv
  br label %ret
bb46:
  %t172 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %l100
  br label %bb47
bb47:
  %t173 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100
  %t174 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t173, ptr %t174
  store ptr %t174, ptr %l12, !tbaa !29
  %t176 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t176, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  store i64 %t180, ptr %l15, !tbaa !24
  br label %bb48
bb48:
  %t182 = load i64, ptr %l14, !tbaa !24
  %t183 = load i64, ptr %l15, !tbaa !24
  %t186 = icmp slt i64 %t182, %t183
  %t188 = xor i1 %t186, true
  br i1 %t188, label %bb49, label %bb50
bb49:
  br label %bb54
bb50:
  br label %bb51
bb51:
  %t190 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t190, ptr %l109, !tbaa !27
  %t191 = load i64, ptr %l14, !tbaa !24
  %t193 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr ptr, ptr %t194, i64 %t191
  %t196 = load ptr, ptr %t195, !tbaa !39
  %t198 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t198, ptr %t196)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t202 = load i64, ptr %l14, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l14, !tbaa !24
  br label %bb48
bb54:
  %t206 = load ptr, ptr %l12, !tbaa !29
  %t207 = load ptr, ptr %l4, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t206, ptr %t207)
  br label %bb55
bb55:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l118, !tbaa !29
  %t211 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t211, ptr %l119
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l120, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t213, ptr %l121
  %t214 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t214, ptr %l122
  %t215 = load i64, ptr %l10, !tbaa !24
  store i64 %t215, ptr %l123, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l5
  %t218 = load ptr, ptr %l8, !tbaa !29
  %t222 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t216, %"compiler/source:Span" %t217, ptr %t218)
  store ptr %t222, ptr %l127
  br label %bb56
bb56:
  %t223 = load ptr, ptr %l127, !tbaa !29
  store ptr %t223, ptr %l128, !tbaa !29
  %t224 = load ptr, ptr %l12, !tbaa !29
  %t226 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t224)
  store { i64, ptr } %t226, ptr %l130
  br label %bb57
bb57:
  %t227 = icmp sge i64 0, 0
  br i1 %t227, label %bb58, label %bb59
bb58:
  %t229 = icmp sle i64 0, 1152921504606846975
  br i1 %t229, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_481df18796619d00_e450b1e3b67cd36c)
  unreachable
bb60:
  %t231 = mul i64 0, 8
  %t232 = insertvalue { i64, ptr } undef, i64 0, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t233, ptr %l133, !tbaa !27
  %t234 = icmp sge i64 0, 0
  br i1 %t234, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_481df18796619d00_e450b1e3b67cd36c)
  unreachable
bb62:
  %t236 = icmp sle i64 0, 2305843009213693951
  br i1 %t236, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_af0d91289a1be42d_4e0f74b352066f9)
  unreachable
bb64:
  %t238 = mul i64 0, 4
  %t239 = insertvalue { i64, ptr } undef, i64 0, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t241 = load ptr, ptr %l120, !tbaa !29
  %t242 = load %"compiler/source:Span", ptr %l121
  %t243 = load %"compiler/source:Span", ptr %l122
  %t244 = load i64, ptr %l123, !tbaa !24
  %t245 = load ptr, ptr %l128, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t241, %"compiler/source:Span" %t242, %"compiler/source:Span" %t243, i64 %t244, ptr %t245, { i64, ptr } %t246, { i64, ptr } %t247, { i64, ptr } %t240)
  store ptr %t249, ptr %l137
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_af0d91289a1be42d_4e0f74b352066f9)
  unreachable
bb66:
  store { i64, [3 x i64] } zeroinitializer, ptr %t250
  %t251 = getelementptr { i64, [3 x i64] }, ptr %t250, i32 0, i32 0
  store i64 2, ptr %t251
  %t252 = load %"compiler/source:Span", ptr %l119
  %t253 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t252, 0
  %t254 = load ptr, ptr %l137, !tbaa !29
  %t255 = insertvalue { %"compiler/source:Span", ptr } %t253, ptr %t254, 1
  %t256 = getelementptr { i64, [3 x i64] }, ptr %t250, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t255, ptr %t256
  %t257 = load { i64, [3 x i64] }, ptr %t250
  %t259 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t257, ptr %t259
  %t260 = load ptr, ptr %l118, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t260, ptr %t259)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store i1 false, ptr %rv
  br label %ret
bb72:
  call void @__olang_check_failed(ptr @olang_loc_490471cc9535e935_aa1636ccadcd0f9)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
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
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
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
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i32
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l66 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca i1
  %l153 = alloca { i64, ptr }
  %l162 = alloca ptr
  %l163 = alloca i1
  %l176 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l190 = alloca i1
  %l204 = alloca ptr
  %l205 = alloca i1
  %l217 = alloca { i64, ptr }
  %l226 = alloca ptr
  %l227 = alloca i1
  %l247 = alloca ptr
  %l248 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i1
  %l281 = alloca { i64, ptr }
  %l294 = alloca ptr
  %l295 = alloca i1
  %l308 = alloca { i64, ptr }
  %l325 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l339 = alloca i1
  %l356 = alloca { i64, ptr }
  %l371 = alloca { i64, ptr }
  %l382 = alloca ptr
  %l383 = alloca i1
  %l388 = alloca ptr
  %l389 = alloca i1
  %l398 = alloca ptr
  %l399 = alloca i1
  %l417 = alloca { i64, ptr }
  %l427 = alloca ptr
  %l428 = alloca i1
  %l443 = alloca ptr
  %l444 = alloca i1
  %l457 = alloca { i64, ptr }
  %l465 = alloca ptr
  %l466 = alloca i1
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
  store ptr %t5, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t6 = load ptr, ptr %l69, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l69, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l70, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l70, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t20, ptr %t21, ptr %t22)
  br label %bb9
bb9:
  br label %bb239
bb10:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t28 = load ptr, ptr %l79, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l79, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 3
  store i1 %t34, ptr %l80, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l80, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t43, ptr %t44)
  br label %bb16
bb16:
  br label %bb239
bb17:
  %t49 = load ptr, ptr %l2, !tbaa !29
  store ptr %t49, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t50 = load ptr, ptr %l89, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb18, label %bb19
bb18:
  %t53 = load ptr, ptr %l89, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 18}
  %t56 = icmp eq i64 %t54, 4
  store i1 %t56, ptr %l90, !tbaa !21
  br label %bb19
bb19:
  %t57 = load i1, ptr %l90, !tbaa !21
  br i1 %t57, label %bb20, label %bb21
bb20:
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t60, i32 0, i32 2
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t66 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t64, ptr %t65, ptr %t66)
  br label %bb23
bb23:
  br label %bb239
bb24:
  %t71 = load ptr, ptr %l2, !tbaa !29
  store ptr %t71, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t72 = load ptr, ptr %l99, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb25, label %bb26
bb25:
  %t75 = load ptr, ptr %l99, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 18}
  %t78 = icmp eq i64 %t76, 5
  store i1 %t78, ptr %l100, !tbaa !21
  br label %bb26
bb26:
  %t79 = load i1, ptr %l100, !tbaa !21
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t88 = load ptr, ptr %l6, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Promote", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t86, ptr %t87, ptr %t91)
  br label %bb30
bb30:
  br label %bb239
bb31:
  %t96 = load ptr, ptr %l2, !tbaa !29
  store ptr %t96, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t97 = load ptr, ptr %l110, !tbaa !29
  %t98 = icmp ne ptr %t97, null
  br i1 %t98, label %bb32, label %bb33
bb32:
  %t100 = load ptr, ptr %l110, !tbaa !29
  %t101 = load i64, ptr %t100, !range !{i64 0, i64 18}
  %t103 = icmp eq i64 %t101, 6
  store i1 %t103, ptr %l111, !tbaa !21
  br label %bb33
bb33:
  %t104 = load i1, ptr %l111, !tbaa !21
  br i1 %t104, label %bb34, label %bb35
bb34:
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  %t108 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t107, i32 0, i32 2
  %t109 = load ptr, ptr %t108
  store ptr %t109, ptr %l7, !tbaa !29
  br label %bb36
bb35:
  br label %bb69
bb36:
  %t111 = load ptr, ptr %l7, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Call", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  store ptr %t114, ptr %l8, !tbaa !29
  %t116 = load ptr, ptr %l8, !tbaa !29
  store ptr %t116, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t117 = load ptr, ptr %l118, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb37, label %bb38
bb37:
  %t120 = load ptr, ptr %l118, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 5}
  %t123 = icmp eq i64 %t121, 0
  store i1 %t123, ptr %l119, !tbaa !21
  br label %bb38
bb38:
  %t124 = load i1, ptr %l119, !tbaa !21
  br i1 %t124, label %bb39, label %bb40
bb39:
  %t125 = load ptr, ptr %l8, !tbaa !29
  %t127 = getelementptr { i64, [3 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { i32 }, ptr %t127, i32 0, i32 0
  %t129 = load i32, ptr %t128
  store i32 %t129, ptr %l9, !tbaa !23
  br label %bb41
bb40:
  br label %bb46
bb41:
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr %"compiler/check:b5aWalk", ptr %t131, i32 0, i32 6
  %t134 = load i1, ptr %t133, !tbaa !21
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t140 = load i32, ptr %l9, !tbaa !23
  %t142 = sext i32 %t140 to i64
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %t138, ptr %t139, i64 %t142)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %bb61
bb46:
  %t146 = load ptr, ptr %l8, !tbaa !29
  store ptr %t146, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t147 = load ptr, ptr %l131, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb47, label %bb48
bb47:
  %t150 = load ptr, ptr %l131, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 5}
  %t153 = icmp eq i64 %t151, 2
  store i1 %t153, ptr %l132, !tbaa !21
  br label %bb48
bb48:
  %t154 = load i1, ptr %l132, !tbaa !21
  br i1 %t154, label %bb49, label %bb50
bb49:
  %t155 = load ptr, ptr %l8, !tbaa !29
  %t157 = getelementptr { i64, [3 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { ptr }, ptr %t157, i32 0, i32 0
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l10, !tbaa !29
  br label %bb51
bb50:
  br label %bb56
bb51:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/check:b5aWalk", ptr %t161, i32 0, i32 6
  %t164 = load i1, ptr %t163, !tbaa !21
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb52, label %bb53
bb52:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr %"compiler/check:b5aWalk", ptr %t168, i32 0, i32 7
  store i1 true, ptr %t170, !tbaa !21
  br label %bb54
bb53:
  br label %bb54
bb54:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t173 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t171, ptr %t172, ptr %t173)
  br label %bb55
bb55:
  br label %bb61
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_94214b31169ec8c4_68c852e51d74cc68)
  unreachable
bb61:
  %t178 = load ptr, ptr %l7, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Call", ptr %t178, i32 0, i32 1
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t183 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  store i64 %t185, ptr %l13, !tbaa !24
  br label %bb62
bb62:
  %t187 = load i64, ptr %l12, !tbaa !24
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t195 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t195, ptr %l153, !tbaa !27
  %t196 = load i64, ptr %l12, !tbaa !24
  %t198 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr ptr, ptr %t199, i64 %t196
  %t201 = load ptr, ptr %t200, !tbaa !39
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t203, ptr %t204, ptr %t201)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t210 = load i64, ptr %l12, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l12, !tbaa !24
  br label %bb62
bb68:
  br label %bb239
bb69:
  %t214 = load ptr, ptr %l2, !tbaa !29
  store ptr %t214, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t215 = load ptr, ptr %l162, !tbaa !29
  %t216 = icmp ne ptr %t215, null
  br i1 %t216, label %bb70, label %bb71
bb70:
  %t218 = load ptr, ptr %l162, !tbaa !29
  %t219 = load i64, ptr %t218, !range !{i64 0, i64 18}
  %t221 = icmp eq i64 %t219, 7
  store i1 %t221, ptr %l163, !tbaa !21
  br label %bb71
bb71:
  %t222 = load i1, ptr %l163, !tbaa !21
  br i1 %t222, label %bb72, label %bb73
bb72:
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = getelementptr { i64, [5 x i64] }, ptr %t223, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t225, i32 0, i32 2
  %t227 = load ptr, ptr %t226
  store ptr %t227, ptr %l15, !tbaa !29
  br label %bb74
bb73:
  br label %bb83
bb74:
  %t229 = load ptr, ptr %l15, !tbaa !29
  %t231 = getelementptr %"compiler/typed:Make", ptr %t229, i32 0, i32 2
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !27
  store { i64, ptr } %t232, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t234 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  store i64 %t236, ptr %l18, !tbaa !24
  br label %bb75
bb75:
  %t238 = load i64, ptr %l17, !tbaa !24
  %t239 = load i64, ptr %l18, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb76, label %bb77
bb76:
  br label %bb81
bb77:
  br label %bb78
bb78:
  %t246 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t246, ptr %l176, !tbaa !27
  %t247 = load i64, ptr %l17, !tbaa !24
  %t249 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr ptr, ptr %t250, i64 %t247
  %t252 = load ptr, ptr %t251, !tbaa !39
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t254, ptr %t255, ptr %t252)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t261 = load i64, ptr %l17, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l17, !tbaa !24
  br label %bb75
bb81:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t267 = load ptr, ptr %l15, !tbaa !29
  %t269 = getelementptr %"compiler/typed:Make", ptr %t267, i32 0, i32 3
  %t270 = load ptr, ptr %t269, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t265, ptr %t266, ptr %t270)
  br label %bb82
bb82:
  br label %bb239
bb83:
  %t274 = load ptr, ptr %l2, !tbaa !29
  store ptr %t274, ptr %l189, !tbaa !29
  store i1 false, ptr %l190, !tbaa !21
  %t275 = load ptr, ptr %l189, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb84, label %bb85
bb84:
  %t278 = load ptr, ptr %l189, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 18}
  %t281 = icmp eq i64 %t279, 8
  store i1 %t281, ptr %l190, !tbaa !21
  br label %bb85
bb85:
  %t282 = load i1, ptr %l190, !tbaa !21
  br i1 %t282, label %bb86, label %bb87
bb86:
  %t283 = load ptr, ptr %l2, !tbaa !29
  %t285 = getelementptr { i64, [5 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t285, i32 0, i32 2
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l20, !tbaa !29
  br label %bb88
bb87:
  br label %bb91
bb88:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t291 = load ptr, ptr %l20, !tbaa !29
  %t293 = getelementptr %"compiler/typed:Collect", ptr %t291, i32 0, i32 0
  %t294 = load ptr, ptr %t293, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t289, ptr %t290, ptr %t294)
  br label %bb89
bb89:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l1, !tbaa !29
  %t300 = load ptr, ptr %l20, !tbaa !29
  %t302 = getelementptr %"compiler/typed:Collect", ptr %t300, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t298, ptr %t299, ptr %t303)
  br label %bb90
bb90:
  br label %bb239
bb91:
  %t308 = load ptr, ptr %l2, !tbaa !29
  store ptr %t308, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t309 = load ptr, ptr %l204, !tbaa !29
  %t310 = icmp ne ptr %t309, null
  br i1 %t310, label %bb92, label %bb93
bb92:
  %t312 = load ptr, ptr %l204, !tbaa !29
  %t313 = load i64, ptr %t312, !range !{i64 0, i64 18}
  %t315 = icmp eq i64 %t313, 9
  store i1 %t315, ptr %l205, !tbaa !21
  br label %bb93
bb93:
  %t316 = load i1, ptr %l205, !tbaa !21
  br i1 %t316, label %bb94, label %bb95
bb94:
  %t317 = load ptr, ptr %l2, !tbaa !29
  %t319 = getelementptr { i64, [5 x i64] }, ptr %t317, i32 0, i32 1
  %t320 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t319, i32 0, i32 4
  %t321 = load { i64, ptr }, ptr %t320
  store { i64, ptr } %t321, ptr %l21, !tbaa !27
  br label %bb96
bb95:
  br label %bb104
bb96:
  %t323 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t323, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t325 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t325, 0
  store i64 %t327, ptr %l24, !tbaa !24
  br label %bb97
bb97:
  %t329 = load i64, ptr %l23, !tbaa !24
  %t330 = load i64, ptr %l24, !tbaa !24
  %t333 = icmp slt i64 %t329, %t330
  %t335 = xor i1 %t333, true
  br i1 %t335, label %bb98, label %bb99
bb98:
  br label %bb103
bb99:
  br label %bb100
bb100:
  %t337 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t337, ptr %l217, !tbaa !27
  %t338 = load i64, ptr %l23, !tbaa !24
  %t340 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = getelementptr ptr, ptr %t341, i64 %t338
  %t343 = load ptr, ptr %t342, !tbaa !39
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t345, ptr %t346, ptr %t343)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t352 = load i64, ptr %l23, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l23, !tbaa !24
  br label %bb97
bb103:
  br label %bb239
bb104:
  %t356 = load ptr, ptr %l2, !tbaa !29
  store ptr %t356, ptr %l226, !tbaa !29
  store i1 false, ptr %l227, !tbaa !21
  %t357 = load ptr, ptr %l226, !tbaa !29
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %bb105, label %bb106
bb105:
  %t360 = load ptr, ptr %l226, !tbaa !29
  %t361 = load i64, ptr %t360, !range !{i64 0, i64 18}
  %t363 = icmp eq i64 %t361, 10
  store i1 %t363, ptr %l227, !tbaa !21
  br label %bb106
bb106:
  %t364 = load i1, ptr %l227, !tbaa !21
  br i1 %t364, label %bb107, label %bb108
bb107:
  %t365 = load ptr, ptr %l2, !tbaa !29
  %t367 = getelementptr { i64, [5 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t367, i32 0, i32 2
  %t369 = load ptr, ptr %t368
  store ptr %t369, ptr %l26, !tbaa !29
  br label %bb109
bb108:
  br label %bb113
bb109:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load ptr, ptr %l1, !tbaa !29
  %t373 = load ptr, ptr %l26, !tbaa !29
  %t375 = getelementptr %"compiler/typed:Slice", ptr %t373, i32 0, i32 0
  %t376 = load ptr, ptr %t375, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t371, ptr %t372, ptr %t376)
  br label %bb110
bb110:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load ptr, ptr %l1, !tbaa !29
  %t383 = load ptr, ptr %l26, !tbaa !29
  %t385 = getelementptr %"compiler/typed:Slice", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t381, ptr %t382, ptr %t386)
  br label %bb111
bb111:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load ptr, ptr %l1, !tbaa !29
  %t393 = load ptr, ptr %l26, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Slice", ptr %t393, i32 0, i32 2
  %t396 = load ptr, ptr %t395, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t391, ptr %t392, ptr %t396)
  br label %bb112
bb112:
  br label %bb239
bb113:
  %t401 = load ptr, ptr %l2, !tbaa !29
  store ptr %t401, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t402 = load ptr, ptr %l247, !tbaa !29
  %t403 = icmp ne ptr %t402, null
  br i1 %t403, label %bb114, label %bb115
bb114:
  %t405 = load ptr, ptr %l247, !tbaa !29
  %t406 = load i64, ptr %t405, !range !{i64 0, i64 18}
  %t408 = icmp eq i64 %t406, 11
  store i1 %t408, ptr %l248, !tbaa !21
  br label %bb115
bb115:
  %t409 = load i1, ptr %l248, !tbaa !21
  br i1 %t409, label %bb116, label %bb117
bb116:
  %t410 = load ptr, ptr %l2, !tbaa !29
  %t412 = getelementptr { i64, [5 x i64] }, ptr %t410, i32 0, i32 1
  %t413 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t412, i32 0, i32 2
  %t414 = load ptr, ptr %t413
  store ptr %t414, ptr %l27, !tbaa !29
  br label %bb118
bb117:
  br label %bb122
bb118:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load ptr, ptr %l1, !tbaa !29
  %t418 = load ptr, ptr %l27, !tbaa !29
  %t420 = getelementptr %"compiler/typed:Cond", ptr %t418, i32 0, i32 0
  %t421 = load ptr, ptr %t420, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t416, ptr %t417, ptr %t421)
  br label %bb119
bb119:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load ptr, ptr %l1, !tbaa !29
  %t428 = load ptr, ptr %l27, !tbaa !29
  %t430 = getelementptr %"compiler/typed:Cond", ptr %t428, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t426, ptr %t427, ptr %t431)
  br label %bb120
bb120:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t436 = load ptr, ptr %l1, !tbaa !29
  %t437 = load ptr, ptr %l27, !tbaa !29
  %t439 = getelementptr %"compiler/typed:Cond", ptr %t437, i32 0, i32 2
  %t440 = load ptr, ptr %t439, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t435, ptr %t436, ptr %t440)
  br label %bb121
bb121:
  br label %bb239
bb122:
  %t445 = load ptr, ptr %l2, !tbaa !29
  store ptr %t445, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t446 = load ptr, ptr %l267, !tbaa !29
  %t447 = icmp ne ptr %t446, null
  br i1 %t447, label %bb123, label %bb124
bb123:
  %t449 = load ptr, ptr %l267, !tbaa !29
  %t450 = load i64, ptr %t449, !range !{i64 0, i64 18}
  %t452 = icmp eq i64 %t450, 12
  store i1 %t452, ptr %l268, !tbaa !21
  br label %bb124
bb124:
  %t453 = load i1, ptr %l268, !tbaa !21
  br i1 %t453, label %bb125, label %bb126
bb125:
  %t454 = load ptr, ptr %l2, !tbaa !29
  %t456 = getelementptr { i64, [5 x i64] }, ptr %t454, i32 0, i32 1
  %t457 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t456, i32 0, i32 2
  %t458 = load ptr, ptr %t457
  store ptr %t458, ptr %l28, !tbaa !29
  br label %bb127
bb126:
  br label %bb136
bb127:
  %t460 = load ptr, ptr %l28, !tbaa !29
  %t462 = getelementptr %"compiler/typed:Seq", ptr %t460, i32 0, i32 0
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t465 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t465, 0
  store i64 %t467, ptr %l31, !tbaa !24
  br label %bb128
bb128:
  %t469 = load i64, ptr %l30, !tbaa !24
  %t470 = load i64, ptr %l31, !tbaa !24
  %t473 = icmp slt i64 %t469, %t470
  %t475 = xor i1 %t473, true
  br i1 %t475, label %bb129, label %bb130
bb129:
  br label %bb134
bb130:
  br label %bb131
bb131:
  %t477 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t477, ptr %l281, !tbaa !27
  %t478 = load i64, ptr %l30, !tbaa !24
  %t480 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !27
  %t482 = getelementptr ptr, ptr %t481, i64 %t478
  %t483 = load ptr, ptr %t482, !tbaa !39
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t486 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %t485, ptr %t486, ptr %t483)
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t492 = load i64, ptr %l30, !tbaa !24
  %t494 = add i64 %t492, 1
  store i64 %t494, ptr %l30, !tbaa !24
  br label %bb128
bb134:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load ptr, ptr %l1, !tbaa !29
  %t498 = load ptr, ptr %l28, !tbaa !29
  %t500 = getelementptr %"compiler/typed:Seq", ptr %t498, i32 0, i32 1
  %t501 = load ptr, ptr %t500, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t496, ptr %t497, ptr %t501)
  br label %bb135
bb135:
  br label %bb239
bb136:
  %t505 = load ptr, ptr %l2, !tbaa !29
  store ptr %t505, ptr %l294, !tbaa !29
  store i1 false, ptr %l295, !tbaa !21
  %t506 = load ptr, ptr %l294, !tbaa !29
  %t507 = icmp ne ptr %t506, null
  br i1 %t507, label %bb137, label %bb138
bb137:
  %t509 = load ptr, ptr %l294, !tbaa !29
  %t510 = load i64, ptr %t509, !range !{i64 0, i64 18}
  %t512 = icmp eq i64 %t510, 13
  store i1 %t512, ptr %l295, !tbaa !21
  br label %bb138
bb138:
  %t513 = load i1, ptr %l295, !tbaa !21
  br i1 %t513, label %bb139, label %bb140
bb139:
  %t514 = load ptr, ptr %l2, !tbaa !29
  %t516 = getelementptr { i64, [5 x i64] }, ptr %t514, i32 0, i32 1
  %t517 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t516, i32 0, i32 2
  %t518 = load ptr, ptr %t517
  store ptr %t518, ptr %l33, !tbaa !29
  br label %bb141
bb140:
  br label %bb157
bb141:
  %t520 = load ptr, ptr %l33, !tbaa !29
  %t522 = getelementptr %"compiler/typed:Match", ptr %t520, i32 0, i32 0
  %t523 = load { i64, ptr }, ptr %t522, !tbaa !27
  store { i64, ptr } %t523, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t525 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t527 = extractvalue { i64, ptr } %t525, 0
  store i64 %t527, ptr %l36, !tbaa !24
  br label %bb142
bb142:
  %t529 = load i64, ptr %l35, !tbaa !24
  %t530 = load i64, ptr %l36, !tbaa !24
  %t533 = icmp slt i64 %t529, %t530
  %t535 = xor i1 %t533, true
  br i1 %t535, label %bb143, label %bb144
bb143:
  br label %bb148
bb144:
  br label %bb145
bb145:
  %t537 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t537, ptr %l308, !tbaa !27
  %t538 = load i64, ptr %l35, !tbaa !24
  %t540 = getelementptr { i64, ptr }, ptr %l308, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !27
  %t542 = getelementptr ptr, ptr %t541, i64 %t538
  %t543 = load ptr, ptr %t542, !tbaa !39
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %t545, ptr %t546, ptr %t543)
  br label %bb146
bb146:
  br label %bb147
bb147:
  %t552 = load i64, ptr %l35, !tbaa !24
  %t554 = add i64 %t552, 1
  store i64 %t554, ptr %l35, !tbaa !24
  br label %bb142
bb148:
  %t556 = load ptr, ptr %l33, !tbaa !29
  %t558 = getelementptr %"compiler/typed:Match", ptr %t556, i32 0, i32 1
  %t559 = load { i64, ptr }, ptr %t558, !tbaa !27
  store { i64, ptr } %t559, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t561 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t561, 0
  store i64 %t563, ptr %l40, !tbaa !24
  br label %bb149
bb149:
  %t565 = load i64, ptr %l39, !tbaa !24
  %t566 = load i64, ptr %l40, !tbaa !24
  %t569 = icmp slt i64 %t565, %t566
  %t571 = xor i1 %t569, true
  br i1 %t571, label %bb150, label %bb151
bb150:
  br label %bb155
bb151:
  br label %bb152
bb152:
  %t573 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t573, ptr %l325, !tbaa !27
  %t574 = load i64, ptr %l39, !tbaa !24
  %t576 = getelementptr { i64, ptr }, ptr %l325, i32 0, i32 1
  %t577 = load ptr, ptr %t576, !tbaa !27
  %t578 = getelementptr ptr, ptr %t577, i64 %t574
  %t579 = load ptr, ptr %t578, !tbaa !39
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aArm(ptr %v0, ptr %v1, ptr %v2, ptr %t581, ptr %t582, ptr %t579)
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t588 = load i64, ptr %l39, !tbaa !24
  %t590 = add i64 %t588, 1
  store i64 %t590, ptr %l39, !tbaa !24
  br label %bb149
bb155:
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t593 = load ptr, ptr %l1, !tbaa !29
  %t594 = load ptr, ptr %l33, !tbaa !29
  %t596 = getelementptr %"compiler/typed:Match", ptr %t594, i32 0, i32 2
  %t597 = load ptr, ptr %t596, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aArm(ptr %v0, ptr %v1, ptr %v2, ptr %t592, ptr %t593, ptr %t597)
  br label %bb156
bb156:
  br label %bb239
bb157:
  %t601 = load ptr, ptr %l2, !tbaa !29
  store ptr %t601, ptr %l338, !tbaa !29
  store i1 false, ptr %l339, !tbaa !21
  %t602 = load ptr, ptr %l338, !tbaa !29
  %t603 = icmp ne ptr %t602, null
  br i1 %t603, label %bb158, label %bb159
bb158:
  %t605 = load ptr, ptr %l338, !tbaa !29
  %t606 = load i64, ptr %t605, !range !{i64 0, i64 18}
  %t608 = icmp eq i64 %t606, 14
  store i1 %t608, ptr %l339, !tbaa !21
  br label %bb159
bb159:
  %t609 = load i1, ptr %l339, !tbaa !21
  br i1 %t609, label %bb160, label %bb161
bb160:
  %t610 = load ptr, ptr %l2, !tbaa !29
  %t612 = getelementptr { i64, [5 x i64] }, ptr %t610, i32 0, i32 1
  %t613 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t612, i32 0, i32 2
  %t614 = load ptr, ptr %t613
  store ptr %t614, ptr %l42, !tbaa !29
  br label %bb162
bb161:
  br label %bb178
bb162:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t617 = load ptr, ptr %l1, !tbaa !29
  %t618 = load ptr, ptr %l42, !tbaa !29
  %t620 = getelementptr %"compiler/typed:Try", ptr %t618, i32 0, i32 0
  %t621 = load ptr, ptr %t620, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t616, ptr %t617, ptr %t621)
  br label %bb163
bb163:
  %t625 = load ptr, ptr %l42, !tbaa !29
  %t627 = getelementptr %"compiler/typed:Try", ptr %t625, i32 0, i32 1
  %t628 = load { i64, ptr }, ptr %t627, !tbaa !27
  store { i64, ptr } %t628, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t630 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t632 = extractvalue { i64, ptr } %t630, 0
  store i64 %t632, ptr %l45, !tbaa !24
  br label %bb164
bb164:
  %t634 = load i64, ptr %l44, !tbaa !24
  %t635 = load i64, ptr %l45, !tbaa !24
  %t638 = icmp slt i64 %t634, %t635
  %t640 = xor i1 %t638, true
  br i1 %t640, label %bb165, label %bb166
bb165:
  br label %bb177
bb166:
  br label %bb167
bb167:
  %t642 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t642, ptr %l356, !tbaa !27
  %t643 = load i64, ptr %l44, !tbaa !24
  %t645 = getelementptr { i64, ptr }, ptr %l356, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !27
  %t647 = getelementptr ptr, ptr %t646, i64 %t643
  %t648 = load ptr, ptr %t647, !tbaa !39
  store ptr %t648, ptr %l46, !tbaa !29
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load ptr, ptr %l1, !tbaa !29
  %t652 = load ptr, ptr %l46, !tbaa !29
  %t654 = getelementptr %"compiler/typed:Clause", ptr %t652, i32 0, i32 3
  %t655 = load ptr, ptr %t654, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t650, ptr %t651, ptr %t655)
  br label %bb168
bb168:
  %t659 = load ptr, ptr %l46, !tbaa !29
  %t661 = getelementptr %"compiler/typed:Clause", ptr %t659, i32 0, i32 4
  %t662 = load { i64, ptr }, ptr %t661, !tbaa !27
  store { i64, ptr } %t662, ptr %l47, !tbaa !27
  store i64 0, ptr %l48, !tbaa !24
  %t664 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t666 = extractvalue { i64, ptr } %t664, 0
  store i64 %t666, ptr %l49, !tbaa !24
  br label %bb169
bb169:
  %t668 = load i64, ptr %l48, !tbaa !24
  %t669 = load i64, ptr %l49, !tbaa !24
  %t672 = icmp slt i64 %t668, %t669
  %t674 = xor i1 %t672, true
  br i1 %t674, label %bb170, label %bb171
bb170:
  br label %bb175
bb171:
  br label %bb172
bb172:
  %t676 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t676, ptr %l371, !tbaa !27
  %t677 = load i64, ptr %l48, !tbaa !24
  %t679 = getelementptr { i64, ptr }, ptr %l371, i32 0, i32 1
  %t680 = load ptr, ptr %t679, !tbaa !27
  %t681 = getelementptr ptr, ptr %t680, i64 %t677
  %t682 = load ptr, ptr %t681, !tbaa !39
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t684, ptr %t685, ptr %t682)
  br label %bb173
bb173:
  br label %bb174
bb174:
  %t691 = load i64, ptr %l48, !tbaa !24
  %t693 = add i64 %t691, 1
  store i64 %t693, ptr %l48, !tbaa !24
  br label %bb169
bb175:
  br label %bb176
bb176:
  %t695 = load i64, ptr %l44, !tbaa !24
  %t697 = add i64 %t695, 1
  store i64 %t697, ptr %l44, !tbaa !24
  br label %bb164
bb177:
  br label %bb239
bb178:
  %t699 = load ptr, ptr %l2, !tbaa !29
  store ptr %t699, ptr %l382, !tbaa !29
  store i1 false, ptr %l383, !tbaa !21
  %t700 = load ptr, ptr %l382, !tbaa !29
  %t701 = icmp ne ptr %t700, null
  br i1 %t701, label %bb179, label %bb180
bb179:
  %t703 = load ptr, ptr %l382, !tbaa !29
  %t704 = load i64, ptr %t703, !range !{i64 0, i64 18}
  %t706 = icmp eq i64 %t704, 15
  store i1 %t706, ptr %l383, !tbaa !21
  br label %bb180
bb180:
  %t707 = load i1, ptr %l383, !tbaa !21
  br i1 %t707, label %bb181, label %bb182
bb181:
  %t708 = load ptr, ptr %l2, !tbaa !29
  %t710 = getelementptr { i64, [5 x i64] }, ptr %t708, i32 0, i32 1
  %t711 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t710, i32 0, i32 2
  %t712 = load ptr, ptr %t711
  store ptr %t712, ptr %l51, !tbaa !29
  br label %bb183
bb182:
  br label %bb214
bb183:
  %t714 = load ptr, ptr %l51, !tbaa !29
  store ptr %t714, ptr %l388, !tbaa !29
  store i1 false, ptr %l389, !tbaa !21
  %t715 = load ptr, ptr %l388, !tbaa !29
  %t716 = icmp ne ptr %t715, null
  br i1 %t716, label %bb184, label %bb185
bb184:
  %t718 = load ptr, ptr %l388, !tbaa !29
  %t719 = load i64, ptr %t718, !range !{i64 0, i64 3}
  %t721 = icmp eq i64 %t719, 0
  store i1 %t721, ptr %l389, !tbaa !21
  br label %bb185
bb185:
  %t722 = load i1, ptr %l389, !tbaa !21
  br i1 %t722, label %bb186, label %bb187
bb186:
  %t723 = load ptr, ptr %l51, !tbaa !29
  %t725 = getelementptr { i64, [4 x i64] }, ptr %t723, i32 0, i32 1
  %t726 = getelementptr { i32 }, ptr %t725, i32 0, i32 0
  %t727 = load i32, ptr %t726
  store i32 %t727, ptr %l52, !tbaa !23
  br label %bb188
bb187:
  br label %bb190
bb188:
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t730 = load ptr, ptr %l1, !tbaa !29
  %t731 = load i32, ptr %l52, !tbaa !23
  %t733 = sext i32 %t731 to i64
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aNamed(ptr %v0, ptr %v1, ptr %t729, ptr %t730, i64 %t733)
  br label %bb189
bb189:
  br label %bb213
bb190:
  %t737 = load ptr, ptr %l51, !tbaa !29
  store ptr %t737, ptr %l398, !tbaa !29
  store i1 false, ptr %l399, !tbaa !21
  %t738 = load ptr, ptr %l398, !tbaa !29
  %t739 = icmp ne ptr %t738, null
  br i1 %t739, label %bb191, label %bb192
bb191:
  %t741 = load ptr, ptr %l398, !tbaa !29
  %t742 = load i64, ptr %t741, !range !{i64 0, i64 3}
  %t744 = icmp eq i64 %t742, 1
  store i1 %t744, ptr %l399, !tbaa !21
  br label %bb192
bb192:
  %t745 = load i1, ptr %l399, !tbaa !21
  br i1 %t745, label %bb193, label %bb194
bb193:
  %t746 = load ptr, ptr %l51, !tbaa !29
  %t748 = getelementptr { i64, [4 x i64] }, ptr %t746, i32 0, i32 1
  %t749 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t748, i32 0, i32 0
  %t750 = load i32, ptr %t749
  store i32 %t750, ptr %l53, !tbaa !23
  %t752 = load ptr, ptr %l51, !tbaa !29
  %t754 = getelementptr { i64, [4 x i64] }, ptr %t752, i32 0, i32 1
  %t755 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t754, i32 0, i32 1
  %t756 = load { i64, ptr }, ptr %t755
  store { i64, ptr } %t756, ptr %l54, !tbaa !27
  br label %bb195
bb194:
  br label %bb204
bb195:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t759 = load ptr, ptr %l1, !tbaa !29
  %t760 = load i32, ptr %l53, !tbaa !23
  %t762 = sext i32 %t760 to i64
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aNamed(ptr %v0, ptr %v1, ptr %t758, ptr %t759, i64 %t762)
  br label %bb196
bb196:
  %t766 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t766, ptr %l55, !tbaa !27
  store i64 0, ptr %l56, !tbaa !24
  %t768 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t770 = extractvalue { i64, ptr } %t768, 0
  store i64 %t770, ptr %l57, !tbaa !24
  br label %bb197
bb197:
  %t772 = load i64, ptr %l56, !tbaa !24
  %t773 = load i64, ptr %l57, !tbaa !24
  %t776 = icmp slt i64 %t772, %t773
  %t778 = xor i1 %t776, true
  br i1 %t778, label %bb198, label %bb199
bb198:
  br label %bb203
bb199:
  br label %bb200
bb200:
  %t780 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t780, ptr %l417, !tbaa !27
  %t781 = load i64, ptr %l56, !tbaa !24
  %t783 = getelementptr { i64, ptr }, ptr %l417, i32 0, i32 1
  %t784 = load ptr, ptr %t783, !tbaa !27
  %t785 = getelementptr ptr, ptr %t784, i64 %t781
  %t786 = load ptr, ptr %t785, !tbaa !39
  %t788 = load ptr, ptr %l0, !tbaa !29
  %t789 = load ptr, ptr %l1, !tbaa !29
  %t792 = getelementptr %"compiler/typed:Capture", ptr %t786, i32 0, i32 1
  %t793 = load ptr, ptr %t792, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t788, ptr %t789, ptr %t793)
  br label %bb201
bb201:
  br label %bb202
bb202:
  %t798 = load i64, ptr %l56, !tbaa !24
  %t800 = add i64 %t798, 1
  store i64 %t800, ptr %l56, !tbaa !24
  br label %bb197
bb203:
  br label %bb213
bb204:
  %t802 = load ptr, ptr %l51, !tbaa !29
  store ptr %t802, ptr %l427, !tbaa !29
  store i1 false, ptr %l428, !tbaa !21
  %t803 = load ptr, ptr %l427, !tbaa !29
  %t804 = icmp ne ptr %t803, null
  br i1 %t804, label %bb205, label %bb206
bb205:
  %t806 = load ptr, ptr %l427, !tbaa !29
  %t807 = load i64, ptr %t806, !range !{i64 0, i64 3}
  %t809 = icmp eq i64 %t807, 2
  store i1 %t809, ptr %l428, !tbaa !21
  br label %bb206
bb206:
  %t810 = load i1, ptr %l428, !tbaa !21
  br i1 %t810, label %bb207, label %bb208
bb207:
  %t811 = load ptr, ptr %l51, !tbaa !29
  %t813 = getelementptr { i64, [4 x i64] }, ptr %t811, i32 0, i32 1
  %t814 = getelementptr { i32, ptr, i32 }, ptr %t813, i32 0, i32 0
  %t815 = load i32, ptr %t814
  store i32 %t815, ptr %l59, !tbaa !23
  %t817 = load ptr, ptr %l51, !tbaa !29
  %t819 = getelementptr { i64, [4 x i64] }, ptr %t817, i32 0, i32 1
  %t820 = getelementptr { i32, ptr, i32 }, ptr %t819, i32 0, i32 1
  %t821 = load ptr, ptr %t820
  store ptr %t821, ptr %l60, !tbaa !29
  br label %bb209
bb208:
  br label %bb212
bb209:
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t824 = load ptr, ptr %l1, !tbaa !29
  %t825 = load i32, ptr %l59, !tbaa !23
  %t827 = sext i32 %t825 to i64
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aNamed(ptr %v0, ptr %v1, ptr %t823, ptr %t824, i64 %t827)
  br label %bb210
bb210:
  %t831 = load ptr, ptr %l0, !tbaa !29
  %t832 = load ptr, ptr %l1, !tbaa !29
  %t833 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t831, ptr %t832, ptr %t833)
  br label %bb211
bb211:
  br label %bb213
bb212:
  call void @__olang_check_failed(ptr @olang_loc_d48ba9fb56fa57b5_9836703f13f4bc39)
  unreachable
bb213:
  br label %bb239
bb214:
  %t838 = load ptr, ptr %l2, !tbaa !29
  store ptr %t838, ptr %l443, !tbaa !29
  store i1 false, ptr %l444, !tbaa !21
  %t839 = load ptr, ptr %l443, !tbaa !29
  %t840 = icmp ne ptr %t839, null
  br i1 %t840, label %bb215, label %bb216
bb215:
  %t842 = load ptr, ptr %l443, !tbaa !29
  %t843 = load i64, ptr %t842, !range !{i64 0, i64 18}
  %t845 = icmp eq i64 %t843, 16
  store i1 %t845, ptr %l444, !tbaa !21
  br label %bb216
bb216:
  %t846 = load i1, ptr %l444, !tbaa !21
  br i1 %t846, label %bb217, label %bb218
bb217:
  %t847 = load ptr, ptr %l2, !tbaa !29
  %t849 = getelementptr { i64, [5 x i64] }, ptr %t847, i32 0, i32 1
  %t850 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t849, i32 0, i32 2
  %t851 = load ptr, ptr %t850
  store ptr %t851, ptr %l61, !tbaa !29
  br label %bb219
bb218:
  br label %bb227
bb219:
  %t853 = load ptr, ptr %l61, !tbaa !29
  %t855 = getelementptr %"compiler/typed:Text", ptr %t853, i32 0, i32 0
  %t856 = load { i64, ptr }, ptr %t855, !tbaa !27
  store { i64, ptr } %t856, ptr %l62, !tbaa !27
  store i64 0, ptr %l63, !tbaa !24
  %t858 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t860 = extractvalue { i64, ptr } %t858, 0
  store i64 %t860, ptr %l64, !tbaa !24
  br label %bb220
bb220:
  %t862 = load i64, ptr %l63, !tbaa !24
  %t863 = load i64, ptr %l64, !tbaa !24
  %t866 = icmp slt i64 %t862, %t863
  %t868 = xor i1 %t866, true
  br i1 %t868, label %bb221, label %bb222
bb221:
  br label %bb226
bb222:
  br label %bb223
bb223:
  %t870 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t870, ptr %l457, !tbaa !27
  %t871 = load i64, ptr %l63, !tbaa !24
  %t873 = getelementptr { i64, ptr }, ptr %l457, i32 0, i32 1
  %t874 = load ptr, ptr %t873, !tbaa !27
  %t875 = getelementptr ptr, ptr %t874, i64 %t871
  %t876 = load ptr, ptr %t875, !tbaa !39
  %t878 = load ptr, ptr %l0, !tbaa !29
  %t879 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPiece(ptr %v0, ptr %v1, ptr %v2, ptr %t878, ptr %t879, ptr %t876)
  br label %bb224
bb224:
  br label %bb225
bb225:
  %t884 = load i64, ptr %l63, !tbaa !24
  %t886 = add i64 %t884, 1
  store i64 %t886, ptr %l63, !tbaa !24
  br label %bb220
bb226:
  br label %bb239
bb227:
  %t888 = load ptr, ptr %l2, !tbaa !29
  store ptr %t888, ptr %l465, !tbaa !29
  store i1 false, ptr %l466, !tbaa !21
  %t889 = load ptr, ptr %l465, !tbaa !29
  %t890 = icmp ne ptr %t889, null
  br i1 %t890, label %bb228, label %bb229
bb228:
  %t892 = load ptr, ptr %l465, !tbaa !29
  %t893 = load i64, ptr %t892, !range !{i64 0, i64 18}
  %t895 = icmp eq i64 %t893, 17
  store i1 %t895, ptr %l466, !tbaa !21
  br label %bb229
bb229:
  %t896 = load i1, ptr %l466, !tbaa !21
  br i1 %t896, label %bb230, label %bb231
bb230:
  %t897 = load ptr, ptr %l2, !tbaa !29
  %t899 = getelementptr { i64, [5 x i64] }, ptr %t897, i32 0, i32 1
  %t900 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t899, i32 0, i32 2
  %t901 = load ptr, ptr %t900
  store ptr %t901, ptr %l66, !tbaa !29
  br label %bb232
bb231:
  br label %bb234
bb232:
  %t903 = load ptr, ptr %l0, !tbaa !29
  %t904 = load ptr, ptr %l1, !tbaa !29
  %t905 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t903, ptr %t904, ptr %t905)
  br label %bb233
bb233:
  br label %bb239
bb234:
  br i1 true, label %bb235, label %bb236
bb235:
  br label %bb237
bb236:
  br label %bb238
bb237:
  br label %bb239
bb238:
  call void @__olang_check_failed(ptr @olang_loc_964ce48e3719b9fe_ecf9d1875d849bc2)
  unreachable
bb239:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l15 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca i64
  %l17 = alloca i32
  %l24 = alloca i1
  %l29 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:b5aWalk", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 27
  store ptr %t8, ptr %l11, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = sext i32 %a3 to i64
  %t15 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t9, i64 %t12)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t15, ptr %l15
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l11, !tbaa !29
  %t17 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l15
  %t18 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t16, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t17)
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l17
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb6, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l16
  br label %bb5
bb5:
  %t23 = load i64, ptr %l16, !tbaa !24
  store i64 %t23, ptr %l9, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t24 = load i64, ptr %l9, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp slt i64 %t25, 0
  br i1 %t27, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/check:b5aWalk", ptr %t30, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t36 = icmp eq i64 %t29, %t33
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/check:b5aWalk", ptr %t40, i32 0, i32 3
  %t46 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t42, i64 %t38)
  store i1 %t46, ptr %l29
  br label %bb14
bb13:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb15
bb14:
  %t47 = load i1, ptr %l29, !tbaa !21
  %t48 = xor i1 %t47, true
  store i1 %t48, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l24, !tbaa !21
  br i1 %t50, label %bb16, label %bb17
bb16:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/check:b5aWalk", ptr %t51, i32 0, i32 3
  %t54 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t53, i64 %t54)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/check:b5aWalk", ptr %t57, i32 0, i32 4
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l37
  br label %bb20
bb20:
  %t64 = load i1, ptr %l37, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsFn(ptr %v0, ptr %t67, i32 %a4, i64 0)
  store i1 %t71, ptr %l42
  br label %bb23
bb22:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb24
bb23:
  %t72 = load i1, ptr %l42, !tbaa !21
  store i1 %t72, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t73 = load i1, ptr %l39, !tbaa !21
  br i1 %t73, label %bb25, label %bb26
bb25:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/check:b5aWalk", ptr %t74, i32 0, i32 4
  %t77 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t76, i64 %t77, i1 true)
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/check:b5aWalk", ptr %t80, i32 0, i32 6
  store i1 true, ptr %t82, !tbaa !21
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aInit(ptr %v0, ptr %v1, ptr %t83, ptr %t84, i64 %t85)
  br label %bb28
bb28:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/check:b5aWalk", ptr %t89, i32 0, i32 6
  store i1 false, ptr %t91, !tbaa !21
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindCase(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %l28 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 155
  store ptr %t7, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l8, !tbaa !24
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Heda0e3070e2f5ab051ad1f451edd65eb(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H62ca4e6c77402fbaa86eb0d94ae649ee(ptr %v0, ptr %t19, i64 %t20)
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t23, ptr %l15
  br label %bb7
bb7:
  %t24 = load %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l15
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t24, ptr %l4
  %t25 = load ptr, ptr %lp1
  store ptr %t25, ptr %l16, !tbaa !29
  %t26 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  store i32 %t27, ptr %l17, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t28)
  store ptr %t30, ptr %l20
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l20, !tbaa !29
  %t33 = getelementptr %"compiler/check:frame", ptr %t31, i32 0, i32 4
  %t34 = getelementptr %"compiler/generic:Context", ptr %t33, i32 0, i32 2
  %t35 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t36 = load i32, ptr %t35, !tbaa !23
  %t39 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t34, i32 %t36)
  %t40 = extractvalue { i32, i32 } %t39, 1
  %t41 = extractvalue { i32, i32 } %t39, 0
  store i32 %t41, ptr %l25
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb10, label %ok.43, !prof !99
ok.43:
  store i32 %t40, ptr %l24
  br label %bb9
bb9:
  %t44 = load i32, ptr %l24, !tbaa !23
  store i32 %t44, ptr %l18, !tbaa !23
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i32 -1, ptr %l18, !tbaa !23
  br label %bb12
bb12:
  %t45 = load i32, ptr %l17, !tbaa !23
  %t46 = load i32, ptr %l18, !tbaa !23
  %t47 = call %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %s2, i32 %t45, i32 %t46)
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t47, ptr %l26
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l16, !tbaa !29
  %t49 = load %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Habcf70cf374eb3bb03a96803ac10570d(ptr %v1, ptr %t48, %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t49)
  br label %bb14
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t50)
  store ptr %t52, ptr %l28
  br label %bb15
bb15:
  %t53 = load ptr, ptr %l28, !tbaa !29
  %t55 = getelementptr %"compiler/check:frame", ptr %t53, i32 0, i32 4
  %t56 = getelementptr %"compiler/generic:Context", ptr %t55, i32 0, i32 2
  %t57 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = getelementptr %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l4, i32 0, i32 1
  %t60 = load i32, ptr %t59, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t56, i32 %t58, i32 %t60)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb2
bb18:
  %t68 = load ptr, ptr %lp1
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyRefusal(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
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
  br label %bb10
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t29, i64 %t30)
  store i64 %t33, ptr %l19
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l15, !tbaa !29
  %t35 = load i64, ptr %l19, !tbaa !24
  %t36 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t34, i64 %t35)
  store ptr %t36, ptr %l20
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t39 = getelementptr %"compiler/ast:Func", ptr %t37, i32 0, i32 7
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t42, ptr %l23, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t44, ptr %l23, !tbaa !27
  br label %bb9
bb9:
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t46, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb10:
  %t47 = load { i64, [2 x i64] }, ptr %l2
  %t49 = extractvalue { i64, [2 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 1
  br i1 %t50, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t52 = load { i64, [2 x i64] }, ptr %l2
  %t54 = extractvalue { i64, [2 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 2
  br i1 %t55, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t57, ptr %l10, !tbaa !27
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t59, ptr %l10, !tbaa !27
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_7a179da39a9781e9_720543b731edd2ed)
  unreachable
bb21:
  %t61 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l36, !tbaa !24
  %t63 = load i64, ptr %l36, !tbaa !24
  %t64 = mul i64 %t63, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l37, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l36, !tbaa !24
  %t73 = mul i64 %t72, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t74, ptr %l10, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  %t4 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %a1)
  store %"compiler/source:Span" %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l4
  %t7 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t5, %"compiler/source:Span" %t6, i64 1)
  store %"compiler/source:Span" %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRequired(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l20 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l48 = alloca { i64, ptr }
  %l52 = alloca i1
  %l64 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l72 = alloca %"compiler/generic:Context"
  %l76 = alloca i32
  %l81 = alloca i32
  %l85 = alloca ptr
  %l90 = alloca i32
  %l93 = alloca i32
  %s8 = alloca %olang.scope
  %rv = alloca i32
  %t120 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t4, i32 %t5)
  store ptr %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l20, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t10, 16
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  store i1 %t16, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l23, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb7
bb6:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/ast:TypeDecl", ptr %t19, i32 0, i32 3
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  store i1 %t24, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l26, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i32 0, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/ast:TypeDecl", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l4, !tbaa !29
  %t33 = load ptr, ptr %l4, !tbaa !29
  store ptr %t33, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t34 = load ptr, ptr %l33, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l33, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 5}
  %t40 = icmp eq i64 %t38, 2
  store i1 %t40, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t41 = load i1, ptr %l34, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr { i64, [6 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t44, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  store { i64, ptr } %t46, ptr %l5, !tbaa !27
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr { i64, [6 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t50, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51
  store { i64, ptr } %t52, ptr %l6, !tbaa !27
  br label %bb15
bb14:
  br label %bb43
bb15:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t68, ptr %l48, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  store ptr %t74, ptr %l10, !tbaa !29
  %t76 = load ptr, ptr %l10, !tbaa !29
  %t78 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t76)
  store i1 %t78, ptr %l52
  br label %bb20
bb20:
  %t79 = load i1, ptr %l52, !tbaa !21
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t80 = load ptr, ptr %l10, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 10
  %t83 = load i32, ptr %t82, !tbaa !23
  store i32 %t83, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l8, !tbaa !24
  br label %bb16
bb25:
  %t89 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t89, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l13, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s8
  %t95 = load i64, ptr %l12, !tbaa !24
  %t96 = load i64, ptr %l13, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s8)
  br label %bb42
bb28:
  br label %bb29
bb29:
  %t103 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t103, ptr %l64, !tbaa !27
  %t104 = load i64, ptr %l12, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr ptr, ptr %t107, i64 %t104
  %t109 = load ptr, ptr %t108, !tbaa !39
  store ptr %t109, ptr %l14, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  store ptr %t114, ptr %l68, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %t120, ptr %v0, ptr %s8, ptr %t118, i32 %t119)
  call void @llvm.memmove.p0.p0.i64(ptr %l72, ptr %t120, i64 160, i1 false)
  br label %bb30
bb30:
  %t123 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t123, ptr %l72, i64 160, i1 false)
  %t124 = load ptr, ptr %l14, !tbaa !29
  %t126 = load ptr, ptr %l68, !tbaa !29
  %t129 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s8, ptr %v0, ptr %t126, ptr %t123, ptr %t124)
  store i32 %t129, ptr %l76
  br label %bb31
bb31:
  %t130 = load i32, ptr %l76, !tbaa !23
  store i32 %t130, ptr %l15, !tbaa !23
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l15, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l81
  br label %bb32
bb32:
  %t141 = load i32, ptr %l81, !range !{i32 0, i32 33}
  %t143 = trunc i64 18 to i32
  %t144 = icmp eq i32 %t141, %t143
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb34:
  br label %bb35
bb35:
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l85, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l15, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l90
  br label %bb36
bb36:
  %t159 = load i64, ptr %l2, !tbaa !24
  %t161 = add i64 %t159, 1
  %t162 = load ptr, ptr %l85, !tbaa !29
  %t163 = load i32, ptr %l90, !tbaa !23
  %t165 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRequired(ptr %v0, ptr %t162, i32 %t163, i64 %t161)
  store i32 %t165, ptr %l93
  br label %bb37
bb37:
  %t166 = load i32, ptr %l93, !tbaa !23
  store i32 %t166, ptr %l16, !tbaa !23
  %t167 = load i32, ptr %l16, !tbaa !23
  %t169 = icmp ne i32 %t167, 0
  br i1 %t169, label %bb38, label %bb39
bb38:
  %t171 = load i32, ptr %l16, !tbaa !23
  call void @__olang_scope_close(ptr %s8)
  store i32 %t171, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb41:
  %t173 = load i64, ptr %l12, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l12, !tbaa !24
  br label %bb26
bb42:
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_4153f13b2b5ba70f_539dcb5badf9f963)
  unreachable
bb48:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l19 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l27 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t9, i64 %t10)
  store ptr %t13, ptr %l8
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Func", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %t18, i32 %t17)
  store { i64, ptr } %t20, ptr %l11
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l13, !tbaa !24
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l14, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t35, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t36 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb5:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 23
  %t40 = load i32, ptr %t39, !tbaa !23
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t44 = icmp ne i32 %t40, %t41
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 23
  %t50 = load i32, ptr %t49, !tbaa !23
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t46, i32 %t50)
  store i1 %t53, ptr %l23
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t54 = load i1, ptr %l23, !tbaa !21
  store i1 %t54, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t55 = load i1, ptr %l19, !tbaa !21
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l24, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  store ptr %t62, ptr %l27, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 23
  %t72 = load i32, ptr %t71, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t68, i32 %t72)
  store i32 %t75, ptr %l33
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t76 = load ptr, ptr %l27, !tbaa !29
  %t77 = load i32, ptr %l33, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t78, ptr %l34
  br label %bb13
bb13:
  %t79 = load ptr, ptr %l24, !tbaa !29
  %t80 = load i32, ptr %l34, !tbaa !23
  %t81 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %t79, i32 %t80)
  store { i64, ptr } %t81, ptr %l35
  br label %bb14
bb14:
  %t82 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t82, ptr %l36, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l37, !tbaa !24
  %t85 = load i64, ptr %l37, !tbaa !24
  %t86 = mul i64 %t85, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l38, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = load i64, ptr %l37, !tbaa !24
  %t95 = mul i64 %t94, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %t93, i64 %t95, i1 false)
  %t96 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t96, ptr %l36, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t97, ptr %rv
  br label %ret
bb15:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t98, ptr %l40, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l41, !tbaa !24
  %t101 = load i64, ptr %l41, !tbaa !24
  %t102 = mul i64 %t101, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t102)
  %t104 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l42, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = load i64, ptr %l41, !tbaa !24
  %t111 = mul i64 %t110, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t107, ptr %t109, i64 %t111, i1 false)
  %t112 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t112, ptr %l40, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t113, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:altsCovered" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtAlts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %lp6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/check:payloadItem"
  %l21 = alloca ptr
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp23 = alloca ptr
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i1
  %l46 = alloca i64
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l69 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca i1
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i32
  %l90 = alloca i1
  %l91 = alloca ptr
  %l93 = alloca %"compiler/source:Span"
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %l103 = alloca i1
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca i64
  %l112 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l115 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l124 = alloca %"compiler/diagmsg:Msg"
  %l125 = alloca i64
  %l126 = alloca i64
  %l132 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca i64
  %l142 = alloca i64
  %l147 = alloca %"compiler/check:payloadItem"
  %l149 = alloca i1
  %l151 = alloca i1
  %l152 = alloca i1
  %l154 = alloca i1
  %l158 = alloca ptr
  %l159 = alloca i1
  %l164 = alloca ptr
  %l165 = alloca i1
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca i32
  %l176 = alloca i1
  %l177 = alloca ptr
  %l179 = alloca %"compiler/source:Span"
  %l180 = alloca %"compiler/diagmsg:Msg"
  %l181 = alloca i64
  %l185 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l187 = alloca i64
  %l189 = alloca ptr
  %l191 = alloca %"compiler/source:Span"
  %l192 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l201 = alloca %"compiler/diagmsg:Msg"
  %l202 = alloca i64
  %l203 = alloca i64
  %l209 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca ptr
  %l215 = alloca %"compiler/source:Span"
  %l216 = alloca %"compiler/diagmsg:Msg"
  %l217 = alloca i64
  %l220 = alloca i64
  %l222 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l224 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca %"compiler/check:altsCovered"
  %l231 = alloca %"compiler/check:altsCovered"
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca %"compiler/check:altsCovered"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v4 to i64
  store i64 %t1, ptr %l24, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v4)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l24, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l24
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l26
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l24
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t20, ptr %lp6
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  %t22 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t22
  store i1 false, ptr %l7, !tbaa !21
  store i1 false, ptr %l8, !tbaa !21
  store i1 true, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Case", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l12, !tbaa !24
  %t33 = load i64, ptr %l13, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb7, label %bb8
bb7:
  br label %bb139
bb8:
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t40, ptr %l36, !tbaa !27
  %t41 = load i64, ptr %l12, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 %t41
  %t46 = load ptr, ptr %t45, !tbaa !39
  store ptr %t46, ptr %l14, !tbaa !29
  %t48 = load ptr, ptr %l14, !tbaa !29
  store ptr %t48, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t49 = load ptr, ptr %l39, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = load ptr, ptr %l39, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 9}
  %t55 = icmp eq i64 %t53, 0
  store i1 %t55, ptr %l40, !tbaa !21
  br label %bb11
bb11:
  %t56 = load i1, ptr %l40, !tbaa !21
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb25
bb14:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Case", ptr %t57, i32 0, i32 3
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  br i1 %t62, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb17
bb16:
  br label %bb17
bb17:
  store i1 true, ptr %l7, !tbaa !21
  %t64 = ptrtoint ptr %v4 to i64
  store i64 %t64, ptr %l46, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = call ptr @__olang_region_make(ptr %v4)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l46, !tbaa !24
  br label %bb19
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %lp6
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t70
  %t73 = load i64, ptr %l46
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = call ptr @__olang_scope_alloc_a(ptr %t74, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %t75
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t77 = load i64, ptr %l46
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = load i64, ptr %l46
  %t80 = inttoptr i64 %t79 to ptr
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %t78, ptr %v3, ptr %t80, ptr %t69, ptr %t75, ptr %t76)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l52
  br label %bb20
bb20:
  %t85 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t85, label %bb21, label %bb22
bb21:
  %t87 = load i64, ptr %l46
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr null
  %t95 = icmp eq ptr %t94, %t88
  call void @__olang_region_settle(ptr %t88, i1 %t95)
  br label %bb22
bb22:
  %t96 = load ptr, ptr %lp6
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l54
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  %t99 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %t99
  %t100 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr null
  call void @__olang_region_drop(ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l54
  br label %bb24
bb24:
  br label %bb137
bb25:
  %t108 = load ptr, ptr %l14, !tbaa !29
  store ptr %t108, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t109 = load ptr, ptr %l56, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb26, label %bb27
bb26:
  %t112 = load ptr, ptr %l56, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 9}
  %t115 = icmp eq i64 %t113, 1
  store i1 %t115, ptr %l57, !tbaa !21
  br label %bb27
bb27:
  %t116 = load i1, ptr %l57, !tbaa !21
  br i1 %t116, label %bb28, label %bb29
bb28:
  %t117 = load ptr, ptr %l14, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l15, !tbaa !29
  br label %bb34
bb29:
  %t123 = load ptr, ptr %l14, !tbaa !29
  store ptr %t123, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t124 = load ptr, ptr %l62, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t127 = load ptr, ptr %l62, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 9}
  %t130 = icmp eq i64 %t128, 4
  store i1 %t130, ptr %l63, !tbaa !21
  br label %bb31
bb31:
  %t131 = load i1, ptr %l63, !tbaa !21
  br i1 %t131, label %bb32, label %bb33
bb32:
  %t132 = load ptr, ptr %l14, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", ptr }, ptr %t134, i32 0, i32 1
  %t136 = load ptr, ptr %t135
  store ptr %t136, ptr %l15, !tbaa !29
  br label %bb34
bb33:
  br label %bb44
bb34:
  %t138 = load ptr, ptr %l15, !tbaa !29
  %t140 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v1, ptr %t138)
  store i1 %t140, ptr %l69
  br label %bb35
bb35:
  %t141 = load i1, ptr %l69, !tbaa !21
  br i1 %t141, label %bb36, label %bb37
bb36:
  %t144 = xor i1 %a4, true
  br i1 %t144, label %bb38, label %bb39
bb37:
  br label %bb44
bb38:
  store %olang.scope zeroinitializer, ptr %s6
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l72, !tbaa !29
  %t147 = load ptr, ptr %l14, !tbaa !29
  %t149 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t147)
  store %"compiler/source:Span" %t149, ptr %l74
  br label %bb40
bb39:
  br label %bb43
bb40:
  %t150 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t152 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrNeverNull(ptr %v2, ptr %s6, { i64, ptr } %t150)
  store %"compiler/diagmsg:Msg" %t152, ptr %l76
  br label %bb41
bb41:
  %t153 = load ptr, ptr %l72, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l74
  %t155 = load %"compiler/diagmsg:Msg", ptr %l76
  %t156 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t153, %"compiler/source:Span" %t154, %"compiler/diagmsg:Msg" %t155)
  store i64 %t156, ptr %l77
  br label %bb42
bb42:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb43
bb43:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb137
bb44:
  %t157 = load ptr, ptr %l14, !tbaa !29
  store ptr %t157, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t158 = load ptr, ptr %l78, !tbaa !29
  %t159 = icmp ne ptr %t158, null
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load ptr, ptr %l78, !tbaa !29
  %t162 = load i64, ptr %t161, !range !{i64 0, i64 9}
  %t164 = icmp eq i64 %t162, 2
  store i1 %t164, ptr %l79, !tbaa !21
  br label %bb46
bb46:
  %t165 = load i1, ptr %l79, !tbaa !21
  br i1 %t165, label %bb47, label %bb48
bb47:
  %t166 = load ptr, ptr %l14, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t168, i32 0, i32 1
  %t170 = load ptr, ptr %t169
  store ptr %t170, ptr %l16, !tbaa !29
  br label %bb49
bb48:
  br label %bb95
bb49:
  store %olang.scope zeroinitializer, ptr %s7
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load ptr, ptr %l16, !tbaa !29
  %t176 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %s7, ptr %t172, ptr %t173)
  %t177 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t176, 1
  %t178 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t176, 0
  store i32 %t178, ptr %l88
  %t179 = icmp ne i32 %t178, 0
  br i1 %t179, label %bb51, label %ok.180, !prof !99
ok.180:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %l87
  br label %bb50
bb50:
  %t181 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l84
  br label %bb56
bb51:
  %t182 = load i32, ptr %l88, !tbaa !23
  %t183 = ashr i32 %t182, 16
  %t185 = icmp eq i32 %t183, 1
  store i1 %t185, ptr %l90, !tbaa !21
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s8
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l91, !tbaa !29
  %t187 = load ptr, ptr %l14, !tbaa !29
  %t189 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t187)
  store %"compiler/source:Span" %t189, ptr %l93
  br label %bb53
bb53:
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %s8)
  store %"compiler/diagmsg:Msg" %t190, ptr %l94
  br label %bb54
bb54:
  %t191 = load ptr, ptr %l91, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l93
  %t193 = load %"compiler/diagmsg:Msg", ptr %l94
  %t194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t191, %"compiler/source:Span" %t192, %"compiler/diagmsg:Msg" %t193)
  store i64 %t194, ptr %l95
  br label %bb55
bb55:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s7)
  br label %bb138
bb56:
  %t195 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t195, ptr %l17
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l14, !tbaa !29
  %t198 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Case", ptr %t200, i32 0, i32 1
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t211 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPatternOk(ptr %v0, ptr %v1, ptr %v2, ptr %t196, ptr %t197, { i64, ptr } %t198, i1 %a5, i64 %t205)
  store i1 %t211, ptr %l103
  br label %bb57
bb57:
  %t212 = load i1, ptr %l103, !tbaa !21
  %t213 = xor i1 %t212, true
  br i1 %t213, label %bb58, label %bb59
bb58:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  br label %bb139
bb59:
  br label %bb60
bb60:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l3, !tbaa !29
  %t220 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v3, ptr %s7, ptr %s7, ptr %t215, ptr %t216, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %l108
  br label %bb61
bb61:
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s7, ptr %l108)
  store i64 %t222, ptr %l110
  br label %bb62
bb62:
  %t223 = load i64, ptr %l110, !tbaa !24
  %t224 = icmp eq i64 %t223, 0
  br i1 %t224, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s10
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l112, !tbaa !29
  %t227 = load ptr, ptr %l14, !tbaa !29
  %t229 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t227)
  store %"compiler/source:Span" %t229, ptr %l114
  br label %bb65
bb64:
  br label %bb70
bb65:
  %t230 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t230, ptr %l115, !tbaa !27
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t234 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %s7, ptr %s10, ptr %t231, ptr %l17)
  store { i64, ptr } %t234, ptr %l118
  br label %bb66
bb66:
  %t235 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  %t237 = extractvalue { i64, ptr } %t235, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  store { i64, ptr } %t241, ptr %l119, !tbaa !27
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t246 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %v3, ptr %s10, ptr %t242, ptr %t243)
  store { i64, ptr } %t246, ptr %l122
  br label %bb67
bb67:
  %t247 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  %t249 = extractvalue { i64, ptr } %t247, 1
  %t250 = mul i64 %t248, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t250)
  call void @llvm.memcpy.p0.p0.i64(ptr %t251, ptr %t249, i64 %t250, i1 false)
  %t252 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  %t254 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t257 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtNeverIs(ptr %v2, ptr %s10, ptr %s10, ptr %s10, { i64, ptr } %t254, { i64, ptr } %t255, { i64, ptr } %t253)
  store %"compiler/diagmsg:Msg" %t257, ptr %l124
  br label %bb68
bb68:
  %t258 = load ptr, ptr %l112, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l114
  %t260 = load %"compiler/diagmsg:Msg", ptr %l124
  %t261 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t258, %"compiler/source:Span" %t259, %"compiler/diagmsg:Msg" %t260)
  store i64 %t261, ptr %l125
  br label %bb69
bb69:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s7)
  br label %bb138
bb70:
  %t262 = ptrtoint ptr %v4 to i64
  store i64 %t262, ptr %l126, !tbaa !24
  %t263 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t263, label %bb71, label %bb72
bb71:
  %t265 = call ptr @__olang_region_make(ptr %v4)
  %t266 = ptrtoint ptr %t265 to i64
  store i64 %t266, ptr %l126, !tbaa !24
  br label %bb72
bb72:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load ptr, ptr %lp6
  %t269 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t268
  %t271 = load i64, ptr %l126
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = call ptr @__olang_scope_alloc_a(ptr %t272, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %t273
  %t274 = load i64, ptr %l126
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = load i64, ptr %l126
  %t277 = inttoptr i64 %t276 to ptr
  %t281 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %t275, ptr %s7, ptr %t277, ptr %t267, ptr %t273, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l132
  br label %bb73
bb73:
  %t282 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t282, label %bb74, label %bb75
bb74:
  %t284 = load i64, ptr %l126
  %t285 = inttoptr i64 %t284 to ptr
  %t286 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132, i32 0, i32 0
  %t287 = load { i64, ptr }, ptr %t286
  %t288 = extractvalue { i64, ptr } %t287, 1
  %t289 = call ptr @__olang_region_or(ptr %t288, ptr null)
  %t290 = icmp ne ptr %t289, null
  %t291 = select i1 %t290, ptr %t289, ptr null
  %t292 = icmp eq ptr %t291, %t285
  call void @__olang_region_settle(ptr %t285, i1 %t292)
  br label %bb75
bb75:
  %t293 = load ptr, ptr %lp6
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t293
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %l134
  %t295 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132
  %t296 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t295, ptr %t296
  %t297 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t297, label %bb76, label %bb77
bb76:
  %t299 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l134, i32 0, i32 0
  %t300 = load { i64, ptr }, ptr %t299
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = call ptr @__olang_region_or(ptr %t301, ptr null)
  %t303 = icmp ne ptr %t302, null
  %t304 = select i1 %t303, ptr %t302, ptr null
  call void @__olang_region_drop(ptr %t304)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l134
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s11
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load ptr, ptr %l14, !tbaa !29
  %t309 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v1, ptr %s11, ptr %t305, ptr %t306)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t309, ptr %l138
  br label %bb78
bb78:
  %t310 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138
  %t311 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %t311
  store ptr %t311, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb79
bb79:
  %t313 = load i64, ptr %l19, !tbaa !24
  store i64 %t313, ptr %l140, !tbaa !24
  %t314 = load ptr, ptr %l18, !tbaa !29
  %t316 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %s11, ptr %t314)
  store i64 %t316, ptr %l142
  br label %bb80
bb80:
  %t317 = load i64, ptr %l140, !tbaa !24
  %t318 = load i64, ptr %l142, !tbaa !24
  %t319 = icmp slt i64 %t317, %t318
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb81, label %bb82
bb81:
  br label %bb94
bb82:
  br label %bb83
bb83:
  %t323 = load ptr, ptr %l18, !tbaa !29
  %t324 = load i64, ptr %l19, !tbaa !24
  %t327 = call %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %s11, ptr %s11, ptr %t323, i64 %t324)
  store %"compiler/check:payloadItem" %t327, ptr %l147
  br label %bb84
bb84:
  %t328 = load %"compiler/check:payloadItem", ptr %l147
  store %"compiler/check:payloadItem" %t328, ptr %l20
  %t329 = load i1, ptr %l10, !tbaa !21
  br i1 %t329, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb92
bb86:
  %t331 = getelementptr %"compiler/check:payloadItem", ptr %l20, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = call i1 @compiler_2fcheck_2eisWild(ptr %s11, ptr %t332)
  store i1 %t334, ptr %l151
  br label %bb87
bb87:
  %t335 = load i1, ptr %l151, !tbaa !21
  br i1 %t335, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l152, !tbaa !21
  br label %bb91
bb89:
  %t336 = getelementptr %"compiler/check:payloadItem", ptr %l20, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !29
  %t339 = call i1 @compiler_2fcheck_2eisBind(ptr %s11, ptr %t337)
  store i1 %t339, ptr %l154
  br label %bb90
bb90:
  %t340 = load i1, ptr %l154, !tbaa !21
  store i1 %t340, ptr %l152, !tbaa !21
  br label %bb91
bb91:
  %t341 = load i1, ptr %l152, !tbaa !21
  %t342 = xor i1 %t341, true
  store i1 %t342, ptr %l149, !tbaa !21
  br label %bb92
bb92:
  %t344 = load i1, ptr %l149, !tbaa !21
  store i1 %t344, ptr %l10, !tbaa !21
  br label %bb93
bb93:
  %t345 = load i64, ptr %l19, !tbaa !24
  %t347 = add i64 %t345, 1
  store i64 %t347, ptr %l19, !tbaa !24
  br label %bb79
bb94:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s7)
  br label %bb137
bb95:
  %t349 = load ptr, ptr %l14, !tbaa !29
  store ptr %t349, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t350 = load ptr, ptr %l158, !tbaa !29
  %t351 = icmp ne ptr %t350, null
  br i1 %t351, label %bb96, label %bb97
bb96:
  %t353 = load ptr, ptr %l158, !tbaa !29
  %t354 = load i64, ptr %t353, !range !{i64 0, i64 9}
  %t356 = icmp eq i64 %t354, 1
  store i1 %t356, ptr %l159, !tbaa !21
  br label %bb97
bb97:
  %t357 = load i1, ptr %l159, !tbaa !21
  br i1 %t357, label %bb98, label %bb99
bb98:
  %t358 = load ptr, ptr %l14, !tbaa !29
  %t360 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", ptr }, ptr %t360, i32 0, i32 1
  %t362 = load ptr, ptr %t361
  store ptr %t362, ptr %l21, !tbaa !29
  br label %bb104
bb99:
  %t364 = load ptr, ptr %l14, !tbaa !29
  store ptr %t364, ptr %l164, !tbaa !29
  store i1 false, ptr %l165, !tbaa !21
  %t365 = load ptr, ptr %l164, !tbaa !29
  %t366 = icmp ne ptr %t365, null
  br i1 %t366, label %bb100, label %bb101
bb100:
  %t368 = load ptr, ptr %l164, !tbaa !29
  %t369 = load i64, ptr %t368, !range !{i64 0, i64 9}
  %t371 = icmp eq i64 %t369, 4
  store i1 %t371, ptr %l165, !tbaa !21
  br label %bb101
bb101:
  %t372 = load i1, ptr %l165, !tbaa !21
  br i1 %t372, label %bb102, label %bb103
bb102:
  %t373 = load ptr, ptr %l14, !tbaa !29
  %t375 = getelementptr { i64, [4 x i64] }, ptr %t373, i32 0, i32 1
  %t376 = getelementptr { %"compiler/source:Span", ptr }, ptr %t375, i32 0, i32 1
  %t377 = load ptr, ptr %t376
  store ptr %t377, ptr %l21, !tbaa !29
  br label %bb104
bb103:
  br label %bb129
bb104:
  store %olang.scope zeroinitializer, ptr %s14
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load ptr, ptr %l21, !tbaa !29
  %t383 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %s14, ptr %t379, ptr %t380)
  %t384 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t383, 1
  %t385 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t383, 0
  store i32 %t385, ptr %l174
  %t386 = icmp ne i32 %t385, 0
  br i1 %t386, label %bb106, label %ok.387, !prof !99
ok.387:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %l173
  br label %bb105
bb105:
  %t388 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %l170
  br label %bb111
bb106:
  %t389 = load i32, ptr %l174, !tbaa !23
  %t390 = ashr i32 %t389, 16
  %t392 = icmp eq i32 %t390, 1
  store i1 %t392, ptr %l176, !tbaa !21
  br label %bb107
bb107:
  store %olang.scope zeroinitializer, ptr %s15
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l177, !tbaa !29
  %t394 = load ptr, ptr %l14, !tbaa !29
  %t396 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t394)
  store %"compiler/source:Span" %t396, ptr %l179
  br label %bb108
bb108:
  %t397 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %s15)
  store %"compiler/diagmsg:Msg" %t397, ptr %l180
  br label %bb109
bb109:
  %t398 = load ptr, ptr %l177, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l179
  %t400 = load %"compiler/diagmsg:Msg", ptr %l180
  %t401 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t398, %"compiler/source:Span" %t399, %"compiler/diagmsg:Msg" %t400)
  store i64 %t401, ptr %l181
  br label %bb110
bb110:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s14)
  br label %bb138
bb111:
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %l22
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load ptr, ptr %l3, !tbaa !29
  %t408 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v3, ptr %s14, ptr %s14, ptr %t403, ptr %t404, ptr %l22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l185
  br label %bb112
bb112:
  %t410 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s14, ptr %l185)
  store i64 %t410, ptr %l187
  br label %bb113
bb113:
  %t411 = load i64, ptr %l187, !tbaa !24
  %t412 = icmp eq i64 %t411, 0
  br i1 %t412, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s16
  %t414 = load ptr, ptr %l0, !tbaa !29
  store ptr %t414, ptr %l189, !tbaa !29
  %t415 = load ptr, ptr %l14, !tbaa !29
  %t417 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t415)
  store %"compiler/source:Span" %t417, ptr %l191
  br label %bb116
bb115:
  %t418 = ptrtoint ptr %v4 to i64
  store i64 %t418, ptr %l203, !tbaa !24
  %t419 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t419, label %bb121, label %bb122
bb116:
  %t421 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t421, ptr %l192, !tbaa !27
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t425 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %s14, ptr %s16, ptr %t422, ptr %l22)
  store { i64, ptr } %t425, ptr %l195
  br label %bb117
bb117:
  %t426 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t426, 0
  %t428 = extractvalue { i64, ptr } %t426, 1
  %t429 = mul i64 %t427, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t429)
  call void @llvm.memcpy.p0.p0.i64(ptr %t430, ptr %t428, i64 %t429, i1 false)
  %t431 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t430, 1
  store { i64, ptr } %t432, ptr %l196, !tbaa !27
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load ptr, ptr %l3, !tbaa !29
  %t437 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %v3, ptr %s16, ptr %t433, ptr %t434)
  store { i64, ptr } %t437, ptr %l199
  br label %bb118
bb118:
  %t438 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t438, 0
  %t440 = extractvalue { i64, ptr } %t438, 1
  %t441 = mul i64 %t439, 1
  %t442 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t441)
  call void @llvm.memcpy.p0.p0.i64(ptr %t442, ptr %t440, i64 %t441, i1 false)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t442, 1
  %t445 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t446 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t448 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtNeverIs(ptr %v2, ptr %s16, ptr %s16, ptr %s16, { i64, ptr } %t445, { i64, ptr } %t446, { i64, ptr } %t444)
  store %"compiler/diagmsg:Msg" %t448, ptr %l201
  br label %bb119
bb119:
  %t449 = load ptr, ptr %l189, !tbaa !29
  %t450 = load %"compiler/source:Span", ptr %l191
  %t451 = load %"compiler/diagmsg:Msg", ptr %l201
  %t452 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s16, ptr %t449, %"compiler/source:Span" %t450, %"compiler/diagmsg:Msg" %t451)
  store i64 %t452, ptr %l202
  br label %bb120
bb120:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s16)
  br label %bb128
bb121:
  %t453 = call ptr @__olang_region_make(ptr %v4)
  %t454 = ptrtoint ptr %t453 to i64
  store i64 %t454, ptr %l203, !tbaa !24
  br label %bb122
bb122:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load ptr, ptr %lp6
  %t457 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t456
  %t459 = load i64, ptr %l203
  %t460 = inttoptr i64 %t459 to ptr
  %t461 = call ptr @__olang_scope_alloc_a(ptr %t460, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t457, ptr %t461
  %t462 = load i64, ptr %l203
  %t463 = inttoptr i64 %t462 to ptr
  %t464 = load i64, ptr %l203
  %t465 = inttoptr i64 %t464 to ptr
  %t469 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %t463, ptr %s14, ptr %t465, ptr %t455, ptr %t461, ptr %l22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %l209
  br label %bb123
bb123:
  %t470 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t470, label %bb124, label %bb125
bb124:
  %t472 = load i64, ptr %l203
  %t473 = inttoptr i64 %t472 to ptr
  %t474 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l209, i32 0, i32 0
  %t475 = load { i64, ptr }, ptr %t474
  %t476 = extractvalue { i64, ptr } %t475, 1
  %t477 = call ptr @__olang_region_or(ptr %t476, ptr null)
  %t478 = icmp ne ptr %t477, null
  %t479 = select i1 %t478, ptr %t477, ptr null
  %t480 = icmp eq ptr %t479, %t473
  call void @__olang_region_settle(ptr %t473, i1 %t480)
  br label %bb125
bb125:
  %t481 = load ptr, ptr %lp6
  %t482 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t481
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t482, ptr %l211
  %t483 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l209
  %t484 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t483, ptr %t484
  %t485 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6
  br i1 %t485, label %bb126, label %bb127
bb126:
  %t487 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l211, i32 0, i32 0
  %t488 = load { i64, ptr }, ptr %t487
  %t489 = extractvalue { i64, ptr } %t488, 1
  %t490 = call ptr @__olang_region_or(ptr %t489, ptr null)
  %t491 = icmp ne ptr %t490, null
  %t492 = select i1 %t491, ptr %t490, ptr null
  call void @__olang_region_drop(ptr %t492)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l211
  br label %bb127
bb127:
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s14)
  br label %bb137
bb129:
  br i1 true, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb136
bb132:
  store %olang.scope zeroinitializer, ptr %s18
  %t493 = load ptr, ptr %l0, !tbaa !29
  store ptr %t493, ptr %l213, !tbaa !29
  %t494 = load ptr, ptr %l14, !tbaa !29
  %t496 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t494)
  store %"compiler/source:Span" %t496, ptr %l215
  br label %bb133
bb133:
  %t497 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %s18)
  store %"compiler/diagmsg:Msg" %t497, ptr %l216
  br label %bb134
bb134:
  %t498 = load ptr, ptr %l213, !tbaa !29
  %t499 = load %"compiler/source:Span", ptr %l215
  %t500 = load %"compiler/diagmsg:Msg", ptr %l216
  %t501 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t498, %"compiler/source:Span" %t499, %"compiler/diagmsg:Msg" %t500)
  store i64 %t501, ptr %l217
  br label %bb135
bb135:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s18)
  br label %bb137
bb136:
  call void @__olang_check_failed(ptr @olang_loc_7f447623c50cbf0b_d88fa4c796e8075f)
  unreachable
bb137:
  br label %bb138
bb138:
  %t502 = load i64, ptr %l12, !tbaa !24
  %t504 = add i64 %t502, 1
  store i64 %t504, ptr %l12, !tbaa !24
  br label %bb6
bb139:
  %t506 = ptrtoint ptr %v4 to i64
  store i64 %t506, ptr %l220, !tbaa !24
  %t507 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aaltsCovered_2e0
  br i1 %t507, label %bb140, label %bb141
bb140:
  %t509 = call ptr @__olang_region_make(ptr %v4)
  %t510 = ptrtoint ptr %t509 to i64
  store i64 %t510, ptr %l220, !tbaa !24
  br label %bb141
bb141:
  %t511 = load ptr, ptr %lp6
  %t512 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t511
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t512, ptr %l222
  %t513 = load i64, ptr %l220
  %t514 = inttoptr i64 %t513 to ptr
  %t516 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %t514, ptr %l222)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t516, ptr %l224
  br label %bb142
bb142:
  %t517 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aaltsCovered_2e0
  br i1 %t517, label %bb143, label %bb144
bb143:
  %t519 = load i64, ptr %l220
  %t520 = inttoptr i64 %t519 to ptr
  %t521 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224, i32 0, i32 0
  %t522 = load { i64, ptr }, ptr %t521
  %t523 = extractvalue { i64, ptr } %t522, 1
  %t524 = call ptr @__olang_region_or(ptr %t523, ptr null)
  %t525 = icmp ne ptr %t524, null
  %t526 = select i1 %t525, ptr %t524, ptr null
  %t527 = icmp eq ptr %t526, %t520
  call void @__olang_region_settle(ptr %t520, i1 %t527)
  br label %bb144
bb144:
  %t528 = load i1, ptr %l7, !tbaa !21
  %t529 = load i1, ptr %l8, !tbaa !21
  %t530 = load i1, ptr %l9, !tbaa !21
  %t531 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224
  %t535 = call %"compiler/check:altsCovered" @compiler_2fcheck_3aaltsCovered_2ector(ptr %v4, ptr %v4, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t531, i1 %t528, i1 %t529, i1 %t530)
  store %"compiler/check:altsCovered" %t535, ptr %l229
  br label %bb145
bb145:
  %t537 = call %"compiler/check:altsCovered" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aaltsCovered(ptr %v4, ptr %l229)
  store %"compiler/check:altsCovered" %t537, ptr %l231
  br label %bb146
bb146:
  %t538 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store ptr %t538, ptr %lp23
  %t539 = load %"compiler/check:altsCovered", ptr %l231
  %t540 = load ptr, ptr %lp23
  store %"compiler/check:altsCovered" %t539, ptr %t540
  %t541 = load i1, ptr %l10, !tbaa !21
  %t543 = load ptr, ptr %lp23
  %t544 = getelementptr %"compiler/check:altsCovered", ptr %t543, i32 0, i32 4
  store i1 %t541, ptr %t544, !tbaa !21
  %t545 = load ptr, ptr %lp23
  %t546 = load %"compiler/check:altsCovered", ptr %t545
  store %"compiler/check:altsCovered" %t546, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:altsCovered", ptr %rv
  ret %"compiler/check:altsCovered" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtPayload(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca %"compiler/typed:Local"
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l23 = alloca i32
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l31 = alloca i32
  %l35 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca %"compiler/typed:Make"
  %l56 = alloca ptr
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i32
  %l61 = alloca i32
  %l65 = alloca ptr
  %l66 = alloca ptr
  %t67 = alloca { i64, [5 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t101 = alloca { i64, [3 x i64] }, align 8
  %t133 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t6, i64 %t7)
  store %"compiler/typed:Local" %t10, ptr %l11
  br label %bb2
bb2:
  %t11 = getelementptr %"compiler/typed:Local", ptr %l11, i32 0, i32 2
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t14, i32 %t15, i64 0)
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 36
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l17
  br label %bb4
bb4:
  %t23 = load i64, ptr %l17, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 36
  store ptr %t26, ptr %l19, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l20, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %l21
  %t29 = load i32, ptr %l3, !tbaa !23
  store i32 %t29, ptr %l22, !tbaa !23
  store i32 46, ptr %l23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l1
  %t32 = load i64, ptr %l2, !tbaa !24
  %t36 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, i64 %t32)
  store ptr %t36, ptr %l27
  br label %bb5
bb5:
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l21
  %t39 = load i32, ptr %l22, !tbaa !23
  %t40 = load i32, ptr %l23, !range !{i32 0, i32 52}
  %t41 = load ptr, ptr %l27, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t37, %"compiler/source:Span" %t38, i32 %t39, i32 %t40, ptr %t41, ptr null)
  store ptr %t42, ptr %l28
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l19, !tbaa !29
  %t44 = load ptr, ptr %l28, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t43, ptr %t44)
  br label %bb7
bb7:
  %t45 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t45, ptr %l29
  %t46 = load i32, ptr %l3, !tbaa !23
  store i32 %t46, ptr %l30, !tbaa !23
  store i32 4, ptr %l31
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 36
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store { i64, ptr } %t53, ptr %l35
  br label %bb8
bb8:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  %t59 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t54, i32 1, %"compiler/source:Span" %t55)
  store i32 %t59, ptr %l39
  br label %bb9
bb9:
  %t60 = load i32, ptr %l31, !range !{i32 0, i32 5}
  %t61 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t62 = load i32, ptr %l39, !tbaa !23
  %t64 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t60, i64 0, { i64, ptr } %t61, ptr null, i32 %t62, i32 0, i1 false)
  store %"compiler/typed:Make" %t64, ptr %l41
  br label %bb10
bb10:
  %t65 = load %"compiler/typed:Make", ptr %l41
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t65, ptr %t66
  store { i64, [5 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 0
  store i64 7, ptr %t68
  %t69 = load %"compiler/source:Span", ptr %l29
  %t70 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t69, 0
  %t71 = load i32, ptr %l30, !tbaa !23
  %t72 = insertvalue { %"compiler/source:Span", i32, ptr } %t70, i32 %t71, 1
  %t74 = insertvalue { %"compiler/source:Span", i32, ptr } %t72, ptr %t66, 2
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t74, ptr %t75
  %t76 = load { i64, [5 x i64] }, ptr %t67
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store ptr %t77, ptr %lp5
  %t79 = load ptr, ptr %lp5
  store { i64, [5 x i64] } %t76, ptr %t79
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l1
  %t82 = load %"compiler/source:Span", ptr %l1
  %t83 = load i32, ptr %l3, !tbaa !23
  %t84 = load i64, ptr %l2, !tbaa !24
  %t86 = trunc i64 %t84 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 0, ptr %t89
  %t91 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t82, 0
  %t93 = insertvalue { %"compiler/source:Span", i32, i32 } %t91, i32 %t83, 1
  %t95 = insertvalue { %"compiler/source:Span", i32, i32 } %t93, i32 %t86, 2
  %t96 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t95, ptr %t96
  %t97 = load { i64, [4 x i64] }, ptr %t88
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t97, ptr %t99
  %t100 = load ptr, ptr %lp5
  store { i64, [3 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [3 x i64] }, ptr %t101, i32 0, i32 0
  store i64 1, ptr %t102
  %t104 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t81, 0
  %t106 = insertvalue { %"compiler/source:Span", ptr, ptr } %t104, ptr %t99, 1
  %t108 = insertvalue { %"compiler/source:Span", ptr, ptr } %t106, ptr %t100, 2
  %t109 = getelementptr { i64, [3 x i64] }, ptr %t101, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t108, ptr %t109
  %t110 = load { i64, [3 x i64] }, ptr %t101
  %t112 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t110, ptr %t112
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t80, ptr %t112)
  br label %bb11
bb11:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l56, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t116, ptr %l57
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l58, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t118, ptr %l59
  %t119 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t119, ptr %l60, !tbaa !23
  store i32 47, ptr %l61
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l1
  %t122 = load i64, ptr %l2, !tbaa !24
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t120, %"compiler/source:Span" %t121, i64 %t122)
  store ptr %t126, ptr %l65
  br label %bb12
bb12:
  %t127 = load ptr, ptr %l58, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l59
  %t129 = load i32, ptr %l60, !tbaa !23
  %t130 = load i32, ptr %l61, !range !{i32 0, i32 52}
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, i32 %t129, i32 %t130, ptr %t131, ptr null)
  store ptr %t132, ptr %l66
  br label %bb13
bb13:
  store { i64, [3 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [3 x i64] }, ptr %t133, i32 0, i32 0
  store i64 2, ptr %t134
  %t135 = load %"compiler/source:Span", ptr %l57
  %t136 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t135, 0
  %t137 = load ptr, ptr %l66, !tbaa !29
  %t138 = insertvalue { %"compiler/source:Span", ptr } %t136, ptr %t137, 1
  %t139 = getelementptr { i64, [3 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t138, ptr %t139
  %t140 = load { i64, [3 x i64] }, ptr %t133
  %t142 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t140, ptr %t142
  %t143 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t143, ptr %t142)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenBranch(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l15 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l27 = alloca i32
  %l31 = alloca %"compiler/typed:Block"
  %l37 = alloca ptr
  %l38 = alloca i1
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca ptr
  %l55 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %rv = alloca ptr
  %t19 = alloca { i64, [3 x i64] }, align 8
  %t60 = alloca { i64, [3 x i64] }, align 8
  %t120 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a3, label %bb1, label %bb2
bb1:
  %t3 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t3, ptr %l8
  %t4 = load ptr, ptr %l0, !tbaa !29
  store ptr %t4, ptr %l9, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:If", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_76087ef951037d6e_3aecbfe8b84426da)
  unreachable
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:If", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load ptr, ptr %l9, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t15)
  store ptr %t18, ptr %l15
  br label %bb6
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 0
  store i64 11, ptr %t20
  %t21 = load %"compiler/source:Span", ptr %l8
  %t22 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t21, 0
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = insertvalue { %"compiler/source:Span", ptr } %t22, ptr %t23, 1
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t24, ptr %t25
  %t26 = load { i64, [3 x i64] }, ptr %t19
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t26, ptr %t28
  store ptr %t28, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:If", ptr %t30, i32 0, i32 2
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t37, ptr %l21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t38)
  store ptr %t40, ptr %l23
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t41 = load ptr, ptr %l23, !tbaa !29
  %t43 = getelementptr %"compiler/check:frame", ptr %t41, i32 0, i32 7
  %t44 = load i64, ptr %t43, !tbaa !24
  %t46 = trunc i64 %t44 to i32
  store i32 %t46, ptr %l27, !tbaa !23
  %t48 = icmp sge i64 0, 0
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = icmp sle i64 0, 1152921504606846975
  br i1 %t50, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5aef4dfb7ef3d3db_90619d6d8d57518f)
  unreachable
bb13:
  %t52 = mul i64 0, 8
  %t53 = insertvalue { i64, ptr } undef, i64 0, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t55 = load i32, ptr %l27, !tbaa !23
  %t57 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t55, { i64, ptr } %t54)
  store %"compiler/typed:Block" %t57, ptr %l31
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_5aef4dfb7ef3d3db_90619d6d8d57518f)
  unreachable
bb15:
  %t58 = load %"compiler/typed:Block", ptr %l31
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t58, ptr %t59
  store { i64, [3 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [3 x i64] }, ptr %t60, i32 0, i32 0
  store i64 11, ptr %t61
  %t62 = load %"compiler/source:Span", ptr %l21
  %t63 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t62, 0
  %t65 = insertvalue { %"compiler/source:Span", ptr } %t63, ptr %t59, 1
  %t66 = getelementptr { i64, [3 x i64] }, ptr %t60, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t65, ptr %t66
  %t67 = load { i64, [3 x i64] }, ptr %t60
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t67, ptr %t69
  store ptr %t69, ptr %rv
  br label %ret
bb16:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr %"compiler/ast:If", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  store ptr %t74, ptr %l4, !tbaa !29
  %t76 = load ptr, ptr %l4, !tbaa !29
  store ptr %t76, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t77 = load ptr, ptr %l37, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load ptr, ptr %l37, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 22}
  %t83 = icmp eq i64 %t81, 5
  store i1 %t83, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l38, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr }, ptr %t87, i32 0, i32 0
  %t89 = load %"compiler/source:Span", ptr %t88
  store %"compiler/source:Span" %t89, ptr %l5
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", ptr }, ptr %t93, i32 0, i32 1
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  br label %bb21
bb20:
  br label %bb30
bb21:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/ast:If", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t104 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t104, ptr %l48
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l49, !tbaa !29
  %t106 = load ptr, ptr %l6, !tbaa !29
  %t108 = getelementptr %"compiler/ast:If", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = icmp eq ptr %t109, null
  br i1 %t111, label %bb24, label %bb25
bb23:
  br label %bb28
bb24:
  call void @__olang_check_failed(ptr @olang_loc_cff02b8329dc1100_79cd7222e22836ac)
  unreachable
bb25:
  br label %bb26
bb26:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/ast:If", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load ptr, ptr %l49, !tbaa !29
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t117, ptr %t116)
  store ptr %t119, ptr %l55
  br label %bb27
bb27:
  store { i64, [3 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 0
  store i64 11, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l48
  %t123 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t122, 0
  %t124 = load ptr, ptr %l55, !tbaa !29
  %t125 = insertvalue { %"compiler/source:Span", ptr } %t123, ptr %t124, 1
  %t126 = getelementptr { i64, [3 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t125, ptr %t126
  %t127 = load { i64, [3 x i64] }, ptr %t120
  %t129 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t127, ptr %t129
  store ptr %t129, ptr %rv
  br label %ret
bb28:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l5
  %t133 = load ptr, ptr %l6, !tbaa !29
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %t131, %"compiler/source:Span" %t132, ptr %t133)
  store ptr %t137, ptr %l61
  br label %bb29
bb29:
  %t138 = load ptr, ptr %l61, !tbaa !29
  store ptr %t138, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l62, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t140, ptr %l63
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t143 = getelementptr %"compiler/ast:If", ptr %t141, i32 0, i32 2
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  br i1 %t146, label %bb34, label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_71fc016cdbd92d9f_b1a3aa3c3a436c9b)
  unreachable
bb35:
  br label %bb36
bb36:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t150 = getelementptr %"compiler/ast:If", ptr %t148, i32 0, i32 2
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t152 = load ptr, ptr %l62, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l63
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %t152, %"compiler/source:Span" %t153, ptr %t151)
  store ptr %t155, ptr %l69
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l69, !tbaa !29
  store ptr %t156, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_43f0c8289ee2541_d6540b938bb16195)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeCtx(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l4 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca ptr
  %l11 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l12 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l14 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l15 = alloca i32
  %l17 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l37 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l39 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l40 = alloca i32
  %l42 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t3)
  store ptr %t5, ptr %l8
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t8 = getelementptr %"compiler/check:frame", ptr %t6, i32 0, i32 4
  %t9 = getelementptr %"compiler/generic:Context", ptr %t8, i32 0, i32 2
  %t11 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t9)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t11, ptr %l11
  br label %bb3
bb3:
  %t12 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l11
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t12, ptr %l2
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t14 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l2)
  %t15 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t14, 1
  %t16 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t14, 0
  store i32 %t16, ptr %l15
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb6, label %ok.18, !prof !99
ok.18:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t15, ptr %l14
  br label %bb5
bb5:
  %t19 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l14
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t19, ptr %l12
  br label %bb8
bb6:
  %t20 = load i32, ptr %l15, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb8:
  %t24 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l12
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t24, ptr %l3
  store ptr %l1, ptr %l18, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l3, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t25, i32 %t27)
  store { i64, ptr } %t30, ptr %l21
  br label %bb9
bb9:
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t33 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t31, i64 %t32)
  %t41 = getelementptr i8, ptr %t40, i64 %t32
  call void @olang_textcopy(ptr %t41, ptr %t34, i64 %t35)
  %t42 = getelementptr i8, ptr %t41, i64 %t35
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t40, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t52, { i64, ptr } %t51)
  br label %bb10
bb10:
  store ptr %l1, ptr %l24, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l3, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  %t63 = inttoptr i64 0 to ptr
  %t66 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s2, ptr %t63, ptr %t59, i32 %t61)
  store { i64, ptr } %t66, ptr %l30
  br label %bb11
bb11:
  %t67 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t74, { i64, ptr } %t73)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  br label %bb4
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t76)
  store ptr %t78, ptr %l33
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l33, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 4
  %t82 = getelementptr %"compiler/generic:Context", ptr %t81, i32 0, i32 3
  %t84 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t82)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t84, ptr %l36
  br label %bb16
bb16:
  %t85 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l36
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t85, ptr %l4
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t87 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l4)
  %t88 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t87, 1
  %t89 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t87, 0
  store i32 %t89, ptr %l40
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb19, label %ok.91, !prof !99
ok.91:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t88, ptr %l39
  br label %bb18
bb18:
  %t92 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l39
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t92, ptr %l37
  br label %bb21
bb19:
  %t93 = load i32, ptr %l40, !tbaa !23
  %t94 = ashr i32 %t93, 16
  %t96 = icmp eq i32 %t94, 1
  store i1 %t96, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb21:
  %t97 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l37
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t97, ptr %l5
  store ptr %l1, ptr %l43, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l5, i32 0, i32 0
  %t100 = load i32, ptr %t99, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s5, ptr %t98, i32 %t100)
  store { i64, ptr } %t103, ptr %l46
  br label %bb22
bb22:
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t106 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t104, i64 %t105)
  %t114 = getelementptr i8, ptr %t113, i64 %t105
  call void @olang_textcopy(ptr %t114, ptr %t107, i64 %t108)
  %t115 = getelementptr i8, ptr %t114, i64 %t108
  call void @olang_textcopy(ptr %t115, ptr %t110, i64 %t111)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t113, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t125 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t125, { i64, ptr } %t124)
  br label %bb23
bb23:
  store ptr %l1, ptr %l49, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l5, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  %t136 = inttoptr i64 0 to ptr
  %t139 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s5, ptr %t136, ptr %t132, i32 %t134)
  store { i64, ptr } %t139, ptr %l55
  br label %bb24
bb24:
  %t140 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = mul i64 %t141, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t143)
  call void @llvm.memcpy.p0.p0.i64(ptr %t144, ptr %t142, i64 %t143, i1 false)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  %t147 = load ptr, ptr %l49, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t147, { i64, ptr } %t146)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb26:
  br label %bb17
bb27:
  %t150 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t150, ptr %l58
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t151 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t151, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectFinish(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"compiler/typed:Block"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 37
  store ptr %t7, ptr %l6, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t8)
  store ptr %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 56
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = load ptr, ptr %l6, !tbaa !29
  %t17 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t14)
  store { i64, ptr } %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t19 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t18)
  store %"compiler/typed:Block" %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load %"compiler/typed:Block", ptr %l12
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t20, ptr %t21
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 11
  store ptr %t21, ptr %t24, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t25)
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t29, i64 %a1, i64 2)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecidedIf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenBranch(ptr %v0, ptr %v1, ptr %v0, ptr %t2, %"compiler/source:Span" %a1, ptr %a2, i1 %a3)
  store ptr %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecided(ptr %v0, ptr %v0, ptr %v2, ptr %t11, ptr %t12)
  store ptr %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l10, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5, ptr %a6, i64 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i32
  %lp9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca %"compiler/check:seqOf"
  %l37 = alloca %"compiler/check:seqOf"
  %l38 = alloca i32
  %l40 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l52 = alloca %"compiler/diagmsg:Msg"
  %l53 = alloca i64
  %l57 = alloca ptr
  %l61 = alloca i1
  %l65 = alloca i1
  %l68 = alloca ptr
  %l73 = alloca i32
  %l78 = alloca i32
  %l79 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca %"compiler/diagmsg:Msg"
  %l92 = alloca i64
  %l96 = alloca ptr
  %l99 = alloca i64
  %l105 = alloca ptr
  %l107 = alloca i64
  %l110 = alloca i64
  %l115 = alloca ptr
  %l117 = alloca i32
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca %"compiler/source:Span"
  %l123 = alloca i32
  %l130 = alloca ptr
  %l135 = alloca ptr
  %l138 = alloca ptr
  %l144 = alloca i64
  %l147 = alloca i64
  %l172 = alloca ptr
  %l175 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca %"compiler/source:Span"
  %l182 = alloca i32
  %l187 = alloca ptr
  %l195 = alloca ptr
  %l198 = alloca ptr
  %l199 = alloca ptr
  %l200 = alloca %"compiler/source:Span"
  %l201 = alloca ptr
  %l202 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l205 = alloca ptr
  %l206 = alloca ptr
  %l207 = alloca { i64, ptr }
  %l210 = alloca %"compiler/source:Span"
  %l214 = alloca ptr
  %l218 = alloca ptr
  %l219 = alloca ptr
  %l225 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i32 %a5, ptr %l5
  store ptr %a6, ptr %l6
  store i64 %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load i32, ptr %l5, !tbaa !23
  %t7 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsWritten(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i32 %t3)
  store i32 %t7, ptr %l25
  br label %bb1
bb1:
  %t8 = load i32, ptr %l25, !tbaa !23
  store i32 %t8, ptr %l8, !tbaa !23
  %t9 = load i32, ptr %l8, !tbaa !23
  %t11 = icmp slt i32 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i32, ptr %l5, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v3, ptr %v1, ptr %v5, ptr %t13, %"compiler/source:Span" %t14, ptr %t15, ptr %t16, i32 %t17)
  store ptr %t23, ptr %l33
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t24 = load ptr, ptr %l33, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l5, !tbaa !23
  %t29 = call { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %t25, i32 %t26)
  %t30 = extractvalue { i32, %"compiler/check:seqOf" } %t29, 1
  %t31 = extractvalue { i32, %"compiler/check:seqOf" } %t29, 0
  store i32 %t31, ptr %l38
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb7, label %ok.33, !prof !99
ok.33:
  store %"compiler/check:seqOf" %t30, ptr %l37
  br label %bb6
bb6:
  %t34 = load %"compiler/check:seqOf", ptr %l37
  store %"compiler/check:seqOf" %t34, ptr %l34
  br label %bb17
bb7:
  %t35 = load i32, ptr %l38, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  store i1 %t38, ptr %l40, !tbaa !21
  br label %bb8
bb8:
  %t39 = load i32, ptr %l5, !tbaa !23
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t43 = icmp ne i32 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l44, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %l45
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l46, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l49
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t53 = load ptr, ptr %l46, !tbaa !29
  %t54 = load i32, ptr %l49, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t53, i32 %t54)
  store { i64, ptr } %t55, ptr %l50
  br label %bb12
bb12:
  %t56 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t56, 0
  %t58 = extractvalue { i64, ptr } %t56, 1
  %t59 = mul i64 %t57, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t59)
  call void @llvm.memcpy.p0.p0.i64(ptr %t60, ptr %t58, i64 %t59, i1 false)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemsNotSeq(ptr %s3, ptr %s3, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t64, ptr %l52
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l44, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l45
  %t67 = load %"compiler/diagmsg:Msg", ptr %l52
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t65, %"compiler/source:Span" %t66, %"compiler/diagmsg:Msg" %t67)
  store i64 %t68, ptr %l53
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l1
  %t71 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t69, %"compiler/source:Span" %t70, i32 %t71, i64 0)
  store ptr %t75, ptr %l57
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l57, !tbaa !29
  store ptr %t76, ptr %rv
  br label %ret
bb17:
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store ptr %t77, ptr %lp9
  %t78 = load %"compiler/check:seqOf", ptr %l34
  %t79 = load ptr, ptr %lp9
  store %"compiler/check:seqOf" %t78, ptr %t79
  %t80 = load i32, ptr %l8, !tbaa !23
  %t81 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t84 = icmp ne i32 %t80, %t81
  br i1 %t84, label %bb18, label %bb19
bb18:
  %t86 = load ptr, ptr %lp9
  %t87 = getelementptr %"compiler/check:seqOf", ptr %t86, i32 0, i32 0
  %t88 = load i32, ptr %t87, !tbaa !23
  %t89 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t92 = icmp ne i32 %t88, %t89
  store i1 %t92, ptr %l61, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb20
bb20:
  %t94 = load i1, ptr %l61, !tbaa !21
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  store ptr %t100, ptr %l68, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l8, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l73
  br label %bb23
bb22:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb26
bb23:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load ptr, ptr %lp9
  %t118 = getelementptr %"compiler/check:seqOf", ptr %t117, i32 0, i32 0
  %t119 = load i32, ptr %t118, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t116, i32 %t119)
  store i32 %t122, ptr %l78
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l68, !tbaa !29
  %t124 = load i32, ptr %l73, !tbaa !23
  %t125 = load i32, ptr %l78, !tbaa !23
  %t126 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t123, i32 %t124, i32 %t125)
  store i1 %t126, ptr %l79
  br label %bb25
bb25:
  %t127 = load i1, ptr %l79, !tbaa !21
  %t128 = xor i1 %t127, true
  store i1 %t128, ptr %l65, !tbaa !21
  br label %bb26
bb26:
  %t130 = load i1, ptr %l65, !tbaa !21
  br i1 %t130, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l81, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t132, ptr %l82
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l8, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t133, i32 %t134)
  store { i64, ptr } %t137, ptr %l85
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t138 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 0
  %t140 = extractvalue { i64, ptr } %t138, 1
  %t141 = mul i64 %t139, 1
  %t142 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t142, ptr %t140, i64 %t141, i1 false)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  store { i64, ptr } %t144, ptr %l86, !tbaa !27
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %lp9
  %t147 = getelementptr %"compiler/check:seqOf", ptr %t146, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t145, i32 %t148)
  store { i64, ptr } %t151, ptr %l89
  br label %bb30
bb30:
  %t152 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = mul i64 %t153, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t156, ptr %t154, i64 %t155, i1 false)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  %t159 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t161 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemsType(ptr %s4, ptr %s4, ptr %s4, { i64, ptr } %t159, { i64, ptr } %t158)
  store %"compiler/diagmsg:Msg" %t161, ptr %l91
  br label %bb31
bb31:
  %t162 = load ptr, ptr %l81, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l82
  %t164 = load %"compiler/diagmsg:Msg", ptr %l91
  %t165 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t162, %"compiler/source:Span" %t163, %"compiler/diagmsg:Msg" %t164)
  store i64 %t165, ptr %l92
  br label %bb32
bb32:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l1
  %t168 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t172 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t166, %"compiler/source:Span" %t167, i32 %t168, i64 0)
  store ptr %t172, ptr %l96
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s4)
  %t173 = load ptr, ptr %l96, !tbaa !29
  store ptr %t173, ptr %rv
  br label %ret
bb34:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t178 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erestAt(ptr %v0, ptr %v2, ptr %t174, { i64, ptr } %t175)
  store i64 %t178, ptr %l99
  br label %bb35
bb35:
  %t179 = load i64, ptr %l99, !tbaa !24
  store i64 %t179, ptr %l10, !tbaa !24
  %t180 = load i64, ptr %l10, !tbaa !24
  %t182 = icmp eq i64 %t180, -2
  br i1 %t182, label %bb36, label %bb37
bb36:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load %"compiler/source:Span", ptr %l1
  %t186 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t184, %"compiler/source:Span" %t185, i32 %t186, i64 0)
  store ptr %t190, ptr %l105
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t191 = load ptr, ptr %l105, !tbaa !29
  store ptr %t191, ptr %rv
  br label %ret
bb39:
  %t192 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l107, !tbaa !24
  %t195 = load i64, ptr %l10, !tbaa !24
  %t197 = icmp sge i64 %t195, 0
  br i1 %t197, label %bb40, label %bb41
bb40:
  store i64 1, ptr %l110, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb42
bb42:
  %t199 = load i64, ptr %l107, !tbaa !24
  %t200 = load i64, ptr %l110, !tbaa !24
  %t201 = sub i64 %t199, %t200
  store i64 %t201, ptr %l11, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  %t205 = load ptr, ptr %l4, !tbaa !29
  %t209 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqBase(ptr %v0, ptr %v3, ptr %v5, ptr %t203, %"compiler/source:Span" %t204, ptr %t205)
  store ptr %t209, ptr %l115
  br label %bb43
bb43:
  %t210 = load ptr, ptr %l115, !tbaa !29
  store ptr %t210, ptr %l12, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t211)
  store i32 %t213, ptr %l117
  br label %bb44
bb44:
  %t214 = load i32, ptr %l117, !tbaa !23
  store i32 %t214, ptr %l13, !tbaa !23
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l118, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t216, ptr %l119
  %t217 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t217, ptr %l120
  %t218 = load i64, ptr %l10, !tbaa !24
  %t220 = icmp sge i64 %t218, 0
  br i1 %t220, label %bb45, label %bb46
bb45:
  store i32 100, ptr %l123
  br label %bb47
bb46:
  store i32 94, ptr %l123
  br label %bb47
bb47:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l1
  %t226 = load ptr, ptr %l12, !tbaa !29
  %t227 = load ptr, ptr %lp9
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLen(ptr %v0, ptr %v5, ptr %v5, ptr %v0, ptr %t224, %"compiler/source:Span" %t225, ptr %t226, ptr %t227)
  store ptr %t232, ptr %l130
  br label %bb48
bb48:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load %"compiler/source:Span", ptr %l1
  %t235 = load i32, ptr %l13, !tbaa !23
  %t236 = load i64, ptr %l11, !tbaa !24
  %t241 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t233, %"compiler/source:Span" %t234, i32 %t235, i64 %t236)
  store ptr %t241, ptr %l135
  br label %bb49
bb49:
  %t242 = load %"compiler/source:Span", ptr %l1
  %t243 = load %"compiler/source:Span", ptr %l1
  %t244 = load ptr, ptr %l118, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l119
  %t246 = load %"compiler/source:Span", ptr %l120
  %t247 = load i32, ptr %l123, !range !{i32 0, i32 114}
  %t248 = load ptr, ptr %l130, !tbaa !29
  %t249 = load ptr, ptr %l135, !tbaa !29
  %t252 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v0, ptr %v0, ptr %v5, ptr %t244, %"compiler/source:Span" %t245, %"compiler/source:Span" %t246, i32 %t247, ptr %t248, ptr %t249, %"compiler/source:Span" %t242, %"compiler/source:Span" %t243)
  store ptr %t252, ptr %l138
  br label %bb50
bb50:
  %t253 = load ptr, ptr %l138, !tbaa !29
  store ptr %t253, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t254, 0
  store i64 %t256, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t258 = load i64, ptr %l16, !tbaa !24
  %t259 = load i64, ptr %l15, !tbaa !24
  %t262 = icmp sgt i64 %t258, %t259
  br i1 %t262, label %bb51, label %bb52
bb51:
  %t264 = load i64, ptr %l17, !tbaa !24
  %t266 = icmp sgt i64 %t264, 0
  br i1 %t266, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l144, !tbaa !24
  br label %bb56
bb53:
  %t268 = load i64, ptr %l16, !tbaa !24
  %t269 = load i64, ptr %l15, !tbaa !24
  %t272 = sub i64 %t268, %t269
  %t273 = load i64, ptr %l17, !tbaa !24
  %t276 = add i64 %t272, %t273
  %t278 = sub i64 %t276, 1
  %t279 = load i64, ptr %l17, !tbaa !24
  %t282 = sdiv i64 %t278, %t279
  store i64 %t282, ptr %l147, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb55
bb55:
  %t284 = load i64, ptr %l147, !tbaa !24
  store i64 %t284, ptr %l144, !tbaa !24
  br label %bb56
bb56:
  %t285 = load i64, ptr %l144, !tbaa !24
  store i64 %t285, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb57
bb57:
  %t286 = load i64, ptr %l19, !tbaa !24
  %t287 = load i64, ptr %l18, !tbaa !24
  %t290 = icmp slt i64 %t286, %t287
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb58, label %bb59
bb58:
  br label %bb79
bb59:
  br label %bb60
bb60:
  %t294 = load i64, ptr %l15, !tbaa !24
  %t295 = load i64, ptr %l19, !tbaa !24
  %t296 = load i64, ptr %l17, !tbaa !24
  %t299 = mul i64 %t295, %t296
  %t302 = add i64 %t294, %t299
  store i64 %t302, ptr %l20, !tbaa !24
  %t304 = load i64, ptr %l20, !tbaa !24
  %t305 = load i64, ptr %l10, !tbaa !24
  %t308 = icmp eq i64 %t304, %t305
  br i1 %t308, label %bb61, label %bb62
bb61:
  br label %bb78
bb62:
  br label %bb63
bb63:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load %"compiler/source:Span", ptr %l1
  %t312 = load i32, ptr %l13, !tbaa !23
  %t313 = load i64, ptr %l20, !tbaa !24
  %t318 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t310, %"compiler/source:Span" %t311, i32 %t312, i64 %t313)
  store ptr %t318, ptr %l172
  br label %bb64
bb64:
  %t319 = load ptr, ptr %l172, !tbaa !29
  store ptr %t319, ptr %l21, !tbaa !29
  %t320 = load i64, ptr %l10, !tbaa !24
  %t322 = icmp sge i64 %t320, 0
  br i1 %t322, label %bb65, label %bb66
bb65:
  %t324 = load i64, ptr %l20, !tbaa !24
  %t325 = load i64, ptr %l10, !tbaa !24
  %t328 = icmp sgt i64 %t324, %t325
  store i1 %t328, ptr %l175, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb67
bb67:
  %t330 = load i1, ptr %l175, !tbaa !21
  br i1 %t330, label %bb68, label %bb69
bb68:
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l179, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t332, ptr %l180
  %t333 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t333, ptr %l181
  store i32 69, ptr %l182
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load %"compiler/source:Span", ptr %l1
  %t336 = load ptr, ptr %l12, !tbaa !29
  %t337 = load ptr, ptr %lp9
  %t342 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLen(ptr %v0, ptr %v5, ptr %v5, ptr %v0, ptr %t334, %"compiler/source:Span" %t335, ptr %t336, ptr %t337)
  store ptr %t342, ptr %l187
  br label %bb70
bb69:
  br label %bb73
bb70:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load %"compiler/source:Span", ptr %l1
  %t345 = load i32, ptr %l13, !tbaa !23
  %t346 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = load i64, ptr %l20, !tbaa !24
  %t352 = sub i64 %t348, %t349
  %t357 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t343, %"compiler/source:Span" %t344, i32 %t345, i64 %t352)
  store ptr %t357, ptr %l195
  br label %bb71
bb71:
  %t358 = load %"compiler/source:Span", ptr %l1
  %t359 = load %"compiler/source:Span", ptr %l1
  %t360 = load ptr, ptr %l179, !tbaa !29
  %t361 = load %"compiler/source:Span", ptr %l180
  %t362 = load %"compiler/source:Span", ptr %l181
  %t363 = load i32, ptr %l182, !range !{i32 0, i32 114}
  %t364 = load ptr, ptr %l187, !tbaa !29
  %t365 = load ptr, ptr %l195, !tbaa !29
  %t368 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v0, ptr %v0, ptr %v5, ptr %t360, %"compiler/source:Span" %t361, %"compiler/source:Span" %t362, i32 %t363, ptr %t364, ptr %t365, %"compiler/source:Span" %t358, %"compiler/source:Span" %t359)
  store ptr %t368, ptr %l198
  br label %bb72
bb72:
  %t369 = load ptr, ptr %l198, !tbaa !29
  store ptr %t369, ptr %l21, !tbaa !29
  br label %bb73
bb73:
  %t370 = load ptr, ptr %l0, !tbaa !29
  store ptr %t370, ptr %l199, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t371, ptr %l200
  %t372 = load ptr, ptr %l14, !tbaa !29
  store ptr %t372, ptr %l201, !tbaa !29
  %t373 = load ptr, ptr %l0, !tbaa !29
  store ptr %t373, ptr %l202, !tbaa !29
  %t374 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t374, ptr %l203, !tbaa !27
  %t375 = load i64, ptr %l20, !tbaa !24
  %t377 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr ptr, ptr %t378, i64 %t375
  %t380 = load ptr, ptr %t379, !tbaa !39
  store ptr %t380, ptr %l205, !tbaa !29
  %t381 = load ptr, ptr %l0, !tbaa !29
  store ptr %t381, ptr %l206, !tbaa !29
  %t382 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t382, ptr %l207, !tbaa !27
  %t383 = load i64, ptr %l20, !tbaa !24
  %t385 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = getelementptr ptr, ptr %t386, i64 %t383
  %t388 = load ptr, ptr %t387, !tbaa !39
  %t390 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v2, ptr %t388)
  store %"compiler/source:Span" %t390, ptr %l210
  br label %bb74
bb74:
  %t391 = load ptr, ptr %l12, !tbaa !29
  %t392 = load ptr, ptr %lp9
  %t393 = load ptr, ptr %l21, !tbaa !29
  %t394 = load ptr, ptr %l206, !tbaa !29
  %t395 = load %"compiler/source:Span", ptr %l210
  %t399 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqElem(ptr %v0, ptr %v5, ptr %v5, ptr %v5, ptr %v0, ptr %t394, %"compiler/source:Span" %t395, ptr %t391, ptr %t392, ptr %t393)
  store ptr %t399, ptr %l214
  br label %bb75
bb75:
  %t400 = load ptr, ptr %lp9
  %t401 = getelementptr %"compiler/check:seqOf", ptr %t400, i32 0, i32 0
  %t402 = load i32, ptr %t401, !tbaa !23
  %t403 = load ptr, ptr %l6, !tbaa !29
  %t404 = load i64, ptr %l7, !tbaa !24
  %t405 = load ptr, ptr %l202, !tbaa !29
  %t406 = load ptr, ptr %l205, !tbaa !29
  %t407 = load ptr, ptr %l214, !tbaa !29
  %t411 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v2, ptr %v0, ptr %v4, ptr %v5, ptr %t405, ptr %t406, ptr %t407, i32 %t402, ptr %t403, i64 %t404)
  store ptr %t411, ptr %l218
  br label %bb76
bb76:
  %t412 = load ptr, ptr %l199, !tbaa !29
  %t413 = load %"compiler/source:Span", ptr %l200
  %t414 = load ptr, ptr %l201, !tbaa !29
  %t415 = load ptr, ptr %l218, !tbaa !29
  %t416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v5, ptr %v5, ptr %v5, ptr %t412, %"compiler/source:Span" %t413, ptr %t414, ptr %t415)
  store ptr %t416, ptr %l219
  br label %bb77
bb77:
  %t417 = load ptr, ptr %l219, !tbaa !29
  store ptr %t417, ptr %l14, !tbaa !29
  br label %bb78
bb78:
  %t418 = load i64, ptr %l19, !tbaa !24
  %t420 = add i64 %t418, 1
  store i64 %t420, ptr %l19, !tbaa !24
  br label %bb57
bb79:
  %t422 = load i64, ptr %l10, !tbaa !24
  %t424 = icmp sge i64 %t422, 0
  br i1 %t424, label %bb80, label %bb81
bb80:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t427, ptr %l225, !tbaa !27
  %t428 = load i64, ptr %l10, !tbaa !24
  %t430 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = getelementptr ptr, ptr %t431, i64 %t428
  %t433 = load ptr, ptr %t432, !tbaa !39
  %t434 = load ptr, ptr %l12, !tbaa !29
  %t435 = load ptr, ptr %lp9
  %t436 = load i32, ptr %l5, !tbaa !23
  %t437 = load i64, ptr %l10, !tbaa !24
  %t438 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t441 = load i64, ptr %l10, !tbaa !24
  %t444 = sub i64 %t440, %t441
  %t446 = sub i64 %t444, 1
  %t447 = load ptr, ptr %l6, !tbaa !29
  %t448 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erestBind(ptr %v0, ptr %v2, ptr %v5, ptr %v5, ptr %v4, ptr %t426, ptr %t433, ptr %t434, ptr %t435, i32 %t436, i64 %t437, i64 %t446, ptr %t447, i64 %t448)
  br label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb83
bb83:
  %t458 = load ptr, ptr %l14, !tbaa !29
  store ptr %t458, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca { i64, [3 x i64] }
  %l46 = alloca ptr
  %l50 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i32
  %l65 = alloca i32
  %l69 = alloca i64
  %l72 = alloca i1
  %l76 = alloca i1
  %l77 = alloca i1
  %l81 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca %"compiler/msgs:Nearest"
  %l92 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l110 = alloca ptr
  %l115 = alloca i32
  %l116 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l124 = alloca %"compiler/diagmsg:Msg"
  %l125 = alloca i64
  %l130 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l139 = alloca i1
  %l143 = alloca ptr
  %l144 = alloca %"compiler/source:Span"
  %l148 = alloca { i64, ptr }
  %l150 = alloca %"compiler/diagmsg:Msg"
  %l151 = alloca i64
  %l156 = alloca ptr
  %l160 = alloca i1
  %l169 = alloca ptr
  %l170 = alloca %"compiler/source:Span"
  %l174 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l180 = alloca %"compiler/diagmsg:Msg"
  %l181 = alloca i64
  %l185 = alloca ptr
  %l186 = alloca %"compiler/source:Span"
  %l190 = alloca { i64, ptr }
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l197 = alloca i64
  %l202 = alloca ptr
  %l206 = alloca { i64, ptr }
  %l207 = alloca i32
  %l210 = alloca ptr
  %l215 = alloca i32
  %l216 = alloca { i64, ptr }
  %l222 = alloca i64
  %l225 = alloca i64
  %l246 = alloca { i64, ptr }
  %l249 = alloca i32
  %l258 = alloca i32
  %l262 = alloca ptr
  %l263 = alloca %"compiler/source:Span"
  %l264 = alloca %"compiler/source:Span"
  %l265 = alloca i32
  %l269 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l272 = alloca i32
  %l273 = alloca { i64, ptr }
  %l277 = alloca ptr
  %l281 = alloca i32
  %l286 = alloca ptr
  %l297 = alloca ptr
  %l298 = alloca ptr
  %l299 = alloca %"compiler/source:Span"
  %l302 = alloca { i64, ptr }
  %l303 = alloca { i64, ptr }
  %l306 = alloca { i64, ptr }
  %l307 = alloca %"compiler/diagmsg:Msg"
  %l308 = alloca i64
  %l313 = alloca ptr
  %l318 = alloca { i64, ptr }
  %l327 = alloca i64
  %l330 = alloca i64
  %l348 = alloca { i64, ptr }
  %l358 = alloca ptr
  %l359 = alloca %"compiler/source:Span"
  %l363 = alloca %"compiler/diagmsg:Msg"
  %l364 = alloca i64
  %l367 = alloca ptr
  %l376 = alloca i32
  %l379 = alloca ptr
  %l384 = alloca i32
  %l385 = alloca { i64, ptr }
  %l395 = alloca ptr
  %l396 = alloca %"compiler/source:Span"
  %l398 = alloca i64
  %l402 = alloca { i64, ptr }
  %l404 = alloca %"compiler/diagmsg:Msg"
  %l405 = alloca i64
  %l408 = alloca ptr
  %l411 = alloca i64
  %l413 = alloca ptr
  %l418 = alloca i32
  %l419 = alloca ptr
  %l421 = alloca ptr
  %l426 = alloca i64
  %l429 = alloca i64
  %l452 = alloca i1
  %l457 = alloca i1
  %l463 = alloca ptr
  %l464 = alloca ptr
  %l466 = alloca ptr
  %l471 = alloca i32
  %l472 = alloca i64
  %l474 = alloca { i64, ptr }
  %l478 = alloca { i64, [3 x i64] }
  %l483 = alloca i1
  %l484 = alloca { i64, ptr }
  %l491 = alloca ptr
  %l492 = alloca ptr
  %l493 = alloca { i64, ptr }
  %l495 = alloca ptr
  %l496 = alloca { i64, ptr }
  %l498 = alloca i32
  %l500 = alloca { i64, ptr }
  %l503 = alloca %"compiler/source:Span"
  %l504 = alloca ptr
  %l506 = alloca { i64, ptr }
  %l509 = alloca { i64, ptr }
  %l512 = alloca ptr
  %l516 = alloca { i64, ptr }
  %l519 = alloca i1
  %l521 = alloca ptr
  %l523 = alloca ptr
  %l524 = alloca { i64, ptr }
  %l527 = alloca %"compiler/source:Span"
  %l529 = alloca i1
  %l531 = alloca ptr
  %l534 = alloca ptr
  %l540 = alloca { i64, ptr }
  %l541 = alloca %"compiler/source:Span"
  %l542 = alloca i32
  %l547 = alloca %"compiler/typed:Make"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca ptr
  %t1067 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l50
  br label %bb1
bb1:
  %t6 = load i1, ptr %l50, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l54
  br label %bb4
bb3:
  br label %bb118
bb4:
  %t14 = load i1, ptr %l54, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l58
  br label %bb7
bb6:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb8
bb7:
  %t20 = load i32, ptr %l58, !range !{i32 0, i32 6}
  %t22 = trunc i64 2 to i32
  %t23 = icmp eq i32 %t20, %t22
  store i1 %t23, ptr %l55, !tbaa !21
  br label %bb8
bb8:
  %t25 = load i1, ptr %l55, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l65
  br label %bb11
bb10:
  br label %bb111
bb11:
  %t36 = load i32, ptr %l65, !tbaa !23
  store i32 %t36, ptr %l7, !tbaa !23
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l7, !tbaa !23
  %t39 = load i32, ptr %l4, !tbaa !23
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %t37, i32 %t38, i32 %t39)
  store i64 %t43, ptr %l69
  br label %bb12
bb12:
  %t44 = load i64, ptr %l69, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  br i1 %t47, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb20
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i32, ptr %l3, !tbaa !23
  %t56 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %t52, i32 %t53)
  store i1 %t56, ptr %l76
  br label %bb15
bb15:
  %t57 = load i1, ptr %l76, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i32, ptr %l7, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s2, ptr %t61, i32 %t62)
  store { i64, ptr } %t65, ptr %l81
  br label %bb18
bb17:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb19
bb18:
  %t66 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  %t69 = icmp eq i64 %t67, 0
  store i1 %t69, ptr %l77, !tbaa !21
  br label %bb19
bb19:
  %t71 = load i1, ptr %l77, !tbaa !21
  store i1 %t71, ptr %l72, !tbaa !21
  br label %bb20
bb20:
  %t72 = load i1, ptr %l72, !tbaa !21
  br i1 %t72, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l4, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l86
  br label %bb23
bb22:
  br label %bb42
bb23:
  %t78 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t79 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s3, { i64, ptr } %t78)
  store %"compiler/msgs:Nearest" %t79, ptr %l87
  br label %bb24
bb24:
  %t80 = load %"compiler/msgs:Nearest", ptr %l87
  %t81 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t80, ptr %t81
  store ptr %t81, ptr %l9, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s4
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t87 = load i32, ptr %l7, !tbaa !23
  %t90 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s4, ptr %t86, i32 %t87)
  store { i64, ptr } %t90, ptr %l92
  br label %bb25
bb25:
  %t91 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t91, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l12, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  br label %bb29
bb29:
  %t104 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t104, ptr %l99, !tbaa !27
  %t105 = load i64, ptr %l11, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 %t105
  %t110 = load i32, ptr %t109, !tbaa !33
  %t112 = load ptr, ptr %l9, !tbaa !29
  store ptr %t112, ptr %l102, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t113, i32 %t110)
  store { i64, ptr } %t117, ptr %l105
  br label %bb30
bb30:
  %t118 = load ptr, ptr %l102, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l105, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s3, ptr %v0, ptr %t118, { i64, ptr } %t119)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t120 = load i64, ptr %l11, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l11, !tbaa !24
  br label %bb26
bb33:
  call void @__olang_scope_close(ptr %s4)
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l108, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t125, ptr %l109
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l110, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l7, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l115
  br label %bb34
bb34:
  %t137 = load ptr, ptr %l110, !tbaa !29
  %t138 = load i32, ptr %l115, !tbaa !23
  %t139 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t137, i32 %t138)
  store { i64, ptr } %t139, ptr %l116
  br label %bb35
bb35:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l4, !tbaa !23
  %t144 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s3, ptr %t140, i32 %t141)
  store { i64, ptr } %t144, ptr %l119
  br label %bb36
bb36:
  %t145 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = extractvalue { i64, ptr } %t145, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l120, !tbaa !27
  %t152 = load ptr, ptr %l9, !tbaa !29
  %t154 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s3, ptr %s3, ptr %t152)
  store { i64, ptr } %t154, ptr %l122
  br label %bb37
bb37:
  %t155 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t162 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t165 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t162, { i64, ptr } %t163, { i64, ptr } %t161)
  store %"compiler/diagmsg:Msg" %t165, ptr %l124
  br label %bb38
bb38:
  %t166 = load ptr, ptr %l108, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l109
  %t168 = load %"compiler/diagmsg:Msg", ptr %l124
  %t169 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t166, %"compiler/source:Span" %t167, %"compiler/diagmsg:Msg" %t168)
  store i64 %t169, ptr %l125
  br label %bb39
bb39:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t170, { i64, ptr } %t171)
  br label %bb40
bb40:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l1
  %t178 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t174, %"compiler/source:Span" %t175)
  store ptr %t178, ptr %l130
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t179 = load ptr, ptr %l130, !tbaa !29
  store ptr %t179, ptr %rv
  br label %ret
bb42:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t184 = load i32, ptr %l7, !tbaa !23
  %t185 = load i64, ptr %l8, !tbaa !24
  %t189 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s2, ptr %t183, i32 %t184, i64 %t185)
  store { i64, ptr } %t189, ptr %l135
  br label %bb43
bb43:
  %t190 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t190, ptr %l14, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t195 = icmp eq i64 %t193, 0
  br i1 %t195, label %bb44, label %bb45
bb44:
  %t197 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t201 = icmp sgt i64 %t199, 0
  store i1 %t201, ptr %l139, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb46
bb46:
  %t203 = load i1, ptr %l139, !tbaa !21
  br i1 %t203, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s7
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l143, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t205, ptr %l144
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i32, ptr %l3, !tbaa !23
  %t208 = load i64, ptr %l8, !tbaa !24
  %t212 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s7, ptr %t206, i32 %t207, i64 %t208)
  store { i64, ptr } %t212, ptr %l148
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t213 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  %t215 = extractvalue { i64, ptr } %t213, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  %t221 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %s7, ptr %s7, { i64, ptr } %t219)
  store %"compiler/diagmsg:Msg" %t221, ptr %l150
  br label %bb50
bb50:
  %t222 = load ptr, ptr %l143, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l144
  %t224 = load %"compiler/diagmsg:Msg", ptr %l150
  %t225 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t222, %"compiler/source:Span" %t223, %"compiler/diagmsg:Msg" %t224)
  store i64 %t225, ptr %l151
  br label %bb51
bb51:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t226, { i64, ptr } %t227)
  br label %bb52
bb52:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load %"compiler/source:Span", ptr %l1
  %t234 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t230, %"compiler/source:Span" %t231)
  store ptr %t234, ptr %l156
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t235 = load ptr, ptr %l156, !tbaa !29
  store ptr %t235, ptr %rv
  br label %ret
bb54:
  %t236 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t240 = icmp sgt i64 %t238, 0
  br i1 %t240, label %bb55, label %bb56
bb55:
  %t242 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t250 = icmp ne i64 %t244, %t247
  store i1 %t250, ptr %l160, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb57
bb57:
  %t252 = load i1, ptr %l160, !tbaa !21
  br i1 %t252, label %bb58, label %bb59
bb58:
  %t253 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t257 = icmp eq i64 %t255, 0
  br i1 %t257, label %bb60, label %bb61
bb59:
  br label %bb75
bb60:
  store %olang.scope zeroinitializer, ptr %s9
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l169, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t260, ptr %l170
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i32, ptr %l3, !tbaa !23
  %t263 = load i64, ptr %l8, !tbaa !24
  %t267 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s9, ptr %t261, i32 %t262, i64 %t263)
  store { i64, ptr } %t267, ptr %l174
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t268 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t268, 0
  %t270 = extractvalue { i64, ptr } %t268, 1
  %t271 = mul i64 %t269, 1
  %t272 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t271)
  call void @llvm.memcpy.p0.p0.i64(ptr %t272, ptr %t270, i64 %t271, i1 false)
  %t273 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  store { i64, ptr } %t274, ptr %l175, !tbaa !27
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t279 = call { i64, ptr } @compiler_2fcheck_2efieldNames(ptr %v0, ptr %s2, ptr %s9, ptr %t275, { i64, ptr } %t276)
  store { i64, ptr } %t279, ptr %l178
  br label %bb63
bb63:
  %t280 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 0
  %t282 = extractvalue { i64, ptr } %t280, 1
  %t283 = mul i64 %t281, 1
  %t284 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t283)
  call void @llvm.memcpy.p0.p0.i64(ptr %t284, ptr %t282, i64 %t283, i1 false)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t284, 1
  %t287 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t289 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadWordBare(ptr %s9, ptr %s9, ptr %s9, { i64, ptr } %t287, { i64, ptr } %t286)
  store %"compiler/diagmsg:Msg" %t289, ptr %l180
  br label %bb64
bb64:
  %t290 = load ptr, ptr %l169, !tbaa !29
  %t291 = load %"compiler/source:Span", ptr %l170
  %t292 = load %"compiler/diagmsg:Msg", ptr %l180
  %t293 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t290, %"compiler/source:Span" %t291, %"compiler/diagmsg:Msg" %t292)
  store i64 %t293, ptr %l181
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb66:
  %t294 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t298 = icmp sgt i64 %t296, 0
  br i1 %t298, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s10
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l185, !tbaa !29
  %t301 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t301, ptr %l186
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l3, !tbaa !23
  %t304 = load i64, ptr %l8, !tbaa !24
  %t308 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s10, ptr %t302, i32 %t303, i64 %t304)
  store { i64, ptr } %t308, ptr %l190
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t309 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  %t311 = extractvalue { i64, ptr } %t309, 1
  %t312 = mul i64 %t310, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t313, ptr %t311, i64 %t312, i1 false)
  %t314 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  %t316 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t319, 0
  %t325 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %s10, ptr %s10, { i64, ptr } %t315, i64 %t318, i64 %t321)
  store %"compiler/diagmsg:Msg" %t325, ptr %l196
  br label %bb70
bb70:
  %t326 = load ptr, ptr %l185, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l186
  %t328 = load %"compiler/diagmsg:Msg", ptr %l196
  %t329 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t326, %"compiler/source:Span" %t327, %"compiler/diagmsg:Msg" %t328)
  store i64 %t329, ptr %l197
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s10)
  br label %bb72
bb72:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t330, { i64, ptr } %t331)
  br label %bb73
bb73:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load %"compiler/source:Span", ptr %l1
  %t338 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t334, %"compiler/source:Span" %t335)
  store ptr %t338, ptr %l202
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t339 = load ptr, ptr %l202, !tbaa !29
  store ptr %t339, ptr %rv
  br label %ret
bb75:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/check:Checker", ptr %t340, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t344 = load i32, ptr %l3, !tbaa !23
  %t345 = mul i64 1, 4
  %t346 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t345)
  %t347 = insertvalue { i64, ptr } undef, i64 1, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  store { i64, ptr } %t348, ptr %l206, !tbaa !27
  %t350 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr i32, ptr %t351, i64 0
  store i32 %t344, ptr %t352, !tbaa !33
  %t354 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t355 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %s2, ptr %t343, { i64, ptr } %t354)
  store i32 %t355, ptr %l207
  br label %bb76
bb76:
  %t356 = load i32, ptr %l207, !tbaa !23
  store i32 %t356, ptr %l15, !tbaa !23
  store i64 0, ptr %l16, !tbaa !24
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t362 = getelementptr %"compiler/generic:Program", ptr %t360, i32 0, i32 2
  store ptr %t362, ptr %l210, !tbaa !29
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/check:Checker", ptr %t363, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !29
  %t368 = getelementptr %"compiler/generic:Program", ptr %t366, i32 0, i32 2
  %t369 = load i32, ptr %l15, !tbaa !23
  %t372 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t368, i32 %t369)
  store i32 %t372, ptr %l215
  br label %bb77
bb77:
  %t373 = load ptr, ptr %l210, !tbaa !29
  %t374 = load i32, ptr %l215, !tbaa !23
  %t375 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t373, i32 %t374)
  store { i64, ptr } %t375, ptr %l216
  br label %bb78
bb78:
  %t376 = load { i64, ptr }, ptr %l216, !tbaa !27
  store { i64, ptr } %t376, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t377 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t377, 0
  store i64 %t379, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t381 = load i64, ptr %l19, !tbaa !24
  %t382 = load i64, ptr %l18, !tbaa !24
  %t385 = icmp sgt i64 %t381, %t382
  br i1 %t385, label %bb79, label %bb80
bb79:
  %t387 = load i64, ptr %l20, !tbaa !24
  %t389 = icmp sgt i64 %t387, 0
  br i1 %t389, label %bb81, label %bb82
bb80:
  store i64 0, ptr %l222, !tbaa !24
  br label %bb84
bb81:
  %t391 = load i64, ptr %l19, !tbaa !24
  %t392 = load i64, ptr %l18, !tbaa !24
  %t395 = sub i64 %t391, %t392
  %t396 = load i64, ptr %l20, !tbaa !24
  %t399 = add i64 %t395, %t396
  %t401 = sub i64 %t399, 1
  %t402 = load i64, ptr %l20, !tbaa !24
  %t405 = sdiv i64 %t401, %t402
  store i64 %t405, ptr %l225, !tbaa !24
  br label %bb83
bb82:
  store i64 0, ptr %l225, !tbaa !24
  br label %bb83
bb83:
  %t407 = load i64, ptr %l225, !tbaa !24
  store i64 %t407, ptr %l222, !tbaa !24
  br label %bb84
bb84:
  %t408 = load i64, ptr %l222, !tbaa !24
  store i64 %t408, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb85
bb85:
  %t409 = load i64, ptr %l22, !tbaa !24
  %t410 = load i64, ptr %l21, !tbaa !24
  %t413 = icmp slt i64 %t409, %t410
  %t415 = xor i1 %t413, true
  br i1 %t415, label %bb86, label %bb87
bb86:
  br label %bb94
bb87:
  br label %bb88
bb88:
  %t417 = load i64, ptr %l18, !tbaa !24
  %t418 = load i64, ptr %l22, !tbaa !24
  %t419 = load i64, ptr %l20, !tbaa !24
  %t422 = mul i64 %t418, %t419
  %t425 = add i64 %t417, %t422
  store i64 %t425, ptr %l23, !tbaa !24
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  %t433 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t433, ptr %l246, !tbaa !27
  %t434 = load i64, ptr %l23, !tbaa !24
  %t436 = getelementptr { i64, ptr }, ptr %l246, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = getelementptr i32, ptr %t437, i64 %t434
  %t439 = load i32, ptr %t438, !tbaa !33
  %t442 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t432, i32 %t439)
  store i32 %t442, ptr %l249
  br label %bb89
bb89:
  %t443 = load i32, ptr %l3, !tbaa !23
  %t444 = load i32, ptr %l249, !tbaa !23
  %t446 = icmp eq i32 %t444, %t443
  br i1 %t446, label %bb90, label %bb91
bb90:
  %t448 = load i64, ptr %l23, !tbaa !24
  store i64 %t448, ptr %l16, !tbaa !24
  br label %bb92
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t450 = load i64, ptr %l22, !tbaa !24
  %t452 = add i64 %t450, 1
  store i64 %t452, ptr %l22, !tbaa !24
  br label %bb85
bb94:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/check:Checker", ptr %t454, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !29
  %t458 = load i32, ptr %l3, !tbaa !23
  %t461 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t457, i32 %t458)
  store i32 %t461, ptr %l258
  br label %bb95
bb95:
  %t462 = load i32, ptr %l258, !tbaa !23
  store i32 %t462, ptr %l24, !tbaa !23
  store ptr null, ptr %l25, !tbaa !29
  %t463 = load i32, ptr %l24, !tbaa !23
  %t464 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t467 = icmp ne i32 %t463, %t464
  br i1 %t467, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s15
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l262, !tbaa !29
  %t470 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t470, ptr %l263
  %t471 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t471, ptr %l264
  %t472 = load i32, ptr %l24, !tbaa !23
  store i32 %t472, ptr %l265, !tbaa !23
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/check:Checker", ptr %t473, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !29
  %t477 = load i32, ptr %l7, !tbaa !23
  %t480 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s15, ptr %t476, i32 %t477)
  store { i64, ptr } %t480, ptr %l269
  br label %bb98
bb97:
  br label %bb109
bb98:
  %t481 = load { i64, ptr }, ptr %l269, !tbaa !27
  store { i64, ptr } %t481, ptr %l270, !tbaa !27
  %t482 = load i64, ptr %l8, !tbaa !24
  %t484 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t485 = load ptr, ptr %t484, !tbaa !27
  %t486 = getelementptr i32, ptr %t485, i64 %t482
  %t487 = load i32, ptr %t486, !tbaa !33
  store i32 %t487, ptr %l272, !tbaa !23
  %t488 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t488, ptr %l273, !tbaa !27
  %t489 = icmp sge i64 0, 0
  br i1 %t489, label %bb99, label %bb100
bb99:
  %t491 = icmp sle i64 0, 1152921504606846975
  br i1 %t491, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_e0fb1c8b8de5bfa7_80560e432f46ee03)
  unreachable
bb101:
  %t493 = mul i64 0, 8
  %t494 = insertvalue { i64, ptr } undef, i64 0, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t496 = load ptr, ptr %l262, !tbaa !29
  %t497 = load %"compiler/source:Span", ptr %l263
  %t498 = load %"compiler/source:Span", ptr %l264
  %t499 = load i32, ptr %l265, !tbaa !23
  %t500 = load i32, ptr %l272, !tbaa !23
  %t501 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t503 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumCase(ptr %v0, ptr %v1, ptr %v0, ptr %v3, ptr %t496, %"compiler/source:Span" %t497, %"compiler/source:Span" %t498, i32 %t499, i32 %t500, { i64, ptr } %t501, { i64, ptr } %t495)
  store ptr %t503, ptr %l277
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_e0fb1c8b8de5bfa7_80560e432f46ee03)
  unreachable
bb103:
  %t504 = load ptr, ptr %l277, !tbaa !29
  store ptr %t504, ptr %l25, !tbaa !29
  %t506 = load ptr, ptr %l25, !tbaa !29
  %t509 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t506)
  store i32 %t509, ptr %l281
  br label %bb104
bb104:
  %t510 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t511 = load i32, ptr %l281, !tbaa !23
  %t513 = icmp eq i32 %t511, %t510
  br i1 %t513, label %bb105, label %bb106
bb105:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load %"compiler/source:Span", ptr %l1
  %t519 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t515, %"compiler/source:Span" %t516)
  store ptr %t519, ptr %l286
  br label %bb107
bb106:
  br label %bb108
bb107:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t520 = load ptr, ptr %l286, !tbaa !29
  store ptr %t520, ptr %rv
  br label %ret
bb108:
  call void @__olang_scope_close(ptr %s15)
  br label %bb109
bb109:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load %"compiler/source:Span", ptr %l1
  %t523 = load i32, ptr %l15, !tbaa !23
  %t524 = load i64, ptr %l16, !tbaa !24
  %t525 = load i64, ptr %l16, !tbaa !24
  %t527 = add i64 %t525, 1
  %t529 = shl i64 %t527, 16
  %t530 = load i64, ptr %l8, !tbaa !24
  %t533 = or i64 %t529, %t530
  %t534 = load ptr, ptr %l25, !tbaa !29
  %t541 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValue(ptr %v0, ptr %v3, ptr %v3, ptr %t521, %"compiler/source:Span" %t522, i32 %t523, i64 %t524, i64 %t533, ptr %t534)
  store ptr %t541, ptr %l297
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t542 = load ptr, ptr %l297, !tbaa !29
  store ptr %t542, ptr %rv
  br label %ret
bb111:
  %t543 = load ptr, ptr %l0, !tbaa !29
  store ptr %t543, ptr %l298, !tbaa !29
  %t544 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t544, ptr %l299
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load i32, ptr %l3, !tbaa !23
  %t549 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t545, i32 %t546)
  store { i64, ptr } %t549, ptr %l302
  br label %bb112
bb112:
  %t550 = load { i64, ptr }, ptr %l302, !tbaa !27
  %t551 = extractvalue { i64, ptr } %t550, 0
  %t552 = extractvalue { i64, ptr } %t550, 1
  %t553 = mul i64 %t551, 1
  %t554 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t553)
  call void @llvm.memcpy.p0.p0.i64(ptr %t554, ptr %t552, i64 %t553, i1 false)
  %t555 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  store { i64, ptr } %t556, ptr %l303, !tbaa !27
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t558 = load i32, ptr %l4, !tbaa !23
  %t561 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t557, i32 %t558)
  store { i64, ptr } %t561, ptr %l306
  br label %bb113
bb113:
  %t562 = load { i64, ptr }, ptr %l303, !tbaa !27
  %t563 = load { i64, ptr }, ptr %l306, !tbaa !27
  %t564 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %s1, ptr %v0, ptr %s1, { i64, ptr } %t562, { i64, ptr } %t563)
  store %"compiler/diagmsg:Msg" %t564, ptr %l307
  br label %bb114
bb114:
  %t565 = load ptr, ptr %l298, !tbaa !29
  %t566 = load %"compiler/source:Span", ptr %l299
  %t567 = load %"compiler/diagmsg:Msg", ptr %l307
  %t568 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t565, %"compiler/source:Span" %t566, %"compiler/diagmsg:Msg" %t567)
  store i64 %t568, ptr %l308
  br label %bb115
bb115:
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t569, { i64, ptr } %t570)
  br label %bb116
bb116:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = load %"compiler/source:Span", ptr %l1
  %t577 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t573, %"compiler/source:Span" %t574)
  store ptr %t577, ptr %l313
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t578 = load ptr, ptr %l313, !tbaa !29
  store ptr %t578, ptr %rv
  br label %ret
bb118:
  store i64 -1, ptr %l26, !tbaa !24
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t581 = getelementptr %"compiler/check:Checker", ptr %t579, i32 0, i32 1
  %t582 = load ptr, ptr %t581, !tbaa !29
  %t584 = getelementptr %"compiler/generic:Program", ptr %t582, i32 0, i32 2
  %t585 = load i32, ptr %l3, !tbaa !23
  %t588 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s0, ptr %t584, i32 %t585)
  store { i64, ptr } %t588, ptr %l318
  br label %bb119
bb119:
  %t589 = load { i64, ptr }, ptr %l318, !tbaa !27
  store { i64, ptr } %t589, ptr %l27, !tbaa !27
  %t590 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t592 = extractvalue { i64, ptr } %t590, 0
  %t594 = icmp sgt i64 %t592, 0
  br i1 %t594, label %bb120, label %bb121
bb120:
  store i64 0, ptr %l28, !tbaa !24
  %t596 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t596, 0
  store i64 %t598, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t600 = load i64, ptr %l29, !tbaa !24
  %t601 = load i64, ptr %l28, !tbaa !24
  %t604 = icmp sgt i64 %t600, %t601
  br i1 %t604, label %bb122, label %bb123
bb121:
  br label %bb137
bb122:
  %t606 = load i64, ptr %l30, !tbaa !24
  %t608 = icmp sgt i64 %t606, 0
  br i1 %t608, label %bb124, label %bb125
bb123:
  store i64 0, ptr %l327, !tbaa !24
  br label %bb127
bb124:
  %t610 = load i64, ptr %l29, !tbaa !24
  %t611 = load i64, ptr %l28, !tbaa !24
  %t614 = sub i64 %t610, %t611
  %t615 = load i64, ptr %l30, !tbaa !24
  %t618 = add i64 %t614, %t615
  %t620 = sub i64 %t618, 1
  %t621 = load i64, ptr %l30, !tbaa !24
  %t624 = sdiv i64 %t620, %t621
  store i64 %t624, ptr %l330, !tbaa !24
  br label %bb126
bb125:
  store i64 0, ptr %l330, !tbaa !24
  br label %bb126
bb126:
  %t626 = load i64, ptr %l330, !tbaa !24
  store i64 %t626, ptr %l327, !tbaa !24
  br label %bb127
bb127:
  %t627 = load i64, ptr %l327, !tbaa !24
  store i64 %t627, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb128
bb128:
  %t628 = load i64, ptr %l32, !tbaa !24
  %t629 = load i64, ptr %l31, !tbaa !24
  %t632 = icmp slt i64 %t628, %t629
  %t634 = xor i1 %t632, true
  br i1 %t634, label %bb129, label %bb130
bb129:
  br label %bb136
bb130:
  br label %bb131
bb131:
  %t636 = load i64, ptr %l28, !tbaa !24
  %t637 = load i64, ptr %l32, !tbaa !24
  %t638 = load i64, ptr %l30, !tbaa !24
  %t641 = mul i64 %t637, %t638
  %t644 = add i64 %t636, %t641
  store i64 %t644, ptr %l33, !tbaa !24
  %t646 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t646, ptr %l348, !tbaa !27
  %t647 = load i64, ptr %l33, !tbaa !24
  %t649 = getelementptr { i64, ptr }, ptr %l348, i32 0, i32 1
  %t650 = load ptr, ptr %t649, !tbaa !27
  %t651 = getelementptr i32, ptr %t650, i64 %t647
  %t652 = load i32, ptr %t651, !tbaa !33
  %t653 = load i32, ptr %l4, !tbaa !23
  %t656 = icmp eq i32 %t652, %t653
  br i1 %t656, label %bb132, label %bb133
bb132:
  %t658 = load i64, ptr %l33, !tbaa !24
  store i64 %t658, ptr %l26, !tbaa !24
  br label %bb134
bb133:
  br label %bb134
bb134:
  br label %bb135
bb135:
  %t660 = load i64, ptr %l32, !tbaa !24
  %t662 = add i64 %t660, 1
  store i64 %t662, ptr %l32, !tbaa !24
  br label %bb128
bb136:
  br label %bb137
bb137:
  %t664 = load i64, ptr %l26, !tbaa !24
  %t666 = icmp slt i64 %t664, 0
  br i1 %t666, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s22
  %t668 = load ptr, ptr %l0, !tbaa !29
  store ptr %t668, ptr %l358, !tbaa !29
  %t669 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t669, ptr %l359
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t671 = load i32, ptr %l3, !tbaa !23
  %t672 = load i32, ptr %l4, !tbaa !23
  %t676 = call %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %s22, ptr %t670, i32 %t671, i32 %t672)
  store %"compiler/diagmsg:Msg" %t676, ptr %l363
  br label %bb140
bb139:
  br label %bb143
bb140:
  %t677 = load ptr, ptr %l358, !tbaa !29
  %t678 = load %"compiler/source:Span", ptr %l359
  %t679 = load %"compiler/diagmsg:Msg", ptr %l363
  %t680 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s22, ptr %t677, %"compiler/source:Span" %t678, %"compiler/diagmsg:Msg" %t679)
  store i64 %t680, ptr %l364
  br label %bb141
bb141:
  %t681 = load ptr, ptr %l0, !tbaa !29
  %t682 = load %"compiler/source:Span", ptr %l1
  %t685 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t681, %"compiler/source:Span" %t682)
  store ptr %t685, ptr %l367
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  %t686 = load ptr, ptr %l367, !tbaa !29
  store ptr %t686, ptr %rv
  br label %ret
bb143:
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t688 = load i32, ptr %l3, !tbaa !23
  %t689 = load i32, ptr %l4, !tbaa !23
  %t690 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecasePublic(ptr %v0, ptr %t687, i32 %t688, i32 %t689, %"compiler/source:Span" %t690)
  br label %bb144
bb144:
  %t695 = load ptr, ptr %l0, !tbaa !29
  %t697 = getelementptr %"compiler/check:Checker", ptr %t695, i32 0, i32 1
  %t698 = load ptr, ptr %t697, !tbaa !29
  %t699 = load i32, ptr %l3, !tbaa !23
  %t700 = load i64, ptr %l26, !tbaa !24
  %t704 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t698, i32 %t699, i64 %t700)
  store i32 %t704, ptr %l376
  br label %bb145
bb145:
  %t705 = load i32, ptr %l376, !tbaa !23
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  %t711 = getelementptr %"compiler/generic:Program", ptr %t709, i32 0, i32 2
  store ptr %t711, ptr %l379, !tbaa !29
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t714 = getelementptr %"compiler/check:Checker", ptr %t712, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !29
  %t717 = getelementptr %"compiler/generic:Program", ptr %t715, i32 0, i32 2
  %t721 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t717, i32 %t705)
  store i32 %t721, ptr %l384
  br label %bb146
bb146:
  %t722 = load ptr, ptr %l379, !tbaa !29
  %t723 = load i32, ptr %l384, !tbaa !23
  %t724 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t722, i32 %t723)
  store { i64, ptr } %t724, ptr %l385
  br label %bb147
bb147:
  %t725 = load { i64, ptr }, ptr %l385, !tbaa !27
  store { i64, ptr } %t725, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t726 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t728 = extractvalue { i64, ptr } %t726, 0
  %t730 = icmp sgt i64 %t728, 0
  br i1 %t730, label %bb148, label %bb149
bb148:
  %t732 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t734 = extractvalue { i64, ptr } %t732, 0
  store i64 %t734, ptr %l36, !tbaa !24
  br label %bb150
bb149:
  br label %bb150
bb150:
  %t736 = load i64, ptr %l36, !tbaa !24
  %t737 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t739 = extractvalue { i64, ptr } %t737, 0
  %t742 = icmp ne i64 %t736, %t739
  br i1 %t742, label %bb151, label %bb152
bb151:
  store %olang.scope zeroinitializer, ptr %s24
  %t744 = load ptr, ptr %l0, !tbaa !29
  store ptr %t744, ptr %l395, !tbaa !29
  %t745 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t745, ptr %l396
  %t746 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t748 = extractvalue { i64, ptr } %t746, 0
  store i64 %t748, ptr %l398, !tbaa !24
  %t749 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t751 = extractvalue { i64, ptr } %t749, 0
  %t753 = icmp eq i64 %t751, 1
  br i1 %t753, label %bb153, label %bb154
bb152:
  br label %bb159
bb153:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l402, !tbaa !27
  br label %bb155
bb154:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l402, !tbaa !27
  br label %bb155
bb155:
  %t755 = load i64, ptr %l36, !tbaa !24
  %t756 = load i64, ptr %l398, !tbaa !24
  %t757 = load { i64, ptr }, ptr %l402, !tbaa !27
  %t759 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s24, ptr %s24, i64 %t756, { i64, ptr } %t757, i64 %t755)
  store %"compiler/diagmsg:Msg" %t759, ptr %l404
  br label %bb156
bb156:
  %t760 = load ptr, ptr %l395, !tbaa !29
  %t761 = load %"compiler/source:Span", ptr %l396
  %t762 = load %"compiler/diagmsg:Msg", ptr %l404
  %t763 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s24, ptr %t760, %"compiler/source:Span" %t761, %"compiler/diagmsg:Msg" %t762)
  store i64 %t763, ptr %l405
  br label %bb157
bb157:
  %t764 = load ptr, ptr %l0, !tbaa !29
  %t765 = load %"compiler/source:Span", ptr %l1
  %t768 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t764, %"compiler/source:Span" %t765)
  store ptr %t768, ptr %l408
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  %t769 = load ptr, ptr %l408, !tbaa !29
  store ptr %t769, ptr %rv
  br label %ret
bb159:
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t772 = getelementptr %"compiler/check:Checker", ptr %t770, i32 0, i32 36
  %t774 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t772)
  store i64 %t774, ptr %l411
  br label %bb160
bb160:
  %t775 = load i64, ptr %l411, !tbaa !24
  store i64 %t775, ptr %l37, !tbaa !24
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t778 = getelementptr %"compiler/check:Checker", ptr %t776, i32 0, i32 1
  %t779 = load ptr, ptr %t778, !tbaa !29
  store ptr %t779, ptr %l413, !tbaa !29
  %t780 = load ptr, ptr %l0, !tbaa !29
  %t782 = getelementptr %"compiler/check:Checker", ptr %t780, i32 0, i32 1
  %t783 = load ptr, ptr %t782, !tbaa !29
  %t785 = getelementptr %"compiler/generic:Program", ptr %t783, i32 0, i32 2
  %t786 = load i32, ptr %l3, !tbaa !23
  %t789 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t785, i32 %t786)
  store i32 %t789, ptr %l418
  br label %bb161
bb161:
  %t790 = load ptr, ptr %l413, !tbaa !29
  %t791 = load i32, ptr %l418, !tbaa !23
  %t792 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t790, i32 %t791)
  store ptr %t792, ptr %l419
  br label %bb162
bb162:
  %t793 = load i64, ptr %l26, !tbaa !24
  %t794 = load ptr, ptr %l419, !tbaa !29
  %t796 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t794, i64 %t793)
  store ptr %t796, ptr %l421
  br label %bb163
bb163:
  %t797 = load ptr, ptr %l421, !tbaa !29
  store ptr %t797, ptr %l38, !tbaa !29
  store i64 0, ptr %l39, !tbaa !24
  %t798 = load i64, ptr %l36, !tbaa !24
  store i64 %t798, ptr %l40, !tbaa !24
  store i64 1, ptr %l41, !tbaa !24
  %t800 = load i64, ptr %l40, !tbaa !24
  %t801 = load i64, ptr %l39, !tbaa !24
  %t804 = icmp sgt i64 %t800, %t801
  br i1 %t804, label %bb164, label %bb165
bb164:
  %t806 = load i64, ptr %l41, !tbaa !24
  %t808 = icmp sgt i64 %t806, 0
  br i1 %t808, label %bb166, label %bb167
bb165:
  store i64 0, ptr %l426, !tbaa !24
  br label %bb169
bb166:
  %t810 = load i64, ptr %l40, !tbaa !24
  %t811 = load i64, ptr %l39, !tbaa !24
  %t814 = sub i64 %t810, %t811
  %t815 = load i64, ptr %l41, !tbaa !24
  %t818 = add i64 %t814, %t815
  %t820 = sub i64 %t818, 1
  %t821 = load i64, ptr %l41, !tbaa !24
  %t824 = sdiv i64 %t820, %t821
  store i64 %t824, ptr %l429, !tbaa !24
  br label %bb168
bb167:
  store i64 0, ptr %l429, !tbaa !24
  br label %bb168
bb168:
  %t826 = load i64, ptr %l429, !tbaa !24
  store i64 %t826, ptr %l426, !tbaa !24
  br label %bb169
bb169:
  %t827 = load i64, ptr %l426, !tbaa !24
  store i64 %t827, ptr %l42, !tbaa !24
  store i64 0, ptr %l43, !tbaa !24
  br label %bb170
bb170:
  %t828 = load i64, ptr %l43, !tbaa !24
  %t829 = load i64, ptr %l42, !tbaa !24
  %t832 = icmp slt i64 %t828, %t829
  %t834 = xor i1 %t832, true
  br i1 %t834, label %bb171, label %bb172
bb171:
  br label %bb204
bb172:
  br label %bb173
bb173:
  %t836 = load i64, ptr %l39, !tbaa !24
  %t837 = load i64, ptr %l43, !tbaa !24
  %t838 = load i64, ptr %l41, !tbaa !24
  %t841 = mul i64 %t837, %t838
  %t844 = add i64 %t836, %t841
  store i64 %t844, ptr %l44, !tbaa !24
  %t846 = load ptr, ptr %l0, !tbaa !29
  %t848 = getelementptr %"compiler/check:Checker", ptr %t846, i32 0, i32 13
  %t849 = load { i64, [3 x i64] }, ptr %t848
  store { i64, [3 x i64] } %t849, ptr %l45
  %t851 = load ptr, ptr %l38, !tbaa !29
  %t853 = icmp eq ptr %t851, null
  %t855 = xor i1 %t853, true
  br i1 %t855, label %bb174, label %bb175
bb174:
  %t857 = load ptr, ptr %l38, !tbaa !29
  %t859 = getelementptr %"compiler/ast:CaseDecl", ptr %t857, i32 0, i32 2
  %t860 = load { i64, ptr }, ptr %t859, !tbaa !27
  %t862 = extractvalue { i64, ptr } %t860, 0
  %t864 = icmp sgt i64 %t862, 0
  store i1 %t864, ptr %l452, !tbaa !21
  br label %bb176
bb175:
  store i1 false, ptr %l452, !tbaa !21
  br label %bb176
bb176:
  %t866 = load i1, ptr %l452, !tbaa !21
  br i1 %t866, label %bb177, label %bb178
bb177:
  %t867 = load i64, ptr %l44, !tbaa !24
  %t868 = load ptr, ptr %l38, !tbaa !29
  %t870 = getelementptr %"compiler/ast:CaseDecl", ptr %t868, i32 0, i32 2
  %t871 = load { i64, ptr }, ptr %t870, !tbaa !27
  %t873 = extractvalue { i64, ptr } %t871, 0
  %t876 = icmp slt i64 %t867, %t873
  store i1 %t876, ptr %l457, !tbaa !21
  br label %bb179
bb178:
  store i1 false, ptr %l457, !tbaa !21
  br label %bb179
bb179:
  %t878 = load i1, ptr %l457, !tbaa !21
  br i1 %t878, label %bb180, label %bb181
bb180:
  %t879 = load ptr, ptr %l0, !tbaa !29
  store ptr %t879, ptr %l463, !tbaa !29
  %t880 = load ptr, ptr %l0, !tbaa !29
  store ptr %t880, ptr %l464, !tbaa !29
  %t881 = load ptr, ptr %l0, !tbaa !29
  %t883 = getelementptr %"compiler/check:Checker", ptr %t881, i32 0, i32 1
  %t884 = load ptr, ptr %t883, !tbaa !29
  store ptr %t884, ptr %l466, !tbaa !29
  %t885 = load ptr, ptr %l0, !tbaa !29
  %t887 = getelementptr %"compiler/check:Checker", ptr %t885, i32 0, i32 1
  %t888 = load ptr, ptr %t887, !tbaa !29
  %t890 = getelementptr %"compiler/generic:Program", ptr %t888, i32 0, i32 2
  %t891 = load i32, ptr %l3, !tbaa !23
  %t894 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t890, i32 %t891)
  store i32 %t894, ptr %l471
  br label %bb182
bb181:
  br label %bb185
bb182:
  %t895 = load ptr, ptr %l466, !tbaa !29
  %t896 = load i32, ptr %l471, !tbaa !23
  %t897 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t895, i32 %t896)
  store i64 %t897, ptr %l472
  br label %bb183
bb183:
  %t898 = load ptr, ptr %l38, !tbaa !29
  %t900 = getelementptr %"compiler/ast:CaseDecl", ptr %t898, i32 0, i32 2
  %t901 = load { i64, ptr }, ptr %t900, !tbaa !27
  store { i64, ptr } %t901, ptr %l474, !tbaa !27
  %t902 = load i64, ptr %l44, !tbaa !24
  %t904 = getelementptr { i64, ptr }, ptr %l474, i32 0, i32 1
  %t905 = load ptr, ptr %t904, !tbaa !27
  %t906 = getelementptr ptr, ptr %t905, i64 %t902
  %t907 = load ptr, ptr %t906, !tbaa !39
  %t909 = getelementptr %"compiler/ast:Param", ptr %t907, i32 0, i32 2
  %t910 = load ptr, ptr %t909, !tbaa !29
  %t911 = load ptr, ptr %l464, !tbaa !29
  %t912 = load i64, ptr %l472, !tbaa !24
  %t914 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t911, i64 %t912, ptr %t910)
  store { i64, [3 x i64] } %t914, ptr %l478
  br label %bb184
bb184:
  %t915 = load { i64, [3 x i64] }, ptr %l478
  %t916 = load ptr, ptr %l463, !tbaa !29
  %t917 = getelementptr %"compiler/check:Checker", ptr %t916, i32 0, i32 13
  store { i64, [3 x i64] } %t915, ptr %t917
  br label %bb185
bb185:
  %t918 = load i64, ptr %l44, !tbaa !24
  %t919 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t921 = extractvalue { i64, ptr } %t919, 0
  %t924 = icmp slt i64 %t918, %t921
  br i1 %t924, label %bb186, label %bb187
bb186:
  %t926 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t926, ptr %l484, !tbaa !27
  %t927 = load i64, ptr %l44, !tbaa !24
  %t929 = getelementptr { i64, ptr }, ptr %l484, i32 0, i32 1
  %t930 = load ptr, ptr %t929, !tbaa !27
  %t931 = getelementptr ptr, ptr %t930, i64 %t927
  %t932 = load ptr, ptr %t931, !tbaa !39
  %t933 = load ptr, ptr %l0, !tbaa !29
  %t935 = getelementptr %"compiler/check:Checker", ptr %t933, i32 0, i32 0
  %t936 = load ptr, ptr %t935, !tbaa !29
  %t939 = icmp eq ptr %t932, %t936
  %t941 = xor i1 %t939, true
  store i1 %t941, ptr %l483, !tbaa !21
  br label %bb188
bb187:
  store i1 false, ptr %l483, !tbaa !21
  br label %bb188
bb188:
  %t943 = load i1, ptr %l483, !tbaa !21
  br i1 %t943, label %bb189, label %bb190
bb189:
  %t944 = load ptr, ptr %l0, !tbaa !29
  store ptr %t944, ptr %l492, !tbaa !29
  %t945 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t945, ptr %l493, !tbaa !27
  %t946 = load i64, ptr %l44, !tbaa !24
  %t948 = getelementptr { i64, ptr }, ptr %l493, i32 0, i32 1
  %t949 = load ptr, ptr %t948, !tbaa !27
  %t950 = getelementptr ptr, ptr %t949, i64 %t946
  %t951 = load ptr, ptr %t950, !tbaa !39
  store ptr %t951, ptr %l495, !tbaa !29
  %t952 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t952, ptr %l496, !tbaa !27
  %t953 = load i64, ptr %l44, !tbaa !24
  %t955 = getelementptr { i64, ptr }, ptr %l496, i32 0, i32 1
  %t956 = load ptr, ptr %t955, !tbaa !27
  %t957 = getelementptr i32, ptr %t956, i64 %t953
  %t958 = load i32, ptr %t957, !tbaa !33
  store i32 %t958, ptr %l498, !tbaa !23
  %t959 = load ptr, ptr %l0, !tbaa !29
  %t960 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t960, ptr %l500, !tbaa !27
  %t961 = load i64, ptr %l44, !tbaa !24
  %t963 = getelementptr { i64, ptr }, ptr %l500, i32 0, i32 1
  %t964 = load ptr, ptr %t963, !tbaa !27
  %t965 = getelementptr ptr, ptr %t964, i64 %t961
  %t966 = load ptr, ptr %t965, !tbaa !39
  %t969 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t959, ptr %t966)
  store %"compiler/source:Span" %t969, ptr %l503
  br label %bb191
bb190:
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t971 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t971, ptr %l506, !tbaa !27
  %t972 = load i64, ptr %l44, !tbaa !24
  %t974 = getelementptr { i64, ptr }, ptr %l506, i32 0, i32 1
  %t975 = load ptr, ptr %t974, !tbaa !27
  %t976 = getelementptr ptr, ptr %t975, i64 %t972
  %t977 = load ptr, ptr %t976, !tbaa !39
  %t978 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t978, ptr %l509, !tbaa !27
  %t979 = load i64, ptr %l44, !tbaa !24
  %t981 = getelementptr { i64, ptr }, ptr %l509, i32 0, i32 1
  %t982 = load ptr, ptr %t981, !tbaa !27
  %t983 = getelementptr i32, ptr %t982, i64 %t979
  %t984 = load i32, ptr %t983, !tbaa !33
  %t988 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t970, ptr %t977, i32 %t984)
  store ptr %t988, ptr %l512
  br label %bb193
bb191:
  %t989 = load ptr, ptr %l492, !tbaa !29
  %t990 = load ptr, ptr %l495, !tbaa !29
  %t991 = load i32, ptr %l498, !tbaa !23
  %t992 = load %"compiler/source:Span", ptr %l503
  %t993 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t989, ptr %t990, i32 %t991, %"compiler/source:Span" %t992)
  store ptr %t993, ptr %l504
  br label %bb192
bb192:
  %t994 = load ptr, ptr %l504, !tbaa !29
  store ptr %t994, ptr %l491, !tbaa !29
  br label %bb194
bb193:
  %t995 = load ptr, ptr %l512, !tbaa !29
  store ptr %t995, ptr %l491, !tbaa !29
  br label %bb194
bb194:
  %t996 = load ptr, ptr %l491, !tbaa !29
  store ptr %t996, ptr %l46, !tbaa !29
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t998 = load { i64, [3 x i64] }, ptr %l45
  %t1001 = getelementptr %"compiler/check:Checker", ptr %t997, i32 0, i32 13
  store { i64, [3 x i64] } %t998, ptr %t1001
  %t1002 = load ptr, ptr %l0, !tbaa !29
  %t1003 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1003, ptr %l516, !tbaa !27
  %t1004 = load i64, ptr %l44, !tbaa !24
  %t1006 = getelementptr { i64, ptr }, ptr %l516, i32 0, i32 1
  %t1007 = load ptr, ptr %t1006, !tbaa !27
  %t1008 = getelementptr i32, ptr %t1007, i64 %t1004
  %t1009 = load i32, ptr %t1008, !tbaa !33
  %t1012 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1002, i32 %t1009)
  store i1 %t1012, ptr %l519
  br label %bb195
bb195:
  %t1013 = load i1, ptr %l519, !tbaa !21
  %t1014 = xor i1 %t1013, true
  br i1 %t1014, label %bb196, label %bb197
bb196:
  %t1016 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1016, ptr %l521, !tbaa !29
  %t1017 = load ptr, ptr %l46, !tbaa !29
  store ptr %t1017, ptr %l523, !tbaa !29
  %t1019 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1019, ptr %l524, !tbaa !27
  %t1020 = load i64, ptr %l44, !tbaa !24
  %t1022 = getelementptr { i64, ptr }, ptr %l524, i32 0, i32 1
  %t1023 = load ptr, ptr %t1022, !tbaa !27
  %t1024 = getelementptr ptr, ptr %t1023, i64 %t1020
  %t1025 = load ptr, ptr %t1024, !tbaa !39
  %t1027 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1025)
  store %"compiler/source:Span" %t1027, ptr %l527
  br label %bb198
bb197:
  br label %bb200
bb198:
  %t1028 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t1029 = load ptr, ptr %l521, !tbaa !29
  %t1030 = load ptr, ptr %l523, !tbaa !29
  %t1031 = load %"compiler/source:Span", ptr %l527
  %t1033 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t1029, ptr %t1030, %"compiler/source:Span" %t1031, i64 %t1028)
  store i1 %t1033, ptr %l529
  br label %bb199
bb199:
  br label %bb200
bb200:
  %t1034 = load ptr, ptr %l0, !tbaa !29
  %t1036 = getelementptr %"compiler/check:Checker", ptr %t1034, i32 0, i32 36
  store ptr %t1036, ptr %l531, !tbaa !29
  %t1037 = load ptr, ptr %l0, !tbaa !29
  %t1038 = load ptr, ptr %l46, !tbaa !29
  %t1041 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t1037, ptr %t1038)
  store ptr %t1041, ptr %l534
  br label %bb201
bb201:
  %t1042 = load ptr, ptr %l531, !tbaa !29
  %t1043 = load ptr, ptr %l534, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1042, ptr %t1043)
  br label %bb202
bb202:
  br label %bb203
bb203:
  %t1044 = load i64, ptr %l43, !tbaa !24
  %t1046 = add i64 %t1044, 1
  store i64 %t1046, ptr %l43, !tbaa !24
  br label %bb170
bb204:
  %t1048 = load ptr, ptr %l0, !tbaa !29
  %t1050 = getelementptr %"compiler/check:Checker", ptr %t1048, i32 0, i32 36
  %t1051 = load i64, ptr %l37, !tbaa !24
  %t1054 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v3, ptr %t1050, i64 %t1051)
  store { i64, ptr } %t1054, ptr %l540
  br label %bb205
bb205:
  %t1055 = load { i64, ptr }, ptr %l540, !tbaa !27
  %t1056 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1056, ptr %l541
  %t1057 = load i32, ptr %l3, !tbaa !23
  store i32 %t1057, ptr %l542, !tbaa !23
  %t1058 = load i64, ptr %l26, !tbaa !24
  %t1064 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v3, ptr %v3, ptr %v3, i32 1, i64 %t1058, { i64, ptr } %t1055, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t1064, ptr %l547
  br label %bb206
bb206:
  %t1065 = load %"compiler/typed:Make", ptr %l547
  %t1066 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 56, i64 8)
  store %"compiler/typed:Make" %t1065, ptr %t1066
  store { i64, [5 x i64] } zeroinitializer, ptr %t1067
  %t1068 = getelementptr { i64, [5 x i64] }, ptr %t1067, i32 0, i32 0
  store i64 7, ptr %t1068
  %t1069 = load %"compiler/source:Span", ptr %l541
  %t1070 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1069, 0
  %t1071 = load i32, ptr %l542, !tbaa !23
  %t1072 = insertvalue { %"compiler/source:Span", i32, ptr } %t1070, i32 %t1071, 1
  %t1074 = insertvalue { %"compiler/source:Span", i32, ptr } %t1072, ptr %t1066, 2
  %t1075 = getelementptr { i64, [5 x i64] }, ptr %t1067, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1074, ptr %t1075
  %t1076 = load { i64, [5 x i64] }, ptr %t1067
  %t1078 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t1076, ptr %t1078
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1078, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNonNull(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i32
  %l29 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t48 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
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
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp ne i64 %t16, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t18, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e5613677a6448c92_7fd725fb7345b22e)
  unreachable
bb11:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l15
  br label %bb12
bb12:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp sge i64 %t25, 0
  br i1 %t26, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t29, ptr %t30)
  store i32 %t33, ptr %l20
  br label %bb16
bb16:
  %t34 = load i32, ptr %l20, !tbaa !23
  store i32 %t34, ptr %l4, !tbaa !23
  %t35 = load i32, ptr %l4, !tbaa !23
  %t37 = icmp ne i32 %t35, 0
  br i1 %t37, label %bb17, label %bb18
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l24, !tbaa !29
  %t40 = load i32, ptr %l4, !tbaa !23
  store i32 %t40, ptr %l25, !tbaa !23
  %t41 = icmp sge i64 1, 0
  br i1 %t41, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb24
bb19:
  %t43 = icmp sle i64 1, 2305843009213693951
  br i1 %t43, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_ce46ad7b25b964bc_d75d3b27057ac3b0)
  unreachable
bb21:
  %t45 = mul i64 1, 4
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  %t47 = load i32, ptr %l25, !tbaa !23
  store i64 0, ptr %t48
  br label %fill.49
fill.49:
  %t52 = load i64, ptr %t48
  %t53 = icmp slt i64 %t52, 1
  br i1 %t53, label %fillb.50, label %filld.51
fillb.50:
  %t54 = getelementptr i32, ptr %t46, i64 %t52
  store i32 %t47, ptr %t54
  %t55 = add i64 %t52, 1
  store i64 %t55, ptr %t48
  br label %fill.49
filld.51:
  %t56 = insertvalue { i64, ptr } undef, i64 1, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t46, 1
  %t58 = load ptr, ptr %l24, !tbaa !29
  %t60 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %s0, ptr %t58, { i64, ptr } %t57)
  store i1 %t60, ptr %l29
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ce46ad7b25b964bc_d75d3b27057ac3b0)
  unreachable
bb23:
  %t61 = load i1, ptr %l29, !tbaa !21
  store i1 %t61, ptr %l23, !tbaa !21
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t62 = load i1, ptr %l23, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t11, ptr %l2, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp eq i64 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t18, ptr %l19, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l20, !tbaa !24
  %t21 = load i64, ptr %l20, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l21, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t32, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t33 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t34 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t34, ptr %l22
  br label %bb5
bb5:
  %t35 = load %"std/prelude/text:StringBuilder", ptr %l22
  store %"std/prelude/text:StringBuilder" %t35, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb11
bb8:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l31, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb10
bb10:
  %t66 = load i64, ptr %l31, !tbaa !24
  store i64 %t66, ptr %l28, !tbaa !24
  br label %bb11
bb11:
  %t67 = load i64, ptr %l28, !tbaa !24
  store i64 %t67, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l9, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = icmp sgt i64 %t86, 0
  br i1 %t88, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  store ptr %l3, ptr %l52, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t92, ptr %l54, !tbaa !27
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i32, ptr %t96, i64 %t93
  %t98 = load i32, ptr %t97, !tbaa !33
  %t101 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t91, i32 %t98)
  store { i64, ptr } %t101, ptr %l57
  br label %bb20
bb20:
  %t102 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  %t104 = extractvalue { i64, ptr } %t102, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  %t109 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t109, { i64, ptr } %t108)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  br label %bb12
bb23:
  %t116 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l3)
  store { i64, ptr } %t116, ptr %l62
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t117 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t117, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternArray(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i1
  %l32 = alloca i32
  %l39 = alloca i32
  %l43 = alloca i1
  %l48 = alloca i32
  %l52 = alloca ptr
  %l55 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l75 = alloca ptr
  %l78 = alloca ptr
  %l83 = alloca i32
  %l85 = alloca i32
  %l86 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l96 = alloca i32
  %l99 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca ptr
  %l114 = alloca ptr
  %rv = alloca ptr
  %t120 = alloca { i64, [5 x i64] }, align 8
  %t176 = alloca { i64, [5 x i64] }, align 8
  %t211 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 1
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
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_12a7e56ab193c888_f3ea9b5a769b449c)
  unreachable
bb11:
  %t10 = load i1, ptr %l10, !tbaa !21
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
  store i32 %t19, ptr %l20
  br label %bb15
bb15:
  %t20 = load i32, ptr %l20, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l23
  br label %bb16
bb16:
  %t26 = load i32, ptr %l23, !tbaa !23
  store i32 %t26, ptr %l7, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t31 = icmp eq i32 %t27, %t28
  br i1 %t31, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb20
bb18:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l7, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l32
  br label %bb19
bb19:
  %t43 = load i32, ptr %l32, !tbaa !23
  %t44 = icmp ne i32 %t43, 0
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb20
bb20:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb21, label %bb22
bb21:
  store ptr null, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l6, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l39
  br label %bb24
bb24:
  %t58 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t60 = trunc i64 19 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb28
bb26:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l6, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l48
  br label %bb27
bb27:
  %t75 = load i32, ptr %l48, !tbaa !23
  %t76 = icmp eq i32 %t75, 0
  store i1 %t76, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t78 = load i1, ptr %l43, !tbaa !21
  br i1 %t78, label %bb29, label %bb30
bb29:
  store ptr null, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t82 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v3, ptr %t80)
  store ptr %t82, ptr %l52
  br label %bb32
bb32:
  %t83 = load ptr, ptr %l52, !tbaa !29
  store ptr %t83, ptr %l8, !tbaa !29
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb36
bb34:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l8, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l4
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v3, ptr %t88, ptr %t89, %"compiler/source:Span" %t90)
  store i1 %t94, ptr %l59
  br label %bb35
bb35:
  %t95 = load i1, ptr %l59, !tbaa !21
  store i1 %t95, ptr %l55, !tbaa !21
  br label %bb36
bb36:
  %t96 = load i1, ptr %l55, !tbaa !21
  br i1 %t96, label %bb37, label %bb38
bb37:
  store ptr null, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l63
  br label %bb40
bb40:
  %t103 = load i1, ptr %l63, !tbaa !21
  br i1 %t103, label %bb41, label %bb42
bb41:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l64, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t105, ptr %l65
  %t106 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t106, ptr %l66
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l6, !tbaa !23
  %t114 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t112, i32 %t113, i64 %t114)
  store i32 %t118, ptr %l72
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t119 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 0
  store i64 3, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l66
  %t123 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t122, 0
  %t124 = load i32, ptr %l72, !tbaa !23
  %t125 = insertvalue { %"compiler/source:Span", i32, ptr } %t123, i32 %t124, 1
  %t127 = insertvalue { %"compiler/source:Span", i32, ptr } %t125, ptr %t119, 2
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t127, ptr %t128
  %t129 = load { i64, [5 x i64] }, ptr %t120
  %t131 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t129, ptr %t131
  store ptr %t131, ptr %l75, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l78, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l3, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l83
  br label %bb44
bb44:
  %t148 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t149 = load ptr, ptr %l78, !tbaa !29
  %t150 = load i32, ptr %l83, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t149, i32 %t150, i64 %t148)
  store i32 %t152, ptr %l85
  br label %bb45
bb45:
  %t153 = load ptr, ptr %l64, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l65
  %t155 = load ptr, ptr %l75, !tbaa !29
  %t156 = load i32, ptr %l85, !tbaa !23
  %t157 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v3, ptr %t153, %"compiler/source:Span" %t154, ptr %t155, i32 %t156)
  store ptr %t157, ptr %l86
  br label %bb46
bb46:
  %t158 = load ptr, ptr %l86, !tbaa !29
  store ptr %t158, ptr %rv
  br label %ret
bb47:
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l88, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t161, ptr %l89
  %t162 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t162, ptr %l90
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 2
  %t169 = load i32, ptr %l6, !tbaa !23
  %t170 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t174 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t168, i32 %t169, i64 %t170)
  store i32 %t174, ptr %l96
  br label %bb48
bb48:
  %t175 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 0
  store i64 3, ptr %t177
  %t178 = load %"compiler/source:Span", ptr %l90
  %t179 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t178, 0
  %t180 = load i32, ptr %l96, !tbaa !23
  %t181 = insertvalue { %"compiler/source:Span", i32, ptr } %t179, i32 %t180, 1
  %t183 = insertvalue { %"compiler/source:Span", i32, ptr } %t181, ptr %t175, 2
  %t184 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t183, ptr %t184
  %t185 = load { i64, [5 x i64] }, ptr %t176
  %t187 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t185, ptr %t187
  store ptr %t187, ptr %l99, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 2
  %t194 = load i32, ptr %l3, !tbaa !23
  %t195 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t199 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t193, i32 %t194, i64 %t195)
  store i32 %t199, ptr %l105
  br label %bb49
bb49:
  %t200 = load ptr, ptr %l88, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l89
  %t202 = load ptr, ptr %l99, !tbaa !29
  %t203 = load i32, ptr %l105, !tbaa !23
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v3, ptr %t200, %"compiler/source:Span" %t201, ptr %t202, i32 %t203)
  store ptr %t204, ptr %l106
  br label %bb50
bb50:
  %t205 = load ptr, ptr %l106, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l4
  %t208 = load %"compiler/source:Span", ptr %l4
  %t209 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 0
  store i64 2, ptr %t212
  %t214 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t208, 0
  %t216 = insertvalue { %"compiler/source:Span", i32, ptr } %t214, i32 %t209, 1
  %t218 = insertvalue { %"compiler/source:Span", i32, ptr } %t216, ptr %t205, 2
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t218, ptr %t219
  %t220 = load { i64, [4 x i64] }, ptr %t211
  %t222 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t220, ptr %t222
  %t226 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t206, %"compiler/source:Span" %t207, ptr %t222)
  store ptr %t226, ptr %l114
  br label %bb51
bb51:
  %t227 = load ptr, ptr %l114, !tbaa !29
  store ptr %t227, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforIn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"compiler/check:reflList"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, i64, i64 }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l32 = alloca %"compiler/check:reflList"
  %l39 = alloca ptr
  %l42 = alloca i64
  %l45 = alloca i64
  %l53 = alloca { i64, i64, i64 }
  %l61 = alloca ptr
  %l67 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l75 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/diagmsg:Msg"
  %l83 = alloca i64
  %l86 = alloca i1
  %l91 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca i32
  %l121 = alloca { i64, ptr }
  %l122 = alloca %"compiler/typed:Seq"
  %l126 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l130 = alloca i64
  %l142 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l160 = alloca ptr
  %l163 = alloca i64
  %l166 = alloca i64
  %l167 = alloca i32
  %l168 = alloca i64
  %l171 = alloca i64
  %l172 = alloca i32
  %l177 = alloca i64
  %l178 = alloca ptr
  %l179 = alloca %"compiler/source:Span"
  %l180 = alloca %"compiler/source:Span"
  %l181 = alloca i32
  %l183 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l188 = alloca %"compiler/typed:Try"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t176 = alloca { i64, [3 x i64] }, align 8
  %t193 = alloca { i64, [3 x i64] }, align 8
  %t218 = alloca { i64, [5 x i64] }, align 8
  %t357 = alloca { i64, [5 x i64] }, align 8
  %t369 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:ForIn", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load %"compiler/source:Span", ptr %l1
  %t8 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeFor(ptr %v0, ptr %v1, ptr %t6, %"compiler/source:Span" %t7, ptr %t8)
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:ForIn", ptr %t13, i32 0, i32 2
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t19 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t12, ptr %t16)
  store %"compiler/check:reflList" %t19, ptr %l32
  br label %bb5
bb5:
  %t20 = load %"compiler/check:reflList", ptr %l32
  store %"compiler/check:reflList" %t20, ptr %l3
  %t21 = getelementptr %"compiler/check:reflList", ptr %l3, i32 0, i32 0
  %t22 = load i1, ptr %t21, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = load %"compiler/check:reflList", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrolled(ptr %v0, ptr %v1, ptr %t24, %"compiler/source:Span" %t25, ptr %t26, %"compiler/check:reflList" %t27)
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l39
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l39, !tbaa !29
  store ptr %t35, ptr %l4, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 28
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l42
  br label %bb11
bb11:
  %t41 = load i64, ptr %l42, !tbaa !24
  store i64 %t41, ptr %l5, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 37
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l45
  br label %bb12
bb12:
  %t47 = load i64, ptr %l45, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr %"compiler/check:frame", ptr %t48, i32 0, i32 17
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = getelementptr %"compiler/check:frame", ptr %t53, i32 0, i32 16
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l8, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l1
  %t63 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t58, i32 1, %"compiler/source:Span" %t59)
  store { i64, i64, i64 } %t63, ptr %l53
  br label %bb13
bb13:
  %t64 = load { i64, i64, i64 }, ptr %l53
  store { i64, i64, i64 } %t64, ptr %l9
  %t65 = getelementptr { i64, i64, i64 }, ptr %l9, i32 0, i32 0
  %t66 = load i64, ptr %t65, !tbaa !24
  store i64 %t66, ptr %l10, !tbaa !24
  %t68 = getelementptr { i64, i64, i64 }, ptr %l9, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  store i64 %t69, ptr %l11, !tbaa !24
  %t71 = getelementptr { i64, i64, i64 }, ptr %l9, i32 0, i32 2
  %t72 = load i64, ptr %t71, !tbaa !24
  store i64 %t72, ptr %l12, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l1
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t82 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalk(ptr %v0, ptr %v1, ptr %v0, ptr %s0, ptr %t74, %"compiler/source:Span" %t75, ptr %t76, ptr null, i32 %t77)
  store ptr %t82, ptr %l61
  br label %bb14
bb14:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l12, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t93 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t83, i64 %t84, i64 %t85, i64 %t86, i64 %t87)
  store ptr %t93, ptr %l67
  br label %bb15
bb15:
  %t94 = load ptr, ptr %l67, !tbaa !29
  store ptr %t94, ptr %l13, !tbaa !29
  %t95 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t97 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t100 = add i32 %t98, 3
  %t103 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t96, i32 %t100)
  store %"compiler/source:Span" %t103, ptr %l71
  br label %bb16
bb16:
  %t104 = load %"compiler/source:Span", ptr %l71
  store %"compiler/source:Span" %t104, ptr %l14
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/ast:ForIn", ptr %t105, i32 0, i32 3
  %t108 = load i1, ptr %t107, !tbaa !21
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb17, label %bb18
bb17:
  %t112 = load ptr, ptr %l4, !tbaa !29
  %t114 = getelementptr %"compiler/check:frame", ptr %t112, i32 0, i32 17
  %t115 = load i64, ptr %t114, !tbaa !24
  %t116 = load i64, ptr %l7, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  store i1 %t119, ptr %l75, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb19
bb19:
  %t121 = load i1, ptr %l75, !tbaa !21
  br i1 %t121, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l80, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t123, ptr %l81
  %t124 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInNeedsTry(ptr %s3)
  store %"compiler/diagmsg:Msg" %t124, ptr %l82
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t125 = load ptr, ptr %l80, !tbaa !29
  %t126 = load %"compiler/source:Span", ptr %l81
  %t127 = load %"compiler/diagmsg:Msg", ptr %l82
  %t128 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t125, %"compiler/source:Span" %t126, %"compiler/diagmsg:Msg" %t127)
  store i64 %t128, ptr %l83
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t131 = getelementptr %"compiler/ast:ForIn", ptr %t129, i32 0, i32 3
  %t132 = load i1, ptr %t131, !tbaa !21
  br i1 %t132, label %bb25, label %bb26
bb25:
  %t134 = load ptr, ptr %l4, !tbaa !29
  %t136 = getelementptr %"compiler/check:frame", ptr %t134, i32 0, i32 17
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = load i64, ptr %l7, !tbaa !24
  %t141 = icmp eq i64 %t137, %t138
  store i1 %t141, ptr %l86, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb27
bb27:
  %t143 = load i1, ptr %l86, !tbaa !21
  br i1 %t143, label %bb28, label %bb29
bb28:
  %t144 = load ptr, ptr %l4, !tbaa !29
  %t146 = getelementptr %"compiler/check:frame", ptr %t144, i32 0, i32 16
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = load i64, ptr %l8, !tbaa !24
  %t151 = icmp eq i64 %t147, %t148
  store i1 %t151, ptr %l91, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb30
bb30:
  %t153 = load i1, ptr %l91, !tbaa !21
  br i1 %t153, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l96, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t155, ptr %l97
  %t156 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInTryNothing(ptr %s4)
  store %"compiler/diagmsg:Msg" %t156, ptr %l98
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t157 = load ptr, ptr %l96, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l97
  %t159 = load %"compiler/diagmsg:Msg", ptr %l98
  %t160 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t157, %"compiler/source:Span" %t158, %"compiler/diagmsg:Msg" %t159)
  store i64 %t160, ptr %l99
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t161 = load ptr, ptr %l4, !tbaa !29
  %t162 = load i64, ptr %l7, !tbaa !24
  %t165 = getelementptr %"compiler/check:frame", ptr %t161, i32 0, i32 17
  store i64 %t162, ptr %t165, !tbaa !24
  %t166 = load ptr, ptr %l2, !tbaa !29
  %t168 = getelementptr %"compiler/ast:ForIn", ptr %t166, i32 0, i32 3
  %t169 = load i1, ptr %t168, !tbaa !21
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb36, label %bb37
bb36:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load %"compiler/source:Span", ptr %l1
  %t175 = load ptr, ptr %l13, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 0
  store i64 11, ptr %t177
  %t179 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t174, 0
  %t181 = insertvalue { %"compiler/source:Span", ptr } %t179, ptr %t175, 1
  %t182 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t181, ptr %t182
  %t183 = load { i64, [3 x i64] }, ptr %t176
  %t185 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t183, ptr %t185
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t173, ptr %t185)
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb39:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 37
  %t191 = load %"compiler/source:Span", ptr %l1
  %t192 = load ptr, ptr %l13, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t193
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t193, i32 0, i32 0
  store i64 11, ptr %t194
  %t196 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t191, 0
  %t198 = insertvalue { %"compiler/source:Span", ptr } %t196, ptr %t192, 1
  %t199 = getelementptr { i64, [3 x i64] }, ptr %t193, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t198, ptr %t199
  %t200 = load { i64, [3 x i64] }, ptr %t193
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t200, ptr %t202
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t190, ptr %t202)
  br label %bb40
bb40:
  %t205 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t205, ptr %l116
  %t206 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t206, ptr %l117, !tbaa !23
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/check:Checker", ptr %t207, i32 0, i32 37
  %t210 = load i64, ptr %l6, !tbaa !24
  %t213 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t209, i64 %t210)
  store { i64, ptr } %t213, ptr %l121
  br label %bb41
bb41:
  %t214 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t215 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t214, ptr null, i1 false)
  store %"compiler/typed:Seq" %t215, ptr %l122
  br label %bb42
bb42:
  %t216 = load %"compiler/typed:Seq", ptr %l122
  %t217 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Seq" %t216, ptr %t217
  store { i64, [5 x i64] } zeroinitializer, ptr %t218
  %t219 = getelementptr { i64, [5 x i64] }, ptr %t218, i32 0, i32 0
  store i64 12, ptr %t219
  %t220 = load %"compiler/source:Span", ptr %l116
  %t221 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t220, 0
  %t222 = load i32, ptr %l117, !tbaa !23
  %t223 = insertvalue { %"compiler/source:Span", i32, ptr } %t221, i32 %t222, 1
  %t225 = insertvalue { %"compiler/source:Span", i32, ptr } %t223, ptr %t217, 2
  %t226 = getelementptr { i64, [5 x i64] }, ptr %t218, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t225, ptr %t226
  %t227 = load { i64, [5 x i64] }, ptr %t218
  %t229 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t227, ptr %t229
  store ptr %t229, ptr %l15, !tbaa !29
  %t231 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %l126
  br label %bb43
bb43:
  %t232 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l126
  %t233 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %t233
  store ptr %t233, ptr %l16, !tbaa !29
  %t235 = load ptr, ptr %l4, !tbaa !29
  %t237 = getelementptr %"compiler/check:frame", ptr %t235, i32 0, i32 28
  %t239 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t237)
  store i64 %t239, ptr %l130
  br label %bb44
bb44:
  %t240 = load i64, ptr %l130, !tbaa !24
  store i64 %t240, ptr %l17, !tbaa !24
  %t241 = load ptr, ptr %l2, !tbaa !29
  %t243 = getelementptr %"compiler/ast:ForIn", ptr %t241, i32 0, i32 5
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t248 = icmp sgt i64 %t246, 0
  br i1 %t248, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s6
  %t250 = load ptr, ptr %l4, !tbaa !29
  %t252 = getelementptr %"compiler/check:frame", ptr %t250, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t252, i64 -2)
  br label %bb47
bb46:
  br label %bb66
bb47:
  %t254 = load ptr, ptr %l4, !tbaa !29
  %t256 = getelementptr %"compiler/check:frame", ptr %t254, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t256, i64 -2)
  br label %bb48
bb48:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load i64, ptr %l5, !tbaa !24
  %t260 = load i64, ptr %l17, !tbaa !24
  %t264 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %s6, ptr %t258, i64 %t259, i64 %t260)
  store { i64, ptr } %t264, ptr %l142
  br label %bb49
bb49:
  %t265 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t265, ptr %l18, !tbaa !27
  %t266 = load ptr, ptr %l2, !tbaa !29
  %t268 = getelementptr %"compiler/ast:ForIn", ptr %t266, i32 0, i32 5
  %t269 = load { i64, ptr }, ptr %t268, !tbaa !27
  store { i64, ptr } %t269, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t271 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  store i64 %t273, ptr %l21, !tbaa !24
  br label %bb50
bb50:
  %t275 = load i64, ptr %l20, !tbaa !24
  %t276 = load i64, ptr %l21, !tbaa !24
  %t279 = icmp slt i64 %t275, %t276
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb51, label %bb52
bb51:
  br label %bb57
bb52:
  br label %bb53
bb53:
  %t283 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t283, ptr %l151, !tbaa !27
  %t284 = load i64, ptr %l20, !tbaa !24
  %t286 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr ptr, ptr %t287, i64 %t284
  %t289 = load ptr, ptr %t288, !tbaa !39
  %t291 = load ptr, ptr %l16, !tbaa !29
  store ptr %t291, ptr %l154, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t295 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t296 = load ptr, ptr %l16, !tbaa !29
  %t302 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %s6, ptr %v0, ptr %v0, ptr %t292, ptr %t289, i32 %t294, i1 false, { i64, ptr } %t295, ptr %t296)
  store ptr %t302, ptr %l160
  br label %bb54
bb54:
  %t303 = load ptr, ptr %l154, !tbaa !29
  %t304 = load ptr, ptr %l160, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v0, ptr %t303, ptr %t304)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t305 = load i64, ptr %l20, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l20, !tbaa !24
  br label %bb50
bb57:
  %t309 = load ptr, ptr %l4, !tbaa !29
  %t311 = getelementptr %"compiler/check:frame", ptr %t309, i32 0, i32 10
  %t313 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t311)
  %t314 = extractvalue { i32, i64 } %t313, 1
  %t315 = extractvalue { i32, i64 } %t313, 0
  store i32 %t315, ptr %l167
  %t316 = icmp ne i32 %t315, 0
  br i1 %t316, label %bb59, label %ok.317, !prof !99
ok.317:
  store i64 %t314, ptr %l166
  br label %bb58
bb58:
  %t318 = load i64, ptr %l166, !tbaa !24
  store i64 %t318, ptr %l163, !tbaa !24
  br label %bb61
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t319 = load ptr, ptr %l4, !tbaa !29
  %t321 = getelementptr %"compiler/check:frame", ptr %t319, i32 0, i32 11
  %t323 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t321)
  %t324 = extractvalue { i32, i64 } %t323, 1
  %t325 = extractvalue { i32, i64 } %t323, 0
  store i32 %t325, ptr %l172
  %t326 = icmp ne i32 %t325, 0
  br i1 %t326, label %bb63, label %ok.327, !prof !99
ok.327:
  store i64 %t324, ptr %l171
  br label %bb62
bb62:
  %t328 = load i64, ptr %l171, !tbaa !24
  store i64 %t328, ptr %l168, !tbaa !24
  br label %bb65
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s6)
  br label %bb66
bb66:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i64, ptr %l5, !tbaa !24
  %t331 = load i64, ptr %l17, !tbaa !24
  %t332 = load ptr, ptr %l16, !tbaa !29
  %t337 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v0, ptr %t329, i64 %t330, i64 %t331, ptr %t332)
  store i64 %t337, ptr %l177
  br label %bb67
bb67:
  %t338 = load i64, ptr %l177, !tbaa !24
  store i64 %t338, ptr %l23, !tbaa !24
  %t339 = load ptr, ptr %l0, !tbaa !29
  store ptr %t339, ptr %l178, !tbaa !29
  %t340 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t340, ptr %l179
  %t341 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t341, ptr %l180
  %t342 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t342, ptr %l181, !tbaa !23
  %t343 = load ptr, ptr %l15, !tbaa !29
  store ptr %t343, ptr %l183, !tbaa !29
  %t345 = load ptr, ptr %l16, !tbaa !29
  %t347 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v0, ptr %t345)
  store { i64, ptr } %t347, ptr %l185
  br label %bb68
bb68:
  %t348 = load i64, ptr %l23, !tbaa !24
  %t350 = icmp sgt i64 %t348, 0
  %t351 = load ptr, ptr %l183, !tbaa !29
  %t352 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t354 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t351, { i64, ptr } %t352, i1 false, i1 false, i1 %t350)
  store %"compiler/typed:Try" %t354, ptr %l188
  br label %bb69
bb69:
  %t355 = load %"compiler/typed:Try", ptr %l188
  %t356 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Try" %t355, ptr %t356
  store { i64, [5 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [5 x i64] }, ptr %t357, i32 0, i32 0
  store i64 14, ptr %t358
  %t359 = load %"compiler/source:Span", ptr %l180
  %t360 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t359, 0
  %t361 = load i32, ptr %l181, !tbaa !23
  %t362 = insertvalue { %"compiler/source:Span", i32, ptr } %t360, i32 %t361, 1
  %t364 = insertvalue { %"compiler/source:Span", i32, ptr } %t362, ptr %t356, 2
  %t365 = getelementptr { i64, [5 x i64] }, ptr %t357, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t364, ptr %t365
  %t366 = load { i64, [5 x i64] }, ptr %t357
  %t368 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t366, ptr %t368
  store { i64, [3 x i64] } zeroinitializer, ptr %t369
  %t370 = getelementptr { i64, [3 x i64] }, ptr %t369, i32 0, i32 0
  store i64 2, ptr %t370
  %t371 = load %"compiler/source:Span", ptr %l179
  %t372 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t371, 0
  %t374 = insertvalue { %"compiler/source:Span", ptr } %t372, ptr %t368, 1
  %t375 = getelementptr { i64, [3 x i64] }, ptr %t369, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t374, ptr %t375
  %t376 = load { i64, [3 x i64] }, ptr %t369
  %t378 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t376, ptr %t378
  %t379 = load ptr, ptr %l178, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t379, ptr %t378)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egatherVariadic(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %lp11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l26 = alloca i1
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i1
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l57 = alloca i1
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l73 = alloca i1
  %l74 = alloca { i64, ptr }
  %l76 = alloca i1
  %l85 = alloca { i64, ptr }
  %l89 = alloca i1
  %l91 = alloca ptr
  %l93 = alloca %"compiler/source:Span"
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %l97 = alloca ptr
  %l99 = alloca ptr
  %l101 = alloca i64
  %l103 = alloca %"compiler/source:Span"
  %l106 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l112 = alloca %"compiler/source:Span"
  %l113 = alloca { i64, ptr }
  %l115 = alloca %"compiler/source:Span"
  %l116 = alloca i32
  %l117 = alloca { i64, ptr }
  %l122 = alloca %"compiler/source:Span"
  %l124 = alloca %"compiler/source:Span"
  %l127 = alloca %"compiler/source:Span"
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i64
  %l136 = alloca i64
  %l155 = alloca { i64, ptr }
  %l171 = alloca i64
  %l174 = alloca i64
  %l193 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t296 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  store i1 %t11, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l26, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t24, ptr %l37, !tbaa !27
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 %t25
  %t30 = load ptr, ptr %t29, !tbaa !39
  %t32 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsGathered(ptr %v1, ptr %t30)
  store i1 %t32, ptr %l40
  br label %bb9
bb8:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb10
bb9:
  %t33 = load i1, ptr %l40, !tbaa !21
  store i1 %t33, ptr %l36, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l36, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %l42, !tbaa !27
  %t36 = load i64, ptr %l1, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 %t36
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t43 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsSpread(ptr %v1, ptr %t41)
  store i1 %t43, ptr %l45
  br label %bb13
bb12:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb14
bb13:
  %t44 = load i1, ptr %l45, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l41, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l41, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t50 = load i64, ptr %l1, !tbaa !24
  store i64 %t50, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t58 = icmp slt i64 %t52, %t55
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t60, ptr %l54, !tbaa !27
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr ptr, ptr %t64, i64 %t61
  %t66 = load ptr, ptr %t65, !tbaa !39
  %t68 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsNamed(ptr %v1, ptr %t66)
  store i1 %t68, ptr %l57
  br label %bb21
bb20:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb22
bb21:
  %t69 = load i1, ptr %l57, !tbaa !21
  %t70 = xor i1 %t69, true
  store i1 %t70, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t72 = load i1, ptr %l53, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb26
bb26:
  br label %bb18
bb27:
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t79, ptr %l62, !tbaa !27
  %t80 = load i64, ptr %l1, !tbaa !24
  store i64 %t80, ptr %l63, !tbaa !24
  %t81 = load i64, ptr %l4, !tbaa !24
  store i64 %t81, ptr %l64, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l65, !tbaa !24
  %t84 = load i64, ptr %l63, !tbaa !24
  %t85 = icmp sge i64 %t84, 0
  br i1 %t85, label %bb28, label %bb29
bb28:
  %t87 = load i64, ptr %l63, !tbaa !24
  %t88 = load i64, ptr %l64, !tbaa !24
  %t89 = icmp sle i64 %t87, %t88
  br i1 %t89, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4a5fe817f84fef4e_4820cb4f1f993ac2)
  unreachable
bb30:
  %t91 = load i64, ptr %l64, !tbaa !24
  %t92 = load i64, ptr %l65, !tbaa !24
  %t93 = icmp sle i64 %t91, %t92
  br i1 %t93, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_4a5fe817f84fef4e_4820cb4f1f993ac2)
  unreachable
bb32:
  %t95 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l63, !tbaa !24
  %t98 = load i64, ptr %l64, !tbaa !24
  %t99 = getelementptr ptr, ptr %t96, i64 %t97
  %t100 = sub i64 %t98, %t97
  %t101 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } %t102, ptr %l5, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = icmp eq i64 %t106, 1
  br i1 %t108, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_4a5fe817f84fef4e_4820cb4f1f993ac2)
  unreachable
bb34:
  %t110 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t110, ptr %l74, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr ptr, ptr %t112, i64 0
  %t114 = load ptr, ptr %t113, !tbaa !39
  %t116 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsSpread(ptr %v1, ptr %t114)
  store i1 %t116, ptr %l76
  br label %bb36
bb35:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb37
bb36:
  %t117 = load i1, ptr %l76, !tbaa !21
  store i1 %t117, ptr %l73, !tbaa !21
  br label %bb37
bb37:
  %t118 = load i1, ptr %l73, !tbaa !21
  br i1 %t118, label %bb38, label %bb39
bb38:
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t119, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t121 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t121, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  store i64 %t125, ptr %l8, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s6
  %t127 = load i64, ptr %l7, !tbaa !24
  %t128 = load i64, ptr %l8, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s6)
  br label %bb57
bb43:
  br label %bb44
bb44:
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t135, ptr %l85, !tbaa !27
  %t136 = load i64, ptr %l7, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr ptr, ptr %t139, i64 %t136
  %t141 = load ptr, ptr %t140, !tbaa !39
  store ptr %t141, ptr %l9, !tbaa !29
  %t143 = load ptr, ptr %l9, !tbaa !29
  %t145 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsSpread(ptr %v1, ptr %t143)
  store i1 %t145, ptr %l89
  br label %bb45
bb45:
  %t146 = load i1, ptr %l89, !tbaa !21
  %t147 = xor i1 %t146, true
  br i1 %t147, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb56
bb47:
  br label %bb48
bb48:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l91, !tbaa !29
  %t150 = load ptr, ptr %l9, !tbaa !29
  %t152 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t150)
  store %"compiler/source:Span" %t152, ptr %l93
  br label %bb49
bb49:
  %t153 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadAlone(ptr %s6)
  store %"compiler/diagmsg:Msg" %t153, ptr %l94
  br label %bb50
bb50:
  %t154 = load ptr, ptr %l91, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l93
  %t156 = load %"compiler/diagmsg:Msg", ptr %l94
  %t157 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t154, %"compiler/source:Span" %t155, %"compiler/diagmsg:Msg" %t156)
  store i64 %t157, ptr %l95
  br label %bb51
bb51:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 150
  store ptr %t160, ptr %l97, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t161)
  store ptr %t163, ptr %l99
  br label %bb52
bb52:
  %t164 = load ptr, ptr %l99, !tbaa !29
  %t166 = getelementptr %"compiler/check:frame", ptr %t164, i32 0, i32 2
  %t167 = load i64, ptr %t166, !tbaa !24
  store i64 %t167, ptr %l101, !tbaa !24
  %t168 = load ptr, ptr %l9, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t168)
  store %"compiler/source:Span" %t170, ptr %l103
  br label %bb53
bb53:
  %t171 = getelementptr %"compiler/source:Span", ptr %l103, i32 0, i32 0
  %t172 = load i32, ptr %t171, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t175 = load i64, ptr %l101, !tbaa !24
  %t177 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s6, i64 %t175, i64 %t174)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t177, ptr %l106
  br label %bb54
bb54:
  %t178 = load ptr, ptr %l97, !tbaa !29
  %t179 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l106
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t178, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t179, i1 true)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s6)
  br label %bb56
bb56:
  %t180 = load i64, ptr %l7, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l7, !tbaa !24
  br label %bb41
bb57:
  %t184 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t188 = icmp sgt i64 %t186, 0
  br i1 %t188, label %bb58, label %bb59
bb58:
  %t190 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t190, ptr %l113, !tbaa !27
  %t191 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr ptr, ptr %t192, i64 0
  %t194 = load ptr, ptr %t193, !tbaa !39
  %t196 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t194)
  store %"compiler/source:Span" %t196, ptr %l115
  br label %bb60
bb59:
  %t197 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  %t199 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t200 = load i32, ptr %t199, !tbaa !23
  %t203 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t198, i32 %t200)
  store %"compiler/source:Span" %t203, ptr %l127
  br label %bb63
bb60:
  %t204 = getelementptr %"compiler/source:Span", ptr %l115, i32 0, i32 0
  %t205 = load i32, ptr %t204, !tbaa !23
  store i32 %t205, ptr %l116, !tbaa !23
  %t206 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t206, ptr %l117, !tbaa !27
  %t207 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t207, 0
  %t211 = sub i64 %t209, 1
  %t213 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr ptr, ptr %t214, i64 %t211
  %t216 = load ptr, ptr %t215, !tbaa !39
  %t218 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t216)
  store %"compiler/source:Span" %t218, ptr %l122
  br label %bb61
bb61:
  %t219 = getelementptr %"compiler/source:Span", ptr %l122, i32 0, i32 1
  %t220 = load i32, ptr %t219, !tbaa !23
  %t221 = load i32, ptr %l116, !tbaa !23
  %t223 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t221, i32 %t220)
  store %"compiler/source:Span" %t223, ptr %l124
  br label %bb62
bb62:
  %t224 = load %"compiler/source:Span", ptr %l124
  store %"compiler/source:Span" %t224, ptr %l112
  br label %bb64
bb63:
  %t225 = load %"compiler/source:Span", ptr %l127
  store %"compiler/source:Span" %t225, ptr %l112
  br label %bb64
bb64:
  %t226 = load %"compiler/source:Span", ptr %l112
  store %"compiler/source:Span" %t226, ptr %l10
  %t227 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t227, ptr %l128
  br label %bb65
bb65:
  %t228 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t228, ptr %lp11
  %t229 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  %t230 = load ptr, ptr %lp11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %t230
  store i64 0, ptr %l12, !tbaa !24
  %t231 = load i64, ptr %l1, !tbaa !24
  store i64 %t231, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t233 = load i64, ptr %l13, !tbaa !24
  %t234 = load i64, ptr %l12, !tbaa !24
  %t237 = icmp sgt i64 %t233, %t234
  br i1 %t237, label %bb66, label %bb67
bb66:
  %t239 = load i64, ptr %l14, !tbaa !24
  %t241 = icmp sgt i64 %t239, 0
  br i1 %t241, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb71
bb68:
  %t243 = load i64, ptr %l13, !tbaa !24
  %t244 = load i64, ptr %l12, !tbaa !24
  %t247 = sub i64 %t243, %t244
  %t248 = load i64, ptr %l14, !tbaa !24
  %t251 = add i64 %t247, %t248
  %t253 = sub i64 %t251, 1
  %t254 = load i64, ptr %l14, !tbaa !24
  %t257 = sdiv i64 %t253, %t254
  store i64 %t257, ptr %l136, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb70
bb70:
  %t259 = load i64, ptr %l136, !tbaa !24
  store i64 %t259, ptr %l133, !tbaa !24
  br label %bb71
bb71:
  %t260 = load i64, ptr %l133, !tbaa !24
  store i64 %t260, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb72
bb72:
  %t261 = load i64, ptr %l16, !tbaa !24
  %t262 = load i64, ptr %l15, !tbaa !24
  %t265 = icmp slt i64 %t261, %t262
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb73, label %bb74
bb73:
  br label %bb78
bb74:
  br label %bb75
bb75:
  %t269 = load i64, ptr %l12, !tbaa !24
  %t270 = load i64, ptr %l16, !tbaa !24
  %t271 = load i64, ptr %l14, !tbaa !24
  %t274 = mul i64 %t270, %t271
  %t277 = add i64 %t269, %t274
  %t279 = load ptr, ptr %lp11
  %t280 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t280, ptr %l155, !tbaa !27
  %t283 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr ptr, ptr %t284, i64 %t277
  %t286 = load ptr, ptr %t285, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v1, ptr %t279, ptr %t286)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t289 = load i64, ptr %l16, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l16, !tbaa !24
  br label %bb72
bb78:
  %t293 = load ptr, ptr %lp11
  %t294 = load %"compiler/source:Span", ptr %l10
  %t295 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t296
  %t297 = getelementptr { i64, [4 x i64] }, ptr %t296, i32 0, i32 0
  store i64 29, ptr %t297
  %t299 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t294, 0
  %t301 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t299, { i64, ptr } %t295, 1
  %t302 = getelementptr { i64, [4 x i64] }, ptr %t296, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t301, ptr %t302
  %t303 = load { i64, [4 x i64] }, ptr %t296
  %t305 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t303, ptr %t305
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v2, ptr %t293, ptr %t305)
  br label %bb79
bb79:
  %t308 = load i64, ptr %l4, !tbaa !24
  store i64 %t308, ptr %l18, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  store i64 %t312, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t314 = load i64, ptr %l19, !tbaa !24
  %t315 = load i64, ptr %l18, !tbaa !24
  %t318 = icmp sgt i64 %t314, %t315
  br i1 %t318, label %bb80, label %bb81
bb80:
  %t320 = load i64, ptr %l20, !tbaa !24
  %t322 = icmp sgt i64 %t320, 0
  br i1 %t322, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l171, !tbaa !24
  br label %bb85
bb82:
  %t324 = load i64, ptr %l19, !tbaa !24
  %t325 = load i64, ptr %l18, !tbaa !24
  %t328 = sub i64 %t324, %t325
  %t329 = load i64, ptr %l20, !tbaa !24
  %t332 = add i64 %t328, %t329
  %t334 = sub i64 %t332, 1
  %t335 = load i64, ptr %l20, !tbaa !24
  %t338 = sdiv i64 %t334, %t335
  store i64 %t338, ptr %l174, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l174, !tbaa !24
  br label %bb84
bb84:
  %t340 = load i64, ptr %l174, !tbaa !24
  store i64 %t340, ptr %l171, !tbaa !24
  br label %bb85
bb85:
  %t341 = load i64, ptr %l171, !tbaa !24
  store i64 %t341, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb86
bb86:
  %t342 = load i64, ptr %l22, !tbaa !24
  %t343 = load i64, ptr %l21, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  %t348 = xor i1 %t346, true
  br i1 %t348, label %bb87, label %bb88
bb87:
  br label %bb92
bb88:
  br label %bb89
bb89:
  %t350 = load i64, ptr %l18, !tbaa !24
  %t351 = load i64, ptr %l22, !tbaa !24
  %t352 = load i64, ptr %l20, !tbaa !24
  %t355 = mul i64 %t351, %t352
  %t358 = add i64 %t350, %t355
  %t360 = load ptr, ptr %lp11
  %t361 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t361, ptr %l193, !tbaa !27
  %t364 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t365 = load ptr, ptr %t364, !tbaa !27
  %t366 = getelementptr ptr, ptr %t365, i64 %t358
  %t367 = load ptr, ptr %t366, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v1, ptr %t360, ptr %t367)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t370 = load i64, ptr %l22, !tbaa !24
  %t372 = add i64 %t370, 1
  store i64 %t372, ptr %l22, !tbaa !24
  br label %bb86
bb92:
  %t374 = load ptr, ptr %lp11
  %t376 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v2, ptr %v2, ptr %t374)
  store { i64, ptr } %t376, ptr %l199
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s0)
  %t377 = load { i64, ptr }, ptr %l199, !tbaa !27
  store { i64, ptr } %t377, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandleLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 6
  store i64 %a3, ptr %t5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 5
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l6, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 5
  store i1 true, ptr %t13, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Local", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %t17, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t14, i32 %t18)
  store { i64, ptr } %t21, ptr %l16
  br label %bb1
bb1:
  %t22 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t22, ptr %l7, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i1, ptr %l6, !tbaa !21
  %t27 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 5
  store i1 %t24, ptr %t27, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 6
  store i64 -1, ptr %t30, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 4
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %a1, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Local", ptr %t45, i32 0, i32 1
  %t48 = getelementptr %"compiler/source:Span", ptr %t47, i32 0, i32 0
  %t49 = load i32, ptr %t48, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t55 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s0, ptr %t40, i64 %t44, i64 %t51)
  store { i64, ptr } %t55, ptr %l29
  br label %bb2
bb2:
  store { i64, ptr } %a4, ptr %l30, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Local", ptr %t58, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t57, i32 %t61)
  store { i64, ptr } %t64, ptr %l34
  br label %bb3
bb3:
  %t65 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t67 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t69 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = add i64 %t68, %t71
  %t73 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t76 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t91 = extractvalue { i64, ptr } %t65, 1
  %t92 = extractvalue { i64, ptr } %t65, 0
  %t93 = add i64 %t89, %t92
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t98 = extractvalue { i64, ptr } %a5, 1
  %t99 = extractvalue { i64, ptr } %a5, 0
  %t100 = add i64 %t96, %t99
  %t101 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t100)
  call void @olang_textcopy(ptr %t101, ptr %t67, i64 %t68)
  %t102 = getelementptr i8, ptr %t101, i64 %t68
  call void @olang_textcopy(ptr %t102, ptr %t70, i64 %t71)
  %t103 = getelementptr i8, ptr %t102, i64 %t71
  call void @olang_textcopy(ptr %t103, ptr %t73, i64 %t74)
  %t104 = getelementptr i8, ptr %t103, i64 %t74
  call void @olang_textcopy(ptr %t104, ptr %t77, i64 %t78)
  %t105 = getelementptr i8, ptr %t104, i64 %t78
  call void @olang_textcopy(ptr %t105, ptr %t80, i64 %t81)
  %t106 = getelementptr i8, ptr %t105, i64 %t81
  call void @olang_textcopy(ptr %t106, ptr %t84, i64 %t85)
  %t107 = getelementptr i8, ptr %t106, i64 %t85
  call void @olang_textcopy(ptr %t107, ptr %t87, i64 %t88)
  %t108 = getelementptr i8, ptr %t107, i64 %t88
  call void @olang_textcopy(ptr %t108, ptr %t91, i64 %t92)
  %t109 = getelementptr i8, ptr %t108, i64 %t92
  call void @olang_textcopy(ptr %t109, ptr %t94, i64 %t95)
  %t110 = getelementptr i8, ptr %t109, i64 %t95
  call void @olang_textcopy(ptr %t110, ptr %t98, i64 %t99)
  %t111 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t101, 1
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t115 = extractvalue { i64, ptr } %t112, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t121 = call i32 @std_2fio_2ePrintErrln(ptr %s0, { i64, ptr } %t119)
  store i32 %t121, ptr %l39
  %t122 = icmp ne i32 %t121, 0
  br i1 %t122, label %bb5, label %ok.123, !prof !99
ok.123:
  br label %bb4
bb4:
  br label %bb9
bb5:
  %t124 = load i32, ptr %l39, !tbaa !23
  %t125 = ashr i32 %t124, 16
  %t127 = icmp eq i32 %t125, 1
  store i1 %t127, ptr %l41, !tbaa !21
  %t128 = load i32, ptr %l39, !tbaa !23
  %t129 = ashr i32 %t128, 16
  %t131 = icmp eq i32 %t129, 1
  br i1 %t131, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstContexts(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:Origin"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l26 = alloca i64
  %l46 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l57 = alloca %"compiler/generic:Origin"
  %l60 = alloca ptr
  %l63 = alloca %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f"
  %l70 = alloca i64
  %l74 = alloca i64
  %l77 = alloca i64
  %l95 = alloca ptr
  %l97 = alloca i64
  %l101 = alloca %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f"
  %l105 = alloca ptr
  %l111 = alloca { i64, [3 x i64] }
  %l114 = alloca { i64, ptr }
  %l119 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i64
  %t192 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_3aOrigin_2c_20I64_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 32, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l23, !tbaa !24
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
  store i64 %t29, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l26, !tbaa !24
  store i64 %t31, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l23, !tbaa !24
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
  br label %bb27
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  store ptr %t56, ptr %l46, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l3, !tbaa !24
  %t64 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t60, i64 %t61)
  store i32 %t64, ptr %l50
  br label %bb12
bb12:
  %t65 = load ptr, ptr %l46, !tbaa !29
  %t66 = load i32, ptr %l50, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t65, i32 %t66)
  store { i64, ptr } %t67, ptr %l51
  br label %bb13
bb13:
  %t68 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t71 = icmp eq i64 %t69, 0
  br i1 %t71, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb15:
  br label %bb16
bb16:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t77 = load i64, ptr %l3, !tbaa !24
  %t80 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t76, i64 %t77)
  store %"compiler/generic:Origin" %t80, ptr %l57
  br label %bb17
bb17:
  %t81 = load %"compiler/generic:Origin", ptr %l57
  store %"compiler/generic:Origin" %t81, ptr %l10
  %t82 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = icmp slt i64 %t83, 0
  br i1 %t85, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb19:
  br label %bb20
bb20:
  store ptr %l2, ptr %l60, !tbaa !29
  %t87 = load %"compiler/generic:Origin", ptr %l10
  %t88 = load i64, ptr %l3, !tbaa !24
  %t91 = call %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" @std_2fpair_3aPair_3ccompiler_2fgeneric_3aOrigin_2c_20I64_3e_2ector(ptr %s2, %"compiler/generic:Origin" %t87, i64 %t88)
  store %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" %t91, ptr %l63
  br label %bb21
bb21:
  %t92 = load ptr, ptr %l60, !tbaa !29
  %t93 = load %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f", ptr %l63
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_Hb1726e9607ca4add8166541fc83d3bee(ptr %s0, ptr %t92, %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" %t93)
  br label %bb22
bb22:
  %t94 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = icmp slt i64 %t95, 0
  br i1 %t97, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t99 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 2
  %t100 = load i64, ptr %t99, !tbaa !24
  store i64 %t100, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb26:
  %t102 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l8, !tbaa !24
  br label %bb8
bb27:
  store i64 0, ptr %l11, !tbaa !24
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_H15a1a3e8469a5976ffa48722eeacbbc7(ptr %s0, ptr %l2)
  store i64 %t107, ptr %l70
  br label %bb28
bb28:
  %t108 = load i64, ptr %l70, !tbaa !24
  store i64 %t108, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t109 = load i64, ptr %l12, !tbaa !24
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = icmp sgt i64 %t109, %t110
  br i1 %t113, label %bb29, label %bb30
bb29:
  %t115 = load i64, ptr %l13, !tbaa !24
  %t117 = icmp sgt i64 %t115, 0
  br i1 %t117, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb34
bb31:
  %t119 = load i64, ptr %l12, !tbaa !24
  %t120 = load i64, ptr %l11, !tbaa !24
  %t123 = sub i64 %t119, %t120
  %t124 = load i64, ptr %l13, !tbaa !24
  %t127 = add i64 %t123, %t124
  %t129 = sub i64 %t127, 1
  %t130 = load i64, ptr %l13, !tbaa !24
  %t133 = sdiv i64 %t129, %t130
  store i64 %t133, ptr %l77, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb33
bb33:
  %t135 = load i64, ptr %l77, !tbaa !24
  store i64 %t135, ptr %l74, !tbaa !24
  br label %bb34
bb34:
  %t136 = load i64, ptr %l74, !tbaa !24
  store i64 %t136, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s8
  %t137 = load i64, ptr %l15, !tbaa !24
  %t138 = load i64, ptr %l14, !tbaa !24
  %t141 = icmp slt i64 %t137, %t138
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t145 = load i64, ptr %l11, !tbaa !24
  %t146 = load i64, ptr %l15, !tbaa !24
  %t147 = load i64, ptr %l13, !tbaa !24
  %t150 = mul i64 %t146, %t147
  %t153 = add i64 %t145, %t150
  store i64 %t153, ptr %l16, !tbaa !24
  store ptr %l2, ptr %l95, !tbaa !29
  %t156 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_H15a1a3e8469a5976ffa48722eeacbbc7(ptr %s0, ptr %l2)
  store i64 %t156, ptr %l97
  br label %bb39
bb39:
  %t157 = load i64, ptr %l97, !tbaa !24
  %t158 = sub i64 %t157, 1
  %t159 = load i64, ptr %l16, !tbaa !24
  %t162 = sub i64 %t158, %t159
  %t163 = load ptr, ptr %l95, !tbaa !29
  %t165 = call %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_Hb10eca62c04bf212a25728cfc6f83c9c(ptr %s0, ptr %t163, i64 %t162)
  store %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" %t165, ptr %l101
  br label %bb40
bb40:
  %t166 = load %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f", ptr %l101
  store %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" %t166, ptr %l17
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 0
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/load:Loader", ptr %t173, i32 0, i32 4
  %t176 = load ptr, ptr %t175, !tbaa !29
  store ptr %t176, ptr %l105, !tbaa !29
  %t177 = getelementptr %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f", ptr %l17, i32 0, i32 0
  %t178 = getelementptr %"compiler/generic:Origin", ptr %t177, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  %t180 = getelementptr %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f", ptr %l17, i32 0, i32 0
  %t181 = getelementptr %"compiler/generic:Origin", ptr %t180, i32 0, i32 1
  %t182 = getelementptr %"compiler/source:Span", ptr %t181, i32 0, i32 0
  %t183 = load i32, ptr %t182, !tbaa !23
  %t185 = sext i32 %t183 to i64
  %t186 = getelementptr %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f", ptr %l17, i32 0, i32 0
  %t187 = getelementptr %"compiler/generic:Origin", ptr %t186, i32 0, i32 1
  %t188 = getelementptr %"compiler/source:Span", ptr %t187, i32 0, i32 1
  %t189 = load i32, ptr %t188, !tbaa !23
  %t191 = sext i32 %t189 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t192
  %t193 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 0
  store i64 3, ptr %t193
  %t195 = insertvalue { i64, i64, i64 } undef, i64 %t179, 0
  %t197 = insertvalue { i64, i64, i64 } %t195, i64 %t185, 1
  %t199 = insertvalue { i64, i64, i64 } %t197, i64 %t191, 2
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t192, i32 0, i32 1
  store { i64, i64, i64 } %t199, ptr %t200
  %t201 = load { i64, [3 x i64] }, ptr %t192
  store { i64, [3 x i64] } %t201, ptr %l111
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f", ptr %l17, i32 0, i32 1
  %t204 = load i64, ptr %t203, !tbaa !24
  %t207 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstNote(ptr %v0, ptr %s8, ptr %t202, i64 %t204)
  store { i64, ptr } %t207, ptr %l114
  br label %bb41
bb41:
  %t208 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  %t210 = extractvalue { i64, ptr } %t208, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  %t215 = load ptr, ptr %l105, !tbaa !29
  %t216 = load { i64, [3 x i64] }, ptr %l111
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %s8, ptr %t215, { i64, [3 x i64] } %t216, { i64, ptr } %t214)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s8)
  br label %bb43
bb43:
  %t218 = load i64, ptr %l15, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l15, !tbaa !24
  br label %bb35
bb44:
  %t223 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_H15a1a3e8469a5976ffa48722eeacbbc7(ptr %s0, ptr %l2)
  store i64 %t223, ptr %l119
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t224 = load i64, ptr %l119, !tbaa !24
  store i64 %t224, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisGlobalBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca ptr
  %l9 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  %t15 = extractvalue { i64, [2 x i64] } %t11, 0
  %t16 = icmp eq i64 %t15, 6
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_4bb92e4e6aa9fa92_ae49a41c9a1a92ee)
  unreachable
bb10:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l7 = alloca i1
  %l8 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 40
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t4, ptr %t5)
  store i1 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp ne i32 %t10, %t11
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb7
bb6:
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t22, ptr %l12, !tbaa !23
  br label %bb8
bb7:
  %t24 = load i32, ptr %l15, !tbaa !23
  store i32 %t24, ptr %l12, !tbaa !23
  br label %bb8
bb8:
  %t25 = load i32, ptr %l12, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l17, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t27, ptr %t28, i32 %t25)
  store ptr %t34, ptr %l22
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t35)
  store %"compiler/source:Span" %t37, ptr %l24
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l17, !tbaa !29
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l24
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t38, ptr %t39, %"compiler/source:Span" %t40)
  store ptr %t41, ptr %l25
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l25, !tbaa !29
  store ptr %t42, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, ptr %a3, i32 %a4, %"compiler/source:Span" %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/check:litv"
  %l4 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca i32
  %l15 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i32
  %l28 = alloca i1
  %l31 = alloca i1
  %l36 = alloca i32
  %l40 = alloca i1
  %l41 = alloca ptr
  %l46 = alloca ptr
  %l51 = alloca ptr
  %l55 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/check:litv" %a2, ptr %l2
  store i32 %a4, ptr %l4
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %a3)
  store i32 %t4, ptr %l12
  br label %bb1
bb1:
  %t5 = load i32, ptr %l12, !tbaa !23
  store i32 %t5, ptr %l7, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l7, !tbaa !23
  %t10 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l15
  br label %bb2
bb2:
  %t11 = load i32, ptr %l15, !tbaa !23
  store i32 %t11, ptr %l8, !tbaa !23
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l8, !tbaa !23
  %t18 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l20
  br label %bb5
bb4:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t19 = load i1, ptr %l20, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l17, !tbaa !21
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l7, !tbaa !23
  %t25 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t29 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopParam(ptr %v0, ptr %t23, i32 %t24, i32 %t25)
  store i32 %t29, ptr %l25
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t30 = load i32, ptr %l25, !tbaa !23
  store i32 %t30, ptr %l8, !tbaa !23
  br label %bb10
bb10:
  %t31 = load i1, ptr %l6, !tbaa !21
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l8, !tbaa !23
  %t39 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l31
  br label %bb13
bb12:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb14
bb13:
  %t40 = load i1, ptr %l31, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  %t43 = load i1, ptr %l28, !tbaa !21
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l7, !tbaa !23
  %t46 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t50 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuteParam(ptr %v0, ptr %t44, i32 %t45, i32 %t46)
  store i32 %t50, ptr %l36
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t51 = load i32, ptr %l36, !tbaa !23
  store i32 %t51, ptr %l8, !tbaa !23
  br label %bb18
bb18:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load %"compiler/check:litv", ptr %l2
  %t54 = load i32, ptr %l8, !tbaa !23
  %t58 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t52, %"compiler/check:litv" %t53, i32 %t54)
  store i1 %t58, ptr %l40
  br label %bb19
bb19:
  %t59 = load i1, ptr %l40, !tbaa !21
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t62 = load %"compiler/check:litv", ptr %l2
  %t63 = load i32, ptr %l8, !tbaa !23
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v3, ptr %t60, ptr %t61, %"compiler/check:litv" %t62, i32 %t63)
  store ptr %t68, ptr %l46
  br label %bb22
bb21:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t71 = load %"compiler/check:litv", ptr %l2
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v3, ptr %t69, ptr %t70, %"compiler/check:litv" %t71, i32 %t72)
  store ptr %t77, ptr %l51
  br label %bb23
bb22:
  %t78 = load ptr, ptr %l46, !tbaa !29
  store ptr %t78, ptr %l41, !tbaa !29
  br label %bb24
bb23:
  %t79 = load ptr, ptr %l51, !tbaa !29
  store ptr %t79, ptr %l41, !tbaa !29
  br label %bb24
bb24:
  %t80 = load ptr, ptr %l41, !tbaa !29
  store ptr %t80, ptr %l9, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/check:litv", ptr %l2
  %t83 = load i32, ptr %l8, !tbaa !23
  %t87 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t81, %"compiler/check:litv" %t82, i32 %t83)
  store i1 %t87, ptr %l55
  br label %bb25
bb25:
  %t88 = load i1, ptr %l55, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb26, label %bb27
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l58, !tbaa !29
  store %"compiler/source:Span" %a5, ptr %l59
  %t93 = load i32, ptr %l7, !tbaa !23
  store i32 %t93, ptr %l60, !tbaa !23
  %t94 = load ptr, ptr %l9, !tbaa !29
  %t97 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t94)
  store i32 %t97, ptr %l63
  br label %bb28
bb27:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb30
bb28:
  %t98 = load ptr, ptr %l58, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l59
  %t100 = load i32, ptr %l60, !tbaa !23
  %t101 = load i32, ptr %l63, !tbaa !23
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %t98, %"compiler/source:Span" %t99, i32 %t100, i32 %t101)
  store i1 %t102, ptr %l64
  br label %bb29
bb29:
  %t103 = load i1, ptr %l64, !tbaa !21
  store i1 %t103, ptr %l57, !tbaa !21
  br label %bb30
bb30:
  %t104 = load i1, ptr %l57, !tbaa !21
  br i1 %t104, label %bb31, label %bb32
bb31:
  store ptr null, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t106 = load ptr, ptr %l9, !tbaa !29
  store ptr %t106, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l22 = alloca i32
  %l26 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i32
  %l40 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca i32
  %l46 = alloca ptr
  %l50 = alloca ptr
  %rv = alloca ptr
  %t86 = alloca i64
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
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l2, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l5, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l12
  br label %bb6
bb6:
  %t17 = load i1, ptr %l12, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb11
bb9:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t25, ptr %l17
  br label %bb10
bb10:
  %t26 = load i1, ptr %l17, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l14, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  store ptr null, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb15
bb15:
  %t36 = load i32, ptr %l22, !range !{i32 0, i32 6}
  %t38 = trunc i64 4 to i32
  %t39 = icmp eq i32 %t36, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb19
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l30
  br label %bb18
bb18:
  %t51 = load i1, ptr %l30, !tbaa !21
  %t52 = xor i1 %t51, true
  store i1 %t52, ptr %l26, !tbaa !21
  br label %bb19
bb19:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb23
bb21:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l36
  br label %bb22
bb22:
  %t63 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t64 = load i32, ptr %l36, !tbaa !23
  %t66 = icmp eq i32 %t64, %t63
  store i1 %t66, ptr %l32, !tbaa !21
  br label %bb23
bb23:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb24, label %bb25
bb24:
  store ptr null, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l40, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t71)
  store %"compiler/source:Span" %t73, ptr %l42
  br label %bb27
bb27:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t74)
  store %"compiler/source:Span" %t76, ptr %l44
  br label %bb28
bb28:
  %t77 = load i32, ptr %l2, !tbaa !23
  store i32 %t77, ptr %l45, !tbaa !23
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l46, !tbaa !29
  %t79 = icmp sge i64 1, 0
  br i1 %t79, label %bb29, label %bb30
bb29:
  %t81 = icmp sle i64 1, 1152921504606846975
  br i1 %t81, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_89233ed815a81c43_385dc0f6d58c413f)
  unreachable
bb31:
  %t83 = mul i64 1, 8
  %t84 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t83)
  %t85 = load ptr, ptr %l46, !tbaa !29
  store i64 0, ptr %t86
  br label %fill.87
fill.87:
  %t90 = load i64, ptr %t86
  %t91 = icmp slt i64 %t90, 1
  br i1 %t91, label %fillb.88, label %filld.89
fillb.88:
  %t92 = getelementptr ptr, ptr %t84, i64 %t90
  store ptr %t85, ptr %t92
  %t93 = add i64 %t90, 1
  store i64 %t93, ptr %t86
  br label %fill.87
filld.89:
  %t94 = insertvalue { i64, ptr } undef, i64 1, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t84, 1
  %t96 = load ptr, ptr %l40, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l42
  %t98 = load %"compiler/source:Span", ptr %l44
  %t99 = load i32, ptr %l45, !tbaa !23
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v0, ptr %v2, ptr %t96, %"compiler/source:Span" %t97, %"compiler/source:Span" %t98, i32 %t99, { i64, ptr } %t95)
  store ptr %t101, ptr %l50
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_89233ed815a81c43_385dc0f6d58c413f)
  unreachable
bb33:
  %t102 = load ptr, ptr %l50, !tbaa !29
  store ptr %t102, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emembership(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/generic:Binding"
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i32
  %l36 = alloca ptr
  %l40 = alloca ptr
  %l43 = alloca i32
  %l47 = alloca i32
  %l52 = alloca i32
  %l57 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca i64
  %l70 = alloca ptr
  %l73 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca i32
  %l79 = alloca { i64, ptr }
  %l81 = alloca i64
  %l85 = alloca i64
  %l91 = alloca { i64, ptr }
  %l93 = alloca i32
  %l98 = alloca { i64, ptr }
  %l100 = alloca i32
  %l106 = alloca %"compiler/generic:Binding"
  %l107 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l109 = alloca i32
  %l112 = alloca i32
  %l117 = alloca i32
  %l122 = alloca ptr
  %l125 = alloca ptr
  %l126 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca i32
  %l132 = alloca i1
  %l133 = alloca { i64, ptr }
  %l134 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca { i64, ptr }
  %l137 = alloca ptr
  %l139 = alloca %"compiler/source:Span"
  %l141 = alloca %"compiler/source:Span"
  %l142 = alloca %"compiler/source:Span"
  %l143 = alloca i64
  %l146 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i32
  %l149 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l154 = alloca %"compiler/source:Span"
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca i1
  %l160 = alloca ptr
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l166 = alloca %"compiler/source:Span"
  %l168 = alloca %"compiler/source:Span"
  %l169 = alloca %"compiler/source:Span"
  %l170 = alloca i32
  %l173 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i64
  %l184 = alloca ptr
  %l185 = alloca ptr
  %l186 = alloca ptr
  %l190 = alloca ptr
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l196 = alloca ptr
  %l197 = alloca ptr
  %l199 = alloca %"compiler/source:Span"
  %l201 = alloca %"compiler/source:Span"
  %l202 = alloca %"compiler/source:Span"
  %l203 = alloca ptr
  %l204 = alloca %"compiler/source:Span"
  %l207 = alloca i32
  %l208 = alloca i64
  %l211 = alloca i64
  %l221 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca %"compiler/source:Span"
  %l224 = alloca i64
  %l226 = alloca ptr
  %l229 = alloca { i64, ptr }
  %l230 = alloca ptr
  %l234 = alloca ptr
  %l235 = alloca { i64, ptr }
  %l239 = alloca ptr
  %l240 = alloca %"compiler/source:Span"
  %l243 = alloca i32
  %l247 = alloca { i64, ptr }
  %l250 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t422 = alloca { i64, [3 x i64] }, align 8
  %t496 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v3, ptr %t1, ptr %t2, i32 %t4)
  store ptr %t8, ptr %l23
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l23, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l24, !tbaa !29
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t11)
  store i32 %t14, ptr %l27
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l24, !tbaa !29
  %t16 = load i32, ptr %l27, !tbaa !23
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l28
  br label %bb3
bb3:
  %t18 = load i32, ptr %l28, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load i32, ptr %l5, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp eq i32 %t19, %t20
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t25, ptr %t26, i32 %t28)
  store ptr %t32, ptr %l36
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i64 0)
  store ptr %t39, ptr %l40
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load ptr, ptr %l40, !tbaa !29
  store ptr %t40, ptr %rv
  br label %ret
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l43
  br label %bb9
bb9:
  %t46 = load i32, ptr %l43, !tbaa !23
  store i32 %t46, ptr %l6, !tbaa !23
  %t47 = load i32, ptr %l6, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t51 = icmp ne i32 %t47, %t48
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l6, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l52
  br label %bb12
bb11:
  %t63 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t63, ptr %l47, !tbaa !23
  br label %bb13
bb12:
  %t65 = load i32, ptr %l52, !tbaa !23
  store i32 %t65, ptr %l47, !tbaa !23
  br label %bb13
bb13:
  %t66 = load i32, ptr %l47, !tbaa !23
  store i32 %t66, ptr %l7, !tbaa !23
  %t67 = load i32, ptr %l6, !tbaa !23
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t71 = icmp eq i32 %t67, %t68
  br i1 %t71, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l57, !tbaa !29
  %t74 = load i32, ptr %l5, !tbaa !23
  store i32 %t74, ptr %l58, !tbaa !23
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l59, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l61
  br label %bb16
bb15:
  br label %bb43
bb16:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t79)
  store %"compiler/source:Span" %t81, ptr %l63
  br label %bb17
bb17:
  %t82 = load ptr, ptr %l59, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l61
  %t84 = load %"compiler/source:Span", ptr %l63
  %t85 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t82, %"compiler/source:Span" %t83, %"compiler/source:Span" %t84, i64 2)
  store %"compiler/source:Span" %t85, ptr %l64
  br label %bb18
bb18:
  %t86 = load ptr, ptr %l57, !tbaa !29
  %t87 = load i32, ptr %l58, !tbaa !23
  %t88 = load %"compiler/source:Span", ptr %l64
  %t89 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s2, ptr %s2, ptr %t86, i32 %t87, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, i64 1, %"compiler/source:Span" %t88, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i64 %t89, ptr %l65
  br label %bb19
bb19:
  %t90 = load i64, ptr %l65, !tbaa !24
  store i64 %t90, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = icmp sge i64 %t91, 0
  br i1 %t93, label %bb20, label %bb21
bb20:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  store ptr %t100, ptr %l70, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l73, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t111 = load i64, ptr %l8, !tbaa !24
  %t114 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t110, i64 %t111)
  store i32 %t114, ptr %l77
  br label %bb22
bb21:
  br label %bb42
bb22:
  %t115 = load ptr, ptr %l73, !tbaa !29
  %t116 = load i32, ptr %l77, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t117, ptr %l78
  br label %bb23
bb23:
  %t118 = load ptr, ptr %l70, !tbaa !29
  %t119 = load i32, ptr %l78, !tbaa !23
  %t120 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t118, i32 %t119)
  store { i64, ptr } %t120, ptr %l79
  br label %bb24
bb24:
  %t121 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t121, ptr %l9, !tbaa !27
  %t122 = load i64, ptr %l8, !tbaa !24
  %t124 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t122)
  store i64 %t124, ptr %l81
  br label %bb25
bb25:
  %t125 = load i64, ptr %l81, !tbaa !24
  store i64 %t125, ptr %l10, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t129, i64 %t130)
  store i64 %t133, ptr %l85
  br label %bb26
bb26:
  %t134 = load i64, ptr %l85, !tbaa !24
  store i64 %t134, ptr %l11, !tbaa !24
  %t135 = load i64, ptr %l11, !tbaa !24
  %t137 = icmp eq i64 %t135, 0
  br i1 %t137, label %bb27, label %bb28
bb27:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t145, ptr %l91, !tbaa !27
  %t146 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i32, ptr %t147, i64 1
  %t149 = load i32, ptr %t148, !tbaa !33
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t144, i32 %t149)
  store i32 %t152, ptr %l93
  br label %bb29
bb28:
  %t153 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t157 = icmp sgt i64 %t155, 1
  br i1 %t157, label %bb34, label %bb35
bb29:
  %t159 = load i32, ptr %l93, !range !{i32 0, i32 33}
  %t161 = trunc i64 25 to i32
  %t162 = icmp eq i32 %t159, %t161
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb30, label %bb31
bb30:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t167, ptr %l98, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 1
  %t171 = load i32, ptr %t170, !tbaa !33
  %t174 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t166, i32 %t171)
  store i32 %t174, ptr %l100
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t175 = load i32, ptr %l100, !tbaa !23
  store i32 %t175, ptr %l7, !tbaa !23
  br label %bb33
bb33:
  br label %bb41
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t176 = load i64, ptr %l10, !tbaa !24
  %t177 = load i64, ptr %l11, !tbaa !24
  %t180 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s7, i64 %t176, i64 %t177)
  store %"compiler/generic:Binding" %t180, ptr %l106
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t181 = load %"compiler/generic:Binding", ptr %l106
  store %"compiler/generic:Binding" %t181, ptr %l12
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l107, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t183, ptr %l108, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i32, ptr %t185, i64 0
  %t187 = load i32, ptr %t186, !tbaa !33
  store i32 %t187, ptr %l109, !tbaa !23
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t191 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t188)
  store i32 %t191, ptr %l112
  br label %bb37
bb37:
  %t192 = load ptr, ptr %l107, !tbaa !29
  %t193 = load i32, ptr %l109, !tbaa !23
  %t194 = load i32, ptr %l112, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s7, ptr %t192, i32 %t193, i32 %t194, ptr %l12, i1 false, i1 true)
  br label %bb38
bb38:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t201 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v0, ptr %s7, ptr %t196, { i64, ptr } %t197, i64 1, ptr %l12)
  store i32 %t201, ptr %l117
  br label %bb39
bb39:
  %t202 = load i32, ptr %l117, !tbaa !23
  store i32 %t202, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb43:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l2, !tbaa !29
  %t206 = load i32, ptr %l7, !tbaa !23
  %t210 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %t203, ptr %t204, i32 %t206)
  store ptr %t210, ptr %l122
  br label %bb44
bb44:
  %t211 = load ptr, ptr %l122, !tbaa !29
  store ptr %t211, ptr %l13, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  store ptr %t217, ptr %l125, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l126, !tbaa !29
  %t219 = load ptr, ptr %l13, !tbaa !29
  %t222 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t219)
  store i32 %t222, ptr %l129
  br label %bb45
bb45:
  %t223 = load ptr, ptr %l126, !tbaa !29
  %t224 = load i32, ptr %l129, !tbaa !23
  %t225 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t223, i32 %t224)
  store i32 %t225, ptr %l130
  br label %bb46
bb46:
  %t226 = load i32, ptr %l5, !tbaa !23
  %t227 = load ptr, ptr %l125, !tbaa !29
  %t228 = load i32, ptr %l130, !tbaa !23
  %t230 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t227, i32 %t228, i32 %t226)
  store i1 %t230, ptr %l132
  br label %bb47
bb47:
  %t231 = load i1, ptr %l132, !tbaa !21
  br i1 %t231, label %bb48, label %bb49
bb48:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l133, !tbaa !27
  br label %bb50
bb49:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l133, !tbaa !27
  br label %bb50
bb50:
  %t232 = load { i64, ptr }, ptr %l133, !tbaa !27
  store { i64, ptr } %t232, ptr %l14, !tbaa !27
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l134, !tbaa !29
  %t234 = load i32, ptr %l5, !tbaa !23
  store i32 %t234, ptr %l135, !tbaa !23
  %t235 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t235, ptr %l136, !tbaa !27
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l137, !tbaa !29
  %t237 = load ptr, ptr %l2, !tbaa !29
  %t239 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t237)
  store %"compiler/source:Span" %t239, ptr %l139
  br label %bb51
bb51:
  %t240 = load ptr, ptr %l3, !tbaa !29
  %t242 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t240)
  store %"compiler/source:Span" %t242, ptr %l141
  br label %bb52
bb52:
  %t243 = load ptr, ptr %l137, !tbaa !29
  %t244 = load %"compiler/source:Span", ptr %l139
  %t245 = load %"compiler/source:Span", ptr %l141
  %t246 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t243, %"compiler/source:Span" %t244, %"compiler/source:Span" %t245, i64 2)
  store %"compiler/source:Span" %t246, ptr %l142
  br label %bb53
bb53:
  %t247 = load ptr, ptr @__olang_prog_scope
  %t248 = load ptr, ptr %l134, !tbaa !29
  %t249 = load i32, ptr %l135, !tbaa !23
  %t250 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t251 = load %"compiler/source:Span", ptr %l142
  %t252 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %t247, ptr %s0, ptr %t248, i32 %t249, { i64, ptr } %t250, i64 1, %"compiler/source:Span" %t251, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i64 %t252, ptr %l143
  br label %bb54
bb54:
  %t253 = load i64, ptr %l143, !tbaa !24
  store i64 %t253, ptr %l15, !tbaa !24
  %t254 = load i64, ptr %l15, !tbaa !24
  %t256 = icmp slt i64 %t254, 0
  br i1 %t256, label %bb55, label %bb56
bb55:
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l147, !tbaa !29
  %t259 = load i32, ptr %l5, !tbaa !23
  store i32 %t259, ptr %l148, !tbaa !23
  %t260 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t260, ptr %l149, !tbaa !27
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l150, !tbaa !29
  %t262 = load ptr, ptr %l2, !tbaa !29
  %t264 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t262)
  store %"compiler/source:Span" %t264, ptr %l152
  br label %bb57
bb56:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb61
bb57:
  %t265 = load ptr, ptr %l3, !tbaa !29
  %t267 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t265)
  store %"compiler/source:Span" %t267, ptr %l154
  br label %bb58
bb58:
  %t268 = load ptr, ptr %l150, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l152
  %t270 = load %"compiler/source:Span", ptr %l154
  %t271 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t268, %"compiler/source:Span" %t269, %"compiler/source:Span" %t270, i64 2)
  store %"compiler/source:Span" %t271, ptr %l155
  br label %bb59
bb59:
  %t272 = load ptr, ptr @__olang_prog_scope
  %t273 = load ptr, ptr %l147, !tbaa !29
  %t274 = load i32, ptr %l148, !tbaa !23
  %t275 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t276 = load %"compiler/source:Span", ptr %l155
  %t277 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %t272, ptr %s0, ptr %t273, i32 %t274, { i64, ptr } %t275, %"compiler/source:Span" %t276, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d27, i32 0, i32 1) }, i64 1, i1 false)
  store i1 %t277, ptr %l156
  br label %bb60
bb60:
  %t278 = load i1, ptr %l156, !tbaa !21
  store i1 %t278, ptr %l146, !tbaa !21
  br label %bb61
bb61:
  %t279 = load i1, ptr %l146, !tbaa !21
  br i1 %t279, label %bb62, label %bb63
bb62:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load %"compiler/source:Span", ptr %l1
  %t282 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t286 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t280, %"compiler/source:Span" %t281, i32 %t282, i64 0)
  store ptr %t286, ptr %l160
  br label %bb64
bb63:
  br label %bb65
bb64:
  call void @__olang_scope_close(ptr %s0)
  %t287 = load ptr, ptr %l160, !tbaa !29
  store ptr %t287, ptr %rv
  br label %ret
bb65:
  %t288 = load i64, ptr %l15, !tbaa !24
  %t290 = icmp slt i64 %t288, 0
  br i1 %t290, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s9
  %t292 = load ptr, ptr %l0, !tbaa !29
  store ptr %t292, ptr %l163, !tbaa !29
  %t293 = load ptr, ptr %l0, !tbaa !29
  store ptr %t293, ptr %l164, !tbaa !29
  %t294 = load ptr, ptr %l2, !tbaa !29
  %t296 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t294)
  store %"compiler/source:Span" %t296, ptr %l166
  br label %bb68
bb67:
  br label %bb75
bb68:
  %t297 = load ptr, ptr %l3, !tbaa !29
  %t299 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t297)
  store %"compiler/source:Span" %t299, ptr %l168
  br label %bb69
bb69:
  %t300 = load ptr, ptr %l164, !tbaa !29
  %t301 = load %"compiler/source:Span", ptr %l166
  %t302 = load %"compiler/source:Span", ptr %l168
  %t303 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t300, %"compiler/source:Span" %t301, %"compiler/source:Span" %t302, i64 2)
  store %"compiler/source:Span" %t303, ptr %l169
  br label %bb70
bb70:
  %t304 = load i32, ptr %l5, !tbaa !23
  store i32 %t304, ptr %l170, !tbaa !23
  %t305 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t305, 1
  %t308 = extractvalue { i64, ptr } %t305, 0
  %t309 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t311 = add i64 %t308, %t310
  %t312 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t311)
  call void @olang_textcopy(ptr %t312, ptr %t307, i64 %t308)
  %t313 = getelementptr i8, ptr %t312, i64 %t308
  call void @olang_textcopy(ptr %t313, ptr %t309, i64 %t310)
  %t314 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t312, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = extractvalue { i64, ptr } %t315, 1
  %t319 = mul i64 %t317, 1
  %t320 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t319)
  call void @llvm.memcpy.p0.p0.i64(ptr %t320, ptr %t318, i64 %t319, i1 false)
  %t321 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  store { i64, ptr } %t322, ptr %l173, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t323, ptr %l174, !tbaa !27
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i32, ptr %l5, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t324, i32 %t325)
  store { i64, ptr } %t328, ptr %l177
  br label %bb71
bb71:
  %t329 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  %t331 = extractvalue { i64, ptr } %t329, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  %t336 = load ptr, ptr @__olang_prog_scope
  %t337 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t339 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMembershipNoMethod(ptr %t336, ptr %s9, ptr %s9, { i64, ptr } %t337, { i64, ptr } %t335)
  store %"compiler/diagmsg:Msg" %t339, ptr %l179
  br label %bb72
bb72:
  %t340 = load ptr, ptr %l163, !tbaa !29
  %t341 = load %"compiler/source:Span", ptr %l169
  %t342 = load i32, ptr %l170, !tbaa !23
  %t343 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t344 = load %"compiler/diagmsg:Msg", ptr %l179
  %t345 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s9, ptr %s9, ptr %t340, %"compiler/source:Span" %t341, i32 %t342, { i64, ptr } %t343, %"compiler/diagmsg:Msg" %t344)
  store i64 %t345, ptr %l180
  br label %bb73
bb73:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load %"compiler/source:Span", ptr %l1
  %t348 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t352 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t346, %"compiler/source:Span" %t347, i32 %t348, i64 0)
  store ptr %t352, ptr %l184
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t353 = load ptr, ptr %l184, !tbaa !29
  store ptr %t353, ptr %rv
  br label %ret
bb75:
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l185, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l186, !tbaa !29
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t360 = load i64, ptr %l15, !tbaa !24
  %t363 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t359, i64 %t360)
  store ptr %t363, ptr %l190
  br label %bb76
bb76:
  %t364 = load ptr, ptr %l190, !tbaa !29
  %t366 = getelementptr %"compiler/ast:Func", ptr %t364, i32 0, i32 2
  %t367 = load i32, ptr %t366, !tbaa !23
  %t368 = load ptr, ptr %l186, !tbaa !29
  %t370 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t368, i32 %t367)
  store { i64, ptr } %t370, ptr %l193
  br label %bb77
bb77:
  %t371 = load ptr, ptr %l185, !tbaa !29
  %t372 = getelementptr %"compiler/check:Checker", ptr %t371, i32 0, i32 50
  %t373 = load { i64, ptr }, ptr %t372, !tbaa !27
  store { i64, ptr } %t373, ptr %l194, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t375 = load ptr, ptr %l185, !tbaa !29
  %t376 = getelementptr %"compiler/check:Checker", ptr %t375, i32 0, i32 50
  store { i64, ptr } %t374, ptr %t376, !tbaa !27
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e50
  br i1 %t377, label %bb78, label %bb79
bb78:
  %t379 = load { i64, ptr }, ptr %l194
  %t380 = extractvalue { i64, ptr } %t379, 1
  call void @__olang_region_release(ptr %t380)
  store { i64, ptr } zeroinitializer, ptr %l194
  br label %bb79
bb79:
  %t381 = load ptr, ptr %l0, !tbaa !29
  store ptr %t381, ptr %l196, !tbaa !29
  %t382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t382, ptr %l197, !tbaa !29
  %t383 = load ptr, ptr %l2, !tbaa !29
  %t385 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t383)
  store %"compiler/source:Span" %t385, ptr %l199
  br label %bb80
bb80:
  %t386 = load ptr, ptr %l3, !tbaa !29
  %t388 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t386)
  store %"compiler/source:Span" %t388, ptr %l201
  br label %bb81
bb81:
  %t389 = load ptr, ptr %l197, !tbaa !29
  %t390 = load %"compiler/source:Span", ptr %l199
  %t391 = load %"compiler/source:Span", ptr %l201
  %t392 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t389, %"compiler/source:Span" %t390, %"compiler/source:Span" %t391, i64 2)
  store %"compiler/source:Span" %t392, ptr %l202
  br label %bb82
bb82:
  %t393 = load %"compiler/source:Span", ptr %l202
  %t394 = load ptr, ptr %l196, !tbaa !29
  %t395 = getelementptr %"compiler/check:Checker", ptr %t394, i32 0, i32 49
  store %"compiler/source:Span" %t393, ptr %t395
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l203, !tbaa !29
  %t397 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t397, ptr %l204
  %t398 = load ptr, ptr %l13, !tbaa !29
  %t401 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t398)
  store i32 %t401, ptr %l207
  br label %bb83
bb83:
  %t402 = load ptr, ptr %l203, !tbaa !29
  %t403 = load %"compiler/source:Span", ptr %l204
  %t404 = load i32, ptr %l207, !tbaa !23
  %t405 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t402, %"compiler/source:Span" %t403, i32 %t404)
  store i64 %t405, ptr %l208
  br label %bb84
bb84:
  %t406 = load i64, ptr %l208, !tbaa !24
  store i64 %t406, ptr %l16, !tbaa !24
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/check:Checker", ptr %t407, i32 0, i32 37
  %t411 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t409)
  store i64 %t411, ptr %l211
  br label %bb85
bb85:
  %t412 = load i64, ptr %l211, !tbaa !24
  store i64 %t412, ptr %l17, !tbaa !24
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/check:Checker", ptr %t413, i32 0, i32 37
  %t416 = load %"compiler/source:Span", ptr %l1
  %t417 = load i64, ptr %l16, !tbaa !24
  %t419 = trunc i64 %t417 to i32
  %t421 = load ptr, ptr %l13, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t422
  %t423 = getelementptr { i64, [3 x i64] }, ptr %t422, i32 0, i32 0
  store i64 0, ptr %t423
  %t425 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t416, 0
  %t427 = insertvalue { %"compiler/source:Span", i32, ptr } %t425, i32 %t419, 1
  %t429 = insertvalue { %"compiler/source:Span", i32, ptr } %t427, ptr %t421, 2
  %t430 = getelementptr { i64, [3 x i64] }, ptr %t422, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t429, ptr %t430
  %t431 = load { i64, [3 x i64] }, ptr %t422
  %t433 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t431, ptr %t433
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t415, ptr %t433)
  br label %bb86
bb86:
  %t436 = load ptr, ptr %l0, !tbaa !29
  store ptr %t436, ptr %l221, !tbaa !29
  %t437 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t437, ptr %l222
  %t438 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t438, ptr %l223
  %t439 = load i64, ptr %l15, !tbaa !24
  store i64 %t439, ptr %l224, !tbaa !24
  %t440 = load ptr, ptr %l4, !tbaa !29
  store ptr %t440, ptr %l226, !tbaa !29
  %t442 = icmp sge i64 0, 0
  br i1 %t442, label %bb87, label %bb88
bb87:
  %t444 = icmp sle i64 0, 1152921504606846975
  br i1 %t444, label %bb89, label %bb90
bb88:
  call void @__olang_check_failed(ptr @olang_loc_1fa90a145069ae20_a62c963c9e2d6294)
  unreachable
bb89:
  %t446 = mul i64 0, 8
  %t447 = insertvalue { i64, ptr } undef, i64 0, 0
  %t448 = insertvalue { i64, ptr } %t447, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t448, ptr %l229, !tbaa !27
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l230, !tbaa !29
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load %"compiler/source:Span", ptr %l1
  %t452 = load i64, ptr %l16, !tbaa !24
  %t456 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t450, %"compiler/source:Span" %t451, i64 %t452)
  store ptr %t456, ptr %l234
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_1fa90a145069ae20_a62c963c9e2d6294)
  unreachable
bb91:
  %t457 = load ptr, ptr %l230, !tbaa !29
  %t458 = load ptr, ptr %l234, !tbaa !29
  %t459 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t457, ptr %t458)
  store { i64, ptr } %t459, ptr %l235
  br label %bb92
bb92:
  %t460 = icmp sge i64 0, 0
  br i1 %t460, label %bb93, label %bb94
bb93:
  %t462 = icmp sle i64 0, 2305843009213693951
  br i1 %t462, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_e5386246bf71864d_e9422de20f0d1fa1)
  unreachable
bb95:
  %t464 = mul i64 0, 4
  %t465 = insertvalue { i64, ptr } undef, i64 0, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t467 = load ptr, ptr %l221, !tbaa !29
  %t468 = load %"compiler/source:Span", ptr %l222
  %t469 = load %"compiler/source:Span", ptr %l223
  %t470 = load i64, ptr %l224, !tbaa !24
  %t471 = load ptr, ptr %l226, !tbaa !29
  %t472 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t473 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t475 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v3, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t467, %"compiler/source:Span" %t468, %"compiler/source:Span" %t469, i64 %t470, ptr %t471, { i64, ptr } %t472, { i64, ptr } %t473, { i64, ptr } %t466)
  store ptr %t475, ptr %l239
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_e5386246bf71864d_e9422de20f0d1fa1)
  unreachable
bb97:
  %t476 = load ptr, ptr %l239, !tbaa !29
  store ptr %t476, ptr %l18, !tbaa !29
  %t477 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t477, ptr %l240
  %t478 = load ptr, ptr %l18, !tbaa !29
  %t481 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t478)
  store i32 %t481, ptr %l243
  br label %bb98
bb98:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/check:Checker", ptr %t482, i32 0, i32 37
  %t485 = load i64, ptr %l17, !tbaa !24
  %t488 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t484, i64 %t485)
  store { i64, ptr } %t488, ptr %l247
  br label %bb99
bb99:
  %t489 = load ptr, ptr %l18, !tbaa !29
  %t491 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t493 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t491, ptr %t489, i1 false)
  store %"compiler/typed:Seq" %t493, ptr %l250
  br label %bb100
bb100:
  %t494 = load %"compiler/typed:Seq", ptr %l250
  %t495 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t494, ptr %t495
  store { i64, [5 x i64] } zeroinitializer, ptr %t496
  %t497 = getelementptr { i64, [5 x i64] }, ptr %t496, i32 0, i32 0
  store i64 12, ptr %t497
  %t498 = load %"compiler/source:Span", ptr %l240
  %t499 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t498, 0
  %t500 = load i32, ptr %l243, !tbaa !23
  %t501 = insertvalue { %"compiler/source:Span", i32, ptr } %t499, i32 %t500, 1
  %t503 = insertvalue { %"compiler/source:Span", i32, ptr } %t501, ptr %t495, 2
  %t504 = getelementptr { i64, [5 x i64] }, ptr %t496, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t503, ptr %t504
  %t505 = load { i64, [5 x i64] }, ptr %t496
  %t507 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t505, ptr %t507
  call void @__olang_scope_close(ptr %s0)
  store ptr %t507, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRawBits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i1
  %l20 = alloca i32
  %l22 = alloca ptr
  %l27 = alloca i32
  %l30 = alloca i1
  %l32 = alloca i1
  %l37 = alloca i32
  %l42 = alloca ptr
  %l47 = alloca i32
  %l50 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l12
  br label %bb2
bb2:
  %t22 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t24 = trunc i64 19 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l20
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  %t37 = load i32, ptr %l20, !tbaa !23
  %t38 = icmp ne i32 %t37, 0
  store i1 %t38, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t40 = load i1, ptr %l15, !tbaa !21
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l27
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t52 = load ptr, ptr %l22, !tbaa !29
  %t53 = load i32, ptr %l27, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRawBits(ptr %v0, ptr %t52, i32 %t53)
  br label %bb10
bb10:
  br label %ret
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l30
  br label %bb12
bb12:
  %t59 = load i1, ptr %l30, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb16
bb14:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l2, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l37
  br label %bb15
bb15:
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t73 = load i32, ptr %l37, !tbaa !23
  %t75 = icmp eq i32 %t73, %t72
  store i1 %t75, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l32, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  store ptr %t83, ptr %l42, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l2, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l47
  br label %bb20
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l2, !tbaa !23
  %t98 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v0, ptr %t94, i32 %t95)
  store ptr %t98, ptr %l50
  br label %bb21
bb21:
  %t99 = load ptr, ptr %l50, !tbaa !29
  %t101 = getelementptr %"compiler/check:rawTable", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load ptr, ptr %l42, !tbaa !29
  %t104 = load i32, ptr %l47, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawBits(ptr %v0, ptr %v0, ptr %t103, i32 %t104, { i64, ptr } %t102)
  br label %bb22
bb22:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItemOk(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, { i64, ptr } %a5, i64 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca i1
  %l24 = alloca { i64, ptr }
  %l25 = alloca %"compiler/msgs:Nearest"
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l65 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l71 = alloca { i64, ptr }
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %l81 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %l94 = alloca ptr
  %l95 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l111 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l115 = alloca %"compiler/diagmsg:Msg"
  %l116 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i1
  %t5 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t4 = ptrtoint ptr %t3 to i64
  %t6 = getelementptr { ptr, ptr }, ptr %t5, i32 0, i32 0
  store ptr %t2, ptr %t6, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t8 = getelementptr { ptr, ptr }, ptr %t5, i32 0, i32 1
  store ptr %v1, ptr %t8, !tbaa !28
  %t9 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_29, 0
  %t10 = insertvalue { ptr, ptr } %t9, ptr %t5, 1
  %t13 = extractvalue { ptr, ptr } %t10, 0
  %t14 = extractvalue { ptr, ptr } %t10, 1
  %t15 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fast_3aParam_26_3e_2eSome_3ccompiler_2fast_3aParam_26_2c_20_3f_3e(ptr %v2, ptr %s0, { i64, ptr } %t1, ptr %t13, ptr %t14)
  store i1 %t15, ptr %l19
  br label %bb1
bb1:
  %t16 = load i1, ptr %l19, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/check:payloadItem", ptr %t20, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t19, i32 %t23)
  store { i64, ptr } %t26, ptr %l24
  br label %bb4
bb3:
  br label %bb19
bb4:
  %t27 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t28 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s1, { i64, ptr } %t27)
  store %"compiler/msgs:Nearest" %t28, ptr %l25
  br label %bb5
bb5:
  %t29 = load %"compiler/msgs:Nearest", ptr %l25
  %t30 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t29, ptr %t30
  store ptr %t30, ptr %l9, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t32, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  store i64 %t36, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l11, !tbaa !24
  %t39 = load i64, ptr %l12, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t46 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t46, ptr %l34, !tbaa !27
  %t47 = load i64, ptr %l11, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr ptr, ptr %t50, i64 %t47
  %t52 = load ptr, ptr %t51, !tbaa !39
  %t54 = load ptr, ptr %l9, !tbaa !29
  store ptr %t54, ptr %l37, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Param", ptr %t52, i32 0, i32 1
  %t59 = load i32, ptr %t58, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t55, i32 %t59)
  store { i64, ptr } %t62, ptr %l41
  br label %bb10
bb10:
  %t63 = load ptr, ptr %l37, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l41, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s1, ptr %v0, ptr %t63, { i64, ptr } %t64)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t65 = load i64, ptr %l11, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l11, !tbaa !24
  br label %bb6
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l44, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t70, ptr %l45
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l3, !tbaa !23
  %t73 = load i64, ptr %l4, !tbaa !24
  %t77 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s1, ptr %t71, i32 %t72, i64 %t73)
  store { i64, ptr } %t77, ptr %l49
  br label %bb14
bb14:
  %t78 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l50, !tbaa !27
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/check:payloadItem", ptr %t86, i32 0, i32 0
  %t89 = load i32, ptr %t88, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t85, i32 %t89)
  store { i64, ptr } %t92, ptr %l54
  br label %bb15
bb15:
  %t93 = load ptr, ptr %l9, !tbaa !29
  %t95 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s1, ptr %s1, ptr %t93)
  store { i64, ptr } %t95, ptr %l56
  br label %bb16
bb16:
  %t96 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  %t98 = extractvalue { i64, ptr } %t96, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t106 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %s1, ptr %v0, ptr %s1, ptr %s1, { i64, ptr } %t103, { i64, ptr } %t104, { i64, ptr } %t102)
  store %"compiler/diagmsg:Msg" %t106, ptr %l58
  br label %bb17
bb17:
  %t107 = load ptr, ptr %l44, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l45
  %t109 = load %"compiler/diagmsg:Msg", ptr %l58
  %t110 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t107, %"compiler/source:Span" %t108, %"compiler/diagmsg:Msg" %t109)
  store i64 %t110, ptr %l59
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb19:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr %"compiler/check:payloadItem", ptr %t112, i32 0, i32 0
  %t115 = load i32, ptr %t114, !tbaa !23
  %t121 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v3, ptr %a7, i32 %t115)
  store i1 %t121, ptr %l65
  br label %bb20
bb20:
  %t122 = load i1, ptr %l65, !tbaa !21
  br i1 %t122, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l66, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t124, ptr %l67
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l3, !tbaa !23
  %t127 = load i64, ptr %l4, !tbaa !24
  %t131 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %s5, ptr %t125, i32 %t126, i64 %t127)
  store { i64, ptr } %t131, ptr %l71
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t132 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = mul i64 %t133, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t135)
  call void @llvm.memcpy.p0.p0.i64(ptr %t136, ptr %t134, i64 %t135, i1 false)
  %t137 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  %t139 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t146 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %s5, ptr %s5, { i64, ptr } %t138, i64 %t141, i64 %a6)
  store %"compiler/diagmsg:Msg" %t146, ptr %l76
  br label %bb24
bb24:
  %t147 = load ptr, ptr %l66, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l67
  %t149 = load %"compiler/diagmsg:Msg", ptr %l76
  %t150 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t147, %"compiler/source:Span" %t148, %"compiler/diagmsg:Msg" %t149)
  store i64 %t150, ptr %l77
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb26:
  %t154 = icmp sgt i64 %a8, 1
  br i1 %t154, label %bb27, label %bb28
bb27:
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr %"compiler/check:payloadItem", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = call i1 @compiler_2fcheck_2eisBind(ptr %v1, ptr %t159)
  store i1 %t161, ptr %l84
  br label %bb29
bb28:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb30
bb29:
  %t162 = load i1, ptr %l84, !tbaa !21
  store i1 %t162, ptr %l81, !tbaa !21
  br label %bb30
bb30:
  %t163 = load i1, ptr %l81, !tbaa !21
  br i1 %t163, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l85, !tbaa !29
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr %"compiler/check:payloadItem", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t168)
  store %"compiler/source:Span" %t170, ptr %l88
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrPatternBindAlts(ptr %s6)
  store %"compiler/diagmsg:Msg" %t171, ptr %l89
  br label %bb34
bb34:
  %t172 = load ptr, ptr %l85, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l88
  %t174 = load %"compiler/diagmsg:Msg", ptr %l89
  %t175 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t172, %"compiler/source:Span" %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l90
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb36:
  %t177 = load ptr, ptr %l1, !tbaa !29
  %t179 = getelementptr %"compiler/check:payloadItem", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  store ptr %t180, ptr %l15, !tbaa !29
  %t182 = load ptr, ptr %l15, !tbaa !29
  store ptr %t182, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t183 = load ptr, ptr %l94, !tbaa !29
  %t184 = icmp ne ptr %t183, null
  br i1 %t184, label %bb37, label %bb38
bb37:
  %t186 = load ptr, ptr %l94, !tbaa !29
  %t187 = load i64, ptr %t186, !range !{i64 0, i64 9}
  %t189 = icmp eq i64 %t187, 0
  store i1 %t189, ptr %l95, !tbaa !21
  br label %bb38
bb38:
  %t190 = load i1, ptr %l95, !tbaa !21
  br i1 %t190, label %bb39, label %bb40
bb39:
  br label %bb53
bb40:
  %t191 = load ptr, ptr %l15, !tbaa !29
  store ptr %t191, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t192 = load ptr, ptr %l98, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb41, label %bb42
bb41:
  %t195 = load ptr, ptr %l98, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 9}
  %t198 = icmp eq i64 %t196, 3
  store i1 %t198, ptr %l99, !tbaa !21
  br label %bb42
bb42:
  %t199 = load i1, ptr %l99, !tbaa !21
  br i1 %t199, label %bb43, label %bb44
bb43:
  br label %bb53
bb44:
  %t200 = load ptr, ptr %l15, !tbaa !29
  store ptr %t200, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t201 = load ptr, ptr %l102, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb45, label %bb46
bb45:
  %t204 = load ptr, ptr %l102, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 9}
  %t207 = icmp eq i64 %t205, 4
  store i1 %t207, ptr %l103, !tbaa !21
  br label %bb46
bb46:
  %t208 = load i1, ptr %l103, !tbaa !21
  br i1 %t208, label %bb47, label %bb48
bb47:
  br label %bb53
bb48:
  %t209 = load ptr, ptr %l15, !tbaa !29
  store ptr %t209, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t210 = load ptr, ptr %l106, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb49, label %bb50
bb49:
  %t213 = load ptr, ptr %l106, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 9}
  %t216 = icmp eq i64 %t214, 1
  store i1 %t216, ptr %l107, !tbaa !21
  br label %bb50
bb50:
  %t217 = load i1, ptr %l107, !tbaa !21
  br i1 %t217, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb61
bb57:
  store %olang.scope zeroinitializer, ptr %s8
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l111, !tbaa !29
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t222 = getelementptr %"compiler/check:payloadItem", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v1, ptr %t223)
  store %"compiler/source:Span" %t225, ptr %l114
  br label %bb58
bb58:
  %t226 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %s8)
  store %"compiler/diagmsg:Msg" %t226, ptr %l115
  br label %bb59
bb59:
  %t227 = load ptr, ptr %l111, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l114
  %t229 = load %"compiler/diagmsg:Msg", ptr %l115
  %t230 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t227, %"compiler/source:Span" %t228, %"compiler/diagmsg:Msg" %t229)
  store i64 %t230, ptr %l116
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb61:
  call void @__olang_check_failed(ptr @olang_loc_a21c210a1dda2ccc_c7cd76121e936418)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3, ptr %a4) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/check:payloadItem"
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca ptr
  %lp12 = alloca ptr
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca %"compiler/check:payloadItem"
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %rv = alloca ptr
  %t7 = alloca { i64, [4 x i64] }, align 8
  %t98 = alloca { i64, [4 x i64] }, align 8
  %t116 = alloca { i64, [4 x i64] }, align 8
  %t130 = alloca { i64, [4 x i64] }, align 8
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l3
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Match", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [4 x i64] }, ptr %t7, i32 0, i32 0
  store i64 5, ptr %t8
  %t10 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t1, 0
  %t12 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t10, i32 94, 1
  %t14 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t12, ptr %t5, 2
  %t16 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t14, ptr %a4, 3
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t7, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t16, ptr %t17
  %t18 = load { i64, [4 x i64] }, ptr %t7
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t18, ptr %t20
  store ptr %t20, ptr %l5, !tbaa !29
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v2, ptr %v4, ptr %a0, ptr %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l22
  br label %bb1
bb1:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %t28
  store ptr %t28, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t30 = load i64, ptr %l7, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %v4, ptr %t31)
  store i64 %t33, ptr %l26
  br label %bb3
bb3:
  %t34 = load i64, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = icmp slt i64 %t34, %t35
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb4, label %bb5
bb4:
  br label %bb24
bb5:
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = call %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %v4, ptr %v4, ptr %t40, i64 %t41)
  store %"compiler/check:payloadItem" %t44, ptr %l31
  br label %bb7
bb7:
  %t45 = load %"compiler/check:payloadItem", ptr %l31
  store %"compiler/check:payloadItem" %t45, ptr %l8
  %t46 = getelementptr %"compiler/check:payloadItem", ptr %l8, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l9, !tbaa !29
  %t49 = load ptr, ptr %l9, !tbaa !29
  store ptr %t49, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t50 = load ptr, ptr %l33, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb8, label %bb9
bb8:
  %t53 = load ptr, ptr %l33, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 9}
  %t56 = icmp eq i64 %t54, 1
  store i1 %t56, ptr %l34, !tbaa !21
  br label %bb9
bb9:
  %t57 = load i1, ptr %l34, !tbaa !21
  br i1 %t57, label %bb10, label %bb11
bb10:
  %t58 = load ptr, ptr %l9, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr }, ptr %t60, i32 0, i32 0
  %t62 = load %"compiler/source:Span", ptr %t61
  store %"compiler/source:Span" %t62, ptr %l10
  %t64 = load ptr, ptr %l9, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", ptr }, ptr %t66, i32 0, i32 1
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l11, !tbaa !29
  br label %bb16
bb11:
  %t70 = load ptr, ptr %l9, !tbaa !29
  store ptr %t70, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t71 = load ptr, ptr %l41, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t74 = load ptr, ptr %l41, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 9}
  %t77 = icmp eq i64 %t75, 4
  store i1 %t77, ptr %l42, !tbaa !21
  br label %bb13
bb13:
  %t78 = load i1, ptr %l42, !tbaa !21
  br i1 %t78, label %bb14, label %bb15
bb14:
  %t79 = load ptr, ptr %l9, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr }, ptr %t81, i32 0, i32 0
  %t83 = load %"compiler/source:Span", ptr %t82
  store %"compiler/source:Span" %t83, ptr %l10
  %t85 = load ptr, ptr %l9, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr }, ptr %t87, i32 0, i32 1
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l11, !tbaa !29
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t91 = load %"compiler/source:Span", ptr %l10
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/ast:Match", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = getelementptr %"compiler/check:payloadItem", ptr %l8, i32 0, i32 0
  %t97 = load i32, ptr %t96, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 0
  store i64 14, ptr %t99
  %t101 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t91, 0
  %t103 = insertvalue { %"compiler/source:Span", ptr, i32 } %t101, ptr %t95, 1
  %t105 = insertvalue { %"compiler/source:Span", ptr, i32 } %t103, i32 %t97, 2
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t105, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t98
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store ptr %t108, ptr %lp12
  %t110 = load ptr, ptr %lp12
  store { i64, [4 x i64] } %t107, ptr %t110
  %t111 = load %"compiler/source:Span", ptr %l3
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l10
  %t114 = load ptr, ptr %lp12
  %t115 = load ptr, ptr %l11, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t116
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t116, i32 0, i32 0
  store i64 5, ptr %t117
  %t119 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t113, 0
  %t121 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t119, i32 94, 1
  %t123 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t121, ptr %t114, 2
  %t125 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t123, ptr %t115, 3
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t116, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t125, ptr %t126
  %t127 = load { i64, [4 x i64] }, ptr %t116
  %t129 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t127, ptr %t129
  store { i64, [4 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 0
  store i64 5, ptr %t131
  %t133 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t111, 0
  %t135 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t133, i32 45, 1
  %t137 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t135, ptr %t112, 2
  %t139 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t137, ptr %t129, 3
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t139, ptr %t140
  %t141 = load { i64, [4 x i64] }, ptr %t130
  %t143 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t141, ptr %t143
  store ptr %t143, ptr %l5, !tbaa !29
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
  call void @__olang_check_failed(ptr @olang_loc_579da722da9b7d43_754f46e08b287e07)
  unreachable
bb22:
  br label %bb23
bb23:
  %t145 = load i64, ptr %l7, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l7, !tbaa !24
  br label %bb2
bb24:
  %t149 = load ptr, ptr %l5, !tbaa !29
  store ptr %t149, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eretLand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l6 = alloca i32
  %l10 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l24 = alloca i1
  %l29 = alloca i64
  %l32 = alloca ptr
  %l36 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i32, ptr %l6, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l13
  br label %bb4
bb4:
  %t17 = load i1, ptr %l13, !tbaa !21
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb9
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l18
  br label %bb8
bb8:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb13
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l24
  br label %bb12
bb12:
  %t39 = load i1, ptr %l24, !tbaa !21
  %t40 = xor i1 %t39, true
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t42 = load i1, ptr %l19, !tbaa !21
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %t45, ptr %t46, i1 true)
  store i64 %t49, ptr %l29
  br label %bb17
bb17:
  %t50 = load i64, ptr %l29, !tbaa !24
  store i64 %t50, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = icmp sge i64 %t51, 0
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t57 = load i64, ptr %l3, !tbaa !24
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v1, ptr %v1, ptr %t55, ptr %t56, i64 %t57, i1 false)
  store ptr %t61, ptr %l36
  br label %bb20
bb19:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l32, !tbaa !29
  br label %bb21
bb20:
  %t64 = load ptr, ptr %l36, !tbaa !29
  store ptr %t64, ptr %l32, !tbaa !29
  br label %bb21
bb21:
  %t65 = load ptr, ptr %l32, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/check:roOrigin"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca %"compiler/check:roOrigin"
  %l16 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l26 = alloca %"compiler/check:roOrigin"
  %l28 = alloca ptr
  %l32 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l33 = alloca %"compiler/check:roOrigin"
  %l34 = alloca i32
  %l35 = alloca %"compiler/check:roOrigin"
  %l43 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l57 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca i1
  %l70 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca i1
  %l83 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca i1
  %l91 = alloca ptr
  %l96 = alloca ptr
  %l98 = alloca ptr
  %l101 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca ptr
  %l112 = alloca i1
  %l117 = alloca %"compiler/check:roOrigin"
  %l119 = alloca ptr
  %l123 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l124 = alloca %"compiler/check:roOrigin"
  %l125 = alloca i32
  %l126 = alloca %"compiler/check:roOrigin"
  %l130 = alloca i1
  %l136 = alloca i64
  %rv = alloca i64
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
  store i1 true, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sgt i64 %t5, 32
  store i1 %t7, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i64 -1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t12 = load ptr, ptr %l20, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l20, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l21, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l3, !tbaa !23
  br label %bb11
bb10:
  br label %bb22
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 82
  store ptr %t28, ptr %l28, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t32 = sext i32 %t30 to i64
  %t35 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t29, i64 %t32)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35, ptr %l32
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l28, !tbaa !29
  %t37 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l32
  %t38 = call { i32, %"compiler/check:roOrigin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hfc56ff01c357e6bb827daf7012f18a86(ptr %v0, ptr %v0, ptr %t36, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t37)
  %t39 = extractvalue { i32, %"compiler/check:roOrigin" } %t38, 1
  %t40 = extractvalue { i32, %"compiler/check:roOrigin" } %t38, 0
  store i32 %t40, ptr %l34
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb14, label %ok.42, !prof !99
ok.42:
  store %"compiler/check:roOrigin" %t39, ptr %l33
  br label %bb13
bb13:
  %t43 = load %"compiler/check:roOrigin", ptr %l33
  store %"compiler/check:roOrigin" %t43, ptr %l26
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t44 = call %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v0, ptr %v0, ptr null, i1 false)
  store %"compiler/check:roOrigin" %t44, ptr %l35
  br label %bb16
bb16:
  %t45 = load %"compiler/check:roOrigin", ptr %l35
  store %"compiler/check:roOrigin" %t45, ptr %l26
  br label %bb17
bb17:
  %t46 = load %"compiler/check:roOrigin", ptr %l26
  store %"compiler/check:roOrigin" %t46, ptr %l4
  %t47 = getelementptr %"compiler/check:roOrigin", ptr %l4, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb18, label %bb19
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:roOrigin", ptr %l4, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t59 = add i64 %t57, 1
  %t63 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v0, ptr %t54, ptr %t56, i64 %t59)
  store i64 %t63, ptr %l43
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t64 = load i64, ptr %l43, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
bb21:
  %t65 = load i32, ptr %l3, !tbaa !23
  %t67 = sext i32 %t65 to i64
  store i64 %t67, ptr %rv
  br label %ret
bb22:
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t70 = load ptr, ptr %l46, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t73 = load ptr, ptr %l46, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 8}
  %t76 = icmp eq i64 %t74, 3
  store i1 %t76, ptr %l47, !tbaa !21
  br label %bb24
bb24:
  %t77 = load i1, ptr %l47, !tbaa !21
  br i1 %t77, label %bb25, label %bb26
bb25:
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t80, i32 0, i32 2
  %t82 = load ptr, ptr %t81
  store ptr %t82, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l5, !tbaa !29
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = add i64 %t87, 1
  %t93 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %t84, ptr %t85, i64 %t89)
  store i64 %t93, ptr %l57
  br label %bb28
bb28:
  %t94 = load i64, ptr %l57, !tbaa !24
  store i64 %t94, ptr %rv
  br label %ret
bb29:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t96 = load ptr, ptr %l58, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb30, label %bb31
bb30:
  %t99 = load ptr, ptr %l58, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 8}
  %t102 = icmp eq i64 %t100, 4
  store i1 %t102, ptr %l59, !tbaa !21
  br label %bb31
bb31:
  %t103 = load i1, ptr %l59, !tbaa !21
  br i1 %t103, label %bb32, label %bb33
bb32:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l6, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Elem", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = load i64, ptr %l2, !tbaa !24
  %t118 = add i64 %t116, 1
  %t122 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %t110, ptr %t114, i64 %t118)
  store i64 %t122, ptr %l70
  br label %bb35
bb35:
  %t123 = load i64, ptr %l70, !tbaa !24
  store i64 %t123, ptr %rv
  br label %ret
bb36:
  %t124 = load ptr, ptr %l1, !tbaa !29
  store ptr %t124, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t125 = load ptr, ptr %l71, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb37, label %bb38
bb37:
  %t128 = load ptr, ptr %l71, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 8}
  %t131 = icmp eq i64 %t129, 5
  store i1 %t131, ptr %l72, !tbaa !21
  br label %bb38
bb38:
  %t132 = load i1, ptr %l72, !tbaa !21
  br i1 %t132, label %bb39, label %bb40
bb39:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t135, i32 0, i32 2
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l7, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l7, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Payload", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = load i64, ptr %l2, !tbaa !24
  %t147 = add i64 %t145, 1
  %t151 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %t139, ptr %t143, i64 %t147)
  store i64 %t151, ptr %l83
  br label %bb42
bb42:
  %t152 = load i64, ptr %l83, !tbaa !24
  store i64 %t152, ptr %rv
  br label %ret
bb43:
  %t153 = load ptr, ptr %l1, !tbaa !29
  store ptr %t153, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t154 = load ptr, ptr %l84, !tbaa !29
  %t155 = icmp ne ptr %t154, null
  br i1 %t155, label %bb44, label %bb45
bb44:
  %t157 = load ptr, ptr %l84, !tbaa !29
  %t158 = load i64, ptr %t157, !range !{i64 0, i64 8}
  %t160 = icmp eq i64 %t158, 6
  store i1 %t160, ptr %l85, !tbaa !21
  br label %bb45
bb45:
  %t161 = load i1, ptr %l85, !tbaa !21
  br i1 %t161, label %bb46, label %bb47
bb46:
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t164 = getelementptr { i64, [4 x i64] }, ptr %t162, i32 0, i32 1
  %t165 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t164, i32 0, i32 2
  %t166 = load ptr, ptr %t165
  store ptr %t166, ptr %l8, !tbaa !29
  br label %bb48
bb47:
  br label %bb55
bb48:
  %t168 = load ptr, ptr %l8, !tbaa !29
  %t170 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %t168)
  store ptr %t170, ptr %l91
  br label %bb49
bb49:
  %t171 = load ptr, ptr %l91, !tbaa !29
  store ptr %t171, ptr %l9, !tbaa !29
  %t172 = load ptr, ptr %l9, !tbaa !29
  %t173 = load ptr, ptr %l8, !tbaa !29
  %t176 = icmp eq ptr %t172, %t173
  br i1 %t176, label %bb50, label %bb51
bb50:
  store i64 -1, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l96, !tbaa !29
  %t180 = load ptr, ptr %l9, !tbaa !29
  %t182 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t180)
  store ptr %t182, ptr %l98
  br label %bb53
bb53:
  %t183 = load i64, ptr %l2, !tbaa !24
  %t185 = add i64 %t183, 1
  %t186 = load ptr, ptr %l96, !tbaa !29
  %t187 = load ptr, ptr %l98, !tbaa !29
  %t189 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v1, ptr %t186, ptr %t187, i64 %t185)
  store i64 %t189, ptr %l101
  br label %bb54
bb54:
  %t190 = load i64, ptr %l101, !tbaa !24
  store i64 %t190, ptr %rv
  br label %ret
bb55:
  %t191 = load ptr, ptr %l1, !tbaa !29
  store ptr %t191, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t192 = load ptr, ptr %l102, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb56, label %bb57
bb56:
  %t195 = load ptr, ptr %l102, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 8}
  %t198 = icmp eq i64 %t196, 2
  store i1 %t198, ptr %l103, !tbaa !21
  br label %bb57
bb57:
  %t199 = load i1, ptr %l103, !tbaa !21
  br i1 %t199, label %bb58, label %bb59
bb58:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr { i64, [4 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t202, i32 0, i32 2
  %t204 = load ptr, ptr %t203
  store ptr %t204, ptr %l10, !tbaa !29
  br label %bb60
bb59:
  br label %bb87
bb60:
  %t206 = load ptr, ptr %l10, !tbaa !29
  %t208 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %t206)
  store ptr %t208, ptr %l109
  br label %bb61
bb61:
  %t209 = load ptr, ptr %l109, !tbaa !29
  %t210 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t209)
  store ptr %t210, ptr %l110
  br label %bb62
bb62:
  %t211 = load ptr, ptr %l110, !tbaa !29
  store ptr %t211, ptr %l11, !tbaa !29
  %t212 = load ptr, ptr %l11, !tbaa !29
  store ptr %t212, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t213 = load ptr, ptr %l111, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb63, label %bb64
bb63:
  %t216 = load ptr, ptr %l111, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 8}
  %t219 = icmp eq i64 %t217, 0
  store i1 %t219, ptr %l112, !tbaa !21
  br label %bb64
bb64:
  %t220 = load i1, ptr %l112, !tbaa !21
  br i1 %t220, label %bb65, label %bb66
bb65:
  %t221 = load ptr, ptr %l11, !tbaa !29
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t223, i32 0, i32 2
  %t225 = load i32, ptr %t224
  store i32 %t225, ptr %l12, !tbaa !23
  br label %bb67
bb66:
  br label %bb81
bb67:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 82
  store ptr %t229, ptr %l119, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l12, !tbaa !23
  %t233 = sext i32 %t231 to i64
  %t236 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t230, i64 %t233)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t236, ptr %l123
  br label %bb68
bb68:
  %t237 = load ptr, ptr %l119, !tbaa !29
  %t238 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l123
  %t239 = call { i32, %"compiler/check:roOrigin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hfc56ff01c357e6bb827daf7012f18a86(ptr %v0, ptr %v0, ptr %t237, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t238)
  %t240 = extractvalue { i32, %"compiler/check:roOrigin" } %t239, 1
  %t241 = extractvalue { i32, %"compiler/check:roOrigin" } %t239, 0
  store i32 %t241, ptr %l125
  %t242 = icmp ne i32 %t241, 0
  br i1 %t242, label %bb70, label %ok.243, !prof !99
ok.243:
  store %"compiler/check:roOrigin" %t240, ptr %l124
  br label %bb69
bb69:
  %t244 = load %"compiler/check:roOrigin", ptr %l124
  store %"compiler/check:roOrigin" %t244, ptr %l117
  br label %bb73
bb70:
  br label %bb71
bb71:
  %t245 = call %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v0, ptr %v0, ptr null, i1 false)
  store %"compiler/check:roOrigin" %t245, ptr %l126
  br label %bb72
bb72:
  %t246 = load %"compiler/check:roOrigin", ptr %l126
  store %"compiler/check:roOrigin" %t246, ptr %l117
  br label %bb73
bb73:
  %t247 = load %"compiler/check:roOrigin", ptr %l117
  store %"compiler/check:roOrigin" %t247, ptr %l13
  %t248 = getelementptr %"compiler/check:roOrigin", ptr %l13, i32 0, i32 0
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = icmp eq ptr %t249, null
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb74, label %bb75
bb74:
  %t255 = getelementptr %"compiler/check:roOrigin", ptr %l13, i32 0, i32 1
  %t256 = load i1, ptr %t255, !tbaa !21
  store i1 %t256, ptr %l130, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb76
bb76:
  %t258 = load i1, ptr %l130, !tbaa !21
  br i1 %t258, label %bb77, label %bb78
bb77:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/check:roOrigin", ptr %l13, i32 0, i32 0
  %t261 = load ptr, ptr %t260, !tbaa !29
  %t262 = load i64, ptr %l2, !tbaa !24
  %t264 = add i64 %t262, 1
  %t268 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootIn(ptr %v0, ptr %v0, ptr %t259, ptr %t261, i64 %t264)
  store i64 %t268, ptr %l136
  br label %bb79
bb78:
  br label %bb80
bb79:
  %t269 = load i64, ptr %l136, !tbaa !24
  store i64 %t269, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_86e950cd41bc9656_5dbe90d10bea6a92)
  unreachable
bb86:
  store i64 -1, ptr %rv
  br label %ret
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  store i64 -1, ptr %rv
  br label %ret
bb91:
  call void @__olang_check_failed(ptr @olang_loc_67c0878bde4afa77_9afdcd15cbb29493)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqUncovered(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i64
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = add i64 %t6, 2
  store i64 %t7, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l18, !tbaa !24
  store i64 %t35, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l15, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t57 = load i64, ptr %l7, !tbaa !24
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqRows(ptr %v0, ptr %v1, ptr %v1, ptr %t55, ptr %t56, i64 %t57)
  store ptr %t61, ptr %l39
  br label %bb12
bb12:
  %t62 = load ptr, ptr %l39, !tbaa !29
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t62)
  store i64 %t63, ptr %l40
  br label %bb13
bb13:
  %t64 = load i64, ptr %l40, !tbaa !24
  %t65 = icmp eq i64 %t64, 0
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = insertvalue { i32, i64 } zeroinitializer, i64 %t67, 1
  store { i32, i64 } %t69, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  %t75 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleLandings(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca %"compiler/check:landing"
  %l48 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 66
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l13
  br label %bb5
bb5:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 66
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l16
  br label %bb6
bb6:
  %t16 = load i64, ptr %l16, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb12
bb9:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l23, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l23, !tbaa !24
  store i64 %t43, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t44 = load i64, ptr %l20, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 66
  %t69 = call %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t65, i64 %t61)
  store %"compiler/check:landing" %t69, ptr %l44
  br label %bb17
bb17:
  %t70 = getelementptr %"compiler/check:landing", ptr %l44, i32 0, i32 0
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t73)
  store i1 %t76, ptr %l48
  br label %bb18
bb18:
  %t77 = load i1, ptr %l48, !tbaa !21
  br i1 %t77, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb21
bb21:
  %t78 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t78, i1 true)
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandingsOf(ptr %v0, ptr %t81, i64 %t82)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l6, !tbaa !24
  br label %bb13
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4, i1 %a5, i64 %a6, i64 %a7, ptr %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i64
  %l68 = alloca { i64, ptr }
  %l70 = alloca i1
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l91 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca i64
  %l106 = alloca i32
  %l112 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i64
  %l120 = alloca %"compiler/source:Span"
  %l123 = alloca { i64, ptr }
  %l124 = alloca i1
  %l130 = alloca %"compiler/source:Span"
  %l131 = alloca ptr
  %l137 = alloca { i64, [3 x i64] }
  %l140 = alloca { i64, ptr }
  %l141 = alloca %"compiler/diagmsg:Msg"
  %l142 = alloca i64
  %l155 = alloca ptr
  %l158 = alloca i32
  %l160 = alloca ptr
  %l164 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l165 = alloca i32
  %l166 = alloca i32
  %l171 = alloca i1
  %l175 = alloca i1
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t248 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i1 %a5, ptr %l5
  store i64 %a6, ptr %l6
  store i64 %a7, ptr %l7
  store ptr %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l23, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  store i64 %t11, ptr %l24, !tbaa !24
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/ast:TopIf", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb10
bb3:
  call void @__olang_check_failed(ptr @olang_loc_6b4c91049558e776_f5788538a01eee7a)
  unreachable
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/ast:TopIf", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t25 = getelementptr %"compiler/ast:TopBranch", ptr %t22, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l31, !tbaa !27
  %t27 = load i1, ptr %l5, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = icmp eq i64 %t29, %t30
  store i1 %t33, ptr %l33, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l8, !tbaa !29
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t39 = load i1, ptr %l33, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v2, ptr %v3, ptr %t36, i64 %t37, { i64, ptr } %t38, i1 true, i1 %t39, ptr %t35)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopIf", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l42, !tbaa !29
  %t51 = load i64, ptr %l1, !tbaa !24
  store i64 %t51, ptr %l43, !tbaa !24
  %t52 = load ptr, ptr %l2, !tbaa !29
  store ptr %t52, ptr %l44, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/ast:TopIf", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb13, label %bb14
bb12:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TopIf", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb17, label %bb18
bb13:
  call void @__olang_check_failed(ptr @olang_loc_812bc6763f016bdd_ce6f0e3f96c00d01)
  unreachable
bb14:
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/ast:TopIf", ptr %t69, i32 0, i32 2
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = load i1, ptr %l5, !tbaa !21
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t76, 1
  %t79 = load ptr, ptr %l8, !tbaa !29
  %t80 = load ptr, ptr %l42, !tbaa !29
  %t81 = load i64, ptr %l43, !tbaa !24
  %t82 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t80, i64 %t81, ptr %t82, ptr %t72, i1 %a4, i1 %t74, i64 %t75, i64 %t78, ptr %t79)
  br label %bb16
bb16:
  br label %bb27
bb17:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l60, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  store i64 %t90, ptr %l61, !tbaa !24
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = getelementptr %"compiler/ast:TopIf", ptr %t91, i32 0, i32 3
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  br i1 %t96, label %bb19, label %bb20
bb18:
  br label %bb26
bb19:
  call void @__olang_check_failed(ptr @olang_loc_8d628e20c33cf608_43e2c14925cb83cc)
  unreachable
bb20:
  br label %bb21
bb21:
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = getelementptr %"compiler/ast:TopIf", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t104 = getelementptr %"compiler/ast:TopBranch", ptr %t101, i32 0, i32 1
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l68, !tbaa !27
  %t106 = load i1, ptr %l5, !tbaa !21
  br i1 %t106, label %bb22, label %bb23
bb22:
  %t108 = load i64, ptr %l6, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t109, 1
  %t114 = icmp eq i64 %t108, %t111
  store i1 %t114, ptr %l70, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb24
bb24:
  %t116 = load ptr, ptr %l8, !tbaa !29
  %t117 = load ptr, ptr %l60, !tbaa !29
  %t118 = load i64, ptr %l61, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t120 = load i1, ptr %l70, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v2, ptr %v3, ptr %t117, i64 %t118, { i64, ptr } %t119, i1 true, i1 %t120, ptr %t116)
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t123 = load ptr, ptr %l3, !tbaa !29
  %t126 = icmp eq ptr %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  br label %bb30
bb30:
  %t130 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l80
  br label %bb31
bb31:
  %t131 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l9
  %t132 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2echainNames(ptr %v1, ptr %s0, ptr %t132, ptr %l9)
  br label %bb32
bb32:
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l9)
  store i64 %t136, ptr %l84
  br label %bb33
bb33:
  %t137 = load i64, ptr %l84, !tbaa !24
  %t138 = icmp eq i64 %t137, 0
  br i1 %t138, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb35:
  br label %bb36
bb36:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/load:Loader", ptr %t146, i32 0, i32 10
  %t149 = load i64, ptr %l1, !tbaa !24
  %t152 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t148, i64 %t149)
  store ptr %t152, ptr %l91
  br label %bb37
bb37:
  %t153 = load ptr, ptr %l91, !tbaa !29
  %t155 = getelementptr %"compiler/load:Module", ptr %t153, i32 0, i32 4
  %t156 = load i64, ptr %t155, !tbaa !24
  store i64 %t156, ptr %l10, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 0
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/load:Loader", ptr %t164, i32 0, i32 4
  %t167 = load ptr, ptr %t166, !tbaa !29
  store ptr %t167, ptr %l11, !tbaa !29
  store ptr %l9, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s8
  %t170 = load i64, ptr %l13, !tbaa !24
  store i64 %t170, ptr %l99, !tbaa !24
  %t171 = load ptr, ptr %l12, !tbaa !29
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t171)
  store i64 %t173, ptr %l101
  br label %bb39
bb39:
  %t174 = load i64, ptr %l99, !tbaa !24
  %t175 = load i64, ptr %l101, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb90
bb41:
  br label %bb42
bb42:
  %t180 = load ptr, ptr %l12, !tbaa !29
  %t181 = load i64, ptr %l13, !tbaa !24
  %t184 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t180, i64 %t181)
  store i32 %t184, ptr %l106
  br label %bb43
bb43:
  %t185 = load i32, ptr %l106, !tbaa !23
  store i32 %t185, ptr %l14, !tbaa !23
  %t186 = load ptr, ptr %l2, !tbaa !29
  store ptr %t186, ptr %l15, !tbaa !29
  br label %bb44
bb44:
  %t188 = load ptr, ptr %l15, !tbaa !29
  %t190 = getelementptr %"compiler/ast:TopIf", ptr %t188, i32 0, i32 0
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb45, label %bb46
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l113, !tbaa !29
  %t198 = load i64, ptr %l10, !tbaa !24
  store i64 %t198, ptr %l114, !tbaa !24
  %t199 = load ptr, ptr %l15, !tbaa !29
  %t201 = getelementptr %"compiler/ast:TopIf", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = icmp eq ptr %t202, null
  br i1 %t204, label %bb47, label %bb48
bb46:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb53
bb47:
  call void @__olang_check_failed(ptr @olang_loc_90c8334c62802427_4400025bac92e03b)
  unreachable
bb48:
  br label %bb49
bb49:
  %t206 = load ptr, ptr %l15, !tbaa !29
  %t208 = getelementptr %"compiler/ast:TopIf", ptr %t206, i32 0, i32 0
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t211 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t209)
  store %"compiler/source:Span" %t211, ptr %l120
  br label %bb50
bb50:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load i32, ptr %l14, !tbaa !23
  %t216 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t212, i32 %t213)
  store { i64, ptr } %t216, ptr %l123
  br label %bb51
bb51:
  %t217 = load ptr, ptr %l113, !tbaa !29
  %t218 = load i64, ptr %l114, !tbaa !24
  %t219 = load %"compiler/source:Span", ptr %l120
  %t220 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t221 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdReads(ptr %v0, ptr %v0, ptr %t217, i64 %t218, %"compiler/source:Span" %t219, { i64, ptr } %t220)
  store i1 %t221, ptr %l124
  br label %bb52
bb52:
  %t222 = load i1, ptr %l124, !tbaa !21
  store i1 %t222, ptr %l112, !tbaa !21
  br label %bb53
bb53:
  %t223 = load i1, ptr %l112, !tbaa !21
  br i1 %t223, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s10
  %t224 = load ptr, ptr %l15, !tbaa !29
  %t226 = getelementptr %"compiler/ast:TopIf", ptr %t224, i32 0, i32 0
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = icmp eq ptr %t227, null
  br i1 %t229, label %bb56, label %bb57
bb55:
  br label %bb63
bb56:
  call void @__olang_check_failed(ptr @olang_loc_39ed54cf65861a3a_83e11e15934e9cb6)
  unreachable
bb57:
  br label %bb58
bb58:
  %t231 = load ptr, ptr %l15, !tbaa !29
  %t233 = getelementptr %"compiler/ast:TopIf", ptr %t231, i32 0, i32 0
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t234)
  store %"compiler/source:Span" %t236, ptr %l130
  br label %bb59
bb59:
  %t237 = load %"compiler/source:Span", ptr %l130
  store %"compiler/source:Span" %t237, ptr %l16
  %t238 = load ptr, ptr %l11, !tbaa !29
  store ptr %t238, ptr %l131, !tbaa !29
  %t239 = load i64, ptr %l10, !tbaa !24
  %t240 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t241 = load i32, ptr %t240, !tbaa !23
  %t243 = sext i32 %t241 to i64
  %t244 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 1
  %t245 = load i32, ptr %t244, !tbaa !23
  %t247 = sext i32 %t245 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t248
  %t249 = getelementptr { i64, [3 x i64] }, ptr %t248, i32 0, i32 0
  store i64 3, ptr %t249
  %t251 = insertvalue { i64, i64, i64 } undef, i64 %t239, 0
  %t253 = insertvalue { i64, i64, i64 } %t251, i64 %t243, 1
  %t255 = insertvalue { i64, i64, i64 } %t253, i64 %t247, 2
  %t256 = getelementptr { i64, [3 x i64] }, ptr %t248, i32 0, i32 1
  store { i64, i64, i64 } %t255, ptr %t256
  %t257 = load { i64, [3 x i64] }, ptr %t248
  store { i64, [3 x i64] } %t257, ptr %l137
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load i32, ptr %l14, !tbaa !23
  %t262 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t258, i32 %t259)
  store { i64, ptr } %t262, ptr %l140
  br label %bb60
bb60:
  %t263 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t264 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetCondReads(ptr %v0, ptr %s10, { i64, ptr } %t263)
  store %"compiler/diagmsg:Msg" %t264, ptr %l141
  br label %bb61
bb61:
  %t265 = load ptr, ptr %l131, !tbaa !29
  %t266 = load { i64, [3 x i64] }, ptr %l137
  %t267 = load %"compiler/diagmsg:Msg", ptr %l141
  %t268 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s10, ptr %t265, { i64, [3 x i64] } %t266, %"compiler/diagmsg:Msg" %t267)
  store i64 %t268, ptr %l142
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s10)
  br label %bb63
bb63:
  %t269 = load ptr, ptr %l15, !tbaa !29
  %t271 = getelementptr %"compiler/ast:TopIf", ptr %t269, i32 0, i32 2
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = icmp eq ptr %t272, null
  br i1 %t274, label %bb64, label %bb65
bb64:
  br label %bb71
bb65:
  br label %bb66
bb66:
  %t276 = load ptr, ptr %l15, !tbaa !29
  %t278 = getelementptr %"compiler/ast:TopIf", ptr %t276, i32 0, i32 2
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = icmp eq ptr %t279, null
  br i1 %t281, label %bb67, label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_39e926dc5bd50dc1_491eed70903c4c1d)
  unreachable
bb68:
  br label %bb69
bb69:
  %t283 = load ptr, ptr %l15, !tbaa !29
  %t285 = getelementptr %"compiler/ast:TopIf", ptr %t283, i32 0, i32 2
  %t286 = load ptr, ptr %t285, !tbaa !29
  store ptr %t286, ptr %l15, !tbaa !29
  br label %bb70
bb70:
  br label %bb44
bb71:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/check:Checker", ptr %t288, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t292 = load i64, ptr %l1, !tbaa !24
  %t293 = load i32, ptr %l14, !tbaa !23
  %t297 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t291, i64 %t292, i32 %t293)
  store ptr %t297, ptr %l155
  br label %bb72
bb72:
  %t298 = load ptr, ptr %l155, !tbaa !29
  %t301 = icmp eq ptr %t298, null
  br i1 %t301, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb74:
  br label %bb75
bb75:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/check:Checker", ptr %t303, i32 0, i32 28
  store ptr %t305, ptr %l160, !tbaa !29
  %t306 = load i64, ptr %l1, !tbaa !24
  %t307 = load i32, ptr %l14, !tbaa !23
  %t309 = sext i32 %t307 to i64
  %t312 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s8, i64 %t306, i64 %t309)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t312, ptr %l164
  br label %bb76
bb76:
  %t313 = load ptr, ptr %l160, !tbaa !29
  %t314 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l164
  %t315 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t313, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t314)
  %t316 = extractvalue { i32, i32 } %t315, 1
  %t317 = extractvalue { i32, i32 } %t315, 0
  store i32 %t317, ptr %l166
  %t318 = icmp ne i32 %t317, 0
  br i1 %t318, label %bb78, label %ok.319, !prof !99
ok.319:
  store i32 %t316, ptr %l165
  br label %bb77
bb77:
  %t320 = load i32, ptr %l165, !tbaa !23
  store i32 %t320, ptr %l158, !tbaa !23
  br label %bb80
bb78:
  br label %bb79
bb79:
  %t321 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t321, ptr %l158, !tbaa !23
  br label %bb80
bb80:
  %t323 = load i32, ptr %l158, !tbaa !23
  store i32 %t323, ptr %l18, !tbaa !23
  %t324 = load i32, ptr %l18, !tbaa !23
  %t325 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t328 = icmp eq i32 %t324, %t325
  br i1 %t328, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l171, !tbaa !21
  br label %bb84
bb82:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load i64, ptr %l1, !tbaa !24
  %t332 = load i32, ptr %l18, !tbaa !23
  %t336 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasZero(ptr %v0, ptr %t330, i64 %t331, i32 %t332)
  store i1 %t336, ptr %l175
  br label %bb83
bb83:
  %t337 = load i1, ptr %l175, !tbaa !21
  store i1 %t337, ptr %l171, !tbaa !21
  br label %bb84
bb84:
  %t338 = load i1, ptr %l171, !tbaa !21
  br i1 %t338, label %bb85, label %bb86
bb85:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb86:
  br label %bb87
bb87:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i64, ptr %l10, !tbaa !24
  %t341 = load ptr, ptr %l2, !tbaa !29
  %t342 = load i32, ptr %l14, !tbaa !23
  %t343 = load i32, ptr %l18, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %t339, i64 %t340, ptr %t341, i32 %t342, i32 %t343)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb89:
  %t349 = load i64, ptr %l13, !tbaa !24
  %t351 = add i64 %t349, 1
  store i64 %t351, ptr %l13, !tbaa !24
  br label %bb38
bb90:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunendedArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l16 = alloca i1
  %l20 = alloca i1
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca i32
  %l33 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l34 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i1
  %l43 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l58 = alloca ptr
  %l60 = alloca ptr
  %l65 = alloca i32
  %l68 = alloca i1
  %l70 = alloca i1
  %l72 = alloca ptr
  %l75 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca i32
  %l83 = alloca i32
  %l89 = alloca ptr
  %l91 = alloca %"compiler/source:Span"
  %l95 = alloca i1
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l115 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
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
  store i1 true, ptr %l16, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 102
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l20
  br label %bb3
bb3:
  %t14 = load i1, ptr %l20, !tbaa !21
  store i1 %t14, ptr %l16, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l16, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t17, ptr %l22
  br label %bb8
bb8:
  %t18 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t18, ptr %l3
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t27 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnended(ptr %v0, ptr %s0, ptr %t22, i32 %t23, ptr %l3)
  store i32 %t27, ptr %l27
  br label %bb9
bb9:
  %t28 = load i32, ptr %l27, !tbaa !23
  store i32 %t28, ptr %l4, !tbaa !23
  %t29 = load i32, ptr %l4, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  br i1 %t33, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H42e6f1efb33b8691983223fc2608e242(ptr %s0, ptr %s0, ptr %l3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t37, ptr %l33
  br label %bb13
bb13:
  %t38 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l33
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t38, ptr %l5
  br label %bb14
bb14:
  %t40 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3ccompiler_2ftypes_3aTypeId_2c_20_Hfbcf1a40cd42d1431ad3e24c7e642711(ptr %s0, ptr %l5)
  %t41 = extractvalue { i32, i32 } %t40, 1
  %t42 = extractvalue { i32, i32 } %t40, 0
  store i32 %t42, ptr %l37
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb16, label %ok.44, !prof !99
ok.44:
  store i32 %t41, ptr %l36
  br label %bb15
bb15:
  %t45 = load i32, ptr %l36, !tbaa !23
  store i32 %t45, ptr %l34, !tbaa !23
  br label %bb18
bb16:
  %t46 = load i32, ptr %l37, !tbaa !23
  %t47 = ashr i32 %t46, 16
  %t49 = icmp eq i32 %t47, 1
  store i1 %t49, ptr %l39, !tbaa !21
  br label %bb17
bb17:
  br label %bb21
bb18:
  %t50 = load i32, ptr %l34, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 102
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t53, i32 %t50, i1 true)
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb14
bb21:
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t57, ptr %l43, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 0
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l7, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t63, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l10, !tbaa !24
  br label %bb22
bb22:
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb23, label %bb24
bb23:
  br label %bb43
bb24:
  br label %bb25
bb25:
  %t77 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t77, ptr %l52, !tbaa !27
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 %t78
  %t83 = load ptr, ptr %t82, !tbaa !39
  store ptr %t83, ptr %l11, !tbaa !29
  %t85 = load ptr, ptr %l11, !tbaa !29
  %t87 = call i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v1, ptr %t85)
  store i1 %t87, ptr %l56
  br label %bb26
bb26:
  %t88 = load i1, ptr %l56, !tbaa !21
  br i1 %t88, label %bb27, label %bb28
bb27:
  br label %bb42
bb28:
  br label %bb29
bb29:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l58, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t93)
  store ptr %t95, ptr %l60
  br label %bb30
bb30:
  %t96 = load ptr, ptr %l60, !tbaa !29
  %t98 = getelementptr %"compiler/check:frame", ptr %t96, i32 0, i32 4
  %t99 = load ptr, ptr %l11, !tbaa !29
  %t101 = load ptr, ptr %l58, !tbaa !29
  %t104 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t101, ptr %t98, ptr %t99)
  store i32 %t104, ptr %l65
  br label %bb31
bb31:
  %t105 = load i32, ptr %l65, !tbaa !23
  store i32 %t105, ptr %l12, !tbaa !23
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l12, !tbaa !23
  %t110 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t106, i32 %t107)
  store i1 %t110, ptr %l68
  br label %bb32
bb32:
  %t111 = load i1, ptr %l68, !tbaa !21
  %t112 = xor i1 %t111, true
  br i1 %t112, label %bb33, label %bb34
bb33:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  store ptr %t117, ptr %l72, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  store ptr %t123, ptr %l75, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l12, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t129, i32 %t130, i32 0)
  store i32 %t133, ptr %l80
  br label %bb35
bb34:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb38
bb35:
  %t134 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t135 = load ptr, ptr %l75, !tbaa !29
  %t136 = load i32, ptr %l80, !tbaa !23
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t135, i32 %t136, i64 %t134)
  store i32 %t138, ptr %l82
  br label %bb36
bb36:
  %t139 = load ptr, ptr %l72, !tbaa !29
  %t140 = load i32, ptr %l82, !tbaa !23
  %t141 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnendedDrop(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t141, ptr %l83
  br label %bb37
bb37:
  %t142 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t143 = load i32, ptr %l83, !tbaa !23
  %t145 = icmp ne i32 %t143, %t142
  store i1 %t145, ptr %l70, !tbaa !21
  br label %bb38
bb38:
  %t147 = load i1, ptr %l70, !tbaa !21
  br i1 %t147, label %bb39, label %bb40
bb39:
  %t148 = load ptr, ptr %l11, !tbaa !29
  store ptr %t148, ptr %l7, !tbaa !29
  br label %bb43
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t150 = load i64, ptr %l9, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l9, !tbaa !24
  br label %bb22
bb43:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l89, !tbaa !29
  %t155 = load ptr, ptr %l7, !tbaa !29
  %t157 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t155)
  store %"compiler/source:Span" %t157, ptr %l91
  br label %bb44
bb44:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load i32, ptr %l4, !tbaa !23
  %t165 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t161, i32 %t162)
  store i1 %t165, ptr %l95
  br label %bb45
bb45:
  %t166 = load i1, ptr %l95, !tbaa !21
  br i1 %t166, label %bb46, label %bb47
bb46:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr %l4, !tbaa !23
  %t171 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t167, i32 %t168)
  store { i64, ptr } %t171, ptr %l99
  br label %bb48
bb47:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l4, !tbaa !23
  %t176 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t172, i32 %t173)
  store { i64, ptr } %t176, ptr %l108
  br label %bb51
bb48:
  %t177 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  %t179 = extractvalue { i64, ptr } %t177, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  store { i64, ptr } %t183, ptr %l100, !tbaa !27
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i32, ptr %l2, !tbaa !23
  %t188 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t184, i32 %t185)
  store { i64, ptr } %t188, ptr %l103
  br label %bb49
bb49:
  %t189 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  %t191 = extractvalue { i64, ptr } %t189, 1
  %t192 = mul i64 %t190, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t193, ptr %t191, i64 %t192, i1 false)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  %t196 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t198 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructTypeByValue(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t196, { i64, ptr } %t195)
  store %"compiler/diagmsg:Msg" %t198, ptr %l105
  br label %bb50
bb50:
  %t199 = load %"compiler/diagmsg:Msg", ptr %l105
  store %"compiler/diagmsg:Msg" %t199, ptr %l96
  br label %bb54
bb51:
  %t200 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l109, !tbaa !27
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l2, !tbaa !23
  %t211 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t207, i32 %t208)
  store { i64, ptr } %t211, ptr %l112
  br label %bb52
bb52:
  %t212 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  %t214 = extractvalue { i64, ptr } %t212, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t219 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t221 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCopiedHeld(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t219, { i64, ptr } %t218)
  store %"compiler/diagmsg:Msg" %t221, ptr %l114
  br label %bb53
bb53:
  %t222 = load %"compiler/diagmsg:Msg", ptr %l114
  store %"compiler/diagmsg:Msg" %t222, ptr %l96
  br label %bb54
bb54:
  %t223 = load ptr, ptr %l89, !tbaa !29
  %t224 = load %"compiler/source:Span", ptr %l91
  %t225 = load %"compiler/diagmsg:Msg", ptr %l96
  %t226 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t223, %"compiler/source:Span" %t224, %"compiler/diagmsg:Msg" %t225)
  store i64 %t226, ptr %l115
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i1
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca i64
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i1
  %l51 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca i32
  %l77 = alloca { i64, ptr }
  %l78 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l86 = alloca i32
  %l88 = alloca { i64, ptr }
  %l89 = alloca i1
  %l92 = alloca ptr
  %l95 = alloca i1
  %l97 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l104 = alloca i1
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:collWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t12, ptr %t13, i32 %a1)
  store i32 %t15, ptr %l10
  br label %bb1
bb1:
  %t16 = load i32, ptr %l10, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l11, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t20 = call ptr @__olang_scope_or(ptr %v1, ptr %t19)
  %t21 = ptrtoint ptr %t20 to i64
  %t23 = inttoptr i64 %t21 to ptr
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %t23, ptr %t24, i32 %t18)
  store i1 %t26, ptr %l14
  br label %bb2
bb2:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:collWalk", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l19
  br label %bb5
bb5:
  %t35 = load i1, ptr %l19, !tbaa !21
  store i1 %t35, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l15, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:collWalk", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t40, i32 %t41)
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l2, !tbaa !29
  store ptr %t44, ptr %l24, !tbaa !29
  %t45 = load i32, ptr %l3, !tbaa !23
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = call ptr @__olang_scope_or(ptr %v1, ptr %t46)
  %t48 = ptrtoint ptr %t47 to i64
  %t50 = inttoptr i64 %t48 to ptr
  %t51 = load ptr, ptr %l24, !tbaa !29
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t50, ptr %t51, i32 %t45)
  store i32 %t53, ptr %l27
  br label %bb11
bb11:
  %t54 = load i32, ptr %l27, !range !{i32 0, i32 33}
  store i32 %t54, ptr %l4
  %t55 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t57 = trunc i64 21 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  %t60 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t62 = trunc i64 25 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  %t65 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t67 = trunc i64 29 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb71
bb19:
  %t70 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t72 = trunc i64 20 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb34
bb22:
  %t75 = load ptr, ptr %l2, !tbaa !29
  store ptr %t75, ptr %l37, !tbaa !29
  %t76 = load i32, ptr %l3, !tbaa !23
  %t77 = load ptr, ptr %l37, !tbaa !29
  %t78 = call ptr @__olang_scope_or(ptr %v1, ptr %t77)
  %t79 = ptrtoint ptr %t78 to i64
  %t81 = inttoptr i64 %t79 to ptr
  %t82 = load ptr, ptr %l37, !tbaa !29
  %t84 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t81, ptr %t82, i32 %t76)
  store i64 %t84, ptr %l40
  br label %bb23
bb23:
  %t85 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t86 = load i64, ptr %l40, !tbaa !24
  %t88 = and i64 %t86, %t85
  %t90 = icmp ne i64 %t88, 0
  br i1 %t90, label %bb24, label %bb25
bb24:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l45, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  store ptr %t93, ptr %l46, !tbaa !29
  %t94 = load i32, ptr %l3, !tbaa !23
  %t95 = load ptr, ptr %l46, !tbaa !29
  %t96 = call ptr @__olang_scope_or(ptr %v1, ptr %t95)
  %t97 = ptrtoint ptr %t96 to i64
  %t99 = inttoptr i64 %t97 to ptr
  %t100 = load ptr, ptr %l46, !tbaa !29
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t99, ptr %t100, i32 %t94)
  store i32 %t102, ptr %l49
  br label %bb26
bb25:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb28
bb26:
  %t103 = load ptr, ptr %l45, !tbaa !29
  %t104 = load i32, ptr %l49, !tbaa !23
  %t105 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2eholds(ptr %v0, ptr %v1, ptr %t103, i32 %t104, i64 0)
  store i1 %t105, ptr %l50
  br label %bb27
bb27:
  %t106 = load i1, ptr %l50, !tbaa !21
  store i1 %t106, ptr %l44, !tbaa !21
  br label %bb28
bb28:
  %t107 = load i1, ptr %l44, !tbaa !21
  br i1 %t107, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb33
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l52, !tbaa !29
  %t109 = load ptr, ptr %l2, !tbaa !29
  store ptr %t109, ptr %l53, !tbaa !29
  %t110 = load i32, ptr %l3, !tbaa !23
  %t111 = load ptr, ptr %l53, !tbaa !29
  %t112 = call ptr @__olang_scope_or(ptr %v1, ptr %t111)
  %t113 = ptrtoint ptr %t112 to i64
  %t115 = inttoptr i64 %t113 to ptr
  %t116 = load ptr, ptr %l53, !tbaa !29
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t115, ptr %t116, i32 %t110)
  store i32 %t118, ptr %l56
  br label %bb31
bb31:
  %t119 = load ptr, ptr %l52, !tbaa !29
  %t120 = load i32, ptr %l56, !tbaa !23
  %t121 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %v0, ptr %v1, ptr %t119, i32 %t120)
  store i1 %t121, ptr %l57
  br label %bb32
bb32:
  %t122 = load i1, ptr %l57, !tbaa !21
  store i1 %t122, ptr %l51, !tbaa !21
  br label %bb33
bb33:
  %t123 = load i1, ptr %l51, !tbaa !21
  store i1 %t123, ptr %l28, !tbaa !21
  br label %bb71
bb34:
  %t124 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t126 = trunc i64 19 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l60, !tbaa !29
  %t130 = load ptr, ptr %l2, !tbaa !29
  store ptr %t130, ptr %l61, !tbaa !29
  %t131 = load i32, ptr %l3, !tbaa !23
  %t132 = load ptr, ptr %l61, !tbaa !29
  %t133 = call ptr @__olang_scope_or(ptr %v1, ptr %t132)
  %t134 = ptrtoint ptr %t133 to i64
  %t136 = inttoptr i64 %t134 to ptr
  %t137 = load ptr, ptr %l61, !tbaa !29
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t136, ptr %t137, i32 %t131)
  store i32 %t139, ptr %l64
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l60, !tbaa !29
  %t141 = load i32, ptr %l64, !tbaa !23
  %t142 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %v0, ptr %v1, ptr %t140, i32 %t141)
  store i1 %t142, ptr %l65
  br label %bb39
bb39:
  %t143 = load i1, ptr %l65, !tbaa !21
  store i1 %t143, ptr %l28, !tbaa !21
  br label %bb71
bb40:
  %t144 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t146 = trunc i64 22 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb41, label %bb42
bb41:
  br label %bb45
bb42:
  %t149 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t151 = trunc i64 23 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb49
bb45:
  store %olang.scope zeroinitializer, ptr %s5
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l70, !tbaa !29
  %t155 = load ptr, ptr %l2, !tbaa !29
  store ptr %t155, ptr %l71, !tbaa !29
  %t156 = load ptr, ptr %l2, !tbaa !29
  store ptr %t156, ptr %l72, !tbaa !29
  %t157 = load i32, ptr %l3, !tbaa !23
  %t158 = load ptr, ptr %l72, !tbaa !29
  %t159 = call ptr @__olang_scope_or(ptr %v1, ptr %t158)
  %t160 = ptrtoint ptr %t159 to i64
  %t162 = inttoptr i64 %t160 to ptr
  %t163 = load ptr, ptr %l72, !tbaa !29
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t162, ptr %t163, i32 %t157)
  store i32 %t165, ptr %l75
  br label %bb46
bb46:
  %t166 = load ptr, ptr %l71, !tbaa !29
  %t167 = call ptr @__olang_scope_or(ptr %v1, ptr %t166)
  %t168 = ptrtoint ptr %t167 to i64
  %t170 = inttoptr i64 %t168 to ptr
  %t171 = load ptr, ptr %l71, !tbaa !29
  %t172 = load i32, ptr %l75, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t170, ptr %s5, ptr %t171, i32 %t172)
  store { i64, ptr } %t173, ptr %l77
  br label %bb47
bb47:
  %t174 = load ptr, ptr %l70, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esome(ptr %v0, ptr %s5, ptr %v1, ptr %t174, { i64, ptr } %t175)
  store i1 %t176, ptr %l78
  br label %bb48
bb48:
  %t177 = load i1, ptr %l78, !tbaa !21
  store i1 %t177, ptr %l28, !tbaa !21
  call void @__olang_scope_close(ptr %s5)
  br label %bb71
bb49:
  %t178 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t180 = trunc i64 24 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb56
bb52:
  store %olang.scope zeroinitializer, ptr %s6
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l81, !tbaa !29
  %t184 = load ptr, ptr %l2, !tbaa !29
  store ptr %t184, ptr %l82, !tbaa !29
  %t185 = load ptr, ptr %l2, !tbaa !29
  store ptr %t185, ptr %l83, !tbaa !29
  %t186 = load i32, ptr %l3, !tbaa !23
  %t187 = load ptr, ptr %l83, !tbaa !29
  %t188 = call ptr @__olang_scope_or(ptr %v1, ptr %t187)
  %t189 = ptrtoint ptr %t188 to i64
  %t191 = inttoptr i64 %t189 to ptr
  %t192 = load ptr, ptr %l83, !tbaa !29
  %t194 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %t191, ptr %t192, i32 %t186)
  store i32 %t194, ptr %l86
  br label %bb53
bb53:
  %t195 = load ptr, ptr %l82, !tbaa !29
  %t196 = call ptr @__olang_scope_or(ptr %v1, ptr %t195)
  %t197 = ptrtoint ptr %t196 to i64
  %t199 = inttoptr i64 %t197 to ptr
  %t200 = load ptr, ptr %l82, !tbaa !29
  %t201 = load i32, ptr %l86, !tbaa !23
  %t202 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t199, ptr %s6, ptr %t200, i32 %t201)
  store { i64, ptr } %t202, ptr %l88
  br label %bb54
bb54:
  %t203 = load ptr, ptr %l81, !tbaa !29
  %t204 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t205 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esome(ptr %v0, ptr %s6, ptr %v1, ptr %t203, { i64, ptr } %t204)
  store i1 %t205, ptr %l89
  br label %bb55
bb55:
  %t206 = load i1, ptr %l89, !tbaa !21
  store i1 %t206, ptr %l28, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb71
bb56:
  %t207 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t209 = trunc i64 18 to i32
  %t210 = icmp eq i32 %t207, %t209
  br i1 %t210, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb66
bb59:
  store %olang.scope zeroinitializer, ptr %s7
  %t212 = load ptr, ptr %l2, !tbaa !29
  store ptr %t212, ptr %l92, !tbaa !29
  %t213 = load i32, ptr %l3, !tbaa !23
  %t214 = load ptr, ptr %l92, !tbaa !29
  %t215 = call ptr @__olang_scope_or(ptr %v1, ptr %t214)
  %t216 = ptrtoint ptr %t215 to i64
  %t218 = inttoptr i64 %t216 to ptr
  %t219 = load ptr, ptr %l92, !tbaa !29
  %t221 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %t218, ptr %t219, i32 %t213)
  store i1 %t221, ptr %l95
  br label %bb60
bb60:
  %t222 = load i1, ptr %l95, !tbaa !21
  %t223 = xor i1 %t222, true
  br i1 %t223, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb65
bb62:
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l98, !tbaa !29
  %t226 = load ptr, ptr %l2, !tbaa !29
  store ptr %t226, ptr %l99, !tbaa !29
  %t227 = load i32, ptr %l3, !tbaa !23
  %t228 = load ptr, ptr %l99, !tbaa !29
  %t229 = call ptr @__olang_scope_or(ptr %v1, ptr %t228)
  %t230 = ptrtoint ptr %t229 to i64
  %t232 = inttoptr i64 %t230 to ptr
  %t233 = load ptr, ptr %l99, !tbaa !29
  %t235 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %t232, ptr %s7, ptr %t233, i32 %t227)
  store { i64, ptr } %t235, ptr %l102
  br label %bb63
bb63:
  %t236 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 4
  %t240 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t243 = load ptr, ptr %l98, !tbaa !29
  %t245 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esome(ptr %v0, ptr %s7, ptr %v1, ptr %t243, { i64, ptr } %t242)
  store i1 %t245, ptr %l104
  br label %bb64
bb64:
  %t246 = load i1, ptr %l104, !tbaa !21
  store i1 %t246, ptr %l97, !tbaa !21
  br label %bb65
bb65:
  %t247 = load i1, ptr %l97, !tbaa !21
  store i1 %t247, ptr %l28, !tbaa !21
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_a46104116b782e24_270a9dbf173892f8)
  unreachable
bb71:
  %t248 = load i1, ptr %l28, !tbaa !21
  store i1 %t248, ptr %rv
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d30, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d31, i32 0, i32 1) })
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) })
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
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fcheck_2ehandleCall(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l24 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca i1
  %l49 = alloca i1
  %l54 = alloca ptr
  %l60 = alloca ptr
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
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
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
  store ptr %t16, ptr %l5, !tbaa !29
  br label %bb47
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 14
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l15, !tbaa !21
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
  %t36 = getelementptr %"compiler/typed:Try", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Try", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb14, label %bb15
bb13:
  store ptr null, ptr %l24, !tbaa !29
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9272b3113db2835a_2a2a8b0a39f9db7e)
  unreachable
bb15:
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Try", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call ptr @compiler_2fcheck_2ehandleCall(ptr %v0, ptr %v1, ptr %t53)
  store ptr %t55, ptr %l30
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l30, !tbaa !29
  store ptr %t56, ptr %l24, !tbaa !29
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l24, !tbaa !29
  store ptr %t57, ptr %l5, !tbaa !29
  br label %bb47
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 18}
  %t65 = icmp eq i64 %t63, 17
  store i1 %t65, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l32, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l3, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = call ptr @compiler_2fcheck_2ehandleCall(ptr %v0, ptr %v1, ptr %t73)
  store ptr %t75, ptr %l38
  br label %bb25
bb25:
  %t76 = load ptr, ptr %l38, !tbaa !29
  store ptr %t76, ptr %l5, !tbaa !29
  br label %bb47
bb26:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t81 = load ptr, ptr %l39, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 12
  store i1 %t84, ptr %l40, !tbaa !21
  br label %bb28
bb28:
  %t85 = load i1, ptr %l40, !tbaa !21
  br i1 %t85, label %bb29, label %bb30
bb29:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb31
bb30:
  br label %bb42
bb31:
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Seq", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = icmp eq ptr %t95, null
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb32, label %bb33
bb32:
  %t101 = load ptr, ptr %l4, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Seq", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = icmp eq i64 %t106, 0
  store i1 %t108, ptr %l49, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb34
bb34:
  %t110 = load i1, ptr %l49, !tbaa !21
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t111 = load ptr, ptr %l4, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Seq", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  br i1 %t116, label %bb37, label %bb38
bb36:
  store ptr null, ptr %l54, !tbaa !29
  br label %bb41
bb37:
  call void @__olang_check_failed(ptr @olang_loc_e85625530f05a4e1_e8094ee11349b825)
  unreachable
bb38:
  br label %bb39
bb39:
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Seq", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = call ptr @compiler_2fcheck_2ehandleCall(ptr %v0, ptr %v1, ptr %t121)
  store ptr %t123, ptr %l60
  br label %bb40
bb40:
  %t124 = load ptr, ptr %l60, !tbaa !29
  store ptr %t124, ptr %l54, !tbaa !29
  br label %bb41
bb41:
  %t125 = load ptr, ptr %l54, !tbaa !29
  store ptr %t125, ptr %l5, !tbaa !29
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_fd7989cc94cf1ac3_95016419ffbfbd17)
  unreachable
bb47:
  %t126 = load ptr, ptr %l5, !tbaa !29
  store ptr %t126, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2eintFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:litv"
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i128
  %l5 = alloca i64
  %l8 = alloca i64
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i128
  %l29 = alloca i128
  %l32 = alloca i1
  %l41 = alloca i1
  %l48 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i64
  %l64 = alloca i1
  %l66 = alloca i64
  %l76 = alloca i64
  %l82 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/check:litv" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 6
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = icmp sle i64 %t10, 64
  br i1 %t12, label %bb4, label %bb5
bb3:
  br label %bb20
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l15
  br label %bb7
bb7:
  %t20 = load i1, ptr %l15, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 7
  %t22 = load i1, ptr %t21, !tbaa !21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb10, label %bb11
bb9:
  br label %bb16
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = icmp eq i64 %t26, 128
  br i1 %t28, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb15
bb12:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  %t30 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 8
  %t31 = load i128, ptr %t30
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = sext i64 %t32 to i128
  store i128 %t34, ptr %l24
  %t35 = load i128, ptr %l24
  %t36 = load i128, ptr %l24
  %t37 = shl i128 1, %t36
  %t40 = icmp ult i128 %t31, %t37
  store i1 %t40, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l21, !tbaa !21
  store i1 %t42, ptr %l18, !tbaa !21
  br label %bb15
bb15:
  %t43 = load i1, ptr %l18, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
bb16:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = sub i64 %t44, 1
  %t48 = sext i64 %t46 to i128
  store i128 %t48, ptr %l29
  %t49 = load i128, ptr %l29
  %t50 = load i128, ptr %l29
  %t51 = shl i128 1, %t50
  store i128 %t51, ptr %l4
  %t53 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 7
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t56 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 8
  %t57 = load i128, ptr %t56
  %t58 = load i128, ptr %l4
  %t61 = icmp ule i128 %t57, %t58
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb19
bb18:
  %t63 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 8
  %t64 = load i128, ptr %t63
  %t65 = load i128, ptr %l4
  %t68 = icmp ult i128 %t64, %t65
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t70 = load i1, ptr %l32, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
bb20:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t71, i32 %t72)
  store i1 %t75, ptr %l41
  br label %bb21
bb21:
  %t76 = load i1, ptr %l41, !tbaa !21
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t77 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 2
  %t78 = load i1, ptr %t77, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb23:
  br label %bb45
bb24:
  %t80 = load i64, ptr %l3, !tbaa !24
  %t82 = icmp sge i64 %t80, 64
  store i1 %t82, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t84 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 5
  %t85 = load i1, ptr %t84, !tbaa !21
  br i1 %t85, label %bb27, label %bb28
bb27:
  %t87 = load i64, ptr %l3, !tbaa !24
  %t89 = icmp sge i64 %t87, 64
  br i1 %t89, label %bb29, label %bb30
bb28:
  br label %bb38
bb29:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb37
bb30:
  %t91 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = icmp sge i64 %t92, 0
  br i1 %t94, label %bb31, label %bb32
bb31:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = icmp eq i64 %t96, 63
  br i1 %t98, label %bb33, label %bb34
bb32:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb36
bb33:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb35
bb34:
  %t100 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load i64, ptr %l3, !tbaa !24
  store i64 %t102, ptr %l56, !tbaa !24
  %t103 = load i64, ptr %l56, !tbaa !24
  %t104 = load i64, ptr %l56, !tbaa !24
  %t105 = shl i64 1, %t104
  %t108 = icmp slt i64 %t101, %t105
  store i1 %t108, ptr %l54, !tbaa !21
  br label %bb35
bb35:
  %t110 = load i1, ptr %l54, !tbaa !21
  store i1 %t110, ptr %l51, !tbaa !21
  br label %bb36
bb36:
  %t111 = load i1, ptr %l51, !tbaa !21
  store i1 %t111, ptr %l48, !tbaa !21
  br label %bb37
bb37:
  %t112 = load i1, ptr %l48, !tbaa !21
  store i1 %t112, ptr %rv
  br label %ret
bb38:
  %t113 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t114 = load i64, ptr %t113, !tbaa !24
  %t116 = icmp slt i64 %t114, 0
  br i1 %t116, label %bb39, label %bb40
bb39:
  store i1 false, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t119 = load i64, ptr %l3, !tbaa !24
  %t121 = icmp sge i64 %t119, 63
  br i1 %t121, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb44
bb43:
  %t123 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t124 = load i64, ptr %t123, !tbaa !24
  %t125 = load i64, ptr %l3, !tbaa !24
  store i64 %t125, ptr %l66, !tbaa !24
  %t126 = load i64, ptr %l66, !tbaa !24
  %t127 = load i64, ptr %l66, !tbaa !24
  %t128 = shl i64 1, %t127
  %t131 = icmp slt i64 %t124, %t128
  store i1 %t131, ptr %l64, !tbaa !21
  br label %bb44
bb44:
  %t133 = load i1, ptr %l64, !tbaa !21
  store i1 %t133, ptr %rv
  br label %ret
bb45:
  %t134 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 2
  %t135 = load i1, ptr %t134, !tbaa !21
  br i1 %t135, label %bb46, label %bb47
bb46:
  %t137 = load i64, ptr %l3, !tbaa !24
  %t139 = icmp sgt i64 %t137, 64
  store i1 %t139, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t141 = load i64, ptr %l3, !tbaa !24
  %t143 = icmp sge i64 %t141, 64
  br i1 %t143, label %bb49, label %bb50
bb49:
  store i1 true, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t146 = load i64, ptr %l3, !tbaa !24
  %t148 = sub i64 %t146, 1
  store i64 %t148, ptr %l76, !tbaa !24
  %t149 = load i64, ptr %l76, !tbaa !24
  %t150 = load i64, ptr %l76, !tbaa !24
  %t151 = shl i64 1, %t150
  store i64 %t151, ptr %l5, !tbaa !24
  %t153 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t154 = load i64, ptr %t153, !tbaa !24
  %t155 = load i64, ptr %l5, !tbaa !24
  %t157 = sub i64 0, %t155
  %t160 = icmp sge i64 %t154, %t157
  br i1 %t160, label %bb52, label %bb53
bb52:
  %t162 = getelementptr %"compiler/check:litv", ptr %l1, i32 0, i32 3
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = load i64, ptr %l5, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  store i1 %t167, ptr %l82, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb54
bb54:
  %t169 = load i1, ptr %l82, !tbaa !21
  store i1 %t169, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2einvokedCallee(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 5}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l6, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_db94e874d036c6ef_7db06dea6929eb03)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca i8
  %l39 = alloca { i64, ptr }
  %l42 = alloca i8
  %l43 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
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
  store i64 0, ptr %l14, !tbaa !24
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
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  store ptr %l1, ptr %l35, !tbaa !29
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t57, ptr %l39, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i8, ptr %t61, i64 %t58
  %t63 = load i8, ptr %t62, !tbaa !32
  %t65 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t63)
  store i8 %t65, ptr %l42
  br label %bb14
bb13:
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t66, ptr %l43, !tbaa !27
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  store i8 %t72, ptr %l38, !tbaa !22
  br label %bb15
bb14:
  %t74 = load i8, ptr %l42, !tbaa !22
  store i8 %t74, ptr %l38, !tbaa !22
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l35, !tbaa !29
  %t76 = load i8, ptr %l38, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t75, i8 %t76)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  %t82 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t82, ptr %l49
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i1 @compiler_2fcheck_2epurePlace(ptr %v0, ptr %t16)
  store i1 %t18, ptr %l10
  br label %bb6
bb6:
  %t19 = load i1, ptr %l10, !tbaa !21
  store i1 %t19, ptr %l2, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_327c34393f585585_f16c5fd873651789)
  unreachable
bb12:
  %t20 = load i1, ptr %l2, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp ne i64 %t3, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb9
bb6:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l22, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l22, !tbaa !24
  store i64 %t42, ptr %l19, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l19, !tbaa !24
  store i64 %t43, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb11, label %bb12
bb11:
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t52 = load i64, ptr %l2, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l7, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t62, ptr %l40, !tbaa !27
  %t63 = load i64, ptr %l7, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t69, ptr %l43, !tbaa !27
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i32, ptr %t73, i64 %t70
  %t75 = load i32, ptr %t74, !tbaa !33
  %t78 = icmp ne i32 %t68, %t75
  br i1 %t78, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l6, !tbaa !24
  br label %bb10
bb18:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32 }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = icmp eq i32 %t31, %t32
  store i1 %t35, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_66c871427796c5ad_be34307b05f1da91)
  unreachable
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l25, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 30}
  %t45 = icmp eq i64 %t43, 14
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t55, i32 0, i32 2
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l5, !tbaa !23
  br label %bb21
bb20:
  br label %bb36
bb21:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 30}
  %t66 = icmp eq i64 %t64, 14
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t70, i32 0, i32 1
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l6, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t76, i32 0, i32 2
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l7, !tbaa !23
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t80 = load i32, ptr %l5, !tbaa !23
  %t81 = load i32, ptr %l7, !tbaa !23
  %t84 = icmp eq i32 %t80, %t81
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t87 = load ptr, ptr %l6, !tbaa !29
  %t90 = call i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %t86, ptr %t87)
  store i1 %t90, ptr %l47
  br label %bb29
bb28:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb30
bb29:
  %t91 = load i1, ptr %l47, !tbaa !21
  store i1 %t91, ptr %l44, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l44, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_d1a78098b058e5fc_3c3cd5596d56fa00)
  unreachable
bb36:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t95 = load ptr, ptr %l49, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb37, label %bb38
bb37:
  %t98 = load ptr, ptr %l49, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 30}
  %t101 = icmp eq i64 %t99, 2
  store i1 %t101, ptr %l50, !tbaa !21
  br label %bb38
bb38:
  %t102 = load i1, ptr %l50, !tbaa !21
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", ptr }, ptr %t105, i32 0, i32 1
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l8, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t109 = load ptr, ptr %l8, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t113 = call i1 @compiler_2fcheck_2esameRead(ptr %v0, ptr %v1, ptr %t109, ptr %t110)
  store i1 %t113, ptr %l57
  br label %bb42
bb42:
  %t114 = load i1, ptr %l57, !tbaa !21
  store i1 %t114, ptr %rv
  br label %ret
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i1 false, ptr %rv
  br label %ret
bb47:
  call void @__olang_check_failed(ptr @olang_loc_e46b3fa1946bcbb7_3b47270341ec1d7b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l51 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l72 = alloca i1
  %l73 = alloca i1
  %l77 = alloca i1
  %l78 = alloca i1
  %l82 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca i1
  %l97 = alloca { i64, ptr }
  %l102 = alloca i1
  %l103 = alloca i1
  %l107 = alloca i1
  %l114 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l126 = alloca i1
  %l127 = alloca i1
  %l130 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca i1
  %l139 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l154 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l174 = alloca i1
  %l175 = alloca i1
  %l178 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca i1
  %l189 = alloca i1
  %l190 = alloca i1
  %l194 = alloca i1
  %l195 = alloca i1
  %l200 = alloca i1
  %l201 = alloca i1
  %l205 = alloca i1
  %l206 = alloca ptr
  %l207 = alloca i1
  %l216 = alloca i1
  %l217 = alloca i1
  %l221 = alloca i1
  %l222 = alloca i1
  %l226 = alloca i1
  %l227 = alloca ptr
  %l228 = alloca i1
  %l235 = alloca i1
  %l236 = alloca ptr
  %l237 = alloca i1
  %l244 = alloca i1
  %l245 = alloca ptr
  %l246 = alloca i1
  %l254 = alloca i1
  %l255 = alloca ptr
  %l256 = alloca i1
  %l263 = alloca i1
  %l264 = alloca ptr
  %l265 = alloca i1
  %l275 = alloca i1
  %l276 = alloca i1
  %l279 = alloca i1
  %l280 = alloca ptr
  %l281 = alloca i1
  %l285 = alloca ptr
  %l286 = alloca i1
  %l294 = alloca i1
  %l295 = alloca i1
  %l299 = alloca i1
  %l300 = alloca ptr
  %l301 = alloca i1
  %l309 = alloca i1
  %l310 = alloca ptr
  %l311 = alloca i1
  %l325 = alloca { i64, ptr }
  %l330 = alloca i1
  %l331 = alloca i1
  %l335 = alloca i1
  %l342 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t7 = load ptr, ptr %l36, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l36, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 22}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l37, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l37, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb12
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t22 = load ptr, ptr %l42, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l42, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 22}
  %t28 = icmp eq i64 %t26, 21
  store i1 %t28, ptr %l43, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l43, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", ptr }, ptr %t32, i32 0, i32 1
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t41 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t36, { i64, ptr } %t38)
  store i1 %t41, ptr %l51
  br label %bb13
bb13:
  %t42 = load i1, ptr %l51, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t44 = load ptr, ptr %l52, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l52, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 22}
  %t50 = icmp eq i64 %t48, 1
  store i1 %t50, ptr %l53, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l53, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", ptr }, ptr %t54, i32 0, i32 1
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l3, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/ast:VarDecl", ptr %t58, i32 0, i32 3
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t65 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t61, { i64, ptr } %t62)
  store i1 %t65, ptr %l61
  br label %bb20
bb20:
  %t66 = load i1, ptr %l61, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t68 = load ptr, ptr %l62, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l62, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 22}
  %t74 = icmp eq i64 %t72, 3
  store i1 %t74, ptr %l63, !tbaa !21
  br label %bb23
bb23:
  %t75 = load i1, ptr %l63, !tbaa !21
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l4, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t84, i32 0, i32 3
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb36
bb26:
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t92 = call i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %t88, { i64, ptr } %t89)
  store i1 %t92, ptr %l72
  br label %bb27
bb27:
  %t93 = load i1, ptr %l72, !tbaa !21
  br i1 %t93, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb31
bb29:
  %t94 = load ptr, ptr %l4, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t99 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t94, { i64, ptr } %t96)
  store i1 %t99, ptr %l77
  br label %bb30
bb30:
  %t100 = load i1, ptr %l77, !tbaa !21
  store i1 %t100, ptr %l73, !tbaa !21
  br label %bb31
bb31:
  %t101 = load i1, ptr %l73, !tbaa !21
  br i1 %t101, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb35
bb33:
  %t102 = load ptr, ptr %l5, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t107 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t102, { i64, ptr } %t104)
  store i1 %t107, ptr %l82
  br label %bb34
bb34:
  %t108 = load i1, ptr %l82, !tbaa !21
  store i1 %t108, ptr %l78, !tbaa !21
  br label %bb35
bb35:
  %t109 = load i1, ptr %l78, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
bb36:
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t111 = load ptr, ptr %l83, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb37, label %bb38
bb37:
  %t114 = load ptr, ptr %l83, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 22}
  %t117 = icmp eq i64 %t115, 2
  store i1 %t117, ptr %l84, !tbaa !21
  br label %bb38
bb38:
  %t118 = load i1, ptr %l84, !tbaa !21
  br i1 %t118, label %bb39, label %bb40
bb39:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", ptr }, ptr %t121, i32 0, i32 1
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l6, !tbaa !29
  br label %bb41
bb40:
  br label %bb57
bb41:
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t127 = getelementptr %"compiler/ast:Multi", ptr %t125, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l9, !tbaa !24
  br label %bb42
bb42:
  %t134 = load i64, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l9, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb43, label %bb44
bb43:
  br label %bb55
bb44:
  br label %bb45
bb45:
  %t142 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t142, ptr %l97, !tbaa !27
  %t143 = load i64, ptr %l8, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr ptr, ptr %t146, i64 %t143
  %t148 = load ptr, ptr %t147, !tbaa !39
  store ptr %t148, ptr %l10, !tbaa !29
  %t150 = load ptr, ptr %l10, !tbaa !29
  %t151 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t154 = call i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %t150, { i64, ptr } %t151)
  store i1 %t154, ptr %l102
  br label %bb46
bb46:
  %t155 = load i1, ptr %l102, !tbaa !21
  br i1 %t155, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb50
bb48:
  %t156 = load ptr, ptr %l10, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t161 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t156, { i64, ptr } %t158)
  store i1 %t161, ptr %l107
  br label %bb49
bb49:
  %t162 = load i1, ptr %l107, !tbaa !21
  store i1 %t162, ptr %l103, !tbaa !21
  br label %bb50
bb50:
  %t163 = load i1, ptr %l103, !tbaa !21
  br i1 %t163, label %bb51, label %bb52
bb51:
  store i1 true, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l8, !tbaa !24
  br label %bb42
bb55:
  %t169 = load ptr, ptr %l6, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Multi", ptr %t169, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t173 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t176 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t172, { i64, ptr } %t173)
  store i1 %t176, ptr %l114
  br label %bb56
bb56:
  %t177 = load i1, ptr %l114, !tbaa !21
  store i1 %t177, ptr %rv
  br label %ret
bb57:
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t179 = load ptr, ptr %l115, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb58, label %bb59
bb58:
  %t182 = load ptr, ptr %l115, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 22}
  %t185 = icmp eq i64 %t183, 4
  store i1 %t185, ptr %l116, !tbaa !21
  br label %bb59
bb59:
  %t186 = load i1, ptr %l116, !tbaa !21
  br i1 %t186, label %bb60, label %bb61
bb60:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr { i64, [4 x i64] }, ptr %t187, i32 0, i32 1
  %t190 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t189, i32 0, i32 1
  %t191 = load ptr, ptr %t190
  store ptr %t191, ptr %l11, !tbaa !29
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t195, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %t196
  store { i64, ptr } %t197, ptr %l12, !tbaa !27
  br label %bb62
bb61:
  br label %bb68
bb62:
  %t199 = load ptr, ptr %l11, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t204 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %t199, { i64, ptr } %t201)
  store i1 %t204, ptr %l126
  br label %bb63
bb63:
  %t205 = load i1, ptr %l126, !tbaa !21
  br i1 %t205, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb67
bb65:
  %t206 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t207 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t210 = call i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %t206, { i64, ptr } %t207)
  store i1 %t210, ptr %l130
  br label %bb66
bb66:
  %t211 = load i1, ptr %l130, !tbaa !21
  store i1 %t211, ptr %l127, !tbaa !21
  br label %bb67
bb67:
  %t212 = load i1, ptr %l127, !tbaa !21
  store i1 %t212, ptr %rv
  br label %ret
bb68:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t214 = load ptr, ptr %l131, !tbaa !29
  %t215 = icmp ne ptr %t214, null
  br i1 %t215, label %bb69, label %bb70
bb69:
  %t217 = load ptr, ptr %l131, !tbaa !29
  %t218 = load i64, ptr %t217, !range !{i64 0, i64 22}
  %t220 = icmp eq i64 %t218, 5
  store i1 %t220, ptr %l132, !tbaa !21
  br label %bb70
bb70:
  %t221 = load i1, ptr %l132, !tbaa !21
  br i1 %t221, label %bb71, label %bb72
bb71:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", ptr }, ptr %t224, i32 0, i32 1
  %t226 = load ptr, ptr %t225
  store ptr %t226, ptr %l13, !tbaa !29
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t228 = load ptr, ptr %l13, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t232 = call i1 @compiler_2fcheck_2eifAssigns(ptr %v0, ptr %v1, ptr %t228, { i64, ptr } %t229)
  store i1 %t232, ptr %l139
  br label %bb74
bb74:
  %t233 = load i1, ptr %l139, !tbaa !21
  store i1 %t233, ptr %rv
  br label %ret
bb75:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t235 = load ptr, ptr %l140, !tbaa !29
  %t236 = icmp ne ptr %t235, null
  br i1 %t236, label %bb76, label %bb77
bb76:
  %t238 = load ptr, ptr %l140, !tbaa !29
  %t239 = load i64, ptr %t238, !range !{i64 0, i64 22}
  %t241 = icmp eq i64 %t239, 6
  store i1 %t241, ptr %l141, !tbaa !21
  br label %bb77
bb77:
  %t242 = load i1, ptr %l141, !tbaa !21
  br i1 %t242, label %bb78, label %bb79
bb78:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr { i64, [4 x i64] }, ptr %t243, i32 0, i32 1
  %t246 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t245, i32 0, i32 1
  %t247 = load { i64, ptr }, ptr %t246
  store { i64, ptr } %t247, ptr %l14, !tbaa !27
  br label %bb84
bb79:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t250 = load ptr, ptr %l146, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb80, label %bb81
bb80:
  %t253 = load ptr, ptr %l146, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 22}
  %t256 = icmp eq i64 %t254, 20
  store i1 %t256, ptr %l147, !tbaa !21
  br label %bb81
bb81:
  %t257 = load i1, ptr %l147, !tbaa !21
  br i1 %t257, label %bb82, label %bb83
bb82:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t260, i32 0, i32 1
  %t262 = load { i64, ptr }, ptr %t261
  store { i64, ptr } %t262, ptr %l14, !tbaa !27
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t264 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t268 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t264, { i64, ptr } %t265)
  store i1 %t268, ptr %l154
  br label %bb85
bb85:
  %t269 = load i1, ptr %l154, !tbaa !21
  store i1 %t269, ptr %rv
  br label %ret
bb86:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t271 = load ptr, ptr %l155, !tbaa !29
  %t272 = icmp ne ptr %t271, null
  br i1 %t272, label %bb87, label %bb88
bb87:
  %t274 = load ptr, ptr %l155, !tbaa !29
  %t275 = load i64, ptr %t274, !range !{i64 0, i64 22}
  %t277 = icmp eq i64 %t275, 7
  store i1 %t277, ptr %l156, !tbaa !21
  br label %bb88
bb88:
  %t278 = load i1, ptr %l156, !tbaa !21
  br i1 %t278, label %bb89, label %bb90
bb89:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t281, i32 0, i32 1
  %t283 = load ptr, ptr %t282
  store ptr %t283, ptr %l15, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr { i64, [4 x i64] }, ptr %t285, i32 0, i32 1
  %t288 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t287, i32 0, i32 2
  %t289 = load { i64, ptr }, ptr %t288
  store { i64, ptr } %t289, ptr %l16, !tbaa !27
  br label %bb95
bb90:
  %t291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t291, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t292 = load ptr, ptr %l163, !tbaa !29
  %t293 = icmp ne ptr %t292, null
  br i1 %t293, label %bb91, label %bb92
bb91:
  %t295 = load ptr, ptr %l163, !tbaa !29
  %t296 = load i64, ptr %t295, !range !{i64 0, i64 22}
  %t298 = icmp eq i64 %t296, 10
  store i1 %t298, ptr %l164, !tbaa !21
  br label %bb92
bb92:
  %t299 = load i1, ptr %l164, !tbaa !21
  br i1 %t299, label %bb93, label %bb94
bb93:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr { i64, [4 x i64] }, ptr %t300, i32 0, i32 1
  %t303 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t302, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303
  store { i64, ptr } %t304, ptr %l16, !tbaa !27
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr { i64, [4 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t308, i32 0, i32 2
  %t310 = load ptr, ptr %t309
  store ptr %t310, ptr %l15, !tbaa !29
  br label %bb95
bb94:
  br label %bb101
bb95:
  %t312 = load ptr, ptr %l15, !tbaa !29
  %t314 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t317 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t312, { i64, ptr } %t314)
  store i1 %t317, ptr %l174
  br label %bb96
bb96:
  %t318 = load i1, ptr %l174, !tbaa !21
  br i1 %t318, label %bb97, label %bb98
bb97:
  store i1 true, ptr %l175, !tbaa !21
  br label %bb100
bb98:
  %t319 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t323 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t319, { i64, ptr } %t320)
  store i1 %t323, ptr %l178
  br label %bb99
bb99:
  %t324 = load i1, ptr %l178, !tbaa !21
  store i1 %t324, ptr %l175, !tbaa !21
  br label %bb100
bb100:
  %t325 = load i1, ptr %l175, !tbaa !21
  store i1 %t325, ptr %rv
  br label %ret
bb101:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t327 = load ptr, ptr %l179, !tbaa !29
  %t328 = icmp ne ptr %t327, null
  br i1 %t328, label %bb102, label %bb103
bb102:
  %t330 = load ptr, ptr %l179, !tbaa !29
  %t331 = load i64, ptr %t330, !range !{i64 0, i64 22}
  %t333 = icmp eq i64 %t331, 8
  store i1 %t333, ptr %l180, !tbaa !21
  br label %bb103
bb103:
  %t334 = load i1, ptr %l180, !tbaa !21
  br i1 %t334, label %bb104, label %bb105
bb104:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr { i64, [4 x i64] }, ptr %t335, i32 0, i32 1
  %t338 = getelementptr { %"compiler/source:Span", ptr }, ptr %t337, i32 0, i32 1
  %t339 = load ptr, ptr %t338
  store ptr %t339, ptr %l17, !tbaa !29
  br label %bb106
bb105:
  br label %bb120
bb106:
  %t341 = load ptr, ptr %l17, !tbaa !29
  %t343 = getelementptr %"compiler/ast:For3", ptr %t341, i32 0, i32 0
  %t344 = load ptr, ptr %t343, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t349 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %t344, { i64, ptr } %t346)
  store i1 %t349, ptr %l189
  br label %bb107
bb107:
  %t350 = load i1, ptr %l189, !tbaa !21
  br i1 %t350, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l190, !tbaa !21
  br label %bb111
bb109:
  %t351 = load ptr, ptr %l17, !tbaa !29
  %t353 = getelementptr %"compiler/ast:For3", ptr %t351, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !29
  %t355 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t358 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t354, { i64, ptr } %t355)
  store i1 %t358, ptr %l194
  br label %bb110
bb110:
  %t359 = load i1, ptr %l194, !tbaa !21
  store i1 %t359, ptr %l190, !tbaa !21
  br label %bb111
bb111:
  %t360 = load i1, ptr %l190, !tbaa !21
  br i1 %t360, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l195, !tbaa !21
  br label %bb115
bb113:
  %t361 = load ptr, ptr %l17, !tbaa !29
  %t363 = getelementptr %"compiler/ast:For3", ptr %t361, i32 0, i32 2
  %t364 = load ptr, ptr %t363, !tbaa !29
  %t366 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t369 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %t364, { i64, ptr } %t366)
  store i1 %t369, ptr %l200
  br label %bb114
bb114:
  %t370 = load i1, ptr %l200, !tbaa !21
  store i1 %t370, ptr %l195, !tbaa !21
  br label %bb115
bb115:
  %t371 = load i1, ptr %l195, !tbaa !21
  br i1 %t371, label %bb116, label %bb117
bb116:
  store i1 true, ptr %l201, !tbaa !21
  br label %bb119
bb117:
  %t372 = load ptr, ptr %l17, !tbaa !29
  %t374 = getelementptr %"compiler/ast:For3", ptr %t372, i32 0, i32 3
  %t375 = load { i64, ptr }, ptr %t374, !tbaa !27
  %t376 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t379 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t375, { i64, ptr } %t376)
  store i1 %t379, ptr %l205
  br label %bb118
bb118:
  %t380 = load i1, ptr %l205, !tbaa !21
  store i1 %t380, ptr %l201, !tbaa !21
  br label %bb119
bb119:
  %t381 = load i1, ptr %l201, !tbaa !21
  store i1 %t381, ptr %rv
  br label %ret
bb120:
  %t382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t382, ptr %l206, !tbaa !29
  store i1 false, ptr %l207, !tbaa !21
  %t383 = load ptr, ptr %l206, !tbaa !29
  %t384 = icmp ne ptr %t383, null
  br i1 %t384, label %bb121, label %bb122
bb121:
  %t386 = load ptr, ptr %l206, !tbaa !29
  %t387 = load i64, ptr %t386, !range !{i64 0, i64 22}
  %t389 = icmp eq i64 %t387, 9
  store i1 %t389, ptr %l207, !tbaa !21
  br label %bb122
bb122:
  %t390 = load i1, ptr %l207, !tbaa !21
  br i1 %t390, label %bb123, label %bb124
bb123:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr { i64, [4 x i64] }, ptr %t391, i32 0, i32 1
  %t394 = getelementptr { %"compiler/source:Span", ptr }, ptr %t393, i32 0, i32 1
  %t395 = load ptr, ptr %t394
  store ptr %t395, ptr %l18, !tbaa !29
  br label %bb125
bb124:
  br label %bb135
bb125:
  %t397 = load ptr, ptr %l18, !tbaa !29
  %t399 = getelementptr %"compiler/ast:ForIn", ptr %t397, i32 0, i32 2
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t405 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t400, { i64, ptr } %t402)
  store i1 %t405, ptr %l216
  br label %bb126
bb126:
  %t406 = load i1, ptr %l216, !tbaa !21
  br i1 %t406, label %bb127, label %bb128
bb127:
  store i1 true, ptr %l217, !tbaa !21
  br label %bb130
bb128:
  %t407 = load ptr, ptr %l18, !tbaa !29
  %t409 = getelementptr %"compiler/ast:ForIn", ptr %t407, i32 0, i32 4
  %t410 = load { i64, ptr }, ptr %t409, !tbaa !27
  %t411 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t414 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t410, { i64, ptr } %t411)
  store i1 %t414, ptr %l221
  br label %bb129
bb129:
  %t415 = load i1, ptr %l221, !tbaa !21
  store i1 %t415, ptr %l217, !tbaa !21
  br label %bb130
bb130:
  %t416 = load i1, ptr %l217, !tbaa !21
  br i1 %t416, label %bb131, label %bb132
bb131:
  store i1 true, ptr %l222, !tbaa !21
  br label %bb134
bb132:
  %t417 = load ptr, ptr %l18, !tbaa !29
  %t419 = getelementptr %"compiler/ast:ForIn", ptr %t417, i32 0, i32 5
  %t420 = load { i64, ptr }, ptr %t419, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t424 = call i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %t420, { i64, ptr } %t421)
  store i1 %t424, ptr %l226
  br label %bb133
bb133:
  %t425 = load i1, ptr %l226, !tbaa !21
  store i1 %t425, ptr %l222, !tbaa !21
  br label %bb134
bb134:
  %t426 = load i1, ptr %l222, !tbaa !21
  store i1 %t426, ptr %rv
  br label %ret
bb135:
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l227, !tbaa !29
  store i1 false, ptr %l228, !tbaa !21
  %t428 = load ptr, ptr %l227, !tbaa !29
  %t429 = icmp ne ptr %t428, null
  br i1 %t429, label %bb136, label %bb137
bb136:
  %t431 = load ptr, ptr %l227, !tbaa !29
  %t432 = load i64, ptr %t431, !range !{i64 0, i64 22}
  %t434 = icmp eq i64 %t432, 11
  store i1 %t434, ptr %l228, !tbaa !21
  br label %bb137
bb137:
  %t435 = load i1, ptr %l228, !tbaa !21
  br i1 %t435, label %bb138, label %bb139
bb138:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr { i64, [4 x i64] }, ptr %t436, i32 0, i32 1
  %t439 = getelementptr { %"compiler/source:Span", ptr }, ptr %t438, i32 0, i32 1
  %t440 = load ptr, ptr %t439
  store ptr %t440, ptr %l19, !tbaa !29
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t442 = load ptr, ptr %l19, !tbaa !29
  %t443 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t446 = call i1 @compiler_2fcheck_2ematchAssigns(ptr %v0, ptr %v1, ptr %t442, { i64, ptr } %t443)
  store i1 %t446, ptr %l235
  br label %bb141
bb141:
  %t447 = load i1, ptr %l235, !tbaa !21
  store i1 %t447, ptr %rv
  br label %ret
bb142:
  %t448 = load ptr, ptr %l0, !tbaa !29
  store ptr %t448, ptr %l236, !tbaa !29
  store i1 false, ptr %l237, !tbaa !21
  %t449 = load ptr, ptr %l236, !tbaa !29
  %t450 = icmp ne ptr %t449, null
  br i1 %t450, label %bb143, label %bb144
bb143:
  %t452 = load ptr, ptr %l236, !tbaa !29
  %t453 = load i64, ptr %t452, !range !{i64 0, i64 22}
  %t455 = icmp eq i64 %t453, 12
  store i1 %t455, ptr %l237, !tbaa !21
  br label %bb144
bb144:
  %t456 = load i1, ptr %l237, !tbaa !21
  br i1 %t456, label %bb145, label %bb146
bb145:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr { i64, [4 x i64] }, ptr %t457, i32 0, i32 1
  %t460 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t459, i32 0, i32 1
  %t461 = load { i64, ptr }, ptr %t460
  store { i64, ptr } %t461, ptr %l20, !tbaa !27
  br label %bb147
bb146:
  br label %bb149
bb147:
  %t463 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t464 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t467 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t463, { i64, ptr } %t464)
  store i1 %t467, ptr %l244
  br label %bb148
bb148:
  %t468 = load i1, ptr %l244, !tbaa !21
  store i1 %t468, ptr %rv
  br label %ret
bb149:
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l245, !tbaa !29
  store i1 false, ptr %l246, !tbaa !21
  %t470 = load ptr, ptr %l245, !tbaa !29
  %t471 = icmp ne ptr %t470, null
  br i1 %t471, label %bb150, label %bb151
bb150:
  %t473 = load ptr, ptr %l245, !tbaa !29
  %t474 = load i64, ptr %t473, !range !{i64 0, i64 22}
  %t476 = icmp eq i64 %t474, 15
  store i1 %t476, ptr %l246, !tbaa !21
  br label %bb151
bb151:
  %t477 = load i1, ptr %l246, !tbaa !21
  br i1 %t477, label %bb152, label %bb153
bb152:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr { i64, [4 x i64] }, ptr %t478, i32 0, i32 1
  %t481 = getelementptr { %"compiler/source:Span", ptr }, ptr %t480, i32 0, i32 1
  %t482 = load ptr, ptr %t481
  store ptr %t482, ptr %l21, !tbaa !29
  br label %bb154
bb153:
  br label %bb156
bb154:
  %t484 = load ptr, ptr %l21, !tbaa !29
  %t486 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t489 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t484, { i64, ptr } %t486)
  store i1 %t489, ptr %l254
  br label %bb155
bb155:
  %t490 = load i1, ptr %l254, !tbaa !21
  store i1 %t490, ptr %rv
  br label %ret
bb156:
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l255, !tbaa !29
  store i1 false, ptr %l256, !tbaa !21
  %t492 = load ptr, ptr %l255, !tbaa !29
  %t493 = icmp ne ptr %t492, null
  br i1 %t493, label %bb157, label %bb158
bb157:
  %t495 = load ptr, ptr %l255, !tbaa !29
  %t496 = load i64, ptr %t495, !range !{i64 0, i64 22}
  %t498 = icmp eq i64 %t496, 13
  store i1 %t498, ptr %l256, !tbaa !21
  br label %bb158
bb158:
  %t499 = load i1, ptr %l256, !tbaa !21
  br i1 %t499, label %bb159, label %bb160
bb159:
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t502 = getelementptr { i64, [4 x i64] }, ptr %t500, i32 0, i32 1
  %t503 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t502, i32 0, i32 2
  %t504 = load ptr, ptr %t503
  store ptr %t504, ptr %l22, !tbaa !29
  br label %bb161
bb160:
  br label %bb163
bb161:
  %t506 = load ptr, ptr %l22, !tbaa !29
  %t507 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t510 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t506, { i64, ptr } %t507)
  store i1 %t510, ptr %l263
  br label %bb162
bb162:
  %t511 = load i1, ptr %l263, !tbaa !21
  store i1 %t511, ptr %rv
  br label %ret
bb163:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l264, !tbaa !29
  store i1 false, ptr %l265, !tbaa !21
  %t513 = load ptr, ptr %l264, !tbaa !29
  %t514 = icmp ne ptr %t513, null
  br i1 %t514, label %bb164, label %bb165
bb164:
  %t516 = load ptr, ptr %l264, !tbaa !29
  %t517 = load i64, ptr %t516, !range !{i64 0, i64 22}
  %t519 = icmp eq i64 %t517, 14
  store i1 %t519, ptr %l265, !tbaa !21
  br label %bb165
bb165:
  %t520 = load i1, ptr %l265, !tbaa !21
  br i1 %t520, label %bb166, label %bb167
bb166:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr { i64, [4 x i64] }, ptr %t521, i32 0, i32 1
  %t524 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t523, i32 0, i32 1
  %t525 = load ptr, ptr %t524
  store ptr %t525, ptr %l23, !tbaa !29
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr { i64, [4 x i64] }, ptr %t527, i32 0, i32 1
  %t530 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t529, i32 0, i32 2
  %t531 = load ptr, ptr %t530
  store ptr %t531, ptr %l24, !tbaa !29
  br label %bb168
bb167:
  br label %bb174
bb168:
  %t533 = load ptr, ptr %l23, !tbaa !29
  %t535 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t538 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t533, { i64, ptr } %t535)
  store i1 %t538, ptr %l275
  br label %bb169
bb169:
  %t539 = load i1, ptr %l275, !tbaa !21
  br i1 %t539, label %bb170, label %bb171
bb170:
  store i1 true, ptr %l276, !tbaa !21
  br label %bb173
bb171:
  %t540 = load ptr, ptr %l24, !tbaa !29
  %t541 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t544 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t540, { i64, ptr } %t541)
  store i1 %t544, ptr %l279
  br label %bb172
bb172:
  %t545 = load i1, ptr %l279, !tbaa !21
  store i1 %t545, ptr %l276, !tbaa !21
  br label %bb173
bb173:
  %t546 = load i1, ptr %l276, !tbaa !21
  store i1 %t546, ptr %rv
  br label %ret
bb174:
  %t547 = load ptr, ptr %l0, !tbaa !29
  store ptr %t547, ptr %l280, !tbaa !29
  store i1 false, ptr %l281, !tbaa !21
  %t548 = load ptr, ptr %l280, !tbaa !29
  %t549 = icmp ne ptr %t548, null
  br i1 %t549, label %bb175, label %bb176
bb175:
  %t551 = load ptr, ptr %l280, !tbaa !29
  %t552 = load i64, ptr %t551, !range !{i64 0, i64 22}
  %t554 = icmp eq i64 %t552, 16
  store i1 %t554, ptr %l281, !tbaa !21
  br label %bb176
bb176:
  %t555 = load i1, ptr %l281, !tbaa !21
  br i1 %t555, label %bb177, label %bb178
bb177:
  br label %bb179
bb178:
  br label %bb180
bb179:
  store i1 false, ptr %rv
  br label %ret
bb180:
  %t557 = load ptr, ptr %l0, !tbaa !29
  store ptr %t557, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t558 = load ptr, ptr %l285, !tbaa !29
  %t559 = icmp ne ptr %t558, null
  br i1 %t559, label %bb181, label %bb182
bb181:
  %t561 = load ptr, ptr %l285, !tbaa !29
  %t562 = load i64, ptr %t561, !range !{i64 0, i64 22}
  %t564 = icmp eq i64 %t562, 18
  store i1 %t564, ptr %l286, !tbaa !21
  br label %bb182
bb182:
  %t565 = load i1, ptr %l286, !tbaa !21
  br i1 %t565, label %bb183, label %bb184
bb183:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t568 = getelementptr { i64, [4 x i64] }, ptr %t566, i32 0, i32 1
  %t569 = getelementptr { %"compiler/source:Span", ptr }, ptr %t568, i32 0, i32 1
  %t570 = load ptr, ptr %t569
  store ptr %t570, ptr %l25, !tbaa !29
  br label %bb185
bb184:
  br label %bb191
bb185:
  %t572 = load ptr, ptr %l25, !tbaa !29
  %t574 = getelementptr %"compiler/ast:JoinS", ptr %t572, i32 0, i32 1
  %t575 = load { i64, ptr }, ptr %t574, !tbaa !27
  %t576 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t579 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t575, { i64, ptr } %t576)
  store i1 %t579, ptr %l294
  br label %bb186
bb186:
  %t580 = load i1, ptr %l294, !tbaa !21
  br i1 %t580, label %bb187, label %bb188
bb187:
  store i1 true, ptr %l295, !tbaa !21
  br label %bb190
bb188:
  %t581 = load ptr, ptr %l25, !tbaa !29
  %t583 = getelementptr %"compiler/ast:JoinS", ptr %t581, i32 0, i32 2
  %t584 = load { i64, ptr }, ptr %t583, !tbaa !27
  %t585 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t588 = call i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %t584, { i64, ptr } %t585)
  store i1 %t588, ptr %l299
  br label %bb189
bb189:
  %t589 = load i1, ptr %l299, !tbaa !21
  store i1 %t589, ptr %l295, !tbaa !21
  br label %bb190
bb190:
  %t590 = load i1, ptr %l295, !tbaa !21
  store i1 %t590, ptr %rv
  br label %ret
bb191:
  %t591 = load ptr, ptr %l0, !tbaa !29
  store ptr %t591, ptr %l300, !tbaa !29
  store i1 false, ptr %l301, !tbaa !21
  %t592 = load ptr, ptr %l300, !tbaa !29
  %t593 = icmp ne ptr %t592, null
  br i1 %t593, label %bb192, label %bb193
bb192:
  %t595 = load ptr, ptr %l300, !tbaa !29
  %t596 = load i64, ptr %t595, !range !{i64 0, i64 22}
  %t598 = icmp eq i64 %t596, 19
  store i1 %t598, ptr %l301, !tbaa !21
  br label %bb193
bb193:
  %t599 = load i1, ptr %l301, !tbaa !21
  br i1 %t599, label %bb194, label %bb195
bb194:
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t602 = getelementptr { i64, [4 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t602, i32 0, i32 1
  %t604 = load ptr, ptr %t603
  store ptr %t604, ptr %l26, !tbaa !29
  br label %bb196
bb195:
  br label %bb198
bb196:
  %t606 = load ptr, ptr %l26, !tbaa !29
  %t608 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t611 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %t606, { i64, ptr } %t608)
  store i1 %t611, ptr %l309
  br label %bb197
bb197:
  %t612 = load i1, ptr %l309, !tbaa !21
  store i1 %t612, ptr %rv
  br label %ret
bb198:
  %t613 = load ptr, ptr %l0, !tbaa !29
  store ptr %t613, ptr %l310, !tbaa !29
  store i1 false, ptr %l311, !tbaa !21
  %t614 = load ptr, ptr %l310, !tbaa !29
  %t615 = icmp ne ptr %t614, null
  br i1 %t615, label %bb199, label %bb200
bb199:
  %t617 = load ptr, ptr %l310, !tbaa !29
  %t618 = load i64, ptr %t617, !range !{i64 0, i64 22}
  %t620 = icmp eq i64 %t618, 17
  store i1 %t620, ptr %l311, !tbaa !21
  br label %bb200
bb200:
  %t621 = load i1, ptr %l311, !tbaa !21
  br i1 %t621, label %bb201, label %bb202
bb201:
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr { i64, [4 x i64] }, ptr %t622, i32 0, i32 1
  %t625 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t624, i32 0, i32 1
  %t626 = load { i64, ptr }, ptr %t625
  store { i64, ptr } %t626, ptr %l27, !tbaa !27
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t630 = getelementptr { i64, [4 x i64] }, ptr %t628, i32 0, i32 1
  %t631 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t630, i32 0, i32 2
  %t632 = load ptr, ptr %t631
  store ptr %t632, ptr %l28, !tbaa !29
  br label %bb203
bb202:
  br label %bb219
bb203:
  %t634 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t634, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t636 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t638 = extractvalue { i64, ptr } %t636, 0
  store i64 %t638, ptr %l31, !tbaa !24
  br label %bb204
bb204:
  %t640 = load i64, ptr %l30, !tbaa !24
  %t641 = load i64, ptr %l31, !tbaa !24
  %t644 = icmp slt i64 %t640, %t641
  %t646 = xor i1 %t644, true
  br i1 %t646, label %bb205, label %bb206
bb205:
  br label %bb217
bb206:
  br label %bb207
bb207:
  %t648 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t648, ptr %l325, !tbaa !27
  %t649 = load i64, ptr %l30, !tbaa !24
  %t651 = getelementptr { i64, ptr }, ptr %l325, i32 0, i32 1
  %t652 = load ptr, ptr %t651, !tbaa !27
  %t653 = getelementptr ptr, ptr %t652, i64 %t649
  %t654 = load ptr, ptr %t653, !tbaa !39
  store ptr %t654, ptr %l32, !tbaa !29
  %t656 = load ptr, ptr %l32, !tbaa !29
  %t657 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t660 = call i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %t656, { i64, ptr } %t657)
  store i1 %t660, ptr %l330
  br label %bb208
bb208:
  %t661 = load i1, ptr %l330, !tbaa !21
  br i1 %t661, label %bb209, label %bb210
bb209:
  store i1 true, ptr %l331, !tbaa !21
  br label %bb212
bb210:
  %t662 = load ptr, ptr %l32, !tbaa !29
  %t664 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t667 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t662, { i64, ptr } %t664)
  store i1 %t667, ptr %l335
  br label %bb211
bb211:
  %t668 = load i1, ptr %l335, !tbaa !21
  store i1 %t668, ptr %l331, !tbaa !21
  br label %bb212
bb212:
  %t669 = load i1, ptr %l331, !tbaa !21
  br i1 %t669, label %bb213, label %bb214
bb213:
  store i1 true, ptr %rv
  br label %ret
bb214:
  br label %bb215
bb215:
  br label %bb216
bb216:
  %t671 = load i64, ptr %l30, !tbaa !24
  %t673 = add i64 %t671, 1
  store i64 %t673, ptr %l30, !tbaa !24
  br label %bb204
bb217:
  %t675 = load ptr, ptr %l28, !tbaa !29
  %t677 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t680 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t675, { i64, ptr } %t677)
  store i1 %t680, ptr %l342
  br label %bb218
bb218:
  %t681 = load i1, ptr %l342, !tbaa !21
  store i1 %t681, ptr %rv
  br label %ret
bb219:
  call void @__olang_check_failed(ptr @olang_loc_3f7a94628940c729_cdb98f41ead125dd)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local %"compiler/check:ctSource" @compiler_2fcheck_3actSource_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %rv = alloca %"compiler/check:ctSource"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/check:ctSource" undef, ptr %a0, 0
  %t14 = insertvalue %"compiler/check:ctSource" %t12, ptr %a1, 1
  %t16 = insertvalue %"compiler/check:ctSource" %t14, { i64, ptr } %a2, 2
  %t18 = insertvalue %"compiler/check:ctSource" %t16, i64 %a3, 3
  %t20 = insertvalue %"compiler/check:ctSource" %t18, { i64, ptr } %a4, 4
  store %"compiler/check:ctSource" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:ctSource", ptr %rv
  ret %"compiler/check:ctSource" %rr
}

define dso_local %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10) #0 {
entry:
  %rv = alloca %"compiler/check:laneNode"
  br label %start
start:
  br label %bb0
bb0:
  %t24 = insertvalue %"compiler/check:laneNode" undef, i64 %a0, 0
  %t26 = insertvalue %"compiler/check:laneNode" %t24, i32 %a1, 1
  %t28 = insertvalue %"compiler/check:laneNode" %t26, %"compiler/source:Span" %a2, 2
  %t30 = insertvalue %"compiler/check:laneNode" %t28, %"compiler/source:Span" %a3, 3
  %t32 = insertvalue %"compiler/check:laneNode" %t30, i64 %a4, 4
  %t34 = insertvalue %"compiler/check:laneNode" %t32, i64 %a5, 5
  %t36 = insertvalue %"compiler/check:laneNode" %t34, i64 %a6, 6
  %t38 = insertvalue %"compiler/check:laneNode" %t36, ptr %a7, 7
  %t40 = insertvalue %"compiler/check:laneNode" %t38, i32 %a8, 8
  %t42 = insertvalue %"compiler/check:laneNode" %t40, i64 %a9, 9
  %t44 = insertvalue %"compiler/check:laneNode" %t42, i32 %a10, 10
  store %"compiler/check:laneNode" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:laneNode", ptr %rv
  ret %"compiler/check:laneNode" %rr
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d3 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d4 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"'x[i] = v'" }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
@.d5 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"an export fn's call" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a constructor's call" }>, align 8
@.d8 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a lambda's call" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d9 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"this constructor" }>, align 8
@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2ecaughtAlts_2elocal_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2fcheck_3aaltsCovered_2e0 = weak hidden constant i1 false
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

define linkonce_odr %"compiler/check:altsCovered" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aaltsCovered(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:altsCovered"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/check:altsCovered"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:altsCovered", ptr %a0
  store %"compiler/check:altsCovered" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:altsCovered", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/check:altsCovered", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/check:altsCovered", ptr %l1
  store %"compiler/check:altsCovered" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:altsCovered", ptr %rv
  ret %"compiler/check:altsCovered" %rr
}

@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d16 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nothing" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d18 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"handles: " }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
declare void @__olang_errpay_pop()
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Has" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'in'" }>, align 8
@.d24 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Contains" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Has" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'in'" }>, align 8
@.d27 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'x in c'" }>, align 8
@.d28 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" ('in')" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e50 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
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
define internal i1 @olang_lambda_29(ptr %env, ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:Param", ptr %a0, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  %t7 = getelementptr %"compiler/check:payloadItem", ptr %cv0, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t11 = icmp eq i32 %t4, %t8
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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

declare ptr @__olang_scope_or(ptr, ptr)
@.d30 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"NoReturn" }>, align 8
@.d31 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Exported" }>, align 8
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Extern" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Commutes" }>, align 8
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
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetatUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBack(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, %"compiler/source:Span" %a5, i64 %a6, { i64, ptr } %a7)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_481df18796619d00_e450b1e3b67cd36c = external constant [0 x i8]
@olang_loc_af0d91289a1be42d_4e0f74b352066f9 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_490471cc9535e935_aa1636ccadcd0f9 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_94214b31169ec8c4_68c852e51d74cc68 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aArm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_d48ba9fb56fa57b5_9836703f13f4bc39 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_964ce48e3719b9fe_ecf9d1875d849bc2 = external constant [0 x i8]
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aHoldsFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Heda0e3070e2f5ab051ad1f451edd65eb(ptr %v0, ptr %a0)
declare %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H62ca4e6c77402fbaa86eb0d94ae649ee(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Habcf70cf374eb3bb03a96803ac10570d(ptr %v0, ptr %a0, %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7a179da39a9781e9_720543b731edd2ed = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4153f13b2b5ba70f_539dcb5badf9f963 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetUnion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrNeverNull(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtCaseForm(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPatternOk(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, i64 %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtNeverIs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eLe_Hf8109b64a4e45220d0da36a987cf38b1(ptr %v0, ptr %a0)
declare %"compiler/check:payloadItem" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3apayloadItem_3e_2eAt_H64f851f610dd8566f1d7651b626ec99d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eisBind(ptr %v0, ptr %a0)
@olang_loc_7f447623c50cbf0b_d88fa4c796e8075f = external constant [0 x i8]
declare %"compiler/check:altsCovered" @compiler_2fcheck_3aaltsCovered_2ector(ptr %v0, ptr %v1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, i1 %a1, i1 %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@olang_loc_76087ef951037d6e_3aecbfe8b84426da = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_5aef4dfb7ef3d3db_90619d6d8d57518f = external constant [0 x i8]
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@olang_loc_cff02b8329dc1100_79cd7222e22836ac = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_71fc016cdbd92d9f_b1a3aa3c3a436c9b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_43f0c8289ee2541_d6540b938bb16195 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecided(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemsNotSeq(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemsType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erestAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqBase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erestBind(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i32 %a4, i64 %a5, i64 %a6, ptr %a7, i64 %a8)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePlainWordCalled(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2efieldNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadWordBare(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadArgs(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e0fb1c8b8de5bfa7_80560e432f46ee03 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, i64 %a4, ptr %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoCase(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecasePublic(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eRoStored = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_e5613677a6448c92_7fd725fb7345b22e = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ce46ad7b25b964bc_d75d3b27057ac3b0 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullKnown(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_12a7e56ab193c888_f3ea9b5a769b449c = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeFor(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrolled(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, %"compiler/check:reflList" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalk(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInNeedsTry(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInTryNothing(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i1 %a3, { i64, ptr } %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsGathered(ptr %v0, ptr %a0)
declare i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsSpread(ptr %v0, ptr %a0)
declare i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsNamed(ptr %v0, ptr %a0)
@olang_loc_4a5fe817f84fef4e_4820cb4f1f993ac2 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpreadAlone(ptr %v0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i32 @std_2fio_2ePrintErrln(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_3aOrigin_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" @std_2fpair_3aPair_3ccompiler_2fgeneric_3aOrigin_2c_20I64_3e_2ector(ptr %v0, %"compiler/generic:Origin" %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_Hb1726e9607ca4add8166541fc83d3bee(ptr %v0, ptr %a0, %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_H15a1a3e8469a5976ffa48722eeacbbc7(ptr %v0, ptr %a0)
declare %"std/pair:Pair.0eea5a06f8f0107e600fd23235f2e98f" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fgeneric_Hb10eca62c04bf212a25728cfc6f83c9c(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2)
@olang_loc_4bb92e4e6aa9fa92_ae49a41c9a1a92ee = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopParam(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuteParam(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, i32 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_89233ed815a81c43_385dc0f6d58c413f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2efloatOverflows(i32 %a0, double %a1)
declare double @compiler_2fcheck_2elitF64(%"compiler/check:litv" %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMembershipNoMethod(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_1fa90a145069ae20_a62c963c9e2d6294 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_e5386246bf71864d_e9422de20f0d1fa1 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fast_3aParam_26_3e_2eSome_3ccompiler_2fast_3aParam_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrPatternBindAlts(ptr %v0)
@olang_loc_a21c210a1dda2ccc_c7cd76121e936418 = external constant [0 x i8]
@olang_loc_579da722da9b7d43_754f46e08b287e07 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/check:roOrigin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hfc56ff01c357e6bb827daf7012f18a86(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare ptr @compiler_2fcheck_2eunwrapped(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_86e950cd41bc9656_5dbe90d10bea6a92 = external constant [0 x i8]
@olang_loc_67c0878bde4afa77_9afdcd15cbb29493 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0)
declare %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandingsOf(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6b4c91049558e776_f5788538a01eee7a = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3, i1 %a4, ptr %a5)
@olang_loc_812bc6763f016bdd_ce6f0e3f96c00d01 = external constant [0 x i8]
@olang_loc_8d628e20c33cf608_43e2c14925cb83cc = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2echainNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_90c8334c62802427_4400025bac92e03b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdReads(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
@olang_loc_39ed54cf65861a3a_83e11e15934e9cb6 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetCondReads(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_39e926dc5bd50dc1_491eed70903c4c1d = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasZero(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i32 %a4)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H42e6f1efb33b8691983223fc2608e242(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3ccompiler_2ftypes_3aTypeId_2c_20_Hfbcf1a40cd42d1431ad3e24c7e642711(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnendedDrop(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructTypeByValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCopiedHeld(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2eholds(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_a46104116b782e24_270a9dbf173892f8 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9272b3113db2835a_2a2a8b0a39f9db7e = external constant [0 x i8]
@olang_loc_e85625530f05a4e1_e8094ee11349b825 = external constant [0 x i8]
@olang_loc_fd7989cc94cf1ac3_95016419ffbfbd17 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_db94e874d036c6ef_7db06dea6929eb03 = external constant [0 x i8]
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @compiler_2fcheck_2epurePlace(ptr %v0, ptr %a0)
@olang_loc_327c34393f585585_f16c5fd873651789 = external constant [0 x i8]
@olang_loc_66c871427796c5ad_be34307b05f1da91 = external constant [0 x i8]
@olang_loc_d1a78098b058e5fc_3c3cd5596d56fa00 = external constant [0 x i8]
@olang_loc_e46b3fa1946bcbb7_3b47270341ec1d7b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ehitsPath(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eifAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ematchAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_3f7a94628940c729_cdb98f41ead125dd = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)

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
